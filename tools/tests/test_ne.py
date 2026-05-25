"""Tests del parser NE.

Construye un binario NE mínimo en memoria y verifica que el parser lo lee
correctamente. Esto NO sustituye probar contra un Win 1.03 real (eso lo
hace `just index` con originales reales) pero blinda el parser contra
regresiones.
"""

import struct

import pytest

from mpa.ne import parse_ne, NEParseError


def _build_minimal_ne(tmp_path):
    """Construye un .EXE NE mínimo: cabecera MZ stub + cabecera NE +
    1 segmento de código de 16 bytes + 1 entry point fijo."""

    # MZ stub: 64 bytes. e_lfanew (offset 0x3C) apunta a 0x40.
    mz = bytearray(0x40)
    mz[0:2] = b"MZ"
    mz[0x3C:0x40] = struct.pack("<I", 0x40)

    # NE header: 0x40 bytes
    ne = bytearray(0x40)
    ne[0:2] = b"NE"
    # NE_FLAGS = 0
    # NE_NUM_SEGMENTS at 0x1C = 1
    struct.pack_into("<H", ne, 0x1C, 1)
    # NE_ALIGN_SHIFT at 0x32 = 4 (16-byte sectors, fácil de calcular)
    struct.pack_into("<H", ne, 0x32, 4)
    # Segment table offset (NE_SEG_TABLE_OFF at 0x22) → justo tras la cabecera
    struct.pack_into("<H", ne, 0x22, 0x40)
    # Resident name table offset at 0x26 → tras seg table (0x40 + 8 = 0x48)
    struct.pack_into("<H", ne, 0x26, 0x48)
    # Entry table offset (0x04) y length (0x06)
    # Lo ponemos tras la resident name table (calcular abajo)

    # Resident name table: nombre del módulo "TEST" + ordinal 0 (módulo)
    rname = bytes([4]) + b"TEST" + b"\x00\x00" + b"\x00"  # terminator
    # Tabla: pos relativa a NE = 0x48
    # Tras rname empieza entry table.

    entry_off_rel = 0x48 + len(rname)
    # Entry table: 1 bundle de 1 entry fixed-segment, segmento 1
    # bundle: count=1, seg_ind=1, then [flags=0x01 (exported), offset WORD]
    entry_table = bytes([1, 1, 0x01]) + struct.pack("<H", 0x0000) + bytes([0])  # terminator
    struct.pack_into("<H", ne, 0x04, entry_off_rel)
    struct.pack_into("<H", ne, 0x06, len(entry_table))

    # Non-resident table: vacía (offset = end of file, size = 0). Lo dejamos a 0.

    # Segment table: 8 bytes por segmento.
    #   sect_off (WORD), seg_len (WORD), flags (WORD), min_alloc (WORD)
    # El sector size = 1 << align_shift = 16.
    # El código va en sector 16 (offset 0x100), bien por detrás de las tablas.
    code_sector = 16
    code_len = 16
    seg_table = struct.pack("<HHHH",
                            code_sector,           # sect_off
                            code_len,              # seg_len (0 = 64K)
                            0x0000,                # flags: CODE
                            code_len)              # min_alloc

    # Construimos el fichero: MZ + NE + segtab + rname + entry + padding + code
    out = bytearray()
    out += mz
    out += ne                           # 0x40
    out += seg_table                    # 0x40 (rel = 0x48 abs)
    out += rname                        # rel 0x48
    out += entry_table                  # tras rname

    # Padding hasta sector 8 (offset 0x80)
    while len(out) < code_sector * 16:
        out.append(0)

    # 16 bytes de "código"
    out += bytes(range(16))

    p = tmp_path / "TEST.EXE"
    p.write_bytes(bytes(out))
    return p


def test_parse_minimal_ne(tmp_path):
    p = _build_minimal_ne(tmp_path)
    mod = parse_ne(p)
    assert mod.module_name == "TEST"
    assert mod.num_segments == 1
    assert len(mod.segments) == 1
    seg = mod.segments[0]
    assert seg.number == 1
    assert seg.is_code
    assert seg.length_in_file == 16
    # Lectura de bytes
    code = mod.read_segment_bytes(1)
    assert code == bytes(range(16))
    # Entry point
    assert len(mod.entries) == 1
    ep = mod.entries[0]
    assert ep.ordinal == 1
    assert ep.seg_number == 1
    assert ep.seg_offset == 0
    assert ep.is_exported


def test_not_mz_rejected(tmp_path):
    p = tmp_path / "BAD.EXE"
    p.write_bytes(b"XXXX" + bytes(64))
    with pytest.raises(NEParseError):
        parse_ne(p)
