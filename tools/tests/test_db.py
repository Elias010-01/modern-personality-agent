"""Tests del wrapper SQLite. Usan una DB temporal."""

from pathlib import Path

import pytest

from mpa.db import DB


SCHEMA_PATH = Path(__file__).resolve().parents[2] / "state" / "schema.sql"


@pytest.fixture
def db(tmp_path):
    d = DB(tmp_path / "test.db")
    d.init_schema(SCHEMA_PATH)
    return d


def test_schema_loads(db):
    assert db.schema_version() == 1


def test_upsert_module_idempotent(db):
    for _ in range(2):
        db.upsert_module(
            name="KERNEL", binary="KERNEL.EXE", kind="executable",
            sha256="a" * 64, size=12345,
            has_debug_symbols=True, verify_mode="binary",
        )
    cur = db.conn.execute("SELECT COUNT(*) FROM modules")
    assert cur.fetchone()[0] == 1


def test_upsert_function_returns_id_and_status(db):
    db.upsert_module(
        name="KERNEL", binary="KERNEL.EXE", kind="executable",
        sha256="a" * 64, size=1, has_debug_symbols=True, verify_mode="binary",
    )
    fid = db.upsert_function(
        module="KERNEL", seg_number=1, seg_offset=0x100,
        size=42, name="LocalAlloc", ordinal=5, is_exported=True,
    )
    fn = db.get_function(fid)
    assert fn is not None
    assert fn.name == "LocalAlloc"
    assert fn.status == "pending"
    assert fn.attempts == 0


def test_pick_next_respects_module_priority(db):
    db.upsert_module(
        name="GDI", binary="GDI.EXE", kind="executable",
        sha256="b" * 64, size=1, has_debug_symbols=False, verify_mode="binary",
    )
    db.upsert_module(
        name="KERNEL", binary="KERNEL.EXE", kind="executable",
        sha256="a" * 64, size=1, has_debug_symbols=True, verify_mode="binary",
    )
    fid_gdi = db.upsert_function(
        module="GDI", seg_number=1, seg_offset=0, size=10, name="g")
    fid_kern = db.upsert_function(
        module="KERNEL", seg_number=1, seg_offset=0, size=10, name="k")

    nxt = db.next_function_for_work(
        priority_strategy="small_first",
        module_priority=["KERNEL", "GDI"],
        max_attempts=5,
    )
    assert nxt is not None
    assert nxt.id == fid_kern


def test_attempts_and_status(db):
    db.upsert_module(
        name="X", binary="X.EXE", kind="executable",
        sha256="c" * 64, size=1, has_debug_symbols=False, verify_mode="binary",
    )
    fid = db.upsert_function(module="X", seg_number=1, seg_offset=0, size=1)
    db.set_function_status(fid, "in_progress")
    db.record_attempt(function_id=fid, outcome="mismatch", diff_bytes=10)
    n = db.increment_attempts(fid)
    assert n == 1
    fn = db.get_function(fid)
    assert fn.attempts == 1
