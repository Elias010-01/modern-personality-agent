"""Verify GETVERSION byte-exact match between MASM 4.0 output and KERNEL.EXE."""
import struct
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]


def find_func_in_obj(obj_path):
    """Find the 4-byte sequence B8 01 03 CB in an OMF .OBJ file."""
    data = obj_path.read_bytes()
    idx = data.find(b'\xB8\x01\x03\xCB')
    if idx < 0:
        return None
    return idx, data[idx:idx + 4]


def get_kernel_getversion_bytes():
    """Extract GETVERSION's 4 bytes from the original KERNEL.EXE NE binary."""
    kernel = REPO / 'original' / 'KERNEL.EXE'
    b = kernel.read_bytes()
    ne = struct.unpack_from('<H', b, 0x3c)[0]
    seg_table_off = ne + struct.unpack_from('<H', b, ne + 0x22)[0]
    shift = struct.unpack_from('<H', b, ne + 0x32)[0]
    # Segment 1 entry: 8 bytes (sector_offset, length, flags, alloc_size)
    seg1_sector = struct.unpack_from('<H', b, seg_table_off + 0)[0]
    seg1_size = struct.unpack_from('<H', b, seg_table_off + 2)[0]
    seg1_file_off = seg1_sector << shift
    print(f'KERNEL.EXE NE header at 0x{ne:x}, segment_shift={shift}')
    print(f'Segment 1: file offset 0x{seg1_file_off:x}, size 0x{seg1_size:x}')
    # GETVERSION is at seg1:0x023C per NE entry table (we verified earlier)
    func_off = seg1_file_off + 0x023C
    func_bytes = b[func_off:func_off + 4]
    print(f'GETVERSION @ file offset 0x{func_off:x}')
    return func_bytes


def main():
    print('=== Verifying GETVERSION byte-exact match ===\n')

    # Original
    orig = get_kernel_getversion_bytes()
    print(f'Original KERNEL.EXE bytes: {orig.hex().upper()}  '
          f'({" ".join(f"{x:02X}" for x in orig)})')

    # Our rebuild
    our_obj = REPO / 'tools' / 'dos' / 'work' / 'GETVER.OBJ'
    if not our_obj.exists():
        print(f'\nMissing {our_obj}; run test_getver.sh first.')
        sys.exit(1)

    result = find_func_in_obj(our_obj)
    if result is None:
        print('\nFAIL: did not find B8 01 03 CB in our .OBJ')
        sys.exit(1)
    idx, our = result
    print(f'Our GETVER.OBJ bytes:      {our.hex().upper()}  '
          f'({" ".join(f"{x:02X}" for x in our)}) at OBJ offset 0x{idx:x}')

    print()
    if orig == our:
        print('*' * 60)
        print('  >>> BYTE-EXACT VERIFIED <<<')
        print('  Windows 1.03 KERNEL.EXE GETVERSION matches')
        print('  our MASM 4.0 rebuild perfectly. 4 of 4 bytes.')
        print('*' * 60)
        return 0
    else:
        print('MISMATCH:')
        for i, (a, b) in enumerate(zip(orig, our)):
            mark = ' ' if a == b else '<--'
            print(f'  byte {i}: {a:02X} vs {b:02X} {mark}')
        return 1


if __name__ == '__main__':
    sys.exit(main())
