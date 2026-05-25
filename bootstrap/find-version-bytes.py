#!/usr/bin/env python3
"""
Localiza donde esta el byte 0x0103 (Windows 1.03) en KERNEL.EXE para
poder hacer un mod que cambie la version.

Busca:
  - La funcion GETVERSION (su offset/size esta en la DB)
  - Patrones B8 03 01 (mov ax, 0103h) dentro de esa funcion
"""
import sqlite3
import sys
from pathlib import Path
import struct

ROOT = Path(__file__).resolve().parent.parent


def main():
    # Leer GETVERSION de la DB
    con = sqlite3.connect(ROOT / "state" / "mpa.db")
    row = con.execute(
        "SELECT seg_number, seg_offset, size FROM functions "
        "WHERE module_name='KERNEL' AND name='GETVERSION'"
    ).fetchone()
    if not row:
        print("GETVERSION no encontrada en DB", file=sys.stderr)
        return 1
    seg, off, size = row
    print(f"KERNEL.GETVERSION: segment {seg}, offset 0x{off:04X}, size {size} bytes")

    # Leer bytes desde la KERNEL.EXE original
    buf = (ROOT / "original" / "KERNEL.EXE").read_bytes()
    ne_off = struct.unpack_from("<I", buf, 0x3C)[0]
    seg_tbl_rel = struct.unpack_from("<H", buf, ne_off + 34)[0]
    sector_shift = struct.unpack_from("<H", buf, ne_off + 50)[0] or 9
    sector = 1 << sector_shift
    e = ne_off + seg_tbl_rel + (seg - 1) * 8
    sec_off = struct.unpack_from("<H", buf, e + 0)[0]
    file_off = sec_off * sector
    func_bytes = buf[file_off + off:file_off + off + size]
    print(f"  bytes (hex): {func_bytes.hex()}")
    print(f"  bytes (formatted): {' '.join(f'{b:02X}' for b in func_bytes)}")

    # Localizar patron B8 03 01 (mov ax, 0103h)
    pat = b"\xb8\x03\x01"
    idx = func_bytes.find(pat)
    if idx >= 0:
        print(f"\n  Patron 'B8 03 01' (mov ax, 0103h) encontrado en offset")
        print(f"  +{idx} de la funcion (= offset 0x{off+idx:04X} en segmento)")
        print(f"  (= offset 0x{file_off+off+idx:04X} en el binario)")
        print(f"  Para mod a 'Windows 1.04':")
        print(f"    cambiar bytes B8 03 01 por B8 04 01 (mov ax, 0104h)")
    else:
        print("Patron 'B8 03 01' NO encontrado directamente. Buscando 03 01...")
        for i in range(len(func_bytes) - 1):
            if func_bytes[i] == 0x03 and func_bytes[i+1] == 0x01:
                print(f"  '03 01' en offset +{i} (= seg offset 0x{off+i:04X})")

    # Disassemble briefly with capstone
    try:
        from capstone import Cs, CS_ARCH_X86, CS_MODE_16
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        print("\n  Desensamblado:")
        for ins in md.disasm(func_bytes, off):
            print(f"    0x{ins.address:04X}  {ins.bytes.hex():<10s}  {ins.mnemonic} {ins.op_str}")
    except Exception as e:
        print(f"  (capstone no disponible: {e})")


if __name__ == "__main__":
    main()
