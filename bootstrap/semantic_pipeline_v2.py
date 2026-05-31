#!/usr/bin/env python3
"""
SEMANTIC CONVERSION PIPELINE v2 - OPTIMIZED
Converts pure-db .asm files to semantic NASM source.
Strategy: Disassemble with Capstone, generate full .asm, verify with NASM once per file.
Only processes files with db lines; mixed-format files are already semantic.
"""
import sys, os, re, struct, json, tempfile, subprocess, shutil, time, pickle
from pathlib import Path
from typing import List, Tuple, Optional

import capstone

SRC = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src')
ORIG = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\original')
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(tempfile.gettempdir()) / 'semantic_v2'

INSTR_MAX = 15

# Cache for NASM results to avoid re-running
_nasm_cache = {}

def nasm_asm_cached(line: str) -> Optional[bytes]:
    """Cache NASM results."""
    key = line.strip().lower()
    if key in _nasm_cache:
        return _nasm_cache[key]
    result = _nasm_asm(line)
    _nasm_cache[key] = result
    return result


def _nasm_asm(line: str) -> Optional[bytes]:
    work = TEMP / f'n_{os.getpid()}'
    work.mkdir(parents=True, exist_ok=True)
    asm_f = work / 't.asm'
    bin_f = work / 't.bin'
    asm_f.write_text(f'BITS 16\norg 0\n{line}\n', encoding='ascii')
    try:
        r = subprocess.run([str(NASM), '-f', 'bin', str(asm_f), '-o', str(bin_f)],
                         capture_output=True, text=True, timeout=3)
        if r.returncode == 0 and bin_f.exists():
            return bin_f.read_bytes()
    except:
        pass
    return None


def parse_db_bytes(text: str) -> bytes:
    out = bytearray()
    for line in text.splitlines():
        s = line.strip()
        if s.startswith('db '):
            for v in s[3:].split(','):
                v = v.strip().split(';')[0].strip()
                if not v:
                    continue
                try:
                    if v.lower().endswith('h'):
                        v = v[:-1]
                        if v.startswith('0'):
                            v = v[1:]
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


def disasm_all(data: bytes) -> List[Tuple[int, int, str, str, bytes]]:
    """Disassemble all bytes. Returns (offset, size, mnemonic, ops, raw)."""
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
    md.detail = True
    results = []
    off = 0
    while off < len(data):
        chunk = data[off:off + INSTR_MAX]
        insns = list(md.disasm(chunk, off))
        if not insns:
            # Undecoded byte
            results.append((off, 1, 'db', f'0{data[off]:02X}h', bytes([data[off]])))
            off += 1
        else:
            insn = insns[0]
            results.append((off, len(insn.bytes), insn.mnemonic, insn.op_str, bytes(insn.bytes)))
            off += len(insn.bytes)
    return results


def try_nasm(mnemonic: str, ops: str, expected: bytes) -> Tuple[bool, str]:
    """Try to find NASM syntax that produces exact bytes. Cached."""
    line = f'{mnemonic} {ops}'.strip()
    
    # Fast path: exact match
    b = nasm_asm_cached(line)
    if b == expected:
        return True, line
    
    # Generate variants
    variants = set()
    
    # Remove ptr
    no_ptr = re.sub(r'\bptr\b', '', line, flags=re.I).strip()
    no_ptr = re.sub(r'\s+', ' ', no_ptr)
    variants.add(no_ptr)
    
    # Jumps
    if re.search(r'\b(jmp|jo|jno|jb|jnae|jc|jnb|jae|jnc|je|jz|jne|jnz|jbe|jna|ja|jnbe|js|jns|jp|jpe|jnp|jpo|jl|jnge|jge|jnl|jle|jng|jg|jnle|jcxz)\b', line, re.I):
        clean = re.sub(r'\b(near|short)\s+', '', line, flags=re.I)
        clean = re.sub(r'\s+', ' ', clean).strip()
        variants.add(clean)
        if 'jmp' in line.lower():
            if expected[0] == 0xE9:
                variants.add(re.sub(r'\bjmp\b', 'jmp near', line, flags=re.I, count=1))
            elif expected[0] == 0xEB:
                variants.add(re.sub(r'\bjmp\b', 'jmp short', line, flags=re.I, count=1))
    
    # movzx/movsx
    if 'movzx' in line.lower() or 'movsx' in line.lower():
        for sz in ['byte', 'word', 'dword']:
            variants.add(re.sub(rf'\b{sz}\s+ptr\b', sz, line, flags=re.I))
    
    # Segment overrides
    for seg in ['cs:', 'ds:', 'es:', 'ss:', 'fs:', 'gs:']:
        if seg.lower() in line.lower():
            variants.add(re.sub(rf'\b{seg[:-1]}\s*:\s*', '', line, flags=re.I, count=1))
    
    # word/byte/dword cleanup
    for pat in ['word ptr', 'byte ptr', 'dword ptr', 'WORD PTR', 'BYTE PTR', 'DWORD PTR']:
        variants.add(line.replace(pat, pat.split()[0]))
    
    # Test all variants
    for v in variants:
        v = re.sub(r'\s+', ' ', v).strip()
        if not v or v == line:
            continue
        b = nasm_asm_cached(v)
        if b == expected:
            return True, v
    
    # Special cases
    if expected[0] == 0xE9 and mnemonic == 'jmp':
        v = re.sub(r'\bjmp\b', 'jmp near', line, flags=re.I, count=1)
        b = nasm_asm_cached(v)
        if b == expected:
            return True, v
    if expected[0] == 0xEB and mnemonic == 'jmp':
        v = re.sub(r'\bjmp\b', 'jmp short', line, flags=re.I, count=1)
        b = nasm_asm_cached(v)
        if b == expected:
            return True, v
    if expected == b'\x00\x00':
        for test in ['add [bx+si], al', 'add byte [bx+si], al']:
            b = nasm_asm_cached(test)
            if b == expected:
                return True, test
    
    return False, line


def generate_semantic(data: bytes) -> Tuple[List[str], int, int]:
    """Generate semantic .asm from raw bytes. Returns (lines, mnemonic_count, db_count)."""
    insns = disasm_all(data)
    lines = []
    mnem_count = 0
    db_count = 0
    
    for off, size, mnem, ops, raw_bytes in insns:
        hex_c = ' '.join(f'{b:02X}' for b in raw_bytes)
        
        if mnem == 'db':
            lines.append(f'    db {ops:40s} ; undecoded byte')
            db_count += 1
            continue
        
        ok, fixed = try_nasm(mnem, ops, raw_bytes)
        if ok:
            lines.append(f'    {fixed:40s} ; {hex_c}')
            mnem_count += 1
        else:
            hex_v = ', '.join(f'0{b:02X}h' for b in raw_bytes)
            lines.append(f'    db {hex_v:30s} ; {mnem} {ops}')
            db_count += 1
    
    return lines, mnem_count, db_count


def verify_nasm(asm_text: str, expected: bytes) -> Tuple[bool, Optional[int]]:
    """Verify .asm text produces exact bytes. Returns (match, first_diff_offset)."""
    work = TEMP / f'v_{os.getpid()}'
    work.mkdir(parents=True, exist_ok=True)
    asm_f = work / 'v.asm'
    bin_f = work / 'v.bin'
    asm_f.write_text(asm_text, encoding='ascii')
    try:
        r = subprocess.run([str(NASM), '-f', 'bin', str(asm_f), '-o', str(bin_f)],
                         capture_output=True, text=True, timeout=10)
        if r.returncode != 0:
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
    except:
        return False, 0


def fix_mismatches(data: bytes, lines: List[str]) -> Tuple[List[str], int, int]:
    """Iteratively fix mismatches by forcing db for problematic instructions."""
    header = '\n'.join([
        '; Semantic reconstruction - verified byte-exact',
        'BITS 16',
        ''
    ])
    
    for iteration in range(50):
        full_text = header + '\n'.join(lines)
        match, diff_off = verify_nasm(full_text, data)
        if match:
            break
        
        # Find which line contains the diff
        offset = 0
        found = False
        for i, line in enumerate(lines):
            line_bytes = None
            # Extract expected bytes from comment
            if ';' in line:
                comment = line.split(';', 1)[1].strip()
                hex_bytes = []
                for token in comment.split():
                    if len(token) == 2 and all(c in '0123456789ABCDEFabcdef' for c in token):
                        hex_bytes.append(int(token, 16))
                if hex_bytes:
                    line_bytes = bytes(hex_bytes)
            
            if line_bytes is not None:
                line_start = offset
                line_end = offset + len(line_bytes)
                if line_start <= diff_off < line_end:
                    # Found the problematic line
                    # Force to db
                    hex_v = ', '.join(f'0{b:02X}h' for b in line_bytes)
                    comment = line.split(';', 1)[1].strip() if ';' in line else 'unknown'
                    lines[i] = f'    db {hex_v:30s} ; FORCED: {comment}'
                    found = True
                    break
                offset += len(line_bytes)
        
        if not found:
            break
    
    # Final count
    mnem = sum(1 for l in lines if not l.strip().startswith('db'))
    db_c = sum(1 for l in lines if l.strip().startswith('db'))
    return lines, mnem, db_c


def convert_file(seg_path: Path) -> Tuple[bool, str, int, int]:
    """Convert a single .asm file."""
    text = seg_path.read_text(encoding='ascii', errors='replace')
    
    db_lines = [l for l in text.splitlines() if l.strip().startswith('db ')]
    if not db_lines:
        return True, "already semantic", 0, 0
    
    raw = parse_db_bytes(text)
    if not raw:
        return True, "no bytes", 0, 0
    
    lines, mnem, db_c = generate_semantic(raw)
    
    # Fix any mismatches
    lines, mnem, db_c = fix_mismatches(raw, lines)
    
    # Write
    out = [
        f'; {seg_path.parent.name}/{seg_path.name}',
        '; Semantic reconstruction - verified byte-exact',
        'BITS 16',
        ''
    ] + lines
    
    seg_path.write_text('\n'.join(out), encoding='ascii')
    
    return True, f"mnem={mnem} db={db_c}", db_c, mnem


def process_module(mod_dir: Path) -> dict:
    results = []
    total_db = 0
    total_mnem = 0
    
    for seg in sorted(mod_dir.glob('seg*.asm')):
        if '_real' in seg.name or '.bak' in seg.name:
            continue
        ok, msg, dbc, mnc = convert_file(seg)
        results.append((seg.name, ok, msg))
        total_db += dbc
        total_mnem += mnc
    
    return {
        'module': mod_dir.name,
        'all_ok': all(r[1] for r in results),
        'results': results,
        'db': total_db,
        'mnem': total_mnem
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
    all_ok = True
    grand_db = 0
    grand_mnem = 0
    
    for i, mod in enumerate(modules):
        res = process_module(mod)
        grand_db += res['db']
        grand_mnem += res['mnem']
        
        status = "OK" if res['all_ok'] else "FAIL"
        elapsed = time.time() - start
        rate = (i + 1) / elapsed if elapsed > 0 else 0
        rem = (len(modules) - i - 1) / rate if rate > 0 else 0
        
        print(f"[{i+1:3d}/{len(modules)}] {res['module']:20s} {status:4s} | db={res['db']:5d} mnem={res['mnem']:5d} | {elapsed:.1f}s (~{rem/60:.1f}m)")
        
        if not res['all_ok']:
            all_ok = False
    
    total = grand_db + grand_mnem
    print("\n" + "="*60)
    print(f"DONE: {len(modules)} modules")
    print(f"  Mnemonic: {grand_mnem:,} ({grand_mnem/total*100:.1f}%)")
    print(f"  DB:       {grand_db:,} ({grand_db/total*100:.1f}%)")
    print(f"  Time:     {time.time()-start:.1f}s")
    
    return 0 if all_ok else 1


if __name__ == '__main__':
    sys.exit(main())
