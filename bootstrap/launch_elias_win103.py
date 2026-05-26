#!/usr/bin/env python3
"""launch_elias_win103.py - Build the 'elias-windows' mod via the
declarative engine and launch the result in DOSBox-X.

This is a thin wrapper around bootstrap/mod_engine.py that:

  1. Optionally syncs the user's edited Blibbet logo BMP into the
     project workspace (--bmp PATH, or autodetected from a few common
     locations).

  2. Calls mod_engine.run_mod() which:
       - Rebuilds MSDOS.EXE via smart_build with patched ne_meta.bin
         strings (declared in mods/elias-windows/patches.toml).
       - Generates a patched WIN.COM with the user's logo + string
         replacements.
       - Generates a patched WIN100.OVL with string replacements.
       - Restores runtime/win103-built.img from .bak and injects the
         3 produced binaries via fat12_replace (no mtools dependency).

  3. Closes any running DOSBox-X (cross-platform: taskkill on Windows,
     pkill on POSIX) and launches a fresh instance with the mod IMG.

Usage:
  python bootstrap/launch_elias_win103.py
  python bootstrap/launch_elias_win103.py --bmp ~/Desktop/my_logo.bmp
  python bootstrap/launch_elias_win103.py --mod elias-windows
  python bootstrap/launch_elias_win103.py --no-launch     # just build, do not start DOSBox-X
"""
from __future__ import annotations

import argparse
import os
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "bootstrap"))

import mod_engine  # noqa: E402


# ---------- Default paths ----------
RUNTIME_DIR = ROOT / "runtime"
DOSBOX_CONF = RUNTIME_DIR / "dosbox-win103.conf"

# DOSBox-X binary candidates (first existing wins). All optional - if none
# found, the script just builds the mod without launching.
DOSBOX_CANDIDATES = [
    RUNTIME_DIR / "dosbox-x-win" / "mingw-build" / "mingw-sdl2" / "dosbox-x.exe",
    RUNTIME_DIR / "dosbox-x-win" / "mingw-build" / "mingw" / "dosbox-x.exe",
    Path("/usr/bin/dosbox-x"),
    Path("/usr/local/bin/dosbox-x"),
    Path("/opt/homebrew/bin/dosbox-x"),
]

# Candidate locations for the user's edited Blibbet BMP. The first
# existing one wins. The project-local copy is always synced to mirror
# the chosen source.
BLIBBET_BMP_PROJECT = ROOT / "mod" / "blibbet" / "blibbet_logo.bmp"

def _default_bmp_candidates() -> list[Path]:
    home = Path.home()
    return [
        home / "Desktop" / "blibbet-logo-editor" / "blibbet_logo.bmp",
        home / "Desktop" / "blibbet_logo.bmp",
        home / "Documents" / "blibbet-logo-editor" / "blibbet_logo.bmp",
        home / "Documents" / "blibbet_logo.bmp",
        BLIBBET_BMP_PROJECT,
    ]


def sync_blibbet_bmp(explicit: Path | None) -> Path | None:
    """If `explicit` is given, copy it to mod/blibbet/. Otherwise probe a
    list of default locations. Returns the path used (or None if no BMP
    is found anywhere)."""
    candidates: list[Path] = [explicit] if explicit else _default_bmp_candidates()
    chosen = next((p for p in candidates if p and p.exists()), None)
    if chosen is None:
        return None
    BLIBBET_BMP_PROJECT.parent.mkdir(parents=True, exist_ok=True)
    if chosen != BLIBBET_BMP_PROJECT:
        if (not BLIBBET_BMP_PROJECT.exists()
                or BLIBBET_BMP_PROJECT.read_bytes() != chosen.read_bytes()):
            BLIBBET_BMP_PROJECT.write_bytes(chosen.read_bytes())
            print(f"  [sync] {chosen} -> {BLIBBET_BMP_PROJECT.relative_to(ROOT)} "
                  f"({chosen.stat().st_size} B)")
    return chosen


# ---------- Cross-platform DOSBox-X management ----------

def find_dosbox_x() -> Path | None:
    for c in DOSBOX_CANDIDATES:
        if c.exists():
            return c
    # PATH fallback
    found = shutil.which("dosbox-x") or shutil.which("dosbox-x.exe")
    return Path(found) if found else None


def kill_running_dosbox() -> None:
    """Cross-platform best-effort: terminate any running DOSBox-X."""
    try:
        if sys.platform == "win32":
            subprocess.run(["taskkill", "/F", "/IM", "dosbox-x.exe"],
                           capture_output=True, timeout=10)
        else:
            subprocess.run(["pkill", "-9", "-f", "dosbox-x"],
                           capture_output=True, timeout=10)
    except (subprocess.TimeoutExpired, FileNotFoundError):
        pass


def launch_dosbox(exe: Path, conf: Path) -> None:
    print(f"  exe : {exe}")
    print(f"  conf: {conf}")
    flags = 0
    if sys.platform == "win32" and hasattr(subprocess, "CREATE_NEW_CONSOLE"):
        flags = subprocess.CREATE_NEW_CONSOLE
    subprocess.Popen([str(exe), "-conf", str(conf)],
                     cwd=str(ROOT), creationflags=flags)
    print("  DOSBox-X launched in a new window.")


# ---------- Main ----------

def main() -> int:
    ap = argparse.ArgumentParser(
        description="Build and run the 'elias-windows' mod in DOSBox-X.")
    ap.add_argument("--mod", default="elias-windows",
                    help="Mod name under mods/ (default: elias-windows)")
    ap.add_argument("--bmp", type=Path, default=None,
                    help="Path to your edited 536x36 1bpp Blibbet BMP. "
                         "If omitted, common Desktop/Documents locations "
                         "are tried automatically, then mod/blibbet/.")
    ap.add_argument("--no-launch", action="store_true",
                    help="Just build, do not start DOSBox-X.")
    ap.add_argument("--no-deploy", action="store_true",
                    help="Build artifacts only, do not inject into the IMG.")
    args = ap.parse_args()

    mod_dir = ROOT / "mods" / args.mod
    if not mod_dir.exists():
        print(f"ERROR: mod not found: {mod_dir}", file=sys.stderr)
        return 1

    print("=" * 70)
    print(f"  build + run mod '{args.mod}'")
    print("=" * 70)

    # Sync the user's BMP into the project workspace
    print("\n[A] Blibbet BMP source")
    chosen_bmp = sync_blibbet_bmp(args.bmp)
    if chosen_bmp:
        print(f"  using: {chosen_bmp}")
    else:
        print(f"  no BMP found - the bitmap patch is optional, "
              f"the original Microsoft logo will be kept.")

    # Run the mod (build + deploy)
    print("\n[B] mod_engine.run_mod()")
    try:
        result = mod_engine.run_mod(mod_dir, deploy=not args.no_deploy)
    except Exception as e:
        print(f"ERROR: {e}", file=sys.stderr)
        return 2

    # Verify
    if result.deployed_img:
        print(f"\n[C] Deployed to: {result.deployed_img}")

    # Launch DOSBox-X
    if args.no_launch:
        print("\n--no-launch: skipping DOSBox-X start")
        return 0

    print("\n[D] launch DOSBox-X")
    kill_running_dosbox()
    exe = find_dosbox_x()
    if exe is None:
        print("  WARNING: dosbox-x.exe not found in expected locations or PATH.")
        print(f"  Manually start DOSBox-X with: {DOSBOX_CONF}")
        return 0
    if not DOSBOX_CONF.exists():
        print(f"  ERROR: missing {DOSBOX_CONF}", file=sys.stderr)
        return 3
    launch_dosbox(exe, DOSBOX_CONF)
    return 0


if __name__ == "__main__":
    sys.exit(main())
