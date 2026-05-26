#!/usr/bin/env python3
"""Diagnostico: que tiene REALMENTE el WIN.COM dentro del IMG ahora?"""
from __future__ import annotations
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "bootstrap"))

from fat12_replace import parse_bpb, find_root_entry, fat12_chain
from blibbet_mod import (LOGO_OFFSET, LOGO_SIZE, BPR, LOGO_HEIGHT,
                         LOGO_WIDTH, read_bmp_1bpp, linear_to_cga,
                         cga_to_linear, write_png_preview)

IMG = ROOT / "runtime" / "win103-built.img"
ARTIFACT_WIN = ROOT / "mods" / "elias-windows" / "img" / "WIN.COM"
ORIG_WIN = ROOT / "original" / "WIN.COM"
USER_BMP = ROOT / "mod" / "blibbet" / "blibbet_logo.bmp"
DESKTOP_BMP = Path(r"C:\Users\Elias\Desktop\blibbet-logo-editor\blibbet_logo.bmp")
OUT_DIR = ROOT / "screenshots" / "blibbet_hunt" / "diagnostic"
OUT_DIR.mkdir(parents=True, exist_ok=True)


def extract_from_img(img_path: Path, name: str) -> bytes:
    raw = img_path.read_bytes()
    bpb = parse_bpb(raw)
    fat_off = bpb["resv"] * bpb["bps"]
    root_off = fat_off + bpb["nfats"] * bpb["spfat"] * bpb["bps"]
    data_off = root_off + bpb["nroot"] * 32
    cluster_size = bpb["spc"] * bpb["bps"]
    np_, _, ext = name.upper().partition(".")
    _, first, size = find_root_entry(raw, root_off, bpb["nroot"], np_, ext)
    chain = fat12_chain(raw, fat_off, first)
    out = bytearray()
    for cl in chain:
        out.extend(raw[data_off + (cl-2)*cluster_size:
                       data_off + (cl-2)*cluster_size + cluster_size])
    return bytes(out[:size])


def render_logo_from_wincom(win_com: bytes, label: str, out_name: str):
    if len(win_com) < LOGO_OFFSET + LOGO_SIZE:
        print(f"  [{label}] WIN.COM too small")
        return
    cga = win_com[LOGO_OFFSET:LOGO_OFFSET + LOGO_SIZE]
    linear = cga_to_linear(cga)
    out = OUT_DIR / out_name
    write_png_preview(out, linear, LOGO_WIDTH, LOGO_HEIGHT, BPR, scale=2)
    print(f"  [{label}] -> {out.relative_to(ROOT)}")
    return cga


def main():
    print("=== Diagnostico del logo ===\n")

    # 1) Logo del WIN.COM dentro del IMG (puede estar bloqueado por DOSBox-X)
    print("[1] WIN.COM extraido del IMG (runtime/win103-built.img):")
    try:
        win_img = extract_from_img(IMG, "WIN.COM")
        print(f"    size: {len(win_img)}B")
        cga_img = render_logo_from_wincom(win_img, "IMG", "01_logo_FROM_IMG.png")
    except PermissionError:
        print(f"    !! IMG locked (DOSBox-X open?) - usando artefacto guardado")
        win_img = ARTIFACT_WIN.read_bytes()
        print(f"    artefacto: {ARTIFACT_WIN.relative_to(ROOT)} ({len(win_img)}B)")
        cga_img = render_logo_from_wincom(win_img, "ARTIFACT", "01_logo_FROM_ARTIFACT.png")

    # 2) Logo del WIN.COM original
    print("\n[2] WIN.COM original (original/WIN.COM):")
    win_orig = ORIG_WIN.read_bytes()
    cga_orig = render_logo_from_wincom(win_orig, "ORIG", "02_logo_FROM_ORIG.png")

    # 3) Logo del BMP en mod/blibbet/
    print(f"\n[3] BMP en {USER_BMP.relative_to(ROOT)}:")
    if USER_BMP.exists():
        print(f"    exists, size: {USER_BMP.stat().st_size}B")
        bits, w, h = read_bmp_1bpp(USER_BMP)
        print(f"    1bpp data: {len(bits)}B ({w}x{h})")
        cga_bmp = linear_to_cga(bits)
        write_png_preview(OUT_DIR / "03_logo_FROM_PROJECT_BMP.png",
                          bits, LOGO_WIDTH, LOGO_HEIGHT, BPR, scale=2)
        print(f"    -> {(OUT_DIR/'03_logo_FROM_PROJECT_BMP.png').relative_to(ROOT)}")
    else:
        print(f"    !! NO EXISTE")
        cga_bmp = None

    # 4) Logo del BMP en el ESCRITORIO
    print(f"\n[4] BMP en escritorio ({DESKTOP_BMP}):")
    if DESKTOP_BMP.exists():
        print(f"    exists, size: {DESKTOP_BMP.stat().st_size}B")
        bits_d, w, h = read_bmp_1bpp(DESKTOP_BMP)
        print(f"    1bpp data: {len(bits_d)}B ({w}x{h})")
        cga_desktop = linear_to_cga(bits_d)
        write_png_preview(OUT_DIR / "04_logo_FROM_DESKTOP_BMP.png",
                          bits_d, LOGO_WIDTH, LOGO_HEIGHT, BPR, scale=2)
        print(f"    -> {(OUT_DIR/'04_logo_FROM_DESKTOP_BMP.png').relative_to(ROOT)}")
    else:
        print(f"    !! NO EXISTE")
        cga_desktop = None

    # 5) Comparaciones byte-a-byte
    print("\n=== Comparaciones byte-a-byte ===")
    print(f"  IMG-WIN  vs  ORIG-WIN     : {'IGUALES' if win_img == win_orig else f'DIFIEREN ({sum(1 for a,b in zip(win_img,win_orig) if a!=b)} bytes)'}")
    if cga_bmp is not None:
        print(f"  IMG logo vs project BMP  : {'IGUALES' if cga_img == cga_bmp else f'DIFIEREN ({sum(1 for a,b in zip(cga_img,cga_bmp) if a!=b)} bytes)'}")
    if cga_desktop is not None:
        print(f"  IMG logo vs desktop BMP  : {'IGUALES' if cga_img == cga_desktop else f'DIFIEREN ({sum(1 for a,b in zip(cga_img,cga_desktop) if a!=b)} bytes)'}")
    if cga_bmp is not None and cga_desktop is not None:
        print(f"  project BMP vs desktop BMP: {'IGUALES' if cga_bmp == cga_desktop else f'DIFIEREN ({sum(1 for a,b in zip(cga_bmp,cga_desktop) if a!=b)} bytes)'}")
    print(f"  IMG logo vs ORIG logo    : {'IGUALES (=Microsoft sin tocar)' if cga_img == cga_orig else f'DIFIEREN ({sum(1 for a,b in zip(cga_img,cga_orig) if a!=b)} bytes)'}")

    # Strings patched?
    print("\n=== Strings en WIN.COM del IMG ===")
    for needle in [b"Microsoft Windows", b"Elias's Windows!!", b"Version 1.03",
                   b"Version MOD!", b"This mod is unofficial"]:
        idx = win_img.find(needle)
        print(f"  '{needle.decode():25s}': {('@0x'+format(idx,'04X')) if idx >= 0 else '-- NO ENCONTRADO --'}")


if __name__ == "__main__":
    main()
