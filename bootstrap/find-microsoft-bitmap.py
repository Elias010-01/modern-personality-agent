#!/usr/bin/env python3
"""
find-microsoft-bitmap.py - Localiza el bitmap del 'Microsoft' grande
del splash de Windows 1.03 buscando en TODOS los ficheros del IMG y
del proyecto.

Estrategia:
  1. Buscar magic numbers de bitmaps Windows (BM, BA, BC...)
  2. Buscar runs largos de bytes binarios (probable raw bitmap)
  3. Buscar referencias a 'LOGO' / 'WINLOGO' / 'splash'
  4. Comparar entropia entre regiones binarias
"""
import re
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
IMG = ROOT / "runtime" / "win103-built.img.bak"

tmp = Path("/tmp/find_bitmap")
tmp.mkdir(exist_ok=True)


def extract_all_from_img(img: Path):
    """Extrae todos los ficheros del IMG a tmp/"""
    out = subprocess.check_output(["mdir", "-/", "-b", "-i", str(img), "::"]).decode()
    files = [l.strip().lstrip("::/").strip() for l in out.splitlines()
             if l.strip() and not l.strip().endswith("/")]
    extracted = []
    for fname in files:
        safe = fname.replace("/", "_").replace("\\", "_").replace(" ", "_")
        dst = tmp / safe
        try:
            subprocess.run(["mcopy", "-i", str(img), "-o", f"::{fname}",
                            str(dst)], check=True, capture_output=True)
            extracted.append((fname, dst))
        except subprocess.CalledProcessError:
            pass
    return extracted


def find_long_binary_runs(data: bytes, min_len: int = 200):
    """Encuentra runs de bytes 'binarios' (no ASCII imprimibles) consecutivos."""
    runs = []
    in_run = False
    start = 0
    for i, b in enumerate(data):
        is_printable = 0x20 <= b <= 0x7E or b in (0x0A, 0x0D, 0x09)
        if not is_printable:
            if not in_run:
                in_run = True
                start = i
        else:
            if in_run:
                if i - start >= min_len:
                    runs.append((start, i - start))
                in_run = False
    if in_run and len(data) - start >= min_len:
        runs.append((start, len(data) - start))
    return runs


# Heuristic: bitmap rasterized para "Microsoft" en una fuente grande
# (digamos 32 px alto, 8 px ancho per char, 9 chars + espacio + 7 chars = 17 chars)
# 32 * 17 * 8 / 8 = 544 bytes minimo
# Buscamos runs DE PINTA REGULAR sugiriendo formato bitmap.

print("=" * 80)
print("Buscando candidatos a bitmap del 'Microsoft' grande")
print("=" * 80)

extracted = extract_all_from_img(IMG)
for fname, fpath in extracted:
    data = fpath.read_bytes()
    if len(data) < 200:
        continue
    runs = find_long_binary_runs(data, min_len=400)
    if runs:
        print(f"\n[{fname}] ({len(data)} bytes)")
        for start, length in runs:
            end = start + length
            # Calcular entropia simple (porcentaje de zeros + 0xFFs)
            chunk = data[start:end]
            zeros = chunk.count(0)
            ffs = chunk.count(0xFF)
            other = length - zeros - ffs
            print(f"  blob @ 0x{start:06X} len={length:5d} "
                  f"zeros={zeros*100//length}% FFs={ffs*100//length}% other={other*100//length}%")

# Buscar magic numbers de bitmap Windows
print("\n" + "=" * 80)
print("Magic numbers de bitmap")
print("=" * 80)
BITMAP_MAGICS = [
    (b"BM", "BMP file header"),
    (b"BA", "BMP array"),
    (b"\x00\x00\x01\x00", "ICO header"),
    (b"\x00\x00\x02\x00", "CUR cursor header"),
]
for fname, fpath in extracted:
    data = fpath.read_bytes()
    for magic, desc in BITMAP_MAGICS:
        # Solo magics al inicio de file o despues de un blob
        for m in re.finditer(re.escape(magic), data):
            # Heuristica simple: si los siguientes 4 bytes parecen un size razonable
            if m.end() + 4 <= len(data):
                size = int.from_bytes(data[m.end():m.end()+4], "little")
                if 200 < size < 50000:
                    print(f"  [{fname}] {desc} @ 0x{m.start():X} (claim size {size})")

# Buscar referencias a 'LOGO', 'WINLOGO', etc
print("\n" + "=" * 80)
print("Referencias a LOGO/etc")
print("=" * 80)
for fname, fpath in extracted:
    data = fpath.read_bytes()
    for needle in [b"LOGO", b"WINLOGO", b"SPLASH", b"BANNER"]:
        for m in re.finditer(re.escape(needle), data):
            print(f"  [{fname}] '{needle.decode()}' @ 0x{m.start():X}")
