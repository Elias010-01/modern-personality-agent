#!/usr/bin/env python3
"""Busca TODOS los strings significativos en WIN.COM para encontrar
el 'Microsoft' grande que se muestra en splash."""
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
buf = (ROOT / "runtime" / "win103-built.img.bak").read_bytes() if (ROOT / "runtime" / "win103-built.img.bak").exists() else None

# Lo extraido del IMG
import subprocess
subprocess.run(["mcopy", "-i",
                str(ROOT / "runtime" / "win103-built.img.bak"),
                "-o", "::WIN.COM", "/tmp/WIN_inspect.com"], check=True)
data = Path("/tmp/WIN_inspect.com").read_bytes()
print(f"WIN.COM size: {len(data)} bytes")

# Strings ASCII (>=4 chars)
print("\n=== TODOS los strings ASCII >= 4 chars en WIN.COM ===")
for m in re.finditer(rb"[\x20-\x7E]{4,}", data):
    print(f"  0x{m.start():04X}: {m.group().decode()!r}")

# Buscar "MICROSOFT" (mayusculas)
print("\n=== Buscando 'MICROSOFT' (case-sensitive y mayusculas) ===")
for needle in [b"MICROSOFT", b"Microsoft", b"microsoft"]:
    for m in re.finditer(re.escape(needle), data):
        print(f"  '{needle.decode()}' @ 0x{m.start():04X}")
