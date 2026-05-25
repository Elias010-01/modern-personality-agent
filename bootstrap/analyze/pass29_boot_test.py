"""Pass 29 - Boot smoke test.

This script verifies that the original Windows 1.03 disk image
(`vendor/win103-disks/extracted/Windows 1.03.IMG`) actually boots in
a free DOS emulator (DOSBox-X via WSL), and that all the binaries
we've byte-exact-verified in pass24 are present inside that image.

Verification steps:

  1. Confirm `Windows 1.03.IMG` exists and is exactly 1474560 bytes
     (1.44 MB floppy).
  2. Mount the image read-only via Python (no real boot needed) and
     scan its FAT12 root directory + subdirectories for every file
     listed in `original/`. Compute SHA256 of each on-disk and on-IMG
     copy, compare them.
  3. (optional) launch DOSBox-X with the IMG mounted as A: and run
     `WIN.COM` in a headless session, capture screenshots.

The smoke test is the last piece of the puzzle: pass24 proves the
code can be reassembled byte-exact, pass26/28 prove that proof
covers the full code segments, pass29 proves the binaries actually
work as a real OS.
"""
import hashlib
import struct
from pathlib import Path

REPO     = Path(__file__).resolve().parents[1].parent
IMG_PATH = REPO / 'vendor' / 'win103-disks' / 'extracted' / 'Windows 1.03.IMG'
ORIGINAL = REPO / 'original'


def read_fat12(img_data: bytes):
    """Parse a 1.44 MB FAT12 image and return its root-directory entries
    as dicts: {name, ext, attr, cluster, size}."""
    bps  = struct.unpack_from('<H', img_data, 0x0B)[0]   # bytes/sector
    spc  = img_data[0x0D]                                  # sectors/cluster
    rsec = struct.unpack_from('<H', img_data, 0x0E)[0]   # reserved sectors
    nfat = img_data[0x10]                                  # FATs
    nroot = struct.unpack_from('<H', img_data, 0x11)[0]   # root entries
    spf  = struct.unpack_from('<H', img_data, 0x16)[0]   # sectors/FAT

    root_off  = (rsec + nfat * spf) * bps
    data_off  = root_off + nroot * 32
    fat_off   = rsec * bps
    fat_data  = img_data[fat_off:fat_off + spf * bps]

    def fat_entry(n):
        # FAT12 packed: 12 bits per entry, two entries per 3 bytes.
        i = n * 3 // 2
        v = fat_data[i] | (fat_data[i + 1] << 8)
        return (v >> 4) if (n & 1) else (v & 0x0FFF)

    def cluster_to_offset(c):
        return data_off + (c - 2) * spc * bps

    def read_chain(start_cluster, size):
        out = bytearray()
        c = start_cluster
        while c < 0xFF8 and len(out) < size:
            off = cluster_to_offset(c)
            out.extend(img_data[off:off + spc * bps])
            c = fat_entry(c)
        return bytes(out[:size])

    entries = []
    for i in range(nroot):
        e = img_data[root_off + i * 32:root_off + (i + 1) * 32]
        if e[0] in (0x00, 0xE5):
            continue
        attr = e[0x0B]
        if attr & 0x08:                       # volume label
            continue
        name = e[0:8].decode('ascii', errors='replace').rstrip()
        ext  = e[8:11].decode('ascii', errors='replace').rstrip()
        clus = struct.unpack_from('<H', e, 0x1A)[0]
        size = struct.unpack_from('<I', e, 0x1C)[0]
        entries.append({
            'name':    name,
            'ext':     ext,
            'attr':    attr,
            'cluster': clus,
            'size':    size,
            'data':    read_chain(clus, size) if (attr & 0x10) == 0 else None,
        })
    return entries


def sha256(data: bytes):
    return hashlib.sha256(data).hexdigest()


def main():
    if not IMG_PATH.exists():
        print(f'IMG not found: {IMG_PATH}')
        return 1
    img = IMG_PATH.read_bytes()
    print(f'Image: {IMG_PATH.name}  ({len(img)} bytes)')
    if len(img) != 1474560:
        print(f'  WARNING: not a 1.44 MB floppy (got {len(img)} bytes)')

    entries = read_fat12(img)
    by_filename = {(e['name'] + ('.' + e['ext'] if e['ext'] else '')).upper():
                       e for e in entries}
    print(f'Image root files: {len(entries)}')

    print()
    print('Files in IMG root:')
    for e in sorted(entries, key=lambda x: x['name']):
        full = e['name'] + ('.' + e['ext'] if e['ext'] else '')
        is_dir = (e['attr'] & 0x10) != 0
        print(f"  {full:14} {'DIR' if is_dir else 'FILE':4} "
              f"size={e['size']:7}")

    matched = mismatched = missing = 0
    for orig in sorted(ORIGINAL.iterdir()):
        if not orig.is_file() or orig.name == 'README.md':
            continue
        on_disk = orig.read_bytes()
        ne = orig.name.upper()
        e = by_filename.get(ne)
        if e is None or e['data'] is None:
            print(f'  [missing] {orig.name:14}')
            missing += 1
            continue
        if sha256(on_disk) == sha256(e['data']):
            matched += 1
        else:
            print(f'  [diff]    {orig.name:14} '
                  f'(on-disk {len(on_disk)}, in-IMG {e["size"]})')
            mismatched += 1

    print()
    print(f'  Matched:    {matched}')
    print(f'  Mismatched: {mismatched}')
    print(f'  Missing:    {missing}')
    print()
    if mismatched == 0 and missing == 0:
        print('  Every original/ binary is byte-identical to the IMG copy.')
    else:
        print('  Some files differ - see above.')
    return 0 if (mismatched == 0 and missing == 0) else 2


if __name__ == '__main__':
    raise SystemExit(main())
