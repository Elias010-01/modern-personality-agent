# Windows 1.03 — código fuente recompilable 1:1

Este directorio contiene el **código fuente** desde el cual los 68 binarios
NE de Windows 1.03 se recompilan **byte-exact** (mismo SHA256 que el original).

## Estructura

```
src/
├── KERNEL/             # KERNEL.EXE — núcleo del sistema
│   ├── seg1.asm        # Segmento 1 (CODE/DATA según flags NE)
│   ├── ne_meta.bin     # DOS stub + NE header + todas las tablas
│   └── layout.json     # Descripción de offsets/tamaños
├── GDI/                # GDI.EXE — graphics device interface (31 segs)
├── USER/               # USER.EXE — gestión de ventanas (28 segs)
├── MSDOS/              # MSDOS.EXE — capa MS-DOS (5 segs)
├── MSDOSD/             # MSDOSD.EXE — driver MS-DOS (2 segs)
├── SYSTEM/             # SYSTEM.DRV
├── CGA/ EGAHIRES/ ...  # Drivers de vídeo
├── MOUSE/ ATTMOUSE/... # Drivers de ratón
├── COMM/               # Driver de puerto serie
├── SOUND/              # Driver de sonido
├── USA/ UK/ FRANCE/... # Mapas de teclado
├── HPLASER/ EPSON/...  # Drivers de impresora
├── CALC/ NOTEPAD/...   # Apps (CALC, CARDFILE, CALENDAR, CLIPBRD,
│                       #   CLOCK, CONTROL, NOTEPAD, PAINT, REVERSI,
│                       #   SPOOLER, TERMINAL, WRITE)
└── README.md           # (este fichero)
```

## Cómo recompilar TODO Windows 1.03

```bash
python3 bootstrap/build_from_source.py
```

Sale un binario por módulo en `built/<MOD>.EXE`, comparado byte a byte
con `original/<MOD>.EXE`. Resultado esperado:

```
=== 68/68 módulos byte-exact desde fuente ===
```

## Cómo recompilar UN solo módulo

```bash
python3 bootstrap/build_from_source.py --module KERNEL
```

## Cómo regenerar las fuentes desde cero

```bash
python3 bootstrap/extract_segments.py        # crea/sobrescribe src/<MOD>/...
```

## Formato de los `seg<N>.asm`

Cada segmento se declara como un MASM `SEGMENT` con los bytes del binario
original en directivas `db`:

```asm
; AUTO-GENERATED from original KERNEL.EXE segment 1
; flags=0x0150 min_alloc=4096 data_len=33024 reloc_count=523

KERNEL_SEG1 SEGMENT BYTE PUBLIC 'CODE'

    db 050h, 0bbh, 04eh, 003h, 053h, 088h, 0ech, 089h, ...
    db ...
    ...

KERNEL_SEG1 ENDS

END
```

## Refactor incremental hacia código humano legible

El estado actual es **byte-exact** pero los `.asm` son `db` opcodes en
crudo. Para convertirlos en código legible (instrucciones MASM/C reales):

1. Edita un `.asm`. Por ejemplo, en `src/KERNEL/seg1.asm` substituye:
   ```asm
   db 055h, 08bh, 0ech
   ```
   por:
   ```asm
   push bp
   mov  bp, sp
   ```
2. Ejecuta `python3 bootstrap/build_from_source.py --mode=masm --module=KERNEL`.
3. El sistema ensambla el `.asm` con MASM real y verifica que sigue
   produciendo los mismos bytes que el original.

De ese modo se puede ir refactorizando función por función con
**verificación automática byte-exact** sin riesgo de romper nada.

## Las funciones ya reverse-engineereadas

93 funciones de KERNEL (LSTRCPY, LSTRCAT, GLOBALALLOC, GETCURRENTTASK,
ANSINEXT, etc.) ya tienen ASM legible importado de
`vendor/modern-personality-windows/` (repo upstream `starfrost013`).

Ver `bootstrap/import-upstream-matches.py` para detalles.

## Base de datos de funciones

`state/mpa.db` (SQLite) contiene 1216 entradas, una por función,
con offset/size/bytes y estado `matched|pending`. Consultar con:

```bash
bash bootstrap/status-summary.sh
```
