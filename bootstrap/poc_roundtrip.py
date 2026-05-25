#!/usr/bin/env python3
"""
poc_roundtrip.py

PoC: tomar bytes del segmento de SYSTEM.DRV, desensamblar con Capstone,
re-ensamblar con Keystone, comparar bytes. Si match -> round-trip
funciona y podemos escalar al pipeline completo.
"""
import struct
from capstone import Cs, CS_ARCH_X86, CS_MODE_16
from keystone import Ks, KS_ARCH_X86, KS_MODE_16, KsError, KS_OPT_SYNTAX, KS_OPT_SYNTAX_INTEL


def main():
    # Leer SYSTEM.DRV original
    with open("original/SYSTEM.DRV", "rb") as f:
        buf = f.read()

    # Extraer bytes del segmento 1 (offset = sector_off * sector)
    ne_off = struct.unpack_from("<I", buf, 0x3C)[0]
    seg_tbl_rel = struct.unpack_from("<H", buf, ne_off + 34)[0]
    sector_shift = struct.unpack_from("<H", buf, ne_off + 50)[0] or 9
    sector = 1 << sector_shift
    seg_tbl_off = ne_off + seg_tbl_rel

    sector_off = struct.unpack_from("<H", buf, seg_tbl_off + 0)[0]
    seg_len = struct.unpack_from("<H", buf, seg_tbl_off + 2)[0]
    file_off = sector_off * sector
    seg_bytes = buf[file_off:file_off + seg_len]
    print(f"SYSTEM segment 1: {seg_len} bytes desde offset 0x{file_off:x}")

    # Desensamblar TODO el segmento con Capstone
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = False
    md.skipdata = False

    instructions = []
    offset = 0
    fallback_bytes = 0
    while offset < len(seg_bytes):
        try:
            decoded = list(md.disasm(seg_bytes[offset:], offset, count=1))
        except Exception:
            decoded = []
        if not decoded:
            # Fallback: db
            instructions.append({
                "offset": offset,
                "text": f"db 0{seg_bytes[offset]:02x}h",
                "bytes": seg_bytes[offset:offset + 1],
                "is_db": True,
            })
            offset += 1
            fallback_bytes += 1
            continue
        insn = decoded[0]
        text = f"{insn.mnemonic} {insn.op_str}".strip()
        chunk = seg_bytes[offset:offset + insn.size]
        instructions.append({
            "offset": offset,
            "text": text,
            "bytes": chunk,
            "is_db": False,
        })
        offset += insn.size

    print(f"Decoded: {len(instructions)} entries (incluye {fallback_bytes} db fallbacks)")

    # Re-ensamblar con Keystone y comparar
    ks = Ks(KS_ARCH_X86, KS_MODE_16)
    ks.syntax = KS_OPT_SYNTAX_INTEL

    matches = 0
    mismatches = 0
    encode_errors = 0
    diffs = []

    for entry in instructions:
        if entry["is_db"]:
            # No reasm db; ya son bytes literales
            matches += 1
            continue
        try:
            encoded, _ = ks.asm(entry["text"], addr=entry["offset"])
            encoded_bytes = bytes(encoded)
            if encoded_bytes == entry["bytes"]:
                matches += 1
            else:
                mismatches += 1
                if len(diffs) < 10:
                    diffs.append({
                        "offset": entry["offset"],
                        "text": entry["text"],
                        "expected": entry["bytes"].hex(),
                        "got": encoded_bytes.hex(),
                    })
        except KsError as e:
            encode_errors += 1
            if len(diffs) < 10:
                diffs.append({
                    "offset": entry["offset"],
                    "text": entry["text"],
                    "error": str(e),
                })

    total = len(instructions)
    print(f"\n=== Resultados round-trip ===")
    print(f"  Total instrucciones: {total}")
    print(f"  Match (bytes identicos):   {matches} ({matches/total*100:.1f}%)")
    print(f"  Mismatch (bytes distintos): {mismatches}")
    print(f"  Encode errors:              {encode_errors}")

    if diffs:
        print(f"\n=== Primeros {len(diffs)} problemas ===")
        for d in diffs:
            if "error" in d:
                print(f"  @ 0x{d['offset']:04x}: '{d['text']}' -> KsError: {d['error']}")
            else:
                print(f"  @ 0x{d['offset']:04x}: '{d['text']}'")
                print(f"     esperado: {d['expected']}")
                print(f"     obtenido: {d['got']}")


if __name__ == "__main__":
    main()
