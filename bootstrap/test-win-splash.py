#!/usr/bin/env python3
"""Test: cambia 'Microsoft Windows' por 'XXXXXXXXXXXXXXXXX' en WIN.COM
para ver si el 'Microsoft' grande sigue apareciendo (= esta en otro lado)."""
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
IMG = ROOT / "runtime" / "win103-built.img"
IMG_BAK = ROOT / "runtime" / "win103-built.img.bak"

# Restaurar desde backup
import shutil
shutil.copy2(IMG_BAK, IMG)
print(f"IMG restaurada desde backup")

# Extraer WIN.COM
tmp = Path("/tmp/test_winsplash")
tmp.mkdir(exist_ok=True)
win_com_path = tmp / "WIN.COM"
subprocess.run(["mcopy", "-i", str(IMG), "-o", "::WIN.COM",
                str(win_com_path)], check=True)
buf = win_com_path.read_bytes()
print(f"WIN.COM size: {len(buf)} bytes")

# Reemplazar 'Microsoft Windows' por XXXXXXXXXXXXXXXXX
idx = buf.find(b"Microsoft Windows")
if idx < 0:
    print("ERROR: 'Microsoft Windows' no encontrado")
    raise SystemExit(1)
print(f"'Microsoft Windows' @ 0x{idx:X}")

new = buf[:idx] + b"XXXXXXXXXXXXXXXXX" + buf[idx + 17:]
win_com_path.write_bytes(new)
print("Modificado a XXXXXXXXXXXXXXXXX")

# Inyectar de vuelta al IMG
subprocess.run(["mcopy", "-i", str(IMG), "-o", str(win_com_path),
                "::WIN.COM"], check=True)
print(f"Inyectado WIN.COM moddeado en IMG")

# Verificar
subprocess.run(["mcopy", "-i", str(IMG), "-o", "::WIN.COM",
                "/tmp/verify.com"], check=True)
ver = Path("/tmp/verify.com").read_bytes()
print(f"Verify: 'XXXXXXXXXXXXXXXXX' presente:", b"XXXXXXXXXXXXXXXXX" in ver)
print(f"Verify: 'Microsoft Windows' presente:", b"Microsoft Windows" in ver)
