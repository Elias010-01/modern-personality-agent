#!/usr/bin/env python3
"""
extract_ne_exports.py

Lee un binario NE y extrae:
  - Nombre del modulo (resident name table[0])
  - Lista de funciones exportadas (resident + non-resident name tables)
  - Ordinal de cada export
  - Tipo de entry (fixed/movable + segmento + offset)

Salida JSON a stdout o a fichero con --out.
Util para documentar APIs de cara a la reimplementacion clean-room.
"""
from __future__ import annotations

import argparse
import json
import struct
import sys
from pathlib import Path


def parse_name_table(buf: bytes, offset: int, max_end: int | None = None) -> list[dict]:
    """
    Parsea una tabla de nombres NE (resident o non-resident).
    Formato:
      [length_byte (1..255)] [name_bytes] [ordinal_word]
      ...
      [00]   <- terminador
    Devuelve lista de {name: str, ordinal: int}
    """
    out = []
    i = offset
    while i < len(buf):
        n = buf[i]
        if n == 0:
            break
        if max_end is not None and i + 1 + n + 2 > max_end:
            break
        name = buf[i + 1:i + 1 + n].decode("ascii", errors="replace")
        ord_word = struct.unpack_from("<H", buf, i + 1 + n)[0]
        out.append({"name": name, "ordinal": ord_word})
        i += 1 + n + 2
    return out


def parse_entry_table(buf: bytes, offset: int, length: int) -> list[dict]:
    """
    Parsea la entry table NE en bundles. Devuelve lista plana de entries
    con ordinal sequencialmente asignado (1, 2, 3, ...).
    Cada entry:
      {ordinal, segment, offset, type, flags}
    """
    out = []
    end = offset + length
    p = offset
    ordinal = 1
    while p < end:
        nentries = buf[p]
        if nentries == 0:
            # Termina
            break
        seg_type = buf[p + 1]
        p += 2
        if seg_type == 0:
            # bundle vacio (skip): solo incrementa ordinal nentries veces
            for _ in range(nentries):
                out.append({"ordinal": ordinal, "type": "skipped"})
                ordinal += 1
            continue
        elif seg_type == 0xFE:
            # Constante: cada entry es flags(1) + value(word)
            for _ in range(nentries):
                if p + 3 > end:
                    break
                flags = buf[p]
                value = struct.unpack_from("<H", buf, p + 1)[0]
                out.append({
                    "ordinal": ordinal,
                    "type": "constant",
                    "flags": flags,
                    "value": value,
                })
                ordinal += 1
                p += 3
        else:
            # Fixed (1..0xFD) o Movable (0xFF)
            for _ in range(nentries):
                if seg_type == 0xFF:
                    # Movable: flags(1) + INT3F(2) + segment(1) + offset(2) = 6 bytes
                    if p + 6 > end:
                        break
                    flags = buf[p]
                    # buf[p+1:p+3] = INT 3F instruction = CDh 3Fh
                    segnum = buf[p + 3]
                    seg_offset = struct.unpack_from("<H", buf, p + 4)[0]
                    out.append({
                        "ordinal": ordinal,
                        "type": "movable",
                        "flags": flags,
                        "segment": segnum,
                        "offset": seg_offset,
                    })
                    p += 6
                else:
                    # Fixed: flags(1) + offset(2) = 3 bytes, segment = seg_type
                    if p + 3 > end:
                        break
                    flags = buf[p]
                    seg_offset = struct.unpack_from("<H", buf, p + 1)[0]
                    out.append({
                        "ordinal": ordinal,
                        "type": "fixed",
                        "flags": flags,
                        "segment": seg_type,
                        "offset": seg_offset,
                    })
                    p += 3
                ordinal += 1
    return out


def analyze_ne(path: Path) -> dict:
    buf = path.read_bytes()
    ne_off = struct.unpack_from("<I", buf, 0x3C)[0]
    if buf[ne_off:ne_off + 2] != b"NE":
        return {"error": "not NE"}
    ne = buf[ne_off:]

    entry_tbl_rel = struct.unpack_from("<H", ne, 4)[0]
    entry_tbl_len = struct.unpack_from("<H", ne, 6)[0]
    nrn_size = struct.unpack_from("<H", ne, 32)[0]
    resname_tbl_rel = struct.unpack_from("<H", ne, 38)[0]
    modref_tbl_rel = struct.unpack_from("<H", ne, 40)[0]
    nrn_off_abs = struct.unpack_from("<I", ne, 44)[0]

    # Resident name table: [length+name+ord] terminada por length=0
    rn_off = ne_off + resname_tbl_rel
    rn_end = ne_off + modref_tbl_rel  # esta justo antes
    resident = parse_name_table(buf, rn_off, rn_end)

    # Non-resident name table: en offset absoluto del fichero
    nrn_end = nrn_off_abs + nrn_size if nrn_size else None
    non_resident = parse_name_table(buf, nrn_off_abs, nrn_end)

    # Entry table
    et_off = ne_off + entry_tbl_rel
    entries = parse_entry_table(buf, et_off, entry_tbl_len)

    # Modulo nombre = primer entry de resident
    module_name = resident[0]["name"] if resident else None

    # Mapear nombres a entries por ordinal
    exports = []
    name_by_ord: dict[int, str] = {}
    for n in resident[1:]:  # primer entry es el nombre del modulo
        name_by_ord[n["ordinal"]] = n["name"]
    for n in non_resident[1:]:  # primer entry es description del modulo
        name_by_ord[n["ordinal"]] = n["name"]

    for e in entries:
        if e.get("type") in ("skipped", "constant"):
            continue
        ord_ = e["ordinal"]
        name = name_by_ord.get(ord_)
        if name:
            exports.append({
                "ordinal": ord_,
                "name": name,
                "segment": e.get("segment"),
                "offset": e.get("offset"),
                "type": e["type"],
                "flags": e.get("flags", 0),
            })

    return {
        "module": module_name,
        "module_description": non_resident[0]["name"] if non_resident else None,
        "resident_names": resident,
        "non_resident_names": non_resident,
        "entry_count": len(entries),
        "exports": exports,
    }


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("binary", help="Ruta al binario NE (e.g. original/SYSTEM.DRV)")
    ap.add_argument("--out", help="Fichero JSON de salida")
    ap.add_argument("--md", help="Fichero Markdown de salida (resumen humano)")
    args = ap.parse_args()

    info = analyze_ne(Path(args.binary))
    json_out = json.dumps(info, indent=2)

    if args.out:
        Path(args.out).write_text(json_out)
        print(f"[OK] JSON escrito en {args.out}")
    else:
        print(json_out)

    if args.md and "error" not in info:
        md = []
        md.append(f"# Exports de `{info['module']}`")
        md.append("")
        if info["module_description"]:
            md.append(f"**Descripcion**: {info['module_description']}")
            md.append("")
        md.append(f"**Total exports**: {len(info['exports'])}")
        md.append("")
        md.append("| Ordinal | Nombre | Segmento | Offset | Tipo |")
        md.append("|---------|--------|----------|--------|------|")
        for e in info["exports"]:
            seg = e.get("segment", "-")
            off = f"0x{e['offset']:04x}" if isinstance(e.get("offset"), int) else "-"
            md.append(f"| {e['ordinal']} | `{e['name']}` | {seg} | {off} | {e['type']} |")
        Path(args.md).write_text("\n".join(md) + "\n")
        print(f"[OK] Markdown escrito en {args.md}")

    return 0


if __name__ == "__main__":
    sys.exit(main())
