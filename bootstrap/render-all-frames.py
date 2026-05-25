#!/usr/bin/env python3
"""Renderiza los 8 frames de 80x32 del blob @ 0x08C0 de WIN.COM."""
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TMP = Path("/tmp/anim_frames")
TMP.mkdir(exist_ok=True)
win_com = TMP / "WIN.COM"
if not win_com.exists():
    subprocess.run(["mcopy", "-i",
                    str(ROOT / "runtime" / "win103-built.img.bak"),
                    "-o", "::WIN.COM", str(win_com)], check=True)
buf = win_com.read_bytes()
blob = buf[0x8C0:0x8C0 + 2624]

# 8 frames * 80x32 = 8 * 320B = 2560B + 64B trailer
for f in range(8):
    fdata = blob[f * 320:(f + 1) * 320]
    print(f"=== FRAME {f} ===")
    for r in range(32):
        row = fdata[r * 10:(r + 1) * 10]
        line = "".join("#" if (b >> (7 - i)) & 1 else "."
                       for b in row for i in range(8))
        print(line)
    print()
