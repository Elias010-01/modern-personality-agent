#!/usr/bin/env python3
"""Revert all C2 modifications from backup files."""
from pathlib import Path
import glob
import os

ROOT = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
SRC = ROOT / "src"

def revert():
    for suffix in [".c2.bak", ".c2split.bak", ".c2pub.bak"]:
        backups = list(SRC.rglob(f"*{suffix}"))
        for bak in backups:
            original = bak.with_suffix(bak.suffix.replace(suffix, ""))
            # Handle double suffix like .asm.c2.bak -> .asm
            original_str = str(bak)[:-len(suffix)]
            original = Path(original_str)
            if original.exists():
                shutil.copy2(bak, original)
                print(f"Reverted: {original.relative_to(ROOT)}")
            else:
                print(f"WARNING: original not found for {bak}")
    print("\nAll C2 modifications reverted.")

if __name__ == "__main__":
    import shutil
    revert()
