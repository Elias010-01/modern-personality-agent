#!/usr/bin/env bash
set -euo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent

WORK=$(ls -dt /tmp/mpa-kernel-* | head -1)
OURS="$WORK/OUT/KERNEL.EXE"
ORIG="original/KERNEL.EXE"

echo "WORK=$WORK"
echo
echo "=== tamanos ==="
ls -la "$OURS" "$ORIG"
echo
echo "=== md5 ==="
md5sum "$OURS" "$ORIG"
echo
echo "=== primeros 64 bytes (MZ header) ==="
echo "--- ours ---"
xxd -l 64 "$OURS"
echo "--- orig ---"
xxd -l 64 "$ORIG"
echo
echo "=== KERNEL.MAP (segmentos del nuestro) ==="
cat "$WORK/OUT/KERNEL.MAP" 2>/dev/null | head -80

# Análisis fino: comparar los segmentos uno a uno
./.venv/bin/python <<PY
from pathlib import Path
from mpa.ne import parse_ne

ours = parse_ne(Path("$OURS"))
orig = parse_ne(Path("$ORIG"))

print(f"\n=== NE structure: ours={len(ours.segments)} segs, orig={len(orig.segments)} segs ===")
print(f"\n{'seg':<5} {'orig_size':>10} {'ours_size':>10} {'diff_bytes':>12} {'pct_match':>10}")
for so, oo in zip(ours.segments, orig.segments):
    bo = ours.read_segment_bytes(so.number) if so.length_in_file else b""
    bg = orig.read_segment_bytes(oo.number) if oo.length_in_file else b""
    minlen = min(len(bo), len(bg))
    diff = sum(1 for i in range(minlen) if bo[i] != bg[i]) + abs(len(bo) - len(bg))
    pct = 100.0 * (minlen - sum(1 for i in range(minlen) if bo[i] != bg[i])) / max(len(bg), 1)
    print(f"{so.number:<5} {len(bg):>10} {len(bo):>10} {diff:>12} {pct:>9.1f}%")
PY
