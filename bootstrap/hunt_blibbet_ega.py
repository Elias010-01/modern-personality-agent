#!/usr/bin/env python3
"""hunt_blibbet_ega.py

Hunt the BIG MICROSOFT splash bitmap in WIN100.BIN, now that we know
the video mode is EGA 10h (640x350x16 colors, set at WIN100.BIN +0x9950).

For 2-color (white-on-blue) graphics in EGA mode 10h, the bitmap is
typically stored as 1bpp packed at 80 bytes per scanline (640 px wide).
The MICROSOFT logo region looks ~640 wide x ~80 tall in the rendered
splash, which would be 6400 bytes of flat 1bpp.

Strategy: scan WIN100.BIN for any 80-byte-aligned region containing a
multi-row pattern of horizontal stripes (long runs of 0xFF / 0xF0 /
0x0F bytes spaced exactly 80 bytes apart, repeating across many rows).

Render top hits at 640x40-100 for visual confirmation.
"""
from __future__ import annotations

import struct
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ORIG = ROOT / "original" / "WIN100.BIN"
OUT = ROOT / "screenshots" / "blibbet_hunt"
OUT.mkdir(parents=True, exist_ok=True)
for f in OUT.glob("ega_*.png"):
    f.unlink()

POP = [bin(i).count("1") for i in range(256)]


def write_png(blob, width, height, path,
              fg=(0xFF, 0xFF, 0xFF), bg=(0x00, 0x00, 0xAA)):
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


def main() -> int:
    data = ORIG.read_bytes()
    print(f"WIN100.BIN: {len(data)} bytes")

    # EGA 80-byte-wide scanline bitmap. Look for regions with ROW-PERIODIC
    # patterns: density of bits in row N similar to row N+1, sustained over
    # 8+ consecutive rows.
    ROW_W = 80
    MIN_ROWS = 16  # at least 16 rows tall (logo is ~80 tall)

    # For each candidate start offset (aligned to 16 bytes), score by:
    #   - density per row 5-50%  (typical for letter logos)
    #   - row-to-row density correlation high (similar density in consecutive rows)
    print(f"\n=== Scanning at row width {ROW_W} bytes ({ROW_W*8} px) ===")
    best = []
    n_rows_max = (len(data) // ROW_W) - MIN_ROWS
    for off in range(0, len(data) - MIN_ROWS * ROW_W, 16):
        # Compute density of next MIN_ROWS rows
        row_pops = []
        for r in range(MIN_ROWS):
            row_start = off + r * ROW_W
            row_pops.append(sum(POP[b] for b in data[row_start:row_start + ROW_W]))
        avg = sum(row_pops) / MIN_ROWS
        if avg < ROW_W * 8 * 0.05 or avg > ROW_W * 8 * 0.50:
            continue
        # Density variance (low variance = consistent across rows = real bitmap)
        var = sum((p - avg) ** 2 for p in row_pops) / MIN_ROWS
        # Score: high consistency (low var/avg) wins
        if avg > 0:
            cv = var / (avg * avg)
        else:
            cv = 999
        score = avg * 10 - cv * 1000
        best.append((score, off, avg / (ROW_W * 8), cv))

    best.sort(reverse=True)
    print(f"Top 20 bitmap-shaped regions (consistent row density):")
    seen = []
    deduped = []
    for s, off, density, cv in best:
        if any(abs(off - so) < 200 for so in seen):
            continue
        seen.append(off)
        deduped.append((s, off, density, cv))
        if len(deduped) >= 20:
            break

    for s, off, density, cv in deduped:
        print(f"  off=0x{off:06X}  score={s:7.1f}  density={density:.3f}  cv={cv:.3f}")

    # Render top 8 as PNGs at 640 wide x N tall
    print("\n=== Rendering top 8 ===")
    for ci, (s, off, density, cv) in enumerate(deduped[:8]):
        # Render 640 wide x ~100 rows
        n_rows = 100
        blob = data[off:off + ROW_W * n_rows]
        png = OUT / f"ega_c{ci:02d}_off{off:06X}_640x{n_rows}.png"
        write_png(blob, ROW_W * 8, n_rows, png)
    print(f"PNGs at {OUT.relative_to(ROOT)}/")
    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
