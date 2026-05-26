"""Tests for bootstrap/fat12_replace.py.

These tests build a synthetic, minimal FAT12 floppy image in-memory
(no external tool required) so they run anywhere -- including CI.
"""
from __future__ import annotations

import struct
from pathlib import Path

import pytest

import fat12_replace as fr


# =============================================================
#  Synthetic FAT12 floppy builder (minimal, 360 KB DSDD)
# =============================================================
#
# Geometry: 360 KB DSDD floppy (the simplest standard FAT12 layout)
#   bytes/sector = 512
#   sectors/cluster = 2
#   reserved sectors = 1   (boot)
#   number of FATs = 2
#   root entries = 112
#   total sectors = 720
#   media descriptor = 0xFD
#   sectors per FAT = 2
#   sectors per track = 9
#   heads = 2

_BPS = 512
_SPC = 2
_RESV = 1
_NFATS = 2
_NROOT = 112
_TOTAL_SECT = 720
_SPF = 2

_FAT_OFF = _RESV * _BPS                          # 0x200
_ROOT_OFF = _FAT_OFF + _NFATS * _SPF * _BPS      # 0x600
_ROOT_SIZE = _NROOT * 32                         # 0xE00
_DATA_OFF = _ROOT_OFF + _ROOT_SIZE               # 0x1400
_CLUSTER_SIZE = _SPC * _BPS                      # 1024


def _make_empty_img() -> bytearray:
    img = bytearray(_TOTAL_SECT * _BPS)
    # Boot sector (BPB) at sector 0
    img[0:3] = b"\xEB\x3C\x90"
    img[3:11] = b"MSDOS5.0"
    struct.pack_into("<H", img, 11, _BPS)        # bytes/sector
    img[13] = _SPC                                # sectors/cluster
    struct.pack_into("<H", img, 14, _RESV)        # reserved sectors
    img[16] = _NFATS                              # number of FATs
    struct.pack_into("<H", img, 17, _NROOT)       # root entries
    struct.pack_into("<H", img, 19, _TOTAL_SECT)  # total sectors
    img[21] = 0xFD                                # media descriptor
    struct.pack_into("<H", img, 22, _SPF)         # sectors per FAT
    struct.pack_into("<H", img, 24, 9)            # sectors per track
    struct.pack_into("<H", img, 26, 2)            # heads
    img[510:512] = b"\x55\xAA"                    # boot signature

    # FAT: initialise both copies with the media descriptor sentinel
    for n in range(_NFATS):
        fat_off = _FAT_OFF + n * _SPF * _BPS
        img[fat_off] = 0xFD
        img[fat_off + 1] = 0xFF
        img[fat_off + 2] = 0xFF
    return img


def _set_fat12(img: bytearray, cluster: int, value: int) -> None:
    """Write a 12-bit FAT entry into BOTH FAT copies."""
    for n in range(_NFATS):
        fat_off = _FAT_OFF + n * _SPF * _BPS
        off = fat_off + (cluster * 3 // 2)
        raw = struct.unpack_from("<H", img, off)[0]
        if cluster & 1:
            raw = (raw & 0x000F) | ((value & 0xFFF) << 4)
        else:
            raw = (raw & 0xF000) | (value & 0xFFF)
        struct.pack_into("<H", img, off, raw)


def _add_root_entry(img: bytearray, idx: int, name8: str, ext3: str,
                    first_cluster: int, file_size: int) -> None:
    name = name8.upper().ljust(8).encode("ascii")
    ext = ext3.upper().ljust(3).encode("ascii")
    entry_off = _ROOT_OFF + idx * 32
    img[entry_off:entry_off + 8] = name
    img[entry_off + 8:entry_off + 11] = ext
    img[entry_off + 11] = 0x20                                # archive bit
    struct.pack_into("<H", img, entry_off + 26, first_cluster)
    struct.pack_into("<I", img, entry_off + 28, file_size)


def _write_clusters(img: bytearray, first_cluster: int, data: bytes) -> None:
    """Write data into a chain of clusters starting at `first_cluster`,
    updating the FAT accordingly. The chain is allocated contiguously."""
    n_clusters = (len(data) + _CLUSTER_SIZE - 1) // _CLUSTER_SIZE
    chain = list(range(first_cluster, first_cluster + n_clusters))
    for i, cl in enumerate(chain):
        off = _DATA_OFF + (cl - 2) * _CLUSTER_SIZE
        chunk = data[i * _CLUSTER_SIZE:(i + 1) * _CLUSTER_SIZE]
        img[off:off + len(chunk)] = chunk
        # Set FAT entry
        next_v = chain[i + 1] if i + 1 < len(chain) else 0xFFF  # EOF
        _set_fat12(img, cl, next_v)


@pytest.fixture
def synthetic_img(tmp_path):
    """Create a 360 KB FAT12 floppy with two files and return path +
    expected contents."""
    img = _make_empty_img()

    # File A: WIN.COM (4873 B = 5 clusters) at cluster 2..6
    payload_a = b"".join(((i % 251).to_bytes(1, "little") for i in range(4873)))
    _add_root_entry(img, 0, "WIN", "COM", 2, len(payload_a))
    _write_clusters(img, 2, payload_a)

    # File B: HELLO.TXT (12 B = 1 cluster) at cluster 7
    payload_b = b"hello, world"
    _add_root_entry(img, 1, "HELLO", "TXT", 7, len(payload_b))
    _write_clusters(img, 7, payload_b)

    path = tmp_path / "synth.img"
    path.write_bytes(bytes(img))
    return path, payload_a, payload_b


# =============================================================
#  Tests
# =============================================================

def test_round_trip_replace_preserves_other_files(synthetic_img):
    img, payload_a, payload_b = synthetic_img
    new_a = bytes(reversed(payload_a))           # same size, different bytes
    fr.replace_file(img, "WIN.COM", new_a, verbose=False)

    # Re-read both files via fat12_replace's own helpers (parse + chain)
    raw = img.read_bytes()
    bpb = fr.parse_bpb(raw)
    fat_off = bpb["resv"] * bpb["bps"]
    root_off = fat_off + bpb["nfats"] * bpb["spfat"] * bpb["bps"]
    data_off = root_off + bpb["nroot"] * 32
    cluster_size = bpb["spc"] * bpb["bps"]

    # WIN.COM should now match new_a
    _, first_a, size_a = fr.find_root_entry(raw, root_off, bpb["nroot"], "WIN", "COM")
    chain_a = fr.fat12_chain(raw, fat_off, first_a)
    got_a = bytearray()
    for cl in chain_a:
        off = data_off + (cl - 2) * cluster_size
        got_a.extend(raw[off:off + cluster_size])
    assert bytes(got_a[:size_a]) == new_a

    # HELLO.TXT must be untouched
    _, first_b, size_b = fr.find_root_entry(raw, root_off, bpb["nroot"],
                                            "HELLO", "TXT")
    chain_b = fr.fat12_chain(raw, fat_off, first_b)
    got_b = bytearray()
    for cl in chain_b:
        off = data_off + (cl - 2) * cluster_size
        got_b.extend(raw[off:off + cluster_size])
    assert bytes(got_b[:size_b]) == payload_b


def test_replace_fails_on_size_mismatch(synthetic_img):
    img, payload_a, _ = synthetic_img
    with pytest.raises(ValueError, match="size"):
        fr.replace_file(img, "WIN.COM", payload_a + b"\x00",  # one byte too many
                        verbose=False)
    with pytest.raises(ValueError, match="size"):
        fr.replace_file(img, "WIN.COM", payload_a[:-1],       # one byte short
                        verbose=False)


def test_replace_fails_on_missing_file(synthetic_img):
    img, _, _ = synthetic_img
    with pytest.raises(FileNotFoundError):
        fr.replace_file(img, "NOPE.BIN", b"\x00" * 10, verbose=False)


def test_replace_zero_pads_last_cluster(synthetic_img):
    """File B (HELLO.TXT) is 12 B in a 1024 B cluster. After a replace,
    the trailing 1012 B of the cluster should be zero-padded."""
    img, _, payload_b = synthetic_img
    new_b = b"BYE!" * 3                            # 12 B again
    assert len(new_b) == len(payload_b)
    fr.replace_file(img, "HELLO.TXT", new_b, verbose=False)

    raw = img.read_bytes()
    bpb = fr.parse_bpb(raw)
    fat_off = bpb["resv"] * bpb["bps"]
    root_off = fat_off + bpb["nfats"] * bpb["spfat"] * bpb["bps"]
    data_off = root_off + bpb["nroot"] * 32
    cluster_size = bpb["spc"] * bpb["bps"]
    _, first, _size = fr.find_root_entry(raw, root_off, bpb["nroot"],
                                          "HELLO", "TXT")
    cluster_data = raw[data_off + (first - 2) * cluster_size:
                       data_off + (first - 2) * cluster_size + cluster_size]
    assert cluster_data[:12] == new_b
    # Rest of the cluster MUST be zero-padded
    assert cluster_data[12:] == b"\x00" * (cluster_size - 12)


def test_replace_returns_chain_unchanged(synthetic_img):
    """Replacing should keep the existing FAT chain intact (no
    reallocation)."""
    img, payload_a, _ = synthetic_img
    before = img.read_bytes()
    bpb = fr.parse_bpb(before)
    fat_off = bpb["resv"] * bpb["bps"]
    root_off = fat_off + bpb["nfats"] * bpb["spfat"] * bpb["bps"]

    _, first_before, _ = fr.find_root_entry(before, root_off, bpb["nroot"],
                                             "WIN", "COM")
    chain_before = fr.fat12_chain(before, fat_off, first_before)

    new_a = b"\xAA" * len(payload_a)
    fr.replace_file(img, "WIN.COM", new_a, verbose=False)

    after = img.read_bytes()
    _, first_after, _ = fr.find_root_entry(after, root_off, bpb["nroot"],
                                            "WIN", "COM")
    chain_after = fr.fat12_chain(after, fat_off, first_after)

    assert chain_before == chain_after
