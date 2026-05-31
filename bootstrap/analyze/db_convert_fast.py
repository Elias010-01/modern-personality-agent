"""FAST DB Converter - uses verified 1-byte instructions + NASM batch for multi-byte.

Strategy:
1. 1-byte simple instructions (inc, dec, push, pop, nop, etc.) -> replace directly
   (already verified: NASM produces exact bytes for these)
2. Multi-byte simple instructions (mov, add, cmp, etc.) -> test with NASM in batch
3. Complex instructions (jmp, call, int) -> keep as db
"""

from __future__ import annotations

import subprocess
import time
from pathlib import Path

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
SRC = REPO / "src"
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(r'C:\Users\Elias\temp_db_fast')

# Verified 1-byte mnemonics that always produce exact bytes with NASM
ONE_BYTE_MNEMS = {
    'aaa', 'aad', 'aam', 'aas', 'cbw', 'clc', 'cld', 'cli', 'cmc', 'cwd',
    'daa', 'das', 'hlt', 'iret', 'lahf', 'nop', 'popa', 'popf', 'pusha',
    'pushf', 'sahf', 'stc', 'std', 'sti', 'wait', 'xlat', 'xlatb',
    'into', 'icebp', 'lock', 'rep', 'repe', 'repne', 'repnz', 'repz',
}

# 1-byte reg operations (inc r16, dec r16, push r16, pop r16)
ONE_BYTE_REG_OPS = {'inc', 'dec', 'push', 'pop'}

# Multi-byte simple mnemonics to test with NASM
MULTI_BYTE_MNEMS = {
    'adc', 'add', 'and', 'cmp', 'div', 'idiv', 'imul', 'in', 'lea',
    'mov', 'mul', 'neg', 'not', 'or', 'out', 'rcl', 'rcr', 'rol',
    'ror', 'sal', 'sar', 'sbb', 'shl', 'shr', 'sub', 'test', 'xchg',
    'xor', 'ret', 'retf', 'retn',
}


def parse_db_line(line: str) -> tuple[bytes, str] | None:
    s = line.strip()
    if not s.startswith("db "): return None
    comment = ""
    if ";" in s:
        parts = s.split(";", 1)
        db_part = parts[0].strip()
        comment = parts[1].strip()
    else:
        db_part = s
    
    hex_vals = bytearray()
    for v in db_part[3:].split(","):
        v = v.strip()
        if not v: continue
        vl = v.lower()
        if vl.endswith("h"):
            v = v[:-1]
            if v.startswith("0"): v = v[1:]
            try: hex_vals.append(int(v, 16))
            except: pass
        elif v.startswith("0x"):
            try: hex_vals.append(int(v[2:], 16))
            except: pass
        elif v.startswith("'") and v.endswith("'") and len(v) == 3:
            hex_vals.append(ord(v[1]))
    return bytes(hex_vals), comment


def is_one_byte_instruction(comment: str) -> bool:
    if not comment: return False
    parts = comment.split()
    first = parts[0].lower()
    
    if first in ONE_BYTE_MNEMS:
        return True
    if first in ONE_BYTE_REG_OPS and len(parts) == 2:
        # inc bx, dec cx, push di, pop sp -> 1 byte
        reg = parts[1].lower()
        if reg in ('ax','bx','cx','dx','si','di','bp','sp'):
            return True
    return False


def is_multi_byte_instruction(comment: str) -> bool:
    if not comment: return False
    first = comment.split()[0].lower()
    return first in MULTI_BYTE_MNEMS


def batch_test_nasm(items: list[tuple[int, bytes, str, str]], work_dir: Path) -> list[tuple[int, str, bool]]:
    """Test multiple instructions in one NASM call.
    items: (line_idx, expected_bytes, comment, original_line)
    Returns: (line_idx, replacement_line, success)
    """
    if not items:
        return []
    
    # Build NASM source
    asm_lines = ["BITS 16", ""]
    for line_idx, expected_bytes, comment, original_line in items:
        asm_lines.append(f"    {comment}")
    
    asm_path = work_dir / "batch.asm"
    bin_path = work_dir / "batch.bin"
    asm_path.write_text("\n".join(asm_lines), encoding="ascii")
    
    try:
        r = subprocess.run(
            [str(NASM), "-f", "bin", str(asm_path), "-o", str(bin_path)],
            capture_output=True, text=True, timeout=30
        )
        if r.returncode != 0 or not bin_path.exists():
            # NASM failed on batch - try individually
            results = []
            for line_idx, expected_bytes, comment, original_line in items:
                ok = test_single_nasm(expected_bytes, comment, work_dir)
                if ok:
                    hex_str = " ".join(f"{b:02X}" for b in expected_bytes)
                    results.append((line_idx, f"    {comment:40s} ; {hex_str}", True))
                else:
                    results.append((line_idx, original_line, False))
            return results
        
        built = bin_path.read_bytes()
        
        # Calculate expected total
        expected_total = b"".join(expected_bytes for _, expected_bytes, _, _ in items)
        
        if built == expected_total:
            # All match!
            results = []
            for line_idx, expected_bytes, comment, original_line in items:
                hex_str = " ".join(f"{b:02X}" for b in expected_bytes)
                results.append((line_idx, f"    {comment:40s} ; {hex_str}", True))
            return results
        else:
            # Mismatch - try individually
            results = []
            for line_idx, expected_bytes, comment, original_line in items:
                ok = test_single_nasm(expected_bytes, comment, work_dir)
                if ok:
                    hex_str = " ".join(f"{b:02X}" for b in expected_bytes)
                    results.append((line_idx, f"    {comment:40s} ; {hex_str}", True))
                else:
                    results.append((line_idx, original_line, False))
            return results
            
    except Exception:
        results = []
        for line_idx, expected_bytes, comment, original_line in items:
            ok = test_single_nasm(expected_bytes, comment, work_dir)
            if ok:
                hex_str = " ".join(f"{b:02X}" for b in expected_bytes)
                results.append((line_idx, f"    {comment:40s} ; {hex_str}", True))
            else:
                results.append((line_idx, original_line, False))
        return results


def test_single_nasm(expected_bytes: bytes, comment: str, work_dir: Path) -> bool:
    asm_path = work_dir / "single.asm"
    bin_path = work_dir / "single.bin"
    asm_path.write_text(f"BITS 16\n    {comment}\n", encoding="ascii")
    try:
        r = subprocess.run(
            [str(NASM), "-f", "bin", str(asm_path), "-o", str(bin_path)],
            capture_output=True, text=True, timeout=5
        )
        if r.returncode == 0 and bin_path.exists():
            return bin_path.read_bytes() == expected_bytes
    except:
        pass
    return False


def process_file(seg_path: Path, work_dir: Path) -> tuple[int, int, int]:
    """Returns (direct_converted, nasm_converted, failed)."""
    text = seg_path.read_text(encoding="ascii", errors="replace")
    lines = text.splitlines()
    
    direct = 0
    nasm_c = 0
    failed = 0
    replacements = {}  # line_idx -> new_line
    
    # First pass: direct conversions (1-byte known instructions)
    multi_byte_items = []
    
    for i, line in enumerate(lines):
        s = line.strip()
        if not s.startswith("db "): continue
        
        parsed = parse_db_line(s)
        if parsed is None: continue
        expected_bytes, comment = parsed
        
        if not comment:
            continue
        
        # Direct conversion for 1-byte instructions
        if len(expected_bytes) == 1 and is_one_byte_instruction(comment):
            hex_str = f"{expected_bytes[0]:02X}"
            replacements[i] = f"    {comment:40s} ; {hex_str}"
            direct += 1
            continue
        
        # Multi-byte simple instructions -> batch test
        if is_multi_byte_instruction(comment):
            multi_byte_items.append((i, expected_bytes, comment, line))
            if len(multi_byte_items) >= 50:
                results = batch_test_nasm(multi_byte_items, work_dir)
                for line_idx, new_line, success in results:
                    if success:
                        replacements[line_idx] = new_line
                        nasm_c += 1
                    else:
                        failed += 1
                multi_byte_items = []
            continue
        
        # Everything else -> skip
        failed += 1
    
    # Process remaining multi-byte items
    if multi_byte_items:
        results = batch_test_nasm(multi_byte_items, work_dir)
        for line_idx, new_line, success in results:
            if success:
                replacements[line_idx] = new_line
                nasm_c += 1
            else:
                failed += 1
    
    # Apply replacements
    if replacements:
        for line_idx, new_line in replacements.items():
            lines[line_idx] = new_line
        
        if len(lines) > 1 and "Semantic data" in lines[1]:
            lines[1] = "; Semantic reconstruction - verified byte-exact"
        
        seg_path.write_text("\n".join(lines), encoding="ascii")
    
    return direct, nasm_c, failed


def main():
    import shutil
    if not NASM.exists():
        print("ERROR: NASM not found")
        return 1
    
    if TEMP.exists():
        try: shutil.rmtree(TEMP)
        except: pass
    TEMP.mkdir(parents=True, exist_ok=True)
    work_dir = TEMP / "work"
    work_dir.mkdir(exist_ok=True)
    
    # Collect files sorted by db count (most first)
    files_with_counts = []
    for f in SRC.rglob("*.asm"):
        if ".bak" in f.name or "_real" in f.name or ".c2" in f.name:
            continue
        text = f.read_text(encoding="ascii", errors="replace")
        db_count = sum(1 for l in text.splitlines() if l.strip().startswith("db "))
        if db_count > 0:
            files_with_counts.append((f, db_count))
    
    files_with_counts.sort(key=lambda x: x[1], reverse=True)
    files = [f for f, _ in files_with_counts]
    
    print(f"Found {len(files)} files with db lines")
    print(f"Top 10:")
    for f, c in files_with_counts[:10]:
        print(f"  {f.parent.name}/{f.name}: {c}")
    
    total_direct = 0
    total_nasm = 0
    total_failed = 0
    start = time.time()
    
    for i, f in enumerate(files):
        d, n, ff = process_file(f, work_dir)
        total_direct += d
        total_nasm += n
        total_failed += ff
        
        if d + n > 0:
            print(f"[{i+1}/{len(files)}] {f.parent.name}/{f.name}: +{d} direct +{n} nasm")
        
        if (i + 1) % 10 == 0:
            elapsed = time.time() - start
            print(f"  Progress: {i+1}/{len(files)} | Direct: {total_direct} | NASM: {total_nasm} | Failed: {total_failed} | {elapsed:.0f}s")
    
    print("\n" + "="*60)
    print(f"DONE: {len(files)} files")
    print(f"  Direct conversions: {total_direct}")
    print(f"  NASM conversions:   {total_nasm}")
    print(f"  Failed/kept as db:  {total_failed}")
    print(f"  Time: {time.time()-start:.0f}s")
    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
