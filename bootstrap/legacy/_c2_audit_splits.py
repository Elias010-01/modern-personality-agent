#!/usr/bin/env python3
"""Audit splits: compare each split region's byte count."""
import re
import sys
sys.path.insert(0, r'C:\Users\Elias\CascadeProjects\modern-personality-agent\bootstrap')
from build_from_source import parse_db_bytes

bak_path = r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src\EGALORES\seg1.asm.c2split.bak'
mod_path = r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src\EGALORES\seg1.asm'

bak_lines = open(bak_path).read().splitlines()
mod_lines = open(mod_path).read().splitlines()

def line_bytes(line):
    if ';' in line:
        code, comment = line.split(';', 1)
    else:
        code, comment = line, ''
    
    m = re.match(r'^\s*db\s+(.+?)\s*$', code, re.I)
    if m:
        arg = m.group(1).strip()
        count = 0
        for hm in re.finditer(r'0([0-9a-f]+)h', arg, re.I):
            count += 1
        return count
    
    if code.strip() and comment.strip():
        cm = re.match(r'^\s*((?:[0-9A-Fa-f]{2}\s+)*[0-9A-Fa-f]{2})\s*(?:\[FIXUP\]\s*)?$', comment.strip())
        if cm:
            return len(cm.group(1).split())
    return 0

# Find all label definitions in modified file that are NOT in backup
bak_labels = set()
for line in bak_lines:
    m = re.match(r'^\s*([A-Za-z_][A-Za-z0-9_]*):\s*', line)
    if m:
        bak_labels.add(m.group(1))

new_labels = []
for i, line in enumerate(mod_lines):
    m = re.match(r'^\s*([A-Za-z_][A-Za-z0-9_]*):\s*', line)
    if m and m.group(1) not in bak_labels and m.group(1).startswith('L_'):
        new_labels.append((i+1, m.group(1)))

print(f"New labels inserted: {len(new_labels)}")

# For each new label, find the region around it and compare byte counts
for line_no, label in new_labels[:20]:
    # In modified: find db lines around label
    mod_before = 0
    mod_after = 0
    
    # Check line before label (should be db)
    if line_no > 1:
        mod_before = line_bytes(mod_lines[line_no - 2])
    
    # Check line after label (should be db)
    if line_no < len(mod_lines):
        mod_after = line_bytes(mod_lines[line_no - 1])
    
    total_mod = mod_before + mod_after
    
    # In backup: find the instruction that was replaced
    # Search for a line in backup around the same area that has different bytes
    # Use the label offset to find the instruction
    offset = int(label[2:], 16)
    bak_total = 0
    bak_line_no = 0
    cum = 0
    for i, line in enumerate(bak_lines):
        b = line_bytes(line)
        if cum <= offset < cum + b:
            bak_total = b
            bak_line_no = i + 1
            break
        cum += b
    
    status = "OK" if total_mod == bak_total else f"MISMATCH ({total_mod} vs {bak_total})"
    print(f"  {label} at line {line_no}: {status} (backup line {bak_line_no})")
    if total_mod != bak_total:
        # Show context
        print(f"    MOD before: {mod_lines[max(0, line_no-3):line_no+2]}")
        print(f"    BAK:        {bak_lines[max(0, bak_line_no-2):bak_line_no+2]}")
