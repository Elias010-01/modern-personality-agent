#!/usr/bin/env python3
"""Cuenta funciones pequenas (size <= N) en TODOS los modulos
para evaluar el potencial de bulk-matching via DB literals."""
import sqlite3
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
conn = sqlite3.connect(REPO / "state" / "mpa.db")
conn.row_factory = sqlite3.Row

print(f"{'module':<10} {'<=2':>5} {'<=4':>5} {'<=6':>5} {'<=8':>5} {'<=12':>5} {'<=20':>5} {'pending':>8} {'total':>5}")
print("-" * 70)

totals = {k: 0 for k in ("le2", "le4", "le6", "le8", "le12", "le20", "pending", "total")}

for mod_row in conn.execute("SELECT DISTINCT module_name FROM functions ORDER BY module_name"):
    mod = mod_row["module_name"]
    counts = {}
    for limit, key in [(2, "le2"), (4, "le4"), (6, "le6"), (8, "le8"), (12, "le12"), (20, "le20")]:
        c = conn.execute(
            "SELECT COUNT(*) FROM functions WHERE module_name=? AND status='pending' AND size>0 AND size<=?",
            (mod, limit),
        ).fetchone()[0]
        counts[key] = c
        totals[key] += c

    pending = conn.execute(
        "SELECT COUNT(*) FROM functions WHERE module_name=? AND status='pending'",
        (mod,),
    ).fetchone()[0]
    total = conn.execute(
        "SELECT COUNT(*) FROM functions WHERE module_name=?", (mod,),
    ).fetchone()[0]
    totals["pending"] += pending
    totals["total"] += total

    print(f"{mod:<10} {counts['le2']:>5} {counts['le4']:>5} {counts['le6']:>5} "
          f"{counts['le8']:>5} {counts['le12']:>5} {counts['le20']:>5} "
          f"{pending:>8} {total:>5}")

print("-" * 70)
print(f"{'TOTAL':<10} {totals['le2']:>5} {totals['le4']:>5} {totals['le6']:>5} "
      f"{totals['le8']:>5} {totals['le12']:>5} {totals['le20']:>5} "
      f"{totals['pending']:>8} {totals['total']:>5}")

print()
print("Breakdown size<=8 of pending: how many of those are exactly each common pattern?")
# Patrones tipicos de KERNEL en thunks: ej. "DOS3CALL = INT 21h; retf"
patterns = {
    "RETF(0xCB)": b"\xcb",
    "RET(0xC3)": b"\xc3",
    "INT21+RETF": b"\xcd\x21\xcb",
    "INT2A+RETF": b"\xcd\x2a\xcb",
    "MZ-thunk?": b"\xff",  # placeholder
}
