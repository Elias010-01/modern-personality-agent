#!/usr/bin/env python3
"""Busca 'Microsoft' en TODOS los ficheros del IMG y en built/."""
import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
IMG = ROOT / "runtime" / "win103-built.img.bak"

# Listar ficheros en el IMG
out = subprocess.check_output(["mdir", "-/", "-b", "-i", str(IMG), "::"]).decode()
files = [l.strip().lstrip("::/").strip() for l in out.splitlines()
         if l.strip() and not l.strip().endswith("/")]
print(f"Ficheros en IMG: {len(files)}")

tmp = Path("/tmp/img_search")
tmp.mkdir(exist_ok=True)

needles = [b"Microsoft", b"MICROSOFT", b"microsoft"]

for fname in files:
    safe_name = fname.replace("/", "_").replace("\\", "_").replace(" ", "_")
    out_path = tmp / safe_name
    try:
        subprocess.run(["mcopy", "-i", str(IMG), "-o", f"::{fname}",
                        str(out_path)],
                       check=True, capture_output=True)
    except subprocess.CalledProcessError:
        continue
    if not out_path.exists() or out_path.stat().st_size == 0:
        continue
    data = out_path.read_bytes()
    for needle in needles:
        for m in re.finditer(re.escape(needle), data):
            # Mostrar contexto
            start = max(0, m.start() - 10)
            end = min(len(data), m.end() + 40)
            ctx = data[start:end].replace(b"\x00", b".").decode("latin-1", "replace")
            ctx_clean = re.sub(r"[^\x20-\x7E.]", "?", ctx)
            print(f"  {fname:20s} @ 0x{m.start():06X}: ...{ctx_clean}...")
