#!/usr/bin/env python3
"""Build EQU offset map for all orphan L_XXXX refs.

Output: state/analyze/pass_c2_equ_map.json
  { "relative/path/to/seg.asm": { "offset": "label", ... }, ... }
"""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
STATE = ROOT / "state" / "analyze"


def build_map():
    with open(STATE / "pass_c2_classified.json") as f:
        data = json.load(f)
    
    equ_map: dict[str, dict[int, str]] = {}
    
    # Process same-seg off-boundary
    for ref in data["same_seg_data"]:
        seg = ref["segment"]
        target = ref["target"]
        target_offset = int(target[2:], 16)
        
        if seg not in equ_map:
            equ_map[seg] = {}
        equ_map[seg][target_offset] = target
    
    # Process cross-segment (use target_offset_in_file)
    for ref in data["cross_segment"]:
        target_file = ref.get("target_file", "")
        target = ref["target"]
        target_offset = ref.get("target_offset_in_file", 0)
        
        if not target_file:
            continue
        
        if target_file not in equ_map:
            equ_map[target_file] = {}
        equ_map[target_file][target_offset] = target
    
    # Save
    (STATE / "pass_c2_equ_map.json").write_text(json.dumps(equ_map, indent=2), encoding="utf-8")
    
    total = sum(len(v) for v in equ_map.values())
    print(f"EQU map built: {len(equ_map)} files, {total} labels")
    print(f"Saved: {STATE / 'pass_c2_equ_map.json'}")
    return equ_map


if __name__ == "__main__":
    build_map()
