# `mod/blibbet/` — Workspace for the splash logo SDK

This directory is the working area for editing the **big "MICROSOFT"
splash logo** of Windows 1.03 (the iconic 1982-1987 *Blibbet* logo with
the banded "O").

The actual files in this dir are **gitignored** — they're derived from
your legal copy of `WIN.COM` and from your own edits, and each user
regenerates them locally.

See [`docs/BLIBBET_LOGO.md`](../../docs/BLIBBET_LOGO.md) for the full
technical writeup of the discovery and the format.

## Files (regenerable)

| File                              | Created by                     | Purpose                                 |
|-----------------------------------|--------------------------------|-----------------------------------------|
| `blibbet_logo.bmp`                | `blibbet_mod.py export`        | The editable canvas (536×36 1bpp BMP)   |
| `blibbet_logo_4x_preview.png`     | `blibbet_mod.py export`        | 4× preview with CGA blue background     |
| `WIN.COM`                         | `blibbet_mod.py import` (or `launch_elias_win103.py`) | `WIN.COM` patched with your logo |
| `WIN.verify.png`                  | `blibbet_mod.py import`        | 4× preview of the patched logo (sanity check) |

## Workflow

### 1. Export the editable BMP

```powershell
python bootstrap/blibbet_mod.py export
```

This reads `original/WIN.COM`, decodes the 2412 bytes at offset `0x099D`
as a CGA-mode-6 deinterleaved bitmap, and writes a clean 1bpp BMP that
MS Paint can open natively.

### 2. Edit in MS Paint

- Right-click `blibbet_logo.bmp` → **Open with → Paint**
- **View → Zoom → 800 %** (or `Ctrl + scroll wheel`)
- Paint shows the 1bpp BMP as **pure black + white** — that's normal.
  Modern Paint normalizes the palette regardless of what's stored.
- **Edit only with black or white** (Paint won't let you use anything
  else on a 1bpp image, even if you try).
- **Do NOT resize** the canvas. Keep it exactly 536×36 px.
- **Ctrl+S** to save (do not "Save As" — that may drop the 1bpp format).

What you'll see at boot: every **black** pixel becomes the **CGA blue
background** of the splash, every **white** pixel stays white.

### 3. Verify the round-trip

```powershell
python bootstrap/blibbet_mod.py roundtrip
```

This exports the BMP, reimports it without modification, and confirms
the resulting `WIN.COM` is byte-identical to the original. If this
passes, the pipeline is healthy and your edits will translate cleanly.

### 4. Apply your edited logo

Two options:

**A — just patch `WIN.COM` and inspect the result:**

```powershell
python bootstrap/blibbet_mod.py import mod/blibbet/blibbet_logo.bmp
# -> mod/blibbet/WIN.COM            (patched)
# -> mod/blibbet/WIN.verify.png     (preview)
```

**B — full end-to-end: rebuild MSDOS.EXE, patch everything, inject into
the floppy IMG, launch DOSBox-X:**

```powershell
python bootstrap/launch_elias_win103.py
```

This is the recommended option. It will:

1. Kill any running DOSBox-X (releases the IMG file lock).
2. Sync your edited BMP from `~/Desktop/blibbet-logo-editor/` if it
   exists (lets you keep the editable BMP on your Desktop while the
   project keeps its own copy in sync).
3. Rebuild `built/MSDOS.EXE` from `src/` via `smart_build.py` after
   patching `ne_meta.bin` with the menu/title text replacements.
4. Generate a new `WIN.COM` = `original/WIN.COM` + your logo + string
   replacements (`"Microsoft Windows"` → `"Elias's Windows!!"`, etc).
5. Generate a new `WIN100.OVL` = `original/WIN100.OVL` + the same
   string replacements (`"Microsoft Windows"` × 5).
6. Restore `runtime/win103-built.img` from `.bak` (clean state).
7. Inject the 3 patched binaries into the FAT12 image via
   `bootstrap/fat12_replace.py` (pure Python, no `mtools` dependency).
8. Verify each injected file is byte-identical when re-extracted.
9. Launch DOSBox-X with `runtime/dosbox-win103.conf`.

## Recovery

If your edits go sideways:

```powershell
# Restore the canonical Microsoft logo into the BMP
python bootstrap/blibbet_mod.py export

# OR restore the original IMG
copy runtime\win103-built.img.bak runtime\win103-built.img
```

## Diagnosis

If something looks off (logo doesn't show up, wrong logo, etc):

```powershell
python bootstrap/diagnose_img_logo.py
```

This extracts the `WIN.COM` currently inside `runtime/win103-built.img`,
compares it to:

- the original `WIN.COM`,
- your edited BMP,
- the BMP at `~/Desktop/blibbet-logo-editor/`,

and renders each as a PNG so you can visually confirm what's actually
in the image vs. what you intended.

## Don't commit derived bitmaps

Per the project's `LEGAL.md` policy, derived works of Microsoft's
copyrighted bitmap data are not committed to git. Everything in this
directory **except** this `README.md` is gitignored.
