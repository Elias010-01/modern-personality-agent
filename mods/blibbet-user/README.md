# Mod: blibbet-user — User-edited splash logo

Minimal example mod that replaces only the Blibbet logo bitmap on the
Windows 1.03 splash screen, leaving all text and menus untouched.

## Prerequisites

A user-edited BMP at:

    mod/blibbet/blibbet_logo.bmp

Create it by exporting the original logo first:

```bash
python bootstrap/blibbet_mod.py export
```

Then open `mod/blibbet/blibbet_logo.bmp` in MS Paint, edit, and save.
The file must remain **536×36 pixels, 1 bpp**.

## Apply

```bash
python bootstrap/mod_system.py apply blibbet-user
```

If you haven't created a custom BMP yet, the mod applies without
errors but keeps the original Microsoft logo (the bitmap patch is
marked `optional=true`).

## Revert

```bash
python bootstrap/mod_system.py revert
```

## Technical details

The logo lives in `WIN.COM` at offset `0x099D` (2412 bytes), in
CGA mode-6 bank-interleaved 1 bpp format.  The `mod_engine`
encodes your BMP back into this format and injects it into the
floppy image at runtime.
