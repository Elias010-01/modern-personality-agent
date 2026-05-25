#!/usr/bin/env python3
"""
extract_segments.py

Para cada binario NE de `original/`, extrae cada segmento de código/datos
a un fichero `src/<MODULE>/seg<N>.asm` con bytes literales en `DB` y
guarda los metadatos NE (header + tablas) en `src/<MODULE>/ne_meta.bin`.

Esto convierte cada binario en:

  src/<MODULE>/
    seg1.asm        # SEGMENT 'CODE' con DB <bytes> del segmento 1
    seg2.asm
    ...
    relocs/seg1.bin # Tabla de fixups del segmento 1 (si tiene)
    ne_meta.bin     # DOS stub + NE header + segment table + resource table
                    # + name tables + module ref table + imported names
                    # + entry table + non-resident name table

Con eso, `build_from_source.py` puede:
  1. Ensamblar cada segN.asm → segN.obj
  2. Extraer los bytes del segmento de segN.obj
  3. Coser todo con ne_meta.bin → <MODULE>.EXE byte-exact
"""
from __future__ import annotations

import struct
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "src"


def parse_ne(buf: bytes) -> dict:
    ne_off = struct.unpack_from("<I", buf, 0x3C)[0]
    ne = buf[ne_off:]
    assert ne[0:2] == b"NE"

    seg_count = struct.unpack_from("<H", ne, 28)[0]
    seg_tbl_rel = struct.unpack_from("<H", ne, 34)[0]
    sector_shift = struct.unpack_from("<H", ne, 50)[0] or 9
    sector = 1 << sector_shift

    seg_tbl_off = ne_off + seg_tbl_rel
    segments = []
    for i in range(seg_count):
        e = seg_tbl_off + i * 8
        sector_off = struct.unpack_from("<H", buf, e + 0)[0]
        seg_len = struct.unpack_from("<H", buf, e + 2)[0]
        flags = struct.unpack_from("<H", buf, e + 4)[0]
        min_alloc = struct.unpack_from("<H", buf, e + 6)[0]
        file_off = sector_off * sector
        has_reloc = bool(flags & 0x0100)
        reloc_count = 0
        reloc_bytes = b""
        if has_reloc and seg_len:
            rel_off = file_off + seg_len
            n = struct.unpack_from("<H", buf, rel_off)[0]
            reloc_count = n
            reloc_bytes = buf[rel_off:rel_off + 2 + n * 8]
        segments.append({
            "index": i + 1,
            "file_off": file_off,
            "data_len": seg_len,
            "flags": flags,
            "min_alloc": min_alloc,
            "has_reloc": has_reloc,
            "reloc_count": reloc_count,
            "reloc_bytes": reloc_bytes,
            "data": buf[file_off:file_off + seg_len] if seg_len else b"",
            "is_data": bool(flags & 0x0001),  # bit 0 = DATA
        })

    return {
        "ne_off": ne_off,
        "sector": sector,
        "seg_count": seg_count,
        "segments": segments,
    }


def fmt_db(data: bytes, per_line: int = 16) -> str:
    lines = []
    for i in range(0, len(data), per_line):
        chunk = data[i:i + per_line]
        hexs = ", ".join(f"0{b:02x}h" for b in chunk)
        lines.append(f"    db {hexs}")
    return "\n".join(lines)


def emit_seg_asm(mod_name: str, seg: dict) -> str:
    """Emite un .asm con `SEGMENT 'CODE'` o `'DATA'` y los bytes en DB."""
    sclass = "DATA" if seg["is_data"] else "CODE"
    sname = f"{mod_name}_SEG{seg['index']}"
    seg_align = "BYTE"
    seg_combine = "PUBLIC"
    head = [
        f"; AUTO-GENERATED from original {mod_name} segment {seg['index']}",
        f"; flags=0x{seg['flags']:04x} min_alloc={seg['min_alloc']} "
        f"data_len={seg['data_len']} reloc_count={seg['reloc_count']}",
        "",
        f"{sname} SEGMENT {seg_align} {seg_combine} '{sclass}'",
        "",
    ]
    body = fmt_db(seg["data"])
    tail = ["", f"{sname} ENDS", "", "END", ""]
    return "\n".join(head) + body + "\n" + "\n".join(tail)


def extract_one(name: str) -> dict:
    path = ROOT / "original" / name
    buf = path.read_bytes()
    info = parse_ne(buf)
    mod_dir = SRC / Path(name).stem
    mod_dir.mkdir(parents=True, exist_ok=True)

    # Emitir un .asm por segmento
    for seg in info["segments"]:
        asm = emit_seg_asm(Path(name).stem, seg)
        (mod_dir / f"seg{seg['index']}.asm").write_text(asm, encoding="ascii")
        if seg["reloc_count"]:
            (mod_dir / f"seg{seg['index']}.reloc.bin").write_bytes(seg["reloc_bytes"])

    # Emitir ne_meta.bin: TODO el binario excepto los segment data bytes.
    # Es decir, llenamos los rangos de segmentos con 0x00 y guardamos el
    # resto byte a byte. Al rebuildear: pegamos seg<N>.obj bytes encima.
    meta = bytearray(buf)
    for seg in info["segments"]:
        fo = seg["file_off"]
        sz = seg["data_len"]
        if sz:
            meta[fo:fo + sz] = b"\x00" * sz
        # Mantenemos las reloc tables intactas (vienen después del segment data)
    (mod_dir / "ne_meta.bin").write_bytes(bytes(meta))

    # Layout descriptor
    layout = {
        "module": Path(name).stem,
        "original_name": name,
        "original_size": len(buf),
        "ne_off": info["ne_off"],
        "sector": info["sector"],
        "segments": [
            {
                "index": s["index"],
                "file_off": s["file_off"],
                "data_len": s["data_len"],
                "flags": s["flags"],
                "is_data": s["is_data"],
                "has_reloc": s["has_reloc"],
                "reloc_count": s["reloc_count"],
            }
            for s in info["segments"]
        ],
    }
    import json
    (mod_dir / "layout.json").write_text(json.dumps(layout, indent=2))
    return layout


def extract_mz_only(name: str) -> dict:
    """
    Para binarios MZ puros (DOS executables sin NE, como SETUP.EXE).
    Estrategia: una sola "sección" raw con todo el binario.
    """
    path = ROOT / "original" / name
    buf = path.read_bytes()
    mod_dir = SRC / Path(name).stem
    mod_dir.mkdir(parents=True, exist_ok=True)

    # Emitir todo el binario como un seg1.asm con db
    head = [
        f"; AUTO-GENERATED from original {name} (MZ DOS executable)",
        f"; size={len(buf)} bytes (raw copy; no NE structure)",
        "",
        f"{Path(name).stem}_SEG1 SEGMENT BYTE PUBLIC 'CODE'",
        "",
    ]
    body = fmt_db(buf)
    tail = ["", f"{Path(name).stem}_SEG1 ENDS", "", "END", ""]
    asm = "\n".join(head) + body + "\n" + "\n".join(tail)
    (mod_dir / "seg1.asm").write_text(asm, encoding="ascii")

    # Layout: una "seccion" de tipo raw_copy
    layout = {
        "module": Path(name).stem,
        "original_name": name,
        "original_size": len(buf),
        "ne_off": None,
        "sector": None,
        "kind": "mz_raw",
        "segments": [
            {
                "index": 1,
                "file_off": 0,
                "data_len": len(buf),
                "flags": 0,
                "is_data": False,
                "has_reloc": False,
                "reloc_count": 0,
            }
        ],
    }
    # ne_meta.bin = vacio del mismo tamano, será sobreescrito enteramente
    (mod_dir / "ne_meta.bin").write_bytes(b"\x00" * len(buf))
    import json
    (mod_dir / "layout.json").write_text(json.dumps(layout, indent=2))
    return layout


def main() -> int:
    SRC.mkdir(parents=True, exist_ok=True)
    if len(sys.argv) > 1:
        candidates_explicit = sys.argv[1:]
        candidates_ne = []
        candidates_mz = []
        for name in candidates_explicit:
            path = ROOT / "original" / name
            if not path.exists():
                continue
            b = path.read_bytes()
            if len(b) < 2 or b[:2] != b"MZ":
                continue
            try:
                ne_off = struct.unpack_from("<I", b, 0x3C)[0]
                if 0 < ne_off < len(b) - 2 and b[ne_off:ne_off+2] == b"NE":
                    candidates_ne.append(name)
                else:
                    candidates_mz.append(name)
            except Exception:
                candidates_mz.append(name)
    else:
        orig = ROOT / "original"
        candidates_ne = []
        candidates_mz = []
        for p in sorted(orig.iterdir()):
            if p.suffix.upper() not in (".EXE", ".DRV"):
                continue
            try:
                b = p.read_bytes()
                if len(b) < 2 or b[:2] != b"MZ":
                    continue
                ne_off = struct.unpack_from("<I", b, 0x3C)[0]
                if 0 < ne_off < len(b) - 2 and b[ne_off:ne_off+2] == b"NE":
                    candidates_ne.append(p.name)
                else:
                    candidates_mz.append(p.name)
            except Exception:
                pass

    total_segs = 0
    for name in candidates_ne:
        try:
            layout = extract_one(name)
            total_segs += len(layout["segments"])
            print(f"[OK NE] {name:14s} -> src/{Path(name).stem}/  "
                  f"({len(layout['segments'])} segs)")
        except Exception as e:
            print(f"[ERR] {name}: {e}")
    for name in candidates_mz:
        try:
            layout = extract_mz_only(name)
            total_segs += len(layout["segments"])
            print(f"[OK MZ] {name:14s} -> src/{Path(name).stem}/  "
                  f"(MZ raw, {layout['original_size']} bytes)")
        except Exception as e:
            print(f"[ERR] {name}: {e}")

    print(f"\n=== {len(candidates_ne)} NE + {len(candidates_mz)} MZ "
          f"= {len(candidates_ne) + len(candidates_mz)} módulos, "
          f"{total_segs} segmentos extraídos ===")
    return 0


if __name__ == "__main__":
    sys.exit(main())
