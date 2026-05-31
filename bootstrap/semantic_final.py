#!/usr/bin/env python3
"""
SEMANTIC FINAL PIPELINE
Processes only pure-db .asm files to semantic NASM source.
Safe: always verifies before replacing originals.
Fast: uses per-file NASM assembly with iterative fix.
"""
import sys, os, re, subprocess, shutil, time
from pathlib import Path
import capstone

SRC = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src')
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(r'C:\Users\Elias\temp_semantic_final')

def find_pure_db_files() -> list:
    """Find all seg*.asm that are pure db (no mnemonics)."""
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
            elif ';' in line and not s.startswith(';'):
                has_mnemonic = True
        if has_db and not has_mnemonic:
            files.append(f)
    return sorted(files)

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
    line = f'{mnemonic} {ops}'.strip()
    line = re.sub(r'\bptr\b', '', line, flags=re.I)
    line = re.sub(r'\b(near|short)\s+', '', line, flags=re.I)
    line = re.sub(r'\s+', ' ', line).strip()
    return line

def build_asm_text(insns: list, force_db: set) -> str:
    lines = [f'; Semantic reconstruction - verified byte-exact', 'BITS 16', '']
    for idx, (off, size, mnem, ops, raw) in enumerate(insns):
        hex_c = ' '.join(f'{b:02X}' for b in raw)
        if mnem == 'db' or idx in force_db:
            hex_v = ', '.join(f'0{b:02X}h' for b in raw)
            lines.append(f'    db {hex_v:30s} ; {hex_c}')
        else:
            fixed = clean_mnemonic(mnem, ops)
            lines.append(f'    {fixed:40s} ; {hex_c}')
    return '\n'.join(lines)

def nasm_assemble(asm_text: str) -> tuple:
    """Assemble with NASM. Returns (success, bytes_or_none, error_info)."""
    work = TEMP / f'n_{os.getpid()}_{time.time_ns()}'
    work.mkdir(parents=True, exist_ok=True)
    asm_f = work / 'test.asm'
    bin_f = work / 'test.bin'
    asm_f.write_text(asm_text, encoding='ascii')
    try:
        r = subprocess.run([str(NASM), '-f', 'bin', str(asm_f), '-o', str(bin_f)],
                         capture_output=True, text=True, timeout=30)
        if r.returncode != 0:
            err = r.stderr
            m = re.search(r'test\.asm:(\d+)', err)
            if m:
                return False, None, ('line_error', int(m.group(1)) - 3)
            return False, None, ('asm_error', 0)
        if not bin_f.exists():
            return False, None, ('no_output', 0)
        built = bin_f.read_bytes()
        return True, built, ('ok', 0)
    except Exception as e:
        return False, None, ('exception', str(e))

def find_line_for_offset(insns: list, target_off: int) -> int:
    current = 0
    for i, (off, size, mnem, ops, raw) in enumerate(insns):
        if current <= target_off < current + len(raw):
            return i
        current += len(raw)
    return 0

def convert_file(seg_path: Path) -> tuple:
    text = seg_path.read_text(encoding='ascii', errors='replace')
    raw = parse_db_bytes(text)
    if not raw:
        return True, "no bytes", 0, 0
    
    # Backup original
    backup = seg_path.with_suffix('.asm.bak')
    if not backup.exists():
        import shutil as sh
        sh.copy2(seg_path, backup)
    
    insns = disasm_all(raw)
    
    # Quick check: if > 80% is undecoded, probably data, skip
    decoded = sum(1 for i in insns if i[2] != 'db')
    if decoded < len(insns) * 0.2:
        return True, "data (skipped)", 0, 0
    
    force_db = set()
    
    for iteration in range(200):
        asm_text = build_asm_text(insns, force_db)
        ok, built_bytes, (err_type, err_info) = nasm_assemble(asm_text)
        
        if ok and built_bytes == raw:
            # Success! Write to temp first, verify, then replace
            temp_path = seg_path.parent / f'{seg_path.stem}_semantic.tmp'
            if temp_path.exists():
                temp_path.unlink()
            temp_path.write_text(asm_text, encoding='ascii')
            # Verify temp file
            ok2, built2, _ = nasm_assemble(temp_path.read_text(encoding='ascii'))
            if ok2 and built2 == raw:
                if seg_path.exists():
                    seg_path.unlink()
                temp_path.rename(seg_path)
                db_c = sum(1 for i in range(len(insns)) if i in force_db or insns[i][2] == 'db')
                mnem_c = len(insns) - db_c
                return True, f"mnem={mnem_c} db={db_c} iter={iteration+1}", db_c, mnem_c
            else:
                # Temp verification failed, continue iterating
                for i in range(len(insns)):
                    if i not in force_db:
                        force_db.add(i)
                        break
                continue
        
        if not ok:
            if err_type == 'line_error' and 0 <= err_info < len(insns):
                force_db.add(err_info)
            else:
                # Unknown error, force first undecoded line
                for i in range(len(insns)):
                    if i not in force_db:
                        force_db.add(i)
                        break
        else:
            # Bytes differ
            for i in range(min(len(built_bytes), len(raw))):
                if built_bytes[i] != raw[i]:
                    line_idx = find_line_for_offset(insns, i)
                    force_db.add(line_idx)
                    break
            else:
                # Size mismatch
                force_db.add(len(insns) - 1)
    
    # Max iterations reached - restore backup
    if backup.exists():
        backup.replace(seg_path)
    return False, f"max iterations ({iteration+1})", 0, 0

def main():
    if not NASM.exists():
        print("ERROR: NASM not found")
        return 1
    
    if TEMP.exists():
        shutil.rmtree(TEMP)
    
    files = find_pure_db_files()
    print(f"Found {len(files)} pure-db files to process")
    
    grand_db = 0
    grand_mnem = 0
    failures = []
    converted = 0
    skipped = 0
    
    start = time.time()
    
    for i, f in enumerate(files):
        ok, msg, dbc, mnc = convert_file(f)
        
        if ok and 'mnem=' in msg:
            converted += 1
            grand_db += dbc
            grand_mnem += mnc
        elif ok and 'skipped' in msg:
            skipped += 1
        elif not ok:
            failures.append(f'{f.parent.name}/{f.name}: {msg}')
        
        elapsed = time.time() - start
        print(f"[{i+1:3d}/{len(files)}] {f.parent.name:20s}/{f.name:12s} | {msg:30s} | {elapsed:.0f}s")
    
    total = grand_db + grand_mnem
    print("\n" + "="*70)
    print(f"DONE: {len(files)} files")
    print(f"  Converted:  {converted}")
    print(f"  Skipped:    {skipped}")
    print(f"  Failed:     {len(failures)}")
    if total > 0:
        print(f"  Mnemonic:   {grand_mnem:,} ({grand_mnem/total*100:.1f}%)")
        print(f"  DB:         {grand_db:,} ({grand_db/total*100:.1f}%)")
    if failures:
        print("\nFailures:")
        for f in failures[:10]:
            print(f"  {f}")
    print(f"  Time: {time.time()-start:.0f}s")
    
    return 0

if __name__ == '__main__':
    sys.exit(main())
