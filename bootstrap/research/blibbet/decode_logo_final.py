#!/usr/bin/env python3
"""decode_logo_final.py - Confirm exact location of the Blibbet logo in
WIN.COM, dump it as PNG and as a hex listing.

The big MICROSOFT splash logo is stored at the END of WIN.COM as a 
CGA mode-6 deinterleaved bitmap:
  - Width: 67 bytes (536 pixels) per row
  - Height: 36 rows
  - Layout: 18 even rows (0,2,4,..,34), then 18 odd rows (1,3,5,..,35)
  - Total: 2412 bytes
"""
from __future__ import annotations

import struct
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
WIN_COM = ROOT / "original" / "WIN.COM"
OUT_DIR = ROOT / "screenshots" / "blibbet_hunt" / "final"
OUT_DIR.mkdir(parents=True, exist_ok=True)


def render_png(out_path: Path, bits: bytes, W: int, H: int, bpr: int, scale=2):
    raw = bytearray()
    for r in range(H):
        for sy in range(scale):
            raw.append(0)
            for x in range(W):
                byte_off = r * bpr + x // 8
                v = 0xFF if byte_off < len(bits) and (bits[byte_off] >> (7 - x % 8)) & 1 else 0x00
                for sx in range(scale):
                    raw.append(v); raw.append(v); raw.append(v)
    def chunk(t, d):
        c = zlib.crc32(t + d)
        return struct.pack(">I", len(d)) + t + d + struct.pack(">I", c)
    sig = b"\x89PNG\r\n\x1a\n"
    ihdr = struct.pack(">IIBBBBB", W*scale, H*scale, 8, 2, 0, 0, 0)
    idat = zlib.compress(bytes(raw))
    out_path.write_bytes(sig + chunk(b"IHDR", ihdr) + chunk(b"IDAT", idat) +
                         chunk(b"IEND", b""))


def deinterleave(data: bytes, bpr: int, h: int) -> bytes:
    even_rows = (h + 1) // 2
    odd_rows = h // 2
    out = bytearray(h * bpr)
    for r in range(even_rows):
        out[(r * 2) * bpr:(r * 2 + 1) * bpr] = data[r * bpr:(r + 1) * bpr]
    for r in range(odd_rows):
        out[(r * 2 + 1) * bpr:(r * 2 + 2) * bpr] = data[(even_rows + r) * bpr:(even_rows + r + 1) * bpr]
    return bytes(out)


def main() -> int:
    data = WIN_COM.read_bytes()
    print(f"WIN.COM: {len(data)} bytes (0x{len(data):04X})")

    BPR = 67
    H = 36
    SIZE = BPR * H
    print(f"\nLogo dimensions: {BPR*8}x{H} px = {BPR}x{H} bytes (per half), {SIZE} bytes total\n")

    # Try a range of start offsets and render each
    print("=== Rendering PNGs at offsets 0x0980..0x09C0 (deinterleaved) ===")
    for start in range(0x0980, 0x09C8, 4):
        if start + SIZE > len(data):
            continue
        region = data[start:start + SIZE]
        di = deinterleave(region, BPR, H)
        out_path = OUT_DIR / f"start_0x{start:04X}.png"
        render_png(out_path, di, BPR * 8, H, BPR, scale=2)
        # Also count leading-zero columns in the deinterleaved image
        # to detect alignment
        first_nonzero_col = None
        for x in range(BPR * 8):
            for r in range(H):
                bit = (di[r * BPR + x // 8] >> (7 - x % 8)) & 1
                if bit:
                    first_nonzero_col = x
                    break
            if first_nonzero_col is not None:
                break
        last_nonzero_col = None
        for x in range(BPR * 8 - 1, -1, -1):
            for r in range(H):
                bit = (di[r * BPR + x // 8] >> (7 - x % 8)) & 1
                if bit:
                    last_nonzero_col = x
                    break
            if last_nonzero_col is not None:
                break
        first_nonzero_row = None
        for r in range(H):
            if any(di[r * BPR + c] for c in range(BPR)):
                first_nonzero_row = r
                break
        last_nonzero_row = None
        for r in range(H - 1, -1, -1):
            if any(di[r * BPR + c] for c in range(BPR)):
                last_nonzero_row = r
                break
        print(f"  start=0x{start:04X}: nonzero cols [{first_nonzero_col}..{last_nonzero_col}], "
              f"nonzero rows [{first_nonzero_row}..{last_nonzero_row}]")

    # Print the hex of the bitmap region
    BEST_START = 0x099B
    print(f"\n=== Hex dump of bitmap @0x{BEST_START:04X} ({SIZE} bytes) ===")
    region = data[BEST_START:BEST_START + SIZE]
    for i in range(0, len(region), 32):
        chunk_data = region[i:i+32]
        print(f"{BEST_START + i:04X}: " + " ".join(f"{b:02X}" for b in chunk_data))

    # Also dump just the first row (after deinterleaving) to see the
    # top of M
    di = deinterleave(region, BPR, H)
    print(f"\n=== Deinterleaved row 0 (top of logo) ===")
    print(" ".join(f"{b:02X}" for b in di[:BPR]))
    print(f"\n=== Deinterleaved row 1 ===")
    print(" ".join(f"{b:02X}" for b in di[BPR:2*BPR]))

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
