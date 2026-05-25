#!/usr/bin/env python3
"""
Test destructivo: pone el blob de 2624 bytes en WIN.COM @ 0x08C0 a 0x00
y reinyecta en el IMG para ver que parte del splash desaparece.

Si el 'Microsoft' grande desaparece -> confirma que viene del blob.
Si rompe el arranque -> el blob contiene tambien codigo.
"""
import subprocess
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
IMG = ROOT / "runtime" / "win103-built.img"
IMG_BAK = ROOT / "runtime" / "win103-built.img.bak"

# Restaurar IMG desde backup
shutil.copy2(IMG_BAK, IMG)
print("IMG restaurada al original (sin mods)")

# Extraer WIN.COM, blanquear blob, reinyectar
tmp = Path("/tmp/blob_test/WIN.COM")
tmp.parent.mkdir(exist_ok=True)
subprocess.run(["mcopy", "-i", str(IMG), "-o", "::WIN.COM", str(tmp)],
               check=True)
buf = bytearray(tmp.read_bytes())
print(f"WIN.COM: {len(buf)}B")

# Blanquear bytes 0x08C0 a 0x08C0+2624
print(f"Blanqueando bytes 0x08C0-0x{0x08C0+2624:X} (2624 bytes) a 0x00")
for i in range(2624):
    buf[0x08C0 + i] = 0x00

tmp.write_bytes(bytes(buf))

# Re-inyectar al IMG
subprocess.run(["mcopy", "-i", str(IMG), "-o", str(tmp), "::WIN.COM"],
               check=True)
print(f"[OK] WIN.COM con blob blanqueado inyectado en IMG")
print()
print("Lanza DOSBox-X para ver el resultado:")
print("  Si arranca pero NO se ve 'Microsoft' grande -> blob es el bitmap")
print("  Si crashea -> blob contiene codigo, no solo bitmap")
print("  Si se ve igual que antes -> blob no es el bitmap del splash")
