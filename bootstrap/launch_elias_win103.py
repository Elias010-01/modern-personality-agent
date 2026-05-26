#!/usr/bin/env python3
"""launch_elias_win103.py - Compila e inyecta TODO el mod 'elias-windows'
en runtime/win103-built.img y lanza DOSBox-X.

Combinacion completa:
  A) MSDOS.EXE  - rebuild via smart_build con ne_meta.bin patcheado
                  (menus File/View/Special, titulo de ventana, "Microsoft
                  Windows" -> "Elias Windows!!!!")
  B) WIN.COM    - patch dual:
       * splash bitmap nuevo (logo editado por el usuario en mod/blibbet/
         blibbet_logo.bmp) -> bytes en offset 0x099D-0x1308
       * strings: "Microsoft Windows" -> "Elias's Windows!!", version,
         copyright, trademark
  C) WIN100.OVL - parche de strings ("Microsoft Windows" x6)

Inyeccion en IMG: nativa Python (sin mtools). Lanzamiento: dosbox-x.exe
con runtime/dosbox-win103.conf.
"""
from __future__ import annotations

import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "bootstrap"))

from fat12_replace import replace_file, parse_bpb, find_root_entry, fat12_chain  # noqa: E402
from blibbet_mod import (LOGO_OFFSET, LOGO_SIZE, BPR, LOGO_HEIGHT,  # noqa: E402
                          LOGO_WIDTH, read_bmp_1bpp, linear_to_cga)

# ---------- Rutas ----------
ORIG_DIR = ROOT / "original"
SRC_DIR = ROOT / "src"
BUILT_DIR = ROOT / "built"
RUNTIME_DIR = ROOT / "runtime"
IMG_PATH = RUNTIME_DIR / "win103-built.img"
IMG_BAK = RUNTIME_DIR / "win103-built.img.bak"
DOSBOX_CONF = RUNTIME_DIR / "dosbox-win103.conf"
DOSBOX_EXE = RUNTIME_DIR / "dosbox-x-win" / "mingw-build" / "mingw-sdl2" / "dosbox-x.exe"

BLIBBET_BMP_PROJECT = ROOT / "mod" / "blibbet" / "blibbet_logo.bmp"
BLIBBET_BMP_DESKTOP = Path(r"C:\Users\Elias\Desktop\blibbet-logo-editor\blibbet_logo.bmp")


def pick_blibbet_bmp() -> Path | None:
    """Prefer the desktop BMP (where the user actually edits) over the
    project copy. Auto-sync project copy when desktop is newer/different."""
    desk = BLIBBET_BMP_DESKTOP
    proj = BLIBBET_BMP_PROJECT
    if desk.exists():
        if not proj.exists() or proj.read_bytes() != desk.read_bytes():
            proj.parent.mkdir(parents=True, exist_ok=True)
            proj.write_bytes(desk.read_bytes())
            print(f"  [sync] BMP escritorio -> proyecto ({desk.stat().st_size}B)")
        return desk
    if proj.exists():
        return proj
    return None

# ---------- Replacements ----------
NE_META_REPLACEMENTS = [
    (b"File",              b"MOD!"),
    (b"View",              b"MIO!"),
    (b"Special",           b"ZONA!!!"),
    (b"MS-DOS Executive",  b"Elias's Windows!"),
    (b"Microsoft Windows", b"Elias Windows!!!!"),
]

_NEW_COPYRIGHT = b"This mod is unofficial. Original (c) Microsoft Corp 1985, 1986."
_LINE1_LEN = 70
_LINE2_LEN = 54

WIN_COM_REPLACEMENTS = [
    (b"Microsoft Windows", b"Elias's Windows!!"),
    (b"Version 1.03",      b"Version MOD!"),
    (b"Copyright (c) Microsoft Corporation, 1985, 1986.  All Rights Reserved.",
     _NEW_COPYRIGHT.ljust(_LINE1_LEN)),
    (b"Microsoft is a registered trademark of Microsoft Corp.",
     b" " * _LINE2_LEN),
]

WIN100_OVL_REPLACEMENTS = [
    (b"Microsoft Windows", b"Elias's Windows!!"),
]


def patch_bytes(data: bytearray, replacements, label: str) -> int:
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
            print(f"  [{label}] '{old.decode('latin-1')[:30]}' -> '{new.decode('latin-1')[:30]}' @0x{idx:X}")
            changes += 1
            start = idx + len(new)
    return changes


def extract_file_from_img(img_path: Path, name: str) -> bytes:
    """Lee `name` del root dir de la imagen FAT12 sin mtools."""
    raw = img_path.read_bytes()
    bpb = parse_bpb(raw)
    fat_off = bpb["resv"] * bpb["bps"]
    root_off = fat_off + bpb["nfats"] * bpb["spfat"] * bpb["bps"]
    data_off = root_off + bpb["nroot"] * 32
    cluster_size = bpb["spc"] * bpb["bps"]
    name_part, _, ext_part = name.upper().partition(".")
    entry_off, first_cluster, file_size = find_root_entry(
        raw, root_off, bpb["nroot"], name_part, ext_part)
    chain = fat12_chain(raw, fat_off, first_cluster)
    out = bytearray()
    for cl in chain:
        off = data_off + (cl - 2) * cluster_size
        out.extend(raw[off:off + cluster_size])
    return bytes(out[:file_size])


def step_A_build_msdos() -> Path:
    """Patch ne_meta.bin and rebuild MSDOS.EXE via smart_build."""
    print("\n" + "=" * 70)
    print(" [A] MSDOS.EXE: patch ne_meta.bin + smart_build")
    print("=" * 70)
    src_meta = SRC_DIR / "MSDOS" / "ne_meta.bin"
    if not src_meta.exists():
        raise SystemExit(f"!! falta {src_meta}")

    backup = src_meta.with_suffix(".bin.bak")
    if not backup.exists():
        shutil.copy2(src_meta, backup)
        print(f"  backup: {backup.relative_to(ROOT)}")

    data = bytearray(backup.read_bytes())
    n = patch_bytes(data, NE_META_REPLACEMENTS, "ne_meta.bin")
    src_meta.write_bytes(bytes(data))
    print(f"  Aplicadas {n} sustituciones en ne_meta.bin")

    print("\n  -- smart_build.py (modulo MSDOS) --")
    r = subprocess.run([sys.executable, "bootstrap/smart_build.py", "--module", "MSDOS"],
                       cwd=str(ROOT))
    # smart_build returns 1 when there's a DIFF, but DIFF is expected here
    # (we just changed ne_meta.bin)
    msdos_exe = BUILT_DIR / "MSDOS.EXE"
    if not msdos_exe.exists():
        raise SystemExit(f"!! falta built/MSDOS.EXE")
    new_size = msdos_exe.stat().st_size
    orig_size = (ORIG_DIR / "MSDOS.EXE").stat().st_size
    if new_size != orig_size:
        raise SystemExit(
            f"!! built/MSDOS.EXE size mismatch: {new_size} vs orig {orig_size}")
    print(f"  built/MSDOS.EXE: {new_size}B (igual al original)")

    # Restaurar ne_meta.bin para no contaminar src/ permanente
    shutil.copy2(backup, src_meta)
    print(f"  src/MSDOS/ne_meta.bin restaurado al base")
    return msdos_exe


def step_B_build_wincom() -> bytes:
    """Apply logo + text patches to original/WIN.COM, return final bytes."""
    print("\n" + "=" * 70)
    print(" [B] WIN.COM: parche logo + strings")
    print("=" * 70)
    win_com = bytearray((ORIG_DIR / "WIN.COM").read_bytes())
    print(f"  Base: original/WIN.COM ({len(win_com)}B)")

    # Logo: read user's edited BMP and inject at offset 0x099D
    bmp_path = pick_blibbet_bmp()
    if bmp_path is not None:
        bits, w, h = read_bmp_1bpp(bmp_path)
        if (w, h) != (LOGO_WIDTH, LOGO_HEIGHT):
            raise SystemExit(
                f"!! BMP tamano mal: {w}x{h}, esperado {LOGO_WIDTH}x{LOGO_HEIGHT}")
        cga = linear_to_cga(bits)
        win_com[LOGO_OFFSET:LOGO_OFFSET + LOGO_SIZE] = cga
        try:
            display_path = bmp_path.relative_to(ROOT)
        except ValueError:
            display_path = bmp_path
        print(f"  [WIN.COM] Logo insertado @0x{LOGO_OFFSET:04X} ({LOGO_SIZE}B) "
              f"desde {display_path}")
        # Confirm if it's actually edited or still the original
        cga_orig = (ORIG_DIR / "WIN.COM").read_bytes()[
            LOGO_OFFSET:LOGO_OFFSET + LOGO_SIZE]
        if cga == cga_orig:
            print(f"  [WIN.COM] AVISO: el logo del BMP es IDENTICO al original "
                  f"(no se ha editado)")
        else:
            ndiff = sum(1 for a, b in zip(cga, cga_orig) if a != b)
            print(f"  [WIN.COM] Logo del BMP edita {ndiff}/{LOGO_SIZE} bytes vs original")
    else:
        print(f"  !! ATENCION: no hay BMP en escritorio ni en proyecto, "
              f"logo se queda original")

    # Text patches
    n = patch_bytes(win_com, WIN_COM_REPLACEMENTS, "WIN.COM")
    print(f"  Aplicadas {n} sustituciones de strings")

    if len(win_com) != (ORIG_DIR / "WIN.COM").stat().st_size:
        raise SystemExit(f"!! WIN.COM tamano cambio")
    return bytes(win_com)


def step_C_build_win100ovl() -> bytes:
    print("\n" + "=" * 70)
    print(" [C] WIN100.OVL: parche strings")
    print("=" * 70)
    src = ORIG_DIR / "WIN100.OVL"
    data = bytearray(src.read_bytes())
    print(f"  Base: original/WIN100.OVL ({len(data)}B)")
    n = patch_bytes(data, WIN100_OVL_REPLACEMENTS, "WIN100.OVL")
    print(f"  Aplicadas {n} sustituciones")
    return bytes(data)


def kill_running_dosbox() -> None:
    """Si DOSBox-X esta corriendo (o algun ejecutable que tenga el IMG bloqueado),
    matalo para poder escribir la IMG."""
    try:
        r = subprocess.run(["taskkill", "/F", "/IM", "dosbox-x.exe"],
                           capture_output=True, text=True, timeout=10)
        if r.returncode == 0:
            print(f"  [taskkill] DOSBox-X cerrado")
        else:
            # ERROR: process not found = OK
            pass
    except (subprocess.TimeoutExpired, FileNotFoundError):
        pass


def step_D_inject(msdos_exe: Path, win_com: bytes, win100_ovl: bytes) -> None:
    print("\n" + "=" * 70)
    print(" [D] Inyectar binarios en runtime/win103-built.img")
    print("=" * 70)

    # Cerrar DOSBox-X si esta abierto (libera el lock del IMG)
    kill_running_dosbox()

    # Restore IMG from backup (clean baseline)
    if not IMG_BAK.exists():
        raise SystemExit(f"!! falta backup {IMG_BAK}")
    shutil.copy2(IMG_BAK, IMG_PATH)
    print(f"  Restaurada IMG desde {IMG_BAK.name}")

    # Inject each file in-place
    print(f"  Inyectando MSDOS.EXE ({msdos_exe.stat().st_size}B)...")
    replace_file(IMG_PATH, "MSDOS.EXE", msdos_exe.read_bytes())
    print(f"  Inyectando WIN.COM ({len(win_com)}B)...")
    replace_file(IMG_PATH, "WIN.COM", win_com)
    print(f"  Inyectando WIN100.OVL ({len(win100_ovl)}B)...")
    replace_file(IMG_PATH, "WIN100.OVL", win100_ovl)

    # Verify by re-extracting and comparing first few bytes
    print("\n  Verificacion (re-extraccion):")
    extracted = extract_file_from_img(IMG_PATH, "WIN.COM")
    if extracted == win_com:
        print(f"    [OK] WIN.COM round-trip byte-exacto ({len(extracted)}B)")
    else:
        diffs = sum(1 for a, b in zip(extracted, win_com) if a != b)
        print(f"    [ERR] WIN.COM mismatch: {diffs} bytes")
    extracted = extract_file_from_img(IMG_PATH, "WIN100.OVL")
    if extracted == win100_ovl:
        print(f"    [OK] WIN100.OVL round-trip byte-exacto ({len(extracted)}B)")
    extracted = extract_file_from_img(IMG_PATH, "MSDOS.EXE")
    if extracted == msdos_exe.read_bytes():
        print(f"    [OK] MSDOS.EXE round-trip byte-exacto ({len(extracted)}B)")


def step_E_launch_dosbox() -> None:
    print("\n" + "=" * 70)
    print(" [E] Lanzar DOSBox-X")
    print("=" * 70)
    if not DOSBOX_EXE.exists():
        raise SystemExit(f"!! falta {DOSBOX_EXE}")
    if not DOSBOX_CONF.exists():
        raise SystemExit(f"!! falta {DOSBOX_CONF}")
    print(f"  Exe:  {DOSBOX_EXE}")
    print(f"  Conf: {DOSBOX_CONF}")
    print(f"  IMG:  {IMG_PATH}")
    print()
    print("  Lanzando DOSBox-X (no-blocking, ventana propia)...")
    subprocess.Popen(
        [str(DOSBOX_EXE), "-conf", str(DOSBOX_CONF)],
        cwd=str(ROOT),
        creationflags=subprocess.CREATE_NEW_CONSOLE if hasattr(
            subprocess, "CREATE_NEW_CONSOLE") else 0,
    )
    print()
    print("  ** DOSBox-X iniciado en una ventana nueva. **")
    print()
    print("  Lo que veras al arrancar:")
    print("    1. Boot del DOS desde el disquete A:")
    print("    2. AUTOEXEC ejecuta WIN.COM -> splash con TU logo + 'Elias's Windows!!'")
    print("    3. MSDOS.EXE muestra menu con 'MOD! / MIO! / ZONA!!!'")
    print("    4. Titulo ventana: 'Elias's Windows!'")
    print("    5. About dialog: 'Elias's Windows!!'")


def main() -> int:
    print("=" * 70)
    print(" Construir + lanzar Windows 1.03 con mod 'elias-windows + blibbet'")
    print("=" * 70)

    # A) Rebuild MSDOS.EXE con menubar text patches
    msdos_exe = step_A_build_msdos()

    # B) WIN.COM con logo nuevo + texts
    win_com = step_B_build_wincom()

    # C) WIN100.OVL strings
    win100_ovl = step_C_build_win100ovl()

    # D) Inyectar todo en la IMG
    step_D_inject(msdos_exe, win_com, win100_ovl)

    # Save artifacts for inspection
    out_dir = ROOT / "mods" / "elias-windows" / "img"
    out_dir.mkdir(parents=True, exist_ok=True)
    (out_dir / "WIN.COM").write_bytes(win_com)
    (out_dir / "WIN100.OVL").write_bytes(win100_ovl)
    shutil.copy2(msdos_exe, out_dir / "MSDOS.EXE")
    print(f"\n  Artefactos guardados en {out_dir.relative_to(ROOT)}/")

    # E) Lanzar DOSBox-X
    step_E_launch_dosbox()
    return 0


if __name__ == "__main__":
    sys.exit(main())
