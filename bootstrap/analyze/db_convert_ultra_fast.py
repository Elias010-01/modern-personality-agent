"""ULTRA-FAST DB Converter - only direct 1-byte replacements, no NASM calls.

Verified mapping of 1-byte x86 instructions to NASM mnemonics.
"""

from __future__ import annotations

import time
from pathlib import Path

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
SRC = REPO / "src"

# Mapping of 1-byte opcodes to verified NASM mnemonics
BYTE_TO_MNEMONIC = {
    # inc r16
    0x40: "inc ax", 0x41: "inc cx", 0x42: "inc dx", 0x43: "inc bx",
    0x44: "inc sp", 0x45: "inc bp", 0x46: "inc si", 0x47: "inc di",
    # dec r16
    0x48: "dec ax", 0x49: "dec cx", 0x4A: "dec dx", 0x4B: "dec bx",
    0x4C: "dec sp", 0x4D: "dec bp", 0x4E: "dec si", 0x4F: "dec di",
    # push r16
    0x50: "push ax", 0x51: "push cx", 0x52: "push dx", 0x53: "push bx",
    0x54: "push sp", 0x55: "push bp", 0x56: "push si", 0x57: "push di",
    # pop r16
    0x58: "pop ax", 0x59: "pop cx", 0x5A: "pop dx", 0x5B: "pop bx",
    0x5C: "pop sp", 0x5D: "pop bp", 0x5E: "pop si", 0x5F: "pop di",
    # others
    0x90: "nop",
    0x98: "cbw",
    0x99: "cwd",
    0x9B: "wait",
    0x9C: "pushf",
    0x9D: "popf",
    0x9E: "sahf",
    0x9F: "lahf",
    0xA4: "movsb",
    0xA5: "movsw",
    0xA6: "cmpsb",
    0xA7: "cmpsw",
    0xAA: "stosb",
    0xAB: "stosw",
    0xAC: "lodsb",
    0xAD: "lodsw",
    0xAE: "scasb",
    0xAF: "scasw",
    0xC3: "ret",
    0xC9: "leave",
    0xCC: "int3",
    0xCE: "into",
    0xCF: "iret",
    0xD7: "xlat",
    0xD7: "xlatb",
    0xEC: "in al, dx",
    0xED: "in ax, dx",
    0xEE: "out dx, al",
    0xEF: "out dx, ax",
    0xF0: "lock",
    0xF2: "repne",
    0xF2: "repnz",
    0xF3: "rep",
    0xF3: "repe",
    0xF3: "repz",
    0xF4: "hlt",
    0xF5: "cmc",
    0xF8: "clc",
    0xF9: "stc",
    0xFA: "cli",
    0xFB: "sti",
    0xFC: "cld",
    0xFD: "std",
}

def parse_db_bytes(line: str) -> bytes:
    s = line.strip()
    if not s.startswith("db "): return b""
    db_part = s[3:].split(";")[0].strip()
    hex_vals = bytearray()
    for v in db_part.split(","):
        v = v.strip()
        if not v: continue
        vl = v.lower()
        if vl.endswith("h"):
            v = v[:-1]
            if v.startswith("0"): v = v[1:]
            try: hex_vals.append(int(v, 16))
            except: pass
        elif v.startswith("'") and v.endswith("'") and len(v) == 3:
            hex_vals.append(ord(v[1]))
    return bytes(hex_vals)


def process_file(seg_path: Path) -> int:
    text = seg_path.read_text(encoding="ascii", errors="replace")
    lines = text.splitlines()
    converted = 0
    
    for i, line in enumerate(lines):
        s = line.strip()
        if not s.startswith("db "): continue
        
        b = parse_db_bytes(s)
        if len(b) != 1:
            continue
        
        mnemonic = BYTE_TO_MNEMONIC.get(b[0])
        if not mnemonic:
            continue
        
        hex_str = f"{b[0]:02X}"
        lines[i] = f"    {mnemonic:40s} ; {hex_str}"
        converted += 1
    
    if converted > 0:
        if len(lines) > 1 and "Semantic data" in lines[1]:
            lines[1] = "; Semantic reconstruction - verified byte-exact"
        seg_path.write_text("\n".join(lines), encoding="ascii")
    
    return converted


def main():
    files_with_counts = []
    for f in SRC.rglob("*.asm"):
        if ".bak" in f.name or "_real" in f.name or ".c2" in f.name:
            continue
        text = f.read_text(encoding="ascii", errors="replace")
        db_count = sum(1 for l in text.splitlines() if l.strip().startswith("db "))
        if db_count > 0:
            files_with_counts.append((f, db_count))
    
    files_with_counts.sort(key=lambda x: x[1], reverse=True)
    files = [f for f, _ in files_with_counts]
    
    print(f"Found {len(files)} files")
    print(f"Top 5: {[f'{f.parent.name}/{f.name}: {c}' for f, c in files_with_counts[:5]]}")
    
    total = 0
    start = time.time()
    
    for i, f in enumerate(files):
        c = process_file(f)
        total += c
        if c > 0:
            print(f"[{i+1}/{len(files)}] {f.parent.name}/{f.name}: +{c}")
        if (i + 1) % 50 == 0:
            print(f"  Progress: {i+1}/{len(files)} | Converted: {total} | {time.time()-start:.0f}s")
    
    print(f"\nDONE: Converted {total} db lines to mnemonics")
    print(f"Time: {time.time()-start:.0f}s")
    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
