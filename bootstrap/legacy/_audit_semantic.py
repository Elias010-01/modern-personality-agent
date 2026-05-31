#!/usr/bin/env python3
"""Audit semantic coverage of .asm files."""
from pathlib import Path

src = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src')

modules = {}
for f in src.rglob('seg*.asm'):
    if '.bak' in f.name or '_real' in f.name:
        continue
    mod = f.parent.name
    text = f.read_text(encoding='ascii', errors='replace')
    db_count = 0
    mnemonic_count = 0
    for line in text.splitlines():
        s = line.strip()
        if s.startswith('db '):
            db_count += 1
        elif ';' in line and not s.startswith(';'):
            mnemonic_count += 1
    total = db_count + mnemonic_count
    if total > 0:
        db_pct = db_count / total * 100
        modules[mod] = [f.name, db_pct, db_count, mnemonic_count]

sorted_mods = sorted(modules.items(), key=lambda x: x[1][1], reverse=True)

print('Top 20 modules by pure-db percentage:')
print('  %-20s %-12s %6s %6s %8s' % ('Module', 'File', 'db%', 'db', 'mnemonic'))
for mod, data in sorted_mods[:20]:
    print('  %-20s %-12s %5.1f%% %6d %8d' % (mod, data[0], data[1], data[2], data[3]))

print('\nBottom 10 (most semantic):')
for mod, data in sorted_mods[-10:]:
    print('  %-20s %-12s %5.1f%% %6d %8d' % (mod, data[0], data[1], data[2], data[3]))

total_db = sum(d[2] for _, d in modules.items())
total_mnemonic = sum(d[3] for _, d in modules.items())
total = total_db + total_mnemonic
print('\n' + '='*50)
print('TOTAL modules with seg*.asm: %d' % len(modules))
print('Total lines: %d' % total)
print('  db lines:      %d (%.1f%%)' % (total_db, total_db/total*100))
print('  mnemonic lines: %d (%.1f%%)' % (total_mnemonic, total_mnemonic/total*100))
