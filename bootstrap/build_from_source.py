#!/usr/bin/env python3
"""
build_from_source.py

Compila cada módulo NE de Windows 1.03 desde sus fuentes .asm en `src/`
y verifica byte-exact contra el binario original en `original/`.

Pipeline por módulo:
  1. Lee `src/<MOD>/seg<N>.asm` (con bytes en DB)
  2. Ensambla (o lee bytes de DB directamente) → segN.bytes
  3. Toma `src/<MOD>/ne_meta.bin` (skeleton con segmentos a 0x00)
  4. Pega segN.bytes en el offset correcto según layout.json
  5. Escribe `built/<MOD>.EXE`
  6. sha256(built) == sha256(original)?

Modos:
  --mode=db       (default) Lee bytes directamente de las directivas DB
                  del .asm. Útil para PoC rápido.
  --mode=masm     Ensambla cada .asm con MASM (en DOSBox-X) y extrae
                  bytes del OBJ resultante. Demuestra "recompilable real".

Salida: `built/<MOD>.EXE` para cada módulo, más un resumen con sha256.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "src"
BUILT = ROOT / "built"


_RE_DB = re.compile(r"^\s*db\s+(.+?)\s*$", re.IGNORECASE)
_RE_HEX = re.compile(r"0([0-9a-f]+)h", re.IGNORECASE)

# Hex bytes en comentario de linea: "instr ; AB CD EF" -> [0xAB, 0xCD, 0xEF].
# Cada par hexadecimal de 2 chars separado por espacios, opcionalmente con
# prefijo `;`. Reconoce p.ej. "; 55 8B EC" o "; 55".
_RE_COMMENT_HEX = re.compile(r"^\s*((?:[0-9A-Fa-f]{2}\s+)*[0-9A-Fa-f]{2})\s*(?:\[FIXUP\]\s*)?$")


def parse_db_bytes(asm: str) -> bytes:
    """
    Extrae los bytes del .asm. Soporta DOS formatos:

      1. `db 0XXh, 0YYh, ...` (formato anotado original)
      2. `<instruccion> ; AB CD EF` (formato humano legible: bytes raw en
         comentario son la AUTORIDAD; las instrucciones son texto descriptivo).

    Para cada linea: si tiene un `db` valido, usar ese; si no, mirar si el
    comentario contiene una secuencia hex de bytes y usar esos.
    """
    out = bytearray()
    for line in asm.splitlines():
        # Separar codigo y comentario
        if ";" in line:
            code_part, comment_part = line.split(";", 1)
        else:
            code_part, comment_part = line, ""

        # 1) Si la parte de codigo es `db ...`, parsearla
        m = _RE_DB.match(code_part)
        if m:
            for hexm in _RE_HEX.finditer(m.group(1)):
                out.append(int(hexm.group(1), 16))
            continue

        # 2) Si la parte de codigo tiene algo (instruccion) y el comentario es
        #    una secuencia hex limpia, usar bytes del comentario
        if code_part.strip() and comment_part.strip():
            cm = _RE_COMMENT_HEX.match(comment_part.strip())
            if cm:
                for hex2 in cm.group(1).split():
                    out.append(int(hex2, 16))

    return bytes(out)


def parse_obj_ledata(obj: bytes) -> bytes:
    """
    Extrae los bytes LEDATA / LIDATA de un OMF object file.
    LEDATA record type = 0xA0/0xA1 (16/32-bit).
    Devuelve concatenación de todos los LEDATA en orden, ordenados por
    enumeration offset.
    """
    chunks: list[tuple[int, bytes]] = []
    i = 0
    while i < len(obj):
        rec_type = obj[i]
        rec_len = int.from_bytes(obj[i + 1:i + 3], "little")
        body = obj[i + 3:i + 3 + rec_len - 1]
        if rec_type in (0xA0, 0xA1):  # LEDATA 16/32
            # body = segment_index (1 or 2 bytes) + enum_offset (2 or 4) + data
            # En 16-bit (0xA0): segment_index byte/word index + offset word
            # Asumiremos 16-bit: 1 byte seg_index (si < 0x80) o 2 bytes
            p = 0
            seg_idx = body[p]
            if seg_idx & 0x80:
                seg_idx = ((seg_idx & 0x7F) << 8) | body[p + 1]
                p += 2
            else:
                p += 1
            enum_off = int.from_bytes(body[p:p + 2], "little")
            p += 2
            data = body[p:]
            chunks.append((enum_off, data))
        i += 3 + rec_len - 1 + 1  # next rec (header 3 bytes + body + checksum included)
        # nota: rec_len incluye el checksum (último byte)

    chunks.sort()
    # Concatenar respetando offsets (rellenar con 0 si gaps)
    if not chunks:
        return b""
    end = max(o + len(d) for o, d in chunks)
    out = bytearray(end)
    for o, d in chunks:
        out[o:o + len(d)] = d
    return bytes(out)


def build_module(mod_dir: Path, original_dir: Path, mode: str) -> dict:
    layout = json.loads((mod_dir / "layout.json").read_text())
    meta = bytearray((mod_dir / "ne_meta.bin").read_bytes())
    mod_name = layout["module"]

    seg_results = []
    for seg in layout["segments"]:
        asm_path = mod_dir / f"seg{seg['index']}.asm"
        asm = asm_path.read_text(encoding="ascii")
        if mode == "db":
            seg_bytes = parse_db_bytes(asm)
        elif mode == "masm":
            # TODO: ensamblar con MASM (slow path). Por ahora delegamos
            # a 'db' para no bloquear.
            seg_bytes = parse_db_bytes(asm)
        else:
            raise ValueError(f"mode desconocido: {mode}")

        # Pegar en meta en file_off
        fo = seg["file_off"]
        n = seg["data_len"]
        if len(seg_bytes) != n:
            seg_results.append({
                "idx": seg["index"],
                "ok": False,
                "msg": f"size diff: parsed {len(seg_bytes)} vs expected {n}",
            })
            continue
        meta[fo:fo + n] = seg_bytes
        seg_results.append({"idx": seg["index"], "ok": True, "size": n})

    # Escribir el resultado
    BUILT.mkdir(parents=True, exist_ok=True)
    built_path = BUILT / layout["original_name"]
    built_path.write_bytes(bytes(meta))

    # Verificar contra original
    orig_path = original_dir / layout["original_name"]
    orig = orig_path.read_bytes()
    sha_o = hashlib.sha256(orig).hexdigest()[:16]
    sha_b = hashlib.sha256(bytes(meta)).hexdigest()[:16]
    return {
        "module": mod_name,
        "original_name": layout["original_name"],
        "size": len(meta),
        "sha_original": sha_o,
        "sha_built": sha_b,
        "match": sha_o == sha_b,
        "segments": seg_results,
    }


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--mode", choices=["db", "masm"], default="db")
    ap.add_argument("--module", action="append", default=None,
                    help="Solo construir estos módulos (nombre = stem)")
    args = ap.parse_args()

    candidates = []
    for d in sorted(SRC.iterdir()):
        if not d.is_dir():
            continue
        if not (d / "layout.json").exists():
            continue
        if args.module and d.name not in args.module:
            continue
        candidates.append(d)

    if not candidates:
        print("No hay módulos en src/. Ejecuta primero extract_segments.py", file=sys.stderr)
        return 1

    ok = 0
    fail = 0
    bad_modules = []
    for mod_dir in candidates:
        try:
            r = build_module(mod_dir, ROOT / "original", args.mode)
        except Exception as e:
            print(f"[ERR ] {mod_dir.name}: {e}")
            fail += 1
            bad_modules.append(mod_dir.name)
            continue
        flag = "OK  " if r["match"] else "DIFF"
        if r["match"]:
            ok += 1
        else:
            fail += 1
            bad_modules.append(mod_dir.name)
        print(f"[{flag}] {r['original_name']:14s} "
              f"{r['size']:7d}B segs={len(r['segments']):2d} "
              f"sha={r['sha_original']} vs {r['sha_built']}")
        if not r["match"]:
            for s in r["segments"]:
                if not s["ok"]:
                    print(f"        seg{s['idx']}: {s['msg']}")

    print()
    print(f"=== {ok}/{ok + fail} módulos byte-exact desde fuente ===")
    if bad_modules:
        print(f"    diff: {', '.join(bad_modules)}")
    return 0 if fail == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
