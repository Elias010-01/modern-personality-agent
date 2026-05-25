#!/usr/bin/env python3
"""
extract_ne_def.py

Genera el .DEF (module definition file) de un binario NE Windows 1.x,
extrayendo:

  - LIBRARY/NAME segun bit 0x8000 del flag
  - DESCRIPTION desde la non-resident name table[0]
  - STUB WINSTUB.EXE (estandar)
  - HEAPSIZE, STACKSIZE del NE header
  - EXETYPE WINDOWS
  - CODE/DATA/SEGMENTS atributos (PRELOAD, FIXED, MOVABLE, DISCARDABLE,
    SINGLE/MULTIPLE) deducidos de los segment flags y modo del modulo
  - IMPORTS: modulo.funcion (por nombre) y modulo.ordinal (sin nombre)
  - EXPORTS: orden @ ordinal RESIDENTNAME/NONRESIDENT con DATA flag si corresponde

Output: stdout o fichero (--out).
"""
from __future__ import annotations

import argparse
import struct
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "bootstrap"))
from ne_fixups import parse_ne_fixups
from extract_ne_exports import analyze_ne
from fixup_resolver import exports_of


# Flag bits del NE header (offset 12, word)
NE_FLAG_DLL          = 0x8000  # bit 15: library, no executable
NE_FLAG_PROTECTMODE  = 0x0008
NE_FLAG_SINGLEDATA   = 0x0001
NE_FLAG_MULTIPLEDATA = 0x0002

# Flag bits de segment table entry (offset +4, word)
NE_SEG_DATA         = 0x0001
NE_SEG_ALLOCATED    = 0x0002
NE_SEG_LOADED       = 0x0004
NE_SEG_ITERATED     = 0x0008
NE_SEG_MOVABLE      = 0x0010
NE_SEG_SHAREABLE    = 0x0020   # PURE
NE_SEG_PRELOAD      = 0x0040
NE_SEG_EXECUTEONLY  = 0x0080   # if CODE; else READONLY
NE_SEG_HASRELOC     = 0x0100
NE_SEG_DISCARDABLE  = 0x1000


def parse_ne_basic(buf: bytes) -> dict:
    """Parsea el header NE y devuelve datos basicos para .DEF"""
    ne_off = struct.unpack_from("<I", buf, 0x3C)[0]
    ne = buf[ne_off:]
    flags     = struct.unpack_from("<H", ne, 12)[0]
    auto_ds   = struct.unpack_from("<H", ne, 14)[0]
    init_heap = struct.unpack_from("<H", ne, 16)[0]
    init_stack= struct.unpack_from("<H", ne, 18)[0]
    cs_ip     = struct.unpack_from("<I", ne, 20)[0]
    ss_sp     = struct.unpack_from("<I", ne, 24)[0]
    seg_count = struct.unpack_from("<H", ne, 28)[0]
    seg_tbl_rel = struct.unpack_from("<H", ne, 34)[0]
    sector_shift = struct.unpack_from("<H", ne, 50)[0] or 9
    sector = 1 << sector_shift

    segments = []
    seg_tbl_off = ne_off + seg_tbl_rel
    for i in range(seg_count):
        e = seg_tbl_off + i * 8
        sector_off = struct.unpack_from("<H", buf, e + 0)[0]
        seg_len = struct.unpack_from("<H", buf, e + 2)[0]
        sflags = struct.unpack_from("<H", buf, e + 4)[0]
        min_alloc = struct.unpack_from("<H", buf, e + 6)[0]
        segments.append({
            "index": i + 1,
            "is_data": bool(sflags & NE_SEG_DATA),
            "preload": bool(sflags & NE_SEG_PRELOAD),
            "movable": bool(sflags & NE_SEG_MOVABLE),
            "discardable": bool(sflags & NE_SEG_DISCARDABLE),
            "shareable": bool(sflags & NE_SEG_SHAREABLE),
            "iterated": bool(sflags & NE_SEG_ITERATED),
            "has_reloc": bool(sflags & NE_SEG_HASRELOC),
            "min_alloc": min_alloc,
            "data_len": seg_len,
            "flags_raw": sflags,
        })

    return {
        "flags": flags,
        "is_dll": bool(flags & NE_FLAG_DLL),
        "single_data": bool(flags & NE_FLAG_SINGLEDATA),
        "multiple_data": bool(flags & NE_FLAG_MULTIPLEDATA),
        "auto_ds": auto_ds,
        "init_heap": init_heap,
        "init_stack": init_stack,
        "segments": segments,
    }


def seg_attrs(seg: dict) -> str:
    """Devuelve string MASM-style: 'PRELOAD MOVABLE DISCARDABLE'"""
    parts = []
    parts.append("PRELOAD" if seg["preload"] else "LOADONCALL")
    if seg["movable"]:
        parts.append("MOVABLE")
    else:
        parts.append("FIXED")
    if seg["discardable"]:
        parts.append("DISCARDABLE")
    if seg["shareable"]:
        parts.append("PURE")
    return " ".join(parts)


def generate_def(ne_path: Path) -> str:
    """Genera el contenido del .DEF para un binario NE."""
    buf = ne_path.read_bytes()
    info_exp = analyze_ne(ne_path)
    info_fx = parse_ne_fixups(ne_path)
    info_hdr = parse_ne_basic(buf)

    module_name = info_exp.get("module", ne_path.stem.upper())
    description = info_exp.get("module_description", "") or ""
    # Sanitizar a ASCII para evitar problemas de encoding en el .DEF.
    # Reemplazamos caracteres no-ASCII por su mejor aproximacion ASCII.
    description = description.encode("ascii", errors="replace").decode("ascii").replace("?", " ")

    lines = []
    lines.append(f"; {module_name}.DEF - module definition para Windows 1.x")
    lines.append(f"; AUTO-GENERATED desde {ne_path.name} (NE entry/relocation tables)")
    lines.append("")

    keyword = "LIBRARY" if info_hdr["is_dll"] else "NAME"
    lines.append(f"{keyword:11s} {module_name}")
    if description:
        # Escape de comillas simples
        desc = description.replace("'", "''")
        lines.append(f"DESCRIPTION '{desc}'")
    lines.append("EXETYPE     WINDOWS")
    lines.append("STUB        'WINSTUB.EXE'")
    lines.append("")

    # Segment attributes: usar el primer segmento CODE y primer DATA como representante
    code_seg = next((s for s in info_hdr["segments"] if not s["is_data"]), None)
    data_seg = next((s for s in info_hdr["segments"] if s["is_data"]), None)
    if code_seg:
        attrs = seg_attrs(code_seg)
        lines.append(f"CODE        {attrs}")
    if data_seg:
        single_or_multi = "SINGLE" if info_hdr["single_data"] else \
                         ("MULTIPLE" if info_hdr["multiple_data"] else "")
        attrs = seg_attrs(data_seg)
        if single_or_multi:
            attrs = f"{attrs} {single_or_multi}"
        lines.append(f"DATA        {attrs}")
    lines.append("")

    if info_hdr["init_heap"]:
        lines.append(f"HEAPSIZE    {info_hdr['init_heap']}")
    if info_hdr["init_stack"]:
        lines.append(f"STACKSIZE   {info_hdr['init_stack']}")
    if info_hdr["init_heap"] or info_hdr["init_stack"]:
        lines.append("")

    # SEGMENTS section: si hay segmentos con atributos no estandar, listarlos
    # Para Windows 1.x este es opcional, lo dejamos al .DEF basico.

    # IMPORTS: agregamos cada import unico de las fixup tables.
    # Resolvemos ordinales a nombres usando los exports del modulo target
    # cuando los tenemos en original/.
    imports: set[str] = set()
    for seg_idx, seg_info in info_fx["segments"].items():
        for fx in seg_info["fixups"]:
            if fx["kind"] == "IMPORTORDINAL":
                mod = fx["module"]
                ord_ = fx["ordinal"]
                exp = exports_of(mod)
                name = exp.get(ord_)
                if name:
                    imports.add(f"{mod}.{name}")
                else:
                    imports.add(f"{mod}.{ord_}")
            elif fx["kind"] == "IMPORTNAME":
                imports.add(f"{fx['module']}.{fx['import_name']}")

    if imports:
        lines.append("IMPORTS")
        for imp in sorted(imports):
            lines.append(f"    {imp}")
        lines.append("")

    # EXPORTS: ordenados por ordinal
    exports = sorted(info_exp.get("exports", []), key=lambda e: e["ordinal"])
    if exports:
        lines.append("EXPORTS")
        for e in exports:
            ord_ = e["ordinal"]
            name = e["name"]
            lines.append(f"    {name:<22s} @{ord_}")
        lines.append("")

    return "\n".join(lines)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("binary", nargs="?", help="Ruta al binario NE")
    ap.add_argument("--all", action="store_true",
                    help="Generar para todos los modulos en src/")
    ap.add_argument("--out", help="Fichero de salida (solo si binary)")
    args = ap.parse_args()

    if args.all:
        # Para cada modulo en src/, generar src/<MOD>/<MOD>.def
        src_root = ROOT / "src"
        count_ok = 0
        count_skip = 0
        for mod_dir in sorted(src_root.iterdir()):
            if not mod_dir.is_dir():
                continue
            layout_path = mod_dir / "layout.json"
            if not layout_path.exists():
                continue
            import json
            layout = json.loads(layout_path.read_text())
            if layout.get("kind") == "mz_raw":
                count_skip += 1
                continue  # MZ no tienen NE structure
            ne_path = ROOT / "original" / layout["original_name"]
            if not ne_path.exists():
                count_skip += 1
                continue
            try:
                content = generate_def(ne_path)
                out_path = mod_dir / f"{mod_dir.name}.def"
                out_path.write_text(content, encoding="ascii")
                count_ok += 1
                print(f"[OK] {mod_dir.name:14s} -> {out_path.relative_to(ROOT)}")
            except Exception as e:
                count_skip += 1
                print(f"[ERR] {mod_dir.name}: {e}")
        print(f"\n=== {count_ok} .DEF generados, {count_skip} saltados ===")
        return 0

    if not args.binary:
        print("usage: extract_ne_def.py <binary> | --all", file=sys.stderr)
        return 1
    content = generate_def(Path(args.binary))
    if args.out:
        Path(args.out).write_text(content, encoding="ascii")
        print(f"[OK] {args.out}")
    else:
        print(content)
    return 0


if __name__ == "__main__":
    sys.exit(main())
