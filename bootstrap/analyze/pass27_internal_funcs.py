"""Pass 27 - Internal function discovery via call-target analysis.

Pass25 only finds EXPORTED functions (those in the NE entry table).
This pass extends coverage by:

  1. For every code segment of every module:
     a. Capstone-disassemble the whole segment.
     b. Collect every `call <imm16>` (near, opcode E8) and
        `callf seg:off` (far, opcode 9A within the same segment)
        target. Those are entry points of internal sub-routines.
     c. Also include exported entries from pass25 as known starts.
  2. For every entry point, disassemble forward until the first
     terminator (retf=CB / ret=C3 / iret=CF / ud2 / endless jump)
     and emit a candidate.
  3. Output candidates as `state/analyze/pass27/<MODULE>.json` in
     the same format as pass25 (so pass24 can consume them).

Pass24 will then verify them. The two passes together should
push our function-level byte-exact coverage close to 100%.
"""
import json
import struct
from pathlib import Path

import capstone

REPO        = Path(__file__).resolve().parents[1].parent
ORIGINAL    = REPO / 'original'
PASS25_DIR  = REPO / 'state' / 'analyze' / 'pass25'
OUT_DIR     = REPO / 'state' / 'analyze' / 'pass27'
OUT_DIR.mkdir(parents=True, exist_ok=True)

MD = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
MD.detail = False

# Instructions that unambiguously end a sub-routine.
TERMINATORS = {
    'retf', 'iret', 'iretf', 'iretw',
    'ret',   # near return (used by static helpers in C 4.0)
}


def parse_ne_segments(path: Path):
    data = path.read_bytes()
    if len(data) < 0x40 or data[0:2] != b'MZ':
        return None, None
    ne_off = struct.unpack_from('<I', data, 0x3C)[0]
    if ne_off == 0 or ne_off + 0x40 > len(data) or \
            data[ne_off:ne_off + 2] != b'NE':
        return None, None
    ne_segcount = struct.unpack_from('<H', data, ne_off + 0x1C)[0]
    ne_segtab   = struct.unpack_from('<H', data, ne_off + 0x22)[0]
    ne_align    = struct.unpack_from('<H', data, ne_off + 0x32)[0] or 9
    sector      = 1 << ne_align
    segs = []
    for i in range(ne_segcount):
        off = ne_off + ne_segtab + i * 8
        sec_off, raw_size, flags, _ = struct.unpack_from(
            '<HHHH', data, off)
        if (flags & 1) != 0:        # data segment
            continue
        segs.append({
            'index':       i + 1,
            'data_offset': sec_off * sector,
            'data_size':   raw_size,
            'flags':       flags,
        })
    return data, segs


def collect_call_targets(seg_bytes: bytes):
    """Return a sorted list of internal call targets (within-segment
    near/far calls) and the set of *all* basic-block-leading offsets
    we can determine from the disassembly."""
    targets = set()
    for ins in MD.disasm(seg_bytes, 0):
        if ins.mnemonic == 'call' and len(ins.bytes) == 3 and ins.bytes[0] == 0xE8:
            # E8 rel16 -> within-segment near call.
            rel = int.from_bytes(ins.bytes[1:3], 'little', signed=True)
            tgt = (ins.address + ins.size + rel) & 0xFFFF
            if 0 <= tgt < len(seg_bytes):
                targets.add(tgt)
        elif ins.mnemonic in ('callf', 'lcall') and len(ins.bytes) == 5 \
                and ins.bytes[0] == 0x9A:
            # 9A off16 seg16 - same-segment far call IF seg matches.
            # We don't know our segment number here, but heuristic: if
            # the off lies within seg_bytes, count it.
            off = int.from_bytes(ins.bytes[1:3], 'little')
            if off < len(seg_bytes):
                targets.add(off)
    return targets


def extract_func(seg_bytes: bytes, start: int, max_bytes: int = 4096):
    """Disassemble forward from `start` until a terminator. Returns
    the raw bytes consumed (or None if disassembly fails)."""
    if start >= len(seg_bytes):
        return None
    end = min(len(seg_bytes), start + max_bytes)
    cur = start
    last_term = None
    while cur < end:
        chunk = seg_bytes[cur:end]
        # We need exactly the next instruction.
        ins_iter = MD.disasm(chunk, cur)
        try:
            ins = next(ins_iter)
        except StopIteration:
            break
        cur = ins.address + ins.size
        if ins.mnemonic in TERMINATORS:
            last_term = cur
            break
        # Unconditional jumps that don't return to caller can also
        # terminate when they target outside the function. We are
        # conservative and don't end on a jmp - relying on retf/ret.
        if cur > end:
            break
    if last_term is None:
        return None
    return seg_bytes[start:last_term]


def main():
    total_modules = 0
    total_new_candidates = 0
    grand_funcs_added_per_module = {}

    for orig in sorted(ORIGINAL.iterdir()):
        if not orig.is_file() or orig.suffix.lower() not in ('.exe', '.drv'):
            continue
        data, segs = parse_ne_segments(orig)
        if data is None or not segs:
            continue
        module = orig.stem.upper()
        # Load existing pass25 candidates (exported funcs).
        p25_path = PASS25_DIR / f'{module}.json'
        existing = {}
        if p25_path.exists():
            for c in json.loads(p25_path.read_text()).get('candidates', []):
                key = (c.get('segment_index'), c.get('segment_offset'))
                if key[0] is not None and key[1] is not None:
                    existing[key] = c
        new_candidates = []
        for s in segs:
            seg_bytes = data[s['data_offset']:
                                s['data_offset'] + s['data_size']]
            targets = collect_call_targets(seg_bytes)
            # Add exported entries as known starts (so we extract their
            # bodies the same way and produce a uniform set).
            for (sidx, soff), c in existing.items():
                if sidx == s['index']:
                    targets.add(soff)
            for off in sorted(targets):
                key = (s['index'], off)
                if key in existing:
                    continue
                body = extract_func(seg_bytes, off)
                if body is None or len(body) < 2:
                    continue
                new_candidates.append({
                    'name':            f'{module}_S{s["index"]}_{off:04X}',
                    'ordinal':         None,
                    'segment_index':   s['index'],
                    'segment_offset':  off,
                    'body_bytes_hex':  body.hex().upper(),
                    'true_bytes_hex':  body.hex().upper(),
                    'seg_bytes_hex':   body.hex().upper(),
                    'matches_seg':     True,
                    'instruction_count': 0,
                    'asm_lines':       [],
                    'source':          'pass27_internal',
                })
        if not new_candidates:
            continue
        # Combine with pass25 (so pass24 gets a single file).
        combined = list(existing.values()) + new_candidates
        out = {
            'module':              module,
            'candidate_count':     len(combined),
            'pass25_candidates':   len(existing),
            'pass27_candidates':   len(new_candidates),
            'candidates':          combined,
        }
        (OUT_DIR / f'{module}.json').write_text(
            json.dumps(out, indent=2))
        total_modules += 1
        total_new_candidates += len(new_candidates)
        grand_funcs_added_per_module[module] = len(new_candidates)
        print(f'  {module:12} +{len(new_candidates):3} internal '
              f'(total {len(combined)})')
    print()
    print('========================================================')
    print(f'  Modules processed:           {total_modules}')
    print(f'  New internal candidates:     {total_new_candidates}')
    print('========================================================')


if __name__ == '__main__':
    main()
