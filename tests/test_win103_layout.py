"""Sanity tests for bootstrap/win103_layout.py constants."""
from __future__ import annotations

import win103_layout as L


def test_wincom_logo_geometry_consistent():
    assert L.WINCOM_LOGO_WIDTH == 536
    assert L.WINCOM_LOGO_HEIGHT == 36
    assert L.WINCOM_LOGO_BPR == 67                      # ceil(536/8)
    assert L.WINCOM_LOGO_BANK_ROWS == 18                # H/2
    assert L.WINCOM_LOGO_BANK_BYTES == 18 * 67          # 1206
    assert L.WINCOM_LOGO_SIZE == 2 * 1206               # 2412


def test_wincom_logo_fits_in_wincom():
    """The logo span [offset, offset+size) must end exactly at EOF
    of WIN.COM. This is a structural invariant from the discovery."""
    end = L.WINCOM_LOGO_OFFSET + L.WINCOM_LOGO_SIZE
    assert end == L.WINCOM_SIZE
    assert L.WINCOM_LOGO_OFFSET == 0x099D


def test_size_table_lists_canonical_binaries():
    for name in ("WIN.COM", "WIN100.OVL", "MSDOS.EXE",
                 "WIN100.BIN", "WINOLDAP.MOD"):
        assert name in L.SIZE_BY_FILE
        assert L.SIZE_BY_FILE[name] > 0
    assert L.SIZE_BY_FILE["WIN.COM"] == L.WINCOM_SIZE
    assert L.SIZE_BY_FILE["MSDOS.EXE"] == L.MSDOS_EXE_SIZE


def test_string_offsets_are_distinct():
    """Each string entry must point at a distinct location (otherwise
    we'd double-patch the same bytes)."""
    for table in (L.WINCOM_STRINGS, L.NE_META_STRINGS):
        offsets = list(table.values())
        assert len(offsets) == len(set(offsets)), (
            f"duplicate offsets in {table!r}: {offsets}")


def test_win100_ovl_microsoft_windows_offsets_distinct():
    offs = L.WIN100_OVL_STRINGS["Microsoft Windows"]
    assert len(offs) == len(set(offs))
    # All offsets fit inside the file
    for o in offs:
        assert 0 <= o < L.WIN100_OVL_SIZE


def test_validate_against_originals_skips_missing(tmp_path):
    """validate_against_originals should not raise when original/ is
    missing files (it just skips them)."""
    L.validate_against_originals(tmp_path)


def test_validate_against_originals_catches_size_mismatch(tmp_path):
    import pytest
    (tmp_path / "WIN.COM").write_bytes(b"\x00" * 100)
    with pytest.raises(ValueError, match=r"WIN\.COM"):
        L.validate_against_originals(tmp_path)
