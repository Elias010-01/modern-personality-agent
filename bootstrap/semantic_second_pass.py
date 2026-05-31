#!/usr/bin/env python3
"""
SECOND PASS: Convert semantic db files to mixed format (mnemonics + db fallback).
For each db line with a semantic comment, test if NASM can reproduce exact bytes.
If yes -> convert to mnemonic. If no -> keep as db.
"""
import sys, os, re, subprocess, tempfile
from pathlib import Path

SRC = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src')
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')

def nasm_test(line: str, expected: bytes) -> bool:
    """Test if NASM can assemble a single line to exact bytes."""
    work = Path(tempfile.gettempdir()) / f'nasm_test_{os.getpid()}'
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

def convert_file(seg_path: Path) -> tuple:
    text = seg_path.read_text(encoding='ascii', errors='replace')
    
    # Only process semantic db files
    if 'Semantic data - verified byte-exact' not in text and 'Semantic reconstruction - verified byte-exact' not in text:
        return True, "not semantic", 0, 0
    
    lines = text.splitlines()
    out_lines = lines[:3]  # Keep header (including BITS 16)
    
    converted = 0
    kept_db = 0
    
    for line in lines[3:]:
        line = line.rstrip()
        if not line.strip().startswith('db '):
            out_lines.append(line)
            continue
        
        # Parse db line: "    db 000h, 000h                     ; add byte [bx + si], al"
        if ';' not in line:
            out_lines.append(line)
            kept_db += 1
            continue
        
        parts = line.split(';', 1)
        db_part = parts[0].strip()
        comment = parts[1].strip()
        
        # Extract expected bytes
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
            kept_db += 1
            continue
        
        expected = bytes(hex_vals)
        hex_c = ' '.join(f'{b:02X}' for b in expected)
        
        # Try to assemble comment with NASM
        if nasm_test(comment, expected):
            out_lines.append(f'    {comment:40s} ; {hex_c}')
            converted += 1
        else:
            out_lines.append(line)
            kept_db += 1
    
    # Write back
    new_text = '\n'.join(out_lines)
    seg_path.write_text(new_text, encoding='ascii')
    
    return True, f"converted={converted} kept_db={kept_db}", converted, kept_db

def main():
    if not NASM.exists():
        print("ERROR: NASM not found")
        return 1
    
    files = []
    for f in SRC.rglob('seg*.asm'):
        if '.bak' in f.name or '_real' in f.name:
            continue
        text = f.read_text(encoding='ascii', errors='replace')
        if 'Semantic data - verified byte-exact' in text or 'Semantic reconstruction - verified byte-exact' in text:
            files.append(f)
    
    print(f"Processing {len(files)} semantic files...")
    
    total_converted = 0
    total_kept = 0
    start = 0
    
    for i, f in enumerate(files):
        ok, msg, conv, kept = convert_file(f)
        total_converted += conv
        total_kept += kept
        print(f"[{i+1}/{len(files)}] {f.parent.name:20s}/{f.name:12s} | {msg}")
    
    total = total_converted + total_kept
    print(f"\nDONE: {len(files)} files")
    print(f"  Converted to mnemonics: {total_converted} ({total_converted/total*100:.1f}%)")
    print(f"  Kept as db:             {total_kept} ({total_kept/total*100:.1f}%)")
    
    return 0

if __name__ == '__main__':
    sys.exit(main())
