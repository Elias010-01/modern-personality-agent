#!/usr/bin/env bash
# Saca de la DB las proximas 50 funciones candidatas (pending, size>0)
# ordenadas por modulo-priority + size ASC, y muestra:
#   - id, nombre, modulo, seg:off, size
#   - primeras 5 instrucciones del disasm bruto (bytes de NE)
# para clasificarlas por patron.
set -euo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent

./.venv/bin/python <<'PY'
import sqlite3
from pathlib import Path
from mpa.config import load_config

cfg = load_config(Path("."))
mod_priority = {m: i for i, m in enumerate(cfg.module_priority)}
def mp(m): return mod_priority.get(m, 999)

c = sqlite3.connect("state/mpa.db")
c.row_factory = sqlite3.Row

rows = list(c.execute("""
    SELECT id, name, module_name, seg_number, seg_offset, size, has_symbol
    FROM functions
    WHERE status='pending' AND size > 0 AND attempts < 5
"""))

# orden: module_priority, size ASC, id ASC
rows.sort(key=lambda r: (mp(r["module_name"]), r["size"], r["id"]))

# Mapa de modulo -> bytes del segmento 1 (donde estan casi todas las funcs)
# Cargamos los binarios originales y extraemos bytes por funcion.
from mpa.ne import parse_ne

mod_bytes = {}  # (module, seg) -> bytes
for t in cfg.targets:
    bp = cfg.original_path(t)
    if not bp.exists():
        continue
    ne = parse_ne(bp)
    for seg in ne.segments:
        try:
            mod_bytes[(t.name, seg.number)] = ne.read_segment_bytes(seg.number)
        except Exception:
            pass

print(f"{'id':>5} {'mod':<10} {'size':>5} {'name':<24} {'bytes (first 16)':<48}")
print("-" * 100)
for r in rows[:50]:
    key = (r["module_name"], r["seg_number"])
    b = mod_bytes.get(key, b"")
    snippet = b[r["seg_offset"]:r["seg_offset"] + min(16, r["size"])]
    hexs = " ".join(f"{x:02x}" for x in snippet)
    print(f"{r['id']:>5} {r['module_name']:<10} {r['size']:>5} {(r['name'] or '(none)')[:24]:<24} {hexs:<48}")
PY
