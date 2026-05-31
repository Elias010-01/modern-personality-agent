#!/usr/bin/env python3
"""Audit all db directives in EGALORES modified file vs backup."""
import re
import sys
sys.path.insert(0, r'C:\Users\Elias\CascadeProjects\modern-personality-agent\bootstrap')
from build_from_source import parse_db_bytes

bak_path = r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src\EGALORES\seg1.asm.c2split.bak'
mod_path = r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src\EGALORES\seg1.asm'

bak = open(bak_path).read().splitlines()
mod = open(mod_path).read().splitlines()

# Find all lines that are different
diffs = []
for i in range(min(len(bak), len(mod))):
    if bak[i] != mod[i]:
        diffs.append((i+1, bak[i], mod[i]))

print(f"Total line differences: {len(diffs)}")
print("\nFirst 30 differences:")
for line_no, b_line, m_line in diffs[:30]:
    print(f"\nLine {line_no}:")
    print(f"  BAK: {b_line[:100]}")
    print(f"  MOD: {m_line[:100]}")

# Count db directives added
mod_db_count = sum(1 for line in mod if re.match(r'^\s*db\s+', line, re.I))
bak_db_count = sum(1 for line in bak if re.match(r'^\s*db\s+', line, re.I))
print(f"\nBackup db directives: {bak_db_count}")
print(f"Modified db directives: {mod_db_count}")
