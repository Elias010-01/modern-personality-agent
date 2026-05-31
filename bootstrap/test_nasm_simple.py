import subprocess
from pathlib import Path

NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
work = Path(r'C:\Users\Elias\temp_test_nasm')
work.mkdir(parents=True, exist_ok=True)

asm_path = work / 'test.asm'
bin_path = work / 'test.bin'

tests = [
    ('inc bx', '43'),
    ('dec cx', '49'),
    ('push di', '57'),
    ('pop sp', '5C'),
    ('cmp bl, byte [si + 0x31]', '3A5C31'),
    ('xor byte [bp + di], dh', '3033'),
    ('add byte [bx + si], al', '0000'),
    ('mov ax, bx', '89D8'),
    ('nop', '90'),
    ('clc', 'F8'),
]

for instr, expected in tests:
    asm_path.write_text(f'BITS 16\n    {instr}\n', encoding='ascii')
    r = subprocess.run([str(NASM), '-f', 'bin', str(asm_path), '-o', str(bin_path)],
                       capture_output=True, text=True, timeout=10)
    if r.returncode == 0 and bin_path.exists():
        built = bin_path.read_bytes().hex().upper()
        ok = built == expected.upper()
        print(f'{instr:40s} -> {built:10s} (expected {expected:10s}) {"OK" if ok else "DIFF"}')
    else:
        print(f'{instr:40s} -> ERROR: {r.stderr.strip()[:50]}')
