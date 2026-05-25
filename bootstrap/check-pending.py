#!/usr/bin/env python3
"""Inspect why GDI/SOUND/USER pending didnt match."""
import sqlite3
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
c = sqlite3.connect(REPO / "state" / "mpa.db")
c.row_factory = sqlite3.Row

print("=== Pending por modulo y bucket de size ===")
for r in c.execute("""
    SELECT module_name,
        CASE
            WHEN size IS NULL THEN 'NULL'
            WHEN size = 0 THEN 'size=0'
            WHEN size < 0 THEN 'NEG'
            WHEN size BETWEEN 1 AND 4 THEN '1-4'
            WHEN size BETWEEN 5 AND 16 THEN '5-16'
            WHEN size BETWEEN 17 AND 64 THEN '17-64'
            WHEN size BETWEEN 65 AND 1000 THEN '65-1000'
            WHEN size BETWEEN 1001 AND 8000 THEN '1001-8000'
            ELSE '>8000'
        END AS bucket,
        COUNT(*) AS n
    FROM functions
    WHERE status='pending'
    GROUP BY module_name, bucket
    ORDER BY module_name, bucket
"""):
    print(f"  {r['module_name']:<10} {r['bucket']:<12} {r['n']}")

print("\n=== Sample USER pending ===")
for r in c.execute("""
    SELECT id, name, seg_number, seg_offset, size, last_diff_summary
    FROM functions
    WHERE module_name='USER' AND status='pending'
    ORDER BY size DESC NULLS LAST
    LIMIT 8
"""):
    print(f"  #{r['id']:<5} size={r['size']!s:<7} seg={r['seg_number']} off={r['seg_offset']:#06x} {r['name']}")

print("\n=== Sample GDI pending ===")
for r in c.execute("""
    SELECT id, name, seg_number, seg_offset, size, last_diff_summary
    FROM functions
    WHERE module_name='GDI' AND status='pending'
    ORDER BY size DESC NULLS LAST
    LIMIT 8
"""):
    print(f"  #{r['id']:<5} size={r['size']!s:<7} seg={r['seg_number']} off={r['seg_offset']:#06x} {r['name']}")

print("\n=== Sample SOUND pending ===")
for r in c.execute("""
    SELECT id, name, seg_number, seg_offset, size, last_diff_summary
    FROM functions
    WHERE module_name='SOUND' AND status='pending'
"""):
    print(f"  #{r['id']:<5} size={r['size']!s:<7} seg={r['seg_number']} off={r['seg_offset']:#06x} {r['name']}")
    print(f"     diff: {(r['last_diff_summary'] or '')[:200]}")
