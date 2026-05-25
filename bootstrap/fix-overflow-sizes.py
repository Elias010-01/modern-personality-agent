#!/usr/bin/env python3
"""Para funciones pending con size > seg_len-off (overflow), capa size."""
from __future__ import annotations
import sqlite3
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(REPO / "tools"))

from mpa.config import load_config
from mpa.ne import parse_ne, NEParseError

cfg = load_config(REPO)
conn = sqlite3.connect(REPO / "state" / "mpa.db")
conn.row_factory = sqlite3.Row

ne_cache = {}
def get_ne(name):
    if name not in ne_cache:
        t = next((t for t in cfg.targets if t.name == name), None)
        ne_cache[name] = parse_ne(cfg.original_path(t)) if t else None
    return ne_cache[name]

fixed = 0
for r in conn.execute(
    "SELECT id, module_name, seg_number, seg_offset, size, name "
    "FROM functions WHERE status='pending' AND size>0"
):
    ne = get_ne(r["module_name"])
    if not ne:
        continue
    try:
        seg = ne.segment(r["seg_number"])
    except NEParseError:
        continue
    available = seg.length_in_file - r["seg_offset"]
    if available <= 0:
        continue
    if r["size"] > available:
        new_size = available
        conn.execute(
            "UPDATE functions SET size=? WHERE id=?",
            (new_size, r["id"]),
        )
        print(f"  #{r['id']} {r['module_name']} {r['name']}: {r['size']} -> {new_size} ({r['size'] - new_size} byte overflow)")
        fixed += 1

conn.commit()
print(f"\nFixed: {fixed}")
