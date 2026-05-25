#!/usr/bin/env python3
"""Substring matching: para cada funcion en la DB con bytes esperados,
busca esa secuencia exacta en el KERNEL.EXE generado por el autor.
Si aparece, esa funcion ya esta resuelta byte-exacto en el codigo del autor.
"""
from __future__ import annotations
import sqlite3
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(REPO / "tools"))

from mpa.config import load_config
from mpa.ne import parse_ne


def main():
    cfg = load_config(REPO)
    conn = sqlite3.connect(REPO / "state" / "mpa.db")
    conn.row_factory = sqlite3.Row

    # Bytes del KERNEL.EXE generado por nosotros con codigo del autor
    # (lo reasamblamos en /tmp/mpa-kernel-* por el script try-build/try-link)
    import glob
    candidates = sorted(glob.glob("/tmp/mpa-kernel-*/OUT/KERNEL.EXE"))
    if not candidates:
        print("No KERNEL.EXE built. Run try-build-kernel.sh + try-link-kernel.sh first.")
        return 1
    ours_path = Path(candidates[-1])
    print(f"ours: {ours_path}")

    ours = parse_ne(ours_path)
    ours_code = b""
    for seg in ours.segments:
        ours_code += ours.read_segment_bytes(seg.number)
    print(f"ours code total: {len(ours_code)} bytes")

    # Bytes del KERNEL.EXE original
    orig_path = REPO / "original" / "KERNEL.EXE"
    orig = parse_ne(orig_path)
    print(f"orig has {len(orig.segments)} segments")

    # Para cada funcion KERNEL en DB con size>=8 (para evitar falsos positivos)
    # buscamos su secuencia exacta de bytes en ours_code
    rows = list(conn.execute("""
        SELECT id, name, seg_number, seg_offset, size
        FROM functions
        WHERE module_name='KERNEL' AND size >= 8 AND status='pending'
        ORDER BY size DESC
    """))

    print(f"\nbuscando {len(rows)} funciones de KERNEL en codigo del autor...")
    print(f"{'id':>5} {'size':>5} {'name':<28} {'result'}")
    print("-" * 70)

    matched_ids = []
    for r in rows:
        try:
            seg_data = orig.read_segment_bytes(r["seg_number"])
        except Exception:
            continue
        body = seg_data[r["seg_offset"]:r["seg_offset"] + r["size"]]
        if len(body) != r["size"]:
            continue
        # Buscar substring exacto en codigo del autor
        idx = ours_code.find(body)
        if idx >= 0:
            matched_ids.append(r["id"])
            print(f"{r['id']:>5} {r['size']:>5} {(r['name'] or '?')[:28]:<28} MATCH @ ours_offset={idx:#x}")

    print(f"\n=== TOTAL: {len(matched_ids)} funciones del KERNEL ya tienen bytes correctos en el codigo del autor ===")
    print(f"De {len(rows)} candidatas (size>=8). Match rate: {100*len(matched_ids)/max(len(rows),1):.1f}%")

    if matched_ids:
        print(f"\nIDs matched: {matched_ids[:50]}{'...' if len(matched_ids)>50 else ''}")


if __name__ == "__main__":
    sys.exit(main() or 0)
