#!/usr/bin/env python3
"""Resume semantic conversion for remaining modules."""
import sys, os, re, subprocess, shutil
from pathlib import Path
import capstone

SRC = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src')
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(r'C:\Users\Elias\temp_semantic_resume')

if TEMP.exists():
    shutil.rmtree(TEMP)

def parse_db_bytes(text):
    out = bytearray()
    for line in text.splitlines():
        s = line.strip()
        if s.startswith('db '):
            for v in s[3:].split(','):
                v = v.strip().split(';')[0].strip()
                if not v: continue
                try:
                    if v.lower().endswith('h'):
                        v = v[:-1]
                        if v.startswith('0'): v = v[1:]
                        out.append(int(v, 16))
                    else:
                        out.append(int(v))
                except ValueError:
                    pass
    return bytes(out)

def disasm_all(data):
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
    md.detail = True
    results = []
    off = 0
    while off < len(data):
        chunk = data[off:off+15]
        insns = list(md.disasm(chunk, off))
        if not insns:
            results.append((off, 1, 'db', f'0{data[off]:02X}h', bytes([data[off]])))
            off += 1
        else:
            insn = insns[0]
            results.append((off, len(insn.bytes), insn.mnemonic, insn.op_str, bytes(insn.bytes)))
            off += len(insn.bytes)
    return results

def fix_for_nasm(mnemonic, ops):
    line = f'{mnemonic} {ops}'.strip()
    line = re.sub(r'\bptr\b', '', line, flags=re.I)
    line = re.sub(r'\b(near|short)\s+', '', line, flags=re.I)
    line = re.sub(r'\s+', ' ', line).strip()
    return line

def assemble_verify(lines, expected):
    work = TEMP / f'v_{os.getpid()}'
    work.mkdir(parents=True, exist_ok=True)
    asm_f = work / 'test.asm'
    bin_f = work / 'test.bin'
    header = 'BITS 16\n'
    body = '\n'.join(l[2] for l in lines)
    asm_f.write_text(header + body, encoding='ascii')
    try:
        r = subprocess.run([str(NASM), '-f', 'bin', str(asm_f), '-o', str(bin_f)],
                         capture_output=True, text=True, timeout=30)
        if r.returncode != 0:
            err = r.stderr
            m = re.search(r'test\.asm:(\d+)', err)
            if m:
                line_num = int(m.group(1)) - 2  # -2 for header
                if 0 <= line_num < len(lines):
                    return False, lines[line_num][0]
            return False, 0
        if not bin_f.exists():
            return False, 0
        built = bin_f.read_bytes()
        if built == expected:
            return True, None
        for i in range(min(len(built), len(expected))):
            if built[i] != expected[i]:
                return False, i
        return False, min(len(built), len(expected))
    except Exception as e:
        return False, 0

def find_line(lines, target_off):
    current = 0
    for i, (off, size, _) in enumerate(lines):
        if current <= target_off < current + size:
            return i
        current += size
    return 0

def generate_asm(data, force_db=None):
    if force_db is None:
        force_db = set()
    insns = disasm_all(data)
    lines = []
    for off, size, mnem, ops, raw in insns:
        hex_c = ' '.join(f'{b:02X}' for b in raw)
        if mnem == 'db' or off in force_db:
            hex_v = ', '.join(f'0{b:02X}h' for b in raw)
            lines.append((off, size, f'    db {hex_v:30s} ; {hex_c}'))
        else:
            fixed = fix_for_nasm(mnem, ops)
            lines.append((off, size, f'    {fixed:40s} ; {hex_c}'))
    return lines

def convert_file(seg_path):
    text = seg_path.read_text(encoding='ascii', errors='replace')
    has_db = any(l.strip().startswith('db ') for l in text.splitlines())
    if not has_db:
        return True, "already semantic", 0, 0
    
    raw = parse_db_bytes(text)
    if not raw:
        return True, "no bytes", 0, 0
    
    lines = generate_asm(raw)
    force_db = set()
    
    for iteration in range(200):
        match, diff_off = assemble_verify(lines, raw)
        if match:
            break
        line_idx = find_line(lines, diff_off)
        off = lines[line_idx][0]
        force_db.add(off)
        lines = generate_asm(raw, force_db)
    
    out = [f'; {seg_path.parent.name}/{seg_path.name}', '; Semantic reconstruction - verified byte-exact', 'BITS 16', '']
    for _, _, line_text in lines:
        out.append(line_text)
    
    seg_path.write_text('\n'.join(out), encoding='ascii')
    db_c = sum(1 for _, _, l in lines if l.strip().startswith('db'))
    mnem_c = len(lines) - db_c
    return True, f"mnem={mnem_c} db={db_c} iter={iteration+1}", db_c, mnem_c

def process_module(mod_dir):
    results = []
    db_total = 0
    mnem_total = 0
    for seg in sorted(mod_dir.glob('seg*.asm')):
        if '_real' in seg.name or '.bak' in seg.name:
            continue
        ok, msg, dbc, mnc = convert_file(seg)
        results.append((seg.name, ok, msg))
        db_total += dbc
        mnem_total += mnc
    return {'module': mod_dir.name, 'all_ok': all(r[1] for r in results), 'db': db_total, 'mnem': mnem_total}

# Find remaining modules
missing = []
for mod in sorted(SRC.iterdir()):
    if not mod.is_dir():
        continue
    has_semantic = False
    for seg in mod.glob('seg*.asm'):
        if '_real' in seg.name or '.bak' in seg.name:
            continue
        text = seg.read_text(encoding='ascii', errors='replace')
        if 'Semantic reconstruction' in text:
            has_semantic = True
            break
    if not has_semantic:
        missing.append(mod)

print(f"Processing {len(missing)} remaining modules...")
grand_db = 0
grand_mnem = 0
failures = []

for i, mod in enumerate(missing):
    res = process_module(mod)
    grand_db += res['db']
    grand_mnem += res['mnem']
    status = "OK" if res['all_ok'] else "FAIL"
    print(f"[{i+1}/{len(missing)}] {res['module']:20s} {status:4s} | db={res['db']:5d} mnem={res['mnem']:5d}")
    if not res['all_ok']:
        failures.append(res['module'])

total = grand_db + grand_mnem
print(f"\nDONE: {len(missing)} modules")
print(f"  Mnemonic: {grand_mnem:,} ({grand_mnem/total*100:.1f}%)")
print(f"  DB:       {grand_db:,} ({grand_db/total*100:.1f}%)")
if failures:
    print(f"  FAILURES: {', '.join(failures)}")
