"""Tests for bootstrap/blibbet_mod.py - CGA <-> linear conversion and
BMP round-tripping.  No real WIN.COM required (uses random synthetic
bytes of the correct size)."""
from __future__ import annotations

import os
import random

import pytest

import blibbet_mod as bm
import win103_layout as L


def _random_logo_bytes(seed: int = 0xC0DE) -> bytes:
    rnd = random.Random(seed)
    return bytes(rnd.getrandbits(8) for _ in range(L.WINCOM_LOGO_SIZE))


def test_cga_linear_roundtrip_identity():
    """linear_to_cga(cga_to_linear(x)) == x for any 2412-byte buffer."""
    src = _random_logo_bytes()
    linear = bm.cga_to_linear(src)
    back = bm.linear_to_cga(linear)
    assert back == src


def test_cga_to_linear_preserves_size():
    src = _random_logo_bytes(seed=1)
    out = bm.cga_to_linear(src)
    assert len(out) == L.WINCOM_LOGO_SIZE


def test_cga_to_linear_deinterleaves_correctly():
    """Even-bank row K (0..17) should land at output row 2K; odd-bank
    row K should land at output row 2K+1."""
    # Build a synthetic logo where:
    #   - bank0 (even) row K = byte K repeated 67 times
    #   - bank1 (odd)  row K = byte (K+100) repeated 67 times
    BPR = L.WINCOM_LOGO_BPR
    bank0 = bytearray()
    bank1 = bytearray()
    for k in range(L.WINCOM_LOGO_BANK_ROWS):
        bank0.extend(bytes([k]) * BPR)
        bank1.extend(bytes([k + 100]) * BPR)
    src = bytes(bank0 + bank1)
    linear = bm.cga_to_linear(src)
    # Now row 2K of `linear` should be byte K, row 2K+1 should be K+100
    for k in range(L.WINCOM_LOGO_BANK_ROWS):
        row_even = linear[2 * k * BPR:(2 * k + 1) * BPR]
        row_odd = linear[(2 * k + 1) * BPR:(2 * k + 2) * BPR]
        assert row_even == bytes([k]) * BPR, f"even row {2*k}"
        assert row_odd == bytes([k + 100]) * BPR, f"odd row {2*k+1}"


def test_bmp_write_read_roundtrip(tmp_path):
    """write_bmp_1bpp + read_bmp_1bpp should be byte-exact identity for
    a random 1bpp pattern."""
    W, H = L.WINCOM_LOGO_WIDTH, L.WINCOM_LOGO_HEIGHT
    bpr = L.WINCOM_LOGO_BPR
    rnd = random.Random(42)
    bits = bytes(rnd.getrandbits(8) for _ in range(bpr * H))

    bmp_path = tmp_path / "test.bmp"
    bm.write_bmp_1bpp(bmp_path, bits, W, H, bpr)
    back, w_back, h_back = bm.read_bmp_1bpp(bmp_path)
    assert (w_back, h_back) == (W, H)
    assert back == bits


def test_logo_size_matches_layout():
    """The constants imported by blibbet_mod must match win103_layout."""
    assert bm.LOGO_OFFSET == L.WINCOM_LOGO_OFFSET
    assert bm.LOGO_SIZE == L.WINCOM_LOGO_SIZE
    assert bm.LOGO_WIDTH == L.WINCOM_LOGO_WIDTH
    assert bm.LOGO_HEIGHT == L.WINCOM_LOGO_HEIGHT
    assert bm.BPR == L.WINCOM_LOGO_BPR


# ---------- integration test: real WIN.COM byte-exact roundtrip ----------

@pytest.mark.skipif(
    not (bm.ORIG_WIN_COM.exists()
         and bm.ORIG_WIN_COM.stat().st_size == L.WINCOM_SIZE),
    reason="real original/WIN.COM not present (size mismatch or missing)",
)
def test_real_wincom_roundtrip_byte_exact(tmp_path, capsys):
    """If the user has a legal original/WIN.COM in the repo, exporting it
    to BMP and re-importing should produce a byte-identical WIN.COM."""
    bmp = tmp_path / "rt.bmp"
    preview = tmp_path / "rt_preview.png"
    out_com = tmp_path / "WIN_RT.COM"
    bm.cmd_export(bmp_path=bmp, preview_path=preview,
                  win_com_path=bm.ORIG_WIN_COM)
    bm.cmd_import(bmp_path=bmp, output_path=out_com,
                  win_com_path=bm.ORIG_WIN_COM)
    assert out_com.read_bytes() == bm.ORIG_WIN_COM.read_bytes()


def test_synthetic_logo_byte_exact_through_bmp(tmp_path):
    """Synthetic logo bytes -> deinterleave -> BMP -> reinterleave should
    reproduce the original bytes exactly. No real WIN.COM needed."""
    src_cga = _random_logo_bytes(seed=7)
    linear = bm.cga_to_linear(src_cga)
    bmp = tmp_path / "synth.bmp"
    bm.write_bmp_1bpp(bmp, linear, L.WINCOM_LOGO_WIDTH,
                      L.WINCOM_LOGO_HEIGHT, L.WINCOM_LOGO_BPR)
    bits_back, _, _ = bm.read_bmp_1bpp(bmp)
    cga_back = bm.linear_to_cga(bits_back)
    assert cga_back == src_cga
