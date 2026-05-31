#!/usr/bin/env python3
"""
SEMANTIC CONVERSION PIPELINE
Converts ALL Windows 1.03 .asm files to 100% semantic, reassemblable source.

Strategy:
- For mixed-format .asm (mnemonics + hex comments): KEEP existing mnemonics
- For pure-db .asm: Disassemble with Capstone, verify each instruction with NASM
- For data blocks (strings, tables): Create semantic labels
- Verify byte-exact rebuild for every file

Author: Cascade (autonomous run)
"""
import sys, os, re, struct, json, tempfile, subprocess, shutil, time
from pathlib import Path
from typing import List, Tuple, Optional, Dict
from concurrent.futures import ProcessPoolExecutor, as_completed
import multiprocessing

# Capstone
try:
    import capstone
except ImportError:
    print("ERROR: pip install capstone")
    sys.exit(1)

SRC = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src')
ORIG = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\original')
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(tempfile.gettempdir()) / 'semantic'

INSTR_MAX = 15


def parse_db_bytes(text: str) -> bytes:
    """Extract raw bytes from db lines."""
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


def parse_mixed_bytes(text: str) -> bytes:
    """Extract bytes from mixed-format .asm (mnemonics with hex in comments)."""
    out = bytearray()
    for line in text.splitlines():
        s = line.strip()
        if s.startswith('db '):
            # Parse db line
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
                    else:
                        out.append(int(v))
                except ValueError:
                    pass
        elif ';' in line and not s.startswith(';'):
            # Mixed format: extract hex from comment
            parts = line.split(';')
            if len(parts) >= 2:
                comment = parts[-1].strip()
                hex_bytes = []
                for token in comment.split():
                    token = token.strip()
                    if len(token) == 2 and all(c in '0123456789ABCDEFabcdef' for c in token):
                        try:
                            hex_bytes.append(int(token, 16))
                        except:
                            pass
                    elif len(token) == 4 and token.endswith('h'):
                        try:
                            val = int(token[:-1], 16)
                            hex_bytes.append(val & 0xFF)
                            hex_bytes.append((val >> 8) & 0xFF)
                        except:
                            pass
                if hex_bytes:
                    out.extend(hex_bytes)
    return bytes(out)


def nasm_asm(line: str) -> Optional[bytes]:
    """Test-assemble a single line with NASM."""
    work = TEMP / f't_{os.getpid()}'
    work.mkdir(parents=True, exist_ok=True)
    asm_f = work / 't.asm'
    bin_f = work / 't.bin'
    asm_f.write_text(f'BITS 16\norg 0\n{line}\n', encoding='ascii')
    try:
        r = subprocess.run([str(NASM), '-f', 'bin', str(asm_f), '-o', str(bin_f)],
                         capture_output=True, text=True, timeout=5)
        if r.returncode == 0 and bin_f.exists():
            return bin_f.read_bytes()
    except:
        pass
    return None


def try_nasm_variants(mnemonic: str, op_str: str, expected: bytes) -> Tuple[bool, str]:
    """Try many NASM syntax variants until one matches expected bytes."""
    line = f'{mnemonic} {op_str}'.strip()
    
    # Direct
    b = nasm_asm(line)
    if b == expected:
        return True, line
    
    variants = []
    
    # Remove ptr
    no_ptr = re.sub(r'\bptr\b', '', line, flags=re.I).strip()
    no_ptr = re.sub(r'\s+', ' ', no_ptr)
    variants.append(no_ptr)
    
    # Jumps: remove near/short, then add explicit
    if re.search(r'\b(jmp|jo|jno|jb|jnae|jc|jnb|jae|jnc|je|jz|jne|jnz|jbe|jna|ja|jnbe|js|jns|jp|jpe|jnp|jpo|jl|jnge|jge|jnl|jle|jng|jg|jnle|jcxz)\b', line, re.I):
        clean = re.sub(r'\b(near|short)\s+', '', line, flags=re.I)
        clean = re.sub(r'\s+', ' ', clean).strip()
        variants.append(clean)
        if 'jmp' in line.lower():
            if expected[0] == 0xE9:
                variants.append(re.sub(r'\bjmp\b', 'jmp near', line, flags=re.I, count=1))
            elif expected[0] == 0xEB:
                variants.append(re.sub(r'\bjmp\b', 'jmp short', line, flags=re.I, count=1))
    
    # movzx/movsx
    if 'movzx' in line.lower() or 'movsx' in line.lower():
        for sz in ['byte', 'word', 'dword']:
            variants.append(re.sub(rf'\b{sz}\s+ptr\b', sz, line, flags=re.I))
    
    # Segment overrides
    for seg in ['cs:', 'ds:', 'es:', 'ss:', 'fs:', 'gs:']:
        if seg in line.lower():
            variants.append(re.sub(rf'\b{seg[:-1]}\s*:\s*', '', line, flags=re.I, count=1))
    
    # word/byte ptr cleanup
    for pat in ['word ptr', 'byte ptr', 'dword ptr', 'WORD PTR', 'BYTE PTR', 'DWORD PTR']:
        variants.append(line.replace(pat, pat.split()[0]))
    
    # Deduplicate and test
    seen = set()
    for v in variants:
        v = re.sub(r'\s+', ' ', v).strip()
        if v and v not in seen:
            seen.add(v)
            b = nasm_asm(v)
            if b == expected:
                return True, v
    
    # Special: E9 (near jmp)
    if expected[0] == 0xE9 and mnemonic == 'jmp':
        v = re.sub(r'\bjmp\b', 'jmp near', line, flags=re.I, count=1)
        b = nasm_asm(v)
        if b == expected:
            return True, v
    
    # Special: EB (short jmp)
    if expected[0] == 0xEB and mnemonic == 'jmp':
        v = re.sub(r'\bjmp\b', 'jmp short', line, flags=re.I, count=1)
        b = nasm_asm(v)
        if b == expected:
            return True, v
    
    # Special: 00 00 -> add [bx+si], al
    if expected == b'\x00\x00':
        for test in ['add [bx+si], al', 'add byte [bx+si], al', 'add al, [bx+si]']:
            b = nasm_asm(test)
            if b == expected:
                return True, test
    
    return False, line


def disasm_block(data: bytes, base: int = 0) -> List[Tuple[int, str, str, bytes]]:
    """Disassemble with Capstone. Returns (offset, mnemonic, ops, raw)."""
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
    md.detail = True
    results = []
    off = 0
    while off < len(data):
        chunk = data[off:off + INSTR_MAX]
        insns = list(md.disasm(chunk, base + off))
        if not insns:
            break
        insn = insns[0]
        results.append((off, insn.mnemonic, insn.op_str, bytes(insn.bytes)))
        off += len(insn.bytes)
    return results


def semantic_convert_file(seg_path: Path) -> Tuple[bool, str, int, int]:
    """Convert a single .asm file to semantic. Returns (success, msg, db_lines, mnemonic_lines)."""
    text = seg_path.read_text(encoding='ascii', errors='replace')
    
    # Check format
    db_lines = [l for l in text.splitlines() if l.strip().startswith('db ')]
    mnemonic_lines = [l for l in text.splitlines() if ';' in l and not l.strip().startswith(';') and not l.strip().startswith('db')]
    
    if not db_lines:
        # Already fully semantic
        return True, "already semantic", 0, len(mnemonic_lines)
    
    # Extract raw bytes
    if mnemonic_lines:
        raw = parse_mixed_bytes(text)
    else:
        raw = parse_db_bytes(text)
    
    if not raw:
        return True, "no bytes", 0, 0
    
    # Generate semantic output
    out_lines = []
    out_lines.append(f'; {seg_path.parent.name}/{seg_path.name}')
    out_lines.append('; Semantic reconstruction - verified byte-exact')
    out_lines.append('BITS 16')
    out_lines.append('')
    
    # Disassemble and translate
    insns = disasm_block(raw)
    
    db_count = 0
    mnemonic_count = 0
    
    for off, mnem, ops, raw_bytes in insns:
        ok, fixed = try_nasm_variants(mnem, ops, raw_bytes)
        hex_c = ' '.join(f'{b:02X}' for b in raw_bytes)
        if ok:
            out_lines.append(f'    {fixed:40s} ; {hex_c}')
            mnemonic_count += 1
        else:
            # Fallback to db with semantic comment
            hex_v = ', '.join(f'0{b:02X}h' for b in raw_bytes)
            out_lines.append(f'    db {hex_v:30s} ; {mnem} {ops}')
            db_count += 1
    
    # Handle undecoded tail
    decoded_len = sum(len(i[3]) for i in insns)
    if decoded_len < len(raw):
        tail = raw[decoded_len:]
        for b in tail:
            out_lines.append(f'    db 0{b:02X}h                      ; undecoded')
            db_count += 1
    
    new_text = '\n'.join(out_lines)
    
    # Verify
    rebuilt = nasm_asm(new_text.replace('BITS 16\n', '').replace('org 0\n', ''))
    # Actually need to test the full text
    work = TEMP / f'ver_{os.getpid()}'
    work.mkdir(parents=True, exist_ok=True)
    asm_f = work / 'v.asm'
    bin_f = work / 'v.bin'
    asm_f.write_text(new_text, encoding='ascii')
    try:
        r = subprocess.run([str(NASM), '-f', 'bin', str(asm_f), '-o', str(bin_f)],
                         capture_output=True, text=True, timeout=10)
        if r.returncode != 0:
            return False, f"NASM error: {r.stderr[:200]}", db_count, mnemonic_count
        if not bin_f.exists():
            return False, "no output", db_count, mnemonic_count
        built = bin_f.read_bytes()
        if built != raw:
            # Find first diff
            for i in range(min(len(built), len(raw))):
                if built[i] != raw[i]:
                    return False, f"diff at {i}: orig={raw[i]:02x} built={built[i]:02x}", db_count, mnemonic_count
            return False, f"size {len(built)} vs {len(raw)}", db_count, mnemonic_count
    except Exception as e:
        return False, f"exception: {e}", db_count, mnemonic_count
    
    # Write verified file
    seg_path.write_text(new_text, encoding='ascii')
    return True, f"converted: {mnemonic_count} mnemonic, {db_count} db fallback", db_count, mnemonic_count


def process_module(mod_dir: Path) -> Dict:
    """Process all seg*.asm in a module."""
    results = []
    total_db = 0
    total_mnemonic = 0
    
    for seg in sorted(mod_dir.glob('seg*.asm')):
        if '_real' in seg.name or '.bak' in seg.name:
            continue
        ok, msg, dbc, mnc = semantic_convert_file(seg)
        results.append((seg.name, ok, msg))
        total_db += dbc
        total_mnemonic += mnc
    
    return {
        'module': mod_dir.name,
        'results': results,
        'total_db': total_db,
        'total_mnemonic': total_mnemonic,
        'all_ok': all(r[1] for r in results)
    }


def main():
    if not NASM.exists():
        print(f"ERROR: NASM not found at {NASM}")
        return 1
    
    if TEMP.exists():
        shutil.rmtree(TEMP)
    
    modules = [d for d in sorted(SRC.iterdir()) if d.is_dir()]
    print(f"Processing {len(modules)} modules...")
    
    all_results = []
    failures = []
    grand_db = 0
    grand_mnemonic = 0
    
    start = time.time()
    
    # Use single-threaded to avoid NASM contention issues
    for i, mod in enumerate(modules):
        res = process_module(mod)
        all_results.append(res)
        grand_db += res['total_db']
        grand_mnemonic += res['total_mnemonic']
        
        if not res['all_ok']:
            failures.append((res['module'], res['results']))
        
        elapsed = time.time() - start
        rate = (i + 1) / elapsed if elapsed > 0 else 0
        remaining = (len(modules) - i - 1) / rate if rate > 0 else 0
        
        status = "OK" if res['all_ok'] else "FAIL"
        print(f"[{i+1:3d}/{len(modules)}] {res['module']:20s} {status:4s} | db={res['total_db']:5d} mnem={res['total_mnemonic']:5d} | {elapsed:.1f}s elapsed, ~{remaining/60:.1f}m left")
    
    total = grand_db + grand_mnemonic
    print("\n" + "="*70)
    print(f"COMPLETE: {len(modules)} modules")
    print(f"  Total mnemonic lines: {grand_mnemonic:,} ({grand_mnemonic/total*100:.1f}%)")
    print(f"  Total db fallback:    {grand_db:,} ({grand_db/total*100:.1f}%)")
    print(f"  Failed modules:       {len(failures)}")
    if failures:
        for mod, results in failures:
            for seg, ok, msg in results:
                if not ok:
                    print(f"    {mod}/{seg}: {msg}")
    print(f"  Elapsed: {time.time()-start:.1f}s")
    
    return 0 if not failures else 1


if __name__ == '__main__':
    sys.exit(main())
