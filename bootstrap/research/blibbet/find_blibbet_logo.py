#!/usr/bin/env python3
"""find_blibbet_logo.py

Hunt the BIG 'MICROSOFT' splash bitmap in WIN.COM.

Earlier scripts hypothesised the logo was at offset 0x08C0 of WIN.COM
(2624 bytes, 8 frames of 80x32). That hypothesis is WRONG: the
disassembly we now have (`src/WIN/seg1_real.asm`) shows offset 0x08C0
is INSIDE the rendering subroutine - the bytes at 0x08C0 are
`CD 10 EB F5 C3 FC 52 32 D2 BE 24 00 D1 EE 8B 0E 1A 00`, classic INT
10h + character-draw loop opcodes.

The actual bitmap region is somewhere in WIN.COM after the rendering
code ends. This script:

  1. Walks every byte range in WIN.COM that's NOT marked as code by
     `flow_analyze()` (ie reachable from the entry-point JMP).
  2. For each non-code region, computes simple "is-this-a-bitmap"
     statistics:
       - density (% bits set) - bitmaps tend to be 5-30 % dense
       - run-length distribution - solid horizontal strokes show
         up as long runs of 0x00 or 0xFF
       - alignment of FF/F0/0F bytes (signs of pixel-aligned strokes)
  3. For the top candidate regions, renders ASCII art at multiple
     widths (40, 48, 56, 60, 64, 72, 80 bytes per row) and writes
     PNG previews to tmp_extract/blibbet_candidates/.
"""
from __future__ import annotations

import struct
import sys
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "bootstrap"))

from disasm_to_masm import flow_analyze  # noqa: E402

ORIG = ROOT / "original" / "WIN.COM"
OUT = ROOT / "tmp_extract" / "blibbet_candidates"
OUT.mkdir(parents=True, exist_ok=True)
for f in OUT.glob("*"):
    f.unlink()

POP = [bin(i).count("1") for i in range(256)]


def write_png_1bit(blob: bytes, width: int, height: int, path: Path) -> None:
    """Write a minimal PNG: bit set -> white, bit clear -> blue-ish."""
    raw = bytearray()
    wb = (width + 7) // 8
    for y in range(height):
        raw.append(0)  # filter
        for x in range(width):
            byte_idx = y * wb + x // 8
            bit_idx = 7 - (x % 8)
            if byte_idx < len(blob) and (blob[byte_idx] >> bit_idx) & 1:
                # white
                raw.append(0xFF); raw.append(0xFF); raw.append(0xFF)
            else:
                # blue (Win 1.x splash background)
                raw.append(0x00); raw.append(0x00); raw.append(0x80)

    def chunk(t, d):
        c = zlib.crc32(t + d)
        return struct.pack(">I", len(d)) + t + d + struct.pack(">I", c)

    sig = b"\x89PNG\r\n\x1a\n"
    ihdr = struct.pack(">IIBBBBB", width, height, 8, 2, 0, 0, 0)
    idat = zlib.compress(bytes(raw))
    path.write_bytes(sig + chunk(b"IHDR", ihdr) + chunk(b"IDAT", idat) +
                     chunk(b"IEND", b""))


def render_ascii(blob: bytes, wb: int, h: int, max_h: int = 24) -> list[str]:
    out = []
    step = max(1, h // max_h)
    for r in range(0, h, step):
        row = blob[r * wb:(r + 1) * wb]
        s = "".join("#" if (b >> (7 - bi)) & 1 else "."
                    for b in row for bi in range(8))
        out.append(s)
    return out


def main() -> int:
    data = ORIG.read_bytes()
    print(f"WIN.COM: {len(data)} bytes (= 0x{len(data):X})")

    is_code, branch_targets, entry = flow_analyze(data, va_bias=0x100)
    code_bytes = sum(is_code)
    print(f"Flow analysis: {code_bytes} code bytes / "
          f"{len(data) - code_bytes} non-code bytes")

    # Walk non-code regions
    print(f"\n=== Non-code regions in WIN.COM ===")
    regions = []
    i = 0
    while i < len(data):
        if not is_code[i]:
            j = i
            while j < len(data) and not is_code[j]:
                j += 1
            sz = j - i
            if sz >= 32:
                regions.append((i, j, sz))
            i = j
        else:
            i += 1

    print(f"Found {len(regions)} non-code regions of size >= 32 bytes:\n")
    for off_s, off_e, sz in regions:
        blob = data[off_s:off_e]
        bits = sum(POP[b] for b in blob)
        density = bits / (sz * 8)
        n_zero = sum(1 for b in blob if b == 0)
        n_ff = sum(1 for b in blob if b == 0xFF)
        # Check for bitmap-like patterns
        ascii_run = max((sum(1 for c in blob[k:k + 16]
                             if 0x20 <= c < 0x7F)
                         for k in range(0, len(blob) - 16, 16)),
                        default=0)
        is_string = ascii_run > 12
        marker = ""
        if not is_string and density > 0.02 and n_ff >= 2:
            marker = "  [BITMAP-CANDIDATE]"
        if is_string:
            marker = "  [STRING]"
        print(f"  0x{off_s:04X}..0x{off_e - 1:04X}  "
              f"{sz:5d} B  density={density:.3f}  "
              f"zero={n_zero:4d}  FF={n_ff:3d}{marker}")

    # Pick bitmap candidates and render them at multiple widths
    print(f"\n=== Rendering bitmap candidates ===")
    candidates = [(s, e, sz) for s, e, sz in regions
                  if sum(1 for b in data[s:e] if b == 0xFF) >= 2
                  and sz >= 64]
    if not candidates:
        print("  no bitmap-shaped candidates found")
        return 1

    # Sort by size descending
    candidates.sort(key=lambda x: -x[2])

    for ci, (off_s, off_e, sz) in enumerate(candidates[:3]):
        blob = data[off_s:off_e]
        print(f"\n--- candidate #{ci}: 0x{off_s:04X}..0x{off_e - 1:04X} "
              f"({sz} B) ---")
        # Try common widths in bytes
        for wb in [20, 30, 40, 48, 56, 60, 64, 72, 80]:
            h = sz // wb
            if h < 4 or h > 200:
                continue
            png = OUT / f"cand{ci}_off{off_s:04X}_w{wb*8}px_h{h}.png"
            write_png_1bit(blob[:wb * h], wb * 8, h, png)
        print(f"  PNGs at widths 160,240,320,384,448,480,512,576,640 px")
        # Show ASCII at most-likely width (assume 320 wide = 40 bytes)
        for wb in [40, 60, 80]:
            h = sz // wb
            if h < 4:
                continue
            print(f"\n  ASCII @ width {wb*8} px (height {h}, "
                  f"sample every {max(1, h // 20)} rows):")
            for line in render_ascii(blob[:wb * h], wb, h, max_h=20):
                print(f"    {line[:120]}")

    print(f"\nAll PNGs saved to {OUT.relative_to(ROOT)}/ - open with image "
          "viewer to find the one that LOOKS LIKE 'MICROSOFT'.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
