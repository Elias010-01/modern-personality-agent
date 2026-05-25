#!/usr/bin/env python3
"""Infiere `size` para funciones con size=0:
size = offset_de_proxima_funcion_en_mismo_segmento - offset_actual

Si es la ultima, usa fin de segmento.
Aprovecha:
  - Otros symbols/funciones del mismo modulo en mismo segmento
  - Entry points NE
  - Length del segmento del NE header
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

    # Modulos con funciones size=0
    mods = [r["module_name"] for r in conn.execute(
        "SELECT DISTINCT module_name FROM functions WHERE size=0 OR size IS NULL"
    )]

    total_updated = 0
    total_unchanged = 0

    for mod in mods:
        target = next((t for t in cfg.targets if t.name == mod), None)
        if not target:
            print(f"  {mod}: target ausente, skip")
            continue
        ne_path = cfg.original_path(target)
        if not ne_path.exists():
            print(f"  {mod}: binario ausente {ne_path}")
            continue

        try:
            ne = parse_ne(ne_path)
        except Exception as e:
            print(f"  {mod}: NE parse error {e}")
            continue

        # Para cada segmento, recolecta TODOS los offsets conocidos
        # de la DB + entry points NE
        seg_offsets: dict[int, set[int]] = {}
        seg_lengths: dict[int, int] = {}

        for s in ne.segments:
            seg_lengths[s.number] = s.length_in_file

        # Entry points como anclas
        for ep in ne.entries:
            if ep.seg_number > 0 and ep.seg_number < 0xFE:
                seg_offsets.setdefault(ep.seg_number, set()).add(ep.seg_offset)

        # Funciones de este modulo en DB
        funcs = list(conn.execute(
            "SELECT id, seg_number, seg_offset, size, name FROM functions "
            "WHERE module_name=? ORDER BY seg_number, seg_offset",
            (mod,),
        ))
        for f in funcs:
            seg_offsets.setdefault(f["seg_number"], set()).add(f["seg_offset"])

        # Para cada funcion con size=0/NULL, infiere
        updated = 0
        unchanged = 0
        for f in funcs:
            if f["size"] and f["size"] > 0:
                continue
            seg = f["seg_number"]
            off = f["seg_offset"]
            offsets_sorted = sorted(seg_offsets.get(seg, set()))
            # Encuentra el siguiente offset > off
            next_off = None
            for o in offsets_sorted:
                if o > off:
                    next_off = o
                    break
            if next_off is None:
                # Es la ultima funcion del segmento
                next_off = seg_lengths.get(seg, 0)
            new_size = next_off - off
            if new_size <= 0:
                # Posiciones duplicadas o offsets locos
                unchanged += 1
                continue
            # Cap razonable: una funcion en NE-16bit raro >4KB
            if new_size > 8192:
                # Probablemente la siguiente cosa NO es una funcion adyacente,
                # sino datos o segment end que no aplica.
                # Ponemos size=0 todavia (mejor no inventar).
                unchanged += 1
                continue
            conn.execute(
                "UPDATE functions SET size=? WHERE id=?",
                (new_size, f["id"]),
            )
            updated += 1

        print(f"  {mod:<10} updated={updated:<4} unchanged={unchanged:<4}")
        total_updated += updated
        total_unchanged += unchanged

    conn.commit()
    print()
    print(f"TOTAL: {total_updated} sizes infered, {total_unchanged} unchanged")
    return 0


if __name__ == "__main__":
    sys.exit(main())
