#!/usr/bin/env python3
"""C2 Resolution v2: Deduplicate refs before processing to avoid duplicates.

Same-seg off-boundary: Deduplicate by (segment_file, target_offset).
Cross-segment: Deduplicate by (target_file, label_name).
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
    return labels


def build_offset_map(path: Path) -> tuple[dict[int, int], int]:
    text = path.read_text(encoding="ascii", errors="replace")
    offset = 0
    offset_map = {}
    for i, line in enumerate(text.splitlines(), 1):
        m = _RE_HEX.search(line)
        if m:
            offset_map[offset] = i
            offset += len(m.group(1).split())
    return offset_map, offset


def find_instruction_at_offset(path: Path, target_offset: int):
    text = path.read_text(encoding="ascii", errors="replace")
    offset = 0
    for i, line in enumerate(text.splitlines(), 1):
        m = _RE_HEX.search(line)
        if m:
            byts = m.group(1).split()
            start = offset
            end = offset + len(byts)
            if start <= target_offset < end:
                return i, line, start
            offset += len(byts)
    return None


def split_instruction_with_label(line: str, label: str, target_offset: int, instr_start_offset: int) -> list[str]:
    m = _RE_HEX.search(line)
    if not m:
        return [line]
    
    hex_strs = m.group(1).split()
    byts = [int(h, 16) for h in hex_strs]
    
    bytes_before = target_offset - instr_start_offset
    if bytes_before < 0 or bytes_before >= len(byts):
        return [line]
    
    code_part = line.split(";", 1)[0].rstrip()
    indent = len(code_part) - len(code_part.lstrip())
    indent_str = code_part[:indent]
    
    lines = []
    
    if bytes_before > 0:
        before = byts[:bytes_before]
        hex_before = " ".join(f"{b:02X}" for b in before)
        db_before = ", ".join(f"0{b:02X}h" for b in before)
        lines.append(f"{indent_str}db {db_before:<36s} ; {hex_before}")
    
    lines.append(f"{indent_str}{label}:")
    
    if bytes_before < len(byts):
        after = byts[bytes_before:]
        hex_after = " ".join(f"{b:02X}" for b in after)
        db_after = ", ".join(f"0{b:02X}h" for b in after)
        lines.append(f"{indent_str}db {db_after:<36s} ; {hex_after}")
    
    return lines


def resolve_same_seg(refs: list[dict]) -> tuple[int, int, int]:
    """Process same-seg off-boundary refs with deduplication."""
    fixed = 0
    skipped = 0
    errors = 0
    
    # Deduplicate by (segment, target_offset)
    seen = set()
    unique_refs = []
    for ref in refs:
        key = (ref["segment"], ref["target"])
        if key not in seen:
            seen.add(key)
            unique_refs.append(ref)
    
    print(f"  Same-seg: {len(refs)} refs -> {len(unique_refs)} unique after dedup")
    
    by_file = defaultdict(list)
    for ref in unique_refs:
        by_file[ref["segment"]].append(ref)
    
    for seg, refs_list in by_file.items():
        path = SRC / seg
        if not path.exists():
            errors += len(refs_list)
            continue
        
        text = path.read_text(encoding="ascii", errors="replace")
        lines = text.splitlines()
        existing = get_defined_labels(path)
        
        # Sort by line number descending to insert from bottom up
        sorted_refs = sorted(refs_list, key=lambda r: r["line"], reverse=True)
        
        for ref in sorted_refs:
            label = ref["target"]
            target_offset = int(label[2:], 16)
            
            if label in existing:
                skipped += 1
                continue
            
            result = find_instruction_at_offset(path, target_offset)
            if result is None:
                errors += 1
                continue
            
            line_no, line_text, instr_start = result
            idx = line_no - 1
            
            new_lines = split_instruction_with_label(line_text, label, target_offset, instr_start)
            lines[idx:idx+1] = new_lines
            existing.add(label)
            fixed += 1
        
        # Write back
        backup = path.with_suffix(path.suffix + ".c2split.bak")
        if not backup.exists():
            shutil.copy2(path, backup)
        path.write_text("\n".join(lines) + ("\n" if text.endswith("\n") else ""), 
                       encoding="ascii", errors="replace")
    
    return fixed, skipped, errors


def resolve_cross_segment(refs: list[dict]) -> tuple[int, int, int]:
    """Process cross-segment refs with deduplication."""
    fixed = 0
    skipped = 0
    errors = 0
    
    # Deduplicate by (target_file, label)
    seen = set()
    unique_refs = []
    for ref in refs:
        key = (ref.get("target_file", ""), ref["target"])
        if key not in seen:
            seen.add(key)
            unique_refs.append(ref)
    
    print(f"  Cross-seg: {len(refs)} refs -> {len(unique_refs)} unique after dedup")
    
    # Group by target file
    by_target = defaultdict(list)
    for ref in unique_refs:
        if "target_file" in ref:
            by_target[ref["target_file"]].append(ref)
    
    for target_file, refs_list in by_target.items():
        target_path = SRC / target_file
        if not target_path.exists():
            errors += len(refs_list)
            continue
        
        text = target_path.read_text(encoding="ascii", errors="replace")
        lines = text.splitlines()
        existing = get_defined_labels(target_path)
        
        offset_map, _ = build_offset_map(target_path)
        
        for ref in refs_list:
            target_offset = ref.get("target_offset_in_file", 0)
            label = ref["target"]
            
            if label in existing:
                skipped += 1
                continue
            
            if target_offset in offset_map:
                line_no = offset_map[target_offset]
                idx = line_no - 1
                original = lines[idx]
                
                if re.match(r"^\s*[A-Za-z_][A-Za-z0-9_]*:\s*", original):
                    indent = len(original) - len(original.lstrip())
                    lines[idx] = original[:indent] + label + ":\n" + original
                else:
                    indent = len(original) - len(original.lstrip())
                    lines[idx] = original[:indent] + label + ":\n" + original
                
                existing.add(label)
                fixed += 1
            else:
                errors += 1
        
        # Add PUBLIC declarations
        public_labels = list(set(ref["target"] for ref in refs_list if ref["target"] in existing))
        if public_labels:
            for i, line in enumerate(lines):
                if re.search(r"\bSEGMENT\b", line, re.IGNORECASE):
                    # Split into chunks of 10 labels per PUBLIC line
                    for j in range(0, len(public_labels), 10):
                        chunk = public_labels[j:j+10]
                        public_str = "    PUBLIC " + ", ".join(chunk)
                        lines.insert(i + 1 + j//10, public_str)
                    break
        
        backup = target_path.with_suffix(target_path.suffix + ".c2pub.bak")
        if not backup.exists():
            shutil.copy2(target_path, backup)
        target_path.write_text("\n".join(lines) + ("\n" if text.endswith("\n") else ""), 
                               encoding="ascii", errors="replace")
    
    return fixed, skipped, errors


def main():
    with open(STATE / "pass_c2_classified.json") as f:
        data = json.load(f)
    
    print("=== C2 Resolution v2 (deduplicated) ===")
    print(f"Cross-segment refs: {len(data['cross_segment'])}")
    print(f"Same-seg off-boundary refs: {len(data['same_seg_data'])}")
    
    print("\n--- Processing same-segment off-boundary (db split) ---")
    s_fixed, s_skip, s_err = resolve_same_seg(data["same_seg_data"])
    print(f"  Fixed: {s_fixed}, Skipped: {s_skip}, Errors: {s_err}")
    
    print("\n--- Processing cross-segment (PUBLIC/EXTRN) ---")
    c_fixed, c_skip, c_err = resolve_cross_segment(data["cross_segment"])
    print(f"  Fixed: {c_fixed}, Skipped: {c_skip}, Errors: {c_err}")
    
    print(f"\n=== TOTALS ===")
    print(f"  Labels inserted/resolved: {c_fixed + s_fixed}")
    print(f"  Already existed: {c_skip + s_skip}")
    print(f"  Errors: {c_err + s_err}")
    
    summary = {
        "cross_segment": {"fixed": c_fixed, "skipped": c_skip, "errors": c_err},
        "same_seg": {"fixed": s_fixed, "skipped": s_skip, "errors": s_err},
        "total_fixed": c_fixed + s_fixed,
        "total_skipped": c_skip + s_skip,
        "total_errors": c_err + s_err,
    }
    (STATE / "pass_c2_resolved_v2.json").write_text(json.dumps(summary, indent=2), encoding="utf-8")
    print(f"\nSummary saved: {STATE / 'pass_c2_resolved_v2.json'}")


if __name__ == "__main__":
    main()
