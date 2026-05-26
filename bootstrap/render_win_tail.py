#!/usr/bin/env python3
"""Render the tail of WIN.COM (0x1000..end) as a 1bpp bitmap at multiple
widths, to discover the BIG MICROSOFT logo layout."""
from __future__ import annotations

import struct
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
WIN_COM = ROOT / "original" / "WIN.COM"
OUT_DIR = ROOT / "screenshots" / "blibbet_hunt"
OUT_DIR.mkdir(parents=True, exist_ok=True)


def render_png(out_path: Path, bits: bytes, W: int, H: int, bpr: int):
    raw = bytearray()
    for r in range(H):
        raw.append(0)
        for x in range(W):
            byte_off = r * bpr + x // 8
            v = 0xFF if byte_off < len(bits) and (bits[byte_off] >> (7 - x % 8)) & 1 else 0x00
            raw.append(v); raw.append(v); raw.append(v)
    def chunk(t, d):
        c = zlib.crc32(t + d)
        return struct.pack(">I", len(d)) + t + d + struct.pack(">I", c)
    sig = b"\x89PNG\r\n\x1a\n"
    ihdr = struct.pack(">IIBBBBB", W, H, 8, 2, 0, 0, 0)
    idat = zlib.compress(bytes(raw))
    out_path.write_bytes(sig + chunk(b"IHDR", ihdr) + chunk(b"IDAT", idat) +
                         chunk(b"IEND", b""))


def main() -> int:
    data = WIN_COM.read_bytes()
    print(f"WIN.COM: {len(data)} bytes")

    # Try widths from 32 to 80 bytes/row, starting at multiple offsets
    OFFSETS = [0x1000, 0x1080, 0x1100, 0x1106, 0x1107]
    WIDTHS_BYTES = list(range(8, 90, 1))

    # For each offset, find the width that produces the most "horizontal-stripe"
    # patterns (high autocorrelation at row stride)
    for start in OFFSETS:
        tail = data[start:]
        print(f"\n=== Tail @0x{start:04X}, {len(tail)} bytes ===")
        best = []
        for bpr in WIDTHS_BYTES:
            h = len(tail) // bpr
            if h < 5:
                continue
            # Score: count vertical "transitions" - if it's a real bitmap of
            # text/letters, vertically adjacent bytes should be SIMILAR
            # (not random). High autocorrelation = bitmap-like.
            vert_match = 0
            tot = 0
            for r in range(h - 1):
                for c in range(bpr):
                    a = tail[r * bpr + c]
                    b = tail[(r + 1) * bpr + c]
                    # bit-similarity (popcount of NOT XOR)
                    similar = 8 - bin(a ^ b).count("1")
                    vert_match += similar
                    tot += 8
            if tot:
                score = vert_match / tot
                best.append((score, bpr, h))
        best.sort(reverse=True)
        for score, bpr, h in best[:6]:
            out_path = OUT_DIR / f"tail_0x{start:04X}_w{bpr*8}px_h{h}.png"
            render_png(out_path, tail, bpr * 8, h, bpr)
            print(f"  bpr={bpr} ({bpr*8}px wide), h={h} rows, score={score:.3f} -> {out_path.name}")

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
