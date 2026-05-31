"""MASSIVE FILE CONVERTER v2 - Convert entire semantic data files at once.

Strategy:
1. For each 'Semantic data' file, extract ALL raw bytes from db lines
2. Disassemble with Capstone
3. Generate NASM source with ALL mnemonics
4. Assemble with NASM
5. If byte-exact match -> full conversion to mnemonics
6. If mismatch -> find offending lines, keep them as db, convert the rest

This is orders of magnitude faster than line-by-line testing.
"""

from __future__ import annotations

import os
import re
import subprocess
import time
from pathlib import Path
import capstone

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
SRC = REPO / "src"
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(r'C:\Users\Elias\temp_massive_file')


def parse_db_bytes(text: str) -> bytes:
    """Extract all bytes from db lines."""
    out = bytearray()
    for line in text.splitlines():
        s = line.strip()
        if not s.startswith("db "):
            continue
        # Extract hex values before comment
        db_part = s[3:].split(";")[0].strip()
        for v in db_part.split(","):
            v = v.strip()
            if not v:
                continue
            v_lower = v.lower()
            if v_lower.endswith("h"):
                v = v[:-1]
                if v.startswith("0"):
                    v = v[1:]
                try:
                    out.append(int(v, 16))
                except ValueError:
                    pass
            elif v.startswith("0x"):
                try:
                    out.append(int(v[2:], 16))
                except ValueError:
                    pass
            elif v.startswith("'") and v.endswith("'") and len(v) == 3:
                out.append(ord(v[1]))
    return bytes(out)


def disasm_all(data: bytes) -> list[tuple[int, int, str, str, bytes]]:
    """Disassemble bytes with Capstone. Returns (offset, size, mnemonic, ops, raw_bytes)."""
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
    md.detail = True
    results = []
    off = 0
    while off < len(data):
        chunk = data[off:off + 15]
        insns = list(md.disasm(chunk, off))
        if not insns:
            results.append((off, 1, "db", f"0{data[off]:02X}h", bytes([data[off]])))
            off += 1
        else:
            insn = insns[0]
            results.append((off, len(insn.bytes), insn.mnemonic, insn.op_str, bytes(insn.bytes)))
            off += len(insn.bytes)
    return results


def clean_mnemonic(mnemonic: str, ops: str) -> str:
    """Clean Capstone output for NASM."""
    line = f"{mnemonic} {ops}".strip()
    line = re.sub(r'\bptr\b', '', line, flags=re.I)
    line = re.sub(r'\b(near|short)\s+', '', line, flags=re.I)
    line = re.sub(r'\s+', ' ', line).strip()
    return line


def build_nasm_source(insns: list, header_lines: list[str]) -> str:
    """Build NASM source from disassembled instructions."""
    lines = header_lines.copy()
    for off, size, mnem, ops, raw in insns:
        hex_c = " ".join(f"{b:02X}" for b in raw)
        if mnem == "db":
            hex_v = ", ".join(f"0{b:02X}h" for b in raw)
            lines.append(f"    db {hex_v:30s} ; {hex_c}")
        else:
            fixed = clean_mnemonic(mnem, ops)
            lines.append(f"    {fixed:40s} ; {hex_c}")
    return "\n".join(lines)


def nasm_assemble(asm_text: str) -> tuple[bool, bytes]:
    """Assemble with NASM."""
    import shutil
    work = TEMP / f"n_{os.getpid()}_{time.time_ns()}"
    work.mkdir(parents=True, exist_ok=True)
    asm_f = work / "test.asm"
    bin_f = work / "test.bin"
    asm_f.write_text(asm_text, encoding="ascii")
    try:
        r = subprocess.run([str(NASM), "-f", "bin", str(asm_f), "-o", str(bin_f)],
                         capture_output=True, text=True, timeout=30)
        if r.returncode != 0 or not bin_f.exists():
            return False, b""
        return True, bin_f.read_bytes()
    except:
        return False, b""
    finally:
        try:
            shutil.rmtree(work)
        except:
            pass


def find_mismatch_offsets(expected: bytes, built: bytes) -> set[int]:
    """Find offsets where expected and built differ."""
    mismatches = set()
    min_len = min(len(expected), len(built))
    for i in range(min_len):
        if expected[i] != built[i]:
            mismatches.add(i)
    # Also mark remaining bytes if lengths differ
    for i in range(min_len, max(len(expected), len(built))):
        mismatches.add(i)
    return mismatches


def process_file(seg_path: Path) -> tuple[bool, int, int]:
    """Process a single file. Returns (success, converted_count, db_kept_count)."""
    text = seg_path.read_text(encoding="ascii", errors="replace")
    
    # Only process Semantic data files
    if "Semantic" not in text:
        return False, 0, 0
    
    lines = text.splitlines()
    
    # Extract header (first 4 lines usually)
    header_end = 4
    for i, line in enumerate(lines):
        if i < 3:
            continue
        s = line.strip()
        if s.startswith("db "):
            header_end = i
            break
    
    header_lines = lines[:header_end]
    
    # Extract all bytes from db lines
    expected = parse_db_bytes(text)
    if not expected:
        return False, 0, 0
    
    # Disassemble
    insns = disasm_all(expected)
    
    # Build NASM source
    nasm_text = build_nasm_source(insns, header_lines)
    
    # Try assembling
    ok, built = nasm_assemble(nasm_text)
    if not ok:
        return False, 0, 0
    
    if built == expected:
        # Full match! Replace entire file
        seg_path.write_text(nasm_text, encoding="ascii")
        converted = sum(1 for _, _, mnem, _, _ in insns if mnem != "db")
        db_kept = sum(1 for _, _, mnem, _, _ in insns if mnem == "db")
        return True, converted, db_kept
    
    # Partial match - find which instructions differ
    mismatches = find_mismatch_offsets(expected, built)
    
    # Rebuild: use mnemonics for matching, db for mismatching
    new_lines = header_lines.copy()
    converted = 0
    db_kept = 0
    
    for off, size, mnem, ops, raw in insns:
        hex_c = " ".join(f"{b:02X}" for b in raw)
        # Check if any byte in this instruction's range mismatched
        instruction_mismatched = any(o in mismatches for o in range(off, off + size))
        
        if instruction_mismatched or mnem == "db":
            hex_v = ", ".join(f"0{b:02X}h" for b in raw)
            new_lines.append(f"    db {hex_v:30s} ; {hex_c}")
            db_kept += 1
        else:
            fixed = clean_mnemonic(mnem, ops)
            new_lines.append(f"    {fixed:40s} ; {hex_c}")
            converted += 1
    
    seg_path.write_text("\n".join(new_lines), encoding="ascii")
    return True, converted, db_kept


def main():
    import shutil
    
    if not NASM.exists():
        print("ERROR: NASM not found")
        return 1
    
    if TEMP.exists():
        try:
            shutil.rmtree(TEMP)
        except:
            pass
    TEMP.mkdir(parents=True, exist_ok=True)
    
    # Find Semantic data files
    files = []
    for f in SRC.rglob("*.asm"):
        if ".bak" in f.name or "_real" in f.name or ".c2" in f.name:
            continue
        text = f.read_text(encoding="ascii", errors="replace")
        if "Semantic data" in text:
            files.append(f)
    
    print(f"Found {len(files)} 'Semantic data' files to convert")
    
    total_converted = 0
    total_db_kept = 0
    full_conversions = 0
    partial_conversions = 0
    start = time.time()
    
    for i, f in enumerate(files):
        ok, converted, db_kept = process_file(f)
        if ok:
            total_converted += converted
            total_db_kept += db_kept
            if db_kept == 0:
                full_conversions += 1
                print(f"[{i+1}/{len(files)}] {f.parent.name}/{f.name}: FULL CONVERSION ({converted} mnemonics)")
            else:
                partial_conversions += 1
                print(f"[{i+1}/{len(files)}] {f.parent.name}/{f.name}: partial +{converted} mnemonics, {db_kept} db kept")
        else:
            print(f"[{i+1}/{len(files)}] {f.parent.name}/{f.name}: FAILED")
        
        if (i + 1) % 10 == 0:
            elapsed = time.time() - start
            print(f"  Progress: {i+1}/{len(files)} | Converted: {total_converted} | DB kept: {total_db_kept} | {elapsed:.0f}s")
    
    print("\n" + "="*70)
    print(f"DONE: {len(files)} files")
    print(f"  Full conversions: {full_conversions}")
    print(f"  Partial conversions: {partial_conversions}")
    print(f"  Total converted: {total_converted}")
    print(f"  Total db kept: {total_db_kept}")
    print(f"  Time: {time.time()-start:.0f}s")
    
    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
