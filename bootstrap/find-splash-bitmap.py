#!/usr/bin/env python3
"""
Busca el bitmap del 'Microsoft' grande del splash de Windows 1.03.

Estrategia mas focalizada:
  1. WIN100.BIN tiene el runtime con kernel/gdi/user; puede contener
     bitmaps embebidos para splash.
  2. Patron de bitmap 1bpp para 'Microsoft' en EGA: ancho 17-25 chars,
     altura 16-40 px. Tamano del bitmap: 200-1500 bytes.
  3. Caracteristicas de un raster de fuente grande:
     - Bytes 0x00 alternando con bytes que tienen pixels (0x80, 0xC0, 0xE0...)
     - Estructura regular (mismo ancho de fila)
     - Si es 1bpp 640x32 logo: 640/8 = 80 bytes por fila * 32 = 2560 bytes
     - Si es 1bpp 320x16: 40*16 = 640 bytes

  Buscamos blobs largos con perfil de bitmap.
"""
import re
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TMP = Path("/tmp/splash_bitmap")
TMP.mkdir(exist_ok=True)


def extract(img, fname, out):
    subprocess.run(["mcopy", "-i", str(img), "-o", f"::{fname}", str(out)],
                   check=True, capture_output=True)


def find_bitmap_candidates(data: bytes, label: str):
    """Busca blobs binarios con patron de bitmap (alta densidad de bits,
    estructura regular)."""
    candidates = []
    # Sliding window: ventanas de tamano fijo, mira si tienen mix de 0xFF y 0x00
    # (= bitmap monocromo)
    WINDOW = 256
    STEP = 64
    for off in range(0, len(data) - WINDOW, STEP):
        chunk = data[off:off + WINDOW]
        zeros = chunk.count(0)
        # Bitmaps 1bpp tienen mucho 0x00 (fondo) y patrones repetitivos
        # de bytes "con bits encendidos" en zonas concretas.
        # Heuristica: 30-90% zeros, resto con valores != 0xFF puro
        nonzero = WINDOW - zeros
        if nonzero < 20:
            continue
        if zeros / WINDOW < 0.20 or zeros / WINDOW > 0.95:
            continue
        # Penalizar si tiene muchos chars ASCII (= probablemente texto)
        ascii_chars = sum(1 for b in chunk if 0x20 <= b <= 0x7E)
        if ascii_chars > WINDOW * 0.6:
            continue
        # Bonus si los bytes no-cero tienen "shape" de bitmap (bits agrupados)
        # Contar bytes que parecen "pixels": 0x80, 0xC0, 0xE0, 0xF0, 0xF8, 0xFC, 0xFE, 0xFF
        # y sus reverses
        bitmap_bytes = sum(1 for b in chunk
                          if b in (0x80, 0xC0, 0xE0, 0xF0, 0xF8, 0xFC, 0xFE, 0xFF,
                                   0x01, 0x03, 0x07, 0x0F, 0x1F, 0x3F, 0x7F))
        if bitmap_bytes < 5:
            continue
        candidates.append((off, zeros / WINDOW, nonzero, bitmap_bytes))
    # Coalesce consecutive
    coalesced = []
    if candidates:
        cur_start = candidates[0][0]
        cur_end = candidates[0][0] + WINDOW
        for off, zr, nz, bm in candidates[1:]:
            if off <= cur_end + STEP:
                cur_end = off + WINDOW
            else:
                if cur_end - cur_start >= 400:
                    coalesced.append((cur_start, cur_end - cur_start))
                cur_start = off
                cur_end = off + WINDOW
        if cur_end - cur_start >= 400:
            coalesced.append((cur_start, cur_end - cur_start))
    return coalesced


# Ficheros candidatos a tener el splash bitmap
TARGETS = [
    "WIN.COM",
    "WIN100.BIN",
    "WIN100.OVL",
    "WINOLDAP.MOD",
    "WINOLDAP.GRB",
    # Los keymap/printer drivers no tienen splash
]

img = ROOT / "runtime" / "win103-built.img.bak"
for tgt in TARGETS:
    try:
        out = TMP / tgt
        extract(img, tgt, out)
    except subprocess.CalledProcessError:
        print(f"  [SKIP] {tgt} no encontrado en IMG")
        continue
    data = out.read_bytes()
    cands = find_bitmap_candidates(data, tgt)
    if cands:
        print(f"\n[{tgt}] {len(data)}B - candidatos a bitmap:")
        for off, ln in cands:
            chunk = data[off:off + ln]
            zeros = chunk.count(0)
            print(f"  blob @ 0x{off:06X} len={ln:5d}  "
                  f"({zeros*100//ln}% zeros)")
            # Mostrar primeros 64 bytes en hex
            print(f"    head: {data[off:off+32].hex()}")
            # Y si el blob es largo, una linea del medio
            if ln > 200:
                mid = off + ln // 2
                print(f"    mid:  {data[mid:mid+32].hex()}")
    else:
        print(f"\n[{tgt}] {len(data)}B - sin candidatos claros")
