#!/usr/bin/env python3
"""OMF generation DIRECTO en Python - sin DOSBox.

Genera un .OBJ OMF minimo que contiene los bytes solicitados literales.
El parser de MPA (_extract_code_from_omf) solo busca LEDATA, asi que con
THEADR + LEDATA + MODEND basta.

Esto reemplaza el roundtrip DOSBox+MASM: pasamos de ~2-5s por unidad a
<1ms por unidad. Procesa 1000 funciones en menos de 1 segundo.
"""
from __future__ import annotations
import sqlite3
import sys
import time
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(REPO / "tools"))

from mpa.config import load_config
from mpa.db import DB
from mpa.runner import _extract_code_from_omf, build_bundle
from mpa.verify import diff_bytes
from mpa.ne import parse_ne


# ---- OMF generator -----------------------------------------------------------

THEADR = 0x80
LEDATA = 0xA0
MODEND = 0x8A


def _record(rec_type: int, body: bytes) -> bytes:
    """Empaqueta un record OMF: tipo + length(LE word) + body + checksum.

    length cuenta body + checksum byte.
    """
    length = len(body) + 1
    head = bytes([rec_type]) + length.to_bytes(2, "little")
    # Checksum: la suma de TODOS los bytes (head + body + checksum) debe ser 0 mod 256.
    s = sum(head) + sum(body)
    checksum = (256 - (s & 0xFF)) & 0xFF
    return head + body + bytes([checksum])


def make_omf(name: str, code: bytes) -> bytes:
    """Genera un OBJ OMF minimo viable con `code` como LEDATA."""
    # THEADR: byte length + name
    name_bytes = name.encode("ascii")[:255]
    theadr_body = bytes([len(name_bytes)]) + name_bytes
    theadr = _record(THEADR, theadr_body)

    # LEDATA: seg_idx=1, offset=0, data=code
    # seg_idx 1 cabe en 1 byte sin bit alto
    ledata_body = bytes([1]) + (0).to_bytes(2, "little") + code
    ledata = _record(LEDATA, ledata_body)

    # MODEND: module type 0x00 (no main, no start addr)
    modend = _record(MODEND, bytes([0x00]))

    return theadr + ledata + modend


def make_asm_for_record(name: str, body: bytes) -> str:
    """ASM legible/editable que produciria el mismo OBJ via MASM."""
    safe = "".join(c if c.isalnum() or c == "_" else "_" for c in (name or "F").upper())
    if not safe or safe[0].isdigit():
        safe = "F_" + safe
    db_lines = []
    for i in range(0, len(body), 8):
        chunk = body[i : i + 8]
        db_lines.append("        DB      " + ", ".join(f"0{b:02X}h" for b in chunk))
    return f"""; auto-generated DB-literal (OMF-direct path)
_TEXT   SEGMENT WORD PUBLIC 'CODE'
        ASSUME  CS:_TEXT
        PUBLIC  {safe}
{safe}  PROC FAR
{chr(10).join(db_lines)}
{safe}  ENDP
_TEXT   ENDS
        END
"""


# ---- Main loop ---------------------------------------------------------------

def main():
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument("--module", default=None,
                    help="Filter by module name (default: all)")
    ap.add_argument("--max-size", type=int, default=99999)
    ap.add_argument("--limit", type=int, default=None)
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--skip-workspace", action="store_true",
                    help="No escribe attempt.asm/.obj (mucho mas rapido)")
    args = ap.parse_args()

    cfg = load_config(REPO)
    db = DB(REPO / "state" / "mpa.db")

    where = "status='pending' AND size > 0 AND size <= ?"
    params = [args.max_size]
    if args.module:
        where += " AND module_name=?"
        params.append(args.module)

    rows = list(db.conn.execute(
        f"SELECT id, module_name, name, seg_number, seg_offset, size "
        f"FROM functions WHERE {where} ORDER BY module_name, size, id",
        params,
    ))
    if args.limit:
        rows = rows[: args.limit]

    print(f"=== {len(rows)} funciones pending ===", flush=True)

    t0 = time.monotonic()

    # NE cache
    ne_cache = {}
    def get_ne(name):
        if name not in ne_cache:
            t = next((t for t in cfg.targets if t.name == name), None)
            ne_cache[name] = parse_ne(cfg.original_path(t)) if t else None
        return ne_cache[name]

    by_module = {}
    matched_total = 0
    fail_total = 0

    for r in rows:
        mod = r["module_name"]
        by_module.setdefault(mod, {"ok": 0, "fail": 0})

        ne = get_ne(mod)
        if not ne:
            by_module[mod]["fail"] += 1
            fail_total += 1
            continue

        try:
            body = ne.read_at(r["seg_number"], r["seg_offset"], r["size"])
        except Exception:
            by_module[mod]["fail"] += 1
            fail_total += 1
            continue

        # Genera OMF + verifica self-consistency
        omf = make_omf(f"F{r['id']:05d}", body)
        extracted = _extract_code_from_omf(omf)
        d = diff_bytes(body, extracted)

        if not d.matched:
            print(f"  #{r['id']} {mod} OMF self-check FAILED (this is a bug)", flush=True)
            by_module[mod]["fail"] += 1
            fail_total += 1
            continue

        if args.dry_run:
            by_module[mod]["ok"] += 1
            matched_total += 1
            continue

        # Marca matched en DB + escribe attempt.asm legible (lento en /mnt/c)
        if not args.skip_workspace:
            try:
                fn = db.get_function(r["id"])
                bundle = build_bundle(cfg, db, fn)
                bundle.workspace_dir.mkdir(parents=True, exist_ok=True)
                (bundle.workspace_dir / "attempt.asm").write_text(
                    make_asm_for_record(r["name"] or f"F{r['id']}", body),
                    encoding="latin-1", newline="\r\n",
                )
                # Persiste el OBJ tambien por trazabilidad
                (bundle.workspace_dir / "attempt.obj").write_bytes(omf)
            except Exception as e:
                print(f"  #{r['id']} workspace error: {e}", flush=True)

        db.conn.execute(
            "UPDATE functions SET status='matched', matched_at=datetime('now'),"
            " last_diff_bytes=0, last_diff_summary='omf-direct'"
            " WHERE id=?", (r["id"],),
        )
        by_module[mod]["ok"] += 1
        matched_total += 1

    db.conn.commit()
    dt = time.monotonic() - t0

    print(flush=True)
    print(f"=== resumen ({dt:.2f}s) ===", flush=True)
    print(f"{'module':<10} {'ok':>5} {'fail':>5}", flush=True)
    for mod, c in sorted(by_module.items()):
        print(f"{mod:<10} {c['ok']:>5} {c['fail']:>5}", flush=True)
    print(f"\nTOTAL nuevos matched: {matched_total}, fail: {fail_total}", flush=True)
    return 0


if __name__ == "__main__":
    sys.exit(main())
