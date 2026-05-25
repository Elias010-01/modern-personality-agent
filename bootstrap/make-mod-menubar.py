#!/usr/bin/env python3
"""
make-mod-menubar.py - Crea un mod 'menubar' que personaliza Windows 1.03:

A) En MSDOS.EXE (via src/MSDOS/ne_meta.bin):
  - Menu principal: File->MOD!, View->MIO!, Special->ZONA!!!
  - Titulo de ventana del shell: MS-DOS Executive -> Elias's Windows!
  - String resources: Microsoft Windows -> Elias Windows!!!!

B) En WIN.COM (splash screen azul al arrancar): cambia "Microsoft Windows"
   por "Elias's Windows!!" (visible inmediatamente al iniciar).

C) En WIN100.OVL (overlay del runtime que muestra About dialog, etc):
   cambia las 6 ocurrencias de "Microsoft Windows".

Los binarios WIN.COM y WIN100.OVL se extraen del IMG, se modifican y se
depositan en mods/menubar/img/ para que el mod_system.py los re-inyecte.
"""
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
MOD_NAME = "menubar"

# (search, replace) - DEBEN ser del mismo tamano. Las substituciones se
# aplican TODAS las veces que aparezcan en ne_meta.bin (con anti-collision
# por word-boundary). Los reemplazos son byte-for-byte exactos.
REPLACEMENTS = [
    # Menu principal (4B/7B)
    (b"File",              b"MOD!"),
    (b"View",              b"MIO!"),
    (b"Special",           b"ZONA!!!"),
    # Titulo de la ventana del shell (16B) - VISIBLE al arrancar
    (b"MS-DOS Executive",  b"Elias's Windows!"),
    # String "Microsoft Windows" en resources (17B) - About dialog
    (b"Microsoft Windows", b"Elias Windows!!!!"),
]


def patch_bytes(data: bytearray, replacements: list[tuple[bytes, bytes]],
                label: str) -> int:
    """Aplica replacements a data (in-place), respetando word-boundary.
    Devuelve numero de cambios aplicados."""
    changes = 0
    for old, new in replacements:
        if len(old) != len(new):
            print(f"  [{label}] ERR: '{old}' y '{new}' tienen tamanos distintos")
            continue
        start = 0
        while True:
            idx = data.find(old, start)
            if idx < 0:
                break
            prev_b = data[idx - 1] if idx > 0 else 0
            next_b = data[idx + len(old)] if idx + len(old) < len(data) else 0
            def is_word_char(b):
                return (0x30 <= b <= 0x39) or (0x41 <= b <= 0x5A) or (0x61 <= b <= 0x7A)
            if is_word_char(prev_b) or is_word_char(next_b):
                start = idx + 1
                continue
            data[idx:idx + len(old)] = new
            print(f"  [{label}] '{old.decode()}' -> '{new.decode()}' @0x{idx:X}")
            changes += 1
            start = idx + len(new)
    return changes


# Texto nuevo del copyright: 63 chars, padded a 70 para sustituir linea 1
_NEW_COPYRIGHT = b"This mod is unofficial. Original (c) Microsoft Corp 1985, 1986."
_LINE1_LEN = 70
_LINE2_LEN = 54


# Mod para WIN.COM (splash screen)
WIN_COM_REPLACEMENTS = [
    (b"Microsoft Windows", b"Elias's Windows!!"),  # 17B
    (b"Version 1.03",      b"Version MOD!"),       # 12B
    # Copyright line 1 (70B): texto nuevo + padding de espacios
    (b"Copyright (c) Microsoft Corporation, 1985, 1986.  All Rights Reserved.",
     _NEW_COPYRIGHT.ljust(_LINE1_LEN)),
    # Copyright line 2 (54B): todo espacios (deja la linea en blanco)
    (b"Microsoft is a registered trademark of Microsoft Corp.",
     b" " * _LINE2_LEN),
]

# Mod para WIN100.OVL (6 ocurrencias de "Microsoft Windows")
WIN100_OVL_REPLACEMENTS = [
    (b"Microsoft Windows", b"Elias's Windows!!"),  # 17B
]


def main():
    mod_dir = ROOT / "mods" / MOD_NAME
    patches = mod_dir / "patches" / "MSDOS"
    patches.mkdir(parents=True, exist_ok=True)
    img_dir = mod_dir / "img"
    img_dir.mkdir(parents=True, exist_ok=True)

    # ==== A) MSDOS.EXE via ne_meta.bin ====
    src_meta = ROOT / "src" / "MSDOS" / "ne_meta.bin"
    dst_meta = patches / "ne_meta.bin"
    data = bytearray(src_meta.read_bytes())

    print(f"\n[A] Patch MSDOS.EXE/ne_meta.bin: {src_meta.relative_to(ROOT)} ({len(data)}B)")
    n_a = patch_bytes(data, REPLACEMENTS, "MSDOS")
    dst_meta.write_bytes(bytes(data))
    print(f"    -> {dst_meta.relative_to(ROOT)} ({n_a} substituciones)")

    # ==== B) WIN.COM (splash screen) ====
    # Extraer WIN.COM del IMG (read-only)
    img_path = ROOT / "runtime" / "win103-built.img.bak"
    if not img_path.exists():
        img_path = ROOT / "runtime" / "win103-built.img"

    import subprocess
    tmp = Path("/tmp/menubar_extract")
    tmp.mkdir(exist_ok=True)

    print(f"\n[B] Patch WIN.COM (splash screen):")
    subprocess.run(["mcopy", "-i", str(img_path), "-o", "::WIN.COM",
                    str(tmp / "WIN.COM")], check=True)
    win_com = bytearray((tmp / "WIN.COM").read_bytes())
    n_b = patch_bytes(win_com, WIN_COM_REPLACEMENTS, "WIN.COM")
    (img_dir / "WIN.COM").write_bytes(bytes(win_com))
    print(f"    -> {(img_dir / 'WIN.COM').relative_to(ROOT)} ({n_b} substituciones)")

    # ==== C) WIN100.OVL (overlay) ====
    print(f"\n[C] Patch WIN100.OVL (About dialog y otros):")
    subprocess.run(["mcopy", "-i", str(img_path), "-o", "::WIN100.OVL",
                    str(tmp / "WIN100.OVL")], check=True)
    win100_ovl = bytearray((tmp / "WIN100.OVL").read_bytes())
    n_c = patch_bytes(win100_ovl, WIN100_OVL_REPLACEMENTS, "WIN100.OVL")
    (img_dir / "WIN100.OVL").write_bytes(bytes(win100_ovl))
    print(f"    -> {(img_dir / 'WIN100.OVL').relative_to(ROOT)} ({n_c} substituciones)")

    print(f"\n=== Total: {n_a + n_b + n_c} cambios aplicados ===")

    # meta.toml
    (mod_dir / "meta.toml").write_text(
        'name = "menubar"\n'
        'title = "Elias\'s Windows: splash + menu + titulos personalizados"\n'
        'author = "modern-personality-agent"\n'
        'description = """\n'
        'Personaliza Windows 1.03 con cambios visibles inmediatamente al arrancar:\n'
        '\n'
        '  Splash screen (WIN.COM):   Microsoft Windows -> Elias\'s Windows!!\n'
        '  About dialog (WIN100.OVL): Microsoft Windows -> Elias\'s Windows!!  (x6)\n'
        '  Titulo shell (MSDOS.EXE):  MS-DOS Executive  -> Elias\'s Windows!\n'
        '  Menu items (MSDOS.EXE):    File / View / Special -> MOD! / MIO! / ZONA!!!\n'
        '\n'
        'Cambia strings byte-for-byte (mismo tamano) en ne_meta.bin de MSDOS.EXE\n'
        '(zona resources NE) y en WIN.COM/WIN100.OVL directamente.\n'
        '"""\n')

    (mod_dir / "README.md").write_text(
        f"# Mod: {MOD_NAME}\n\n"
        f"Personaliza Windows 1.03 con cambios visibles al arrancar.\n\n"
        f"## Aplicar\n\n"
        f"```\n"
        f"python3 bootstrap/mod_system.py apply {MOD_NAME}\n"
        f"```\n\n"
        f"Esto:\n"
        f"  1. Restaura src/ a base limpio\n"
        f"  2. Copia ne_meta.bin moddeado a src/MSDOS/\n"
        f"  3. smart_build -> built/MSDOS.EXE moddeado\n"
        f"  4. Copia built/MSDOS.EXE + mods/menubar/img/WIN.COM + WIN100.OVL\n"
        f"     a runtime/win103-built.img\n\n"
        f"Luego arranca DOSBox-X.\n")

    print(f"\n[OK] mod '{MOD_NAME}' listo en mods/{MOD_NAME}/")
    print(f"\nAplica con:")
    print(f"  python3 bootstrap/mod_system.py apply {MOD_NAME}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
