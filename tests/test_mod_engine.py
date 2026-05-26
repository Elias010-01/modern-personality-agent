"""Tests for bootstrap/mod_engine.py - the declarative patch engine."""
from __future__ import annotations

from pathlib import Path

import pytest

import mod_engine as me
import win103_layout as L


# =============================================================
#  apply_string_patch: word-boundary-aware substitution
# =============================================================

def test_string_patch_basic_replace():
    data = bytearray(b"Hello, world!")
    n = me.apply_string_patch(data, [(b"world", b"earth")],
                              label="t", verbose=False)
    assert n == 1
    assert bytes(data) == b"Hello, earth!"


def test_string_patch_length_mismatch_raises():
    data = bytearray(b"hello")
    with pytest.raises(ValueError, match="length mismatch"):
        me.apply_string_patch(data, [(b"hello", b"hi")],
                              label="t", verbose=False)


def test_string_patch_skips_word_boundary_collision():
    """`Special` substring inside `Specialist` should NOT be replaced
    (the next byte is a word char)."""
    data = bytearray(b"Specialist Special menu")
    n = me.apply_string_patch(data, [(b"Special", b"ZONA!!!")],
                              label="t", verbose=False)
    assert n == 1
    # First match (inside "Specialist") was skipped because 'i' is word-char.
    # Second match (the standalone word) was applied.
    assert bytes(data) == b"Specialist ZONA!!! menu"


def test_string_patch_multiple_occurrences():
    data = bytearray(b"foo bar foo bar foo")
    n = me.apply_string_patch(data, [(b"foo", b"FOO")],
                              label="t", verbose=False)
    assert n == 3
    assert bytes(data) == b"FOO bar FOO bar FOO"


def test_string_patch_empty_when_no_match():
    data = bytearray(b"nothing to see here")
    n = me.apply_string_patch(data, [(b"xyz", b"ABC")],
                              label="t", verbose=False)
    assert n == 0
    assert bytes(data) == b"nothing to see here"


def test_string_patch_preserves_length():
    data = bytearray(b"x" * 100)
    sub = b"foo"
    new = b"BAR"
    data[40:43] = sub
    me.apply_string_patch(data, [(sub, new)], label="t", verbose=False)
    assert len(data) == 100


# =============================================================
#  _resolve_offset: int / hex / symbolic
# =============================================================

def test_resolve_offset_int():
    assert me._resolve_offset(0x1234) == 0x1234


def test_resolve_offset_hex_string():
    assert me._resolve_offset("0x099D") == 0x099D
    assert me._resolve_offset("0X1000") == 0x1000


def test_resolve_offset_decimal_string():
    assert me._resolve_offset("2412") == 2412


def test_resolve_offset_symbolic():
    assert me._resolve_offset("WINCOM_LOGO_OFFSET") == L.WINCOM_LOGO_OFFSET
    assert me._resolve_offset("WINCOM_LOGO_SIZE") == L.WINCOM_LOGO_SIZE


def test_resolve_offset_invalid_raises():
    with pytest.raises(ValueError):
        me._resolve_offset("not_a_symbol_xyz")
    with pytest.raises(ValueError):
        me._resolve_offset(None)


# =============================================================
#  load_mod: parse meta.toml + patches.toml
# =============================================================

_PATCHES_TOML_SAMPLE = """\
rebuilds = ["FOO"]

[[targets]]
output = "TEST.BIN"
source = "input/TEST.BIN"

  [[targets.patches]]
  type = "string"
  replacements = [
    ["foo", "bar"],
    ["hello", "world"],
  ]

  [[targets.patches]]
  type = "bitmap"
  offset = "0x100"
  size = 16
  width = 8
  height = 16
  format = "cga-mode6-bank-interleaved-1bpp"
  source = "bitmap.bmp"
  optional = true

[deploy]
img = "runtime/test.img"
"""

_META_TOML_SAMPLE = """\
name = "test-mod"
title = "Test mod"
description = "A toy mod for tests"
"""


def test_load_mod_parses_full_manifest(tmp_path):
    mod_dir = tmp_path / "mods" / "test-mod"
    mod_dir.mkdir(parents=True)
    (mod_dir / "meta.toml").write_text(_META_TOML_SAMPLE)
    (mod_dir / "patches.toml").write_text(_PATCHES_TOML_SAMPLE)

    spec = me.load_mod(mod_dir)
    assert spec.name == "test-mod"
    assert spec.title == "Test mod"
    assert spec.rebuild_modules == ["FOO"]
    assert len(spec.targets) == 1

    tgt = spec.targets[0]
    assert tgt.output == "TEST.BIN"
    assert tgt.source == "input/TEST.BIN"
    assert len(tgt.patches) == 2

    # String patch
    str_patch = tgt.patches[0]
    assert str_patch.kind == "string"
    assert str_patch.replacements == [
        (b"foo", b"bar"),
        (b"hello", b"world"),
    ]

    # Bitmap patch
    bmp_patch = tgt.patches[1]
    assert bmp_patch.kind == "bitmap"
    assert bmp_patch.bmp_offset == 0x100
    assert bmp_patch.bmp_size == 16
    assert bmp_patch.bmp_width == 8
    assert bmp_patch.bmp_height == 16
    assert bmp_patch.optional is True

    assert spec.deploy_img is not None
    assert str(spec.deploy_img).endswith("runtime" + os_sep() + "test.img")


def os_sep():
    import os
    return os.sep


def test_load_mod_missing_dir_raises():
    with pytest.raises(FileNotFoundError):
        me.load_mod(Path("nonexistent_mod_dir_xyz"))


def test_load_mod_without_patches_toml_returns_empty_spec(tmp_path):
    """Legacy v07 mods (no patches.toml) should return a spec with no
    targets so callers can fall back to the old code path."""
    mod_dir = tmp_path / "mods" / "legacy"
    mod_dir.mkdir(parents=True)
    (mod_dir / "meta.toml").write_text('name = "legacy"\ntitle = "L"\n')

    spec = me.load_mod(mod_dir)
    assert spec.name == "legacy"
    assert spec.targets == []


def test_load_mod_unknown_patch_type_raises(tmp_path):
    mod_dir = tmp_path / "mods" / "bad"
    mod_dir.mkdir(parents=True)
    (mod_dir / "patches.toml").write_text("""
[[targets]]
output = "X"
source = "Y"
  [[targets.patches]]
  type = "magic"
""")
    with pytest.raises(ValueError, match="unknown patch type"):
        me.load_mod(mod_dir)


def test_load_mod_bad_string_replacement_raises(tmp_path):
    """A string replacement must be [str, str] - using bytes/numbers
    should be rejected at parse time."""
    mod_dir = tmp_path / "mods" / "bad-str"
    mod_dir.mkdir(parents=True)
    (mod_dir / "patches.toml").write_text("""
[[targets]]
output = "X"
source = "Y"
  [[targets.patches]]
  type = "string"
  replacements = [["foo", 42]]
""")
    with pytest.raises(ValueError, match="must be"):
        me.load_mod(mod_dir)


# =============================================================
#  apply_string_patch real-world: word boundary on "Microsoft Windows"
# =============================================================

def test_microsoft_windows_substitution():
    """The classic mod patch: "Microsoft Windows" -> "Elias's Windows!!"
    -- both same length (17 B), no word-boundary collision."""
    data = bytearray(b"\x00\x00Microsoft Windows v1.03\x00\x00")
    n = me.apply_string_patch(data, [(b"Microsoft Windows",
                                       b"Elias's Windows!!")],
                              label="t", verbose=False)
    assert n == 1
    assert b"Elias's Windows!!" in bytes(data)
    assert b"Microsoft" not in bytes(data)


# =============================================================
#  build_target with no rebuild (source = real file)
# =============================================================

def test_build_target_string_only(tmp_path, monkeypatch):
    """Build a target from a synthetic source file with a string patch.
    No rebuild, no smart_build, no original/ needed."""
    # Set up a fake source file inside tmp_path
    fake_root = tmp_path / "fake_root"
    fake_root.mkdir()
    src_file = fake_root / "data.bin"
    src_file.write_bytes(b"hello, world! Microsoft Windows is fun.")

    # Patch mod_engine.ROOT to point at fake_root
    monkeypatch.setattr(me, "ROOT", fake_root)

    target = me.Target(
        output="OUTPUT.BIN",
        source="data.bin",
        patches=[
            me.Patch(kind="string",
                     replacements=[(b"Microsoft Windows",
                                    b"Elias's Windows!!")]),
        ],
    )
    spec = me.ModSpec(name="x", mod_dir=fake_root)

    # build_target validates output size against SIZE_BY_FILE. OUTPUT.BIN
    # is not in the table -> no validation. Good.
    out = me.build_target(target, spec, verbose=False)
    assert b"Elias's Windows!!" in out
    assert b"Microsoft Windows" not in out
    assert len(out) == src_file.stat().st_size
