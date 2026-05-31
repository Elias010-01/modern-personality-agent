#!/usr/bin/env python3
"""Find the exact line causing the byte difference."""
import sys
sys.path.insert(0, r'C:\Users\Elias\CascadeProjects\modern-personality-agent\bootstrap')
from build_from_source import parse_db_bytes
import re

_RE_HEX = re.compile(r"0([0-9a-f]+)h", re.IGNORECASE)
_RE_COMMENT_HEX = re.compile(r"^\s*((?:[0-9A-Fa-f]{2}\s+)*[0-9A-Fa-f]{2})\s*(?:\[FIXUP\]\s*)?$")

def parse_line_bytes(line):
    """Return bytes extracted from a single line, same logic as parse_db_bytes."""
    out = bytearray()
    if ";" in line:
        code_part, comment_part = line.split(";", 1)
    else:
        code_part, comment_part = line, ""
    
    m = re.match(r'^\s*db\s+(.+?)\s*$', code_part, re.I)
    if m:
        arg = m.group(1).strip()
        md = re.match(r'^\s*(\d+)\s+dup\s*\(\s*(?:0|00h)\s*\)\s*$', arg, re.I)
        if md:
            out.extend(b"\x00" * int(md.group(1)))
            return bytes(out)
        ms = re.match(r'^\s*\'([^\']*)\'\s*$', arg)
        if ms:
            out.extend(ms.group(1).encode("ascii", errors="replace"))
            return bytes(out)
        for hexm in _RE_HEX.finditer(arg):
            out.append(int(hexm.group(1), 16))
        return bytes(out)
    
    if code_part.strip() and comment_part.strip():
        cm = _RE_COMMENT_HEX.match(comment_part.strip())
        if cm:
            for hex2 in cm.group(1).split():
                out.append(int(hex2, 16))
    return bytes(out)

bak_path = r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src\EGALORES\seg1.asm.c2split.bak'
mod_path = r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src\EGALORES\seg1.asm'

bak_lines = open(bak_path).read().splitlines()
mod_lines = open(mod_path).read().splitlines()

print(f"Backup lines: {len(bak_lines)}, Modified lines: {len(mod_lines)}")

# Compare line by line
max_lines = max(len(bak_lines), len(mod_lines))
cum_bak = 0
cum_mod = 0
for i in range(max_lines):
    b_line = bak_lines[i] if i < len(bak_lines) else ""
    m_line = mod_lines[i] if i < len(mod_lines) else ""
    
    b_bytes = parse_line_bytes(b_line)
    m_bytes = parse_line_bytes(m_line)
    
    if b_line != m_line or b_bytes != m_bytes:
        print(f"\nLine {i+1}:")
        print(f"  BAK ({len(b_bytes)}b): {b_line[:120]}")
        print(f"  MOD ({len(m_bytes)}b): {m_line[:120]}")
        cum_bak += len(b_bytes)
        cum_mod += len(m_bytes)
        print(f"  Cum BAK: {cum_bak}, Cum MOD: {cum_mod}, diff so far: {cum_mod - cum_bak}")
    else:
        cum_bak += len(b_bytes)
        cum_mod += len(m_bytes)

print(f"\nTotal BAK: {cum_bak}, Total MOD: {cum_mod}, diff: {cum_mod - cum_bak}")
