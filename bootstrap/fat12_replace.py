#!/usr/bin/env python3
"""fat12_replace.py - Reemplaza el contenido de un fichero existente
en una imagen FAT12 floppy IN-PLACE, sin mtools.

Uso (CLI):
    python bootstrap/fat12_replace.py IMG NAME PATH_TO_NEW_FILE

Limitaciones:
  - NEW_FILE debe tener exactamente el mismo tamano que el fichero
    actual en la imagen (no expandimos cluster chain).
  - Solo funciona en root directory (no subdirs).
  - Asume FAT12 (suficiente para floppies de Windows 1.x).
"""
from __future__ import annotations

import struct
import sys
from pathlib import Path


def parse_bpb(buf: bytes) -> dict:
    return dict(
        bps=struct.unpack_from("<H", buf, 11)[0],
        spc=buf[13],
        resv=struct.unpack_from("<H", buf, 14)[0],
        nfats=buf[16],
        nroot=struct.unpack_from("<H", buf, 17)[0],
        spfat=struct.unpack_from("<H", buf, 22)[0],
    )


def fat12_chain(buf: bytes, fat_off: int, first: int) -> list[int]:
    chain = []
    c = first
    while 2 <= c < 0xFF8:
        chain.append(c)
        off = fat_off + (c * 3 // 2)
        raw = struct.unpack_from("<H", buf, off)[0]
        c = (raw >> 4) if (c & 1) else (raw & 0x0FFF)
    return chain


def find_root_entry(buf: bytes, root_off: int, nroot: int,
                    name8: str, ext3: str) -> tuple[int, int, int]:
    """Returns (entry_off, first_cluster, file_size)."""
    name8 = name8.upper().ljust(8)
    ext3 = ext3.upper().ljust(3)
    for i in range(nroot):
        off = root_off + i * 32
        e = buf[off:off + 32]
        if e[0] in (0, 0xE5):
            continue
        n = e[0:8].decode("ascii", "replace")
        x = e[8:11].decode("ascii", "replace")
        if n.upper() == name8.upper() and x.upper() == ext3.upper():
            return off, struct.unpack_from("<H", e, 26)[0], \
                struct.unpack_from("<I", e, 28)[0]
    raise FileNotFoundError(f"{name8.strip()}.{ext3.strip()} not in root dir")


def replace_file(img_path: Path, name: str, new_data: bytes,
                 verbose: bool = True) -> None:
    """Reemplaza el contenido de `name` (e.g. 'WIN.COM') en img_path
    con `new_data`.  Tamano DEBE coincidir."""
    raw = bytearray(img_path.read_bytes())
    bpb = parse_bpb(bytes(raw))
    fat_off = bpb["resv"] * bpb["bps"]
    root_off = fat_off + bpb["nfats"] * bpb["spfat"] * bpb["bps"]
    data_off = root_off + bpb["nroot"] * 32
    cluster_size = bpb["spc"] * bpb["bps"]

    name_part, _, ext_part = name.upper().partition(".")
    entry_off, first_cluster, file_size = find_root_entry(
        bytes(raw), root_off, bpb["nroot"], name_part, ext_part)

    if len(new_data) != file_size:
        raise ValueError(
            f"{name}: nuevo size {len(new_data)} != actual {file_size}")

    chain = fat12_chain(bytes(raw), fat_off, first_cluster)
    if verbose:
        print(f"  [{name}] entry@0x{entry_off:X}  first_cluster={first_cluster}  "
              f"size={file_size}B  chain={len(chain)} clusters")

    # Write data into clusters
    written = 0
    for cl in chain:
        off = data_off + (cl - 2) * cluster_size
        chunk_len = min(cluster_size, len(new_data) - written)
        raw[off:off + chunk_len] = new_data[written:written + chunk_len]
        # Pad rest of cluster with zeros (typical FAT behavior)
        if chunk_len < cluster_size:
            raw[off + chunk_len:off + cluster_size] = b"\x00" * (
                cluster_size - chunk_len)
        written += chunk_len

    img_path.write_bytes(bytes(raw))
    if verbose:
        print(f"  [{name}] wrote {written} bytes into IMG")


def main() -> int:
    if len(sys.argv) != 4:
        print(__doc__, file=sys.stderr)
        return 1
    img = Path(sys.argv[1])
    name = sys.argv[2]
    src = Path(sys.argv[3])
    if not img.exists() or not src.exists():
        print(f"ERR: missing {img} or {src}", file=sys.stderr)
        return 1
    replace_file(img, name, src.read_bytes())
    print(f"OK: {name} replaced in {img}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
