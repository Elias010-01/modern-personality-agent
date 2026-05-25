#!/usr/bin/env python3
"""
decompile_segment.py

Convierte cada `src/<MOD>/seg<N>.asm` (formato anotado: `db ; insn`) en un
formato MASM legible para humanos:

  - Instrucciones x86 como cuerpo del codigo (push bp, mov bp, sp, ...)
  - Bytes raw en comentario al final de cada linea (`; 55`, `; 8B EC`)
    -> seran la AUTORIDAD para byte-exact verification
  - Labels L_<hex>: para cada branch target
  - PROC FAR / ENDP alrededor de cada funcion en DB
  - SEGMENT con nombre humano (_TEXT) en lugar de MOD_SEG1
  - Bloques DATA agrupados como db

La verificacion byte-exact se hace con build_from_source.py adaptado
que parsea bytes desde el comentario `; <hex bytes>`.

Algoritmo:
  1. Cargar bytes del segmento (desde db del .asm actual)
  2. Cargar funciones de la DB (offset, size, name) para este modulo
  3. Desensamblar linear con Capstone
  4. Detectar branch targets (jmps/calls relativos within-segment)
  5. Emitir .asm con PROC/ENDP, L_xxx labels, instrucciones + bytes
"""
from __future__ import annotations

import argparse
import json
import re
import sqlite3
import struct
import sys
from pathlib import Path
from collections import defaultdict

from capstone import Cs, CS_ARCH_X86, CS_MODE_16, CS_OP_IMM

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "src"
DB_PATH = ROOT / "state" / "mpa.db"

# Importar resolver de fixups
import sys
sys.path.insert(0, str(ROOT / "bootstrap"))
from fixup_resolver import build_fixup_map


_RE_DB = re.compile(r"^\s*db\s+(.+?)\s*$", re.IGNORECASE)
_RE_HEX = re.compile(r"0([0-9a-f]+)h", re.IGNORECASE)
_RE_COMMENT_HEX = re.compile(r"^\s*((?:[0-9A-Fa-f]{2}\s+)*[0-9A-Fa-f]{2})\s*(?:\[FIXUP\])?\s*$")


def parse_db_bytes(asm: str) -> bytes:
    """
    Soporta DOS formatos (igual que build_from_source.py):
      1. `db 0XXh, 0YYh, ...`
      2. `<instruccion> ; AB CD EF` (bytes raw en comentario = autoridad)
    """
    out = bytearray()
    for line in asm.splitlines():
        if ";" in line:
            code_part, comment_part = line.split(";", 1)
        else:
            code_part, comment_part = line, ""

        m = _RE_DB.match(code_part)
        if m:
            for hexm in _RE_HEX.finditer(m.group(1)):
                out.append(int(hexm.group(1), 16))
            continue

        if code_part.strip() and comment_part.strip():
            cm = _RE_COMMENT_HEX.match(comment_part.strip())
            if cm:
                for hex2 in cm.group(1).split():
                    out.append(int(hex2, 16))
    return bytes(out)


def get_module_functions(module_name: str, segment_idx: int) -> list[dict]:
    """
    Devuelve funciones del modulo para el segmento dado, ordenadas por offset.
    Cada entry: {offset, size, name}
    """
    if not DB_PATH.exists():
        return []
    con = sqlite3.connect(DB_PATH)
    cur = con.cursor()
    rows = cur.execute(
        "SELECT seg_offset, size, name FROM functions "
        "WHERE module_name=? AND seg_number=? "
        "ORDER BY seg_offset",
        (module_name, segment_idx)
    ).fetchall()
    con.close()
    return [{"offset": r[0], "size": r[1], "name": r[2]} for r in rows]


# Branch / control flow instructions: target operand is relative
BRANCH_MNEMONICS = {
    "ja", "jae", "jb", "jbe", "jc", "jcxz", "je", "jecxz", "jg", "jge",
    "jl", "jle", "jna", "jnae", "jnb", "jnbe", "jnc", "jne", "jng",
    "jnge", "jnl", "jnle", "jno", "jnp", "jns", "jnz", "jo", "jp",
    "jpe", "jpo", "js", "jz",
    "jmp", "loop", "loope", "loopne", "loopnz", "loopz",
    "call",
}


def disasm_segment(data: bytes) -> tuple[list[dict], set[int]]:
    """
    Devuelve (instrucciones, branch_targets).
    Cada instruccion: {offset, size, bytes, mnemonic, op_str, is_branch, target}
    branch_targets: set de offsets que son destino de algun salto relativo.
    """
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    md.skipdata = False

    instructions = []
    branch_targets: set[int] = set()
    offset = 0

    while offset < len(data):
        try:
            decoded = list(md.disasm(data[offset:], offset, count=1))
        except Exception:
            decoded = []
        if not decoded:
            instructions.append({
                "offset": offset, "size": 1,
                "bytes": data[offset:offset + 1],
                "mnemonic": "db", "op_str": f"0{data[offset]:02x}h",
                "is_branch": False, "target": None, "is_db": True,
            })
            offset += 1
            continue

        insn = decoded[0]
        chunk = data[offset:offset + insn.size]
        mnem = insn.mnemonic.lower()
        is_branch = mnem in BRANCH_MNEMONICS
        target = None
        if is_branch:
            try:
                # Buscar operand IMM (target del salto)
                for op in insn.operands:
                    if op.type == CS_OP_IMM:
                        target = op.imm
                        break
            except Exception:
                pass
            # Si target dentro del segmento, anadirlo a branch_targets
            if target is not None and 0 <= target < len(data):
                branch_targets.add(target)
        instructions.append({
            "offset": offset, "size": insn.size,
            "bytes": chunk,
            "mnemonic": mnem,
            "op_str": insn.op_str,
            "is_branch": is_branch, "target": target,
            "is_db": False,
        })
        offset += insn.size

    return instructions, branch_targets


def fmt_hex_bytes(b: bytes) -> str:
    return " ".join(f"{x:02X}" for x in b)


def make_label(offset: int) -> str:
    return f"L_{offset:04X}"


def emit_module_asm(
    module_name: str,
    seg_idx: int,
    seg_layout: dict,
    instructions: list[dict],
    branch_targets: set[int],
    functions: list[dict],
    fixup_map: dict[int, str] | None = None,
) -> str:
    """
    Emite un .asm legible para un segmento de codigo.
    """
    seg_class = "DATA" if seg_layout.get("is_data") else "CODE"
    seg_name = f"{module_name}_TEXT" if not seg_layout.get("is_data") else f"{module_name}_DATA"

    # Mapear offset -> funcion que ENPIEZA ahi
    func_starts: dict[int, dict] = {f["offset"]: f for f in functions if f.get("name")}
    # Mapear offset -> funcion que TERMINA aqui (next byte despues del fin)
    func_ends: dict[int, dict] = {}
    for f in functions:
        if f.get("name"):
            func_ends[f["offset"] + f["size"]] = f

    # Cabecera
    lines = [
        f"; AUTO-GENERATED from original {module_name} segment {seg_idx}",
        f"; segment_size={seg_layout.get('data_len', 0)} bytes, flags=0x{seg_layout.get('flags', 0):04x}",
        f"; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)",
        f"; ",
        f"; El comentario al final de cada linea contiene los bytes RAW del binario",
        f"; original; build_from_source.py los lee como autoridad para byte-exact.",
        f"; Las instrucciones (push, mov, ...) son las desensambladas para que",
        f"; un humano pueda leer/editar; no son re-ensambladas (encoders modernos",
        f"; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo",
        f"; el binario original).",
        "",
        f"{seg_name} SEGMENT BYTE PUBLIC '{seg_class}'",
        "",
    ]

    current_func: dict | None = None

    for insn in instructions:
        off = insn["offset"]

        # Cierre de funcion previa si llegamos a su fin
        if current_func is not None and off >= current_func["offset"] + current_func["size"]:
            fname = current_func["name"] or f"sub_{current_func['offset']:04X}"
            lines.append(f"{fname} ENDP")
            lines.append("")
            current_func = None

        # Apertura de funcion si coincide con un start
        if off in func_starts:
            f = func_starts[off]
            fname = f["name"] or f"sub_{f['offset']:04X}"
            lines.append("")
            lines.append(";" + "-" * 71)
            lines.append(f"; {fname}  (offset 0x{f['offset']:04X}, size {f['size']} bytes)")
            lines.append(";" + "-" * 71)
            lines.append(f"{fname} PROC FAR")
            current_func = f

        # Label si es branch target (dentro del segmento)
        if off in branch_targets:
            lines.append(f"{make_label(off)}:")

        # Cuerpo
        if insn["is_db"]:
            # Emitir TODOS los bytes del chunk como db, no solo el primero
            db_text = "db      " + ", ".join(f"0{b:02x}h" for b in insn["bytes"])
            asm_line = f"        {db_text}"
            pad = max(1, 48 - len(asm_line))
            lines.append(f"{asm_line}{' ' * pad}; {fmt_hex_bytes(insn['bytes'])}")
        else:
            # Reemplazar branch targets en op_str por labels L_xxx
            op_str = insn["op_str"]
            fixup_symbol: str | None = None

            # Mirar si algun byte de esta instruccion esta en el fixup_map.
            # Los fixups marcan el offset del OPERANDO (no del opcode), asi que
            # tipicamente off+1 o off+3 dependiendo de la instruccion.
            if fixup_map:
                for o in range(off + 1, off + insn["size"]):
                    if o in fixup_map:
                        fixup_symbol = fixup_map[o]
                        break

            if fixup_symbol is not None:
                # Substituir TODO operand_str numerico por la referencia simbolica
                # Las relocations afectan a:
                #   - lcall 0, 0xXXXX  -> call far MOD.NAME
                #   - jmp far 0:0xXXXX -> jmp far MOD.NAME
                #   - mov ax, 0xXXXX (offset de import) -> mov ax, OFFSET MOD.NAME
                #   - les bx, [DGROUP:XXXX] -> les bx, MOD.NAME
                # Hacemos una sustitucion ligera del operand:
                mnem = insn["mnemonic"]
                if mnem in ("lcall", "ljmp"):
                    # Pascal-style call far: "lcall seg, off" -> "call far MOD.NAME"
                    new_mnem = "call" if mnem == "lcall" else "jmp"
                    new_text = f"{new_mnem:<7s} far {fixup_symbol}"
                elif mnem in ("call", "jmp") and insn["is_branch"]:
                    new_text = f"{mnem:<7s} {fixup_symbol}"
                else:
                    # Otros casos: substituir el primer numero hex por OFFSET symbol
                    op_str = re.sub(r"0x[0-9a-fA-F]+",
                                    f"OFFSET {fixup_symbol}", op_str, count=1)
                    new_text = f"{mnem:<7s} {op_str}".rstrip()
                asm_line = f"        {new_text}"
                pad = max(1, 48 - len(asm_line))
                lines.append(f"{asm_line}{' ' * pad}; {fmt_hex_bytes(insn['bytes'])} [FIXUP]")
                continue

            if insn["is_branch"] and insn["target"] is not None \
               and 0 <= insn["target"] < len(insn["bytes"]) + 100000:
                lbl = make_label(insn["target"])
                op_str = re.sub(r"0x[0-9a-fA-F]+", lbl, op_str, count=1)

            mnem = insn["mnemonic"]
            text = f"{mnem:<7s} {op_str}".rstrip()
            asm_line = f"        {text}"
            pad = max(1, 48 - len(asm_line))
            lines.append(f"{asm_line}{' ' * pad}; {fmt_hex_bytes(insn['bytes'])}")

    # Cerrar funcion abierta si quedo
    if current_func is not None:
        fname = current_func["name"] or f"sub_{current_func['offset']:04X}"
        lines.append(f"{fname} ENDP")
        lines.append("")

    # Cerrar segmento
    lines.extend(["", f"{seg_name} ENDS", "", "        END", ""])
    return "\n".join(lines)


def process_module(mod_dir: Path) -> dict:
    layout = json.loads((mod_dir / "layout.json").read_text())
    mod_name = layout["module"]
    stats = {"module": mod_name, "segments_processed": 0, "errors": []}

    # Cargar bytes de cada segmento (necesario para construir fixup map con chains)
    segment_data: dict[int, bytes] = {}
    for seg in layout["segments"]:
        seg_idx = seg["index"]
        asm_path = mod_dir / f"seg{seg_idx}.asm"
        if asm_path.exists():
            try:
                d = parse_db_bytes(asm_path.read_text(encoding="ascii"))
            except UnicodeDecodeError:
                d = parse_db_bytes(asm_path.read_text(encoding="latin-1"))
            segment_data[seg_idx] = d

    # Construir fixup map para este modulo (solo si es NE; los MZ no tienen)
    fixup_maps: dict[int, dict[int, str]] = {}
    try:
        ne_path = ROOT / "original" / layout["original_name"]
        if ne_path.exists() and layout.get("kind") != "mz_raw":
            fixup_maps = build_fixup_map(ne_path, segment_data)
    except Exception as e:
        stats["errors"].append(f"fixup load: {e}")

    for seg in layout["segments"]:
        seg_idx = seg["index"]
        asm_path = mod_dir / f"seg{seg_idx}.asm"
        if not asm_path.exists():
            continue

        # Cargar bytes del .asm actual
        try:
            data = parse_db_bytes(asm_path.read_text(encoding="ascii"))
        except UnicodeDecodeError:
            data = parse_db_bytes(asm_path.read_text(encoding="latin-1"))
        if len(data) != seg["data_len"]:
            stats["errors"].append(
                f"seg{seg_idx}: data_len mismatch ({len(data)} vs {seg['data_len']})")
            continue

        if seg.get("is_data"):
            # Segmento de datos: emit simple
            instructions = []
            offset = 0
            for offset in range(0, len(data), 16):
                chunk = data[offset:offset + 16]
                instructions.append({
                    "offset": offset, "size": len(chunk),
                    "bytes": chunk, "mnemonic": "db",
                    "op_str": ", ".join(f"0{b:02x}h" for b in chunk),
                    "is_branch": False, "target": None, "is_db": True,
                })
            out = emit_module_asm(mod_name, seg_idx, seg, instructions, set(), [])
        else:
            # Segmento de codigo: desensamblar
            instructions, branch_targets = disasm_segment(data)
            functions = get_module_functions(mod_name, seg_idx)
            seg_fixups = fixup_maps.get(seg_idx, {})
            out = emit_module_asm(mod_name, seg_idx, seg,
                                  instructions, branch_targets, functions,
                                  fixup_map=seg_fixups)

        # Write atomic
        tmp = asm_path.with_suffix(".asm.new")
        tmp.write_text(out, encoding="ascii")
        tmp.replace(asm_path)
        stats["segments_processed"] += 1

    return stats


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--module", action="append", default=None,
                    help="Solo procesar estos modulos (e.g. SYSTEM)")
    args = ap.parse_args()

    candidates = []
    for d in sorted(SRC.iterdir()):
        if not d.is_dir() or not (d / "layout.json").exists():
            continue
        if args.module and d.name not in args.module:
            continue
        candidates.append(d)

    if not candidates:
        print("No hay modulos en src/.", file=sys.stderr)
        return 1

    total_segs = 0
    total_errors = 0
    for mod_dir in candidates:
        s = process_module(mod_dir)
        total_segs += s["segments_processed"]
        total_errors += len(s["errors"])
        flag = "OK  " if not s["errors"] else "WARN"
        print(f"[{flag}] {mod_dir.name:14s} segs={s['segments_processed']:2d}")
        for e in s["errors"]:
            print(f"        {e}")

    print()
    print(f"=== {len(candidates)} modulos, {total_segs} segmentos transformados ===")
    if total_errors:
        print(f"    {total_errors} errores/warnings")
    return 0


if __name__ == "__main__":
    sys.exit(main())
