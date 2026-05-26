# The Blibbet Logo: Reverse-Engineering the Windows 1.03 splash bitmap

> **TL;DR** — The big "MICROSOFT" logo with the banded "O" (the iconic
> 1982-1987 *Blibbet*) that appears on the Windows 1.03 splash screen
> lives at offset **`0x099D` to `0x1308`** of `WIN.COM` (the **last
> 2412 bytes** of the file). Format: **CGA mode 6, 1bpp, 536×36 px,
> stride 67 B/row, CGA-bank-interleaved** (18 even rows then 18 odd
> rows, matching the `B800:0000` / `B800:2000` VRAM banks).

This document captures the discovery, the format, and the round-trip
toolchain that lets you edit the logo in MS Paint and have it appear at
boot of Windows 1.03 in DOSBox-X — all byte-exact, no toolchain breakage.

---

## 1. The puzzle

By v13.0 of this project we had **every executable byte** of Windows 1.03
verified byte-identical to the original 1985 Microsoft MASM 4.00 output:
all 8 555 functions across 92 binaries (986 658 B). The disassembly of
`WIN.COM` was 89 % real mnemonics with 11 semantic labels.

But two questions remained for end-user "modding":

1. **Where is the bitmap of the big "MICROSOFT" logo?** Earlier mods
   patched ASCII strings (`"Microsoft Windows"` → `"Elias's Windows!!"`)
   successfully. The big logo above them stayed unchanged — so it
   wasn't text, it was a real bitmap.
2. **What format is it stored in?** Windows 1.03 splash uses CGA mode 6
   (640×200, 2 colors), but a candidate region in `WIN.COM` could be
   row-major, byte-shifted, packed differently, RLE-compressed, in a
   custom font format, or just embedded as resource somewhere inside
   `WIN100.BIN` or `WIN100.OVL`.

## 2. The disassembly anchors

`src/WIN/seg1_real.asm` (produced by
`bootstrap/disasm_to_masm.py` from the Capstone disassembly of
`WIN.COM`) gave us four key anchors:

| File offset | Bytes              | Meaning                                  |
|-------------|--------------------|------------------------------------------|
| `0x0790`    | `4C 4F 47 4F`      | `db 'LOGO'` — splash routine tag         |
| `0x0989`    | `B8 06 00 CD 10`   | `mov ax, 6 ; int 10h` — set CGA mode 6   |
| `0x099A`    | `CD 10`            | last `int 10h` of the mode-init block    |
| `0x099C`    | `C3`               | `ret` ending the mode-init block         |
| `0x099D…end`| `00 00 … 3F FF C0 …` | bitmap data (2412 bytes to EOF)        |

So **after the splash routine sets up CGA mode 6 and returns, the rest
of the file is bitmap data**. That's a strong signal but it doesn't
tell us the format.

## 3. The discovery (5 phases, all in `bootstrap/`)

### Phase 1 — extract the logo from a real screenshot

`bootstrap/research/blibbet/analyze_splash_screenshot.py` reads `screenshots/01-elias-windows-splash.png`
(a 640×480 capture from a previous mod run), thresholds it to 1bpp, finds
the bounding box of the topmost cluster of white pixels, and maps that
back to native CGA mode 6 coordinates (640×200).

Result: logo bbox = `x ∈ [54..587]`, `y ∈ [36..70]` → **534×35 px**.

### Phase 2 — search every binary for the bitmap bytes

`bootstrap/research/blibbet/find_logo_in_files.py` and `bootstrap/research/blibbet/find_logo_v2.py` build
the most distinctive row of the logo as packed 1bpp bytes and search for
that row in every candidate binary (`WIN.COM`, `WIN100.BIN`,
`WIN100.OVL`, `KERNEL.EXE`, `USER.EXE`, `GDI.EXE`, `CGA.DRV`,
`EGAHIRES.DRV`, `EGALORES.DRV`, `MSDOS.EXE`, `WINOLDAP.MOD`,
`MSDOSD.EXE`) trying **all 8 horizontal bit-shifts** plus an inverted
variant.

Result: a single hit, `WIN.COM @ 0x11FE`, row 29 with shift=6. So the
logo is in `WIN.COM` somewhere — but the exact start, width, and layout
were still unknown.

### Phase 3 — auto-detect the row stride

`bootstrap/research/blibbet/render_win_tail.py` brute-forces every plausible width
(8 ≤ bpr ≤ 89) at multiple start offsets and scores each by **vertical
similarity** between adjacent rows: a real bitmap of letters has tall
vertical strokes, so adjacent rows should be very similar; random data
should not.

Result: clear winner at **bpr = 67 (= 536 px wide)** with score ~0.83
— the top of the curve, well above the next-best 33 (264 px) at 0.62.

### Phase 4 — discover the bank-interleaved layout

`bootstrap/research/blibbet/decode_logo_interleaved.py` tested two layout hypotheses:

- **Linear**: row 0, row 1, row 2, …, row 35
- **De-interleaved**: even rows (0,2,…,34) first, then odd rows (1,3,…,35)

For each hypothesis, every start offset in the tail of `WIN.COM` was
scored. The **de-interleaved layout won decisively**:

| Layout         | Best score | At offset    | Rows |
|----------------|------------|--------------|------|
| Linear         | 0.819      | 0x0AD4       | 30   |
| De-interleaved | **0.869**  | **0x099B**   | **36** |

The de-interleaved layout matches **exactly** how CGA mode 6 video
memory is organized: bank 0 (`B800:0000`–`B800:1FFF`) holds even
scanlines, bank 1 (`B800:2000`–`B800:3FFF`) holds odd scanlines. The
splash routine just `rep movsw`s the bitmap verbatim into VRAM in two
copies — no transformation needed.

### Phase 5 — pin down the exact start

The score peak was at `0x099B`, but the disassembly tells us the bitmap
should start at **`0x099D`** (right after the `C3` `ret` of the mode-init
block). The 2-byte difference is the score function being slightly
imprecise — the actual start `0x099D` is confirmed by:

- It immediately follows the splash routine's `int 10h ; ret`.
- `0x099D + 2412 = 0x1309` = exact end of `WIN.COM` (4873 B).
- Render at `0x099D` deinterleaved produces the **exact** "MICROSOFT"
  logo with the banded "O" and trailing "®" trademark, pixel-for-pixel
  matching the screenshot.

`bootstrap/extract_blibbet_logo.py` does the canonical extraction +
PNG render at `0x099D`.

## 4. The format, formally

```
File:       original/WIN.COM
Offset:     0x099D
Length:     2412 B (= 0x96C)
End:        0x1308 (= EOF; WIN.COM is 4873 B = 0x1309)

Display:    CGA mode 6 (BIOS INT 10h, AX=0006h)
            640×200 px, 2-color (black background, white pixels)
            Logo position on screen: x=54, y=36..71

Bitmap:     1bpp packed, MSB = leftmost pixel
            536 px wide × 36 rows
            Stride: 67 B/row (= ceil(536/8))

Storage:    BANK-INTERLEAVED (matches CGA VRAM layout):
            +------------- 0x099D ----------+
            |  even bank (1206 B)           |  rows 0, 2, 4, …, 34
            |    18 rows × 67 B/row         |
            +------------- 0x0E5B ----------+
            |  odd bank (1206 B)            |  rows 1, 3, 5, …, 35
            |    18 rows × 67 B/row         |
            +------------- 0x1308 ----------+

To draw: dest = B800:0000.  rep movsw cx=603 (= 1206/2 words)
         then dest = B800:2000.  rep movsw cx=603.
```

## 5. The mod SDK

Three Python modules cooperate to give you a clean round-trip:

| Module                          | Role                                              |
|---------------------------------|---------------------------------------------------|
| `bootstrap/blibbet_mod.py`      | export/import/roundtrip BMP <-> CGA-interleaved   |
| `bootstrap/fat12_replace.py`    | in-place file replacement in FAT12 floppy images (no `mtools` needed) |
| `bootstrap/launch_elias_win103.py` | end-to-end: rebuild MSDOS.EXE + patch WIN.COM/WIN100.OVL + inject + launch DOSBox-X |

### Quick workflow

```powershell
# 1. Export a 1bpp BMP from your legal WIN.COM
python bootstrap/blibbet_mod.py export
# -> mod/blibbet/blibbet_logo.bmp           (536x36 1bpp BMP, editable in Paint)
# -> mod/blibbet/blibbet_logo_4x_preview.png (CGA-blue-background reference)

# 2. Edit the BMP in MS Paint (Zoom 800%, only black & white pixels)
# (the 1bpp BMP palette will display as pure black/white in modern Paint;
#  the black pixels will render as CGA blue at boot)

# 3. Verify byte-exactness of the round-trip
python bootstrap/blibbet_mod.py roundtrip
# Confirms unchanged BMP -> import produces a WIN.COM byte-identical
# to the original.

# 4. Build everything and launch Windows 1.03 with your logo
python bootstrap/launch_elias_win103.py
# - Rebuilds MSDOS.EXE via smart_build with patched ne_meta.bin strings
# - Reads your edited BMP, repacks to interleaved CGA, patches WIN.COM
# - Patches "Microsoft Windows" -> "Elias's Windows!!" in WIN.COM/WIN100.OVL
# - Restores runtime/win103-built.img from .bak
# - Injects MSDOS.EXE + WIN.COM + WIN100.OVL via fat12_replace.py
# - Verifies round-trip byte-exact for all 3 files
# - Launches dosbox-x.exe with runtime/dosbox-win103.conf
```

### Reverting

```powershell
# Re-export the canonical Microsoft logo into the BMP
python bootstrap/blibbet_mod.py export

# OR restore the original IMG
copy runtime\win103-built.img.bak runtime\win103-built.img
```

## 6. Why this matters

By v13.0 the project had every **executable code byte** of Windows 1.03
verified byte-identical to the original. By v13.1 every **graphical
asset** in the boot path is also fully reverse-engineered, documented,
and editable through a public, byte-exact pipeline.

This means anyone who owns a legal copy of Windows 1.03 can:

- Edit the splash screen logo in any image editor.
- Edit any string in any module without breaking byte-exactness.
- Rebuild `MSDOS.EXE` (and any other module) from human-readable `.asm`
  source via `smart_build.py`, using either Keystone (modern) or the
  authentic 1985 Microsoft MASM 4.00 + LINK 3.51 toolchain inside
  DOSBox-X.
- Inject the modified binaries into a bootable FAT12 floppy image with
  pure Python (no `mtools` dependency).
- Boot the result in DOSBox-X with one command.

Practically a small **SDK for editing Windows 1.03**.

## 7. Reproducing the discovery from scratch

If you want to walk the discovery yourself (maybe to apply it to other
splash bitmaps in other early Windows / DOS programs):

```bash
# 1. Take a screenshot of the running splash (or use the one shipped)
#    in screenshots/01-elias-windows-splash.png

# 2. Extract the 1bpp logo from the screenshot
python bootstrap/research/blibbet/analyze_splash_screenshot.py
# -> bbox + 1bpp packed pattern

# 3. Search every binary for that pattern with all bit-shifts
python bootstrap/research/blibbet/find_logo_in_files.py        # weak hits
python bootstrap/research/blibbet/find_logo_v2.py              # stronger: WIN.COM @0x11FE row 29

# 4. Auto-detect row stride
python bootstrap/research/blibbet/render_win_tail.py
# Pick the highest score = 0.83 at bpr=67

# 5. Test linear vs deinterleaved layout
python bootstrap/research/blibbet/decode_logo_interleaved.py
# Deinterleaved wins: 0.869 vs 0.819

# 6. Confirm the exact start offset and render
python bootstrap/research/blibbet/decode_logo_final.py         # tries 0x0980..0x09C8
python bootstrap/extract_blibbet_logo.py      # canonical 0x099D
```

The PNGs land in `screenshots/blibbet_hunt/` (gitignored, per repo policy
on derived works of Microsoft assets).

## 8. Legal note

The discovery process and the SDK code in this repo are original. The
**bitmap data itself** (the Microsoft "Blibbet" logo) is © Microsoft
Corporation 1982-1987 and is **not** committed to this repo — every
user regenerates it from their own legal copy of `WIN.COM`. Same
principle as `original/`, `built/`, and `runtime/win103-built.img` (all
gitignored). See [LEGAL.md](../LEGAL.md).
