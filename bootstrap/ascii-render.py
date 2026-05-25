#!/usr/bin/env python3
"""Renderiza el bitmap @ 0x08C0 de WIN.COM en ASCII art con varios anchos."""
import sys
from pathlib import Path

data = Path("/tmp/winbitmap/WIN.COM").read_bytes()[0x8C0:0x8C0 + 2624]


def render(data, width_bytes):
    rows = len(data) // width_bytes
    lines = []
    for r in range(rows):
        row = data[r * width_bytes:(r + 1) * width_bytes]
        line = "".join("#" if (b >> (7 - i)) & 1 else "."
                       for b in row for i in range(8))
        lines.append(line)
    return lines


# Probar 80, 40, 32, 20 bytes wide
for wb in [80, 40, 32, 20]:
    print(f"\n{'='*100}\n=== {wb} bytes/row ({wb*8} px wide, {len(data)//wb} rows) ===\n{'='*100}")
    lines = render(data, wb)
    # Mostrar las primeras 40 filas
    for line in lines[:40]:
        print(line)
