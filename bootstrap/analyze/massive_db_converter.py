"""MASSIVE DB TO MNEMONIC CONVERTER

For every .asm file in src/, scan each db line with a semantic comment.
Extract the comment (e.g. "inc bx"), try NASM with it.
If NASM produces the exact same bytes -> replace db line with pure mnemonic.

Uses batch testing for efficiency: tests up to N instructions in a single NASM call.

This is the final attempt to maximize mnemonic coverage before C port.
"""

from __future__ import annotations

import os
import re
import subprocess
import time
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
SRC = REPO / "src"
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(r'C:\Users\Elias\temp_massive_db')

# Thread-safe stats
stats = {
    "total_db": 0,
    "converted": 0,
    "failed": 0,
    "skipped_data": 0,
}
stats_lock = threading.Lock()


def parse_db_line(line: str) -> tuple[bytes, str] | None:
    """Parse 'db 043h ; inc bx' -> (b'\x43', 'inc bx')."""
    s = line.strip()
    if not s.startswith("db "):
        return None
    
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
        if not v:
            continue
        v_lower = v.lower()
        if v_lower.endswith("h"):
            v = v[:-1]
            if v.startswith("0"):
                v = v[1:]
            try:
                hex_vals.append(int(v, 16))
            except ValueError:
                pass
        else:
            try:
                hex_vals.append(int(v, 16))
            except ValueError:
                pass
    
    return bytes(hex_vals), comment


def looks_like_instruction(comment: str) -> bool:
    """Heuristic: does comment look like a real x86 instruction?"""
    comment_lower = comment.lower()
    
    # Known mnemonics
    mnemonics = {
        'aaa','aad','aam','aas','adc','add','and','bound','bsf','bsr','bswap','bt','btc','btr','bts',
        'call','cbw','cdq','clc','cld','cli','clts','cmc','cmp','cmps','cmpsb','cmpsw','cwd','cwde',
        'daa','das','dec','div','enter','esc','f2xm1','fabs','fadd','faddp','fbld','fbstp','fchs',
        'fclex','fcom','fcomp','fcompp','fcos','fdecstp','fdiv','fdivp','fdivr','fdivrp','ffree',
        'fiadd','ficom','ficomp','fidiv','fidivr','fild','fimul','fincstp','finit','fist','fistp',
        'fisub','fisubr','fld','fld1','fldcw','fldenv','fldenvw','fldl2e','fldl2t','fldlg2','fldln2',
        'fldpi','fldz','fmul','fmulp','fnclex','fninit','fnop','fnsave','fnstcw','fnstenv','fnstsw',
        'fpatan','fprem','fptan','frndint','frstor','fsave','fscale','fsin','fsincos','fsqrt',
        'fst','fstcw','fstenv','fstp','fstsw','fsub','fsubp','fsubr','fsubrp','ftst','fucom',
        'fucomp','fucompp','fwait','fxam','fxch','fxtract','fyl2x','fyl2xp1','hlt','idiv','imul',
        'in','inc','ins','insb','insw','int','into','invd','invlpg','iret','iretd','ja','jae','jb',
        'jbe','jc','jcxz','je','jecxz','jg','jge','jl','jle','jmp','jna','jnae','jnb','jnbe','jnc',
        'jne','jng','jnge','jnl','jnle','jno','jnp','jns','jnz','jo','jp','jpe','jpo','js','jz',
        'lahf','lar','lds','lea','leave','les','lfs','lgdt','lgs','lidt','lldt','lmsw','lock','lods',
        'lodsb','lodsw','loop','loope','loopne','loopnz','loopz','lsl','ltr','mov','movs','movsb',
        'movsw','movsx','movzx','mul','neg','nop','not','or','out','outs','outsb','outsw','pop','popa',
        'popad','popf','popfd','push','pusha','pushad','pushf','pushfd','rcl','rcr','rep','repe',
        'repne','repnz','repz','ret','retf','retn','rol','ror','rsm','sahf','sal','sar','sbb','scas',
        'scasb','scasw','seta','setae','setb','setbe','setc','sete','setg','setge','setl','setle',
        'setna','setnae','setnb','setnbe','setnc','setne','setng','setnge','setnl','setnle','setno',
        'setnp','setns','setnz','seto','setp','setpe','setpo','sets','setz','sgdt','shl','shld','shr',
        'shrd','sidt','sldt','smsw','stc','std','sti','stos','stosb','stosw','str','sub','test',
        'verr','verw','wait','wbinvd','xadd','xchg','xlat','xlatb','xor',
    }
    
    first_word = comment_lower.split()[0] if comment_lower else ""
    if first_word in mnemonics:
        return True
    
    # Also check for common patterns that look like instructions
    if re.match(r'(db|dw|dd)\s', comment_lower):
        return False  # It's a data declaration
    
    return False


def looks_like_string_data(bytes_data: bytes, comment: str) -> bool:
    """Heuristic: is this actually string/data, not code?"""
    # If bytes are mostly printable ASCII
    printable = sum(1 for b in bytes_data if 32 <= b <= 126)
    if len(bytes_data) >= 3 and printable >= len(bytes_data) * 0.7:
        return True
    
    # If comment contains common string fragments
    string_words = {'microsoft', 'windows', 'dos', 'insert', 'disk', 'drive',
                    'program', 'memory', 'error', 'file', 'path', 'version',
                    'copyright', 'inc', 'com', 'exe', 'sys', 'drv'}
    comment_lower = comment.lower()
    for word in string_words:
        if word in comment_lower:
            return True
    
    return False


def try_nasm_batch(instructions: list[tuple[int, bytes, str, str]]) -> list[tuple[int, str, bool]]:
    """
    Try a batch of instructions with NASM.
    Each item: (line_idx, expected_bytes, comment, full_line)
    Returns: list of (line_idx, replacement_line, success)
    """
    if not instructions:
        return []
    
    work_dir = TEMP / f"batch_{os.getpid()}_{threading.current_thread().name}_{time.time_ns()}"
    work_dir.mkdir(parents=True, exist_ok=True)
    
    # Build NASM source with multiple instructions
    asm_lines = ["BITS 16", ""]
    idx_map = {}  # maps instruction index in asm to (line_idx, expected_bytes, comment)
    
    for i, (line_idx, expected_bytes, comment, full_line) in enumerate(instructions):
        idx_map[len(asm_lines)] = (line_idx, expected_bytes, comment, full_line)
        asm_lines.append(f"    {comment}")
        # Add padding label to isolate instructions
        asm_lines.append(f"pad_after_{i}:")
    
    asm_path = work_dir / "test.asm"
    bin_path = work_dir / "test.bin"
    asm_path.write_text("\n".join(asm_lines), encoding="ascii")
    
    try:
        result = subprocess.run(
            [str(NASM), "-f", "bin", str(asm_path), "-o", str(bin_path)],
            capture_output=True, text=True, timeout=30
        )
        if result.returncode != 0 or not bin_path.exists():
            # NASM syntax error on batch - try individually
            results = []
            for line_idx, expected_bytes, comment, full_line in instructions:
                res = try_nasm_single(expected_bytes, comment)
                if res:
                    results.append((line_idx, res, True))
                else:
                    results.append((line_idx, full_line, False))
            return results
        
        built = bin_path.read_bytes()
        
        # Calculate offset for each instruction
        results = []
        for asm_idx, (line_idx, expected_bytes, comment, full_line) in idx_map.items():
            # Calculate where this instruction starts in the binary
            # This is tricky - we need to know the offset of each instruction
            # For now, we'll do a simpler approach: search for expected bytes
            # in the built binary at the expected position
            pass  # We'll handle this below
        
        # Simpler approach: just check if the full binary matches concatenated expected bytes
        all_expected = b"".join(expected_bytes for _, expected_bytes, _, _ in instructions)
        
        if built == all_expected:
            # All match! Return all as converted
            results = []
            for line_idx, expected_bytes, comment, full_line in instructions:
                # Determine format
                replacement = f"    {comment:40s} ; {' '.join(f'{b:02X}' for b in expected_bytes)}"
                results.append((line_idx, replacement, True))
            return results
        else:
            # Some don't match - try individually
            results = []
            for line_idx, expected_bytes, comment, full_line in instructions:
                res = try_nasm_single(expected_bytes, comment)
                if res:
                    results.append((line_idx, res, True))
                else:
                    results.append((line_idx, full_line, False))
            return results
            
    except Exception:
        # Fallback to individual
        results = []
        for line_idx, expected_bytes, comment, full_line in instructions:
            res = try_nasm_single(expected_bytes, comment)
            if res:
                results.append((line_idx, res, True))
            else:
                results.append((line_idx, full_line, False))
        return results
    finally:
        try:
            import shutil
            shutil.rmtree(work_dir)
        except:
            pass


def try_nasm_single(expected_bytes: bytes, comment: str) -> str | None:
    """Try a single instruction with NASM. Return replacement line if exact match."""
    work_dir = TEMP / f"single_{os.getpid()}_{threading.current_thread().name}_{time.time_ns()}"
    work_dir.mkdir(parents=True, exist_ok=True)
    
    try:
        asm_path = work_dir / "test.asm"
        bin_path = work_dir / "test.bin"
        
        asm_text = f"BITS 16\n    {comment}\n"
        asm_path.write_text(asm_text, encoding="ascii")
        
        result = subprocess.run(
            [str(NASM), "-f", "bin", str(asm_path), "-o", str(bin_path)],
            capture_output=True, text=True, timeout=10
        )
        
        if result.returncode != 0 or not bin_path.exists():
            return None
        
        built = bin_path.read_bytes()
        if built == expected_bytes:
            hex_str = " ".join(f"{b:02X}" for b in expected_bytes)
            return f"    {comment:40s} ; {hex_str}"
        
        return None
    except Exception:
        return None
    finally:
        try:
            import shutil
            shutil.rmtree(work_dir)
        except:
            pass


def process_file(seg_path: Path) -> tuple[int, int, int]:
    """Process a single .asm file. Returns (converted, failed, skipped)."""
    text = seg_path.read_text(encoding="ascii", errors="replace")
    lines = text.splitlines()
    
    # Check if this file has semantic db lines
    has_semantic = "Semantic" in text
    has_auto = "AUTO-GENERATED" in text
    
    if not has_semantic and not has_auto:
        return 0, 0, 0
    
    # For AUTO-GENERATED files, the db lines are actual data (strings, tables)
    # We only aggressively convert Semantic data files
    if has_auto and not has_semantic:
        # These are original format - already have mnemonics + byte comments
        # Only convert explicit db data lines if they have semantic comments
        pass  # We'll still try, but only for lines with meaningful comments
    
    converted = 0
    failed = 0
    skipped = 0
    
    # Batch process
    batch = []
    results = {}  # line_idx -> replacement
    
    for i, line in enumerate(lines):
        s = line.strip()
        if not s.startswith("db "):
            continue
        
        parsed = parse_db_line(s)
        if parsed is None:
            continue
        
        expected_bytes, comment = parsed
        
        if not comment:
            skipped += 1
            continue
        
        if not looks_like_instruction(comment):
            skipped += 1
            continue
        
        if looks_like_string_data(expected_bytes, comment):
            skipped += 1
            continue
        
        batch.append((i, expected_bytes, comment, line))
        
        # Process batch when full
        if len(batch) >= 20:
            batch_results = try_nasm_batch(batch)
            for line_idx, replacement, success in batch_results:
                if success:
                    results[line_idx] = replacement
                    converted += 1
                else:
                    failed += 1
            batch = []
    
    # Process remaining batch
    if batch:
        batch_results = try_nasm_batch(batch)
        for line_idx, replacement, success in batch_results:
            if success:
                results[line_idx] = replacement
                converted += 1
            else:
                failed += 1
    
    # Apply replacements
    if results:
        for line_idx, replacement in sorted(results.items()):
            lines[line_idx] = replacement
        
        # Update header if needed
        if "Semantic data" in lines[1] if len(lines) > 1 else False:
            if converted > 0:
                lines[1] = "; Semantic reconstruction - verified byte-exact"
        
        seg_path.write_text("\n".join(lines), encoding="ascii")
    
    return converted, failed, skipped


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
    
    files = []
    for f in SRC.rglob("*.asm"):
        if ".bak" in f.name or "_real" in f.name or ".c2" in f.name:
            continue
        text = f.read_text(encoding="ascii", errors="replace")
        if "db " in text:  # Only process files with db lines
            files.append(f)
    
    print(f"Found {len(files)} files with db lines to process")
    
    total_converted = 0
    total_failed = 0
    total_skipped = 0
    start = time.time()
    
    # Process files (single-threaded to avoid NASM conflicts, or limited threads)
    for i, f in enumerate(files):
        c, f_, s = process_file(f)
        total_converted += c
        total_failed += f_
        total_skipped += s
        
        if c > 0:
            print(f"[{i+1}/{len(files)}] {f.parent.name}/{f.name}: +{c} converted")
        
        if (i + 1) % 10 == 0:
            elapsed = time.time() - start
            print(f"  Progress: {i+1}/{len(files)} | Converted: {total_converted} | Failed: {total_failed} | Elapsed: {elapsed:.0f}s")
    
    print("\n" + "="*70)
    print(f"DONE: {len(files)} files")
    print(f"  Converted: {total_converted}")
    print(f"  Failed:    {total_failed}")
    print(f"  Skipped:   {total_skipped}")
    print(f"  Time: {time.time()-start:.0f}s")
    
    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
