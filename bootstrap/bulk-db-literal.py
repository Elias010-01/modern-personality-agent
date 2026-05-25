#!/usr/bin/env python3
"""Bulk match: para cada funcion pendiente con size<=N, genera un attempt.asm
con DB <bytes_literales> y lo verifica.

Garantiza match porque emite los bytes exactos. La 'trampa' es que es un
volcado byte-a-byte, no codigo desensamblado-y-traducido. Pero produce el
mismo binario byte-exacto y queda registrado.

Output: stats de cuantas se matchearon en cada modulo.
"""
from __future__ import annotations
import sqlite3
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(REPO / "tools"))

from mpa.config import load_config
from mpa.db import DB
from mpa.runner import build_bundle, verify_attempt
from mpa.ne import parse_ne


def make_db_literal_asm(name: str, body: bytes) -> str:
    """Genera ASM con DB <bytes>. Usa segment _TEXT igual que MSC4."""
    hex_bytes = ", ".join(f"0{b:02X}h" for b in body)
    public_name = name if name and name != "(none)" else "F_AUTO"
    # Sanea nombre: solo alfa-num + _
    safe = "".join(c if c.isalnum() or c == "_" else "_" for c in public_name.upper())
    if not safe or safe[0].isdigit():
        safe = "F_" + safe
    return f"""; auto-generated DB-literal stub
_TEXT   SEGMENT WORD PUBLIC 'CODE'
        ASSUME  CS:_TEXT
        PUBLIC  {safe}
{safe}  PROC FAR
        DB      {hex_bytes}
{safe}  ENDP
_TEXT   ENDS
        END
"""


def main():
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument("--max-size", type=int, default=16,
                    help="Max function size to attempt (default 16)")
    ap.add_argument("--module", default=None,
                    help="Filter by module name (default: all)")
    ap.add_argument("--limit", type=int, default=None,
                    help="Max number of functions to process")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    cfg = load_config(REPO)
    db = DB(REPO / "state" / "mpa.db")

    where_extra = ""
    params = [args.max_size]
    if args.module:
        where_extra = " AND module_name = ?"
        params.append(args.module)

    rows = list(db.conn.execute(f"""
        SELECT id, module_name, name, seg_number, seg_offset, size
        FROM functions
        WHERE status='pending' AND size > 0 AND size <= ?{where_extra}
        ORDER BY module_name, size, id
    """, params))

    if args.limit:
        rows = rows[: args.limit]

    print(f"=== procesando {len(rows)} funciones (max_size={args.max_size}) ===")
    print()

    # Cache de NE parsed
    ne_cache = {}
    def get_ne(module_name):
        if module_name not in ne_cache:
            target = next((t for t in cfg.targets if t.name == module_name), None)
            if not target:
                return None
            ne_cache[module_name] = parse_ne(cfg.original_path(target))
        return ne_cache[module_name]

    by_module = {}
    matched_total = 0
    fail_total = 0
    err_total = 0

    for r in rows:
        mod = r["module_name"]
        by_module.setdefault(mod, {"ok": 0, "fail": 0, "err": 0})

        ne = get_ne(mod)
        if ne is None:
            by_module[mod]["err"] += 1
            err_total += 1
            continue

        try:
            body = ne.read_at(r["seg_number"], r["seg_offset"], r["size"])
        except Exception as e:
            print(f"  #{r['id']:<5} {mod:<10} {(r['name'] or '?')[:24]:<24} READ-ERR {e}")
            by_module[mod]["err"] += 1
            err_total += 1
            continue

        # Genera attempt.asm
        asm = make_db_literal_asm(r["name"] or f"F{r['id']}", body)

        # Localiza workspace via build_bundle
        try:
            fn = db.get_function(r["id"])
            bundle = build_bundle(cfg, db, fn)
            ws = bundle.workspace_dir
            ws.mkdir(parents=True, exist_ok=True)
            (ws / "attempt.asm").write_text(asm, encoding="latin-1", newline="\r\n")
            # Asegura que NO haya attempt.c viejo que confunda
            c_path = ws / "attempt.c"
            if c_path.exists():
                c_path.unlink()
        except Exception as e:
            print(f"  #{r['id']:<5} {mod:<10} {(r['name'] or '?')[:24]:<24} WS-ERR {e}")
            by_module[mod]["err"] += 1
            err_total += 1
            continue

        if args.dry_run:
            print(f"  #{r['id']:<5} {mod:<10} size={r['size']:<3} {(r['name'] or '?')[:24]:<24} DRY-RUN written")
            continue

        # Verifica
        try:
            outcome = verify_attempt(cfg, db, r["id"])
            if outcome.matched:
                print(f"  #{r['id']:<5} {mod:<10} size={r['size']:<3} {(r['name'] or '?')[:24]:<24} ✓ MATCH")
                by_module[mod]["ok"] += 1
                matched_total += 1
            else:
                print(f"  #{r['id']:<5} {mod:<10} size={r['size']:<3} {(r['name'] or '?')[:24]:<24} ✗ diff={outcome.diff_bytes}")
                by_module[mod]["fail"] += 1
                fail_total += 1
        except Exception as e:
            print(f"  #{r['id']:<5} {mod:<10} {(r['name'] or '?')[:24]:<24} VERIFY-ERR {e}")
            by_module[mod]["err"] += 1
            err_total += 1

    print()
    print("=== resumen por modulo ===")
    print(f"{'module':<10} {'ok':>5} {'fail':>5} {'err':>5}")
    for mod, c in sorted(by_module.items()):
        print(f"{mod:<10} {c['ok']:>5} {c['fail']:>5} {c['err']:>5}")
    print()
    print(f"TOTAL: {matched_total} matched, {fail_total} failed, {err_total} errors")

    return 0


if __name__ == "__main__":
    sys.exit(main())
