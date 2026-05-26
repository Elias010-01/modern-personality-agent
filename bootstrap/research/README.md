# `bootstrap/research/` — Exploratory scripts

This directory holds **one-time exploration / research scripts** used
during the reverse-engineering of Windows 1.03 internals. They are kept
as a permanent record of how each discovery was made.

These scripts are **not** part of the production SDK — the corresponding
production tools live directly in `bootstrap/`.

## `blibbet/` — The "MICROSOFT" splash logo discovery (v13.1)

Scripts that walked the 5-phase discovery of the Blibbet logo in
`WIN.COM` (see [`docs/BLIBBET_LOGO.md`](../../docs/BLIBBET_LOGO.md)
for the full writeup):

| Script                          | Phase | What it discovered                                       |
|---------------------------------|-------|----------------------------------------------------------|
| `analyze_splash_screenshot.py`  | 1     | Extracts 1bpp pattern from a real splash PNG capture     |
| `find_logo_in_files.py`         | 2     | Brute-force search w/ all bit-shifts across 12 binaries  |
| `find_logo_v2.py`               | 2     | Stronger variant; hit @ `WIN.COM:0x11FE`                 |
| `find_blibbet_logo.py`          | 2     | Earlier search using a different pattern hypothesis      |
| `hunt_blibbet_in_bin.py`        | 2     | Scan focused on flat-format binaries                     |
| `hunt_blibbet_ega.py`           | 2     | Tested an EGA-encoded hypothesis (later disproved)       |
| `render_win_tail.py`            | 3     | Auto-detect row stride via vertical autocorrelation      |
| `decode_logo_interleaved.py`    | 4     | Tested deinterleaved vs linear layout (deinterleaved won)|
| `decode_logo_final.py`          | 5     | Pinpoint the exact start offset                          |
| `render_blibbet_font.py`        | aux   | Aux: rendered candidate bytes as a font glyph grid       |
| `check_bmp_header.py`           | aux   | Aux: tiny BMP header sanity check                        |

Production equivalent (built on top of the discovery):
- `bootstrap/blibbet_mod.py` — export/import/roundtrip BMP ↔ CGA
- `bootstrap/extract_blibbet_logo.py` — canonical extraction
- `bootstrap/launch_elias_win103.py` — end-to-end orchestrator
