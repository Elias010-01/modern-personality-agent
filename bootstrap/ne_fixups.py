#!/usr/bin/env python3
"""
ne_fixups.py

Parser de NE relocation/fixup tables.

Para un binario NE dado, extrae para cada segmento la lista de fixups
con su tipo resuelto:

  - INTERNALREF segmento+offset (mismo modulo)
  - IMPORTORDINAL modulo+ordinal (otro NE)
  - IMPORTNAME modulo+nombre (otro NE)
  - OSFIXUP (raro)

Tambien devuelve la lista de modulos importados por nombre.

Uso:
    from ne_fixups import parse_ne_fixups
    info = parse_ne_fixups(path_to_ne)
    # info["modules"] -> ["KERNEL", "USER", ...]
    # info["segments"][1] -> {fixups: [{offset, type, target_str}], ...}
"""
from __future__ import annotations

import struct
from pathlib import Path


# NE fixup source types
SRC_LOBYTE       = 0
SRC_SEGMENT      = 2
SRC_FARADDR      = 3   # ptr16:16 (segment:offset)
SRC_OFFSET       = 5   # word

# NE fixup target types (bits 0-1 of flag)
TGT_INTERNALREF  = 0
TGT_IMPORTORDINAL = 1
TGT_IMPORTNAME   = 2
TGT_OSFIXUP      = 3

# Flag bits
FLAG_ADDITIVE    = 4   # bit 2: ADDITIVE (no chain)


def _read_pascal_string(buf: bytes, offset: int) -> str:
    n = buf[offset]
    if n == 0:
        return ""
    return buf[offset + 1:offset + 1 + n].decode("ascii", errors="replace")


def parse_ne_fixups(path: Path | str) -> dict:
    path = Path(path)
    buf = path.read_bytes()
    ne_off = struct.unpack_from("<I", buf, 0x3C)[0]
    if buf[ne_off:ne_off + 2] != b"NE":
        return {"error": "not NE"}
    ne = buf[ne_off:]

    seg_count = struct.unpack_from("<H", ne, 28)[0]
    modref_count = struct.unpack_from("<H", ne, 30)[0]
    seg_tbl_rel = struct.unpack_from("<H", ne, 34)[0]
    modref_tbl_rel = struct.unpack_from("<H", ne, 40)[0]
    impname_tbl_rel = struct.unpack_from("<H", ne, 42)[0]
    sector_shift = struct.unpack_from("<H", ne, 50)[0] or 9
    sector = 1 << sector_shift

    # Modulos importados: cada entry en modref_tbl es offset (relativo a
    # impname_tbl) hacia un pascal string con el nombre del modulo.
    modules: list[str] = []
    for i in range(modref_count):
        mr_offset = struct.unpack_from("<H", buf, ne_off + modref_tbl_rel + i * 2)[0]
        name = _read_pascal_string(buf, ne_off + impname_tbl_rel + mr_offset)
        modules.append(name)

    # Tabla de imported names absoluta (offset desde ne_off)
    impname_abs = ne_off + impname_tbl_rel

    segments: dict[int, dict] = {}

    # Para cada segmento, parsear su tabla de fixups (si tiene flag 0x100)
    seg_tbl_off = ne_off + seg_tbl_rel
    for i in range(seg_count):
        e = seg_tbl_off + i * 8
        sector_off = struct.unpack_from("<H", buf, e + 0)[0]
        seg_len = struct.unpack_from("<H", buf, e + 2)[0]
        flags = struct.unpack_from("<H", buf, e + 4)[0]
        file_off = sector_off * sector
        has_reloc = bool(flags & 0x0100)
        seg_idx = i + 1
        fixups: list[dict] = []
        if has_reloc and seg_len:
            rel_off = file_off + seg_len
            n = struct.unpack_from("<H", buf, rel_off)[0]
            # Cada entrada: 8 bytes
            for k in range(n):
                p = rel_off + 2 + k * 8
                src_type = buf[p]
                fixup_flag = buf[p + 1]
                seg_offset = struct.unpack_from("<H", buf, p + 2)[0]
                t = fixup_flag & 0x3
                additive = bool(fixup_flag & FLAG_ADDITIVE)
                entry: dict = {
                    "offset_in_seg": seg_offset,
                    "src_type": src_type,
                    "flag": fixup_flag,
                    "additive": additive,
                    "target_type": t,
                }
                if t == TGT_INTERNALREF:
                    # 4 bytes: segment(1) + zero(1) + offset(2)  OR  0xFF + 0xFF + entry_ordinal(2) si movable
                    tseg = buf[p + 4]
                    pad = buf[p + 5]
                    toff = struct.unpack_from("<H", buf, p + 6)[0]
                    if tseg == 0xFF:
                        entry["kind"] = "INTERNALREF_MOVABLE"
                        entry["entry_ordinal"] = toff
                        entry["target_str"] = f"<movable entry {toff}>"
                    else:
                        entry["kind"] = "INTERNALREF"
                        entry["target_segment"] = tseg
                        entry["target_offset"] = toff
                        entry["target_str"] = f"SEG{tseg}:0x{toff:04X}"
                elif t == TGT_IMPORTORDINAL:
                    midx = struct.unpack_from("<H", buf, p + 4)[0]
                    ord_ = struct.unpack_from("<H", buf, p + 6)[0]
                    mname = modules[midx - 1] if 1 <= midx <= len(modules) else f"MOD{midx}"
                    entry["kind"] = "IMPORTORDINAL"
                    entry["module"] = mname
                    entry["ordinal"] = ord_
                    entry["target_str"] = f"{mname}.{ord_}"
                elif t == TGT_IMPORTNAME:
                    midx = struct.unpack_from("<H", buf, p + 4)[0]
                    name_off = struct.unpack_from("<H", buf, p + 6)[0]
                    mname = modules[midx - 1] if 1 <= midx <= len(modules) else f"MOD{midx}"
                    iname = _read_pascal_string(buf, impname_abs + name_off)
                    entry["kind"] = "IMPORTNAME"
                    entry["module"] = mname
                    entry["import_name"] = iname
                    entry["target_str"] = f"{mname}.{iname}"
                else:
                    entry["kind"] = "OSFIXUP"
                    entry["target_str"] = "<osfixup>"
                fixups.append(entry)
        segments[seg_idx] = {"fixups": fixups, "has_reloc": has_reloc,
                             "file_off": file_off, "data_len": seg_len}

    return {"modules": modules, "segments": segments}


if __name__ == "__main__":
    import json
    import sys
    if len(sys.argv) < 2:
        print("usage: ne_fixups.py <binary>", file=sys.stderr)
        sys.exit(1)
    info = parse_ne_fixups(sys.argv[1])
    print(json.dumps(info, indent=2, default=str))
