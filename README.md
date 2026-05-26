# win103-byteexact

> **Windows 1.03 reverse-engineered into editable, recompilable source code — in one night, by me at 16, with AI assistance.**
>
> **Windows 1.03 ingeniería inversa hasta código fuente editable y recompilable — en una sola noche, por mí con 16 años y la ayuda de una IA.**

![Elias's Windows splash booting in DOSBox-X](screenshots/01-elias-windows-splash.png)

*The `elias-windows` mod booting in DOSBox-X. Modded splash screen, original Microsoft logo preserved, honest disclaimer line at the bottom. This is what the mod system produces from the rebuilt binaries. (See [`screenshots/`](screenshots/) for details.)*

🇬🇧 [English](#english) · 🇪🇸 [Español](#español) · ⚖️ [Legal](LEGAL.md) · 📜 [History](STORY.md) · 🙏 [Credits](CREDITS.md)

---

## Verified achievement

> **First public byte-exact reconstruction of Microsoft Windows 1.03 verified through the original 1985 Microsoft MASM 4.00 toolchain.**

| Metric | Result |
|---|---|
| **Total binaries on the floppy set rebuilt byte-identical from source** | **92 / 92** |
| ↳ NE `.EXE` / `.DRV` modules (KERNEL, GDI, USER, drivers, apps, …) | 69 |
| ↳ `.FON` bitmap font modules (HELVA…D, COURA…D, TMSRA…D, etc.) | 18 |
| ↳ Loader + DOS-compat (`WIN.COM`, `WIN100.BIN`, `WIN100.OVL`, `WINOLDAP.MOD`, `WINOLDAP.GRB`) | 5 |
| Functions verified byte-identical via MASM 4.00 reassembly | **8,555 / 8,555** |
| Executable code bytes verified | **986,658 / 986,658 (100%)** |
| Code-bearing NE modules at 100% function-level coverage | **68 / 68** |
| Toolchain | Original Microsoft **MASM 4.00** under DOSBox-X |

Every executable code byte that shipped on the original Windows 1.03 floppy disks has been verified byte-identical to the output of the genuine 1985 Microsoft MASM 4.00 assembler. The verifier (`bootstrap/analyze/pass24_batch_masm_verify.py`) runs the original toolchain under DOSBox-X and compares assembled output to the shipping binaries via authoritative `.LST` byte streams — no instruction is "trusted", every byte is checked.

In addition, **every other binary on the floppy set** — boot loader, font resource files, DOS-app compatibility module, graphics resources — is brought into the same source pipeline (`src/<MODULE>/`) and `bootstrap/build_from_source.py` rebuilds all 92 of them byte-identical to their originals.

> **Primera reconstrucción pública byte-exacta de Microsoft Windows 1.03 verificada con el toolchain original Microsoft MASM 4.00 de 1985.** Cada uno de los 986,658 bytes de código ejecutable que viajó en los disquetes originales ha sido verificado byte-idéntico al output del ensamblador genuino. Y los 92 ficheros completos del juego de disquetes (módulos NE, fuentes `.FON`, loader `WIN.COM`, overlays y compatibilidad DOS) se reconstruyen byte-exactos desde `src/`.

---

## Quick Start

> This repository **does not include** the Microsoft Windows 1.03 binaries.
> You need a legal copy of Windows 1.03 to use this pipeline.
> See [LEGAL.md](LEGAL.md) for details.

### Requirements

- **OS**: Windows 10/11 with [WSL2](https://learn.microsoft.com/en-us/windows/wsl/install) (Ubuntu recommended), or any Linux distro, or macOS
- **Python**: 3.10 or newer
- **Tools**: `mtools` (read/write floppy images), `git`
- **For testing the result**: [DOSBox-X](https://dosbox-x.com/)

### 1. Clone the repo

```bash
git clone https://github.com/Elias010-01/win103-byteexact.git
cd win103-byteexact
```

### 2. Install Python dependencies

```bash
pip install -r requirements.txt
```

This installs `capstone` (disassembler) and `keystone-engine` (assembler, only
needed if you edit instructions).

### 3. Bring your own Windows 1.03 binaries

Windows 1.03 ships on **multiple 5.25" floppy disks** (typically 4 disks: SETUP,
BUILD, UTILITY and FONT). Copy **every binary** from all of them into `original/`:

```
original/
├── KERNEL.EXE        # 69 NE modules: kernel, GDI, USER, drivers, apps
├── GDI.EXE
├── USER.EXE
├── WIN.COM           # boot loader (flat .COM)
├── WIN100.BIN        # second-stage loader (NE)
├── WIN100.OVL        # real-mode loader/overlay (extracted by SETUP)
├── HELVA.FON         # 18 .FON bitmap font modules
├── TMSRA.FON
├── ...
├── WINOLDAP.MOD      # DOS-app compatibility module (NE)
├── WINOLDAP.GRB      # DOS-app graphics resource (flat blob)
└── ...               # 92 files total across the disk set
```

`bootstrap/survey_pipeline_gap.py` audits the contents of `original/` and
reports which files (if any) are not yet integrated in `src/`. After a
fresh extraction the expected output is **92 IN PIPELINE / 0 PARTIAL /
0 OUT OF PIPELINE**.

If you have the original disks as `.IMG` / `.IMA` images, extract with `mtools`:

```bash
for img in disk1.img disk2.img disk3.img disk4.img; do
    for ext in EXE DRV COM FON BIN OVL MOD GRB; do
        mcopy -i "$img" "::*.${ext}" original/ 2>/dev/null || true
    done
done
```

### 4. Regenerate human-readable assembly source

```bash
python bootstrap/extract_segments.py     # split NE binaries into segments
python bootstrap/decompile_segment.py    # disassemble to human-readable .asm
```

You now have `src/<MODULE>/seg*.asm` — editable assembly with the original
bytes preserved as comments.

### 5. Rebuild byte-exact binaries

```bash
python bootstrap/build_from_source.py
```

This regenerates **all 92** binaries identical byte-for-byte to the originals
(69 NE `.EXE`/`.DRV`, 18 `.FON` fonts, `WIN.COM`, `WIN100.BIN`, `WIN100.OVL`,
`WINOLDAP.MOD`, `WINOLDAP.GRB`). Output goes to `built/`. The script reports
an SHA-256 match for each module and ends with `=== 92/92 modulos byte-exact
desde fuente ===`.

### 6. (Optional) Generate semantic documentation

```bash
python bootstrap/analyze/pass1_patterns.py
python bootstrap/analyze/pass1b_discover.py
python bootstrap/analyze/pass2_callgraph.py
python bootstrap/analyze/pass3_describe.py
python bootstrap/analyze/pass4_annotate.py
python bootstrap/analyze/pass5_index.py
python bootstrap/analyze/pass6_visualize.py
python bootstrap/analyze/pass7_enrich_deps.py
```

This produces `docs/analysis/` with 75+ Markdown documents (one per module
plus indexes) and an interactive HTML call graph at
`docs/analysis/callgraph.html`.

### 7. (Optional) Run the byte-exact verification pipeline

This is what produces the **8,555 / 8,555 byte-identical match**. It requires
DOSBox-X plus the original Microsoft MASM 4.00 installed under
`vendor/masm400/`. The verifier reassembles every discovered function with
the original 1985 toolchain and compares against the shipping bytes.

```bash
# Discovery passes: build the candidate function set
python bootstrap/analyze/pass23_find_ministubs.py
python bootstrap/analyze/pass25_universal_extract.py     # NE exports
python bootstrap/analyze/pass27_internal_funcs.py        # internal call targets
python bootstrap/analyze/pass30_full_segment.py          # full-segment candidates

# The verifier itself (parallel + cached, takes hours on first run)
python bootstrap/analyze/pass24_batch_masm_verify.py

# Coverage and final reports
python bootstrap/analyze/pass26_module_coverage.py
python bootstrap/analyze/pass28_final_report.py
```

When this completes, `state/analyze/pass28/REPORT.md` shows per-module and
overall byte coverage — expected to read **100 % across all 68 code-bearing
modules**, with all 986,658 code bytes verified.

### 8. (Optional) Apply a mod

```bash
python bootstrap/mod_system.py list                  # list available mods
python bootstrap/mod_system.py apply elias-windows   # apply a mod
python bootstrap/mod_system.py revert                # undo
```

The example `elias-windows` mod (see screenshot above) replaces the splash
text, version label and copyright. Modded binaries land in
`mods/<modname>/built/`.

### 9. (Optional) Boot it in DOSBox-X

Copy the resulting binaries into a Windows 1.03 floppy image and run it:

```bash
bash bootstrap/deploy-to-img.sh   # copies built/ into the floppy image
# then launch DOSBox-X with the resulting .img mounted as A:
```

---

## Inicio rápido (Español)

> Este repositorio **no incluye** los binarios de Microsoft Windows 1.03.
> Necesitas una copia legal de Windows 1.03 para usar este pipeline.
> Ver [LEGAL.md](LEGAL.md).

### Requisitos

- **SO**: Windows 10/11 con WSL2 (Ubuntu), Linux, o macOS
- **Python** 3.10+
- **Herramientas**: `mtools`, `git`
- **Para probar el resultado**: [DOSBox-X](https://dosbox-x.com/)

### Pasos

```bash
# 1. Clonar
git clone https://github.com/Elias010-01/win103-byteexact.git
cd win103-byteexact

# 2. Dependencias Python (capstone + keystone)
pip install -r requirements.txt

# 3. Aporta tus binarios legales en original/
#    (KERNEL.EXE, GDI.EXE, USER.EXE, WIN.COM, ... 69 archivos)

# 4. Regenerar el código fuente assembly editable
python bootstrap/extract_segments.py
python bootstrap/decompile_segment.py

# 5. Reconstruir binarios byte-exactos (69/69)
python bootstrap/build_from_source.py

# 6. (Opcional) Documentar semánticamente (pasadas 1–7)
python bootstrap/analyze/pass1_patterns.py
python bootstrap/analyze/pass1b_discover.py
python bootstrap/analyze/pass2_callgraph.py
python bootstrap/analyze/pass3_describe.py
python bootstrap/analyze/pass4_annotate.py
python bootstrap/analyze/pass5_index.py
python bootstrap/analyze/pass6_visualize.py
python bootstrap/analyze/pass7_enrich_deps.py

# 7. (Opcional) Verificación byte-exacta función por función con MASM 4.00
#    (pasadas 23–30, requiere DOSBox-X + MASM 4.00 instalado en vendor/)
python bootstrap/analyze/pass23_find_ministubs.py        # descubrir funciones
python bootstrap/analyze/pass25_universal_extract.py     # exports NE
python bootstrap/analyze/pass27_internal_funcs.py        # funciones internas
python bootstrap/analyze/pass30_full_segment.py          # segmentos completos
python bootstrap/analyze/pass24_batch_masm_verify.py     # verificador principal
python bootstrap/analyze/pass26_module_coverage.py       # cobertura por módulo
python bootstrap/analyze/pass28_final_report.py          # reporte final

# 8. (Opcional) Aplicar mod de ejemplo
python bootstrap/mod_system.py apply elias-windows
```

Más detalles más abajo en [English](#english) / [Español](#español).

---

## English

### What this is

This repository contains the **complete pipeline** to take **all 92 original
binaries** of Microsoft Windows 1.03 (1985, distributed across multiple floppy
disks) — the 69 NE `.EXE`/`.DRV` modules, 18 `.FON` bitmap fonts, the boot
loader `WIN.COM`, the second-stage loader and overlay `WIN100.BIN`/`WIN100.OVL`,
and the DOS-app compatibility pair `WINOLDAP.MOD`/`WINOLDAP.GRB` — and
regenerate every one of them **byte-for-byte identical** from
**human-readable, editable assembly source**, with every function
documented automatically.

It also includes a **mod system** that lets you produce modified versions of
Windows 1.03 (changing splash screen, menu labels, version number, etc.) and
apply / revert those changes cleanly.

The binaries themselves (`.EXE` / `.DRV`) are **not redistributed** in this
repo — they are property of Microsoft Corporation. You bring your own legal
copy of Windows 1.03 to `original/`, and the pipeline regenerates everything
from there.

### What you get

- **92 / 92 binaries** rebuilt byte-identical to the originals from `src/<MOD>/`
  (69 NE `.EXE`/`.DRV` + 18 `.FON` + 5 loader/compat: `WIN.COM`, `WIN100.BIN`,
  `WIN100.OVL`, `WINOLDAP.MOD`, `WINOLDAP.GRB`)
- **8,555 / 8,555 functions** verified byte-identical via MASM 4.00 reassembly under DOSBox-X
- **986,658 / 986,658 code bytes** verified — 100 % of all executable code shipped on the floppies
- **68 / 68 code-bearing modules** at 100 % function-level byte coverage
- **Symbolic call graph** with 5,104 intra-module + 5,143 inter-module edges
- **Interactive HTML visualization** of all module dependencies
- **Mod system** with `apply` / `revert` and example mods
- **75+ Markdown documents** auto-generated, one per module + indexes
- **Reproducible verification pipeline** under `bootstrap/analyze/` (passes 1–7 for documentation, 23–30 for byte-exact verification)

### Honest facts

- **Built in approximately one night** (~24 hours of focused work)
- **Author**: Elias, 16 years old
- **AI assistance**: heavy. The pipeline scripts, parsers, heuristics,
  documentation generators and overall architecture were written in
  collaboration with large language models. Strategic decisions,
  experimental dead-ends, mod design and verification were human-driven.
- **Originality**: the *pipeline* is original work. The *Windows 1.03 binaries*
  are Microsoft's. The *function names* come from public NE export tables.
  The *function descriptions* are heuristic, generated by our scripts —
  they are best-effort, not authoritative documentation.
- **Status**: this is research / educational work. The author is a minor
  exploring reverse engineering. No commercial intent. No claim of ownership
  over Microsoft IP.

### Why it matters

Until now, no public project had produced a complete editable + recompilable
form of Windows 1.x. The closest attempt (`starfrost013/modern-personality-windows`,
see [CREDITS](CREDITS.md)) is on hiatus and explicitly "not rebuildable yet".
Decomp communities exist for old console games (SM64, Zelda OOT, Pokemon Red),
but no equivalent existed for early Microsoft Windows.

This project does not claim to be a "decompilation to C" — Windows 1.03 was
itself written mostly in assembly. It is a stronger and more precise claim:
**every single byte of executable code that Microsoft shipped on the original
1985 floppy disks has been verified byte-identical to what the genuine
Microsoft MASM 4.00 assembler produces from this repository's source**, with
no trust given to any intermediate step. The original 1985 toolchain runs
under DOSBox-X and its `.LST` listings are parsed as the authoritative ground
truth for every one of the 986,658 code bytes.

The approach: **disassemble to readable assembly with the raw bytes preserved
in comments as authority**, then prove correctness by reassembling with the
original Microsoft toolchain and comparing byte-for-byte. Humans (and AI)
can read, document and modify the assembly, and the verifier will catch any
divergence at single-byte granularity.

---

## Español

### Qué es esto

Este repositorio contiene el **pipeline completo** para coger **los 92 ficheros
originales** de Microsoft Windows 1.03 (1985, distribuidos en varios disquetes)
— los 69 módulos NE `.EXE`/`.DRV`, 18 fuentes `.FON`, el loader `WIN.COM`,
el loader de segunda etapa y overlay `WIN100.BIN`/`WIN100.OVL`, y el par de
compatibilidad DOS `WINOLDAP.MOD`/`WINOLDAP.GRB` — y regenerar cada uno
**byte-exacto** desde **código fuente assembly humano-legible y editable**,
con cada función documentada automáticamente.

También incluye un **sistema de mods** que permite producir versiones
modificadas de Windows 1.03 (cambiar splash screen, etiquetas de menús,
número de versión, etc.) y aplicar / revertir esos cambios limpiamente.

Los binarios `.EXE` / `.DRV` **no se redistribuyen** en este repo — son
propiedad de Microsoft Corporation. Tú aportas tu copia legal de Windows
1.03 a `original/`, y el pipeline regenera todo lo demás.

### Qué tienes

- **92 / 92 binarios** reconstruidos byte-idénticos a los originales desde `src/<MOD>/`
  (69 NE `.EXE`/`.DRV` + 18 `.FON` + 5 loader/compat: `WIN.COM`, `WIN100.BIN`,
  `WIN100.OVL`, `WINOLDAP.MOD`, `WINOLDAP.GRB`)
- **8.555 / 8.555 funciones** verificadas byte-idénticas con reensamblado MASM 4.00 bajo DOSBox-X
- **986.658 / 986.658 bytes de código** verificados — el 100 % del código ejecutable que viajó en los disquetes
- **68 / 68 módulos con código** al 100 % de cobertura byte-exacta a nivel de función
- **Call graph simbólico** con 5.104 aristas intra-módulo + 5.143 inter-módulo
- **Visualización HTML interactiva** de todas las dependencias entre módulos
- **Sistema de mods** con `apply` / `revert` y mods de ejemplo
- **75+ documentos Markdown** auto-generados, uno por módulo + índices
- **Pipeline de verificación reproducible** en `bootstrap/analyze/` (pasadas 1–7 para documentación, 23–30 para verificación byte-exacta)

### Hechos honestos

- **Construido en aproximadamente una noche** (~24 horas de trabajo enfocado)
- **Autor**: Elías, 16 años
- **Ayuda de IA**: intensa. Los scripts del pipeline, parsers, heurísticas,
  generadores de documentación y arquitectura general fueron escritos en
  colaboración con LLMs. Las decisiones estratégicas, callejones sin salida
  experimentales, diseño de mods y verificación fueron míos.
- **Originalidad**: el *pipeline* es trabajo original. Los *binarios de
  Windows 1.03* son de Microsoft. Los *nombres de funciones* vienen de las
  tablas de exports públicas del formato NE. Las *descripciones de funciones*
  son heurísticas, generadas por nuestros scripts — son best-effort, no
  documentación autoritativa.
- **Estado**: trabajo de investigación / educativo. El autor es menor de
  edad explorando ingeniería inversa. Sin intención comercial. Sin reclamo
  alguno de propiedad sobre IP de Microsoft.

### Por qué importa

Hasta ahora ningún proyecto público había producido una forma completa
editable + recompilable de Windows 1.x. El intento más cercano
(`starfrost013/modern-personality-windows`, ver [CREDITS](CREDITS.md)) está
en pausa y explícitamente dice "not rebuildable yet". Existen comunidades
de decomp para juegos antiguos (SM64, Zelda OOT, Pokémon Red), pero no
había equivalente para Microsoft Windows temprano.

Este proyecto no pretende ser una "decompilación a C" — Windows 1.03 fue
escrito mayormente en assembly. Lo que reclamamos es algo más fuerte y
más preciso: **cada uno de los bytes de código ejecutable que Microsoft
entregó en los disquetes originales de 1985 ha sido verificado
byte-idéntico a lo que produce el ensamblador genuino Microsoft MASM 4.00
desde el source de este repo**, sin confianza en ningún paso intermedio.
El toolchain original de 1985 corre bajo DOSBox-X y sus `.LST` se parsean
como ground truth autoritativo para cada uno de los 986.658 bytes.

El enfoque: **desensamblar a assembly legible con los bytes raw preservados
como comentarios autoritativos**, y luego probar la corrección reensamblando
con el toolchain original de Microsoft y comparando byte por byte. Humanos
(y la IA) pueden leer, documentar y modificar el assembly, y el verificador
caza cualquier divergencia con granularidad de un solo byte.

---

## Quickstart

### 1. Aportar tus binarios de Windows 1.03

Coloca **los 92 binarios** originales en `original/` (todos los `.EXE`,
`.DRV`, `.FON`, `WIN.COM`, `WIN100.BIN`, `WIN100.OVL`, `WINOLDAP.MOD`,
`WINOLDAP.GRB` del juego de disquetes):

```
original/
├── KERNEL.EXE
├── GDI.EXE
├── USER.EXE
├── PAINT.EXE
├── WIN.COM
├── WIN100.BIN
├── WIN100.OVL
├── HELVA.FON
├── ...   (92 archivos)
```

> **Legal**: estos binarios son propiedad de Microsoft Corporation. Solo
> usalos si los posees legalmente (disquetes originales, ISO comprada, etc.).
> Ver [LEGAL.md](LEGAL.md).

### 2. Regenerar el codigo fuente

```bash
python bootstrap/extract_segments.py        # extrae segmentos NE
python bootstrap/decompile_segment.py       # desensambla a .asm legible
python bootstrap/build_from_source.py       # reconstruye .EXE byte-exact
```

Resultado: **92/92 binarios** en `built/` byte-idénticos a los de `original/`.

### 3. Documentar semánticamente

```bash
python bootstrap/analyze/pass1_patterns.py
python bootstrap/analyze/pass1b_discover.py
python bootstrap/analyze/pass2_callgraph.py
python bootstrap/analyze/pass3_describe.py
python bootstrap/analyze/pass4_annotate.py
python bootstrap/analyze/pass5_index.py
python bootstrap/analyze/pass6_visualize.py
python bootstrap/analyze/pass7_enrich_deps.py
```

Resultado: `docs/analysis/` con 75+ documentos Markdown + `callgraph.html`
interactivo.

### 4. Verificación byte-exacta con MASM 4.00

Esta es la fase que produce el **8.555 / 8.555 byte-idéntico**. Requiere
DOSBox-X + Microsoft MASM 4.00 instalado en `vendor/masm400/`.

```bash
python bootstrap/analyze/pass23_find_ministubs.py        # descubrir funciones
python bootstrap/analyze/pass25_universal_extract.py     # exports NE
python bootstrap/analyze/pass27_internal_funcs.py        # funciones internas
python bootstrap/analyze/pass30_full_segment.py          # segmentos completos
python bootstrap/analyze/pass24_batch_masm_verify.py     # verificador principal
python bootstrap/analyze/pass26_module_coverage.py       # cobertura por módulo
python bootstrap/analyze/pass28_final_report.py          # reporte final
```

Resultado: `state/analyze/pass28/REPORT.md` con **100 % de cobertura
byte-exacta** sobre los 986.658 bytes de código y los 68 módulos con
código.

### 5. Aplicar un mod

```bash
python bootstrap/mod_system.py list                  # lista mods
python bootstrap/mod_system.py apply elias-windows   # aplica mod
python bootstrap/mod_system.py revert                # revierte
```

---

## Estructura del repo

```
win103-byteexact/
├── bootstrap/         Scripts del pipeline (Python + bash)
│   └── analyze/       Pipeline de analisis semantico (7 passes)
├── src/               .asm humano-legibles con bytes en comentarios
│   ├── KERNEL/seg1.asm     KERNEL.def    layout.json
│   ├── GDI/                ... 69 NE .EXE/.DRV ...
│   ├── USER/
│   ├── HELVA/              ... 18 .FON fonts ...
│   ├── WIN/                WIN.COM (flat .COM loader)
│   ├── WIN100/             WIN100.BIN (NE)
│   ├── WIN100_OVL/         WIN100.OVL (flat overlay)
│   ├── WINOLDAP/           WINOLDAP.MOD (NE DOS-app compat)
│   └── WINOLDAP_GRB/       WINOLDAP.GRB (graphics resource)
├── mods/              Mods del usuario
│   ├── elias-windows/  Mi mod showcase (splash + menus + about)
│   └── win104/         Ejemplo: cambia version 1.03 -> 1.04
├── docs/analysis/     Documentacion auto-generada (Markdown + HTML)
│   ├── INDEX.md       Portada
│   ├── callgraph.html Grafo interactivo
│   └── <MODULE>.md    69 docs, uno por modulo
├── README.md          Este archivo
├── STORY.md           La historia del proyecto (bilingue)
├── CREDITS.md         Reconocimientos
├── LEGAL.md           Disclaimer legal
└── LICENSE            MIT para nuestros scripts
```

---

## Disclaimer

This is a personal research / educational project. Microsoft Windows 1.03 is
a registered trademark of Microsoft Corporation. This project is not
affiliated with, endorsed by, or sponsored by Microsoft.

Function descriptions are generated heuristically and may be incorrect.
This is not authoritative documentation.

See [LEGAL.md](LEGAL.md) for the full legal notice.
