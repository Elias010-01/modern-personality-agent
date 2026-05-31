"""WORKING DB Converter - converts simple instructions from db to mnemonics.

Tested and verified: NASM produces exact bytes for simple instructions.
This script processes each db line individually with a reusable temp dir.
"""

from __future__ import annotations

import os
import subprocess
import time
from pathlib import Path

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
SRC = REPO / "src"
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(r'C:\Users\Elias\temp_db_working')

# These mnemonics reliably produce exact bytes with NASM
SIMPLE_MNEMS = {
    'aaa','aad','aam','aas','adc','add','and','cbw','clc','cld','cli','cmc','cmp',
    'cwd','daa','das','dec','div','hlt','idiv','imul','in','inc','insb','insw',
    'int','into','iret','lahf','lds','lea','les','mov','mul','neg','nop','not',
    'or','out','outsb','outsw','pop','popa','popf','push','pusha','pushf','rcl',
    'rcr','ret','retf','retn','rol','ror','sahf','sal','sar','sbb','shl','shr',
    'stc','std','sti','sub','test','wait','xchg','xlat','xlatb','xor',
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


def is_simple_instruction(comment: str) -> bool:
    if not comment: return False
    first = comment.split()[0].lower()
    return first in SIMPLE_MNEMS


def process_file(seg_path: Path, work_dir: Path) -> int:
    """Process one file, return number of conversions."""
    text = seg_path.read_text(encoding="ascii", errors="replace")
    lines = text.splitlines()
    converted = 0
    
    asm_path = work_dir / "test.asm"
    bin_path = work_dir / "test.bin"
    
    for i, line in enumerate(lines):
        s = line.strip()
        if not s.startswith("db "): continue
        
        parsed = parse_db_line(s)
        if parsed is None: continue
        expected_bytes, comment = parsed
        
        if not is_simple_instruction(comment):
            continue
        
        # Quick assemble test
        asm_path.write_text(f"BITS 16\n    {comment}\n", encoding="ascii")
        
        try:
            r = subprocess.run(
                [str(NASM), "-f", "bin", str(asm_path), "-o", str(bin_path)],
                capture_output=True, text=True, timeout=5
            )
            if r.returncode == 0 and bin_path.exists():
                built = bin_path.read_bytes()
                if built == expected_bytes:
                    hex_str = " ".join(f"{b:02X}" for b in expected_bytes)
                    lines[i] = f"    {comment:40s} ; {hex_str}"
                    converted += 1
        except Exception:
            pass
    
    if converted > 0:
        # Update header if this was a Semantic data file
        if len(lines) > 1 and "Semantic data" in lines[1]:
            lines[1] = "; Semantic reconstruction - verified byte-exact"
        seg_path.write_text("\n".join(lines), encoding="ascii")
    
    return converted


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
    
    # Collect files with db lines, sorted by number of db lines (most first)
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
    print(f"Top 10 by db count:")
    for f, c in files_with_counts[:10]:
        print(f"  {f.parent.name}/{f.name}: {c}")
    
    total_converted = 0
    start = time.time()
    
    for i, f in enumerate(files):
        c = process_file(f, work_dir)
        total_converted += c
        
        if c > 0:
            print(f"[{i+1}/{len(files)}] {f.parent.name}/{f.name}: +{c}")
        
        if (i + 1) % 20 == 0:
            elapsed = time.time() - start
            print(f"  Progress: {i+1}/{len(files)} | Converted: {total_converted} | {elapsed:.0f}s")
    
    print("\n" + "="*60)
    print(f"DONE: Converted {total_converted} db lines to mnemonics")
    print(f"Time: {time.time()-start:.0f}s")
    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
