# Mod: elias-windows

Showcase mod of the modern-personality-agent project. Personalizes Windows
1.03 with visible changes at boot.

## What it changes

- **Splash screen** (`WIN.COM`):
  - `Microsoft Windows` -> `Elias's Windows!!`
  - Copyright text replaced
- **About dialog** (`WIN100.OVL`):
  - `Microsoft Windows` -> `Elias's Windows!!` (6 occurrences)
- **Shell title bar** (`MSDOS.EXE`):
  - `MS-DOS Executive` -> `Elias's Windows!`
- **Shell menus** (`MSDOS.EXE`):
  - `File`    -> `MOD!`
  - `View`    -> `MIO!`
  - `Special` -> `ZONA!!!`

## Apply

```bash
python3 bootstrap/mod_system.py apply elias-windows
```

This will:
1. Restore `src/` to clean base.
2. Apply the patch files to `src/MSDOS/` (replaces `ne_meta.bin` resources zone).
3. Re-build `built/MSDOS.EXE` with the mod applied.
4. Copy `built/MSDOS.EXE`, modded `WIN.COM` and `WIN100.OVL` into the
   bootable disk image at `runtime/win103-built.img`.

Then boot DOSBox-X to see the result.

## Revert

```bash
python3 bootstrap/mod_system.py revert
```

## Technique

- The MSDOS strings live in the **resources zone** of the NE binary.
  The mod replaces them byte-for-byte at the same length (so the layout
  is preserved and no NE table needs to be updated).
- `WIN.COM` and `WIN100.OVL` are flat MZ binaries (not NE). Strings are
  patched in place at fixed offsets.

## Files

- `meta.toml` - mod metadata.
- `patches/MSDOS/ne_meta.bin` - patched resources zone of MSDOS.EXE.
- `img/WIN.COM`, `img/WIN100.OVL` - patched boot binaries.

> **Note**: the binary files in `patches/` and `img/` are derived from
> Microsoft binaries. They are **excluded from version control** in
> `.gitignore`. To recreate them locally, run:
>
> ```bash
> python3 bootstrap/make-mod-menubar.py
> ```
>
> This generates the patched binaries from your own copy of Windows 1.03
> in `original/`.
