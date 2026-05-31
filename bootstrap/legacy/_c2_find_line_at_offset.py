#!/usr/bin/env python3
"""Find which line produces bytes around a specific offset."""
import re

_RE_HEX = re.compile(r";\s*([0-9A-Fa-f]{2}(?:\s+[0-9A-Fa-f]{2})*)\s*$")

def trace_bytes(path, target_offset, window=16):
    text = open(path).read()
    offset = 0
    for i, line in enumerate(text.splitlines(), 1):
        m = _RE_HEX.search(line)
        if m:
            byts = [int(h, 16) for h in m.group(1).split()]
            if offset <= target_offset < offset + len(byts):
                print(f"Line {i} (offset {offset}): {line.strip()[:100]}")
                print(f"  Bytes: {' '.join(f'{b:02X}' for b in byts)}")
                if target_offset > offset:
                    print(f"  Target 0x{target_offset:04X} is byte {target_offset - offset} into this instruction")
                return
            offset += len(byts)

print("=== BAK file around offset 401 ===")
trace_bytes(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src\EGALORES\seg1.asm.c2split.bak', 401)

print("\n=== MOD file around offset 401 ===")
trace_bytes(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src\EGALORES\seg1.asm', 401)
