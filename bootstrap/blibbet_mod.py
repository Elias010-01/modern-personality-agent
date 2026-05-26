#!/usr/bin/env python3
"""blibbet_mod.py - Round-trip editor for the BIG MICROSOFT splash
logo in Windows 1.03's WIN.COM.

The logo is at WIN.COM offset 0x099D..0x1308 (2412 bytes) as a CGA-mode-6
1bpp bitmap, 536x36 px, stored bank-interleaved (18 even rows then 18
odd rows).

Sub-commands:
  export   - read WIN.COM, write blibbet_logo.bmp (1bpp, 536x36) for
             editing in MS Paint, plus a 4x scaled-up PNG preview.
  import   - read edited blibbet_logo.bmp, patch WIN.COM in-place
             (writes WIN_PATCHED.COM by default).
  roundtrip - export, then import without modification, then verify the
              produced WIN.COM matches the original byte-for-byte.

Usage:
  python blibbet_mod.py export
  python blibbet_mod.py import <edited.bmp>      [--output WIN.COM]
  python blibbet_mod.py roundtrip
"""
from __future__ import annotations

import argparse
import struct
import sys
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ORIG_WIN_COM = ROOT / "original" / "WIN.COM"
WORK_DIR = ROOT / "mod" / "blibbet"
WORK_DIR.mkdir(parents=True, exist_ok=True)

DEFAULT_BMP = WORK_DIR / "blibbet_logo.bmp"
DEFAULT_PNG_PREVIEW = WORK_DIR / "blibbet_logo_4x_preview.png"
DEFAULT_PATCHED_COM = WORK_DIR / "WIN.COM"

# ----- Logo geometry (reverse-engineered) -----
LOGO_OFFSET = 0x099D
LOGO_WIDTH = 536
LOGO_HEIGHT = 36
BPR = 67                    # bytes per row at 1bpp = ceil(536/8)
BANK_ROWS = LOGO_HEIGHT // 2  # 18 rows per bank
BANK_BYTES = BANK_ROWS * BPR  # 1206 bytes per bank
LOGO_SIZE = BANK_BYTES * 2    # 2412 bytes total


# ============================================================
#  Internal helpers: CGA-bank-interleaved <-> linear conversion
# ============================================================

def cga_to_linear(raw: bytes) -> bytes:
    """Convert WIN.COM-stored interleaved bytes (18 even rows + 18 odd
    rows) to linear row-major (rows 0,1,2,...,35)."""
    assert len(raw) == LOGO_SIZE
    even_bank = raw[:BANK_BYTES]
    odd_bank = raw[BANK_BYTES:]
    out = bytearray(LOGO_SIZE)
    for r in range(BANK_ROWS):
        out[(2*r)*BPR:(2*r+1)*BPR] = even_bank[r*BPR:(r+1)*BPR]
        out[(2*r+1)*BPR:(2*r+2)*BPR] = odd_bank[r*BPR:(r+1)*BPR]
    return bytes(out)


def linear_to_cga(lin: bytes) -> bytes:
    """Convert linear row-major bytes to interleaved CGA layout (18 even
    rows then 18 odd rows)."""
    assert len(lin) == LOGO_SIZE
    even_bank = bytearray(BANK_BYTES)
    odd_bank = bytearray(BANK_BYTES)
    for r in range(BANK_ROWS):
        even_bank[r*BPR:(r+1)*BPR] = lin[(2*r)*BPR:(2*r+1)*BPR]
        odd_bank[r*BPR:(r+1)*BPR] = lin[(2*r+1)*BPR:(2*r+2)*BPR]
    return bytes(even_bank) + bytes(odd_bank)


# ============================================================
#  BMP I/O (1bpp monochrome)
# ============================================================
#
# BMP layout (V3, 1bpp):
#   BITMAPFILEHEADER  (14 B): 'BM', file_size, 0, 0, off_to_pixels
#   BITMAPINFOHEADER  (40 B): 40, w, h, planes=1, bpp=1, comp=0, ...
#   palette (8 B): two RGBQUADs (color 0 and color 1)
#   pixel data: BOTTOM-UP rows, each row padded to multiple of 4 bytes
#     bit order within byte: MSB = leftmost pixel (matches CGA exactly)

def write_bmp_1bpp(path: Path, lin_bits: bytes, w: int, h: int, bpr: int):
    # Row stride padded to 4-byte boundary
    stride = (bpr + 3) & ~3
    pad = stride - bpr
    pixel_off = 14 + 40 + 8
    pixel_size = stride * h
    file_size = pixel_off + pixel_size

    out = bytearray()
    # File header
    out += b"BM"
    out += struct.pack("<I", file_size)
    out += struct.pack("<HH", 0, 0)
    out += struct.pack("<I", pixel_off)
    # Info header
    out += struct.pack("<IiiHHIIiiII",
                       40, w, h, 1, 1, 0, pixel_size, 2835, 2835, 2, 2)
    # Palette: index 0 = blue (CGA bg), index 1 = white (CGA fg)
    # BMP RGBQUAD: B G R 0
    out += bytes([0x80, 0x00, 0x00, 0x00])  # color 0: dark blue
    out += bytes([0xFF, 0xFF, 0xFF, 0x00])  # color 1: white
    # Pixel data, bottom-up
    for row in range(h - 1, -1, -1):
        out += lin_bits[row*bpr:(row+1)*bpr]
        out += b"\x00" * pad
    path.write_bytes(out)


def read_bmp_1bpp(path: Path) -> tuple[bytes, int, int]:
    """Read a 1bpp BMP and return (linear row-major 1bpp bits, w, h).
    Bit order: MSB = leftmost pixel.  Color 0 = bit 0, color 1 = bit 1.

    To stay robust against Paint editing-and-resave (which sometimes
    reorders palette colors so that index 0=white and index 1=color), we
    detect which palette entry is the FOREGROUND (white) and produce a
    bit pattern where bit=1 means foreground."""
    raw = path.read_bytes()
    if raw[:2] != b"BM":
        raise ValueError(f"{path} is not a BMP file")
    pixel_off = struct.unpack("<I", raw[10:14])[0]
    info_size = struct.unpack("<I", raw[14:18])[0]
    if info_size < 40:
        raise ValueError(f"{path}: BMP info header too small ({info_size}B)")
    w = struct.unpack("<i", raw[18:22])[0]
    h = struct.unpack("<i", raw[22:26])[0]
    planes = struct.unpack("<H", raw[26:28])[0]
    bpp = struct.unpack("<H", raw[28:30])[0]
    comp = struct.unpack("<I", raw[30:34])[0]
    if planes != 1 or bpp != 1:
        raise ValueError(f"{path}: expected 1bpp, got {bpp}bpp")
    if comp != 0:
        raise ValueError(f"{path}: expected uncompressed (BI_RGB)")
    bottom_up = h > 0
    h = abs(h)
    bpr = (w + 7) // 8
    stride = (bpr + 3) & ~3

    # Read palette: 2 RGBQUAD entries (B, G, R, 0)
    pal_off = 14 + info_size
    c0 = raw[pal_off:pal_off+4]
    c1 = raw[pal_off+4:pal_off+8]
    # Determine which palette index is the FOREGROUND.  For us,
    # "foreground" = whitest (max R+G+B).
    sum0 = c0[0] + c0[1] + c0[2]
    sum1 = c1[0] + c1[1] + c1[2]
    fg_index = 1 if sum1 > sum0 else 0

    # Read pixels
    lin = bytearray(bpr * h)
    for y_disp in range(h):
        # disp row 0 is top of image
        row_in_file = (h - 1 - y_disp) if bottom_up else y_disp
        src = pixel_off + row_in_file * stride
        row = raw[src:src + bpr]
        if fg_index == 1:
            lin[y_disp*bpr:(y_disp+1)*bpr] = row
        else:
            lin[y_disp*bpr:(y_disp+1)*bpr] = bytes(b ^ 0xFF for b in row)
    return bytes(lin), w, h


# ============================================================
#  PNG output (4x scaled preview, with CGA blue background)
# ============================================================

def write_png_preview(path: Path, lin_bits: bytes, w: int, h: int, bpr: int,
                      scale: int = 4, fg=(255, 255, 255), bg=(0, 0, 168)):
    raw = bytearray()
    for r in range(h):
        for sy in range(scale):
            raw.append(0)
            for x in range(w):
                set_ = (lin_bits[r*bpr + x//8] >> (7 - x%8)) & 1
                px = fg if set_ else bg
                for sx in range(scale):
                    raw.append(px[0]); raw.append(px[1]); raw.append(px[2])

    def chunk(t, d):
        c = zlib.crc32(t + d)
        return struct.pack(">I", len(d)) + t + d + struct.pack(">I", c)
    sig = b"\x89PNG\r\n\x1a\n"
    ihdr = struct.pack(">IIBBBBB", w*scale, h*scale, 8, 2, 0, 0, 0)
    idat = zlib.compress(bytes(raw))
    path.write_bytes(sig + chunk(b"IHDR", ihdr) + chunk(b"IDAT", idat) +
                     chunk(b"IEND", b""))


# ============================================================
#  Sub-commands
# ============================================================

def cmd_export(bmp_path: Path = DEFAULT_BMP,
               preview_path: Path = DEFAULT_PNG_PREVIEW,
               win_com_path: Path = ORIG_WIN_COM):
    print(f"[export] Reading {win_com_path}")
    data = win_com_path.read_bytes()
    if len(data) < LOGO_OFFSET + LOGO_SIZE:
        print(f"!! {win_com_path} too small ({len(data)} B)")
        return 1
    cga_raw = data[LOGO_OFFSET:LOGO_OFFSET+LOGO_SIZE]
    linear = cga_to_linear(cga_raw)
    bmp_path.parent.mkdir(parents=True, exist_ok=True)
    write_bmp_1bpp(bmp_path, linear, LOGO_WIDTH, LOGO_HEIGHT, BPR)
    print(f"[export] Wrote {bmp_path} ({bmp_path.stat().st_size} B, "
          f"1bpp BMP {LOGO_WIDTH}x{LOGO_HEIGHT})")
    write_png_preview(preview_path, linear, LOGO_WIDTH, LOGO_HEIGHT, BPR,
                      scale=4)
    print(f"[export] Wrote {preview_path} (4x preview)")
    print()
    print("Edit the BMP in MS Paint:")
    print(f"  1. Open: {bmp_path}")
    print("  2. Use View > Zoom to 800% to edit individual pixels")
    print("  3. Use ONLY pure black (#000000) and white (#FFFFFF) - no grays")
    print("  4. Save as the same .bmp file (do NOT change format)")
    print("  5. Run:  python bootstrap/blibbet_mod.py import "
          f"\"{bmp_path}\"")
    return 0


def cmd_import(bmp_path: Path,
               output_path: Path = DEFAULT_PATCHED_COM,
               win_com_path: Path = ORIG_WIN_COM):
    print(f"[import] Reading edited BMP: {bmp_path}")
    if not bmp_path.exists():
        print(f"!! {bmp_path} not found")
        return 1
    bits, w, h = read_bmp_1bpp(bmp_path)
    if w != LOGO_WIDTH or h != LOGO_HEIGHT:
        print(f"!! BMP is {w}x{h}, expected {LOGO_WIDTH}x{LOGO_HEIGHT}")
        print("   (Make sure you didn't resize in Paint)")
        return 1
    print(f"[import] Read {len(bits)} bytes of 1bpp data ({w}x{h})")
    cga = linear_to_cga(bits)
    assert len(cga) == LOGO_SIZE

    print(f"[import] Patching {win_com_path} -> {output_path}")
    data = bytearray(win_com_path.read_bytes())
    data[LOGO_OFFSET:LOGO_OFFSET+LOGO_SIZE] = cga
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_bytes(bytes(data))
    print(f"[import] Wrote {output_path} ({len(data)} B)")

    # Verification: render the patched logo as PNG
    verify_png = output_path.with_suffix(".verify.png")
    write_png_preview(verify_png, bits, LOGO_WIDTH, LOGO_HEIGHT, BPR,
                      scale=4)
    print(f"[import] Verification preview: {verify_png}")
    return 0


def cmd_roundtrip():
    print("[roundtrip] Step 1: export logo from original WIN.COM")
    if cmd_export() != 0:
        return 1
    print("\n[roundtrip] Step 2: import unchanged BMP back into WIN.COM")
    if cmd_import(DEFAULT_BMP) != 0:
        return 1
    print("\n[roundtrip] Step 3: verify byte-exactness")
    orig = ORIG_WIN_COM.read_bytes()
    patched = DEFAULT_PATCHED_COM.read_bytes()
    if orig == patched:
        print(f"  ** OK ** patched WIN.COM matches original byte-for-byte "
              f"({len(orig)} B)")
        return 0
    else:
        diffs = sum(1 for a, b in zip(orig, patched) if a != b)
        print(f"  ** MISMATCH ** {diffs} differing bytes between original "
              f"and roundtripped WIN.COM")
        # Show first few diffs
        shown = 0
        for i, (a, b) in enumerate(zip(orig, patched)):
            if a != b and shown < 20:
                print(f"    @0x{i:04X}: orig=0x{a:02X} patched=0x{b:02X}")
                shown += 1
        return 1


def main(argv: list[str] | None = None) -> int:
    p = argparse.ArgumentParser(description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = p.add_subparsers(dest="cmd", required=True)
    p_export = sub.add_parser("export", help="Export logo from WIN.COM as BMP")
    p_export.add_argument("--bmp", type=Path, default=DEFAULT_BMP)
    p_export.add_argument("--preview", type=Path, default=DEFAULT_PNG_PREVIEW)
    p_export.add_argument("--win-com", type=Path, default=ORIG_WIN_COM)
    p_import = sub.add_parser("import", help="Import edited BMP into WIN.COM")
    p_import.add_argument("bmp", type=Path)
    p_import.add_argument("--output", type=Path, default=DEFAULT_PATCHED_COM)
    p_import.add_argument("--win-com", type=Path, default=ORIG_WIN_COM)
    sub.add_parser("roundtrip", help="Verify export+import is byte-exact")
    args = p.parse_args(argv)

    if args.cmd == "export":
        return cmd_export(args.bmp, args.preview, args.win_com)
    elif args.cmd == "import":
        return cmd_import(args.bmp, args.output, args.win_com)
    elif args.cmd == "roundtrip":
        return cmd_roundtrip()
    return 0


if __name__ == "__main__":
    sys.exit(main())
