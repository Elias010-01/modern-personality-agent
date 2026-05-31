#!/usr/bin/env python3
import re

path = r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src\EGALORES\seg1.asm.c2split.bak'
lines = open(path).read().splitlines()
offset = 0
for i, line in enumerate(lines, 1):
    m = re.search(r';\s*([0-9A-Fa-f]{2}(?:\s+[0-9A-Fa-f]{2})*)\s*$', line)
    if m:
        byts = [int(h, 16) for h in m.group(1).split()]
        if offset <= 0x0198 < offset + len(byts):
            print(f"Line {i} (offset {offset}): {line.strip()[:100]}")
            print(f"  Bytes: {' '.join(f'{b:02X}' for b in byts)}")
            if 0x0198 > offset:
                print(f"  Target 0x0198 is byte {0x0198 - offset} into this instruction")
            break
        offset += len(byts)
    if i > 6000:
        break
