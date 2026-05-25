#!/usr/bin/env python3
"""Investiga la zona del logo en WIN.COM."""
import re
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

# Extraer WIN.COM del IMG
subprocess.run(["mcopy", "-i",
                str(ROOT / "runtime" / "win103-built.img.bak"),
                "-o", "::WIN.COM", "/tmp/win_inspect.com"], check=True)
buf = Path("/tmp/win_inspect.com").read_bytes()
print(f"WIN.COM size: {len(buf)} bytes")

# Buscar markers de imagen
for needle in [b"BM", b"LOGO", b"\x4D\x5A", b"\xFF\xFE", b"\x42\x49"]:
    for m in re.finditer(re.escape(needle), buf):
        print(f"  marker {needle!r} @ 0x{m.start():X}")

# Listado de runs grandes de bytes no-ASCII (= probable bitmap data)
print("\n=== Runs largos de bytes no-imprimibles (probable bitmap data) ===")
in_run = False
run_start = 0
for i, b in enumerate(buf):
    is_printable = 0x20 <= b <= 0x7E
    if not is_printable:
        if not in_run:
            in_run = True
            run_start = i
    else:
        if in_run:
            run_len = i - run_start
            if run_len >= 32:
                print(f"  binary blob @ 0x{run_start:X} len={run_len}")
            in_run = False
if in_run:
    print(f"  binary blob @ 0x{run_start:X} len={len(buf) - run_start}")

# Bytes alrededor del LOGO marker
logo_idx = buf.find(b"LOGO")
if logo_idx >= 0:
    print(f"\n=== Bytes alrededor de LOGO @ 0x{logo_idx:X} ===")
    start = max(0, logo_idx - 16)
    end = min(len(buf), logo_idx + 64)
    print(f"  hex: {buf[start:end].hex()}")
