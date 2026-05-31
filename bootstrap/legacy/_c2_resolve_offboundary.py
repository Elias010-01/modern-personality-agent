#!/usr/bin/env python3
"""C2 Phase 2: Resolve 1,042 L_XXXX off-boundary orphan refs.

Strategy:
  1. For each module, compute cumulative offset across all seg*.asm files
     (in alphabetical order, which is likely the segment order).
  2. For each off-boundary ref, find which segment file contains the target.
  3. Categorize:
     a. Cross-segment (target in different file) -> PUBLIC/EXTRN
     b. Same-segment-off-boundary (middle of instruction) -> investigate

Uses pass_c2_orphan_refs.json + pass_c2_applied.json as input.
"""
from __future__ import annotations

import json
import re
from pathlib import Path
from collections import defaultdict

ROOT = Path(__file__).resolve().parent.parent.parent
SRC = ROOT / "src"
STATE = ROOT / "state" / "analyze"

_RE_HEX = re.compile(r";\s*([0-9A-Fa-f]{2}(?:\s+[0-9A-Fa-f]{2})*)\s*$")


def get_segment_offsets(path: Path) -> dict[int, int]:
    """Return map: file_offset -> line_number for a segment."""
    text = path.read_text(encoding="ascii", errors="replace")
    offset = 0
    offset_map = {}
    for i, line in enumerate(text.splitlines(), 1):
        m = _RE_HEX.search(line)
        if m:
            offset_map[offset] = i
            offset += len(m.group(1).split())
    return offset_map, offset  # total length


def build_module_index():
    """Build index: module -> list of (segment_file, start_offset, end_offset, path)."""
    index = defaultdict(list)
    for path in sorted(SRC.rglob("seg*.asm")):
        rel = str(path.relative_to(SRC))
        mod = rel.split("\\")[0]
        seg_name = path.stem  # e.g. "seg1"
        _, length = get_segment_offsets(path)
        index[mod].append({
            "rel": rel,
            "seg_name": seg_name,
            "path": path,
            "length": length,
        })

    # Sort by seg_name and compute cumulative offsets
    for mod in index:
        index[mod].sort(key=lambda x: x["seg_name"])
        cum = 0
        for seg in index[mod]:
            seg["cum_start"] = cum
            seg["cum_end"] = cum + seg["length"]
            cum += seg["length"]

    return index


def classify_off_boundary():
    with open(STATE / "pass_c2_orphan_refs.json") as f:
        data = json.load(f)
    with open(STATE / "pass_c2_applied.json") as f:
        applied = json.load(f)

    # Already-fixed refs
    fixed_targets = {r["target"] for r in applied["refs"]}

    # Remaining L_XXXX off-boundary refs
    remaining = []
    for o in data["orphans"]:
        target = o["target"]
        if not re.match(r"^L_[0-9A-Fa-f]+$", target):
            continue
        if target in fixed_targets:
            continue
        remaining.append(o)

    print(f"Remaining L_XXXX off-boundary refs: {len(remaining)}")

    mod_index = build_module_index()

    cross_segment = []      # target in different file of same module
    same_seg_data = []      # target in same file, looks like data
    same_seg_insn = []      # target in same file, but middle of instruction
    unknown = []

    for o in remaining:
        seg = o["segment"]
        mod = seg.split("\\")[0]
        target_offset = int(o["target"][2:], 16)

        # Find which segment file contains this cumulative offset
        found_seg = None
        found_file = None
        for s in mod_index.get(mod, []):
            if s["cum_start"] <= target_offset < s["cum_end"]:
                found_seg = s
                break

        if found_seg is None:
            # Offset beyond module total - maybe numeric error
            unknown.append(o)
            continue

        target_file_rel = found_seg["rel"]

        if target_file_rel == seg:
            # Same file! Target offset is within this file
            # Check if it's at an instruction boundary
            path = SRC / seg
            offset_map, _ = get_segment_offsets(path)
            if target_offset in offset_map:
                same_seg_insn.append({**o, "target_line": offset_map[target_offset]})
            else:
                # Off-boundary within same file
                # Check surrounding lines to understand context
                same_seg_data.append(o)
        else:
            # Different file - cross-segment reference
            cross_segment.append({
                **o,
                "target_file": target_file_rel,
                "target_file_start": found_seg["cum_start"],
                "target_offset_in_file": target_offset - found_seg["cum_start"],
            })

    print(f"\nClassification:")
    print(f"  Cross-segment (different file):     {len(cross_segment):5d}")
    print(f"  Same-segment on boundary:           {len(same_seg_insn):5d}")
    print(f"  Same-segment off-boundary (data?):  {len(same_seg_data):5d}")
    print(f"  Unknown (offset beyond module):     {len(unknown):5d}")

    # Show examples
    print(f"\nCross-segment examples:")
    for o in cross_segment[:10]:
        print(f"  {o['segment']:40s} L{o['line']:4d} {o['opcode']:8s} {o['target']:10s} -> {o['target_file']} (offset 0x{o['target_offset_in_file']:04X})")

    print(f"\nSame-segment on-boundary examples:")
    for o in same_seg_insn[:10]:
        print(f"  {o['segment']:40s} L{o['line']:4d} {o['opcode']:8s} {o['target']:10s} -> line {o['target_line']}")

    # Save classification
    result = {
        "cross_segment": cross_segment,
        "same_seg_insn": same_seg_insn,
        "same_seg_data": same_seg_data,
        "unknown": unknown,
    }
    (STATE / "pass_c2_classified.json").write_text(json.dumps(result, indent=2), encoding="utf-8")
    print(f"\nSaved: {STATE / 'pass_c2_classified.json'}")

    return result


if __name__ == "__main__":
    classify_off_boundary()
