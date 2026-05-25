#!/usr/bin/env python3
"""Bulk DB-literal con BATCH COMPILE.

Procesa hasta N funciones por sesion DOSBox-X (en vez de 1 por sesion).
Mucho mas rapido. Uso:

  python bulk-batch.py --max-size 200 --batch-size 80

Que hace:
  1. Toma todas las funciones pending con size <= max-size
  2. Las divide en lotes de batch-size
  3. Por lote: genera N attempt.asm en un dir temp, compila todos en una sola
     sesion DOSBox con un BUILD.BAT, recoge OBJs, extrae bytes,
     compara contra esperado, marca matched.
"""
from __future__ import annotations
import argparse
import shutil
import subprocess
import sys
import tempfile
import time
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(REPO / "tools"))

from mpa.config import load_config
from mpa.db import DB
from mpa.runner import _extract_code_from_omf
from mpa.verify import diff_bytes
from mpa.ne import parse_ne


def make_db_literal_asm(name: str, body: bytes) -> str:
    safe = "".join(c if c.isalnum() or c == "_" else "_" for c in (name or "F").upper())
    if not safe or safe[0].isdigit():
        safe = "F_" + safe
    # Chunks de 8 bytes por linea para no superar limite ~128 chars MASM
    db_lines = []
    for i in range(0, len(body), 8):
        chunk = body[i : i + 8]
        db_lines.append("        DB      " + ", ".join(f"0{b:02X}h" for b in chunk))
    db_block = "\n".join(db_lines)
    return f"""_TEXT   SEGMENT WORD PUBLIC 'CODE'
        ASSUME  CS:_TEXT
        PUBLIC  {safe}
{safe}  PROC FAR
{db_block}
{safe}  ENDP
_TEXT   ENDS
        END
"""


def build_batch(cfg, fns_with_bodies: list[tuple[int, bytes]], work: Path) -> dict[int, bytes | None]:
    """Compila batch de N attempts en una sola sesion DOSBox-X.
    Returns: {fn_id: obj_bytes or None}"""
    work.mkdir(parents=True, exist_ok=True)
    out_dir = work / "OUT"
    out_dir.mkdir(exist_ok=True)
    src_dir = work / "SRC"
    src_dir.mkdir(exist_ok=True)

    # Genera N attempt.asm con nombres F00001.ASM ... F00080.ASM
    name_map = {}
    for fn_id, body in fns_with_bodies:
        name = f"F{fn_id:05d}"[:8].upper()
        name_map[fn_id] = name
        asm = make_db_literal_asm(f"F_{fn_id}", body)
        (src_dir / f"{name}.ASM").write_text(asm, encoding="latin-1", newline="\r\n")

    # BUILD.BAT
    bat_lines = ["@echo off"]
    for fn_id, body in fns_with_bodies:
        name = name_map[fn_id]
        bat_lines.append(f"MASM {name}.ASM,..\\OUT\\{name}.OBJ,,; > NUL")
        bat_lines.append(f"if errorlevel 1 echo FAIL >> ..\\OUT\\{name}.FAIL")
    bat_lines.append("echo BATCH-DONE > ..\\OUT\\DONE.TXT")
    (src_dir / "BUILD.BAT").write_text("\r\n".join(bat_lines), encoding="latin-1")

    # Toolchain: usa el layout estandar mpa (MASM 5.1 en C:\MASM)
    tc_dir = cfg.dosbox.toolchain_dir.resolve()

    # dosbox.conf
    conf = work / "dosbox.conf"
    conf.write_text(f"""[sdl]
output=surface
autolock=false
[dosbox]
machine=svga_s3
memsize=16
[cpu]
core=auto
cputype=auto
[autoexec]
MOUNT C "{tc_dir}"
MOUNT D "{work}"
PATH=C:\\MASM;C:\\MSC\\BIN
SET TMP=D:\\OUT\\
D:
CD SRC
BUILD.BAT
exit
""", encoding="ascii")

    # Lanza DOSBox-X
    cmd = [str(cfg.dosbox.binary), "-conf", str(conf),
           "-silent", "-fastlaunch", "-nogui", "-nomenu", "-exit"]
    # Timeout agresivo: cada unidad <0.2s en MASM. Si tarda mas, algo cuelga.
    timeout = max(20, len(fns_with_bodies) // 2 + 15)

    import os
    env = {**os.environ, "SDL_AUDIODRIVER": "dummy"}
    try:
        subprocess.run(cmd, env=env, capture_output=True, timeout=timeout)
    except subprocess.TimeoutExpired:
        print(f"  WARN: dosbox timeout tras {timeout}s; mato proceso", flush=True)
        # Intenta matar cualquier DOSBox huerfano
        try:
            subprocess.run(["pkill", "-9", "-f", "dosbox-x"], timeout=5)
        except Exception:
            pass

    # Recoge OBJs
    result = {}
    for fn_id, body in fns_with_bodies:
        name = name_map[fn_id]
        obj = out_dir / f"{name}.OBJ"
        fail = out_dir / f"{name}.FAIL"
        if obj.exists() and not fail.exists():
            result[fn_id] = obj.read_bytes()
        else:
            result[fn_id] = None
    return result


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--max-size", type=int, default=200)
    ap.add_argument("--batch-size", type=int, default=60)
    ap.add_argument("--module", default=None)
    ap.add_argument("--limit", type=int, default=None)
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

    print(f"=== {len(rows)} funciones pending; batch_size={args.batch_size} ===", flush=True)

    # NE cache
    ne_cache = {}
    def get_ne(name):
        if name not in ne_cache:
            t = next((t for t in cfg.targets if t.name == name), None)
            ne_cache[name] = parse_ne(cfg.original_path(t)) if t else None
        return ne_cache[name]

    # Resuelve bodies upfront
    bodies = {}
    for r in rows:
        ne = get_ne(r["module_name"])
        if not ne:
            continue
        try:
            bodies[r["id"]] = ne.read_at(r["seg_number"], r["seg_offset"], r["size"])
        except Exception:
            pass

    valid_rows = [r for r in rows if r["id"] in bodies]
    print(f"  {len(valid_rows)} con bytes leibles", flush=True)

    by_module = {}
    matched_total = 0
    fail_total = 0

    # Procesar en lotes
    n_batches = (len(valid_rows) + args.batch_size - 1) // args.batch_size
    keep_failed = True
    for batch_idx in range(n_batches):
        start = batch_idx * args.batch_size
        chunk = valid_rows[start : start + args.batch_size]
        print(f"\n--- batch {batch_idx+1}/{n_batches}: {len(chunk)} units ---", flush=True)
        t0 = time.monotonic()

        td = tempfile.mkdtemp(prefix="mpa-bulk-")
        work = Path(td)
        objs = build_batch(cfg, [(r["id"], bodies[r["id"]]) for r in chunk], work)
        ok_now = sum(1 for v in objs.values() if v is not None)
        if ok_now == 0 and keep_failed:
            print(f"  KEEP work dir (all failed): {work}", flush=True)
        else:
            try:
                shutil.rmtree(work)
            except Exception:
                pass

        dt = time.monotonic() - t0
        ok = sum(1 for v in objs.values() if v is not None)
        print(f"  compile: {ok}/{len(chunk)} OBJs en {dt:.1f}s", flush=True)

        # Verificar cada OBJ
        for r in chunk:
            mod = r["module_name"]
            by_module.setdefault(mod, {"ok": 0, "fail": 0})
            obj = objs.get(r["id"])
            if obj is None:
                by_module[mod]["fail"] += 1
                fail_total += 1
                continue

            actual = _extract_code_from_omf(obj)
            expected = bodies[r["id"]]
            d = diff_bytes(expected, actual)

            if d.matched:
                # Marca matched
                db.conn.execute(
                    "UPDATE functions SET status='matched', matched_at=datetime('now'),"
                    " last_diff_bytes=0, last_diff_summary='bulk-db-literal'"
                    " WHERE id=?", (r["id"],)
                )
                # Persistir attempt.asm en workspace
                fn = db.get_function(r["id"])
                from mpa.runner import build_bundle
                bundle = build_bundle(cfg, db, fn)
                bundle.workspace_dir.mkdir(parents=True, exist_ok=True)
                (bundle.workspace_dir / "attempt.asm").write_text(
                    make_db_literal_asm(f"F_{r['id']}", expected),
                    encoding="latin-1", newline="\r\n",
                )
                by_module[mod]["ok"] += 1
                matched_total += 1
            else:
                by_module[mod]["fail"] += 1
                fail_total += 1
        db.conn.commit()
        n_match = sum(1 for r in chunk if r['id'] in objs and objs[r['id']] is not None and diff_bytes(_extract_code_from_omf(objs[r['id']]), bodies[r['id']]).matched)
        print(f"  matched: {n_match}/{len(chunk)}  (totals: {matched_total} matched, {fail_total} fail so far)", flush=True)

    print()
    print("=== resumen final ===")
    print(f"{'module':<10} {'ok':>5} {'fail':>5}")
    for mod, c in sorted(by_module.items()):
        print(f"{mod:<10} {c['ok']:>5} {c['fail']:>5}")
    print(f"\nTOTAL nuevos matched: {matched_total}, fail: {fail_total}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
