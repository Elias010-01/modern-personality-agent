#!/usr/bin/env python3
"""Para los 20 pendientes restantes, intenta entender por que fallan."""
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

print("=== Pending: por que fallan? ===")
for r in conn.execute("""
    SELECT id, module_name, name, seg_number, seg_offset, size
    FROM functions
    WHERE status='pending'
    ORDER BY module_name, seg_number, seg_offset
"""):
    mod = r["module_name"]
    ne = get_ne(mod)
    if ne is None:
        print(f"  #{r['id']} {mod}: no NE")
        continue

    # Veo info segmento
    try:
        seg = ne.segment(r["seg_number"])
    except NEParseError as e:
        print(f"  #{r['id']} {mod} {r['name']} seg={r['seg_number']} off={r['seg_offset']:#x} size={r['size']}: SEG-ERR {e}")
        continue

    seg_len = seg.length_in_file
    end = r["seg_offset"] + r["size"]
    overflow = end - seg_len if end > seg_len else 0

    # Leer bytes
    try:
        body = ne.read_at(r["seg_number"], r["seg_offset"], r["size"])
        actual_len = len(body)
    except Exception as e:
        body = None
        actual_len = -1

    flag = "OK" if actual_len == r["size"] else f"SHORT-READ ({actual_len}/{r['size']})"
    if overflow:
        flag += f" OVERFLOW({overflow})"

    print(f"  #{r['id']:<5} {mod:<6} seg{r['seg_number']:<2} off={r['seg_offset']:#06x} size={r['size']:<5} seg_len={seg_len:<6} end={end:<6} {flag}")
    if r['name']:
        print(f"      name: {r['name']}")
