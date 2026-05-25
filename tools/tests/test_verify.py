from mpa.verify import diff_bytes, hex_dump_diff


def test_match_when_identical():
    a = bytes(range(64))
    res = diff_bytes(a, a)
    assert res.matched
    assert res.diff_bytes == 0
    assert res.first_diff_offset is None


def test_simple_mismatch():
    a = b"\x00\x01\x02\x03"
    b = b"\x00\xff\x02\x03"
    res = diff_bytes(a, b)
    assert not res.matched
    assert res.diff_bytes == 1
    assert res.first_diff_offset == 1


def test_ignore_offsets():
    a = b"\x00\x01\x02\x03"
    b = b"\x00\xff\x02\x03"
    res = diff_bytes(a, b, ignore_offsets={1})
    assert res.matched


def test_size_difference_counts_as_diff():
    a = b"\x00\x01"
    b = b"\x00\x01\x02"
    res = diff_bytes(a, b)
    assert not res.matched
    assert res.diff_bytes == 1


def test_hex_dump_no_diff():
    a = b"\xaa" * 32
    assert hex_dump_diff(a, a) == "(no diffs)"
