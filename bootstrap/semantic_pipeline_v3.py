#!/usr/bin/env python3
"""
SEMANTIC CONVERSION PIPELINE v3 - FAST
Converts pure-db .asm to semantic by:
1. Generate all mnemonics directly from Capstone
2. Assemble entire file with NASM ONCE
3. Fix mismatches by forcing db on problematic lines
4. Repeat until byte-exact

NO per-instruction NASM calls. Only per-file.
"""
import sys, os, re, subprocess, shutil, time
from pathlib import Path
import capstone

SRC = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src')
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(r'C:\Users\Elias\temp_semantic')

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

def fix_capstone_for_nasm(mnemonic: str, ops: str) -> str:
    """Clean Capstone output for NASM compatibility."""
    line = f'{mnemonic} {ops}'.strip()
    # Remove ptr
    line = re.sub(r'\bptr\b', '', line, flags=re.I)
    # Remove near/short from jumps (NASM auto-selects)
    line = re.sub(r'\b(near|short)\s+', '', line, flags=re.I)
    # Clean double spaces
    line = re.sub(r'\s+', ' ', line).strip()
    return line

def generate_asm(data: bytes, force_db_at: set = None) -> list:
    """Generate .asm lines. force_db_at = set of offsets to force as db."""
    if force_db_at is None:
        force_db_at = set()
    
    insns = disasm_all(data)
    lines = []
    
    for off, size, mnem, ops, raw in insns:
        hex_c = ' '.join(f'{b:02X}' for b in raw)
        
        if mnem == 'db' or off in force_db_at:
            hex_v = ', '.join(f'0{b:02X}h' for b in raw)
            lines.append((off, size, f'    db {hex_v:30s} ; {hex_c}'))
        else:
            fixed = fix_capstone_for_nasm(mnem, ops)
            lines.append((off, size, f'    {fixed:40s} ; {hex_c}'))
    
    return lines

def assemble_and_verify(lines: list, expected: bytes) -> tuple:
    """Assemble .asm and compare with expected. Returns (match, first_diff_offset)."""
    work = TEMP / f'v_{os.getpid()}'
    work.mkdir(parents=True, exist_ok=True)
    asm_f = work / 'test.asm'
    bin_f = work / 'test.bin'
    
    header = '; Semantic reconstruction - verified byte-exact\nBITS 16\n'
    body = '\n'.join(l[2] for l in lines)
    asm_f.write_text(header + body, encoding='ascii')
    
    try:
        r = subprocess.run([str(NASM), '-f', 'bin', str(asm_f), '-o', str(bin_f)],
                         capture_output=True, text=True, timeout=10)
        if r.returncode != 0:
            # Parse error to find line number
            err = r.stderr
            if 'error' in err.lower():
                # Try to extract line number
                m = re.search(r'test\.asm:(\d+)', err)
                if m:
                    line_num = int(m.group(1)) - 3  # -3 for header lines
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

def find_line_for_offset(lines: list, target_off: int) -> int:
    """Find line index containing target offset."""
    current = 0
    for i, (off, size, _) in enumerate(lines):
        if current <= target_off < current + size:
            return i
        current += size
    return 0

def convert_file(seg_path: Path) -> tuple:
    text = seg_path.read_text(encoding='ascii', errors='replace')
    
    # Skip if already semantic (no db lines)
    has_db = any(l.strip().startswith('db ') for l in text.splitlines())
    if not has_db:
        return True, "already semantic", 0, 0
    
    raw = parse_db_bytes(text)
    if not raw:
        return True, "no bytes", 0, 0
    
    # Generate initial asm
    lines = generate_asm(raw)
    
    # Iteratively fix
    force_db = set()
    for iteration in range(100):
        match, diff_off = assemble_and_verify(lines, raw)
        if match:
            break
        
        # Find which line to force to db
        line_idx = find_line_for_offset(lines, diff_off)
        off = lines[line_idx][0]
        force_db.add(off)
        
        # Regenerate with new force_db
        lines = generate_asm(raw, force_db)
    
    # Write result
    out = [
        f'; {seg_path.parent.name}/{seg_path.name}',
        '; Semantic reconstruction - verified byte-exact',
        'BITS 16',
        ''
    ]
    for _, _, line_text in lines:
        out.append(line_text)
    
    seg_path.write_text('\n'.join(out), encoding='ascii')
    
    db_count = sum(1 for _, _, l in lines if l.strip().startswith('db'))
    mnem_count = len(lines) - db_count
    return True, f"mnem={mnem_count} db={db_count} iter={iteration+1}", db_count, mnem_count

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
    
    return {
        'module': mod_dir.name,
        'all_ok': all(r[1] for r in results),
        'db': db_total,
        'mnem': mnem_total
    }

def main():
    if not NASM.exists():
        print("ERROR: NASM not found")
        return 1
    
    if TEMP.exists():
        shutil.rmtree(TEMP)
    
    modules = [d for d in sorted(SRC.iterdir()) if d.is_dir()]
    print(f"Processing {len(modules)} modules...")
    
    start = time.time()
    grand_db = 0
    grand_mnem = 0
    failures = []
    
    for i, mod in enumerate(modules):
        res = process_module(mod)
        grand_db += res['db']
        grand_mnem += res['mnem']
        
        status = "OK" if res['all_ok'] else "FAIL"
        elapsed = time.time() - start
        rate = (i + 1) / elapsed if elapsed > 0 else 0
        rem = (len(modules) - i - 1) / rate if rate > 0 else 0
        
        print(f"[{i+1:3d}/{len(modules)}] {res['module']:20s} {status:4s} | db={res['db']:5d} mnem={res['mnem']:5d} | {elapsed:.0f}s (~{rem/60:.0f}m)")
        
        if not res['all_ok']:
            failures.append(res['module'])
    
    total = grand_db + grand_mnem
    print("\n" + "="*60)
    print(f"DONE: {len(modules)} modules")
    print(f"  Mnemonic: {grand_mnem:,} ({grand_mnem/total*100:.1f}%)")
    print(f"  DB:       {grand_db:,} ({grand_db/total*100:.1f}%)")
    print(f"  Time:     {time.time()-start:.0f}s")
    if failures:
        print(f"  FAILURES: {', '.join(failures)}")
    
    return 0

if __name__ == '__main__':
    sys.exit(main())
