"""Pass 23: Find candidate mini-stub functions for byte-exact verification.

A 'mini-stub' is a function that:
- Has a real exported name (from PROC FAR ... ENDP block in seg*.asm)
- Has <= MAX_INSTRUCTIONS instructions in its body
- Does NOT use a stack frame (no `push bp` / `mov bp,sp`)
- Ends with `retf` (FAR return)

These are the easiest functions to byte-exact verify because they were almost
certainly hand-written in MASM (no C compiler artifacts) and have minimal
addressing mode complexity.

Output: state/analyze/pass23/<MODULE>.json with list of candidates,
each containing:
    - name (e.g. GETVERSION)
    - segment_file (e.g. seg1.asm)
    - start_offset (file offset within segment)
    - body_bytes (hex string of the original bytes)
    - asm_lines (the disassembled instructions, ready for MASM)
"""
import json
import re
import struct
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
SRC = REPO / 'src'
ORIG = REPO / 'original'
OUT = REPO / 'state' / 'analyze' / 'pass23'

MAX_INSTRUCTIONS = 20


def parse_def_exports(def_path):
    """Return ord -> name from a .DEF EXPORTS section."""
    if not def_path.exists():
        return {}
    out = {}
    in_exports = False
    for line in def_path.read_text(encoding='utf-8', errors='ignore').splitlines():
        s = line.strip()
        if not s or s.startswith(';'):
            continue
        if s.upper().startswith('EXPORTS'):
            in_exports = True
            continue
        if not in_exports:
            continue
        m = re.match(r'^\s*(\S+)\s+@(\d+)', s)
        if m:
            out[int(m.group(2))] = m.group(1).upper()
    return out


def parse_ne_entry_table(exe_path):
    """Return ord -> (segment, offset) from the NE entry table."""
    if not exe_path.exists():
        return {}
    b = exe_path.read_bytes()
    if b[:2] != b'MZ':
        return {}
    ne = struct.unpack_from('<H', b, 0x3c)[0]
    if b[ne:ne + 2] != b'NE':
        return {}
    et_off = ne + struct.unpack_from('<H', b, ne + 0x04)[0]
    et_len = struct.unpack_from('<H', b, ne + 0x06)[0]
    out = {}
    p = et_off
    end = et_off + et_len
    ord_idx = 1
    while p < end:
        bcount = b[p]
        if bcount == 0:
            break
        seg_indicator = b[p + 1]
        p += 2
        if seg_indicator == 0:
            ord_idx += bcount
            continue
        for _ in range(bcount):
            if seg_indicator == 0xff:
                # MOVABLE entry: flags, INT 0x3F, segno, offset
                flag = b[p]
                seg = b[p + 3]
                off = struct.unpack_from('<H', b, p + 4)[0]
                p += 6
            else:
                flag = b[p]
                off = struct.unpack_from('<H', b, p + 1)[0]
                seg = seg_indicator
                p += 3
            out[ord_idx] = (seg, off)
            ord_idx += 1
    return out


def get_segment_bytes(exe_path, seg_idx):
    """Extract raw bytes of a given NE segment (1-indexed)."""
    b = exe_path.read_bytes()
    ne = struct.unpack_from('<H', b, 0x3c)[0]
    seg_table_off = ne + struct.unpack_from('<H', b, ne + 0x22)[0]
    shift = struct.unpack_from('<H', b, ne + 0x32)[0]
    entry_off = seg_table_off + (seg_idx - 1) * 8
    sector = struct.unpack_from('<H', b, entry_off + 0)[0]
    size = struct.unpack_from('<H', b, entry_off + 2)[0]
    file_off = sector << shift
    return b[file_off:file_off + size]


# Disassembly produced by our pipeline appears in seg*.asm as:
#   <NAME> PROC FAR
#   ; ...
#   L_xxxx:
#           push    bp                              ; 55
#           mov     bp, sp                          ; 8B EC
#           ...
#           retf                                    ; CB
#   <NAME> ENDP
#
# We want to find PROC FAR blocks that contain NO 'push bp', and have at most
# MAX_INSTRUCTIONS instruction lines.

PROC_RE = re.compile(r'^([A-Z_][A-Z0-9_]*)\s+PROC\s+FAR\s*$', re.IGNORECASE)
ENDP_RE = re.compile(r'^([A-Z_][A-Z0-9_]*)\s+ENDP\s*$', re.IGNORECASE)
LABEL_RE = re.compile(r'^L_[0-9A-Fa-f]+:\s*$')
INSTR_RE = re.compile(r'^\s+([a-z][a-z0-9]*)\s')


def parse_proc_blocks(asm_path):
    """Yield (name, body_lines) for each PROC FAR ... ENDP block."""
    text = asm_path.read_text(encoding='utf-8', errors='ignore')
    lines = text.splitlines()
    i = 0
    while i < len(lines):
        m = PROC_RE.match(lines[i])
        if not m:
            i += 1
            continue
        name = m.group(1).upper()
        body = []
        j = i + 1
        while j < len(lines):
            em = ENDP_RE.match(lines[j])
            if em and em.group(1).upper() == name:
                break
            body.append(lines[j])
            j += 1
        yield name, body
        i = j + 1


def classify_block(body_lines):
    """Return dict with body analysis."""
    instructions = []
    has_frame = False
    has_retf = False
    label_offsets = []
    for ln in body_lines:
        if LABEL_RE.match(ln):
            m = re.match(r'^L_([0-9A-Fa-f]+):', ln)
            if m:
                label_offsets.append(int(m.group(1), 16))
            continue
        m = INSTR_RE.match(ln)
        if m:
            mnem = m.group(1).lower()
            instructions.append((mnem, ln.rstrip()))
            if mnem == 'push' and 'bp' in ln:
                has_frame = True
            if mnem == 'retf':
                has_retf = True
    return {
        'instructions': instructions,
        'instruction_count': len(instructions),
        'has_frame': has_frame,
        'has_retf': has_retf,
        'label_offsets': label_offsets,
    }


def extract_body_bytes(asm_lines):
    """Extract the hex bytes from the trailing comments of each instruction."""
    out = []
    for ln in asm_lines:
        # Format: "        push    bp                              ; 55"
        m = re.search(r';\s*([0-9A-Fa-f]{2}(?:\s+[0-9A-Fa-f]{2})*)\s*$', ln)
        if m:
            for tok in m.group(1).split():
                out.append(int(tok, 16))
    return bytes(out)


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    summary = []

    for mod_dir in sorted(SRC.iterdir()):
        if not mod_dir.is_dir():
            continue
        mod = mod_dir.name
        exe = ORIG / f'{mod}.EXE'
        if not exe.exists():
            exe = ORIG / f'{mod}.DRV'
        if not exe.exists():
            continue
        def_p = mod_dir / f'{mod}.def'
        ord_to_name = parse_def_exports(def_p)
        ord_to_loc = parse_ne_entry_table(exe)
        # Build name -> (seg, off)
        name_to_loc = {ord_to_name[o]: ord_to_loc[o]
                       for o in ord_to_name if o in ord_to_loc}

        candidates = []
        for asm_p in sorted(mod_dir.glob('seg*.asm')):
            seg_num = int(re.match(r'seg(\d+)', asm_p.stem).group(1))
            seg_bytes = get_segment_bytes(exe, seg_num)
            for name, body in parse_proc_blocks(asm_p):
                info = classify_block(body)
                if info['has_frame']:
                    continue
                if not info['has_retf']:
                    continue
                if info['instruction_count'] == 0:
                    continue
                if info['instruction_count'] > MAX_INSTRUCTIONS:
                    continue
                # Need a label offset to know where the function starts
                if not info['label_offsets']:
                    continue
                start_off = info['label_offsets'][0]
                # Try to extract bytes from the .asm comments first
                body_bytes = extract_body_bytes(
                    [ln for _, ln in info['instructions']])
                # Cross-check against the segment bytes if name known
                seg_func_bytes = b''
                if name in name_to_loc:
                    s, o = name_to_loc[name]
                    if s == seg_num and o + len(body_bytes) <= len(seg_bytes):
                        seg_func_bytes = seg_bytes[o:o + len(body_bytes)]
                candidates.append({
                    'name': name,
                    'segment_file': asm_p.name,
                    'start_offset': start_off,
                    'instruction_count': info['instruction_count'],
                    'body_bytes_hex': body_bytes.hex().upper(),
                    'seg_bytes_hex': seg_func_bytes.hex().upper(),
                    'matches_seg': body_bytes == seg_func_bytes
                                    and len(seg_func_bytes) > 0,
                    'asm_lines': [ln for _, ln in info['instructions']],
                })

        out_path = OUT / f'{mod}.json'
        out_path.write_text(json.dumps({
            'module': mod,
            'candidate_count': len(candidates),
            'candidates': candidates,
        }, indent=2), encoding='utf-8')
        summary.append((mod, len(candidates),
                        sum(1 for c in candidates if c['matches_seg'])))

    print(f"{'Module':<14}{'Candidates':>12}{'Bytes match seg':>18}")
    print('-' * 44)
    total_c, total_m = 0, 0
    for mod, c, m in summary:
        if c > 0:
            print(f'{mod:<14}{c:>12}{m:>18}')
            total_c += c
            total_m += m
    print('-' * 44)
    print(f"{'TOTAL':<14}{total_c:>12}{total_m:>18}")


if __name__ == '__main__':
    main()
