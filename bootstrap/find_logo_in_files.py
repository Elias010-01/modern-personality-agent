#!/usr/bin/env python3
"""find_logo_in_files.py

Extract the BIG MICROSOFT logo region from the user's splash
screenshot, downscale to native CGA 640x200 mode 6 (1bpp), and search
for that exact byte pattern in WIN.COM, WIN100.BIN, WIN100.OVL,
KERNEL.EXE, USER.EXE, GDI.EXE, and the EGA/CGA video drivers.

CGA mode 6 stores video memory as 1bpp packed at 80 B/row.  The bitmap
in the source file SHOULD be the same format (the rendering routine
typically just `rep movsb`s from source to video memory).

Search strategy:
  1. For each candidate byte-aligned column offset (0, 1, .., 7), build
     a packed 1bpp pattern of width-rounded-up-to-byte-boundary.
  2. For each candidate FILE, slide the pattern over every offset and
     match against the file's bytes.
  3. Report any match (we expect one) along with file + offset.
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
    if color_type == 2:
        bpp = 3
    elif color_type == 6:
        bpp = 4
    else:
        raise ValueError(color_type)
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
                pa = abs(p2 - a); pb = abs(p2 - bv); pc = abs(p2 - c)
                pr = a if pa <= pb and pa <= pc else (bv if pb <= pc else c)
                row[i] = (row[i] + pr) & 0xFF
        out.extend(row)
        prev = bytes(row)
    return bytes(out), width, height, bpp


def extract_logo_1bpp(pixels, W, H, bpp):
    """Find logo and return (mask 1bpp packed at 640 px = 80 B/row,
    n_rows, top, bottom)."""
    def is_white(i):
        return pixels[i] > 200 and pixels[i+1] > 200 and pixels[i+2] > 200

    # Find logo vertical extent (top contiguous block of white)
    rows_with_white = []
    for y in range(H // 2):
        cnt = sum(1 for x in range(W) if is_white((y * W + x) * bpp))
        rows_with_white.append(cnt)
    THRESH = 20
    y0 = None
    y1 = None
    for y, c in enumerate(rows_with_white):
        if c >= THRESH:
            if y0 is None:
                y0 = y
            y1 = y
        elif y0 is not None and y - y1 > 8:
            break

    # Convert from screenshot row range to native CGA mode 6 row range
    # (640 wide x 200 tall). Screenshot was 640x480.
    native_y0 = y0 * 200 // H
    native_y1 = y1 * 200 // H
    n_native_rows = native_y1 - native_y0 + 1
    print(f"Logo: screenshot y={y0}..{y1} -> native CGA y={native_y0}..{native_y1} "
          f"({n_native_rows} CGA rows)")

    # Pack as 1bpp 80 B/row at native resolution.
    # For each native row, sample the screenshot at the corresponding y
    # (taking the MAJORITY-white over the upscale band) and pack 640
    # native cols into 80 bytes.
    # Native pixel(x, y_native) corresponds to screenshot pixel
    # (x * W // 640, y_native * H // 200)
    out = bytearray(80 * n_native_rows)
    for ny in range(n_native_rows):
        ay = (native_y0 + ny) * H // 200
        for nx in range(640):
            ax = nx * W // 640
            i = (ay * W + ax) * bpp
            if pixels[i] > 200 and pixels[i+1] > 200 and pixels[i+2] > 200:
                out[ny * 80 + nx // 8] |= 1 << (7 - (nx % 8))
    return bytes(out), n_native_rows, native_y0, native_y1


def search_bytes(haystack: bytes, needle: bytes,
                 min_match_run: int = 64) -> list[int]:
    """Find every offset where `needle[k:]` occurs in haystack for some
    k where len(needle) - k >= min_match_run. Returns list of (off, match_len)
    tuples."""
    hits = []
    nlen = len(needle)
    # Search the FIRST `min_match_run` bytes of needle as a fixed key
    if nlen < min_match_run:
        return hits
    key = needle[:min_match_run]
    pos = 0
    while True:
        i = haystack.find(key, pos)
        if i < 0:
            break
        # Extend match as far as possible
        match_len = min_match_run
        while (i + match_len < len(haystack)
               and match_len < nlen
               and haystack[i + match_len] == needle[match_len]):
            match_len += 1
        hits.append((i, match_len))
        pos = i + 1
    return hits


def main() -> int:
    if not SHOT.exists():
        print(f"!! missing {SHOT}")
        return 1
    pixels, W, H, bpp = decode_png_rgb(SHOT)
    print(f"Splash: {W}x{H}, {bpp} B/px")
    logo_1bpp, n_rows, ny0, ny1 = extract_logo_1bpp(pixels, W, H, bpp)
    print(f"Extracted logo: {n_rows} rows x 80 B/row = "
          f"{len(logo_1bpp)} bytes total")

    # Save the extracted logo as PNG for visual sanity check
    OUT_DIR = ROOT / "screenshots" / "blibbet_hunt"
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    out_png = OUT_DIR / f"extracted_logo_640x{n_rows}.png"
    raw = bytearray()
    for r in range(n_rows):
        raw.append(0)
        for x in range(640):
            byte_idx = r * 80 + x // 8
            bit_idx = 7 - (x % 8)
            v = 0xFF if (logo_1bpp[byte_idx] >> bit_idx) & 1 else 0x00
            raw.append(v); raw.append(v); raw.append(v)

    def chunk(t, d):
        c = zlib.crc32(t + d)
        return struct.pack(">I", len(d)) + t + d + struct.pack(">I", c)
    sig = b"\x89PNG\r\n\x1a\n"
    ihdr = struct.pack(">IIBBBBB", 640, n_rows, 8, 2, 0, 0, 0)
    idat = zlib.compress(bytes(raw))
    out_png.write_bytes(sig + chunk(b"IHDR", ihdr) + chunk(b"IDAT", idat) +
                        chunk(b"IEND", b""))
    print(f"Saved native logo to {out_png.relative_to(ROOT)}")

    # Search every original/* file for occurrences of any contiguous
    # substring of length >= 64 from the extracted logo.
    print("\n=== Searching all original/ files ===")
    files_to_search = ["WIN.COM", "WIN100.BIN", "WIN100.OVL",
                       "KERNEL.EXE", "USER.EXE", "GDI.EXE",
                       "CGA.DRV", "EGAHIRES.DRV", "EGALORES.DRV",
                       "MSDOS.EXE", "WINOLDAP.MOD"]
    # Try multiple needle slices: pick rows from the logo that have
    # interesting content (not all-zero, not all-FF).
    for fn in files_to_search:
        p = ORIG / fn
        if not p.exists():
            continue
        data = p.read_bytes()
        # For each row of the logo, search its 80-byte row in the file
        any_hit = False
        for ri in range(n_rows):
            row = logo_1bpp[ri * 80:(ri + 1) * 80]
            # skip rows that are all-zero or all-ff (won't be uniquely findable)
            if row == b"\x00" * 80 or row == b"\xFF" * 80:
                continue
            if data.find(row) >= 0:
                hit = data.find(row)
                if not any_hit:
                    print(f"\n  [{fn}] ({len(data)}B):")
                    any_hit = True
                print(f"    row {ri:3d} (80B) found at offset 0x{hit:06X}")
        if not any_hit:
            # Try a smaller key
            for key_len in [32, 16, 8]:
                for ri in range(n_rows):
                    row = logo_1bpp[ri * 80:(ri + 1) * 80]
                    for ki in range(0, 80 - key_len, 8):
                        key = row[ki:ki + key_len]
                        if all(b == 0 for b in key) or all(b == 0xFF for b in key):
                            continue
                        idx = data.find(key)
                        if idx >= 0:
                            print(f"  [{fn}] partial key ({key_len}B) "
                                  f"row{ri} @file off 0x{idx:06X} "
                                  f"key=...{key.hex()}")
                            break
                    else:
                        continue
                    break
                else:
                    continue
                break
            else:
                print(f"  [{fn}] {len(data)}B - NO MATCH (full row or any "
                      f"32B+ slice)")
    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
