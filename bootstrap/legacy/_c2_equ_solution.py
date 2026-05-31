#!/usr/bin/env python3
"""C2 Robust Solution: Use 'L_XXXX = $' for off-boundary labels.

Instead of splitting instructions (which is fragile), we insert:
    L_XXXX = $

This assigns the current location counter value to the symbol.
For relative jumps/calls, MASM computes the displacement using the
symbol's value, which is exactly the byte offset we need.

This preserves all original bytes exactly and is MASM-safe.
"""
from __future__ import annotations

import json
import re
import shutil
from pathlib import Path
from collections import defaultdict

ROOT = Path(__file__).resolve().parent.parent.parent
SRC = ROOT / "src"
STATE = ROOT / "state" / "analyze"

_RE_HEX = re.compile(r";\s*([0-9A-Fa-f]{2}(?:\s+[0-9A-Fa-f]{2})*)\s*$")


def get_defined_labels(path: Path) -> set[str]:
    text = path.read_text(encoding="ascii", errors="replace")
    labels = set()
    for line in text.splitlines():
        m = re.match(r"^\s*([A-Za-z_][A-Za-z0-9_]*):\s*", line)
        if m:
            labels.add(m.group(1))
        # Also check for existing EQU definitions
        m2 = re.match(r"^\s*([A-Za-z_][A-Za-z0-9_]*)\s*=\s*\$\s*$", line)
        if m2:
            labels.add(m2.group(1))
    return labels


def build_offset_map(path: Path) -> dict[int, int]:
    text = path.read_text(encoding="ascii", errors="replace")
    offset = 0
    offset_map = {}
    for i, line in enumerate(text.splitlines(), 1):
        m = _RE_HEX.search(line)
        if m:
            offset_map[offset] = i
            offset += len(m.group(1).split())
    return offset_map


def apply_equ():
    with open(STATE / "pass_c2_classified.json") as f:
        data = json.load(f)
    
    # Combine both cross-segment and same-seg off-boundary
    all_refs = data["cross_segment"] + data["same_seg_data"]
    
    # Deduplicate by (segment, target)
    seen = set()
    unique_refs = []
    for ref in all_refs:
        key = (ref.get("segment", ref.get("target_file", "")), ref["target"])
        if key not in seen:
            seen.add(key)
            unique_refs.append(ref)
    
    print(f"Total unique refs to resolve: {len(unique_refs)}")
    
    # Group by file (use segment for same-seg, target_file for cross-seg)
    by_file = defaultdict(list)
    for ref in unique_refs:
        file_key = ref.get("segment", ref.get("target_file", ""))
        by_file[file_key].append(ref)
    
    fixed = 0
    skipped = 0
    errors = 0
    
    for seg, refs_list in by_file.items():
        path = SRC / seg
        if not path.exists():
            errors += len(refs_list)
            continue
        
        text = path.read_text(encoding="ascii", errors="replace")
        lines = text.splitlines()
        existing = get_defined_labels(path)
        
        # Build offset map for finding insertion points
        offset_map = build_offset_map(path)
        
        # Sort by offset descending to insert from bottom up
        sorted_refs = []
        for ref in refs_list:
            target = ref["target"]
            target_offset = int(target[2:], 16)
            
            # For cross-segment refs, use target_offset_in_file
            if "target_offset_in_file" in ref:
                target_offset = ref["target_offset_in_file"]
            
            if target_offset in offset_map:
                sorted_refs.append((target, target_offset, offset_map[target_offset]))
        
        sorted_refs.sort(key=lambda x: x[2], reverse=True)
        
        for target, target_offset, line_no in sorted_refs:
            if target in existing:
                skipped += 1
                continue
            
            idx = line_no - 1  # 0-based
            original = lines[idx]
            
            # Insert L_XXXX = $ before the instruction at this offset
            indent = len(original) - len(original.lstrip())
            indent_str = original[:indent]
            
            lines.insert(idx, f"{indent_str}{target} = $")
            existing.add(target)
            fixed += 1
        
        if fixed > 0 or skipped > 0:
            backup = path.with_suffix(path.suffix + ".c2equ.bak")
            if not backup.exists():
                shutil.copy2(path, backup)
            path.write_text("\n".join(lines) + ("\n" if text.endswith("\n") else ""), 
                           encoding="ascii", errors="replace")
            print(f"  {seg}: {fixed} EQUI inserted, {skipped} skipped")
    
    print(f"\n=== TOTALS ===")
    print(f"  EQUI inserted: {fixed}")
    print(f"  Already existed: {skipped}")
    print(f"  Errors: {errors}")
    
    summary = {
        "total": len(unique_refs),
        "fixed": fixed,
        "skipped": skipped,
        "errors": errors,
    }
    (STATE / "pass_c2_equ.json").write_text(json.dumps(summary, indent=2), encoding="utf-8")
    print(f"Summary saved: {STATE / 'pass_c2_equ.json'}")


if __name__ == "__main__":
    apply_equ()
