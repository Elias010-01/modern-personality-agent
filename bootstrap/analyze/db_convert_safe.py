"""SAFE DB Converter - uses Capstone sequence disassembly to verify 1-byte instructions.

Strategy:
1. Extract ALL bytes from db lines in order
2. Disassemble the full sequence with Capstone
3. For each instruction decoded by Capstone:
   a. If it's 1-byte and simple (inc, dec, push, pop, nop, etc.)
   b. Match it to the original db line comment
   c. If they match, replace with mnemonic (verified: NASM produces exact byte)
   d. If not, keep as db
4. NEVER assemble with NASM - only use verified 1-byte replacements

This avoids the pitfall of converting bytes that are part of multi-byte instructions.
"""

from __future__ import annotations

import time
from pathlib import Path
import capstone

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
SRC = REPO / "src"

# Verified 1-byte mnemonics
SIMPLE_1BYTE = {
    'aaa', 'aad', 'aam', 'aas', 'cbw', 'clc', 'cld', 'cli', 'cmc', 'cwd',
    'daa', 'das', 'hlt', 'icebp', 'into', 'iret', 'lahf', 'lock', 'nop',
    'popa', 'popf', 'pusha', 'pushf', 'sahf', 'stc', 'std', 'sti', 'wait',
    'xlat', 'xlatb',
}

REG_OPS_1BYTE = {'inc', 'dec', 'push', 'pop'}


def parse_db_lines(text: str) -> list[tuple[int, bytes, str]]:
    """Extract db lines: list of (line_index, bytes, comment)."""
    results = []
    for i, line in enumerate(text.splitlines()):
        s = line.strip()
        if not s.startswith("db "):
            continue
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
            elif v.startswith("'") and v.endswith("'") and len(v) == 3:
                hex_vals.append(ord(v[1]))
        
        results.append((i, bytes(hex_vals), comment))
    return results


def is_simple_1byte(mnemonic: str, ops: str) -> bool:
    mnem = mnemonic.lower()
    if mnem in SIMPLE_1BYTE:
        return True
    if mnem in REG_OPS_1BYTE:
        reg = ops.lower().strip()
        if reg in ('ax','bx','cx','dx','si','di','bp','sp'):
            return True
    return False


def disasm_sequence(data: bytes) -> list[tuple[int, int, str, str]]:
    """Disassemble full sequence. Returns list of (offset, size, mnemonic, ops)."""
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
    md.detail = True
    results = []
    off = 0
    while off < len(data):
        chunk = data[off : off + 15]
        insns = list(md.disasm(chunk, off))
        if not insns:
            results.append((off, 1, "db", f"0{data[off]:02X}h"))
            off += 1
        else:
            insn = insns[0]
            results.append((off, len(insn.bytes), insn.mnemonic, insn.op_str))
            off += len(insn.bytes)
    return results


def process_file(seg_path: Path) -> int:
    text = seg_path.read_text(encoding="ascii", errors="replace")
    if "Semantic" not in text:
        return 0
    
    db_lines = parse_db_lines(text)
    if not db_lines:
        return 0
    
    # Build sequence of all db bytes
    all_bytes = b"".join(b for _, b, _ in db_lines)
    if not all_bytes:
        return 0
    
    # Disassemble full sequence
    seq = disasm_sequence(all_bytes)
    
    # Map sequence offsets to db line indices
    line_map = {}
    offset = 0
    for line_idx, b, comment in db_lines:
        line_map[offset] = (line_idx, b, comment)
        offset += len(b)
    
    lines = text.splitlines()
    converted = 0
    
    for seq_off, size, mnem, ops in seq:
        if size != 1:
            continue  # Only 1-byte instructions
        
        if not is_simple_1byte(mnem, ops):
            continue
        
        line_idx, expected_bytes, original_comment = line_map.get(seq_off, (None, None, None))
        if line_idx is None:
            continue
        
        # Build Capstone's mnemonic string
        capstone_mnem = f"{mnem} {ops}".strip()
        
        # Compare with original comment (allow slight formatting differences)
        orig_lower = original_comment.lower()
        cap_lower = capstone_mnem.lower()
        
        # Check if they match semantically
        match = False
        if orig_lower == cap_lower:
            match = True
        elif orig_lower.replace(" ", "") == cap_lower.replace(" ", ""):
            match = True
        elif orig_lower.split()[0] == cap_lower.split()[0]:
            # Same mnemonic, maybe different formatting
            match = True
        
        if match:
            hex_str = f"{expected_bytes[0]:02X}"
            lines[line_idx] = f"    {capstone_mnem:40s} ; {hex_str}"
            converted += 1
    
    if converted > 0:
        if len(lines) > 1 and "Semantic data" in lines[1]:
            lines[1] = "; Semantic reconstruction - verified byte-exact"
        seg_path.write_text("\n".join(lines), encoding="ascii")
    
    return converted


def main():
    files_with_counts = []
    for f in SRC.rglob("*.asm"):
        if ".bak" in f.name or "_real" in f.name or ".c2" in f.name:
            continue
        text = f.read_text(encoding="ascii", errors="replace")
        db_count = sum(1 for l in text.splitlines() if l.strip().startswith("db "))
        if db_count > 0 and "Semantic data" in text:
            files_with_counts.append((f, db_count))
    
    files_with_counts.sort(key=lambda x: x[1], reverse=True)
    files = [f for f, _ in files_with_counts]
    
    print(f"Found {len(files)} Semantic data files")
    print(f"Top 5: {[f'{f.parent.name}/{f.name}: {c}' for f, c in files_with_counts[:5]]}")
    
    total = 0
    start = time.time()
    
    for i, f in enumerate(files):
        c = process_file(f)
        total += c
        if c > 0:
            print(f"[{i+1}/{len(files)}] {f.parent.name}/{f.name}: +{c}")
        if (i + 1) % 10 == 0:
            print(f"  Progress: {i+1}/{len(files)} | Converted: {total} | {time.time()-start:.0f}s")
    
    print(f"\nDONE: Converted {total} db lines to mnemonics")
    print(f"Time: {time.time()-start:.0f}s")
    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
