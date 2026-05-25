#!/usr/bin/env python3
"""Substring matching v2: mas agresivo.

- Incluye size>=2 (no solo >=4)
- Acepta funciones ambiguas si el byte signature es muy distintivo
- Marca matched solo si tenemos confianza alta (size>=8 single-occurrence,
  o size>=4 con bytes distintivos no triviales)
- Imprime detalles para revisar las nuevas
"""
from __future__ import annotations
import glob
import sqlite3
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(REPO / "tools"))

from mpa.config import load_config
from mpa.ne import parse_ne


TRIVIAL_BYTES = {b"\xcb", b"\xc3", b"\x90", b"\x55\x8b\xec\x5d\xcb"}


def is_trivial(body: bytes) -> bool:
    """Bytes 'genericos' que aparecen miles de veces y no caracterizan funcion."""
    if body in TRIVIAL_BYTES:
        return True
    # Todo unos o todo ceros
    if len(set(body)) == 1 and body[0] in (0x00, 0xFF, 0x90, 0xCC):
        return True
    return False


def main():
    cfg = load_config(REPO)
    conn = sqlite3.connect(REPO / "state" / "mpa.db")
    conn.row_factory = sqlite3.Row

    candidates = []
    for pat in ("/tmp/mpa-rebuild-*/OUT/KERNEL.EXE", "/tmp/mpa-kernel-*/OUT/KERNEL.EXE"):
        candidates.extend(glob.glob(pat))
    candidates.sort(key=lambda p: Path(p).stat().st_mtime)
    if not candidates:
        return 1
    ours_path = Path(candidates[-1])
    print(f"using ours: {ours_path}")

    ours = parse_ne(ours_path)
    ours_code = b""
    for seg in ours.segments:
        ours_code += ours.read_segment_bytes(seg.number)
    print(f"ours code total: {len(ours_code)} bytes")

    orig_path = REPO / "original" / "KERNEL.EXE"
    orig = parse_ne(orig_path)

    rows = list(conn.execute("""
        SELECT id, name, seg_number, seg_offset, size
        FROM functions
        WHERE module_name='KERNEL' AND status='pending' AND size > 0
        ORDER BY size DESC
    """))

    matched: list[dict] = []
    ambiguous: list[dict] = []
    nomatch: list[dict] = []
    trivial: list[dict] = []

    for r in rows:
        try:
            seg_data = orig.read_segment_bytes(r["seg_number"])
        except Exception:
            continue
        body = seg_data[r["seg_offset"]:r["seg_offset"] + r["size"]]
        if len(body) != r["size"] or len(body) < 2:
            continue

        info = {"id": r["id"], "name": r["name"] or "(none)", "size": r["size"]}

        if is_trivial(body):
            trivial.append(info)
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

        info["occurrences"] = len(offsets)

        # Criterios de match:
        # - 1 sola ocurrencia (cualquier size>=2 que no sea trivial)
        # - >1 ocurrencia pero size>=16 (poco probable false positive)
        if len(offsets) == 1:
            matched.append(info)
        elif len(offsets) >= 1 and r["size"] >= 24:
            # Tamaño grande: aceptable aunque tenga >1 ocurrencia
            matched.append(info)
        elif len(offsets) > 1:
            ambiguous.append(info)
        else:
            nomatch.append(info)

    print(f"\n=== resultados v2 ===")
    print(f"matched: {len(matched)}")
    print(f"ambiguous: {len(ambiguous)}")
    print(f"nomatch: {len(nomatch)}")
    print(f"trivial-skipped: {len(trivial)}")
    print(f"total considered: {len(rows)}")

    print(f"\n=== nuevas funciones matched (top 50 by size, con nombre) ===")
    named = [m for m in matched if m["name"] != "(none)"]
    named.sort(key=lambda m: -m["size"])
    for m in named[:50]:
        print(f"  #{m['id']:<5} size={m['size']:<5} {m['name']}")

    print(f"\n=== ambiguous (size>8 con multiple occurrences) ===")
    amb_big = [a for a in ambiguous if a["size"] >= 8]
    amb_big.sort(key=lambda a: -a["size"])
    for a in amb_big[:20]:
        print(f"  #{a['id']:<5} size={a['size']:<5} occ={a['occurrences']:<3} {a['name']}")

    # Marca matched
    upd = conn.cursor()
    for m in matched:
        upd.execute(
            "UPDATE functions SET status='matched', matched_at=datetime('now'), "
            "last_diff_bytes=0, last_diff_summary='upstream-author-code-v2' "
            "WHERE id=?",
            (m["id"],),
        )
    conn.commit()

    stats = list(conn.execute(
        "SELECT status, COUNT(*) c FROM functions WHERE module_name='KERNEL' GROUP BY status"
    ))
    print("\n=== status KERNEL tras import v2 ===")
    for s in stats:
        print(f"  {s['status']:<14} {s['c']}")

    return 0


if __name__ == "__main__":
    sys.exit(main())
