#!/usr/bin/env python3
"""find_logo_v2.py - Smarter search for the BIG MICROSOFT splash bitmap.

Improvements over find_logo_in_files.py:
  1. Crop the logo from the screenshot to its actual bounding box (not 640
     wide), so the byte stream we look for is only the logo bytes, no
     leading zero columns.
  2. Try all 8 horizontal bit-shifts (the bitmap could be byte-aligned at
     any horizontal pixel offset).
  3. Also try inverted bits (bitmap could be stored with 0=white, 1=blue
     or vice-versa).
  4. Search each row plus 2-row, 4-row, 8-row stripes; report best match.
"""
from __future__ import annotations

import struct
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SHOT = ROOT / "screenshots" / "01-elias-windows-splash.png"
ORIG = ROOT / "original"


def decode_png_rgb(path: Path):
    raw = path.read_bytes()
    assert raw[:8] == b"\x89PNG\r\n\x1a\n"
    pos = 8
    width = height = bit_depth = color_type = 0
    idat = []
    while pos < len(raw):
        size = int.from_bytes(raw[pos:pos+4], "big"); pos += 4
        ctype = raw[pos:pos+4]; pos += 4
        cdata = raw[pos:pos+size]; pos += size
        pos += 4
        if ctype == b"IHDR":
            width, height = struct.unpack(">II", cdata[:8])
            bit_depth, color_type = cdata[8], cdata[9]
        elif ctype == b"IDAT":
            idat.append(cdata)
        elif ctype == b"IEND":
            break
    decoded = zlib.decompress(b"".join(idat))
    bpp = 3 if color_type == 2 else 4
    stride = width * bpp
    out = bytearray()
    prev = bytes(stride)
    p = 0
    for r in range(height):
        ftype = decoded[p]; p += 1
        row = bytearray(decoded[p:p + stride]); p += stride
        if ftype == 1:
            for i in range(bpp, len(row)):
                row[i] = (row[i] + row[i - bpp]) & 0xFF
        elif ftype == 2:
            for i in range(len(row)):
                row[i] = (row[i] + prev[i]) & 0xFF
        elif ftype == 3:
            for i in range(len(row)):
                left = row[i - bpp] if i >= bpp else 0
                row[i] = (row[i] + ((left + prev[i]) >> 1)) & 0xFF
        elif ftype == 4:
            for i in range(len(row)):
                a = row[i - bpp] if i >= bpp else 0
                bv = prev[i]
                c = prev[i - bpp] if i >= bpp else 0
                p2 = a + bv - c
                pa, pb, pc = abs(p2-a), abs(p2-bv), abs(p2-c)
                pr = a if pa <= pb and pa <= pc else (bv if pb <= pc else c)
                row[i] = (row[i] + pr) & 0xFF
        out.extend(row)
        prev = bytes(row)
    return bytes(out), width, height, bpp


def is_white(pixels, idx):
    return pixels[idx] > 200 and pixels[idx+1] > 200 and pixels[idx+2] > 200


def extract_logo_bbox_native(pixels, W, H, bpp):
    """Find logo bounding box on the screenshot, return cropped 1bpp bitmap
    at NATIVE CGA 640x200 resolution.

    Returns: (logo_bytes, native_w, native_h, bytes_per_row, native_x0, native_y0)
    """
    # Find rows with substantial white in top half
    rows_white = []
    for y in range(H // 2):
        cnt = sum(1 for x in range(W) if is_white(pixels, (y*W+x)*bpp))
        rows_white.append(cnt)
    THRESH = 20
    y0 = y1 = None
    for y, c in enumerate(rows_white):
        if c >= THRESH:
            if y0 is None:
                y0 = y
            y1 = y
        elif y0 is not None and y - y1 > 8:
            break
    # Find horizontal extent within those rows
    cols_white = [0] * W
    for y in range(y0, y1+1):
        for x in range(W):
            if is_white(pixels, (y*W+x)*bpp):
                cols_white[x] += 1
    XTHRESH = 1
    x0 = x1 = None
    for x, c in enumerate(cols_white):
        if c >= XTHRESH:
            if x0 is None:
                x0 = x
            x1 = x
    print(f"Screenshot bbox: x={x0}..{x1} ({x1-x0+1}px), y={y0}..{y1} ({y1-y0+1}px)")
    # Map to CGA native (640x200)
    native_x0 = x0 * 640 // W
    native_x1 = x1 * 640 // W
    native_y0 = y0 * 200 // H
    native_y1 = y1 * 200 // H
    nw = native_x1 - native_x0 + 1
    nh = native_y1 - native_y0 + 1
    bpr = (nw + 7) // 8
    print(f"Native CGA bbox: x={native_x0}..{native_x1} ({nw}px), "
          f"y={native_y0}..{native_y1} ({nh}px) -> {bpr}B/row, "
          f"{nh*bpr} bytes total")
    out = bytearray(bpr * nh)
    for ny in range(nh):
        ay = (native_y0 + ny) * H // 200
        for nx in range(nw):
            ax = (native_x0 + nx) * W // 640
            i = (ay * W + ax) * bpp
            if is_white(pixels, i):
                out[ny * bpr + nx // 8] |= 1 << (7 - (nx % 8))
    return bytes(out), nw, nh, bpr, native_x0, native_y0


def shift_bytes(data: bytes, shift: int) -> bytes:
    """Rotate-left every byte horizontally by `shift` bits, carrying across
    bytes (so the entire bitstream shifts left by `shift` bits).
    Returns a NEW byte stream with the same length-1 (the last byte is
    truncated since we lose `shift` bits of data on the right edge)."""
    if shift == 0:
        return data
    out = bytearray()
    for i in range(len(data) - 1):
        b = ((data[i] << shift) | (data[i+1] >> (8 - shift))) & 0xFF
        out.append(b)
    return bytes(out)


def render_png(out_path: Path, bits: bytes, W: int, H: int, bpr: int):
    raw = bytearray()
    for r in range(H):
        raw.append(0)
        for x in range(W):
            v = 0xFF if (bits[r*bpr + x//8] >> (7 - x%8)) & 1 else 0x00
            raw.append(v); raw.append(v); raw.append(v)
    def chunk(t, d):
        c = zlib.crc32(t + d)
        return struct.pack(">I", len(d)) + t + d + struct.pack(">I", c)
    sig = b"\x89PNG\r\n\x1a\n"
    ihdr = struct.pack(">IIBBBBB", W, H, 8, 2, 0, 0, 0)
    idat = zlib.compress(bytes(raw))
    out_path.write_bytes(sig + chunk(b"IHDR", ihdr) + chunk(b"IDAT", idat) +
                         chunk(b"IEND", b""))


def search_in_file(data: bytes, needle: bytes, label: str = "") -> list:
    """Find non-overlapping matches of needle in data. Returns offsets."""
    hits = []
    if len(needle) < 4:
        return hits
    pos = 0
    while True:
        i = data.find(needle, pos)
        if i < 0:
            break
        hits.append(i)
        pos = i + 1
    return hits


def main() -> int:
    if not SHOT.exists():
        print(f"!! missing {SHOT}")
        return 1
    pixels, W, H, bpp = decode_png_rgb(SHOT)
    print(f"Splash: {W}x{H}, {bpp}B/px")
    bits, nw, nh, bpr, x0, y0 = extract_logo_bbox_native(pixels, W, H, bpp)

    OUT_DIR = ROOT / "screenshots" / "blibbet_hunt"
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    render_png(OUT_DIR / f"logo_cropped_{nw}x{nh}.png", bits, nw, nh, bpr)
    print(f"Saved cropped logo to screenshots/blibbet_hunt/logo_cropped_{nw}x{nh}.png")

    # Pick the most distinctive row (most balanced black/white ratio,
    # most byte-transitions)
    best_score = -1
    best_row = -1
    for ri in range(nh):
        row = bits[ri*bpr:(ri+1)*bpr]
        if all(b == 0 for b in row) or all(b == 0xFF for b in row):
            continue
        transitions = sum(1 for i in range(len(row)-1) if row[i] != row[i+1])
        ones = sum(bin(b).count("1") for b in row)
        balance = min(ones, nw - ones) / nw  # 0..0.5
        score = transitions * balance
        if score > best_score:
            best_score = score; best_row = ri
    print(f"Most distinctive row: {best_row} (score={best_score:.2f})")

    # Build a search-key set: the most distinctive row, with all 8 shifts,
    # both normal and inverted.
    files_to_search = ["WIN.COM", "WIN100.BIN", "WIN100.OVL",
                       "KERNEL.EXE", "USER.EXE", "GDI.EXE",
                       "CGA.DRV", "EGAHIRES.DRV", "EGALORES.DRV",
                       "MSDOS.EXE", "WINOLDAP.MOD", "MSDOSD.EXE"]
    print(f"\n=== Searching for distinctive row {best_row} (with all 8 shifts, plus inverted) ===")
    row_bytes = bits[best_row*bpr:(best_row+1)*bpr]
    inv_row = bytes(b ^ 0xFF for b in row_bytes)

    for fn in files_to_search:
        p = ORIG / fn
        if not p.exists():
            continue
        data = p.read_bytes()
        hits_total = []
        for shift in range(8):
            for label, src in [("normal", row_bytes), ("inv", inv_row)]:
                shifted = shift_bytes(src, shift) if shift else src
                # Try the full row first, then progressively shorter slices
                for klen in (bpr, bpr-1, bpr//2, max(8, bpr//4)):
                    if klen < 4 or klen > len(shifted):
                        continue
                    key = shifted[:klen]
                    if (sum(b == 0 for b in key) > klen-1
                            or sum(b == 0xFF for b in key) > klen-1):
                        continue
                    hits = search_in_file(data, key)
                    if hits:
                        hits_total.append((shift, label, klen, hits[0],
                                           len(hits)))
                        break  # next shift/label
                else:
                    continue
                break  # found in this shift, try next
        if hits_total:
            print(f"\n  [{fn}] ({len(data)}B):")
            for shift, label, klen, off, nhit in hits_total:
                print(f"    shift={shift} {label:6s} key={klen}B "
                      f"-> 1st @0x{off:06X} (total {nhit} hits)")
        else:
            print(f"  [{fn}] {len(data)}B - no row-{best_row} matches")

    # Also do a global "stripe" search: 4 consecutive rows of the logo,
    # with all 8 shifts, normal only.
    print(f"\n=== Searching for 4-row stripe starting at row {best_row} (all 8 shifts) ===")
    stripe = bits[best_row*bpr:(best_row+4)*bpr]
    if len(stripe) == 4*bpr:
        for fn in files_to_search:
            p = ORIG / fn
            if not p.exists():
                continue
            data = p.read_bytes()
            for shift in range(8):
                shifted = shift_bytes(stripe, shift) if shift else stripe
                # Stripe only valid as a contiguous block if rows are stored
                # contiguously at this exact width
                if data.find(shifted) >= 0:
                    print(f"  [{fn}] STRIPE (shift={shift}) @0x{data.find(shifted):06X}")
                    break

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
