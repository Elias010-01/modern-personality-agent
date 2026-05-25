#!/usr/bin/env python3
"""
import-bitmap-bmp.py <ruta-al-bmp-editado>

Lee el BMP editado por el usuario y lo inyecta de vuelta en WIN.COM
@ 0x08C0, preservando los 64 bytes de trailer del blob original.

Tras la inyeccion:
  1. Actualiza mods/menubar/img/WIN.COM con el nuevo bitmap
  2. (opcional) Re-aplica el mod
"""
import struct
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
BITMAP_OFFSET = 0x08C0
BITMAP_LEN = 2560
TRAILER_LEN = 64

if len(sys.argv) < 2:
    print("Uso: import-bitmap-bmp.py <ruta-al-bmp>")
    sys.exit(1)

bmp_path = Path(sys.argv[1])
if not bmp_path.exists():
    print(f"ERROR: {bmp_path} no existe")
    sys.exit(1)

bmp = bmp_path.read_bytes()

# Parse BMP headers
if bmp[:2] != b"BM":
    print("ERROR: no es un BMP (signature 'BM' no encontrada)")
    sys.exit(1)

data_offset = struct.unpack_from("<I", bmp, 0x0A)[0]
bi_size = struct.unpack_from("<I", bmp, 0x0E)[0]
width = struct.unpack_from("<i", bmp, 0x12)[0]
height = struct.unpack_from("<i", bmp, 0x16)[0]
bpp = struct.unpack_from("<H", bmp, 0x1C)[0]

print(f"BMP: {width}x{abs(height)}, {bpp} bpp, data @ 0x{data_offset:X}")

if bpp != 1:
    print(f"ERROR: BMP debe ser 1 bpp monocromo (es {bpp})")
    print("En Paint: Guardar como > Mapa de bits monocromo")
    sys.exit(1)

# Verificar dimensiones esperadas
abs_h = abs(height)
total_pixels = width * abs_h
if total_pixels != 640 * 32 and total_pixels != 320 * 64:
    print(f"WARN: dimensiones inusuales ({width}x{abs_h}). "
          f"Esperaba 640x32 o 320x64. Continuo igual.")

# Extraer pixel data (BMP es bottom-up si height positivo, top-down si negativo)
row_bytes_unpadded = (width + 7) // 8
row_padded = (row_bytes_unpadded + 3) & ~3
pixel_data_padded = bmp[data_offset:data_offset + row_padded * abs_h]

# Reconstruir sin padding
rows = []
for r in range(abs_h):
    row = pixel_data_padded[r * row_padded:(r + 1) * row_padded][:row_bytes_unpadded]
    rows.append(row)

if height > 0:
    # bottom-up -> invertir
    rows.reverse()

# IMPORTANTE: chequear si los colores estan invertidos
# Paint a veces guarda con color 0 = blanco y color 1 = negro.
# Detectamos mirando la palette y comparando con la convencion del bitmap original.
# Color 0 byte 0..3 = BGRA
pal_off = 14 + bi_size  # despues de BITMAPINFOHEADER
color0_brightness = sum(bmp[pal_off:pal_off + 3])
color1_brightness = sum(bmp[pal_off + 4:pal_off + 7])
if color0_brightness > color1_brightness:
    print("INFO: paleta invertida (color 0 mas claro que color 1), invirtiendo bits")
    rows = [bytes(b ^ 0xFF for b in row) for row in rows]

new_bitmap = b"".join(rows)

# Si el bitmap es 320x64, hay que "re-empaquetar" para encajar en 2560 bytes
# como 640x32 lo hace de forma natural (640px = 80 bytes/row * 32 = 2560)
# Para 320x64: 40 bytes/row * 64 = 2560. Mismos bytes, distinta interpretacion.
if len(new_bitmap) != BITMAP_LEN:
    print(f"ERROR: bitmap data tras parse = {len(new_bitmap)}B, esperaba {BITMAP_LEN}B")
    sys.exit(1)

# Extraer WIN.COM original (desde IMG bak)
img_bak = ROOT / "runtime" / "win103-built.img.bak"
tmp = Path("/tmp/import_win.com")
subprocess.run(["mcopy", "-i", str(img_bak), "-o", "::WIN.COM", str(tmp)],
               check=True)
win_com = bytearray(tmp.read_bytes())

# Inyectar nuevo bitmap (preservando trailer)
win_com[BITMAP_OFFSET:BITMAP_OFFSET + BITMAP_LEN] = new_bitmap
# Los 64 bytes despues (trailer) se preservan automaticamente porque
# solo escribimos en el rango del bitmap.

print(f"Bitmap inyectado en WIN.COM @ 0x{BITMAP_OFFSET:X}")

# Guardar en mods/menubar/img/WIN.COM
# (manteniendo los otros cambios de texto del mod)
# El mod menubar ya hace text replacements; aqui solo cambiamos el bitmap.
mod_win_com = ROOT / "mods" / "menubar" / "img" / "WIN.COM"
if mod_win_com.exists():
    # Cargar el WIN.COM moddeado (con cambios de texto) y solo cambiar el bitmap
    modded = bytearray(mod_win_com.read_bytes())
    modded[BITMAP_OFFSET:BITMAP_OFFSET + BITMAP_LEN] = new_bitmap
    mod_win_com.write_bytes(bytes(modded))
    print(f"[OK] {mod_win_com.relative_to(ROOT)} actualizado con bitmap nuevo")
else:
    # Crear el directorio y guardar
    mod_win_com.parent.mkdir(parents=True, exist_ok=True)
    mod_win_com.write_bytes(bytes(win_com))
    print(f"[OK] {mod_win_com.relative_to(ROOT)} creado")

print("\nAhora reaplica el mod:")
print("  python3 bootstrap/mod_system.py apply menubar")
