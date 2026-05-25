#!/usr/bin/env python3
"""
Exporta los 8 frames de animacion del blob @ 0x08C0 de WIN.COM como BMPs
separados Y un sprite-sheet completo, todo en escritorio para edicion.
"""
import struct
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DESKTOP = Path("/mnt/c/Users/Elias/Desktop/windows-logo-edit")
DESKTOP.mkdir(parents=True, exist_ok=True)

# Limpiar BMPs viejos
for old in DESKTOP.glob("frame*.bmp"):
    old.unlink()
for old in DESKTOP.glob("windows-logo-*.bmp"):
    old.unlink()
for old in DESKTOP.glob("sprite-sheet*.bmp"):
    old.unlink()

# Extraer WIN.COM
tmp = Path("/tmp/export_frames")
tmp.mkdir(exist_ok=True)
win_com_path = tmp / "WIN.COM"
subprocess.run(["mcopy", "-i",
                str(ROOT / "runtime" / "win103-built.img.bak"),
                "-o", "::WIN.COM", str(win_com_path)], check=True)
buf = win_com_path.read_bytes()
blob = buf[0x8C0:0x8C0 + 2624]


def make_bmp_1bpp(pixel_data: bytes, width: int, height: int) -> bytes:
    """BMP 1bpp monocromo top-down, color 0=negro (fondo), color 1=blanco (letras)."""
    row_bytes = (width + 7) // 8
    row_padded = (row_bytes + 3) & ~3
    image_size = row_padded * height
    file_size = 14 + 40 + 8 + image_size
    data_offset = 14 + 40 + 8

    bf = struct.pack("<2sIHHI", b"BM", file_size, 0, 0, data_offset)
    bi = struct.pack("<IiiHHIIiiII",
                     40, width, -height, 1, 1, 0,
                     image_size, 2835, 2835, 2, 0)
    # Color 0 = NEGRO (fondo), Color 1 = BLANCO (letras)
    # En Win 1.x splash es texto BLANCO sobre fondo AZUL.
    # Aqui en BMP monocromo lo presentamos como BLANCO sobre NEGRO.
    pal = bytes([0x00, 0x00, 0x00, 0x00,    # color 0: black
                 0xFF, 0xFF, 0xFF, 0x00])   # color 1: white

    pixels = bytearray()
    for r in range(height):
        row = pixel_data[r * row_bytes:(r + 1) * row_bytes]
        if len(row) < row_padded:
            row = row + b"\x00" * (row_padded - len(row))
        pixels.extend(row)
    return bf + bi + pal + bytes(pixels)


# Exportar frames individuales (80x32 cada uno)
WIDTH = 80
HEIGHT = 32
FRAME_BYTES = (WIDTH // 8) * HEIGHT  # = 320

print(f"Exportando 8 frames de {WIDTH}x{HEIGHT} ({FRAME_BYTES}B c/u):")
for f in range(8):
    frame_data = blob[f * FRAME_BYTES:(f + 1) * FRAME_BYTES]
    bmp = make_bmp_1bpp(frame_data, WIDTH, HEIGHT)
    out = DESKTOP / f"frame_{f}.bmp"
    out.write_bytes(bmp)
    # Count black/white pixels para ayudar al user a identificar el "claro"
    white_count = sum(bin(b).count("1") for b in frame_data)
    total_px = WIDTH * HEIGHT
    print(f"  frame_{f}.bmp  ({white_count*100//total_px}% pixels blancos)")

# Sprite-sheet vertical: los 8 frames apilados (80 wide x 32*8=256 high)
sheet_data = bytearray()
for f in range(8):
    sheet_data.extend(blob[f * FRAME_BYTES:(f + 1) * FRAME_BYTES])
sheet_bmp = make_bmp_1bpp(bytes(sheet_data), WIDTH, HEIGHT * 8)
out = DESKTOP / "sprite-sheet-80x256-all-frames.bmp"
out.write_bytes(sheet_bmp)
print(f"\n  sprite-sheet-80x256-all-frames.bmp  (todos los frames apilados)")

# Update README
(DESKTOP / "README.txt").write_text(
    "Bitmap del splash de Windows 1.03 - ANIMACION 8 frames\n"
    "=========================================================\n\n"
    "Localizado en WIN.COM offset 0x08C0 (2624 bytes total).\n"
    "Son 8 frames de animacion (80x32 cada uno, 320B = 2560B + 64B trailer)\n"
    "que se reproducen en secuencia: frame 0 = glitch -> frame 7 = logo final.\n\n"
    "Ficheros:\n"
    "  frame_0.bmp  ... frame_7.bmp\n"
    "    8 frames individuales, 80x32 cada uno. Abre cada uno con Paint\n"
    "    para identificar cual es el 'final claro' con el texto 'Microsoft'.\n\n"
    "  sprite-sheet-80x256-all-frames.bmp\n"
    "    Los 8 frames apilados verticalmente (frame 0 arriba, frame 7 abajo).\n"
    "    Util para ver la secuencia entera de un vistazo.\n\n"
    "  _original-raw-2624.bin\n"
    "    El blob original tal cual (NO TOCAR).\n\n"
    "PARA EDITAR:\n"
    "  1. Abre los frame_N.bmp con Paint. Identifica el frame donde se ve\n"
    "     el logo 'Microsoft' o similar mas claro (probable frame_7).\n"
    "  2. Edita ESE frame substituyendo el texto por 'Elias's' o lo que\n"
    "     quieras (SOLO ese frame, los demas son la animacion glitch).\n"
    "  3. Guardalo como BMP monocromo (Paint > Guardar como > Monocromo).\n"
    "  4. Avisame con el numero del frame y la ruta del BMP editado.\n\n"
    "Tambien puedes editar TODOS los frames si quieres una animacion\n"
    "personalizada completa.\n"
)
print("\nAbre los .bmp con Paint y dime cual es el frame correcto a editar.")
print(f"Carpeta: C:\\Users\\Elias\\Desktop\\windows-logo-edit\\")
