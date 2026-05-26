#!/usr/bin/env python3
"""analyze_splash_screenshot.py

Decode the user's existing splash screenshot to compute the exact
pixel dimensions and bit pattern of the BIG MICROSOFT logo, then
search for those bits inside WIN.COM (and other floppy files).

Inputs:
  screenshots/01-elias-windows-splash.png  (Win 1.03 splash, modded)

Output:
  - print logo bounding box (rows where white pixels exist)
  - extract the 1bpp pattern of just the MICROSOFT region
  - byte-search WIN.COM, WIN100.BIN, WIN100.OVL for that pattern
    (allowing for CGA even/odd interleave + bit-shifts)
"""
from __future__ import annotations

import struct
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SHOT = ROOT / "screenshots" / "01-elias-windows-splash.png"


def decode_png_rgb(path: Path) -> tuple[bytes, int, int]:
    """Return (RGB bytes, width, height)."""
    raw = path.read_bytes()
    assert raw[:8] == b"\x89PNG\r\n\x1a\n", "not PNG"
    pos = 8
    width = height = 0
    bit_depth = color_type = 0
    idat_chunks = []
    while pos < len(raw):
        size = int.from_bytes(raw[pos:pos+4], "big"); pos += 4
        ctype = raw[pos:pos+4]; pos += 4
        cdata = raw[pos:pos+size]; pos += size
        pos += 4  # CRC
        if ctype == b"IHDR":
            width, height = struct.unpack(">II", cdata[:8])
            bit_depth, color_type = cdata[8], cdata[9]
        elif ctype == b"IDAT":
            idat_chunks.append(cdata)
        elif ctype == b"IEND":
            break
    decoded = zlib.decompress(b"".join(idat_chunks))
    # Defilter (assume RGB or palette)
    if color_type == 2:  # RGB
        bpp = 3
    elif color_type == 3:  # palette - we'll just take first byte index
        bpp = 1
    elif color_type == 6:  # RGBA
        bpp = 4
    elif color_type == 0:
        bpp = 1
    else:
        raise ValueError(f"unsupported color_type {color_type}")
    stride = width * bpp
    out = bytearray()
    prev_row = bytes(stride)
    p = 0
    for r in range(height):
        ftype = decoded[p]; p += 1
        row = bytearray(decoded[p:p + stride]); p += stride
        # Filter
        if ftype == 0:
            pass
        elif ftype == 1:  # sub
            for i in range(bpp, len(row)):
                row[i] = (row[i] + row[i - bpp]) & 0xFF
        elif ftype == 2:  # up
            for i in range(len(row)):
                row[i] = (row[i] + prev_row[i]) & 0xFF
        elif ftype == 3:  # average
            for i in range(len(row)):
                left = row[i - bpp] if i >= bpp else 0
                row[i] = (row[i] + ((left + prev_row[i]) >> 1)) & 0xFF
        elif ftype == 4:  # paeth
            for i in range(len(row)):
                a = row[i - bpp] if i >= bpp else 0
                b = prev_row[i]
                c = prev_row[i - bpp] if i >= bpp else 0
                p2 = a + b - c
                pa = abs(p2 - a); pb = abs(p2 - b); pc = abs(p2 - c)
                if pa <= pb and pa <= pc:
                    pr = a
                elif pb <= pc:
                    pr = b
                else:
                    pr = c
                row[i] = (row[i] + pr) & 0xFF
        else:
            raise ValueError(f"unknown filter {ftype}")
        out.extend(row)
        prev_row = bytes(row)
    return bytes(out), width, height, bpp


def main() -> int:
    if not SHOT.exists():
        print(f"!! missing {SHOT}")
        return 1
    pixels, W, H, bpp = decode_png_rgb(SHOT)
    print(f"Splash: {W}x{H}, {bpp} bytes/pixel ({len(pixels)} bytes)")

    # Build a 1bpp mask: white pixel = 1, anything else = 0.
    # The Win 1.03 splash uses pure white text on blue background.
    def is_white(r, g, b):
        return r > 200 and g > 200 and b > 200

    mask = bytearray(W * H)
    for y in range(H):
        for x in range(W):
            i = (y * W + x) * bpp
            r, g, b = pixels[i], pixels[i + 1], pixels[i + 2]
            mask[y * W + x] = 1 if is_white(r, g, b) else 0

    # Find vertical extent of white pixels in upper half (the MICROSOFT logo)
    print("\n=== Per-row white-pixel count (top 100 rows) ===")
    for y in range(0, H // 2, 4):
        n_white = sum(mask[y * W:(y + 1) * W])
        bar = "#" * (n_white // 8)
        print(f"  y={y:3d}: {n_white:4d}  {bar}")

    # The MICROSOFT logo region is the top contiguous block of rows
    # with significant white pixel count.
    THRESH = 20
    logo_start_y = None
    logo_end_y = None
    for y in range(H):
        n_white = sum(mask[y * W:(y + 1) * W])
        if n_white >= THRESH:
            if logo_start_y is None:
                logo_start_y = y
            logo_end_y = y
        else:
            if logo_start_y is not None and y - logo_end_y > 8:
                break
    print(f"\nLogo vertical extent: y={logo_start_y}..{logo_end_y} "
          f"({logo_end_y - logo_start_y + 1} rows tall)")

    # Find horizontal extent of logo (cols with white in this row range)
    col_has_white = [False] * W
    for y in range(logo_start_y, logo_end_y + 1):
        for x in range(W):
            if mask[y * W + x]:
                col_has_white[x] = True
    logo_x0 = next(i for i, v in enumerate(col_has_white) if v)
    logo_x1 = W - 1 - next(i for i, v in enumerate(reversed(col_has_white)) if v)
    print(f"Logo horizontal extent: x={logo_x0}..{logo_x1} "
          f"({logo_x1 - logo_x0 + 1} cols wide)")

    print(f"\nLogo bounding box: ({logo_x1-logo_x0+1}) px wide x "
          f"({logo_end_y-logo_start_y+1}) px tall")
    print(f"As 1bpp packed: {(logo_x1-logo_x0+1) // 8} B/row * "
          f"{logo_end_y-logo_start_y+1} rows = "
          f"{((logo_x1-logo_x0+1) // 8) * (logo_end_y-logo_start_y+1)} bytes")
    print(f"As byte-aligned 640 wide x N tall: 80 B/row * "
          f"{logo_end_y-logo_start_y+1} rows = "
          f"{80 * (logo_end_y-logo_start_y+1)} bytes")

    # The actual on-disk CGA mode 6 buffer would be the bottom 200 rows
    # of the splash (since CGA mode 6 = 640x200). Our screenshot is
    # likely upscaled; assume native is 640x200.
    # Map upscaled y coord to native y coord: y_native = y * 200 / H
    native_logo_top = logo_start_y * 200 // H
    native_logo_bot = logo_end_y * 200 // H
    print(f"\nNative CGA 640x200 row range (estimated): "
          f"y={native_logo_top}..{native_logo_bot} "
          f"({native_logo_bot - native_logo_top + 1} rows in CGA buffer)")
    print(f"At 80 B/row CGA, that's "
          f"{80 * (native_logo_bot - native_logo_top + 1)} bytes")

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
