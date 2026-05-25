#!/usr/bin/env bash
set -euo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent

./.venv/bin/python <<'PY'
import sqlite3
c = sqlite3.connect("state/mpa.db")
c.row_factory = sqlite3.Row

# Funcion #38
r = c.execute("SELECT * FROM functions WHERE id=?", (38,)).fetchone()
print("fn #38:", dict(r) if r else "NONE")

# Funciones de KERNEL cerca de offset 0x37a0 en seg 1
print()
print("KERNEL seg=1 funcs cerca de 0x37a0 (+/- 100):")
for row in c.execute(
    "SELECT id, name, seg_number, seg_offset, size FROM functions "
    "WHERE module_name='KERNEL' AND seg_number=1 "
    "AND seg_offset BETWEEN ? AND ? ORDER BY seg_offset LIMIT 20",
    (0x37a0 - 0x100, 0x37a0 + 0x100),
):
    print("  ", dict(row))
PY
