# `kb/symbols/` — Reference symbols (third-party)

The `*syms.txt` files in this directory are **NOT our work**. They are
mirrored here for the convenience of the analysis pipeline (`pass 21`).
They are reproduced **with attribution and pending explicit upstream
confirmation**.

## Origin

Mirrored locally for offline reproducibility (the 3 large debug-build
dumps that drive most of the cross-confirmation):

| File | Source | Build |
|---|---|---|
| `kernelsyms.txt` | https://github.com/starfrost013/modern-personality-research/blob/main/win1.03/reversing/kerneldebug/kernelsyms.txt | debug |
| `usersyms.txt`   | https://github.com/starfrost013/modern-personality-research/blob/main/win1.03/reversing/userdebug/usersyms.txt    | debug |
| `gdisyms.txt`    | https://github.com/starfrost013/modern-personality-research/blob/main/win1.03/reversing/gdidebug/gdisyms.txt      | debug |

Read directly from `vendor/modern-personality-research/` (NOT mirrored
into this repo to avoid re-redistribution); pass 21 falls back to the
vendor copy automatically when a file is not present here:

| File | Vendor path | Module | Build |
|---|---|---|---|
| `msdossyms.txt`       | `msdos/msdossyms.txt`                       | `MSDOS`  | retail |
| `writesyms.txt`       | `write/writesyms.txt`                       | `WRITE`  | retail |
| `commsyms.txt`        | `driver/comm/commsyms.txt`                  | `COMM`   | retail |
| `soundsyms.txt`       | `driver/sound/soundsyms.txt`                | `SOUND`  | retail |
| `systemsyms.txt`      | `driver/system/systemsyms.txt`              | `SYSTEM` | retail |
| `epsonsyms.txt`       | `driver/printerepsom/epsonsyms.txt`         | `EPSON`  | retail |
| `mousemssyms.txt`     | `driver/mousems/mousemssyms.txt`            | `MOUSE`  | retail |
| `keyboardusasyms.txt` | `driver/keyboard/usa/keyboardusasyms.txt`   | `USA`    | retail |

The upstream repository is maintained by **Connor Hyde
([@starfrost013](https://github.com/starfrost013))**.

Each file is a textual dump produced by his
[`symread`](https://github.com/starfrost013/symread) tool from
Microsoft's original `.SYM` files. The K/U/G dumps come from the
**debug** Windows 1.03 build; everything else from the **retail** build
that ships alongside our `original/` binaries.

## Why are they here?

- `bootstrap/analyze/pass21_starfrost_symbols.py` parses these files to
  emit per-module reference tables under
  `docs/analysis/<MODULE>_starfrost_symbols.md`, covering 11 modules
  total (3 debug + 8 retail).
- Mirroring the 3 large debug dumps locally avoids each clone hitting
  GitHub's raw endpoint and keeps the pipeline reproducible offline.
- The 8 retail dumps are read directly from the vendored clone of
  starfrost's repo (which a clone obtains separately and is not tracked
  here), so we never re-distribute his text dumps as part of this
  repository.

## Permission and reuse

- Connor sent us technical feedback by email on 2026-05-25 and pointed
  us to these files explicitly. He authorised use of his `symread` tool;
  redistribution of these specific text dumps **inside another repo is
  pending his explicit confirmation**. If he prefers we remove them
  and have `pass 21` fetch them on demand instead, we will do so.
- The underlying `.SYM` data itself derives from Microsoft Corporation's
  Windows 1.03 binaries. Microsoft retains all rights over those.
  Neither this directory nor the parent repository claims ownership.

If you are Connor and want these files removed, open an issue or ping
Elias and they will be deleted from the index immediately (the pipeline
already supports running without them present locally).

## How to refresh from upstream

```bash
mkdir -p kb/symbols
base="https://raw.githubusercontent.com/starfrost013/modern-personality-research/main/win1.03/reversing"
curl -fsSL "$base/kerneldebug/kernelsyms.txt" -o kb/symbols/kernelsyms.txt
curl -fsSL "$base/userdebug/usersyms.txt"     -o kb/symbols/usersyms.txt
curl -fsSL "$base/gdidebug/gdisyms.txt"       -o kb/symbols/gdisyms.txt
```
