#!/usr/bin/env python3
"""
disassemble_segments.py

Re-emite cada `src/<MOD>/seg<N>.asm` con DOS modalidades:

  --mode=annotated   (default) Mantiene `db <bytes>` como autoridad, pero
                     añade al lado un comentario con la instrucción MASM
                     desensamblada. Editable y legible, byte-exact
                     garantizado.

                     Ejemplo:
                         db 055h                 ; push bp
                         db 08bh, 0ech           ; mov  bp, sp
                         db 01eh                 ; push ds
                         db 083h, 0ech, 002h     ; sub  sp, 2

  --mode=instructions Emite directamente instrucciones MASM (`push bp`,
                      `mov bp, sp`, etc.) y deja `db` solo en los bytes
                      que Capstone no puede desensamblar. NO se verifica
                      con MASM (requiere round-trip vía DOSBox); el
                      pipeline confía en que MASM produce los mismos
                      bytes que Capstone declaró. Útil para inspección
                      humana, no para build de producción.

Segmentos DATA (flags bit 0 = 1 en segment table) se dejan como `db`
puros, sin desensamblar.

Uso:
  python3 bootstrap/disassemble_segments.py
  python3 bootstrap/disassemble_segments.py --module KERNEL
  python3 bootstrap/disassemble_segments.py --mode=instructions
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "src"

try:
    from capstone import Cs, CS_ARCH_X86, CS_MODE_16
except ImportError:
    print("ERROR: capstone no instalado. Run bootstrap/install-capstone.sh",
          file=sys.stderr)
    sys.exit(2)


_RE_DB = re.compile(r"^\s*db\s+(.+?)\s*$", re.IGNORECASE)
_RE_HEX = re.compile(r"0([0-9a-f]+)h", re.IGNORECASE)


def parse_db_bytes(asm: str) -> bytes:
    """Extrae todos los bytes de directivas `db 0XXh, ...` del .asm."""
    out = bytearray()
    for line in asm.splitlines():
        line_clean = line.split(";", 1)[0]
        m = _RE_DB.match(line_clean)
        if not m:
            continue
        for hexm in _RE_HEX.finditer(m.group(1)):
            out.append(int(hexm.group(1), 16))
    return bytes(out)


def fmt_db_with_comment(chunk: bytes, comment: str = "") -> str:
    hexs = ", ".join(f"0{b:02x}h" for b in chunk)
    base = f"    db {hexs}"
    # Padding hasta col 36 para el comentario
    pad = max(1, 36 - len(base))
    if comment:
        return f"{base}{' ' * pad}; {comment}"
    return base


def disassemble_segment(
    data: bytes, is_data: bool, mode: str
) -> list[str]:
    """
    Devuelve líneas .asm para el cuerpo del segmento (sin headers).
    """
    if is_data or not data:
        # Segmento DATA: emitir bytes sin desensamblar, 16 por línea
        lines = []
        for i in range(0, len(data), 16):
            chunk = data[i:i + 16]
            hexs = ", ".join(f"0{b:02x}h" for b in chunk)
            lines.append(f"    db {hexs}")
        return lines

    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = False
    md.skipdata = False

    lines: list[str] = []
    offset = 0
    n = len(data)
    while offset < n:
        try:
            decoded = list(md.disasm(data[offset:], offset, count=1))
        except Exception:
            decoded = []
        if not decoded:
            # Capstone no pudo decodificar: emitir el byte como db
            lines.append(fmt_db_with_comment(data[offset:offset + 1], "???"))
            offset += 1
            continue

        insn = decoded[0]
        comment = f"{insn.mnemonic} {insn.op_str}".strip()
        chunk = data[offset:offset + insn.size]
        if mode == "annotated":
            # Mantener db como autoridad
            lines.append(fmt_db_with_comment(chunk, comment))
        elif mode == "instructions":
            # Emitir la instrucción directamente, con bytes raw en comentario
            bytes_hex = " ".join(f"{b:02x}" for b in chunk)
            asm_line = f"    {insn.mnemonic} {insn.op_str}".rstrip()
            pad = max(1, 40 - len(asm_line))
            lines.append(f"{asm_line}{' ' * pad}; {bytes_hex}")
        else:
            raise ValueError(f"mode desconocido: {mode}")

        offset += insn.size

    return lines


def emit_seg_asm(mod_name: str, seg: dict, body: list[str]) -> str:
    sclass = "DATA" if seg["is_data"] else "CODE"
    sname = f"{mod_name}_SEG{seg['index']}"
    head = [
        f"; AUTO-GENERATED from original {mod_name} segment {seg['index']}",
        f"; flags=0x{seg['flags']:04x} data_len={seg['data_len']} "
        f"reloc_count={seg.get('reloc_count', 0)}",
        f"; mode: legible - instrucciones x86-16 desensambladas via Capstone",
        "",
        f"{sname} SEGMENT BYTE PUBLIC '{sclass}'",
        "",
    ]
    tail = ["", f"{sname} ENDS", "", "END", ""]
    return "\n".join(head + body + tail)


def process_module(mod_dir: Path, mode: str) -> dict:
    layout = json.loads((mod_dir / "layout.json").read_text())
    mod_name = layout["module"]
    stats = {"module": mod_name, "segments": 0, "code_segs": 0, "data_segs": 0}

    for seg in layout["segments"]:
        asm_path = mod_dir / f"seg{seg['index']}.asm"
        if not asm_path.exists():
            continue
        # Leer bytes del .asm actual (db) o de ne_meta si está vacío
        data = parse_db_bytes(asm_path.read_text(encoding="ascii"))
        if len(data) != seg["data_len"]:
            print(f"  WARN {mod_name} seg{seg['index']}: "
                  f"size {len(data)} != {seg['data_len']}; skip")
            continue

        body = disassemble_segment(data, seg["is_data"], mode)
        out = emit_seg_asm(mod_name, seg, body)
        # Atomic write: tmp + rename
        tmp_path = asm_path.with_suffix(".asm.tmp")
        tmp_path.write_text(out, encoding="ascii")
        tmp_path.replace(asm_path)
        stats["segments"] += 1
        if seg["is_data"]:
            stats["data_segs"] += 1
        else:
            stats["code_segs"] += 1

    return stats


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--mode", choices=["annotated", "instructions"],
                    default="annotated")
    ap.add_argument("--module", action="append", default=None)
    args = ap.parse_args()

    mods = []
    for d in sorted(SRC.iterdir()):
        if not d.is_dir() or not (d / "layout.json").exists():
            continue
        if args.module and d.name not in args.module:
            continue
        mods.append(d)

    if not mods:
        print("No hay módulos en src/. Ejecuta extract_segments.py primero.",
              file=sys.stderr)
        return 1

    total = {"segments": 0, "code_segs": 0, "data_segs": 0}
    for mod_dir in mods:
        s = process_module(mod_dir, args.mode)
        total["segments"] += s["segments"]
        total["code_segs"] += s["code_segs"]
        total["data_segs"] += s["data_segs"]
        print(f"[OK] {mod_dir.name:14s} "
              f"{s['segments']:3d} segs "
              f"({s['code_segs']:3d} code / {s['data_segs']:3d} data)")

    print()
    print(f"=== {len(mods)} módulos, {total['segments']} segmentos "
          f"({total['code_segs']} CODE, {total['data_segs']} DATA) ===")
    return 0


if __name__ == "__main__":
    sys.exit(main())
