#!/usr/bin/env python3
"""hunt_blibbet_in_bin.py

Hunt the BIG 'MICROSOFT' splash bitmap in WIN100.BIN.

Discovery (this session): WIN.COM (4873B) contains only INT 21h/INT 20h
calls -- NO BIOS INT 10h, NO graphics output. Therefore WIN.COM does
NOT draw the splash itself; it just holds the text strings that another
program reads and renders. The BIG MICROSOFT logo bitmap must live in
WIN100.BIN (185KB), the second-stage loader / Windows kernel that
displays the splash.

Strategy: scan WIN100.BIN for clustered horizontal stripe patterns
characteristic of the iconic 1985 'Blibbet' Microsoft logo:
  - Long runs of 0xFF and 0xF0/0x0F (full byte = 8 white pixels)
  - Clustered into a contiguous region (not scattered noise)
  - Repeating row-period pattern (the stripes inside each letter)

Render top candidates as PNGs at multiple widths into
screenshots/blibbet_hunt/ for visual inspection.
"""
from __future__ import annotations

import struct
import sys
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ORIG = ROOT / "original" / "WIN100.BIN"
OUT = ROOT / "screenshots" / "blibbet_hunt"
OUT.mkdir(parents=True, exist_ok=True)
# Clear previous candidates
for f in OUT.glob("win100_*.png"):
    f.unlink()

POP = [bin(i).count("1") for i in range(256)]


def write_png_color(blob: bytes, width: int, height: int, path: Path,
                    bit_set_color=(0xFF, 0xFF, 0xFF),
                    bit_clear_color=(0x00, 0x00, 0x80)) -> None:
    raw = bytearray()
    wb = (width + 7) // 8
    for y in range(height):
        raw.append(0)
        for x in range(width):
            byte_idx = y * wb + x // 8
            bit_idx = 7 - (x % 8)
            if byte_idx < len(blob) and (blob[byte_idx] >> bit_idx) & 1:
                raw.extend(bit_set_color)
            else:
                raw.extend(bit_clear_color)

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
    print(f"WIN100.BIN: {len(data)} bytes (= 0x{len(data):X})")

    # Scan for "bitmap-like" windows: chunks of 256 bytes (~8 rows of
    # 32 bytes wide = 256 px wide x 8 tall) that have:
    #   - density 5-30 % (typical for letter logos on dark background)
    #   - several 0xFF or 0xF0/0x0F bytes per chunk
    print("\n=== Scanning for bitmap-shaped windows ===")
    WINDOW = 512  # ~16 rows of 32 bytes
    STEP = 32
    candidates = []
    for off in range(0, len(data) - WINDOW, STEP):
        blob = data[off:off + WINDOW]
        bits = sum(POP[b] for b in blob)
        density = bits / (WINDOW * 8)
        n_ff = sum(1 for b in blob if b == 0xFF)
        n_f0 = sum(1 for b in blob if b == 0xF0)
        n_0f = sum(1 for b in blob if b == 0x0F)
        n_zero = sum(1 for b in blob if b == 0)
        # Bitmap-shaped heuristic: many full-or-half bytes
        # plus many zeros, density 5-35%
        if (0.05 <= density <= 0.35
                and n_ff + n_f0 + n_0f >= 8
                and n_zero >= WINDOW * 0.4):
            score = (n_ff * 3 + n_f0 + n_0f) - abs(density - 0.15) * 100
            candidates.append((score, off, density, n_ff, n_f0, n_0f, n_zero))

    candidates.sort(reverse=True)
    print(f"Found {len(candidates)} bitmap-shaped windows.")
    if not candidates:
        return 1

    # Dedupe: keep only candidates that are >= WINDOW apart
    seen_offs = []
    deduped = []
    for c in candidates:
        off = c[1]
        if any(abs(off - so) < WINDOW for so in seen_offs):
            continue
        seen_offs.append(off)
        deduped.append(c)
        if len(deduped) >= 12:
            break

    print(f"Top {len(deduped)} unique candidates:")
    for score, off, density, n_ff, n_f0, n_0f, n_zero in deduped:
        print(f"  off=0x{off:06X}  score={score:6.1f}  density={density:.3f}  "
              f"FF={n_ff:3d}  F0={n_f0:3d}  0F={n_0f:3d}  zero={n_zero:3d}")

    # Render each candidate at multiple widths/heights
    print("\n=== Rendering PNGs ===")
    for ci, (score, off, density, _ff, _f0, _0f, _z) in enumerate(deduped):
        # Expand window to capture context: 1024 bytes around the hit
        ctx_start = max(0, off - 256)
        ctx_end = min(len(data), off + 1024)
        blob = data[ctx_start:ctx_end]
        for wb in [20, 30, 40, 48, 56, 60, 64, 80]:
            h = len(blob) // wb
            if h < 8 or h > 200:
                continue
            png = OUT / f"win100_c{ci:02d}_off{off:06X}_w{wb*8}_h{h}.png"
            write_png_color(blob[:wb * h], wb * 8, h, png)
    print(f"\nPNGs saved to {OUT.relative_to(ROOT)}/")
    print(f"Total: {len(list(OUT.glob('win100_*.png')))} PNGs")
    return 0


if __name__ == "__main__":
    sys.exit(main())
