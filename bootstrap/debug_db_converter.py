from pathlib import Path
import subprocess

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')

# Pick a specific line from WIN100_OVL/seg1.asm
file = REPO / 'src' / 'WIN100_OVL' / 'seg1.asm'
text = file.read_text(encoding='ascii', errors='replace')
lines = text.splitlines()

# Find first 5 db lines with simple instructions
found = 0
for line in lines:
    s = line.strip()
    if not s.startswith('db '):
        continue
    if ';' not in s:
        continue
    comment = s.split(';', 1)[1].strip()
    first_word = comment.split()[0].lower() if comment else ""
    
    # Only test simple instructions
    safe = {'inc', 'dec', 'push', 'pop', 'nop', 'clc', 'stc', 'cli', 'sti'}
    if first_word not in safe:
        continue
    
    # Parse bytes
    db_part = s[3:].split(';')[0].strip()
    hex_vals = []
    for v in db_part.split(','):
        v = v.strip()
        if not v: continue
        vl = v.lower()
        if vl.endswith('h'):
            v = v[:-1]
            if v.startswith('0'): v = v[1:]
            try: hex_vals.append(int(v, 16))
            except: pass
    
    expected = bytes(hex_vals)
    
    # Test with NASM
    work = Path(r'C:\Users\Elias\temp_debug')
    work.mkdir(parents=True, exist_ok=True)
    asm_path = work / 'test.asm'
    bin_path = work / 'test.bin'
    asm_path.write_text(f'BITS 16\n    {comment}\n', encoding='ascii')
    r = subprocess.run([str(NASM), '-f', 'bin', str(asm_path), '-o', str(bin_path)],
                       capture_output=True, text=True, timeout=10)
    
    if r.returncode == 0 and bin_path.exists():
        built = bin_path.read_bytes()
        match = built == expected
        print(f'Line: {s[:70]}')
        print(f'  Expected: {expected.hex()}')
        print(f'  Built:    {built.hex()}')
        print(f'  Match:    {match}')
        print()
    else:
        print(f'Line: {s[:70]}')
        print(f'  NASM ERROR: {r.stderr.strip()[:60]}')
        print()
    
    found += 1
    if found >= 5:
        break
