#!/usr/bin/env python3
"""Analyze WIN100.OVL structure - find code regions."""
data = open(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\original\WIN100.OVL', 'rb').read()

# Find all function prologues
prologues = []
for i in range(len(data) - 3):
    if data[i:i+3] == b'\x55\x8b\xec' or data[i:i+3] == b'\x55\x89\xe5':
        prologues.append(i)

print(f'Total prologues: {len(prologues)}')

# Find code regions by clustering prologues
# A code region starts before the first prologue and ends after the last prologue in a cluster
if prologues:
    regions = []
    start = prologues[0]
    end = prologues[0]
    for p in prologues[1:]:
        if p - end < 4096:  # within 4KB of previous
            end = p
        else:
            regions.append((start, end))
            start = p
            end = p
    regions.append((start, end))

    print(f'\nCode regions (by prologue clustering, gap < 4KB):')
    total_code = 0
    for i, (s, e) in enumerate(regions):
        # Estimate region: from a bit before first prologue to after last
        region_start = max(0, s - 256)
        region_end = min(len(data), e + 1024)
        size = region_end - region_start
        total_code += size
        print(f'  Region {i+1}: {region_start:#06x} - {region_end:#06x} ({size} bytes, {size/1024:.1f} KB)')

    print(f'\nTotal estimated code: {total_code} bytes ({total_code/1024:.1f} KB)')
    print(f'Remaining data: {len(data) - total_code} bytes ({(len(data)-total_code)/1024:.1f} KB)')

    # Check if any single region exceeds 64KB
    for i, (s, e) in enumerate(regions):
        region_start = max(0, s - 256)
        region_end = min(len(data), e + 1024)
        size = region_end - region_start
        if size > 65536:
            print(f'\n*** WARNING: Region {i+1} exceeds 64KB! ***')

# Alternative: look for large data blocks (runs of zeros or repeated bytes)
print('\n\nLarge data blocks (runs of same byte > 1KB):')
for i in range(len(data)):
    if i > 0 and data[i] == data[i-1]:
        continue
    # Check for run
    j = i + 1
    while j < len(data) and data[j] == data[i]:
        j += 1
    run_len = j - i
    if run_len > 1024:
        print(f'  offset {i:#06x}: {run_len} bytes of {data[i]:02x}')
