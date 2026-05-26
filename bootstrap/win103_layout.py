#!/usr/bin/env python3
"""win103_layout.py - Single source of truth for byte offsets and
formats in the Windows 1.03 binaries that the mod system patches.

Every constant in this module was empirically reverse-engineered against
the genuine 1985 Microsoft floppy distribution. References:

  - docs/BLIBBET_LOGO.md           (logo discovery)
  - mods/elias-windows/meta.toml   (string offsets in MSDOS resources zone)
  - bootstrap/disasm_to_masm.py    (WIN.COM disassembly anchors)
  - bootstrap/analyze/             (NE module pipeline)

When changing or extending mods, edit THIS file -- never embed offsets
literally in scripts.

Sizes are validated by tests/test_win103_layout.py (and at runtime by
the mod_engine via SIZE_BY_FILE).
"""
from __future__ import annotations


# =============================================================
#  Total file sizes (validated against the original distribution)
# =============================================================

SIZE_BY_FILE = {
    "WIN.COM":      4873,
    "WIN100.OVL":   220336,
    "WIN100.BIN":   31103,
    "MSDOS.EXE":    43104,
    "WINOLDAP.MOD": 17510,
}


# =============================================================
#  WIN.COM (4873 B flat COM, loaded at 0x100 in DOS PSP segment)
# =============================================================

WINCOM_SIZE = 4873

# --- "Blibbet" splash logo bitmap (v13.1) ---
# CGA mode 6 (640x200, 1bpp), bank-interleaved (18 even rows then 18 odd
# rows) -- matches B800:0000 + B800:2000 VRAM banks directly.
# The splash code does double `rep movsw source -> VRAM` (no transform).
WINCOM_LOGO_OFFSET = 0x099D
WINCOM_LOGO_WIDTH = 536
WINCOM_LOGO_HEIGHT = 36
WINCOM_LOGO_BPR = 67                                   # ceil(536/8)
WINCOM_LOGO_BANK_ROWS = WINCOM_LOGO_HEIGHT // 2        # 18
WINCOM_LOGO_BANK_BYTES = WINCOM_LOGO_BANK_ROWS * WINCOM_LOGO_BPR  # 1206
WINCOM_LOGO_SIZE = WINCOM_LOGO_BANK_BYTES * 2          # 2412
WINCOM_LOGO_END = WINCOM_LOGO_OFFSET + WINCOM_LOGO_SIZE  # 0x1309 = EOF
WINCOM_LOGO_SCREEN_XY = (54, 36)                       # x, y in CGA mode 6
WINCOM_LOGO_FORMAT = "cga-mode6-bank-interleaved-1bpp"

# --- Visible strings in the splash screen ---
# These are NUL/CR-LF terminated 7-bit ASCII strings printed via INT 21h.
# Lengths must match exactly on patch.
WINCOM_STRINGS = {
    "Microsoft Windows":                                          0x07B8,
    "Version 1.03":                                               0x07CC,
    "Copyright (c) Microsoft Corporation, 1985, 1986.  All Rights Reserved.":
                                                                   0x07DB,
    "Microsoft is a registered trademark of Microsoft Corp.":      0x0824,
}

# --- Code anchors from src/WIN/seg1_real.asm (v13.0) ---
WINCOM_ANCHORS = {
    "tag_logo":          0x0790,   # db 'LOGO'
    "set_cga_mode6":     0x0989,   # mov ax, 6 ; int 10h
    "ret_after_mode":    0x099C,   # C3 (just before logo data)
}


# =============================================================
#  WIN100.OVL (220336 B - Windows 1.0 overlay)
# =============================================================

WIN100_OVL_SIZE = 220336

# Each occurrence of the string is patched independently. The list is the
# 5 occurrences detected by find/replace at length-preserving patch time.
WIN100_OVL_STRINGS = {
    "Microsoft Windows": [0x0631, 0x4C51, 0x16641, 0x2B9B1, 0x3572F],
}


# =============================================================
#  MSDOS.EXE (43104 B - MS-DOS Executive shell, NE format)
# =============================================================
# Strings live in ne_meta.bin (the NE resources zone). When patching we
# load src/MSDOS/ne_meta.bin, rewrite at the offsets below, then rebuild
# MSDOS.EXE via smart_build.

MSDOS_EXE_SIZE = 43104

NE_META_STRINGS = {
    "File":               0x9781,
    "View":               0x97D9,
    "Special":            0x9845,
    "MS-DOS Executive_1": 0xA314,   # window title
    "MS-DOS Executive_2": 0xA40F,   # also referenced from About
    "MS-DOS Executive_3": 0xA629,   # also referenced from About
    "Microsoft Windows_1": 0x0219,  # in resources
    "Microsoft Windows_2": 0x0708,
    "Microsoft Windows_3": 0xA2DF,
}


# =============================================================
#  Floppy image layout (FAT12, 1.2 MB or 360 KB)
# =============================================================

# Files that the IMG carries. mod_engine inspects each to decide whether
# to replace or skip.
IMG_CORE_FILES = ("MSDOS.EXE", "WIN.COM", "WIN100.OVL", "WIN100.BIN")


# =============================================================
#  Helper: simple validation against `original/`
# =============================================================

def validate_against_originals(orig_dir):
    """Raise ValueError if any file in original/ has a size different
    from what this module asserts. `orig_dir` is a Path."""
    issues = []
    for name, expected in SIZE_BY_FILE.items():
        p = orig_dir / name
        if not p.exists():
            continue
        actual = p.stat().st_size
        if actual != expected:
            issues.append(f"{name}: {actual} B, expected {expected} B")
    if issues:
        raise ValueError("win103_layout size mismatch:\n  " + "\n  ".join(issues))
