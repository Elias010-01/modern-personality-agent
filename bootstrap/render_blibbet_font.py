#!/usr/bin/env python3
"""render_blibbet_font.py

Render WIN100.BIN bytes around 0x0C160 as if they were an EGA character
font.  EGA mode 03h uses 8x14 character cells, with 14 bytes per glyph
(each byte = 1 row of 8 pixels).  256 chars * 14 bytes = 3584 bytes per
font table.

We render multiple offsets near the candidate region as char-grids so
visual inspection can confirm:
  - Which exact offset starts the font
  - How many chars are in it (likely a partial set, only chars used by
    the splash, e.g. M I C R O S F T + the Blibbet pieces)
"""
from __future__ import annotations

import struct
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ORIG = ROOT / "original" / "WIN100.BIN"
OUT = ROOT / "screenshots" / "blibbet_hunt"
OUT.mkdir(parents=True, exist_ok=True)


def write_png_color(blob, width, height, path,
                    fg=(0xFF, 0xFF, 0xFF), bg=(0x00, 0x00, 0x80)):
    raw = bytearray()
    wb = (width + 7) // 8
    for y in range(height):
        raw.append(0)
        for x in range(width):
            byte_idx = y * wb + x // 8
            bit_idx = 7 - (x % 8)
            if byte_idx < len(blob) and (blob[byte_idx] >> bit_idx) & 1:
                raw.extend(fg)
            else:
                raw.extend(bg)

    def chunk(t, d):
        c = zlib.crc32(t + d)
        return struct.pack(">I", len(d)) + t + d + struct.pack(">I", c)
    sig = b"\x89PNG\r\n\x1a\n"
    ihdr = struct.pack(">IIBBBBB", width, height, 8, 2, 0, 0, 0)
    idat = zlib.compress(bytes(raw))
    path.write_bytes(sig + chunk(b"IHDR", ihdr) + chunk(b"IDAT", idat) +
                     chunk(b"IEND", b""))


def render_char_grid(blob: bytes, char_h: int, chars_per_row: int,
                     n_chars: int, label: str) -> Path:
    """Render `n_chars` glyphs of size 8 x char_h as a grid of
    chars_per_row columns.

    Each glyph is char_h bytes (one byte per pixel row).
    Output dims: (chars_per_row * 8 px wide) x (ceil(n_chars/cpr) * char_h px tall).
    """
    rows = (n_chars + chars_per_row - 1) // chars_per_row
    width_px = chars_per_row * 8
    height_px = rows * char_h
    # Build a flat 1bpp bitmap where each glyph is placed in grid cell
    wb = (width_px + 7) // 8  # = chars_per_row
    out = bytearray(wb * height_px)
    for ci in range(n_chars):
        col = ci % chars_per_row
        row = ci // chars_per_row
        for r in range(char_h):
            src_idx = ci * char_h + r
            if src_idx >= len(blob):
                break
            dst_idx = (row * char_h + r) * wb + col
            out[dst_idx] = blob[src_idx]
    path = OUT / f"font_{label}.png"
    write_png_color(bytes(out), width_px, height_px, path)
    return path


def main() -> int:
    data = ORIG.read_bytes()

    # Around 0x0C160 (top candidate). Try multiple offsets and char heights.
    # EGA mode 03h: 8x14 (14 bytes/char). EGA mode 0Eh: 8x8. Some loaders use 8x16.
    for base_off in [0x0C000, 0x0C100, 0x0C160, 0x0C200, 0x0C300, 0x0C400]:
        for char_h in [8, 14, 16]:
            n_chars = 96  # show 96 chars (printable ASCII range size)
            # Need n_chars * char_h bytes
            blob = data[base_off:base_off + n_chars * char_h]
            label = f"off{base_off:06X}_h{char_h}"
            render_char_grid(blob, char_h, chars_per_row=16,
                             n_chars=n_chars, label=label)

    # Also for 0x008080 (second-best candidate)
    for base_off in [0x008000, 0x008080, 0x008100, 0x008200]:
        for char_h in [8, 14, 16]:
            n_chars = 96
            blob = data[base_off:base_off + n_chars * char_h]
            label = f"off{base_off:06X}_h{char_h}"
            render_char_grid(blob, char_h, chars_per_row=16,
                             n_chars=n_chars, label=label)

    print(f"Wrote {len(list(OUT.glob('font_*.png')))} font-grid PNGs to "
          f"{OUT.relative_to(ROOT)}/")
    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
