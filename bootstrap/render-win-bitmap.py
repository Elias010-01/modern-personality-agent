#!/usr/bin/env python3
"""
Renderiza el bitmap en WIN.COM @ 0x08C0 a PNG para verlo.

Tamaños probables (2624 bytes total):
  - 80 bytes/row (640px) * 32 rows = 2560
  - 40 bytes/row (320px) * 65 rows
  - Otros multiplos

Voy a renderizar varios tamanos candidatos y guardarlos como PNG.
"""
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
IMG = ROOT / "runtime" / "win103-built.img.bak"
TMP = Path("/tmp/winbitmap")
TMP.mkdir(exist_ok=True)

# Extraer WIN.COM
out_com = TMP / "WIN.COM"
subprocess.run(["mcopy", "-i", str(IMG), "-o", "::WIN.COM", str(out_com)],
               check=True, capture_output=True)
data = out_com.read_bytes()
print(f"WIN.COM size: {len(data)} bytes")

# El blob esta en 0x08C0
BITMAP_OFFSET = 0x08C0
BITMAP_LEN = 2624
blob = data[BITMAP_OFFSET:BITMAP_OFFSET + BITMAP_LEN]
print(f"Bitmap blob: offset=0x{BITMAP_OFFSET:X} len={len(blob)}")

# Renderizar como PGM (formato texto facil de generar) varias dimensiones
def render_pgm(data: bytes, width_bytes: int, out: Path):
    """Renderiza data como bitmap 1bpp con width_bytes bytes por fila."""
    rows = len(data) // width_bytes
    width_px = width_bytes * 8
    height = rows
    # PGM cabecera
    out_lines = [f"P1\n{width_px} {height}\n"]
    for r in range(rows):
        row_bytes = data[r * width_bytes:(r + 1) * width_bytes]
        bits = []
        for b in row_bytes:
            for i in range(8):
                bits.append("1" if (b >> (7 - i)) & 1 else "0")
        out_lines.append(" ".join(bits) + "\n")
    out.write_text("".join(out_lines))
    return width_px, height


# Render candidatos
candidates = [
    (80, "640x32"),    # 640px wide, 32 rows
    (40, "320x65"),    # 320px wide
    (16, "128x164"),   # 128px wide
    (10, "80x262"),    # 80px wide
    (20, "160x131"),
    (32, "256x82"),
]
for wb, desc in candidates:
    if len(blob) % wb != 0:
        # Truncate to multiple
        pass
    out = TMP / f"bitmap_{wb}x{len(blob) // wb}.pgm"
    w, h = render_pgm(blob, wb, out)
    print(f"  Renderizado: {out.name} ({w}x{h})")

# Convertir a PNG usando ImageMagick si esta
import shutil
if shutil.which("convert"):
    for pgm in TMP.glob("*.pgm"):
        png = pgm.with_suffix(".png")
        subprocess.run(["convert", str(pgm), str(png)], check=True)
    print(f"\nPNGs en {TMP}/ (revisar manualmente):")
    for png in sorted(TMP.glob("*.png")):
        sz = png.stat().st_size
        print(f"  {png.name}  ({sz}B)")
else:
    print("(ImageMagick no instalado; los .pgm se pueden abrir con GIMP/IrfanView)")
