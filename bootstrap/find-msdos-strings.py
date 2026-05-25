#!/usr/bin/env python3
"""
find-msdos-strings.py - Localiza strings visibles en MSDOS.EXE para mod.

Busca:
  - "MS-DOS Executive" (titulo)
  - "Run...", "File", "View", "Special" (menus)
  - Offsets dentro de los .asm de src/MSDOS/
"""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def main():
    buf = (ROOT / "original" / "MSDOS.EXE").read_bytes()

    # Strings de interes (ASCII)
    targets = [
        b"MS-DOS Executive",
        b"Run...",
        b"File",
        b"View",
        b"Special",
        b"By Name",
        b"By Date",
        b"By Size",
        b"By Kind",
        b"End Session",
        b"Get Info",
        b"Copy...",
        b"Delete...",
        b"Microsoft Windows",
    ]

    print("=== Strings encontrados en MSDOS.EXE ===")
    offsets = {}
    for t in targets:
        # Buscar TODAS las ocurrencias
        positions = []
        start = 0
        while True:
            idx = buf.find(t, start)
            if idx < 0:
                break
            positions.append(idx)
            start = idx + 1
        offsets[t] = positions
        if positions:
            print(f"  {t.decode():30s} en offsets: {[hex(p) for p in positions]}")
        else:
            print(f"  {t.decode():30s} NO ENCONTRADO")

    # Localizar en que segmento cae cada offset
    layout = json.loads((ROOT / "src" / "MSDOS" / "layout.json").read_text())
    print("\n=== Segmentos ===")
    for seg in layout["segments"]:
        print(f"  seg{seg['index']}: file_off=0x{seg['file_off']:X} "
              f"len={seg['data_len']} is_data={seg.get('is_data')}")

    print("\n=== Localizacion de strings dentro de los segmentos ===")
    for t, positions in offsets.items():
        for pos in positions:
            for seg in layout["segments"]:
                fo = seg["file_off"]
                if fo <= pos < fo + seg["data_len"]:
                    rel = pos - fo
                    print(f"  '{t.decode()}' @ file 0x{pos:X} "
                          f"-> seg{seg['index']} offset 0x{rel:X}")
                    break


if __name__ == "__main__":
    main()
