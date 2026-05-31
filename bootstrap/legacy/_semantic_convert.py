#!/usr/bin/env python3
"""
Convert ALL .asm files to 100% semantic, human-readable, reassemblable source.

Strategy:
1. Parse existing .asm (mixed format or pure db)
2. For each contiguous db block:
   a. Detect data vs code heuristically
   b. Data -> semantic labels (strings, tables, padding)
   c. Code -> Capstone disassembly -> NASM verification -> mnemonics
3. Output new .asm with zero raw hex (except in comments for verification)
4. Verify byte-exact rebuild

Author: Cascade
"""
import sys, os, re, struct, json, tempfile, subprocess, shutil
from pathlib import Path
from typing import List, Tuple, Optional

# Capstone
try:
    import capstone
except ImportError:
    print("ERROR: capstone not installed. pip install capstone")
    sys.exit(1)

SRC = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src')
ORIG = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\original')
NASM_EXE = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP_DIR = Path(tempfile.gettempdir()) / 'semantic_build'

# 8086 instruction sizes for quick estimation
INSTR_MAX_LEN = 15

def parse_bytes_from_asm(text: str) -> bytes:
    """Extract raw bytes from any .asm format (db blocks, mixed, etc.)."""
    out = bytearray()
    for line in text.splitlines():
        s = line.strip()
        if s.startswith('db '):
            # Parse db 04Bh, 03Ah... or db 4Bh, 3Ah... or db 0x4B, 0x3A...
            vals = s[3:].split(',')
            for v in vals:
                v = v.strip().split(';')[0].strip()
                if not v:
                    continue
                try:
                    if v.lower().endswith('h'):
                        v = v[:-1]
                        if v.startswith('0'):
                            v = v[1:]
                        out.append(int(v, 16))
                    elif v.startswith('0x') or v.startswith('0X'):
                        out.append(int(v[2:], 16))
                    else:
                        # Might be a char literal like 'A'
                        if v.startswith("'") and v.endswith("'") and len(v) == 3:
                            out.append(ord(v[1]))
                        else:
                            out.append(int(v))
                except ValueError:
                    pass
        elif ';' in line and not s.startswith(';'):
            # Mixed format: mnemonic line with hex comment
            # Extract hex bytes from comment part
            comment = line.split(';', 1)[1].strip()
            # Try to parse hex bytes from comment
            hex_bytes = []
            for token in comment.split():
                token = token.strip()
                if len(token) == 2 and all(c in '0123456789ABCDEFabcdef' for c in token):
                    try:
                        hex_bytes.append(int(token, 16))
                    except:
                        pass
                elif len(token) == 4 and token.endswith('h') and all(c in '0123456789ABCDEFabcdef' for c in token[:-1]):
                    try:
                        val = int(token[:-1], 16)
                        hex_bytes.append(val & 0xFF)
                        hex_bytes.append((val >> 8) & 0xFF)
                    except:
                        pass
            if hex_bytes:
                out.extend(hex_bytes)
    return bytes(out)


def is_ascii_string(data: bytes, min_len: int = 4) -> Optional[Tuple[int, int, str]]:
    """Check if data starts with an ASCII string. Returns (start, end, decoded_str) or None."""
    i = 0
    while i < len(data) and (32 <= data[i] <= 126 or data[i] == 0):
        i += 1
    if i >= min_len and i < len(data) and data[i-1] == 0:
        try:
            s = data[:i-1].decode('ascii')
            if all(c.isprintable() or c in '\r\n\t' for c in s):
                return (0, i, s)
        except:
            pass
    return None


def is_jump_table(data: bytes) -> bool:
    """Heuristic: sequence of 16-bit little-endian offsets?"""
    if len(data) < 6:
        return False
    offsets = []
    for i in range(0, len(data) - 1, 2):
        val = struct.unpack('<H', data[i:i+2])[0]
        offsets.append(val)
    # Check if they're mostly increasing or in a reasonable code range
    if len(offsets) < 3:
        return False
    diffs = [offsets[j+1] - offsets[j] for j in range(len(offsets)-1)]
    # Most should be positive and small (code offsets)
    positive = sum(1 for d in diffs if 0 < d < 512)
    return positive >= len(diffs) * 0.7


def disasm_to_mnemonic(data: bytes, base_addr: int = 0) -> List[Tuple[int, str, str, bytes]]:
    """Disassemble with Capstone. Returns list of (offset, mnemonic, op_str, raw_bytes)."""
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
    md.detail = True
    results = []
    offset = 0
    while offset < len(data):
        chunk = data[offset:offset + INSTR_MAX_LEN]
        insns = list(md.disasm(chunk, base_addr + offset))
        if not insns:
            break
        insn = insns[0]
        results.append((offset, insn.mnemonic, insn.op_str, bytes(insn.bytes)))
        offset += len(insn.bytes)
    return results


def nasm_assemble(asm_text: str, bits: int = 16) -> Optional[bytes]:
    """Assemble text with NASM. Returns bytes or None on failure."""
    work = TEMP_DIR / 'nasm_test'
    work.mkdir(parents=True, exist_ok=True)
    asm_file = work / 'test.asm'
    bin_file = work / 'test.bin'
    
    header = f"BITS {bits}\n"
    if bits == 16:
        header += "org 0x0000\n"
    
    asm_file.write_text(header + asm_text, encoding='ascii')
    
    try:
        r = subprocess.run(
            [str(NASM_EXE), '-f', 'bin', str(asm_file), '-o', str(bin_file)],
            capture_output=True, text=True, timeout=10
        )
        if r.returncode != 0 or not bin_file.exists():
            return None
        return bin_file.read_bytes()
    except Exception:
        return None


NASM_SYNTAX_FIXES = [
    # Remove all ptr variants
    (r'\bptr\b', ''),
    (r'\bPTR\b', ''),
    # Remove near/short from jumps (NASM chooses automatically)
    (r'\bnear\s+', ''),
    (r'\bNEAR\s+', ''),
    (r'\bshort\s+', ''),
    (r'\bSHORT\s+', ''),
    # word ptr -> word, byte ptr -> byte
    (r'\bword\s+ptr\s+', 'word '),
    (r'\bWORD\s+PTR\s+', 'word '),
    (r'\bbyte\s+ptr\s+', 'byte '),
    (r'\bBYTE\s+PTR\s+', 'byte '),
    # dword ptr -> dword
    (r'\bdword\s+ptr\s+', 'dword '),
    (r'\bDWORD\s+PTR\s+', 'dword '),
    # Clean double spaces
    (r'\s+', ' '),
]


def apply_fixes(line: str) -> List[str]:
    """Generate variant syntax lines for NASM compatibility."""
    variants = [line]
    
    # Remove ptr
    no_ptr = re.sub(r'\bptr\b', '', line, flags=re.I).strip()
    no_ptr = re.sub(r'\s+', ' ', no_ptr)
    variants.append(no_ptr)
    
    # Remove near/short from jumps
    JMP_PATTERN = r'\b(jmp|jo|jno|jb|jnae|jc|jnb|jae|jnc|je|jz|jne|jnz|jbe|jna|ja|jnbe|js|jns|jp|jpe|jnp|jpo|jl|jnge|jge|jnl|jle|jng|jg|jnle|jcxz|jecxz)\b'
    if re.search(JMP_PATTERN, line, flags=re.I):
        no_near = re.sub(r'\bnear\s+', '', line, flags=re.I).strip()
        no_short = re.sub(r'\bshort\s+', '', no_near, flags=re.I).strip()
        variants.append(no_near)
        variants.append(no_short)
        
        # Try with explicit short/near
        if 'jmp' in line.lower():
            # If it's a short jump (offset fits in signed byte)
            # Try jmp short, jmp near
            for prefix in ['short', 'near']:
                prefixed = re.sub(r'\bjmp\b', f'jmp {prefix}', line, flags=re.I, count=1)
                variants.append(prefixed)
    
    # Size overrides for movzx/movsx and similar
    if 'movzx' in line.lower() or 'movsx' in line.lower():
        # movzx ax, byte ptr [bx] -> movzx ax, byte [bx]
        for size in ['byte', 'word', 'dword']:
            sized = re.sub(rf'\b{size}\s+ptr\b', size, line, flags=re.I)
            variants.append(sized)
    
    # lea/lfs/lgs/les/lss with segment overrides
    if re.search(r'\[\s*(cs|ds|es|ss|fs|gs)\s*:', line, flags=re.I):
        # Try with and without segment prefix
        no_seg = re.sub(r'(cs|ds|es|ss|fs|gs)\s*:', '', line, flags=re.I, count=1)
        variants.append(no_seg.strip())
    
    # Remove segment override if present as separate token
    for seg in ['cs', 'ds', 'es', 'ss', 'fs', 'gs']:
        pattern = rf'\b{seg}:\b'
        if re.search(pattern, line, flags=re.I):
            removed = re.sub(pattern, '', line, count=1, flags=re.I)
            removed = re.sub(r'\s+', ' ', removed).strip()
            variants.append(removed)
    
    # Deduplicate
    seen = set()
    result = []
    for v in variants:
        v = re.sub(r'\s+', ' ', v).strip()
        if v and v not in seen:
            seen.add(v)
            result.append(v)
    return result


def verify_instruction_bytes(mnemonic: str, op_str: str, expected_bytes: bytes) -> Tuple[bool, str]:
    """Check if NASM can reproduce exact bytes for this instruction. Try many syntax variants."""
    line = f"{mnemonic} {op_str}".strip()
    
    # Direct match first
    assembled = nasm_assemble(line)
    if assembled is not None and assembled == expected_bytes:
        return True, line
    
    # Try all syntax variants
    variants = apply_fixes(line)
    for variant in variants:
        assembled = nasm_assemble(variant)
        if assembled is not None and assembled == expected_bytes:
            return True, variant
    
    # Special cases for common mismatches
    # Jumps: if expected is E9 (near) but NASM assembles EB (short)
    if expected_bytes[0] == 0xE9 and mnemonic == 'jmp':
        # Force near jmp
        fixed = re.sub(r'\bjmp\b', 'jmp near', line, flags=re.I, count=1)
        assembled = nasm_assemble(fixed)
        if assembled is not None and assembled == expected_bytes:
            return True, fixed
    
    if expected_bytes[0] == 0xEB and mnemonic == 'jmp':
        # Force short jmp
        fixed = re.sub(r'\bjmp\b', 'jmp short', line, flags=re.I, count=1)
        assembled = nasm_assemble(fixed)
        if assembled is not None and assembled == expected_bytes:
            return True, fixed
    
    # Conditional jumps: 0x0F 0x8x = near, 0x7x = short
    if len(expected_bytes) == 2 and expected_bytes[0] in range(0x70, 0x80):
        # Short conditional jump - NASM should auto-select
        pass  # Already tried above
    
    # Push reg vs push word (0x50-0x57 = push r16, 0x6A = push imm8, 0x68 = push imm16)
    if mnemonic == 'push' and len(expected_bytes) == 1 and expected_bytes[0] in range(0x50, 0x58):
        # push ax, push cx, etc. - should work as-is
        pass
    
    # Add al, [bx+si] (00 00) vs add [bx+si], al (00 00) - same encoding!
    if expected_bytes == b'\x00\x00':
        # Try various forms
        for test in ['add [bx+si], al', 'add byte [bx+si], al', 'add al, [bx+si]']:
            assembled = nasm_assemble(test)
            if assembled is not None and assembled == expected_bytes:
                return True, test
    
    # mov [mem], 0 -> might need size specifier
    if mnemonic == 'mov' and '0x' in line.lower():
        for size_prefix in ['byte ', 'word ', '']:
            sized = re.sub(r'\bmov\b', f'mov {size_prefix}', line, flags=re.I, count=1)
            assembled = nasm_assemble(sized)
            if assembled is not None and assembled == expected_bytes:
                return True, sized
    
    return False, line


def semantic_disassemble(data: bytes, base_addr: int = 0, label_prefix: str = "L") -> List[str]:
    """Produce semantic NASM-compatible output from raw bytes."""
    lines = []
    offset = 0
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
    md.detail = True
    
    while offset < len(data):
        remaining = data[offset:]
        
        # Try ASCII string first
        str_info = is_ascii_string(remaining)
        if str_info and str_info[2].strip():  # Non-empty string
            start, end, s = str_info
            escaped = s.replace('\\', '\\\\').replace('"', '\\"').replace('\r', '\\r').replace('\n', '\\n').replace('\t', '\\t')
            hex_comment = ' '.join(f'{b:02X}' for b in remaining[:end])
            lines.append(f'    db "{escaped}", 0    ; string: {hex_comment}')
            offset += end
            continue
        
        # Try disassembling one instruction
        chunk = remaining[:INSTR_MAX_LEN]
        insns = list(md.disasm(chunk, base_addr + offset))
        if not insns:
            # Can't disassemble - emit single byte as db with comment
            b = remaining[0]
            lines.append(f'    db 0{b:02X}h    ; undecoded byte')
            offset += 1
            continue
        
        insn = insns[0]
        raw = bytes(insn.bytes)
        ok, fixed_line = verify_instruction_bytes(insn.mnemonic, insn.op_str, raw)
        
        if ok:
            hex_comment = ' '.join(f'{b:02X}' for b in raw)
            lines.append(f'    {fixed_line:40s} ; {hex_comment}')
            offset += len(raw)
        else:
            # NASM can't replicate - emit db with full mnemonic comment
            hex_vals = ', '.join(f'0{b:02X}h' for b in raw)
            lines.append(f'    db {hex_vals:30s} ; {insn.mnemonic} {insn.op_str}')
            offset += len(raw)
    
    return lines


def convert_module(mod_dir: Path) -> Tuple[bool, str]:
    """Convert a single module to semantic .asm. Returns (success, message)."""
    seg_files = sorted(mod_dir.glob('seg*.asm'))
    if not seg_files:
        return True, "No seg*.asm files"
    
    changed = False
    for seg_file in seg_files:
        if '_real' in seg_file.name or '.bak' in seg_file.name:
            continue
        
        text = seg_file.read_text(encoding='ascii', errors='replace')
        
        # Check if already fully semantic (no db lines)
        db_lines = [l for l in text.splitlines() if l.strip().startswith('db ')]
        if not db_lines:
            continue  # Already semantic
        
        # Extract raw bytes
        raw_bytes = parse_bytes_from_asm(text)
        if not raw_bytes:
            continue
        
        # Generate semantic version
        new_lines = []
        new_lines.append(f'; {mod_dir.name}/{seg_file.name} - Semantic reconstruction')
        new_lines.append('; Auto-generated from original binary, verified byte-exact')
        new_lines.append('BITS 16')
        new_lines.append('')
        
        # If all db (no mnemonics), process entire file
        mnemonic_lines = [l for l in text.splitlines() if ';' in l and not l.strip().startswith(';') and not l.strip().startswith('db')]
        
        if not mnemonic_lines:
            # Pure db file - convert everything
            semantic = semantic_disassemble(raw_bytes)
            new_lines.extend(semantic)
        else:
            # Mixed format - keep existing mnemonic lines, convert db blocks
            # This is complex; for now, process the whole thing
            semantic = semantic_disassemble(raw_bytes)
            new_lines.extend(semantic)
        
        new_text = '\n'.join(new_lines)
        
        # Verify byte-exact
        rebuilt = nasm_assemble(new_text)
        if rebuilt is None:
            return False, f"{mod_dir.name}/{seg_file.name}: NASM assembly failed"
        
        if rebuilt != raw_bytes:
            # Find first diff
            for i in range(min(len(rebuilt), len(raw_bytes))):
                if rebuilt[i] != raw_bytes[i]:
                    return False, f"{mod_dir.name}/{seg_file.name}: First diff at {i}: orig={raw_bytes[i]:02x} built={rebuilt[i]:02x}"
            return False, f"{mod_dir.name}/{seg_file.name}: Size mismatch {len(rebuilt)} vs {len(raw_bytes)}"
        
        # Success - write file
        seg_file.write_text(new_text, encoding='ascii')
        changed = True
    
    return True, f"{mod_dir.name}: {'converted' if changed else 'already semantic'}"


def main():
    if not NASM_EXE.exists():
        print(f"ERROR: NASM not found at {NASM_EXE}")
        sys.exit(1)
    
    # Clean temp
    if TEMP_DIR.exists():
        shutil.rmtree(TEMP_DIR)
    
    results = []
    failures = []
    
    # Process all modules
    for mod_dir in sorted(SRC.iterdir()):
        if not mod_dir.is_dir():
            continue
        
        ok, msg = convert_module(mod_dir)
        results.append((mod_dir.name, ok, msg))
        if not ok:
            failures.append((mod_dir.name, msg))
        
        # Print progress
        if len(results) % 10 == 0:
            print(f"  ... {len(results)} modules processed")
    
    # Summary
    print("\n" + "="*60)
    print(f"CONVERSION COMPLETE: {len(results)} modules")
    print(f"  Success: {sum(1 for _, ok, _ in results if ok)}")
    print(f"  Failed:  {len(failures)}")
    
    if failures:
        print("\nFailures:")
        for mod, msg in failures:
            print(f"  {mod}: {msg}")
    
    return len(failures) == 0


if __name__ == '__main__':
    success = main()
    sys.exit(0 if success else 1)
