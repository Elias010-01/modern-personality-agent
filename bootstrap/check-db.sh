#!/usr/bin/env bash
set -euo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent

echo "=== status ==="
./.venv/bin/python -m mpa.cli status 2>&1 | tail -20

echo
echo "=== DB introspection ==="
./.venv/bin/python <<'PY'
import sqlite3
c = sqlite3.connect("state/mpa.db")
c.row_factory = sqlite3.Row
print("KERNEL funcs total:", c.execute(
    "SELECT count(*) FROM functions WHERE module=?", ("KERNEL",)
).fetchone()[0])
print("KERNEL with seg/off:", c.execute(
    "SELECT count(*) FROM functions WHERE module=? AND seg_number IS NOT NULL",
    ("KERNEL",)
).fetchone()[0])
print("KERNEL status counts:")
for r in c.execute(
    "SELECT status, count(*) c FROM functions WHERE module=? GROUP BY status",
    ("KERNEL",)
):
    print("  ", dict(r))
print()
print("first 5 KERNEL funcs:")
for r in c.execute(
    "SELECT name, seg_number, seg_offset, size_bytes, status "
    "FROM functions WHERE module=? ORDER BY rowid LIMIT 5", ("KERNEL",)
):
    print("  ", dict(r))
PY
