#!/usr/bin/env python3
"""
fixup_resolver.py

Construye un mapa global de fixups simbolicos para un binario NE,
expandiendo las cadenas de fixups (chains) que el formato NE usa para
compactar multiples referencias al mismo target.

Tambien resuelve ordinales -> nombres usando los exports de los modulos
target (cuando estan en original/).

Salida principal: `resolve_module(name)` -> {seg_idx: {offset: target_str}}
"""
from __future__ import annotations

import functools
import struct
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

# Import del parser local
import sys
sys.path.insert(0, str(ROOT / "bootstrap"))
from ne_fixups import parse_ne_fixups
from extract_ne_exports import analyze_ne


@functools.lru_cache(maxsize=128)
def exports_of(module_name: str) -> dict[int, str]:
    """
    Devuelve dict ordinal -> nombre para un modulo. Busca el binario en
    original/ probando varios nombres comunes (.EXE, .DRV).
    """
    candidates = [
        ROOT / "original" / f"{module_name}.EXE",
        ROOT / "original" / f"{module_name}.DRV",
        ROOT / "original" / module_name,
    ]
    for path in candidates:
        if path.exists():
            info = analyze_ne(path)
            if "exports" in info:
                return {e["ordinal"]: e["name"] for e in info["exports"]}
            break
    return {}


def resolve_symbol(fixup: dict) -> str:
    """
    Convierte un fixup en una cadena simbolica humanamente legible.
    """
    kind = fixup["kind"]
    if kind == "IMPORTORDINAL":
        mod = fixup["module"]
        ord_ = fixup["ordinal"]
        exports = exports_of(mod)
        name = exports.get(ord_)
        if name:
            return f"{mod}.{name}"
        return f"{mod}.{ord_}"
    if kind == "IMPORTNAME":
        return f"{fixup['module']}.{fixup['import_name']}"
    if kind == "INTERNALREF":
        return f"_SEG{fixup['target_segment']}_{fixup['target_offset']:04X}"
    if kind == "INTERNALREF_MOVABLE":
        return f"_entry_{fixup['entry_ordinal']}"
    return "<unknown>"


def build_fixup_map(ne_path: Path | str, segment_data: dict[int, bytes]) -> dict[int, dict[int, str]]:
    """
    Devuelve, por cada segmento, un dict offset_in_seg -> simbolo.
    Expande las CHAINS: cuando flag ADDITIVE no esta, el word @ fixup_offset
    en los bytes del segmento original es el offset del siguiente fixup en
    la cadena (todos comparten el mismo target). 0xFFFF = fin de chain.

    Args:
      ne_path: ruta al binario NE
      segment_data: dict seg_idx -> bytes raw del segmento (sin tabla de reloc)
                    necesario para seguir las chains
    """
    info = parse_ne_fixups(ne_path)
    result: dict[int, dict[int, str]] = {}
    for seg_idx, seg_info in info["segments"].items():
        fmap: dict[int, str] = {}
        data = segment_data.get(seg_idx)
        for fx in seg_info["fixups"]:
            sym = resolve_symbol(fx)
            offset = fx["offset_in_seg"]
            additive = fx["additive"]
            # Marcar offset inicial
            fmap[offset] = sym
            # Si no es additive y tenemos los bytes, seguir la chain
            if not additive and data is not None:
                visited = {offset}
                cur = offset
                # El word @ cur en los datos del segmento original apunta al
                # siguiente fixup. 0xFFFF marca fin.
                while True:
                    if cur + 2 > len(data):
                        break
                    nxt = struct.unpack_from("<H", data, cur)[0]
                    if nxt == 0xFFFF or nxt in visited:
                        break
                    visited.add(nxt)
                    fmap[nxt] = sym
                    cur = nxt
        result[seg_idx] = fmap
    return result


if __name__ == "__main__":
    import json
    if len(sys.argv) < 2:
        print("usage: fixup_resolver.py <module>", file=sys.stderr)
        sys.exit(1)
    mod = sys.argv[1]
    path = ROOT / "original" / f"{mod}.EXE"
    if not path.exists():
        path = ROOT / "original" / f"{mod}.DRV"
    if not path.exists():
        print(f"no encontrado: {mod}", file=sys.stderr)
        sys.exit(1)

    # Cargar bytes de cada segmento
    buf = path.read_bytes()
    ne_off = struct.unpack_from("<I", buf, 0x3C)[0]
    seg_tbl_rel = struct.unpack_from("<H", buf, ne_off + 34)[0]
    seg_count = struct.unpack_from("<H", buf, ne_off + 28)[0]
    sector_shift = struct.unpack_from("<H", buf, ne_off + 50)[0] or 9
    sector = 1 << sector_shift
    segment_data: dict[int, bytes] = {}
    for i in range(seg_count):
        e = ne_off + seg_tbl_rel + i * 8
        sec_off = struct.unpack_from("<H", buf, e + 0)[0]
        slen = struct.unpack_from("<H", buf, e + 2)[0]
        fo = sec_off * sector
        segment_data[i + 1] = buf[fo:fo + slen]

    fmap = build_fixup_map(path, segment_data)
    print(json.dumps({str(k): {str(o): s for o, s in v.items()} for k, v in fmap.items()},
                     indent=2))
