#!/usr/bin/env bash
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent
./.venv/bin/python <<'PY'
import sqlite3
c = sqlite3.connect('state/mpa.db')
header = f"| {'module':<10} | {'matched':>7} | {'pending':>7} | {'total':>5} | {'pct':>6} |"
sep = "-" * len(header)
print(header)
print(sep)
total_m = 0; total_t = 0
for row in c.execute("""
    SELECT module_name,
        SUM(status='matched') as m,
        SUM(status='pending') as p,
        COUNT(*) as t
    FROM functions GROUP BY module_name ORDER BY module_name"""):
    mod, m, p, t = row[0], row[1] or 0, row[2] or 0, row[3]
    pct = 100*m/t if t else 0
    total_m += m; total_t += t
    print(f"| {mod:<10} | {m:>7} | {p:>7} | {t:>5} | {pct:>5.1f}% |")
print(sep)
print(f"| {'TOTAL':<10} | {total_m:>7} | {'':>7} | {total_t:>5} | {100*total_m/max(total_t,1):>5.1f}% |")
PY
