#!/usr/bin/env python3
import struct
b = open('original/SETUP.EXE', 'rb').read()
print('size:', len(b))
print('first 2 bytes:', b[:2])
ne_off = struct.unpack_from('<I', b, 0x3c)[0]
print('NE/PE pointer at 0x3c:', hex(ne_off))
if 0 < ne_off < len(b) - 2:
    print('signature at NE off:', repr(b[ne_off:ne_off + 4]))
else:
    print('NO secondary header -> es MZ puro (DOS executable)')
