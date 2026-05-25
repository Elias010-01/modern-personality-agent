#!/usr/bin/env python3
"""
Hipotesis: el blob @ 0x08C0 (2624 bytes) es UNA ANIMACION de frames
glitch -> 'Microsoft Windows' claro.

Pruebo varias particiones del blob como N frames de M bytes cada uno.
Renderizo en ASCII art para ver si emerge una secuencia animada.
"""
import sys
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parent.parent

# Re-extraer si hace falta
tmp = Path("/tmp/anim_frames")
tmp.mkdir(exist_ok=True)
win_com = tmp / "WIN.COM"
if not win_com.exists():
    subprocess.run(["mcopy", "-i",
                    str(ROOT / "runtime" / "win103-built.img.bak"),
                    "-o", "::WIN.COM", str(win_com)], check=True)

buf = win_com.read_bytes()
blob = buf[0x8C0:0x8C0 + 2624]


def render(data: bytes, width_bytes: int) -> list[str]:
    rows = len(data) // width_bytes
    out = []
    for r in range(rows):
        row = data[r * width_bytes:(r + 1) * width_bytes]
        line = "".join("#" if (b >> (7 - i)) & 1 else "."
                       for b in row for i in range(8))
        out.append(line)
    return out


# Probar particiones razonables. Si el logo es ~80px wide x 32px alto,
# cada frame seria 80*32/8 = 320 bytes. 2624/320 = 8.2 frames (8 frames + 64 trailer)
candidates = [
    # (frame_size, width_bytes, descripcion)
    (320, 10, "8 frames de 80x32"),
    (256, 8,  "10 frames de 64x32"),
    (640, 20, "4 frames de 160x32"),
    (512, 16, "5 frames de 128x32"),
    (1280, 40, "2 frames de 320x32"),
    (2560, 80, "1 solo frame de 640x32 (no animacion)"),
]

for frame_size, wb, desc in candidates:
    n_frames = len(blob) // frame_size
    if n_frames < 2 and frame_size != 2560:
        continue
    print(f"\n{'#'*80}")
    print(f"# {desc}: {n_frames} frames, {frame_size}B cada uno, ancho {wb*8}px, alto {frame_size//wb}")
    print(f"{'#'*80}")

    # Renderizar solo el primer y ultimo frame para ahorrar output
    frames_to_show = [0, n_frames - 1] if n_frames > 1 else [0]
    for f in frames_to_show:
        frame_data = blob[f * frame_size:(f + 1) * frame_size]
        print(f"\n--- Frame {f}/{n_frames-1} ---")
        for line in render(frame_data, wb):
            print(line)
