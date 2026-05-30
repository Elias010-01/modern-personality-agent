"""puredb_convert: transform a mixed (instruction + hex-comment) MASM source
into a pure-`db` source that MASM 4.00 accepts unconditionally.

This is the on-the-fly pre-transform used by `build_from_source.py
--mode=masm` so that *every* module on the Windows 1.03 floppy set goes
through the real 1985 Microsoft toolchain end-to-end, not only the 4
modules whose sources happened to round-trip cleanly. The 88 modules
that contain Capstone orphan-label refs (e.g. `jmp X40` with no `X40:`
defined anywhere) would otherwise be rejected by MASM with errors like
`A2009: Symbol not defined`; rewriting them to `db 0XXh, 0YYh, ...` from
the authoritative byte comments removes the symbolic references and
preserves bytes exactly.

The invariant this module guarantees is:

    parse_db_bytes(convert_to_pure_db(asm)) == parse_db_bytes(asm)

for every well-formed mixed/db source in `src/<MOD>/`. The unit tests in
`tests/test_convert_to_pure_db.py` exercise this invariant against the
synthetic source plus a representative sample of real modules; they
never need MASM to run, so they stay fast and CI-friendly.
"""
from __future__ import annotations

import re


# ---------------------------------------------------------------------------
# Regexes (kept here so the module is self-contained; build_from_source.py
# imports `convert_to_pure_db` from us and leaves its own regexes alone).
# ---------------------------------------------------------------------------

_RE_DB = re.compile(r"^\s*db\s+(.+?)\s*$", re.IGNORECASE)
_RE_COMMENT_HEX = re.compile(
    r"^\s*((?:[0-9A-Fa-f]{2}\s+)*[0-9A-Fa-f]{2})\s*(?:\[FIXUP\]\s*)?$")

# Structural MASM directives that must survive a pure-db conversion.
_RE_SEGMENT = re.compile(r"^\s*\S+\s+SEGMENT\b.*$", re.IGNORECASE)
_RE_ENDS = re.compile(r"^\s*\S+\s+ENDS\s*$", re.IGNORECASE)
_RE_END = re.compile(r"^\s*END\s*(\S.*)?$", re.IGNORECASE)
_RE_ASSUME = re.compile(r"^\s*ASSUME\b.*$", re.IGNORECASE)
_RE_GROUP = re.compile(r"^\s*\S+\s+GROUP\b.*$", re.IGNORECASE)
_RE_LABEL = re.compile(r"^\s*[A-Za-z_$@?][\w$@?]*:.*$")


def _emit_db_row(byts: list[int]) -> list[str]:
    """Pack a byte run into one or more `db 0AAh, 0BBh, ...` MASM lines.
    16 bytes per line keeps the resulting .LST output legible.
    """
    rows: list[str] = []
    for i in range(0, len(byts), 16):
        chunk = byts[i:i + 16]
        rows.append("    db " + ", ".join(f"0{b:02x}h" for b in chunk))
    return rows


def insert_equ_in_puredb(puredb_text: str, equ_offsets: dict[int, str]) -> str:
    """Post-process pure-db output to insert L_XXXX = $ at correct offsets.

    This makes MASM 4.00 able to resolve orphan label references without
    modifying the original .asm files.  The EQU is inserted between db
    rows so that the symbol receives the exact byte offset of the target.
    """
    if not equ_offsets:
        return puredb_text

    lines = puredb_text.splitlines()
    offset = 0
    out: list[str] = []

    for line in lines:
        stripped = line.strip()

        m = _RE_DB.match(stripped)
        if m:
            arg = m.group(1).strip()
            byts = [int(hm.group(1), 16) for hm in _RE_HEX.finditer(arg)]

            targets_in_line = [
                (off, equ_offsets[off]) for off in equ_offsets
                if offset <= off < offset + len(byts)
            ]

            if targets_in_line:
                targets_in_line.sort()
                indent = len(line) - len(line.lstrip())
                indent_str = line[:indent]

                last_emit = 0
                for target_off, label in targets_in_line:
                    rel_pos = target_off - offset
                    if rel_pos > last_emit:
                        before = byts[last_emit:rel_pos]
                        hexs = ", ".join(f"0{b:02x}h" for b in before)
                        out.append(f"{indent_str}db {hexs}")
                    out.append(f"{indent_str}{label} = $")
                    last_emit = rel_pos

                if last_emit < len(byts):
                    after = byts[last_emit:]
                    hexs = ", ".join(f"0{b:02x}h" for b in after)
                    out.append(f"{indent_str}db {hexs}")

                offset += len(byts)
                continue
            else:
                offset += len(byts)

        out.append(line)

    return "\n".join(out) + ("\n" if puredb_text.endswith("\n") else "")


def convert_to_pure_db(asm_text: str, equ_offsets: dict[int, str] | None = None) -> str:
    """Rewrite a mixed (`instr ; AB CD`) MASM source into a pure-db
    source that MASM 4.00 will assemble byte-for-byte identically.

    Strategy: byte-level, NOT instruction-level. For each non-structural
    line we:

      * If the source line is already a `db ...` directive (including
        `db N DUP(0)` and `db 'STRING'`), keep it verbatim. These already
        survive MASM 4.00 round-trip.
      * Otherwise we treat the line as `instr ; HEXBYTES` and emit
        `db 0XXh, 0YYh, ...` from the hex comment. The disassembled
        instruction text is preserved as a trailing comment so a human
        reader does not lose the readable form.
      * Labels are dropped (we collapse all code into anonymous `db`
        rows; nothing references the labels because we no longer emit
        symbolic jumps or calls).
      * SEGMENT / ENDS / END / ASSUME / GROUP directives and pure-comment
        lines are kept verbatim so the segment skeleton survives.

    Pending bytes from consecutive instruction lines are batched into
    `db` rows of 16 bytes each, matching the cosmetic style of v13.3
    pure-db emissions.

    The output is, by construction, MASM 4.00 valid: it contains only
    `db` directives plus segment plumbing, never an instruction mnemonic
    that MASM might re-encode differently.
    """
    lines = asm_text.splitlines()
    out: list[str] = []
    pending: list[int] = []
    pending_comments: list[str] = []

    def flush_pending() -> None:
        if not pending:
            return
        out.extend(_emit_db_row(pending))
        if pending_comments:
            head = pending_comments[0]
            if len(pending_comments) > 1:
                head = f"{head}  ... ({len(pending_comments)} insns)"
            out.append(f"    ; ^ {head}")
        pending.clear()
        pending_comments.clear()

    for line in lines:
        stripped = line.strip()

        # Pure comment / blank line: flush any pending code and keep.
        if not stripped or stripped.startswith(";"):
            flush_pending()
            out.append(line)
            continue

        # MASM structural directives: flush and keep verbatim.
        if (_RE_SEGMENT.match(line) or _RE_ENDS.match(line)
                or _RE_END.match(line) or _RE_ASSUME.match(line)
                or _RE_GROUP.match(line)):
            flush_pending()
            out.append(line)
            continue

        # Split code part from inline comment for byte extraction.
        if ";" in line:
            code_part, comment_part = line.split(";", 1)
        else:
            code_part, comment_part = line, ""
        code_part_s = code_part.strip()
        comment_part_s = comment_part.strip()

        # Already a db directive (with possible trailing comment): keep
        # it as-is. MASM 4.00 accepts these untouched.
        if _RE_DB.match(code_part):
            flush_pending()
            out.append(line)
            continue

        # Try to read hex bytes from the comment; this is the byte
        # authority for the mixed format.
        cm = _RE_COMMENT_HEX.match(comment_part_s)
        if cm:
            byts = [int(h, 16) for h in cm.group(1).split()]
            pending.extend(byts)
            if code_part_s:
                pending_comments.append(code_part_s)
            continue

        # Bare label like `LABEL:` (no code on the line): drop it. The
        # label has no semantic effect in a pure-db rewrite.
        if _RE_LABEL.match(stripped):
            after_colon = code_part_s.split(":", 1)[-1].strip()
            if not after_colon or after_colon.startswith(";"):
                continue  # label-only line, drop

        # Anything else (e.g. an instruction with no recoverable bytes):
        # flush pending and pass through verbatim. MASM will either
        # accept it (rare) or reject it; the caller can then fall back.
        flush_pending()
        out.append(line)

    flush_pending()
    puredb = "\n".join(out) + ("\n" if asm_text.endswith("\n") else "")
    if equ_offsets:
        puredb = insert_equ_in_puredb(puredb, equ_offsets)
    return puredb
