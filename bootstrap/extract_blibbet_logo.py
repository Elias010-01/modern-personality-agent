#!/usr/bin/env python3
"""extract_blibbet_logo.py - Extract the BIG MICROSOFT splash logo from
WIN.COM at its exact location, deinterleave it, and save as PNG.

Layout discovered:
  - File offset: 0x099D - 0x1308 (end of WIN.COM)
  - Size: 2412 bytes (0x96C)
  - Format: CGA mode 6 (640x200, 2-color, 1bpp)
  - Bitmap dims: 536 px wide x 36 px tall
  - Stride: 67 bytes/row
  - Layout: 18 even rows (0,2,..,34) followed by 18 odd rows (1,3,..,35)
    -- this matches CGA video memory's two banks (B800:0000 = even rows,
    B800:2000 = odd rows). The blit routine likely copies the first half
    to B800:0000 and the second half to B800:2000.
"""
from __future__ import annotations

import struct
import sys
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "bootstrap"))

WIN_COM = ROOT / "original" / "WIN.COM"
OUT_DIR = ROOT / "screenshots" / "blibbet_hunt" / "extracted"
OUT_DIR.mkdir(parents=True, exist_ok=True)


def render_png(out_path: Path, bits: bytes, W: int, H: int, bpr: int, scale=2,
               white=(255, 255, 255), bg=(0, 0, 128)):
    raw = bytearray()
    for r in range(H):
        for sy in range(scale):
            raw.append(0)
            for x in range(W):
                byte_off = r * bpr + x // 8
                set_ = byte_off < len(bits) and (bits[byte_off] >> (7 - x % 8)) & 1
                px = white if set_ else bg
                for sx in range(scale):
                    raw.append(px[0]); raw.append(px[1]); raw.append(px[2])
    def chunk(t, d):
        c = zlib.crc32(t + d)
        return struct.pack(">I", len(d)) + t + d + struct.pack(">I", c)
    sig = b"\x89PNG\r\n\x1a\n"
    ihdr = struct.pack(">IIBBBBB", W*scale, H*scale, 8, 2, 0, 0, 0)
    idat = zlib.compress(bytes(raw))
    out_path.write_bytes(sig + chunk(b"IHDR", ihdr) + chunk(b"IDAT", idat) +
                         chunk(b"IEND", b""))


def main() -> int:
    data = WIN_COM.read_bytes()
    print(f"WIN.COM: {len(data)} bytes (0x{len(data):04X})")

    from win103_layout import (
        WINCOM_LOGO_OFFSET as LOGO_OFF,
        WINCOM_LOGO_BPR as BPR,
        WINCOM_LOGO_HEIGHT as H,
        WINCOM_LOGO_BANK_BYTES as BANK_SIZE,
        WINCOM_LOGO_SIZE as SIZE,
    )
    end = LOGO_OFF + SIZE
    print(f"Logo span: 0x{LOGO_OFF:04X} .. 0x{end-1:04X} (incl)")
    print(f"Total: {SIZE} bytes ({SIZE} = 2 banks of {BANK_SIZE} bytes each)")
    print(f"End matches file end? {end == len(data)} (file end = 0x{len(data):04X})")

    raw = data[LOGO_OFF:end]
    bank_even = raw[:BANK_SIZE]
    bank_odd = raw[BANK_SIZE:]

    # Deinterleave: row 0 = bank_even row 0, row 1 = bank_odd row 0,
    # row 2 = bank_even row 1, row 3 = bank_odd row 1, ...
    interleaved = bytearray(SIZE)
    for r in range(H // 2):
        interleaved[(2*r)*BPR:(2*r+1)*BPR] = bank_even[r*BPR:(r+1)*BPR]
        interleaved[(2*r+1)*BPR:(2*r+2)*BPR] = bank_odd[r*BPR:(r+1)*BPR]

    out_full = OUT_DIR / "blibbet_logo_536x36.png"
    render_png(out_full, bytes(interleaved), BPR * 8, H, BPR, scale=2)
    print(f"\nSaved: {out_full.relative_to(ROOT)}")

    # Also render in CGA mode 6 framebuffer style (640x200) - with logo
    # placed at typical screen position.  The screenshot showed bbox
    # x=54..587. So target screen X start = 54.
    SCREEN_W = 640
    SCREEN_H = 200
    SCREEN_BPR = 80
    fb = bytearray(SCREEN_BPR * SCREEN_H)
    LOGO_X = 54  # screen x offset where logo starts
    LOGO_Y = 36  # screen y offset where logo starts
    for r in range(H):
        for x in range(BPR * 8):
            byte_off = r * BPR + x // 8
            set_ = (interleaved[byte_off] >> (7 - x % 8)) & 1
            sx = LOGO_X + x
            sy = LOGO_Y + r
            if 0 <= sx < SCREEN_W and 0 <= sy < SCREEN_H and set_:
                fb[sy * SCREEN_BPR + sx // 8] |= 1 << (7 - sx % 8)
    out_fb = OUT_DIR / "blibbet_logo_in_screen_640x200.png"
    render_png(out_fb, bytes(fb), SCREEN_W, SCREEN_H, SCREEN_BPR, scale=2)
    print(f"Saved: {out_fb.relative_to(ROOT)}")

    # Save raw bitmap data to disk for editing
    out_bin = OUT_DIR / "blibbet_logo_raw_2412B.bin"
    out_bin.write_bytes(raw)
    out_dei = OUT_DIR / "blibbet_logo_linear_2412B.bin"
    out_dei.write_bytes(bytes(interleaved))
    print(f"Saved raw (interleaved as in WIN.COM): {out_bin.relative_to(ROOT)}")
    print(f"Saved deinterleaved (linear row-major): {out_dei.relative_to(ROOT)}")

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
