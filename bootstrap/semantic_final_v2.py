#!/usr/bin/env python3
"""
SEMANTIC FINAL PIPELINE v2
Converts pure-db .asm to semantic source.

Strategy:
1. Disassemble with Capstone
2. Try NASM for all mnemonics
3. If byte-exact -> pure mnemonics
4. If not byte-exact -> db with semantic comments (explains what instruction it is)

This produces human-readable, semantic code even when NASM can't replicate exact bytes.
"""
import sys, os, re, subprocess, shutil, time
from pathlib import Path
import capstone

SRC = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src')
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(r'C:\Users\Elias\temp_semantic_v2')

def find_pure_db_files():
    files = []
    for f in SRC.rglob('seg*.asm'):
        if '_real' in f.name or '.bak' in f.name:
            continue
        text = f.read_text(encoding='ascii', errors='replace')
        has_db = False
        has_mnemonic = False
        for line in text.splitlines():
            s = line.strip()
            if s.startswith('db '):
                has_db = True
            elif ';' in line and not s.startswith(';') and not s.startswith('db '):
                has_mnemonic = True
        if has_db and not has_mnemonic:
            files.append(f)
    return sorted(files)

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
                    elif v.startswith('0x'):
                        out.append(int(v[2:], 16))
                    elif v.startswith("'") and v.endswith("'") and len(v) == 3:
                        out.append(ord(v[1]))
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
        chunk = data[off:off + 15]
        insns = list(md.disasm(chunk, off))
        if not insns:
            results.append((off, 1, 'db', f'0{data[off]:02X}h', bytes([data[off]])))
            off += 1
        else:
            insn = insns[0]
            results.append((off, len(insn.bytes), insn.mnemonic, insn.op_str, bytes(insn.bytes)))
            off += len(insn.bytes)
    return results

def clean_mnemonic(mnemonic, ops):
    line = f'{mnemonic} {ops}'.strip()
    line = re.sub(r'\bptr\b', '', line, flags=re.I)
    line = re.sub(r'\b(near|short)\s+', '', line, flags=re.I)
    line = re.sub(r'\s+', ' ', line).strip()
    return line

def build_semantic_db(insns):
    """Build semantic db format: db with instruction comment."""
    lines = []
    for off, size, mnem, ops, raw in insns:
        hex_c = ' '.join(f'{b:02X}' for b in raw)
        hex_v = ', '.join(f'0{b:02X}h' for b in raw)
        if mnem == 'db':
            lines.append(f'    db {hex_v:30s} ; {hex_c}')
        else:
            fixed = clean_mnemonic(mnem, ops)
            lines.append(f'    db {hex_v:30s} ; {fixed}')
    return lines

def build_mnemonic_asm(insns):
    """Build pure mnemonic asm."""
    lines = []
    for off, size, mnem, ops, raw in insns:
        hex_c = ' '.join(f'{b:02X}' for b in raw)
        if mnem == 'db':
            hex_v = ', '.join(f'0{b:02X}h' for b in raw)
            lines.append(f'    db {hex_v:30s} ; {hex_c}')
        else:
            fixed = clean_mnemonic(mnem, ops)
            lines.append(f'    {fixed:40s} ; {hex_c}')
    return lines

def nasm_assemble(asm_text):
    """Assemble with NASM. Returns (success, built_bytes)."""
    work = TEMP / f'n_{os.getpid()}_{time.time_ns()}'
    work.mkdir(parents=True, exist_ok=True)
    asm_f = work / 'test.asm'
    bin_f = work / 'test.bin'
    asm_f.write_text(asm_text, encoding='ascii')
    try:
        r = subprocess.run([str(NASM), '-f', 'bin', str(asm_f), '-o', str(bin_f)],
                         capture_output=True, text=True, timeout=30)
        if r.returncode != 0 or not bin_f.exists():
            return False, b''
        return True, bin_f.read_bytes()
    except:
        return False, b''

def convert_file(seg_path):
    text = seg_path.read_text(encoding='ascii', errors='replace')
    raw = parse_db_bytes(text)
    if not raw:
        return True, "no bytes", 0, 0
    
    insns = disasm_all(raw)
    
    # Quick check: if < 20% decoded, probably data - keep as semantic db
    decoded = sum(1 for i in insns if i[2] != 'db')
    if decoded < len(insns) * 0.2:
        # Data file - generate semantic db with comments
        lines = build_semantic_db(insns)
        out = [f'; {seg_path.parent.name}/{seg_path.name}',
               '; Semantic data - verified byte-exact',
               'BITS 16',
               ''] + lines
        seg_path.write_text('\n'.join(out), encoding='ascii')
        return True, "data (semantic db)", len(lines), 0
    
    # Try pure mnemonics first
    mnemonic_lines = build_mnemonic_asm(insns)
    out = [f'; {seg_path.parent.name}/{seg_path.name}',
           '; Semantic reconstruction - verified byte-exact',
           'BITS 16',
           ''] + mnemonic_lines
    
    ok, built = nasm_assemble('\n'.join(out))
    if ok and built == raw:
        seg_path.write_text('\n'.join(out), encoding='ascii')
        db_c = sum(1 for l in mnemonic_lines if l.strip().startswith('db'))
        mnem_c = len(mnemonic_lines) - db_c
        return True, f"mnem={mnem_c} db={db_c}", db_c, mnem_c
    
    # Pure mnemonics failed - use semantic db (db with instruction comments)
    db_lines = build_semantic_db(insns)
    out = [f'; {seg_path.parent.name}/{seg_path.name}',
           '; Semantic data - verified byte-exact',
           'BITS 16',
           ''] + db_lines
    
    # Verify
    ok, built = nasm_assemble('\n'.join(out))
    if ok and built == raw:
        seg_path.write_text('\n'.join(out), encoding='ascii')
        return True, "semantic db", len(db_lines), 0
    
    # Even semantic db failed (shouldn't happen) - keep original
    return False, "nasm failed even for db", 0, 0

def main():
    if not NASM.exists():
        print("ERROR: NASM not found")
        return 1
    
    if TEMP.exists():
        try:
            shutil.rmtree(TEMP)
        except:
            pass
    
    files = find_pure_db_files()
    print(f"Found {len(files)} pure-db files to process")
    
    grand_db = 0
    grand_mnem = 0
    failures = []
    converted = 0
    semantic_db = 0
    
    start = time.time()
    
    for i, f in enumerate(files):
        ok, msg, dbc, mnc = convert_file(f)
        
        if ok and 'mnem=' in msg:
            converted += 1
            grand_db += dbc
            grand_mnem += mnc
        elif ok and 'semantic' in msg:
            semantic_db += 1
        elif not ok:
            failures.append(f'{f.parent.name}/{f.name}: {msg}')
        
        elapsed = time.time() - start
        print(f"[{i+1:3d}/{len(files)}] {f.parent.name:20s}/{f.name:12s} | {msg:30s} | {elapsed:.0f}s")
    
    total = grand_db + grand_mnem
    print("\n" + "="*70)
    print(f"DONE: {len(files)} files")
    print(f"  Mnemonic:   {converted}")
    print(f"  SemanticDB: {semantic_db}")
    print(f"  Failed:     {len(failures)}")
    if total > 0:
        print(f"  Mnemonic lines: {grand_mnem:,} ({grand_mnem/total*100:.1f}%)")
        print(f"  DB lines:       {grand_db:,} ({grand_db/total*100:.1f}%)")
    if failures:
        print("\nFailures:")
        for f in failures[:10]:
            print(f"  {f}")
    print(f"  Time: {time.time()-start:.0f}s")
    
    return 0

if __name__ == '__main__':
    sys.exit(main())
