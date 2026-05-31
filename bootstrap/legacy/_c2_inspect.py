#!/usr/bin/env python3
import re, json
from pathlib import Path

SRC = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src')
STATE = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\state\analyze')

def get_offset_map(path):
    lines = path.read_text(encoding='ascii', errors='replace').splitlines()
    offset = 0
    offset_map = {}
    for i, line in enumerate(lines, 1):
        m = re.search(r';\s*([0-9A-Fa-f]{2}(?:\s+[0-9A-Fa-f]{2})*)\s*$', line)
        if m:
            offset_map[offset] = (i, line.strip()[:100])
            offset += len(m.group(1).split())
    return offset_map

# Load classified data
with open(STATE / 'pass_c2_classified.json') as f:
    d = json.load(f)

# Inspect first 10 same-seg off-boundary
print('=== Same-segment off-boundary inspection ===')
for o in d['same_seg_data'][:10]:
    seg = o['segment']
    target = int(o['target'][2:], 16)
    path = SRC / seg
    offset_map = get_offset_map(path)
    
    print(f"\n{seg} L{o['line']} {o['opcode']} {o['target']} (offset 0x{target:04X})")
    if target in offset_map:
        print(f"  FOUND AT BOUNDARY: line {offset_map[target][0]}: {offset_map[target][1]}")
    else:
        # Find nearest boundaries
        before = max((off for off in offset_map if off < target), default=None)
        after = min((off for off in offset_map if off > target), default=None)
        if before is not None:
            print(f"  BEFORE (0x{before:04X}): line {offset_map[before][0]}: {offset_map[before][1]}")
        if after is not None:
            print(f"  AFTER  (0x{after:04X}): line {offset_map[after][0]}: {offset_map[after][1]}")
