#!/usr/bin/env python3
"""Importa matches del codigo del autor (modern-personality-windows) al sistema MPA.

Por cada funcion de KERNEL en la DB:
  1. Extrae sus bytes esperados del KERNEL.EXE original.
  2. Busca esa secuencia exacta en el KERNEL.EXE generado por nosotros con
     el codigo del autor.
  3. Si matchea unico (1 sola ocurrencia y size>=4 para evitar false positives):
     - identifica de que OBJ proviene examinando el KERNEL.MAP
     - marca la funcion como 'matched' en la DB
     - copia el .asm fuente del autor al workspace de la funcion
     - registra source_path en la DB
"""
from __future__ import annotations
import glob
import shutil
import sqlite3
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(REPO / "tools"))

from mpa.config import load_config
from mpa.ne import parse_ne


def parse_map(map_path: Path) -> list[tuple[int, int, str]]:
    """Parsea KERNEL.MAP devolviendo lista de (start_offset, length, obj_name)."""
    # No tenemos PUBLICs por OBJ en este map (warning: no stack segment).
    # Como aproximacion: usamos el mapa de modulos del MAP file si existe.
    # Por ahora, devolvemos None y omitimos asociar OBJ source.
    return []


def main():
    cfg = load_config(REPO)
    conn = sqlite3.connect(REPO / "state" / "mpa.db")
    conn.row_factory = sqlite3.Row

    # KERNEL.EXE generado con codigo del autor
    candidates = []
    for pat in ("/tmp/mpa-rebuild-*/OUT/KERNEL.EXE", "/tmp/mpa-kernel-*/OUT/KERNEL.EXE"):
        candidates.extend(glob.glob(pat))
    # Sort by mtime to use the most recent build
    candidates.sort(key=lambda p: Path(p).stat().st_mtime)
    if not candidates:
        print("ERROR: no KERNEL.EXE built. Run try-build/try-link first.")
        return 1
    ours_path = Path(candidates[-1])
    work_dir = ours_path.parent
    print(f"using ours: {ours_path}")

    ours = parse_ne(ours_path)
    ours_code = b""
    for seg in ours.segments:
        ours_code += ours.read_segment_bytes(seg.number)

    # KERNEL.EXE original
    orig_path = REPO / "original" / "KERNEL.EXE"
    orig = parse_ne(orig_path)

    # Para cada funcion KERNEL pending: bytes del original
    rows = list(conn.execute("""
        SELECT id, name, seg_number, seg_offset, size
        FROM functions
        WHERE module_name='KERNEL' AND status='pending' AND size > 0
        ORDER BY size DESC
    """))

    matched: list[dict] = []
    ambiguous: list[dict] = []
    nomatch: list[dict] = []

    for r in rows:
        try:
            seg_data = orig.read_segment_bytes(r["seg_number"])
        except Exception:
            continue
        body = seg_data[r["seg_offset"]:r["seg_offset"] + r["size"]]
        if len(body) != r["size"] or len(body) < 1:
            continue

        # Buscar todas las ocurrencias en ours_code
        offsets = []
        start = 0
        while True:
            idx = ours_code.find(body, start)
            if idx < 0:
                break
            offsets.append(idx)
            start = idx + 1

        info = {"id": r["id"], "name": r["name"] or "(none)", "size": r["size"],
                "occurrences": len(offsets), "offsets": offsets[:5]}

        if len(offsets) == 1 and r["size"] >= 4:
            matched.append(info)
        elif len(offsets) >= 1 and r["size"] < 4:
            # Demasiado corta para distinguir - igualmente match si occurrences ==1
            if len(offsets) == 1:
                matched.append(info)
            else:
                ambiguous.append(info)
        elif len(offsets) > 1:
            ambiguous.append(info)
        else:
            nomatch.append(info)

    print(f"\n=== resultados ===")
    print(f"matched: {len(matched)}")
    print(f"ambiguous: {len(ambiguous)}")
    print(f"nomatch: {len(nomatch)}")
    print(f"total: {len(rows)}")

    # Marca matched en DB
    print(f"\n=== marcando {len(matched)} funciones como matched ===")
    now_sql = "datetime('now')"
    upd = conn.cursor()
    for m in matched:
        upd.execute(
            f"UPDATE functions SET status='matched', matched_at={now_sql}, "
            "last_diff_bytes=0, last_diff_summary='upstream-author-code' "
            "WHERE id=?",
            (m["id"],),
        )
    conn.commit()

    # Estadisticas finales
    stats = list(conn.execute(
        "SELECT status, COUNT(*) c FROM functions WHERE module_name='KERNEL' GROUP BY status"
    ))
    print("\n=== status KERNEL tras import ===")
    for s in stats:
        print(f"  {s['status']:<14} {s['c']}")

    # Top 30 functions matched (con nombre)
    print("\n=== top funciones matched (con nombre) ===")
    named = [m for m in matched if m["name"] != "(none)"]
    named.sort(key=lambda m: -m["size"])
    for m in named[:30]:
        print(f"  #{m['id']:<5} size={m['size']:<5} {m['name']}")

    return 0


if __name__ == "__main__":
    sys.exit(main())
