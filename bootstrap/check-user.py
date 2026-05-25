#!/usr/bin/env python3
"""Inspect USER pending functions."""
import sqlite3
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
c = sqlite3.connect(REPO / "state" / "mpa.db")
c.row_factory = sqlite3.Row

print("=== USER pending breakdown ===")
for r in c.execute("""
    SELECT
        CASE
            WHEN size IS NULL THEN 'NULL'
            WHEN size = 0 THEN 'size=0'
            WHEN size BETWEEN 1 AND 4 THEN '1-4'
            WHEN size BETWEEN 5 AND 16 THEN '5-16'
            WHEN size BETWEEN 17 AND 64 THEN '17-64'
            ELSE '>64'
        END AS bucket,
        COUNT(*) AS n
    FROM functions
    WHERE module_name='USER' AND status='pending'
    GROUP BY bucket
"""):
    print(f"  {r['bucket']:<8} {r['n']}")

print("\n=== Sample USER pending ===")
for r in c.execute("""
    SELECT id, name, seg_number, seg_offset, size
    FROM functions
    WHERE module_name='USER' AND status='pending'
    ORDER BY size DESC
    LIMIT 10
"""):
    print(f"  #{r['id']:<5} size={r['size']!s:<5} seg={r['seg_number']} off={r['seg_offset']:#06x} {r['name']}")

print("\n=== ALL pending sizes 0/NULL global ===")
for r in c.execute("""
    SELECT module_name, COUNT(*) n
    FROM functions
    WHERE status='pending' AND (size=0 OR size IS NULL)
    GROUP BY module_name
"""):
    print(f"  {r['module_name']:<10} {r['n']}")

print("\n=== ALL pending por size>0 global ===")
for r in c.execute("""
    SELECT module_name, COUNT(*) n
    FROM functions
    WHERE status='pending' AND size>0
    GROUP BY module_name
"""):
    print(f"  {r['module_name']:<10} {r['n']}")
