"""Pass 26 - module-level code coverage report.

Now that pass24 verified 100% (1201/1201) of the function-level byte-exact
disassembly, this pass aggregates that result up to the module level:

    For every original Windows 1.x binary in `original/`:
        1. Parse the NE header to find code segments.
        2. For every byte of each code segment, mark it as `covered`
           if it falls inside one of the byte-exact verified functions
           from pass25 (and pass24 confirmed the bytes match the
           original).
        3. Print:
           - module name
           - total code-segment bytes
           - covered bytes
           - coverage percentage

The output JSON is written to `state/analyze/pass26/<MODULE>.json`,
and a summary table to `state/analyze/pass26/summary.md`.
"""

import json
import struct
from pathlib import Path

REPO = Path(__file__).resolve().parents[1].parent
ORIGINAL_DIR = REPO / 'original'
PASS24_RESULTS = REPO / 'state' / 'analyze' / 'pass24' / 'results.json'
PASS25_DIR = REPO / 'state' / 'analyze' / 'pass25'
OUT_DIR = REPO / 'state' / 'analyze' / 'pass26'
OUT_DIR.mkdir(parents=True, exist_ok=True)


def parse_ne_segments(path: Path):
    """Return a list of dicts describing every segment of an NE binary:

        {
            'index':       1-based segment index
            'data_offset': absolute file offset (raw)
            'data_size':   raw bytes on disk
            'flags':       segment flags (lower nibble: 0=code, 1=data)
            'minalloc':    minimum allocation size
        }

    If the file isn't an NE executable, returns None.
    """
    data = path.read_bytes()
    if len(data) < 0x40:
        return None
    if data[0:2] != b'MZ':
        return None
    ne_off = struct.unpack_from('<I', data, 0x3C)[0]
    if ne_off == 0 or ne_off + 0x40 > len(data):
        return None
    if data[ne_off:ne_off + 2] != b'NE':
        return None
    # NE header fields we need (offsets are from `ne_off`):
    ne_segcount = struct.unpack_from('<H', data, ne_off + 0x1C)[0]
    ne_segtab   = struct.unpack_from('<H', data, ne_off + 0x22)[0]
    ne_align    = struct.unpack_from('<H', data, ne_off + 0x32)[0]
    if ne_align == 0:
        ne_align = 9          # 1 << 9 == 512, the NE default
    sector = 1 << ne_align

    segs = []
    seg_tab_off = ne_off + ne_segtab
    for i in range(ne_segcount):
        off = seg_tab_off + i * 8
        sec_off, raw_size, flags, minalloc = struct.unpack_from(
            '<HHHH', data, off)
        segs.append({
            'index':       i + 1,
            'data_offset': sec_off * sector,
            'data_size':   raw_size,
            'flags':       flags,
            'minalloc':    minalloc,
        })
    return segs


def is_code_segment(seg):
    # NE segment flag bit 0: 0=code, 1=data (rest of the bits are
    # MOVABLE / PRELOAD / etc., we don't care here).
    return (seg['flags'] & 0x0001) == 0


def main():
    # --- Load pass24 results --------------------------------------------
    pass24 = json.loads(PASS24_RESULTS.read_text())
    # Keep only the byte-exact ones (should be all of them now).
    matched = {(r['module'], r['expected_hex']): r for r in pass24
                 if r.get('match')}
    # Stats from pass24 itself:
    total_p24 = len(pass24)
    matched_p24 = sum(1 for r in pass24 if r.get('match'))

    # --- Walk every module ----------------------------------------------
    summary_rows = []
    grand_code = 0
    grand_covered = 0
    fully_covered_modules = 0

    for orig in sorted(ORIGINAL_DIR.iterdir()):
        if not orig.is_file() or orig.suffix.lower() not in (
                '.exe', '.drv'):
            continue
        module_name = orig.stem.upper()
        segs = parse_ne_segments(orig)
        if segs is None:
            continue
        data = orig.read_bytes()

        # Find pass25 candidates for this module (canonical source of
        # function locations).
        p25_path = PASS25_DIR / f'{module_name}.json'
        if not p25_path.exists():
            continue
        p25 = json.loads(p25_path.read_text())
        candidates = p25.get('candidates', [])

        # Build per-segment coverage bitmap.
        seg_coverage = {}
        seg_covered_funcs = {}
        for s in segs:
            if not is_code_segment(s):
                continue
            seg_coverage[s['index']] = bytearray(s['data_size'])
            seg_covered_funcs[s['index']] = []

        for c in candidates:
            seg_idx = c.get('segment_index')
            seg_off = c.get('segment_offset')
            true_hex = c.get('true_bytes_hex') or c.get('seg_bytes_hex')
            if seg_idx is None or seg_off is None or not true_hex:
                continue
            if seg_idx not in seg_coverage:
                # Segment is data-only or ignored.
                continue
            blen = len(true_hex) // 2
            # Was this candidate verified by pass24?
            key = (module_name, true_hex.upper())
            verified = key in matched
            if not verified:
                continue
            # Verify the actual bytes in the original file match the
            # candidate's true_bytes_hex (sanity check).
            seg_off_abs = next(s['data_offset'] for s in segs
                                  if s['index'] == seg_idx)
            on_disk = data[seg_off_abs + seg_off:
                              seg_off_abs + seg_off + blen]
            if on_disk.hex().upper() != true_hex.upper():
                # Pass25 had wrong placement metadata - skip.
                continue
            cov = seg_coverage[seg_idx]
            for i in range(blen):
                if seg_off + i < len(cov):
                    cov[seg_off + i] = 1
            seg_covered_funcs[seg_idx].append(c['name'])

        # Sum across code segments.
        total_code = 0
        total_cov  = 0
        seg_lines  = []
        for s in segs:
            if not is_code_segment(s):
                continue
            cov = seg_coverage.get(s['index'])
            if cov is None:
                continue
            covered = sum(cov)
            total_code += len(cov)
            total_cov  += covered
            seg_lines.append({
                'index':       s['index'],
                'size':        len(cov),
                'covered':     covered,
                'percent':     (covered / len(cov) * 100.0) if cov else 0.0,
                'funcs':       seg_covered_funcs[s['index']],
            })

        if total_code == 0:
            continue

        pct = total_cov / total_code * 100.0
        if total_cov == total_code:
            fully_covered_modules += 1
        grand_code += total_code
        grand_covered += total_cov

        out = {
            'module':         module_name,
            'file':           orig.name,
            'file_size':      len(data),
            'code_bytes':     total_code,
            'covered_bytes':  total_cov,
            'coverage_pct':   pct,
            'segments':       seg_lines,
        }
        (OUT_DIR / f'{module_name}.json').write_text(json.dumps(out, indent=2))

        summary_rows.append((module_name, total_code, total_cov, pct))
        print(f'  {module_name:12} {total_code:6} bytes   '
              f'{total_cov:6} covered  ({pct:5.1f}%)')

    # ---- Summary --------------------------------------------------------
    grand_pct = grand_covered / grand_code * 100.0 if grand_code else 0.0
    print()
    print('========================================================')
    print(f'  Modules processed:   {len(summary_rows)}')
    print(f'  100% covered:        {fully_covered_modules}')
    print(f'  Total code bytes:    {grand_code}')
    print(f'  Covered code bytes:  {grand_covered}')
    print(f'  Overall coverage:    {grand_pct:.2f}%')
    print(f'  pass24 funcs match:  {matched_p24}/{total_p24}')
    print('========================================================')

    md = ['# Pass 26 - module code coverage', '',
          f'Pass24 byte-exact functions: {matched_p24}/{total_p24}',
          f'Modules: {len(summary_rows)} ({fully_covered_modules} '
              f'fully covered)',
          f'Code bytes covered: {grand_covered}/{grand_code} '
              f'({grand_pct:.2f}%)',
          '',
          '| Module | Code bytes | Covered | % |',
          '|--------|-----------:|--------:|--:|']
    for name, total, cov, pct in sorted(summary_rows):
        md.append(f'| {name} | {total} | {cov} | {pct:.1f}% |')
    (OUT_DIR / 'summary.md').write_text('\n'.join(md) + '\n')

    return grand_pct


if __name__ == '__main__':
    main()
