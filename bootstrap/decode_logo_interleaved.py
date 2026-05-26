#!/usr/bin/env python3
"""decode_logo_interleaved.py - Render WIN.COM tail as a CGA mode-6
interleaved 1bpp bitmap. CGA stores even rows at offsets 0..0x1FFF and
odd rows at offsets 0x2000..0x3FFF. The source bitmap could be stored:

  1) NORMALLY: row 0, row 1, row 2, ... (linear)
  2) DE-INTERLEAVED: all even rows, then all odd rows
  3) EXACTLY as CGA video memory (banked at 8KB)

We try all three layouts at multiple widths and starting offsets.
"""
from __future__ import annotations

import struct
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
WIN_COM = ROOT / "original" / "WIN.COM"
OUT_DIR = ROOT / "screenshots" / "blibbet_hunt" / "interleaved"
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
    """Treat data[0..h//2*bpr] as even rows, data[h//2*bpr..h*bpr] as odd
    rows, and merge them into row-major order (0,1,2,3,...). h MUST be
    even."""
    even_rows = h // 2 + (h % 2)  # ceil(h/2)
    odd_rows = h // 2
    needed = (even_rows + odd_rows) * bpr
    if len(data) < needed:
        return b""
    out = bytearray(h * bpr)
    for r in range(even_rows):
        out[(r * 2) * bpr:(r * 2 + 1) * bpr] = data[r * bpr:(r + 1) * bpr]
    for r in range(odd_rows):
        out[(r * 2 + 1) * bpr:(r * 2 + 2) * bpr] = data[(even_rows + r) * bpr:(even_rows + r + 1) * bpr]
    return bytes(out)


def main() -> int:
    data = WIN_COM.read_bytes()
    print(f"WIN.COM: {len(data)} bytes")

    # Target: 534-pixel wide x 35-row logo from screenshot, native CGA scale
    # Most likely bpr is between 60-72 bytes (480-576 pixels wide)
    # Try every possible start offset in the tail and every reasonable bpr & h
    HEIGHTS = [30, 32, 34, 35, 36, 40, 44, 48]
    WIDTHS_BYTES = list(range(56, 80))

    # First, just try LINEAR layout at various start offsets
    print("\n=== LINEAR layout, full sweep ===")
    candidates = []
    for start in range(0x800, 0x1300, 1):
        tail = data[start:]
        for bpr in WIDTHS_BYTES:
            for h in HEIGHTS:
                size = bpr * h
                if size > len(tail):
                    continue
                # Check for a plausible logo: starts with mostly-zero or with
                # text-like pattern, ends with mostly-zero, has high
                # autocorrelation between adjacent rows in the middle.
                region = tail[:size]
                # Score: ratio of (vertical similarity in middle rows) over
                # (random)
                vert = 0
                tot = 0
                for r in range(h - 1):
                    for c in range(bpr):
                        a = region[r * bpr + c]
                        b = region[(r + 1) * bpr + c]
                        vert += 8 - bin(a ^ b).count("1")
                        tot += 8
                # Bonus: regions with content (some FF bytes)
                ones = sum(bin(b).count("1") for b in region)
                content = ones / (size * 8)
                # Avoid all-zero or all-FF regions
                if content < 0.05 or content > 0.95:
                    continue
                if tot:
                    score = vert / tot
                    candidates.append((score, content, start, bpr, h))

    candidates.sort(reverse=True)
    print(f"Top 20 LINEAR candidates:")
    for score, content, start, bpr, h in candidates[:20]:
        print(f"  start=0x{start:04X} bpr={bpr} ({bpr*8}px) h={h} "
              f"-> score={score:.4f} content={content*100:.1f}%")

    # Render top 5
    for i, (score, content, start, bpr, h) in enumerate(candidates[:5]):
        region = data[start:start + bpr * h]
        out_path = OUT_DIR / f"linear_{i:02d}_off0x{start:04X}_w{bpr*8}_h{h}.png"
        render_png(out_path, region, bpr * 8, h, bpr, scale=2)

    # Now try DEINTERLEAVED layout
    print("\n=== DEINTERLEAVED layout, top candidates ===")
    di_candidates = []
    for start in range(0x800, 0x1300, 1):
        tail = data[start:]
        for bpr in WIDTHS_BYTES:
            for h in HEIGHTS:
                if h % 2:
                    continue
                size = bpr * h
                if size > len(tail):
                    continue
                # Deinterleave then score
                di = deinterleave(tail[:size], bpr, h)
                if not di:
                    continue
                vert = 0
                tot = 0
                for r in range(h - 1):
                    for c in range(bpr):
                        a = di[r * bpr + c]
                        b = di[(r + 1) * bpr + c]
                        vert += 8 - bin(a ^ b).count("1")
                        tot += 8
                ones = sum(bin(b).count("1") for b in di)
                content = ones / (size * 8)
                if content < 0.05 or content > 0.95:
                    continue
                if tot:
                    score = vert / tot
                    di_candidates.append((score, content, start, bpr, h))

    di_candidates.sort(reverse=True)
    print(f"Top 20 DEINTERLEAVED candidates:")
    for score, content, start, bpr, h in di_candidates[:20]:
        print(f"  start=0x{start:04X} bpr={bpr} ({bpr*8}px) h={h} "
              f"-> score={score:.4f} content={content*100:.1f}%")

    # Render top 5
    for i, (score, content, start, bpr, h) in enumerate(di_candidates[:5]):
        region = data[start:start + bpr * h]
        di = deinterleave(region, bpr, h)
        out_path = OUT_DIR / f"deint_{i:02d}_off0x{start:04X}_w{bpr*8}_h{h}.png"
        render_png(out_path, di, bpr * 8, h, bpr, scale=2)

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
