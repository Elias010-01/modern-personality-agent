#!/usr/bin/env python3
"""Find the first byte-level difference between backup and modified .asm files."""
import sys
sys.path.insert(0, r'C:\Users\Elias\CascadeProjects\modern-personality-agent\bootstrap')
from build_from_source import parse_db_bytes

bak_path = r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src\EGALORES\seg1.asm.c2split.bak'
mod_path = r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src\EGALORES\seg1.asm'

bak_bytes = parse_db_bytes(open(bak_path).read())
mod_bytes = parse_db_bytes(open(mod_path).read())

print(f"Backup: {len(bak_bytes)} bytes")
print(f"Modified: {len(mod_bytes)} bytes")
print(f"Diff: {len(mod_bytes) - len(bak_bytes)}")

# Find first byte diff
for i in range(min(len(bak_bytes), len(mod_bytes))):
    if bak_bytes[i] != mod_bytes[i]:
        print(f"\nFirst byte diff at offset {i}:")
        print(f"  BAK: 0x{bak_bytes[i]:02X}")
        print(f"  MOD: 0x{mod_bytes[i]:02X}")
        # Show context
        ctx_start = max(0, i - 8)
        ctx_end = min(len(bak_bytes), i + 8)
        print(f"  BAK context: {' '.join(f'{b:02X}' for b in bak_bytes[ctx_start:ctx_end])}")
        print(f"  MOD context: {' '.join(f'{b:02X}' for b in mod_bytes[ctx_start:ctx_end])}")
        break
else:
    if len(mod_bytes) > len(bak_bytes):
        print(f"\nModified has {len(mod_bytes) - len(bak_bytes)} extra bytes at end")
        start = len(bak_bytes)
        print(f"  Extra bytes: {' '.join(f'{b:02X}' for b in mod_bytes[start:start+16])}")
    elif len(bak_bytes) > len(mod_bytes):
        print(f"\nBackup has {len(bak_bytes) - len(mod_bytes)} extra bytes at end")
    else:
        print("\nFiles are byte-identical!")
