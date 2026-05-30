#!/usr/bin/env python3
"""C4 check: compare retail symbol offsets from pass21 vs pass1b detected functions."""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent


def check_module(mod: str):
    p1b_path = ROOT / "state" / "analyze" / "pass1b" / f"{mod}.json"
    p21_path = ROOT / "state" / "analyze" / "pass21" / f"{mod}.json"
    if not p1b_path.exists() or not p21_path.exists():
        print(f"SKIP {mod}: missing pass1b or pass21")
        return

    with open(p1b_path) as f:
        p1b = json.load(f)
    with open(p21_path) as f:
        p21 = json.load(f)

    p1b_funcs = p1b.get("functions", [])
    p1b_by_offset: dict[int, list[str]] = {}
    for fn in p1b_funcs:
        off = fn.get("offset")
        if off is not None:
            p1b_by_offset.setdefault(off, []).append(fn["name"])

    p21_syms = []
    for seg in p21.get("segments", []):
        for sym in seg.get("symbols", []):
            p21_syms.append(sym)

    matched = 0
    unmatched = 0
    for sym in p21_syms:
        off = sym.get("offset")
        if off is None:
            continue
        if off in p1b_by_offset:
            matched += 1
        else:
            unmatched += 1

    # Also check confirmed_names (exports that match retail .DEF)
    confirmed = p21.get("confirmed_names", [])

    print(f"{mod:12s}: pass1b_funcs={len(p1b_funcs):4d}  "
          f"p21_syms={len(p21_syms):4d}  "
          f"matched_offs={matched:4d}  unmatched_offs={unmatched:4d}  "
          f"confirmed={len(confirmed):4d}")

    # Sample of unmatched symbols to understand what they are
    if unmatched > 0:
        samples = [s for s in p21_syms if s.get("offset") not in p1b_by_offset][:3]
        for s in samples:
            print(f"    sample unmatched: {s.get('name')} offset={s.get('offset')} "
                  f"seg={s.get('segment')}")


RETAIL_MODS = ["MSDOS", "WRITE", "COMM", "SOUND", "SYSTEM", "EPSON", "MOUSE", "USA"]

print("C4: Retail symbol offsets vs pass1b detected function offsets")
print("=" * 75)
for mod in RETAIL_MODS:
    check_module(mod)
print("=" * 75)
print("\nConclusion:")
print("  matched_offs   = symbol offset found in pass1b function list.")
print("  unmatched_offs = symbol offset NOT in pass1b (data labels, exports,")
print("                   or functions pass1b missed).")
print("\n  For C3 (rename sub_XXXX -> retail names): OFFSET-BASED rename is")
print("  NOT SAFE because many retail symbol offsets do not match pass1b")
print("  detected function offsets. Manual name application (via confirmed")
print("  exports + manual audit) would be required instead.")
