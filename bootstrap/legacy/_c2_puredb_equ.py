#!/usr/bin/env python3
"""Post-process pure-db output to insert L_XXXX = $ at correct offsets.

This makes MASM 4.00 able to resolve orphan label references without
modifying the original .asm files.
"""
from __future__ import annotations

import re

_RE_DB = re.compile(r"^\s*db\s+(.+?)\s*$", re.IGNORECASE)
_RE_HEX = re.compile(r"0([0-9a-f]+)h", re.IGNORECASE)


def insert_equ_in_puredb(puredb_text: str, equ_offsets: dict[int, str]) -> str:
    """Insert L_XXXX = $ at specified offsets in pure-db MASM output.
    
    equ_offsets: dict mapping offset -> label name
    Returns modified pure-db text.
    """
    lines = puredb_text.splitlines()
    offset = 0
    out: list[str] = []
    
    for line in lines:
        stripped = line.strip()
        
        # Check if this is a db directive with bytes
        m = _RE_DB.match(stripped)
        if m:
            arg = m.group(1).strip()
            byts = [int(hm.group(1), 16) for hm in _RE_HEX.finditer(arg)]
            
            # Check if any EQU target falls within this db line
            targets_in_line = [(off, equ_offsets[off]) for off in equ_offsets 
                             if offset <= off < offset + len(byts)]
            
            if targets_in_line:
                # Sort by offset within line
                targets_in_line.sort()
                
                # Build indentation
                indent = len(line) - len(line.lstrip())
                indent_str = line[:indent]
                
                # Split the db line at each target
                pos = 0
                last_emit = 0
                for target_off, label in targets_in_line:
                    rel_pos = target_off - offset
                    
                    if rel_pos > last_emit:
                        # Emit db with bytes before target
                        before = byts[last_emit:rel_pos]
                        hexs = ", ".join(f"0{b:02x}h" for b in before)
                        out.append(f"{indent_str}db {hexs}")
                    
                    # Emit EQU
                    out.append(f"{indent_str}{label} = $")
                    last_emit = rel_pos
                
                # Emit remaining bytes after last target
                if last_emit < len(byts):
                    after = byts[last_emit:]
                    hexs = ", ".join(f"0{b:02x}h" for b in after)
                    out.append(f"{indent_str}db {hexs}")
                
                offset += len(byts)
                continue
            else:
                offset += len(byts)
        
        # Non-db line: just pass through
        out.append(line)
    
    return "\n".join(out) + ("\n" if puredb_text.endswith("\n") else "")


def test():
    text = """EGALORES_TEXT SEGMENT BYTE PUBLIC 'CODE'
    db 03ah, 03eh, 039h, 03dh
    db 00h, 0fch
    db 03bh, 03fh
EGALORES_TEXT ENDS
END"""
    
    equ = {5: "L_0198"}
    result = insert_equ_in_puredb(text, equ)
    print("Input:")
    print(text)
    print("\nOutput:")
    print(result)
    
    # Verify bytes preserved
    import sys
    sys.path.insert(0, r'C:\Users\Elias\CascadeProjects\modern-personality-agent\bootstrap')
    from puredb_convert import _emit_db_row
    
    # Count bytes in output
    out_bytes = []
    for line in result.splitlines():
        m = _RE_DB.match(line.strip())
        if m:
            for hm in _RE_HEX.finditer(m.group(1)):
                out_bytes.append(int(hm.group(1), 16))
    
    print(f"\nOutput bytes: {' '.join(f'{b:02x}' for b in out_bytes)}")
    print(f"Length: {len(out_bytes)}")


if __name__ == "__main__":
    test()
