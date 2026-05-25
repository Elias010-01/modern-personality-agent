#!/usr/bin/env python3
"""Inspecciona contexto de 'Microsoft Windows' en MSDOS.EXE."""
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
buf = (ROOT / "original" / "MSDOS.EXE").read_bytes()

for m in re.finditer(rb"Microsoft Windows", buf):
    start = max(0, m.start() - 20)
    end = min(len(buf), m.end() + 40)
    ctx = buf[start:end].replace(b"\x00", b".").decode("latin-1", "replace")
    print(f"offset 0x{m.start():X}: ...{ctx}...")
