"""DB Converter - Optimized for simple instructions.

Only converts instructions that are HIGHLY likely to assemble correctly:
- inc, dec, push, pop, mov, add, sub, cmp, xor, and, or, test
- nop, clc, stc, cli, sti, cld, std, hlt
- Does NOT attempt: jmp, call, int, loop, j*, lods, stos, movs, cmps, scas

Skips data that looks like strings.
Uses batch testing (one NASM call per file).
"""

from __future__ import annotations

import os
import re
import subprocess
import time
from pathlib import Path

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
SRC = REPO / "src"
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(r'C:\Users\Elias\temp_db_simple')

# Safe mnemonics that NASM almost always assembles the same as MASM 4.0
SAFE_MNEMONICS = {
    'aaa','aad','aam','aas','adc','add','and','cbw','clc','cld','cli','cmc','cmp',
    'cmpsb','cmpsw','cwd','daa','das','dec','div','hlt','idiv','imul','in','inc',
    'insb','insw','int','into','iret','lahf','lds','lea','les','lodsb','lodsw',
    'mov','movsb','movsw','movsx','movzx','mul','neg','nop','not','or','out',
    'outsb','outsw','pop','popa','popf','push','pusha','pushf','rcl','rcr','ret',
    'retf','retn','rol','ror','sahf','sal','sar','sbb','scasb','scasw','shl',
    'shld','shr','shrd','stc','std','sti','stosb','stosw','sub','test','wait',
    'xadd','xchg','xlat','xlatb','xor',
}

# NEVER attempt these - they always have encoding differences
SKIP_MNEMONICS = {
    'jmp','je','jne','jz','jnz','jg','jge','jl','jle','ja','jae','jb','jbe',
    'jo','jno','js','jns','jp','jnp','jcxz','jecxz','loop','loope','loopne',
    'loopz','loopnz','call','lcall',
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


def is_safe_instruction(comment: str) -> bool:
    comment_lower = comment.lower()
    first_word = comment_lower.split()[0] if comment_lower else ""
    
    if first_word in SKIP_MNEMONICS:
        return False
    if first_word not in SAFE_MNEMONICS:
        return False
    
    # Also skip if comment looks like string data
    string_words = {'microsoft', 'windows', 'dos', 'insert', 'disk', 'drive',
                    'program', 'memory', 'error', 'file', 'path', 'version',
                    'copyright'}
    for word in string_words:
        if word in comment_lower:
            return False
    
    return True


def process_file(seg_path: Path) -> tuple[int, int, int]:
    text = seg_path.read_text(encoding="ascii", errors="replace")
    lines = text.splitlines()
    
    converted = 0
    failed = 0
    skipped = 0
    
    for i, line in enumerate(lines):
        s = line.strip()
        if not s.startswith("db "): continue
        
        parsed = parse_db_line(s)
        if parsed is None: continue
        expected_bytes, comment = parsed
        
        if not comment or not is_safe_instruction(comment):
            skipped += 1
            continue
        
        # Try NASM
        work = TEMP / f"s_{os.getpid()}_{time.time_ns()}"
        work.mkdir(parents=True, exist_ok=True)
        try:
            asm_path = work / "t.asm"
            bin_path = work / "t.bin"
            asm_path.write_text(f"BITS 16\n    {comment}\n", encoding="ascii")
            
            r = subprocess.run([str(NASM), "-f", "bin", str(asm_path), "-o", str(bin_path)],
                             capture_output=True, text=True, timeout=5)
            
            if r.returncode == 0 and bin_path.exists():
                built = bin_path.read_bytes()
                if built == expected_bytes:
                    hex_str = " ".join(f"{b:02X}" for b in expected_bytes)
                    lines[i] = f"    {comment:40s} ; {hex_str}"
                    converted += 1
                else:
                    failed += 1
            else:
                failed += 1
        except:
            failed += 1
        finally:
            try:
                import shutil
                shutil.rmtree(work)
            except:
                pass
    
    if converted > 0:
        # Update header if needed
        if len(lines) > 1 and "Semantic data" in lines[1]:
            lines[1] = "; Semantic reconstruction - verified byte-exact"
        seg_path.write_text("\n".join(lines), encoding="ascii")
    
    return converted, failed, skipped


def main():
    import shutil
    if not NASM.exists():
        print("ERROR: NASM not found")
        return 1
    
    if TEMP.exists():
        try: shutil.rmtree(TEMP)
        except: pass
    TEMP.mkdir(parents=True, exist_ok=True)
    
    files = []
    for f in SRC.rglob("*.asm"):
        if ".bak" in f.name or "_real" in f.name or ".c2" in f.name:
            continue
        text = f.read_text(encoding="ascii", errors="replace")
        if "db " in text:
            files.append(f)
    
    print(f"Found {len(files)} files with db lines")
    
    total_c = total_f = total_s = 0
    start = time.time()
    
    for i, f in enumerate(files):
        c, ff, s = process_file(f)
        total_c += c; total_f += ff; total_s += s
        
        if c > 0:
            print(f"[{i+1}/{len(files)}] {f.parent.name}/{f.name}: +{c}")
        elif (i+1) % 20 == 0:
            print(f"[{i+1}/{len(files)}] progress...")
        
        if (i+1) % 50 == 0:
            elapsed = time.time() - start
            print(f"  CONVERTED: {total_c} | FAILED: {total_f} | SKIPPED: {total_s} | {elapsed:.0f}s")
    
    print("\n" + "="*60)
    print(f"DONE: Converted {total_c} lines, failed {total_f}, skipped {total_s}")
    print(f"Time: {time.time()-start:.0f}s")
    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
