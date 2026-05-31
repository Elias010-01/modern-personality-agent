#!/usr/bin/env python3
"""Analyze WIN100.OVL structure to find code/data split points."""
from pathlib import Path

data = open(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\original\WIN100.OVL', 'rb').read()
print(f'Total size: {len(data)} bytes')

# The first bytes were ASCII path: C:\103\WIN100.OVL
# Find where the path ends (null-terminated then padding)
path_end = data.find(b'\x00\x00\x00')
if path_end > 0:
    path_end += 3
    print(f'Path ends at offset: {path_end}')
    path_str = data[:path_end-3].decode('ascii', errors='replace')
    print(f'Path: {path_str!r}')

# After path, look for table-like patterns
print('\nPotential 16-bit values after path:')
for i in range(path_end, min(path_end + 64, len(data)), 2):
    val = int.from_bytes(data[i:i+2], 'little')
    if 0 < val < 220336:
        print(f'  offset {i}: {val} ({val:#x})')

# First 64 bytes after path
print(f'\nFirst 64 bytes after path (offset {path_end}):')
for i in range(path_end, min(path_end + 64, len(data))):
    print(f'{data[i]:02x}', end=' ')
print()

# Search for likely code entry points across the file
# Common function prologues in x86 16-bit: push bp / mov bp, sp
# Opcodes: 55 8B EC  or  55 89 E5
print('\nSearching for function prologues (55 8B EC / 55 89 E5)...')
prologues = []
for i in range(len(data) - 3):
    if data[i:i+3] == b'\x55\x8b\xec' or data[i:i+3] == b'\x55\x89\xe5':
        prologues.append(i)

print(f'Found {len(prologues)} prologues')
for p in prologues[:20]:
    print(f'  offset {p:#06x}')
if len(prologues) > 20:
    print(f'  ... and {len(prologues)-20} more')
