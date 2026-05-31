#!/usr/bin/env python3
"""
AGGRESSIVE CONVERSION: Try multiple NASM syntax variants for each db line.
"""
import sys, os, re, subprocess, tempfile
from pathlib import Path

SRC = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src')
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')

def nasm_test(line: str, expected: bytes) -> bool:
    work = Path(tempfile.gettempdir()) / f'nasm_aggr_{os.getpid()}'
    work.mkdir(exist_ok=True)
    asm_f = work / 't.asm'
    bin_f = work / 't.bin'
    asm_f.write_text(f'BITS 16\norg 0\n{line}\n', encoding='ascii')
    try:
        r = subprocess.run([str(NASM), '-f', 'bin', str(asm_f), '-o', str(bin_f)],
                         capture_output=True, text=True, timeout=5)
        if r.returncode == 0 and bin_f.exists():
            return bin_f.read_bytes() == expected
    except:
        pass
    return False

def try_variants(comment: str, expected: bytes) -> str:
    """Try multiple syntax variants and return the one that matches."""
    if nasm_test(comment, expected):
        return comment
    
    variants = set()
    
    # jmp variants
    if 'jmp' in comment.lower():
        variants.add(re.sub(r'\bjmp\b', 'jmp near', comment, flags=re.I, count=1))
        variants.add(re.sub(r'\bjmp\b', 'jmp short', comment, flags=re.I, count=1))
        variants.add(re.sub(r'\bnear\s+', '', comment, flags=re.I))
        variants.add(re.sub(r'\bshort\s+', '', comment, flags=re.I))
    
    # movzx/movsx variants
    if 'movzx' in comment.lower() or 'movsx' in comment.lower():
        for sz in ['byte', 'word', 'dword']:
            variants.add(re.sub(rf'\b{sz}\s+ptr\b', sz, comment, flags=re.I))
            variants.add(re.sub(rf'\b{sz}\b', f'{sz} ptr', comment, flags=re.I))
    
    # Remove ptr
    no_ptr = re.sub(r'\bptr\b', '', comment, flags=re.I)
    no_ptr = re.sub(r'\s+', ' ', no_ptr).strip()
    variants.add(no_ptr)
    
    # Test all variants
    for v in variants:
        if v and v != comment and nasm_test(v, expected):
            return v
    
    return None

def convert_file(seg_path: Path) -> tuple:
    text = seg_path.read_text(encoding='ascii', errors='replace')
    
    if 'Semantic' not in text:
        return True, "not semantic", 0, 0
    
    lines = text.splitlines()
    out_lines = lines[:3]
    converted = 0
    kept = 0
    
    for line in lines[3:]:
        line = line.rstrip()
        if not line.strip().startswith('db '):
            out_lines.append(line)
            continue
        
        if ';' not in line:
            out_lines.append(line)
            kept += 1
            continue
        
        parts = line.split(';', 1)
        db_part = parts[0].strip()
        comment = parts[1].strip()
        
        hex_vals = []
        for v in db_part[3:].split(','):
            v = v.strip()
            if not v:
                continue
            if v.lower().endswith('h'):
                v = v[:-1]
                if v.startswith('0'):
                    v = v[1:]
                hex_vals.append(int(v, 16))
        
        if not hex_vals:
            out_lines.append(line)
            kept += 1
            continue
        
        expected = bytes(hex_vals)
        hex_c = ' '.join(f'{b:02X}' for b in expected)
        
        fixed = try_variants(comment, expected)
        if fixed:
            out_lines.append(f'    {fixed:40s} ; {hex_c}')
            converted += 1
        else:
            out_lines.append(line)
            kept += 1
    
    seg_path.write_text('\n'.join(out_lines), encoding='ascii')
    return True, f"converted={converted} kept={kept}", converted, kept

def main():
    if not NASM.exists():
        print("ERROR: NASM not found")
        return 1
    
    files = []
    for f in SRC.rglob('seg*.asm'):
        if '.bak' in f.name or '_real' in f.name:
            continue
        text = f.read_text(encoding='ascii', errors='replace')
        if 'Semantic' in text:
            files.append(f)
    
    print(f"Processing {len(files)} semantic files...")
    
    total_converted = 0
    total_kept = 0
    
    for i, f in enumerate(files):
        ok, msg, conv, kept = convert_file(f)
        total_converted += conv
        total_kept += kept
        if conv > 0:
            print(f"[{i+1}/{len(files)}] {f.parent.name:20s}/{f.name:12s} | {msg}")
    
    total = total_converted + total_kept
    print(f"\nDONE: {len(files)} files")
    if total > 0:
        print(f"  Converted: {total_converted} ({total_converted/total*100:.1f}%)")
        print(f"  Kept db:   {total_kept} ({total_kept/total*100:.1f}%)")
    
    return 0

if __name__ == '__main__':
    sys.exit(main())
