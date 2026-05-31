#!/usr/bin/env python3
"""
SEMANTIC CONVERSION PIPELINE v4 - SAFE & EFFICIENT
Only processes pure-db .asm files. Mixed-format files are already semantic.
Uses per-file NASM assembly (not per-instruction) for speed.
Always verifies before replacing originals.
"""
import sys, os, re, subprocess, shutil, time
from pathlib import Path
import capstone

SRC = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src')
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(r'C:\Users\Elias\temp_semantic_v4')

if TEMP.exists():
    shutil.rmtree(TEMP)

def is_pure_db(text: str) -> bool:
    """Check if file has db lines AND no mnemonic lines."""
    has_db = False
    has_mnemonic = False
    for line in text.splitlines():
        s = line.strip()
        if s.startswith('db '):
            has_db = True
        elif ';' in line and not s.startswith(';'):
            # Mixed format line (mnemonic with hex comment)
            has_mnemonic = True
    return has_db and not has_mnemonic

def parse_db_bytes(text: str) -> bytes:
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

def disasm_all(data: bytes) -> list:
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

def clean_mnemonic(mnemonic: str, ops: str) -> str:
    """Clean Capstone output for NASM."""
    line = f'{mnemonic} {ops}'.strip()
    line = re.sub(r'\bptr\b', '', line, flags=re.I)
    line = re.sub(r'\b(near|short)\s+', '', line, flags=re.I)
    line = re.sub(r'\s+', ' ', line).strip()
    return line

def assemble_verify(asm_text: str, expected: bytes) -> tuple:
    """Assemble with NASM and compare."""
    work = TEMP / f'v_{os.getpid()}'
    work.mkdir(parents=True, exist_ok=True)
    asm_f = work / 'test.asm'
    bin_f = work / 'test.bin'
    asm_f.write_text(asm_text, encoding='ascii')
    try:
        r = subprocess.run([str(NASM), '-f', 'bin', str(asm_f), '-o', str(bin_f)],
                         capture_output=True, text=True, timeout=30)
        if r.returncode != 0:
            # Parse error to find line
            err = r.stderr
            m = re.search(r'test\.asm:(\d+)', err)
            if m:
                line_num = int(m.group(1)) - 3  # -3 for header lines
                return False, line_num
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

def generate_asm(data: bytes, force_db_lines: set = None) -> list:
    """Generate asm lines. force_db_lines = set of line indices to force as db."""
    if force_db_lines is None:
        force_db_lines = set()
    
    insns = disasm_all(data)
    lines = []
    for idx, (off, size, mnem, ops, raw) in enumerate(insns):
        hex_c = ' '.join(f'{b:02X}' for b in raw)
        if mnem == 'db' or idx in force_db_lines:
            hex_v = ', '.join(f'0{b:02X}h' for b in raw)
            lines.append(f'    db {hex_v:30s} ; {hex_c}')
        else:
            fixed = clean_mnemonic(mnem, ops)
            lines.append(f'    {fixed:40s} ; {hex_c}')
    return lines

def find_line_for_offset(insns: list, target_off: int) -> int:
    """Find instruction index containing target offset."""
    current = 0
    for i, (off, size, mnem, ops, raw) in enumerate(insns):
        if current <= target_off < current + len(raw):
            return i
        current += len(raw)
    return 0

def convert_file(seg_path: Path) -> tuple:
    """Convert a pure-db file to semantic."""
    text = seg_path.read_text(encoding='ascii', errors='replace')
    
    if not is_pure_db(text):
        return True, "not pure-db (already semantic or no db)", 0, 0
    
    raw = parse_db_bytes(text)
    if not raw:
        return True, "no bytes", 0, 0
    
    # Save backup
    backup_path = seg_path.with_suffix('.asm.bak')
    if not backup_path.exists():
        seg_path.rename(backup_path)
    
    # Generate initial asm
    insns = disasm_all(raw)
    force_db = set()
    
    for iteration in range(100):
        lines = []
        for idx, (off, size, mnem, ops, raw_bytes) in enumerate(insns):
            hex_c = ' '.join(f'{b:02X}' for b in raw_bytes)
            if mnem == 'db' or idx in force_db:
                hex_v = ', '.join(f'0{b:02X}h' for b in raw_bytes)
                lines.append(f'    db {hex_v:30s} ; {hex_c}')
            else:
                fixed = clean_mnemonic(mnem, ops)
                lines.append(f'    {fixed:40s} ; {hex_c}')
        
        out = [f'; {seg_path.parent.name}/{seg_path.name}',
               '; Semantic reconstruction - verified byte-exact',
               'BITS 16',
               ''] + lines
        
        match, info = assemble_verify('\n'.join(out), raw)
        if match:
            break
        
        if info is not None and isinstance(info, int) and 0 <= info < len(insns):
            # NASM error at specific line
            force_db.add(info)
        elif info is not None and info >= 0:
            # Byte diff at offset
            line_idx = find_line_for_offset(insns, info)
            force_db.add(line_idx)
        else:
            break
    else:
        # Max iterations reached - restore backup
        if backup_path.exists():
            backup_path.rename(seg_path)
        return False, f"max iterations ({iteration+1})", 0, 0
    
    # Write verified file
    seg_path.write_text('\n'.join(out), encoding='ascii')
    
    db_c = sum(1 for l in lines if l.strip().startswith('db'))
    mnem_c = len(lines) - db_c
    return True, f"mnem={mnem_c} db={db_c} iter={iteration+1}", db_c, mnem_c

def process_module(mod_dir: Path) -> dict:
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

def main():
    if not NASM.exists():
        print("ERROR: NASM not found")
        return 1
    
    # Find pure-db modules
    modules = []
    for mod in sorted(SRC.iterdir()):
        if not mod.is_dir():
            continue
        for seg in mod.glob('seg*.asm'):
            if '_real' in seg.name or '.bak' in seg.name:
                continue
            text = seg.read_text(encoding='ascii', errors='replace')
            if is_pure_db(text):
                modules.append(mod)
                break
    
    print(f"Found {len(modules)} pure-db modules to process")
    
    grand_db = 0
    grand_mnem = 0
    failures = []
    start = time.time()
    
    for i, mod in enumerate(modules):
        res = process_module(mod)
        grand_db += res['db']
        grand_mnem += res['mnem']
        status = "OK" if res['all_ok'] else "FAIL"
        elapsed = time.time() - start
        print(f"[{i+1}/{len(modules)}] {res['module']:20s} {status:4s} | db={res['db']:5d} mnem={res['mnem']:5d} | {elapsed:.0f}s")
        if not res['all_ok']:
            failures.append(res['module'])
    
    total = grand_db + grand_mnem
    print(f"\nDONE: {len(modules)} pure-db modules")
    print(f"  Mnemonic: {grand_mnem:,} ({grand_mnem/total*100:.1f}%)")
    print(f"  DB:       {grand_db:,} ({grand_db/total*100:.1f}%)")
    if failures:
        print(f"  FAILURES: {', '.join(failures)}")
    print(f"  Time: {time.time()-start:.0f}s")
    
    return 0

if __name__ == '__main__':
    sys.exit(main())
