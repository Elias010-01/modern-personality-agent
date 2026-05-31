"""BATCH ATTEMPT - Try to convert entire files by assembling all db mnemonics at once.

For each file, extract all db comments as mnemonics, assemble with NASM.
If the assembled bytes match the original extracted bytes exactly -> full conversion.
If not -> keep original (no partial conversion in this pass).

This is very fast: one NASM call per file.
"""

from __future__ import annotations

import subprocess
import time
from pathlib import Path
import capstone

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
SRC = REPO / "src"
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(r'C:\Users\Elias\temp_db_batch')


def parse_db_bytes(text: str) -> bytes:
    out = bytearray()
    for line in text.splitlines():
        s = line.strip()
        if not s.startswith("db "):
            continue
        db_part = s[3:].split(";")[0].strip()
        for v in db_part.split(","):
            v = v.strip()
            if not v:
                continue
            vl = v.lower()
            if vl.endswith("h"):
                v = v[:-1]
                if v.startswith("0"):
                    v = v[1:]
                try:
                    out.append(int(v, 16))
                except:
                    pass
            elif v.startswith("'") and v.endswith("'") and len(v) == 3:
                out.append(ord(v[1]))
    return bytes(out)


def clean_mnemonic(mnemonic: str, ops: str) -> str:
    import re
    line = f"{mnemonic} {ops}".strip()
    line = re.sub(r"\bptr\b", "", line, flags=re.I)
    line = re.sub(r"\b(near|short)\s+", "", line, flags=re.I)
    line = re.sub(r"\s+", " ", line).strip()
    return line


def disasm_all(data: bytes) -> list:
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
    md.detail = True
    results = []
    off = 0
    while off < len(data):
        chunk = data[off : off + 15]
        insns = list(md.disasm(chunk, off))
        if not insns:
            results.append((off, 1, "db", f"0{data[off]:02X}h", bytes([data[off]])))
            off += 1
        else:
            insn = insns[0]
            results.append((off, len(insn.bytes), insn.mnemonic, insn.op_str, bytes(insn.bytes)))
            off += len(insn.bytes)
    return results


def build_nasm_source(insns: list, header_lines: list) -> str:
    lines = header_lines.copy()
    for off, size, mnem, ops, raw in insns:
        hex_c = " ".join(f"{b:02X}" for b in raw)
        if mnem == "db":
            hex_v = ", ".join(f"0{b:02X}h" for b in raw)
            lines.append(f"    db {hex_v:30s} ; {hex_c}")
        else:
            fixed = clean_mnemonic(mnem, ops)
            lines.append(f"    {fixed:40s} ; {hex_c}")
    return "\n".join(lines)


def nasm_assemble(asm_text: str) -> tuple[bool, bytes]:
    import os
    import shutil
    work = TEMP / f"n_{os.getpid()}_{time.time_ns()}"
    work.mkdir(parents=True, exist_ok=True)
    asm_f = work / "test.asm"
    bin_f = work / "test.bin"
    asm_f.write_text(asm_text, encoding="ascii")
    try:
        r = subprocess.run(
            [str(NASM), "-f", "bin", str(asm_f), "-o", str(bin_f)],
            capture_output=True, text=True, timeout=30,
        )
        if r.returncode != 0 or not bin_f.exists():
            return False, b""
        return True, bin_f.read_bytes()
    except:
        return False, b""
    finally:
        try:
            shutil.rmtree(work)
        except:
            pass


def process_file(seg_path: Path) -> bool:
    text = seg_path.read_text(encoding="ascii", errors="replace")
    if "Semantic" not in text:
        return False

    lines = text.splitlines()
    header_end = 0
    for i, line in enumerate(lines):
        if i < 3:
            header_end = i + 1
            continue
        if line.strip().startswith("db "):
            header_end = i
            break

    header_lines = lines[:header_end]

    expected = parse_db_bytes(text)
    if not expected:
        return False

    insns = disasm_all(expected)
    nasm_text = build_nasm_source(insns, header_lines)

    ok, built = nasm_assemble(nasm_text)
    if ok and built == expected:
        seg_path.write_text(nasm_text, encoding="ascii")
        return True
    return False


def main():
    import shutil

    if not NASM.exists():
        print("ERROR: NASM not found")
        return 1

    if TEMP.exists():
        try:
            shutil.rmtree(TEMP)
        except:
            pass
    TEMP.mkdir(parents=True, exist_ok=True)

    # Get files sorted by db count, skip the largest (WIN100_OVL is too big for this approach)
    files_with_counts = []
    for f in SRC.rglob("*.asm"):
        if ".bak" in f.name or "_real" in f.name or ".c2" in f.name:
            continue
        text = f.read_text(encoding="ascii", errors="replace")
        db_count = sum(1 for l in text.splitlines() if l.strip().startswith("db "))
        if db_count > 0 and "Semantic data" in text:
            files_with_counts.append((f, db_count))

    files_with_counts.sort(key=lambda x: x[1])
    # Skip files with > 5000 db lines (too risky for full-file batch)
    files = [f for f, c in files_with_counts if c <= 5000]

    print(f"Found {len(files)} files with <= 5000 db lines to batch-test")

    converted = 0
    start = time.time()

    for i, f in enumerate(files):
        ok = process_file(f)
        if ok:
            converted += 1
            print(f"[{i+1}/{len(files)}] {f.parent.name}/{f.name}: FULL CONVERSION")

        if (i + 1) % 20 == 0:
            print(f"  Progress: {i+1}/{len(files)} | Converted: {converted} | {time.time()-start:.0f}s")

    print(f"\nDONE: {converted}/{len(files)} files fully converted")
    print(f"Time: {time.time()-start:.0f}s")
    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
