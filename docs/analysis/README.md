# `docs/analysis/` — generated module documentation

This directory is **fully regenerable** from the analysis pipeline
(`bootstrap/analyze/pass*.py`). Do not hand-edit these files; run the
pipeline instead.

## Files

| File | Generator | Content |
|---|---|---|
| `<MODULE>.md`                       | `pass3_describe.py` | Per-function description, kind (NEAR/FAR), instruction count, semantic confidence (high/medium/low/unknown). One row per discovered function in the **retail** build. |
| `<MODULE>_starfrost_symbols.md`     | `pass21_starfrost_symbols.py` | Reference list of internal function names from starfrost013's symread dumps (debug build for KERNEL/USER/GDI; retail for the rest). |
| `INDEX.md`, `by-module.md`, `by-classification.md`, `top-apis.md`, `api-by-name.md` | `pass5_index.py` | Cross-cuts and stats. |
| `callgraph.md`, `callgraph.html`    | `pass2_callgraph.py`, `pass6_visualize.py`, `pass7_enrich_deps.py` | Inter-module call graph. |

## Coverage notes

### `KERNEL.md` ends near offset `0x797F` — this is **not** a truncation bug

`original/KERNEL.EXE` (retail build) is **34063 bytes** total. The NE
header occupies bytes 0..2959, leaving the single CODE segment with
**31103 bytes (= 0x797F)**. The last function we discover is
`sub_7643` (~404 instructions), which fills the segment up to its
natural end.

A common confusion (raised by @starfrost013 over email, 2026-05-25):
*"the docs cut off after 0x7FFF for kernel"*. They do not — the segment
itself ends slightly **before** 0x7FFF. The debug build of `KERNEL.EXE`
is larger (~42016 bytes) and has functions past `0x7FFF`, but that is
not the binary we work on here. See `KERNEL_starfrost_symbols.md` for
the debug-build symbol vocabulary (offsets are NOT directly
comparable).

### Debug vs retail in `*_starfrost_symbols.md`

The starfrost reference dumps come from two different builds:

- **Debug build (KERNEL, USER, GDI)**: extra strings, asserts and
  helpers shift almost every internal function. Offsets are NOT
  byte-aligned with our retail extraction. We use these as a
  **vocabulary** of known names; cross-confirmation against the retail
  `.DEF` exports is shown in the *Confirmed* column.
- **Retail build (MSDOS, WRITE, COMM, SOUND, SYSTEM, EPSON, MOUSE,
  USA)**: same binary as ours, so offsets are expected to match.
