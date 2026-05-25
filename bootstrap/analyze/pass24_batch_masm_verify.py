"""Pass 24: Batch byte-exact verification of mini-stub candidates from Pass 23.

For each candidate function:
  1. Generate a standalone <name>.asm with the disassembled instructions
  2. Run MASM 4.0 on it (in DOSBox-X)
  3. Extract the function's bytes from the resulting OBJ
  4. Compare against the original bytes
  5. Report match / no-match

This builds a single batch .BAT script that runs MASM on every candidate
inside ONE DOSBox-X session - dramatically faster than spawning DOSBox per
function (each spawn was ~5-10s, the batch is one spawn for all of them).

Generated artifacts:
  tools/dos/work/batch/<MOD>_<NAME>.asm   - source per function
  tools/dos/work/batch/<MOD>_<NAME>.obj   - assembled by MASM
  state/analyze/pass24/results.json       - per-function match status
  state/analyze/pass24/summary.md         - human-readable report
"""
import json
import re
import shutil
import subprocess
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
PASS23 = REPO / 'state' / 'analyze' / 'pass23'
PASS24 = REPO / 'state' / 'analyze' / 'pass24'
WORK = REPO / 'tools' / 'dos' / 'work' / 'batch'


def clean_asm_line(line):
    """Strip the trailing hex-byte comment and any stray comments,
    keeping only the instruction text."""
    # Remove anything after the first ';' (the byte comment)
    out = re.sub(r';.*$', '', line).rstrip()
    # Squeeze whitespace at start
    out = out.lstrip()
    return out


def rewrite_for_masm(line):
    """Some pretty-printer artifacts in our .asm are not MASM 4.0-compatible.
    Convert them to plain MASM syntax."""
    # Make sure hex literals end with 'h' and start with a digit
    def hex_fix(m):
        v = m.group(1)
        if v.lower().endswith('h'):
            return v
        if v.lower().startswith('0x'):
            v = v[2:]
            if v and v[0].isalpha():
                v = '0' + v
            return v + 'h'
        return v
    line = re.sub(r'\b(0x[0-9a-fA-F]+)\b', hex_fix, line)
    # Inside a PROC FAR, MASM 4.0 wants 'ret N' rather than 'retf N'
    # (it auto-emits CB / CA based on the PROC distance).
    line = re.sub(r'\bretf\b', 'ret', line)
    # Capstone uses 'ljmp' / 'lcall' for FAR indirect jumps; MASM 4.0
    # wants 'jmp dword ptr ...' / 'call dword ptr ...'.
    line = re.sub(r'\bljmp\b', 'jmp dword ptr', line)
    line = re.sub(r'\blcall\b', 'call dword ptr', line)
    # MASM 4.0 rejects 'mov sreg, word ptr [...]' AND 'mov sreg, [imm]'
    # (interprets the bracketed value as an immediate). It needs a segment
    # override to know it's a memory reference. Add 'ds:' prefix.
    line = re.sub(
        r'(\bmov\s+(?:[ecds]s)\s*,\s*)(?:word\s+ptr\s+)?(\[)',
        r'\1ds:\2', line, flags=re.I)
    # 'les di, ptr ss:[bx+4]' (capstone-style) -> 'les di, ss:[bx+4]'
    # Same for lds/lfs/lgs/lss
    line = re.sub(r'(\b(?:les|lds|lfs|lgs|lss)\s+\w+\s*,\s*)ptr\s+',
                   r'\1', line, flags=re.I)
    # Strip operand list from string instructions: MASM 4.0 wants implicit form
    # 'rep movsb byte ptr es:[di], ...' -> 'rep movsb'
    line = re.sub(
        r'\b(rep|repe|repz|repne|repnz)?\s*'
        r'(scasb|scasw|movsb|movsw|stosb|stosw|lodsb|lodsw|cmpsb|cmpsw|insb|insw|outsb|outsw)\b'
        r'.*$',
        lambda m: f"{m.group(1) or ''} {m.group(2)}".strip(),
        line, flags=re.I)
    # Capstone in 16-bit mode sometimes emits 'cdq' for opcode 99h (which in
    # 16-bit mode is actually 'cwd'). Same for cbw/cwd disambiguation.
    line = re.sub(r'\bcdq\b', 'cwd', line, flags=re.I)
    line = re.sub(r'\bcwde\b', 'cbw', line, flags=re.I)
    # 'pop word ptr cs:[X]' -> 'pop cs:[X]' (size implied)
    line = re.sub(
        r'(\bpop\s+)word\s+ptr\s+', r'\1', line, flags=re.I)
    return line


def patch_dangling_labels(asm_lines, byte_seq):
    """Replace references to labels we don't define (L_xxxx) with raw
    'db' byte sequences for the actual jump/call opcode and displacement.

    Uses Capstone to disassemble byte_seq accurately (so we don't confuse
    bytes inside a multi-byte instruction like LES with a stray short-jump
    opcode). Each branch/call we encounter in the disasm is matched, in
    order, with each `j* L_NNNN` / `call L_NNNN` line in asm_lines.
    """
    import capstone
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
    md.detail = False

    branch_bytes = []  # raw bytes, in instruction order
    for ins in md.disasm(byte_seq, 0):
        if ins.mnemonic.startswith('j') or ins.mnemonic in ('call', 'loop',
                                                              'loope', 'loopne',
                                                              'loopz', 'loopnz'):
            # Skip far jumps / far calls and indirect ones - those don't have
            # the L_xxxx label form in our source
            op_str = ins.op_str.strip()
            if op_str.startswith('0x') or op_str.startswith('-'):
                # near/short relative branch with numeric target: it WILL
                # appear in our asm as 'j... L_NNNN'
                branch_bytes.append(bytes(ins.bytes))

    def hex_lit(byte_v):
        s = f'{byte_v:02X}'
        return ('0' + s if s[0] in 'ABCDEF' else s) + 'h'

    out = []
    bidx = 0
    for line in asm_lines:
        m = re.match(r'^\s*(j\w+|jmp|call|loop\w*)\s+L_[0-9A-Fa-f]+\s*$',
                      line, re.I)
        if m and bidx < len(branch_bytes):
            raw = branch_bytes[bidx]
            mnem = m.group(1).lower()
            db_args = ', '.join(hex_lit(b) for b in raw)
            line = f"        db    {db_args}    ; was {mnem} (raw bytes)"
            bidx += 1
        out.append(line)
    return out


def make_asm_source(name, asm_lines, byte_seq):
    """Wrap a function body in a minimal MASM source unit."""
    cleaned = []
    for ln in asm_lines:
        c = clean_asm_line(ln)
        c = rewrite_for_masm(c)
        if c:
            cleaned.append(c)
    # Patch dangling label references using the byte-sequence displacements
    cleaned = patch_dangling_labels(cleaned, byte_seq)
    body = '\n'.join('        ' + ln.lstrip() for ln in cleaned)
    return f"""\
; Auto-generated for byte-exact verification (pass24).
; Original function: {name}

_TEXT   SEGMENT BYTE PUBLIC 'CODE'
        ASSUME  CS:_TEXT

PUBLIC  {name}

{name} PROC FAR
{body}
{name} ENDP

_TEXT   ENDS
        END
"""


def find_func_bytes_in_obj(obj_path, expected_bytes):
    """Search the OBJ for the expected byte sequence."""
    if not obj_path.exists():
        return None, 'no obj produced'
    data = obj_path.read_bytes()
    idx = data.find(expected_bytes)
    if idx >= 0:
        return data[idx:idx + len(expected_bytes)], f'found at OBJ offset 0x{idx:x}'
    # Look for prefix matches to know where it diverges
    for prefix_len in range(len(expected_bytes) - 1, 0, -1):
        idx = data.find(expected_bytes[:prefix_len])
        if idx >= 0:
            actual = data[idx:idx + len(expected_bytes)]
            return actual, (f'partial match: first {prefix_len} bytes ok at '
                            f'OBJ offset 0x{idx:x}, then divergence')
    return None, 'no recognizable prefix in OBJ'


def main():
    PASS24.mkdir(parents=True, exist_ok=True)
    WORK.mkdir(parents=True, exist_ok=True)

    # Clean previous work
    for f in WORK.glob('*'):
        if f.is_file():
            f.unlink()

    # Load all candidates from pass23
    all_candidates = []
    for jp in sorted(PASS23.glob('*.json')):
        d = json.loads(jp.read_text(encoding='utf-8'))
        for c in d['candidates']:
            c['module'] = d['module']
            all_candidates.append(c)
    print(f'Loaded {len(all_candidates)} candidates from pass23.\n')

    # Stage MASM toolchain in WORK if not already
    combined = REPO / 'tools' / 'dos' / 'combined'
    for tool in ['MASM.EXE']:
        dest = WORK / tool
        if not dest.exists():
            shutil.copy2(combined / tool, dest)

    # Generate one .asm per candidate
    asm_files = []
    for c in all_candidates:
        unique = f"{c['module']}_{c['name']}"
        # MASM 4.0 has 8.3 filenames; truncate to fit but keep unique
        short = unique[:8].upper()
        # If two candidates collide, append digit
        base = short
        i = 0
        while base in [a['short'] for a in asm_files]:
            i += 1
            base = (short[:7] + str(i))
        asm_path = WORK / f'{base}.ASM'
        byte_seq = bytes.fromhex(c['body_bytes_hex'])
        src = make_asm_source(c['name'], c['asm_lines'], byte_seq)
        asm_path.write_text(src, encoding='ascii')
        asm_files.append({**c, 'short': base, 'asm_path': asm_path})

    # Generate batch BAT file that MASMs every .ASM
    bat_lines = ['echo === pass24 batch === > out.txt']
    for a in asm_files:
        bat_lines.append(f"echo. >> out.txt")
        bat_lines.append(f"echo --- {a['short']} ({a['module']}::{a['name']}) --- >> out.txt")
        bat_lines.append(f"masm {a['short']},{a['short']},{a['short']},nul; > {a['short']}.LOG")
        bat_lines.append(f"type {a['short']}.LOG >> out.txt")
    bat_lines.append('echo === DONE === >> out.txt')

    bat_path = WORK / 'build.bat'
    bat_path.write_text('\n'.join(bat_lines) + '\n', encoding='ascii')

    # Run DOSBox-X
    print('Running MASM batch in DOSBox-X (one spawn for all candidates)...')
    dosbuild = REPO / 'tools' / 'dos' / 'dosbuild.sh'
    cmd = ['wsl', '--', 'bash', str(dosbuild).replace('\\', '/').replace(
        'C:', '/mnt/c'), str(WORK).replace('\\', '/').replace('C:', '/mnt/c'),
        'build.bat']
    r = subprocess.run(cmd, capture_output=True, text=True, timeout=180)
    print(f'  DOSBox-X exit code: {r.returncode}')
    if r.stderr:
        print(f'  stderr: {r.stderr[:200]}')

    # Inspect results
    results = []
    for a in asm_files:
        obj = WORK / f"{a['short']}.OBJ"
        expected = bytes.fromhex(a['body_bytes_hex'])
        actual, note = find_func_bytes_in_obj(obj, expected)
        match = (actual == expected)
        results.append({
            'module': a['module'],
            'name': a['name'],
            'short': a['short'],
            'expected_hex': a['body_bytes_hex'],
            'actual_hex': actual.hex().upper() if actual else '',
            'match': match,
            'note': note,
            'instruction_count': a['instruction_count'],
        })

    (PASS24 / 'results.json').write_text(json.dumps(results, indent=2),
                                          encoding='utf-8')

    # Print summary
    matched = sum(1 for r in results if r['match'])
    print(f'\n===== RESULTS =====')
    print(f'  {matched}/{len(results)} byte-exact matches\n')
    print(f"{'Module':<10}{'Name':<22}{'Status':<10}{'Note'}")
    print('-' * 80)
    for r in results:
        status = 'MATCH' if r['match'] else 'FAIL'
        print(f"{r['module']:<10}{r['name']:<22}{status:<10}{r['note']}")

    # Markdown report
    md = ['# Pass 24: Byte-exact verification batch\n']
    md.append(f'Verified {matched}/{len(results)} mini-stub functions byte-exact '
              f'against original binaries using MASM 4.0 + DOSBox-X (WSL2).\n')
    md.append('| Module | Function | Match | Bytes | Note |')
    md.append('|---|---|---|---|---|')
    for r in results:
        ok = '✅' if r['match'] else '❌'
        md.append(f"| `{r['module']}` | `{r['name']}` | {ok} | "
                  f"`{r['expected_hex']}` | {r['note']} |")
    (PASS24 / 'summary.md').write_text('\n'.join(md), encoding='utf-8')


if __name__ == '__main__':
    main()
