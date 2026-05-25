#!/usr/bin/env python3
"""
export-bitmap-bmp.py - Exporta el bitmap del 'Microsoft' grande de
WIN.COM como BMP estandar editable en Paint/GIMP.

  Source:    WIN.COM offset 0x08C0, len 2624 bytes
  Output:    desktop/windows-logo-edit/windows-logo-640x32.bmp (BMP 1bpp)

El bitmap real es 640x32 (80 bytes/row * 32 rows = 2560 bytes); los 64
bytes restantes del blob original (2624 - 2560) se preservan tal cual
y se inyectan de vuelta al hacer import.

Para inyectar de vuelta:
  python3 bootstrap/import-bitmap-bmp.py <path-to-bmp>
"""
import struct
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DESKTOP_WIN = Path("/mnt/c/Users/Elias/Desktop/windows-logo-edit")
DESKTOP_WIN.mkdir(parents=True, exist_ok=True)

BITMAP_OFFSET = 0x08C0
BITMAP_LEN = 2560  # 640x32 (los 64 bytes extra del blob son trailer)
WIDTH = 640
HEIGHT = 32

# Extraer WIN.COM
tmp_win_com = Path("/tmp/export_bmp_win.com")
subprocess.run(["mcopy", "-i",
                str(ROOT / "runtime" / "win103-built.img.bak"),
                "-o", "::WIN.COM", str(tmp_win_com)], check=True)
buf = tmp_win_com.read_bytes()
bitmap_data = buf[BITMAP_OFFSET:BITMAP_OFFSET + BITMAP_LEN]
trailer_data = buf[BITMAP_OFFSET + BITMAP_LEN:BITMAP_OFFSET + 2624]
print(f"WIN.COM size: {len(buf)}B")
print(f"Bitmap: {len(bitmap_data)}B ({WIDTH}x{HEIGHT})")
print(f"Trailer (preservado para reinyectar): {len(trailer_data)}B")


def make_bmp_1bpp(pixel_data: bytes, width: int, height: int) -> bytes:
    """Construye un BMP de 1bpp monocromo (top-down).

    Layout:
      BITMAPFILEHEADER (14 bytes)
      BITMAPINFOHEADER (40 bytes)
      PALETTE (8 bytes: 2 colores, BGRA)
      pixel data (top-down si height negativo)
    """
    row_bytes = (width + 7) // 8                 # bits to bytes
    row_padded = (row_bytes + 3) & ~3            # padded to 4 bytes
    image_size = row_padded * height
    file_size = 14 + 40 + 8 + image_size
    data_offset = 14 + 40 + 8

    # BITMAPFILEHEADER (14 bytes)
    bf = struct.pack(
        "<2sIHHI",
        b"BM",       # signature
        file_size,
        0, 0,        # reserved
        data_offset,
    )

    # BITMAPINFOHEADER (40 bytes) - height NEGATIVO = top-down
    bi = struct.pack(
        "<IiiHHIIiiII",
        40,            # biSize
        width,
        -height,       # negative -> top-down
        1,             # biPlanes
        1,             # biBitCount (1 bpp)
        0,             # biCompression (BI_RGB)
        image_size,
        2835, 2835,    # ~72 DPI
        2,             # biClrUsed (2 colors)
        0,             # biClrImportant
    )

    # Palette (2 colors, BGRA): black, white
    pal = bytes([
        0x00, 0x00, 0x00, 0x00,   # color 0: black
        0xFF, 0xFF, 0xFF, 0x00,   # color 1: white
    ])

    # Pixel data: padded a 4 bytes por row
    pixels = bytearray()
    for r in range(height):
        row = pixel_data[r * row_bytes:(r + 1) * row_bytes]
        if len(row) < row_padded:
            row = row + b"\x00" * (row_padded - len(row))
        pixels.extend(row)
    return bf + bi + pal + bytes(pixels)


# Generar BMP 640x32
bmp_640x32 = make_bmp_1bpp(bitmap_data, WIDTH, HEIGHT)
out_640 = DESKTOP_WIN / "windows-logo-640x32.bmp"
out_640.write_bytes(bmp_640x32)
print(f"\n[OK] {out_640}  ({len(bmp_640x32)}B)")

# Tambien generar 320x64 por si la dimension correcta es esa
# 40 bytes/row * 64 rows = 2560 bytes (mismo content, distinta interpretacion)
bmp_320x64 = make_bmp_1bpp(bitmap_data, 320, 64)
out_320 = DESKTOP_WIN / "windows-logo-320x64.bmp"
out_320.write_bytes(bmp_320x64)
print(f"[OK] {out_320}  ({len(bmp_320x64)}B)")

# Guardar tambien el blob raw + trailer para re-inyectar despues
(DESKTOP_WIN / "_original-raw-2624.bin").write_bytes(
    buf[BITMAP_OFFSET:BITMAP_OFFSET + 2624])
(DESKTOP_WIN / "_trailer-64.bin").write_bytes(trailer_data)

# Y un README
(DESKTOP_WIN / "README.txt").write_text(
    "Bitmap del logo 'Microsoft' grande del splash de Windows 1.03\n"
    f"Localizado en: WIN.COM offset 0x{BITMAP_OFFSET:X} (2624 bytes total)\n\n"
    "Ficheros:\n"
    "  windows-logo-640x32.bmp  - BMP 1bpp monocromo 640x32 (intenta este primero)\n"
    "  windows-logo-320x64.bmp  - BMP 1bpp monocromo 320x64 (alternativa)\n"
    "  _original-raw-2624.bin   - El blob original tal cual (no tocar)\n"
    "  _trailer-64.bin          - Los ultimos 64 bytes del blob (no parte de la imagen)\n\n"
    "PARA EDITAR:\n"
    "  1. Abre el .BMP que se vea correctamente (uno de los dos) con Paint\n"
    "  2. Edita SIN cambiar dimensiones ni profundidad (1bpp monocromo)\n"
    "  3. Guardalo como BMP monocromo (Paint > Guardar como > Mapa de bits monocromo)\n"
    "  4. Avisame y ejecuto:\n"
    "     python3 bootstrap/import-bitmap-bmp.py <ruta-al-bmp>\n\n"
    "Recomendacion: solo dibuja en zona NEGRA, no toques la zona BLANCA\n"
    "(es el fondo). Edita las LETRAS del 'Microsoft Windows' que veas en el BMP.\n"
)
print(f"\nCarpeta lista en C:\\Users\\Elias\\Desktop\\windows-logo-edit\\")
print("Abre el .BMP que se vea bien con Paint, edita, guarda y avisame.")
