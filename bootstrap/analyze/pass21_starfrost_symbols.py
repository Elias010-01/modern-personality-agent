"""Pass 21: integrate starfrost013's Windows 1.x symbol files.

Background
----------
@starfrost013 (Connor Hyde) shared parsed symbol dumps from the DEBUG
build of Windows 1.03 KERNEL/USER/GDI in his repo:
    https://github.com/starfrost013/modern-personality-research

Each module ships with a *syms.txt file (text dump produced by his
`symread` tool from the original Microsoft .SYM files). Format:

    SymRead (proof of concept 1.0.2)
    ...
    ** READING SEGMENT IGROUP **
    Number of symbols: 388
    ...
    IGROUP:0000     HGLOBALHEAP
    IGROUP:0002     PGLOBALHEAP
    ...
    _TEXT:0000      PAINTBITS
    ...

Important caveat
----------------
Those symbols come from the **debug** build (e.g. KERNEL.EXE = 42016 bytes)
while we work on the **retail** build (KERNEL.EXE = 34063 bytes). Offsets
are NOT directly comparable: the debug build interleaves extra debug
strings, asserts, and helpers, shifting almost every internal function.

This pass therefore does NOT try to remap retail `sub_XXXX` -> starfrost
names by offset. Instead it produces three deliverables:

    1. state/analyze/pass21/<MODULE>.json
       Structured parse of the symbol file: list of (segment, offset, name)
       triples per module, plus the binary metadata (binary_name, num_funcs,
       num_segments).

    2. docs/analysis/<MODULE>_starfrost_symbols.md
       Human-readable Markdown table of all DEBUG-build symbols for the
       module, with a banner explaining that these are reference names
       (debug offsets, not directly applicable to retail).

    3. Side-effect on the KB:
       For every starfrost name we see, we register it as a "known
       internal name". Later passes (pass3 description, pass20 C scaffold)
       can use this to detect when our discovered functions in the
       retail build *happen* to carry an exported name that matches a
       starfrost symbol -- in that case we mark them confidence=high
       and add a tag `starfrost_confirmed`.

This pass discovers symbol files in two locations (in this order):

    1. `kb/symbols/<file>.txt`           (mirrored copy, tracked)
    2. `vendor/modern-personality-research/win1.03/reversing/<dir>/<file>.txt`
                                          (clone of starfrost's repo, untracked)

If neither is present, the module is silently skipped. The K/U/G dumps are
mirrored into kb/symbols/ for offline reproducibility; the rest are read
directly from the vendor copy to avoid re-redistribution.

Covered modules (11):
    Debug build: KERNEL, USER, GDI
    Retail build: MSDOS, WRITE, COMM, SOUND, SYSTEM, EPSON, MOUSE, USA

Output:
    state/analyze/pass21/<MODULE>.json
    state/analyze/pass21/index.json
    docs/analysis/<MODULE>_starfrost_symbols.md
"""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path
from typing import Any

sys.path.insert(0, str(Path(__file__).resolve().parent))

from state import REPO, STATE_DIR, log  # noqa: E402

PASS_NAME = "pass21_starfrost_symbols"
OUT_DIR = STATE_DIR / "pass21"
SYMS_DIR = REPO / "kb" / "symbols"
VENDOR_DIR = (
    REPO / "vendor" / "modern-personality-research" / "win1.03" / "reversing"
)
DOCS_DIR = REPO / "docs" / "analysis"

# --- Per-module symbol source definitions ---
# Each entry: (txt_filename, module_name, vendor_relative_path, is_debug_build)
# - txt_filename:   leaf name; first looked up under kb/symbols/, then vendor.
# - module_name:    must match a directory under src/<MODULE>/ for export
#                   cross-confirmation against retail .DEF.
# - vendor_relative_path: path inside VENDOR_DIR.
# - is_debug_build: True for KERNEL/USER/GDI dumps (offsets do NOT match
#                   retail build), False otherwise.
SYM_SOURCES: list[tuple[str, str, str, bool]] = [
    ("kernelsyms.txt",       "KERNEL", "kerneldebug/kernelsyms.txt",        True),
    ("usersyms.txt",         "USER",   "userdebug/usersyms.txt",            True),
    ("gdisyms.txt",          "GDI",    "gdidebug/gdisyms.txt",              True),
    ("msdossyms.txt",        "MSDOS",  "msdos/msdossyms.txt",               False),
    ("writesyms.txt",        "WRITE",  "write/writesyms.txt",               False),
    ("commsyms.txt",         "COMM",   "driver/comm/commsyms.txt",          False),
    ("soundsyms.txt",        "SOUND",  "driver/sound/soundsyms.txt",        False),
    ("systemsyms.txt",       "SYSTEM", "driver/system/systemsyms.txt",      False),
    ("epsonsyms.txt",        "EPSON",  "driver/printerepsom/epsonsyms.txt", False),
    ("mousemssyms.txt",      "MOUSE",  "driver/mousems/mousemssyms.txt",    False),
    ("keyboardusasyms.txt",  "USA",    "driver/keyboard/usa/keyboardusasyms.txt", False),
]

# Backwards-compat alias: older code paths may still import this name.
SYM_FILE_TO_MODULE = {fname: mod for fname, mod, _v, _d in SYM_SOURCES}


def resolve_sym_path(txt_filename: str, vendor_rel: str) -> Path | None:
    """Return the local path to a syms.txt, preferring kb/symbols/ then vendor.

    Returns None if neither is present (the pass will skip that module).
    """
    mirrored = SYMS_DIR / txt_filename
    if mirrored.exists():
        return mirrored
    vendored = VENDOR_DIR / vendor_rel
    if vendored.exists():
        return vendored
    return None

RE_HEADER_FUNCS = re.compile(r"Number of \*functions\* \(NOT symbols\):\s*(\d+)")
RE_HEADER_CONSTS = re.compile(r"Number of constants:\s*(\d+)")
RE_HEADER_SEGS = re.compile(r"Number of segments:\s*(\d+)")
RE_HEADER_NAME = re.compile(r"Binary name:\s*(\S+)")
RE_SEG_BANNER = re.compile(r"\*\*\s*READING SEGMENT\s+(\S+)\s*\*\*")
RE_CONST_LINE = re.compile(r"START OF CODE\+\s*0x([0-9A-Fa-f]+):\s*(\S+)")
# Pattern: "IGROUP:0000\t HGLOBALHEAP" or "_TEXT:00AD       FORCEREPAINT"
RE_SYM_LINE = re.compile(r"^([A-Z_][A-Z0-9_]*):([0-9A-Fa-f]+)\s+(\S+)\s*$")


def parse_syms_file(path: Path) -> dict[str, Any]:
    """Parse one *syms.txt file produced by starfrost's symread tool.

    Returns:
        {
          "binary_name": str,
          "num_functions": int,
          "num_constants": int,
          "num_segments": int,
          "constants": [(offset_hex_int, name), ...],
          "segments": [
              {"name": "IGROUP", "symbols": [(offset_int, name), ...]}
          ]
        }
    """
    text = path.read_text(encoding="utf-8", errors="replace")

    binary_name = ""
    num_functions = 0
    num_constants = 0
    num_segments = 0

    if (m := RE_HEADER_NAME.search(text)):
        binary_name = m.group(1).strip()
    if (m := RE_HEADER_FUNCS.search(text)):
        num_functions = int(m.group(1))
    if (m := RE_HEADER_CONSTS.search(text)):
        num_constants = int(m.group(1))
    if (m := RE_HEADER_SEGS.search(text)):
        num_segments = int(m.group(1))

    # Walk line by line, tracking current section
    section = "header"   # header | constants | segment
    current_seg: dict[str, Any] | None = None

    constants: list[tuple[int, str]] = []
    segments: list[dict[str, Any]] = []

    for raw in text.splitlines():
        line = raw.rstrip()
        if not line.strip():
            continue

        if "READING CONSTANTS SEGMENT" in line:
            section = "constants"
            continue

        seg_m = RE_SEG_BANNER.search(line)
        if seg_m:
            section = "segment"
            current_seg = {"name": seg_m.group(1), "symbols": []}
            segments.append(current_seg)
            continue

        if section == "constants":
            cm = RE_CONST_LINE.search(line)
            if cm:
                offset = int(cm.group(1), 16)
                name = cm.group(2)
                constants.append((offset, name))
            continue

        if section == "segment" and current_seg is not None:
            sm = RE_SYM_LINE.match(line)
            if sm:
                seg_name_in_line = sm.group(1)
                offset = int(sm.group(2), 16)
                name = sm.group(3)
                if seg_name_in_line == current_seg["name"]:
                    current_seg["symbols"].append((offset, name))
            continue

    return {
        "binary_name": binary_name,
        "num_functions": num_functions,
        "num_constants": num_constants,
        "num_segments": num_segments,
        "constants": constants,
        "segments": segments,
    }


def collect_known_exports(module: str) -> set[str]:
    """Return the set of exported names from src/<MODULE>/<MODULE>.def.

    The retail .DEF lists the exports of our retail build. If a name is
    exported in retail AND appears in starfrost's debug syms, we can
    confidently mark it as a confirmed name.
    """
    def_path = REPO / "src" / module / f"{module}.def"
    if not def_path.exists():
        return set()
    text = def_path.read_text(encoding="utf-8", errors="replace")
    exports: set[str] = set()
    in_exports = False
    for raw in text.splitlines():
        line = raw.strip()
        up = line.upper()
        if up.startswith("EXPORTS"):
            in_exports = True
            # The "EXPORTS" keyword may be followed by entries on the
            # same line in some formats.
            after = line[len("EXPORTS"):].strip()
            if after:
                # A typical entry is "FOO @123" or "FOO=BAR @1"
                tok = after.split()[0].split("=")[0].strip()
                if tok:
                    exports.add(tok.upper())
            continue
        if not in_exports:
            continue
        if up.startswith("IMPORTS") or up.startswith("SEGMENTS") \
                or up.startswith("LIBRARY") or up.startswith("STUB"):
            in_exports = False
            continue
        # Skip comments
        if line.startswith(";") or not line:
            continue
        # Tokenize "NAME @ord" / "NAME=alias @ord" / "NAME"
        tok = line.split()[0].split("=")[0].strip()
        if tok:
            exports.add(tok.upper())
    return exports


def render_module_md(module: str, parsed: dict[str, Any], confirmed: set[str],
                    is_debug: bool = True) -> None:
    DOCS_DIR.mkdir(parents=True, exist_ok=True)
    out = DOCS_DIR / f"{module}_starfrost_symbols.md"

    build_label = "debug" if is_debug else "retail"
    lines: list[str] = []
    lines.append(
        f"# {module} - reference symbols (starfrost013, {build_label} build)"
    )
    lines.append("")
    lines.append(
        f"Source: [`starfrost013/modern-personality-research`]"
        f"(https://github.com/starfrost013/modern-personality-research) "
        f"- `*syms.txt` parsed from the original Microsoft `.SYM` files of "
        f"the **{build_label}** Windows 1.03 build."
    )
    lines.append("")
    if is_debug:
        lines.append(
            "> **Caveat (debug build)**: these offsets come from the **debug** "
            "build (extra strings, asserts, helpers). They are NOT byte-aligned "
            "with our retail build, so we do not auto-rename `sub_XXXX` "
            "by offset. Use this list as a *vocabulary* of known internal "
            "names. When a name happens to also be exported in our retail "
            "`.DEF`, we mark it as **confirmed** below."
        )
    else:
        lines.append(
            "> **Note (retail build)**: these symbols come from the **retail** "
            "`.SYM` shipped alongside the binary. Offsets are expected to "
            "match our retail extraction. When a name is also exported in "
            f"`src/{module}/{module}.def`, we mark it as **confirmed** below."
        )
    lines.append("")
    # Some retail .SYM dumps do NOT include a 'Number of *functions*'
    # header line, so parsed['num_functions'] is 0 for them. Fall back
    # to summing the per-segment symbol counts in that case.
    seg_total = sum(len(s["symbols"]) for s in parsed["segments"])
    func_count = parsed["num_functions"] or seg_total

    lines.append(f"- Binary name (per .SYM header): `{parsed['binary_name']}`")
    lines.append(
        f"- Functions in {build_label} build: **{func_count}**"
    )
    lines.append(f"- Constants: **{parsed['num_constants']}**")
    lines.append(f"- Segments: **{parsed['num_segments']}**")
    lines.append(f"- Names also in our retail `.DEF` exports: "
                 f"**{len(confirmed)}**")
    lines.append("")

    if parsed["constants"]:
        lines.append("## Constants (DGROUP globals)")
        lines.append("")
        lines.append("| Offset | Name |")
        lines.append("|--------|------|")
        for off, name in parsed["constants"]:
            lines.append(f"| `0x{off:04X}` | `{name}` |")
        lines.append("")

    for seg in parsed["segments"]:
        lines.append(f"## Segment `{seg['name']}` "
                     f"({len(seg['symbols'])} symbols)")
        lines.append("")
        lines.append(
            f"| Offset ({build_label}) | Name | Confirmed in retail .DEF |"
        )
        lines.append("|----------------|------|--------------------------|")
        for off, name in seg["symbols"]:
            mark = "[YES]" if name.upper() in confirmed else ""
            lines.append(f"| `0x{off:04X}` | `{name}` | {mark} |")
        lines.append("")

    out.write_text("\n".join(lines), encoding="utf-8")


def main() -> int:
    OUT_DIR.mkdir(parents=True, exist_ok=True)

    index = {
        "modules": [],
        "total_symbols": 0,
        "total_constants": 0,
        "total_confirmed": 0,
    }

    for fname, module, vendor_rel, is_debug in SYM_SOURCES:
        path = resolve_sym_path(fname, vendor_rel)
        if path is None:
            log(PASS_NAME,
                f"SKIP {module}: neither kb/symbols/{fname} nor "
                f"vendor/.../{vendor_rel} is present")
            continue

        rel = path.relative_to(REPO) if path.is_relative_to(REPO) else path
        log(PASS_NAME, f"Parsing {rel} -> {module}")
        parsed = parse_syms_file(path)
        retail_exports = collect_known_exports(module)
        confirmed: set[str] = {
            name.upper()
            for seg in parsed["segments"]
            for _off, name in seg["symbols"]
            if name.upper() in retail_exports
        }

        # Save structured parse (lists, not tuples, for JSON)
        out_json = {
            "module": module,
            "binary_name": parsed["binary_name"],
            "is_debug_build": is_debug,
            "source_path": str(path.relative_to(REPO))
            if path.is_relative_to(REPO) else str(path),
            "num_functions": parsed["num_functions"],
            "num_constants": parsed["num_constants"],
            "num_segments": parsed["num_segments"],
            "constants": [
                {"offset": off, "name": name}
                for off, name in parsed["constants"]
            ],
            "segments": [
                {
                    "name": s["name"],
                    "symbols": [
                        {"offset": off, "name": name}
                        for off, name in s["symbols"]
                    ],
                }
                for s in parsed["segments"]
            ],
            "retail_exports_count": len(retail_exports),
            "confirmed_count": len(confirmed),
            "confirmed_names": sorted(confirmed),
        }
        (OUT_DIR / f"{module}.json").write_text(
            json.dumps(out_json, indent=2), encoding="utf-8"
        )

        # Render Markdown
        render_module_md(module, parsed, confirmed, is_debug=is_debug)

        sym_total = sum(len(s["symbols"]) for s in parsed["segments"])
        index["modules"].append({
            "module": module,
            "is_debug_build": is_debug,
            "symbols": sym_total,
            "constants": len(parsed["constants"]),
            "confirmed": len(confirmed),
        })
        index["total_symbols"] += sym_total
        index["total_constants"] += len(parsed["constants"])
        index["total_confirmed"] += len(confirmed)

        log(PASS_NAME, f"END   {module}: {sym_total} symbols, "
                       f"{len(confirmed)} confirmed by retail .DEF")

    (OUT_DIR / "index.json").write_text(
        json.dumps(index, indent=2), encoding="utf-8"
    )
    log(PASS_NAME, f"DONE. {index}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
