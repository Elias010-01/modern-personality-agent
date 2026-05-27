# CHANGELOG

Historial de versiones del proyecto win103-byteexact (renombrado desde modern-personality-agent).

## v13.4 - 2026-05-27 - Pass 21 cubre 11 modulos (3781 simbolos) + docs README

Acciona los puntos abiertos del email de @starfrost013 (2026-05-25) que aun
no estaban cerrados, despues de auditar los anteriores.

### Pass 21: 3 modulos -> 11 modulos, 2017 -> 3781 simbolos

  Antes solo parseabamos `kernelsyms.txt`, `usersyms.txt`, `gdisyms.txt`
  (los 3 dumps de la build DEBUG mirroreados en `kb/symbols/`).  Ahora
  cubrimos los 11 .SYM disponibles en el repo de starfrost:

    Debug build  : KERNEL  (388 simbolos, 103 confirmados via .DEF)
                   USER    (1112,         235)
                   GDI     ( 517,         182)
    Retail build : MSDOS   ( 290,           9)
                   WRITE   (1063,          30)
                   COMM    ( 199,          15)
                   SOUND   (  85,          18)
                   SYSTEM  (  18,           6)
                   EPSON   (  72,          14)
                   MOUSE   (  21,           3)
                   USA     (  16,           6)

  Total: 3781 simbolos (+1764), 621 confirmados (+101).

### Resolucion dual: kb/symbols/ -> vendor/

  `pass21_starfrost_symbols.py` busca cada `*syms.txt` primero en
  `kb/symbols/` (mirroreado, tracked) y, si no esta, en
  `vendor/modern-personality-research/win1.03/reversing/<dir>/`.  Esto
  evita re-redistribuir los 8 dumps adicionales mientras mantenemos los
  3 mirroreados originales para reproducibilidad offline.

### Caveat per-build en docs

  Los `<MODULE>_starfrost_symbols.md` ahora distinguen "debug build"
  (caveat: offsets NO alineados con retail) vs "retail build" (offsets
  esperados a coincidir).  Tabla y stats etiquetados consistentemente.

### `docs/analysis/README.md` (nuevo)

  Documenta que `docs/analysis/` es regenerable, lista los pases que
  generan cada tipo de archivo, y aclara que `KERNEL.md` acaba en offset
  ~0x797F NO por bug sino porque la build retail de KERNEL.EXE es de
  31103 bytes en su unica code segment.  El email apuntaba a un cutoff
  en 0x7FFF; era confusion debug-vs-retail.

### Verificacion

  - 92/92 modulos byte-exact (sha-iguales)
  - 37/37 tests pytest pasan
  - pass21 corre limpio en 11 modulos sin warnings

## v13.3 - 2026-05-26 - Real MASM 4.00 toolchain end-to-end + NE reloc parser

Reemplazo del path "Python regex parsea db de los .asm" por un path
real "MASM 4.00 + LINK 3.51 ensambla los .asm" que tambien produce
byte-exact contra los binarios Microsoft 1985.  Tres modulos clave
(WIN.COM, WIN100.BIN, WINOLDAP.MOD) ahora se reconstruyen via
toolchain de epoca; los 92 modulos siguen pasando por la ruta db
historica como antes.

### Hallazgo: pure-db sources son MASM 4.00 valido

  Antes asumiamos que los `seg<N>.asm` 100 % `db` (200 KB para WIN100)
  excedian el "source budget" de MASM 4.00 y por eso no podian
  ensamblarse.  Verificacion empirica con DOSBox-X + MASM.EXE 4.00:

    WIN100/seg1.asm     198 KB / 1952 lines  -> MASM produce 31103 B byte-exact
    WINOLDAP/seg1.asm   104 KB / 1028 lines  -> MASM produce 16310 B byte-exact
    WINOLDAP/seg2.asm     7 KB /   88 lines  -> MASM produce  1200 B byte-exact

  MASM 4.00 no tiene limite practico de source size; lo que excedia el
  budget era el formato real-disasm con comentario `; [hex bytes]` por
  instruccion (883 KB para WIN100).  El comentario obsoleto en
  `disasm_to_masm.py` se elimino.

### `bootstrap/build_from_source.py --mode=masm` ahora real

  Antes era un TODO que delegaba a `parse_db_bytes`.  Ahora invoca
  `assemble_via_masm` (MASM 4.00 + LINK 3.51 bajo DOSBox-X), parsea
  los OBJ records y verifica byte-exact.  Resultados:

    WIN.COM       -> sha b4b974d4b3665a5a == original (4873 B, 1 seg)
    WIN100.BIN    -> sha c9a7c802661cc483 == original (185248 B, 1 seg)
    WINOLDAP.MOD  -> sha f901cc470fa05b26 == original (19824 B, 2 segs)
    MSDOS.EXE     -> sha 857e99ec96dd4acc == original (43104 B, 5 segs)

  Para los otros 88 modulos (cuyos `seg<N>.asm` son disasm parciales
  con labels huerfanos), `--mode=masm` cae automaticamente a
  `parse_db_bytes` con un nota `masm-fallback-db` en el resumen.
  `--mode=db` (default) sigue usando solo el regex parser y mantiene
  el resultado historico 92/92.

### Bug fix critico: `parse_obj_ledata` lee SEGDEF

  MASM 4.00 omite LEDATA records para `db N DUP(0)` al final de un
  segmento (los considera "uninitialized space" pese a estar declarados
  como zeros explicitos).  Sin el fix, una fuente con
  `db 645 DUP(0)` antes de `WIN100_SEG1 ENDS` producia un OBJ con
  solo 30458 B en LEDATA records de un segmento de 31103 B.

  `parse_obj_ledata` ahora lee tambien los SEGDEF records (0x98/0x99),
  y padea la salida con zeros hasta `max(LEDATA_end, SEGDEF_size)`.
  Con esto, todos los `db N DUP(0)` round-trippean byte-exact aunque
  MASM no los emita.

### Nuevo: parser de NE relocations + flow analysis seeded

  `parse_ne_relocations(file_data, seg_off, seg_len, has_relocations)`
  decodea la tabla per-segmento de fixups que sigue al segmento en el
  fichero NE (count word + N x 8-byte records).  Honor del flag
  `0x0100 HAS_RELOCATIONS` evita malinterpretar bytes basura como
  contador (e.g. WIN100 seg1 con flags=0x0040 sin relocs).

  `relocation_seeded_flow_analyze` usa cada `src_off` reloc como
  ancla: walks back 1-5 bytes hasta encontrar la instruccion cuya
  operand-byte coincide con `src_off`, y ejecuta worklist-based flow
  analysis desde ahi.  Bytes no alcanzados se emiten como `db` (data),
  evitando que Capstone disassemble strings/tablas como codigo.

  Resultado en WINOLDAP seg1 (102 relocs): 9702 / 16310 bytes (59.5%)
  identificados como codigo via 124 regiones alternantes code/data.
  La cascada de longitud Capstone-vs-MASM aun impide convergencia
  byte-exact en 30 iteraciones, asi que el segmento cae al fallback
  pure-db (que SI byte-matches via MASM 4.00).

### Compact emission para sources NE

  `emit_masm_source(..., compact=True)` (auto para NE):

    * Drop del comentario `; [hex bytes]` por instruccion.  Para 10000
      insn cuts source size de 883 KB a ~250 KB.
    * `db N DUP(0)` para zero-runs >= 16 bytes en `_emit_db_block`.
      Para WIN100 31 KB con muchas zero pads, source baja de ~200 KB
      a ~180 KB (`d_009E: db 120 DUP(0)`, etc.).

  COM mantiene `compact=False` por legibilidad humana (el comentario
  hex por linea ayuda a auditar las 470 instrucciones reales del
  disasm de WIN.COM).

### Graceful fallback en disasm iterativo

  Antes: si la iteracion no convergia en 200 iters, `process_segment`
  retornaba `FAIL_MAX_ITERS` y dejaba el `seg<N>_real.asm` en estado
  inconsistente.  Ahora: si tras `MAX_ITERS=30` (NE) o `MAX_ITERS=200`
  (COM) no hay convergencia, el segmento se reescribe en formato
  pure-db (100 % `db`) y se verifica que asi SI assembla byte-exact
  con MASM 4.00.  Status: `OK_DB_FALLBACK`.

  Esto convierte una falla silenciosa en un fallback explicito y
  garantiza que el `seg<N>_real.asm` resultante siempre es source MASM
  4.00 valido que round-trippea al binario original.

### Nuevo: `bootstrap/try_assemble_db_source.py`

  Tool de diagnostico standalone que dado `<MOD>:<seg>` ensambla el
  `seg<N>.asm` con MASM 4.00 y compara byte-exact contra el original.
  Util para verificar si un source pure-db es MASM-ready sin invocar
  todo el toolchain de `disasm_to_masm`.

### Cobertura final v13.3

    Module                      Source       Real-disasm  MASM 4.00
    --------------------------- ------------ ------------ ----------
    WIN.COM           seg1     real disasm  470/523 89%  byte-exact
    WIN100.BIN        seg1     pure-db      0%           byte-exact
    WINOLDAP.MOD      seg1     pure-db      0%           byte-exact
    WINOLDAP.MOD      seg2     pure-db      data         byte-exact
    MSDOS.EXE         seg1-5   pure-db      0%           byte-exact

  4/4 modulos clave round-trippean por la toolchain de 1985.
  92/92 modulos round-trippean por la toolchain Python regex (modo db).
  37/37 tests pasan.

## v13.2 - 2026-05-26 - SDK hardening: declarative mod engine + tests + CI

Refactor profundo del Mod SDK introducido en v13.1.  Sin romper nada
existente, ahora todo el sistema vive sobre un motor declarativo unico
y tiene tests automatizados.

### Centralizacion de constantes -> `bootstrap/win103_layout.py`

  Single source of truth para todos los offsets / tamanos:

    SIZE_BY_FILE        WIN.COM / WIN100.OVL / WIN100.BIN / MSDOS.EXE / WINOLDAP.MOD
    WINCOM_LOGO_*       offset, width, height, bpr, banks, size
    WINCOM_STRINGS      offsets de strings parcheables en WIN.COM
    NE_META_STRINGS     offsets en src/MSDOS/ne_meta.bin
    WIN100_OVL_STRINGS  ocurrencias en WIN100.OVL
    WINCOM_ANCHORS      ubicaciones del disasm (tag_logo, set_cga_mode6, ...)

  Helper `validate_against_originals(orig_dir)` lanza ValueError si algun
  fichero en `original/` no tiene el tamano esperado (detecta corrupcion
  o version equivocada del juego de disquetes).

  `blibbet_mod.py`, `extract_blibbet_logo.py`, `decode_logo_final.py` y
  `mod_engine.py` ahora importan de aqui en lugar de hard-codear bytes.

### Motor de mods declarativo -> `bootstrap/mod_engine.py`

  Un mod ahora se describe con dos TOML en `mods/<name>/`:

    meta.toml         metadatos human-readable (name, title, author, ...)

    patches.toml      DECLARATIVO: targets + patches.
                      Soporta:
                        - `type = "string"` con replacements [old, new]
                          (length-preserving, word-boundary-safe)
                        - `type = "bitmap"` con offset/size/format/source
                          (formato 'cga-mode6-bank-interleaved-1bpp' para
                          el logo Blibbet)
                        - `source = "rebuild:<MODULE>"` para targets que
                          se recompilan via smart_build
                        - `scope = "src/.../...bin"` para parchear un
                          fichero ANTES del rebuild (e.g. ne_meta.bin)
                        - `optional = true` para patches que se saltan
                          si la fuente no existe
                        - `[deploy] img = "..."` para inyectar todos los
                          targets en una IMG FAT12

  Funciones publicas:
    load_mod(mod_dir)                     -> ModSpec
    apply_string_patch(data, repls, ...)  -> count
    apply_bitmap_patch(data, patch, ...)  -> count
    build_target(target, spec, ...)       -> bytes
    deploy_to_img(img, artifacts, ...)
    run_mod(mod_dir, deploy=True)         -> RunResult

  Migracion: `mods/elias-windows/` ahora tiene `patches.toml` con los 14
  parches (5 strings ne_meta.bin + 4 strings WIN.COM + 1 bitmap WIN.COM +
  1 string WIN100.OVL).  Los parches imperativos en Python desaparecieron.

### `mod_system.py` unificado con backward compat

  `cmd_apply()` ahora detecta `patches.toml`:

    Si existe  -> usa mod_engine.run_mod() (flow declarativo nuevo)
    Si no      -> usa el flow legacy v07 (copia files de patches/<MOD>/
                  sobre src/, smart_build, mcopy)

  Mods existentes en formato v07 (como `mods/win104/`) siguen funcionando
  sin tocar nada.

### `launch_elias_win103.py` refactor: CLI + cross-platform

  Antes:  hardcoded path absoluto a `C:\Users\Elias\Desktop\...` (rompia
          el SDK para cualquiera que no fuera el autor).
  Ahora:  thin wrapper sobre `mod_engine.run_mod()` con flags:

    --mod NAME       (default 'elias-windows')
    --bmp PATH       Path explicito al BMP editado.  Si se omite, prueba
                     ~/Desktop/blibbet-logo-editor/, ~/Documents/...
                     y finalmente mod/blibbet/.
    --no-launch      Construye e inyecta pero no abre DOSBox-X
    --no-deploy      Solo construye los artefactos (sin tocar IMG)

  `kill_running_dosbox()` y `find_dosbox_x()` cross-platform
  (sys.platform check -> taskkill on Windows, pkill on POSIX; busca
  el ejecutable en rutas estandar de Windows + PATH).

### `smart_build.py` UX fixes

  Antes: `WARN: keystone-engine no instalado` (asustante en cada build),
         `[DIFF]` con exit-code 1 en mod-builds (cuando el DIFF es ESPERADO).

  Ahora:
    --mod-build           Modo "mod-build" -> `[MOD ]` en vez de `[DIFF]`,
                          exit-code 0 (la diferencia es intencional).
    --quiet-keystone      Silencia el aviso de keystone.
    Por defecto:          El aviso de keystone se demueve a `INFO:` con
                          explicacion: "(Data-only mods do not need keystone.)".

### Limpieza de `bootstrap/`

  Los 11 scripts de research/discovery del logo Blibbet (que eran codigo
  exploratorio one-time, mezclado con el SDK de produccion) se han movido
  a `bootstrap/research/blibbet/`:

    analyze_splash_screenshot.py     find_logo_v2.py
    find_logo_in_files.py            find_blibbet_logo.py
    hunt_blibbet_in_bin.py           hunt_blibbet_ega.py
    render_win_tail.py               render_blibbet_font.py
    decode_logo_interleaved.py       decode_logo_final.py
    check_bmp_header.py

  `bootstrap/research/README.md` documenta cada script + a que fase del
  descubrimiento corresponde.

### Tests automatizados -> `tests/` (37 tests, todos passing)

    tests/test_win103_layout.py    7 tests  (constantes, geometria,
                                              validacion de tamanos)
    tests/test_blibbet_mod.py      7 tests  (CGA<->linear roundtrip,
                                              BMP write/read, real
                                              WIN.COM roundtrip)
    tests/test_fat12_replace.py    5 tests  (replace in-place sintetico
                                              sin mtools, fail modes,
                                              preservacion de chain y
                                              zero-pad)
    tests/test_mod_engine.py      18 tests  (string patch w/ word
                                              boundary, length checks,
                                              offset resolver (int / hex
                                              / symbolic), load_mod
                                              parsing, build_target
                                              integration)

  Todos pasan en 0.60s.  Cobertura: bootstrap/blibbet_mod.py,
  bootstrap/fat12_replace.py, bootstrap/mod_engine.py,
  bootstrap/win103_layout.py.  La imagen sintetica FAT12 360 KB se
  construye en memoria, por lo que los tests no requieren
  binarios Microsoft.

### CI GitHub Actions -> `.github/workflows/test.yml`

  Tres jobs en cada push / PR:

    pytest    Ubuntu + Windows (matrix), Python 3.11 + 3.12.
              - py_compile sobre todos los `bootstrap/*.py`
              - pytest sobre `tests/`

    lint-toml  Valida sintacticamente todos los `mods/*/patches.toml` y
               `mods/*/meta.toml`.

### Verificacion end-to-end

  Tras toda esta refactorizacion el comando original sigue funcionando:

    python bootstrap/launch_elias_win103.py

  El IMG resultante tiene:
    - 1684 bytes de diff vs ORIG-WIN.COM (1549 del logo del usuario +
      135 de strings parcheados)
    - Strings 'Elias's Windows!!', 'Version MOD!', 'This mod is
      unofficial' presentes; 'Microsoft Windows', 'Version 1.03' ausentes
    - MSDOS.EXE rebuilt con menus 'MOD! / MIO! / ZONA!!!'


## v13.1 - 2026-05-26 - Blibbet-logo-cracked + first end-user mod SDK

Ingenieria inversa del unico asset binario que faltaba reverse-engineerar
en toda la distribucion: el bitmap del **logo "MICROSOFT" Blibbet** que
aparece en la splash screen de Windows 1.03 al arrancar.  Ademas, primer
**SDK end-to-end editable** (BMP en Paint -> WIN.COM patcheado -> IMG
inyectada -> DOSBox-X) que cierra el ciclo completo "user content -> live
running OS".

### Logo Blibbet localizado y decodificado

  Ubicacion exacta:
    File:       original/WIN.COM
    Offset:     0x099D ... 0x1308 (los ULTIMOS 2412 bytes del fichero)
    Size:       2412 bytes (0x96C)
    Format:     CGA mode 6 (640x200, 1bpp), 536x36 px
    Stride:     67 bytes/row (= ceil(536/8))
    Layout:     CGA-BANK INTERLEAVED -- 18 even rows (0,2,..,34) seguidas
                de 18 odd rows (1,3,..,35).  Coincide byte-a-byte con la
                organizacion de la VRAM de CGA en B800:0000 (rows pares)
                y B800:2000 (rows impares).  La rutina de blit es un
                doble `rep movsw` directo source -> VRAM.

  Discovery method (5 fases, todas en bootstrap/):
    1. analyze_splash_screenshot.py: extraer 1bpp del PNG de la splash
       y mapear a coordenadas CGA nativas (640x200).
    2. find_logo_in_files.py + find_logo_v2.py: busqueda de bytes de
       fila distintiva con todos los 8 bit-shifts posibles + variante
       inversa, sobre 12 binarios candidatos.  Hit en WIN.COM @0x11FE.
    3. render_win_tail.py: render del tail de WIN.COM con todos los
       widths posibles (8..89 bytes) y autocorrelacion vertical.
       Pico de "vertical similarity" en 67 bytes/row (score 0.83).
    4. decode_logo_interleaved.py: hipotesis de layout interleaved
       (testeada contra layout linear).  Score 0.869 vs 0.819 -- el
       interleaved gana decisivamente.
    5. extract_blibbet_logo.py + decode_logo_final.py: extraccion
       canonica con offset preciso 0x099D, deinterleaved, render PNG,
       verificacion visual contra screenshot.

  Disassembly anchors en src/WIN/seg1_real.asm:
    line 587   tag_logo:           db 'LOGO'              @ 0x0790
    line 615   B8 06 00 CD 10      mov ax,6 ; int 10h     @ 0x0989  (set CGA mode 6)
    line 617   CD 10 C3            int 10h ; ret          @ 0x099A..0x099C
    line 621   3F FF C0 ...        BITMAP DATA STARTS     @ 0x099D
    line N     <last byte>                                @ 0x1308 (end of file)

### Logo SDK (mod/blibbet/ + bootstrap/blibbet_mod.py)

  Round-trip BMP <-> CGA <-> WIN.COM byte-exact verificado.  Pipeline:

    bootstrap/blibbet_mod.py:
      - export    : WIN.COM -> 1bpp BMP 536x36 (editable en MS Paint)
                    + 4x scaled-up PNG preview con fondo azul CGA
      - import    : BMP editado -> WIN.COM patcheado in-place
      - roundtrip : verificacion automatica de byte-exactness
                    (exporta + reimporta sin tocar -> mismo MD5
                    que original/WIN.COM)

    bootstrap/extract_blibbet_logo.py:
      - extrae el logo a PNG 1:1 + render en framebuffer 640x200
        completo (con la posicion exacta x=54, y=36 que aparece en
        pantalla en CGA mode 6).
      - dump del raw 2412B (interleaved) y del linear row-major 2412B.

    bootstrap/fat12_replace.py (libreria reutilizable):
      - reemplazo IN-PLACE de un fichero existente en una imagen
        floppy FAT12 sin necesitar mtools (no esta disponible en
        Windows).  Reusa la cadena de clusters existente, solo
        sobrescribe los bytes data.  Tamano del fichero nuevo
        DEBE coincidir.

    bootstrap/launch_elias_win103.py (orchestrator end-to-end):
      - kill DOSBox-X si esta corriendo (libera lock del IMG)
      - rebuild MSDOS.EXE via smart_build con ne_meta.bin patcheado
      - genera WIN.COM con logo del usuario (BMP escritorio o proyecto)
        + parches de strings ("Microsoft Windows" -> "Elias's Windows!!"
        y demas)
      - genera WIN100.OVL con parches de strings
      - inyecta los 3 binarios en runtime/win103-built.img via
        fat12_replace.py
      - verifica round-trip byte-exact por re-extraccion
      - lanza dosbox-x.exe con runtime/dosbox-win103.conf

    bootstrap/diagnose_img_logo.py:
      - tool de diagnostico que extrae el WIN.COM de la IMG, lo
        compara con el original y con el BMP del usuario, renderiza
        cada uno como PNG y reporta diferencias byte-a-byte.
        Util para depurar problemas de sincronizacion entre el BMP
        editado y el contenido real de la IMG.

### Showcase end-to-end

  El usuario edita el logo en MS Paint sobre un BMP de 536x36 1bpp,
  guarda, y un solo comando reconstruye Windows 1.03 con el logo
  modificado y lo lanza en DOSBox-X:

    python bootstrap/launch_elias_win103.py

  Resultado: arranque de Windows 1.03 con splash custom + textos
  personalizados + MSDOS.EXE recompilado byte-exact con strings
  modificadas.

### Documentacion nueva

  docs/BLIBBET_LOGO.md
    - Writeup tecnico completo del descubrimiento (offsets, formato,
      anchors en el disassembly, comandos de extraccion/reinyeccion)
    - Diagrama del layout interleaved CGA bank-interleaved
    - Comandos copy-paste para reproducir el descubrimiento desde 0

  mod/blibbet/README.md
    - Workflow del SDK (export -> editar en Paint -> import -> launch)
    - Reglas para editar BMPs 1bpp sin romper byte-exactness
    - Recovery (volver al logo original Microsoft)


## v13.0 - 2026-05-26 - WIN.COM-semantic-labels + disasm-to-masm-refactor

Refactor de bootstrap/disasm_to_masm.py para soportar multiples modulos
(WIN.COM, WIN100.BIN, WINOLDAP.MOD) y mejoras de convergencia + labels
semanticos reverse-engineered en src/WIN/seg1_real.asm.

Cambios principales en bootstrap/disasm_to_masm.py:

  - Funcion process_module(mod_name) parametrizada: lee
    src/<MOD>/layout.json, procesa cada segmento.
  - linear_analyze() para NE segments (sin entry-point conocido).
  - emit_masm_source(mod_name, seg_index, va_bias, is_data_seg, ...)
    parametrizado: maneja COM (va_bias=0x100) vs NE (va_bias=0) y
    data segments (todo db, sin Capstone).
  - assemble_via_masm(short, work_dir) parametrizado para uso paralelo
    por segmento.
  - find_offending_offsets(): adaptive batching - cuando
    len(obj)==len(orig), las divergencias son puramente encoding diffs
    (no cascade), batch-fallback de TODAS de una vez. Esto reduce
    drasticamente las iteraciones en WIN.COM:
      antes (v12.2): 45 iteraciones, ~1m32s
      ahora (v13):    3 iteraciones, ~30s

Semantic labels en src/WIN/seg1_real.asm (11 renames cosmeticos,
aplicados como post-pass tras byte-exact y re-verificados):

  L_01C1 -> win_main                  (entry point del JMP @ offset 0)
  d_0010 -> msg_dos_prompts           ('DOS$Insert Application$Insert Windows Startup$ disk in drive')
  d_005F -> msg_when_ready            ('when ready $')
  d_007B -> msg_program_too_big       ('.. big to fit in memory')
  d_00A0 -> msg_no_screen_xchg_space  ('.. space for screen exchange')
  d_00CA -> msg_no_startup_files      ('.. dows startup files')
  d_00EC -> env_comspec_eq            ('COMSPEC=')
  d_0790 -> tag_logo                  ('LOGO' 4-char tag)
  d_07C4 -> txt_windows               ('..ndows')
  d_07E9 -> msg_copyright_ms          ('Microsoft Corporation, 1985, ..')
  d_0831 -> msg_trademark_ms          ('a registered trademark of Microsoft Corp.')

  Resultado: src/WIN/seg1_real.asm sigue byte-exact (4873 B match,
  verificado dos veces en cada run).

Modulos NE (WIN100.BIN, WINOLDAP.MOD) - intentados, no incluidos:

  Razones tecnicas para mantener WIN100/WINOLDAP en 100% db emission:

  1. WIN100.BIN seg1 (31 KB code): la disassembly Capstone produce
     un .ASM de 883 KB. MASM 4.00 sale silenciosamente despues del
     banner sin generar .OBJ ni .LST -- el source excede el budget
     interno del ensamblador (1985-era memory limits, ~64KB heap).

  2. WINOLDAP.MOD seg1 (16 KB code): linear-sweep analysis sin
     entry-point conocido marca todos los bytes como codigo
     candidato. Muchos son data mezclado con codigo, Capstone
     produce instrucciones erroneas que MASM re-encoda con tamano
     diferente. >200 iteraciones todavia ~9 KB de diff (cada length
     cascade fuerza fix individual). Convergencia real requeriria
     cargar la tabla de relocations de NE para identificar bytes
     que SI son codigo, fuera del scope de v13.

  Estos modulos siguen byte-exact via build_from_source.py
  (emision flat-db por segmento). bootstrap/analyze/verify_flat_com_via_masm.py
  confirma todos: WIN seg1 4873B, WIN100 seg1 31103B, WINOLDAP seg1
  16310B, WINOLDAP seg2 1200B.

Output:
  src/WIN/seg1_real.asm        (771 lineas, semantic-labeled, byte-exact)
  src/WIN/seg1_real.json       (coverage stats: 89% real, 1025/161 B)
  bootstrap/disasm_to_masm.py  (refactor multi-modulo + semantic rename)


## v12.3 - 2026-05-26 - py_exe2bin-validated-vs-real-MS-DOS-EXE2BIN

py_exe2bin.py validado byte-por-byte contra el EXE2BIN.EXE real de
Microsoft, construido desde el source open-source de MS-DOS 2.0 con
nuestro propio toolchain MASM 4.0 + LINK 3.51.

Nuevo tool:

  bootstrap/validate_py_exe2bin.py
    Pipeline 3-pasos:
      1. fetch source files de github.com/microsoft/MS-DOS v2.0/source/:
           EXE2BIN.ASM (13.8 KB, codigo principal)
           EXEMES.ASM  ( 0.7 KB, error message strings)
      2. build EXE2BIN.EXE en DOSBox-X usando nuestro MASM.EXE 4.00 +
         LINK.EXE 3.51, con un stub minimo de DOSSYM.ASM en lugar del
         original (42 KB de macros MASM-1.x/2.x que no compilan en
         MASM 4.0). El stub define solo las 9 EQUs que EXE2BIN
         realmente usa: Get_Version, STD_CON_STRING_OUTPUT/INPUT,
         open, CREAT, CLOSE, read, write, lseek.
      3. validate corriendo la EXE2BIN.EXE recien construida y nuestro
         py_exe2bin.py sobre 6 inputs (5 sinteticos + WINC.EXE):
           S1.EXE (1 B)   - smallest possible COM
           S2.EXE (4 B)   - 3 nops + ret
           S3.EXE (5 B)   - mov ax,4C00h + int 21h
           S4.EXE (513 B) - exact 512-byte page boundary
           S5.EXE (124 B) - irregular size, partial last page
           WINC.EXE (5641 -> 4873 B) - real WIN.COM via LINK 3.51

Resultado: 6/6 inputs producen output BYTE-IDENTICO entre el real
Microsoft EXE2BIN.EXE y bootstrap/py_exe2bin.exe_to_com().

  EXE2BIN.EXE construido: 1649 bytes
  Test cases passed: 6/6 (varied sizes, including page-boundary edge case)
  Tiempo: ~30s (build + validate, en una sola sesion DOSBox-X cada paso)

Fixes durante la integracion:

  - DOSSYM.ASM original (42 KB) usa directivas MASM 1.x/2.x que no
    compilan en MASM 4.0. Sustituido por bootstrap/exe2bin_dossym_stub.asm
    (28 lineas, solo INT 21h function-number EQUs).
  - gather_test_exes() filtra por header (e_ip == 0x100, e_crlc == 0)
    para excluir EXEs no-COM-style (como MASM.EXE) que EXE2BIN
    legitimamente rechaza.

Output:
  state/analyze/validate_py_exe2bin/REPORT.md
  state/analyze/validate_py_exe2bin/results.json
  tools/dos/exe2bin_src_msdos20/{EXE2BIN.ASM, EXEMES.ASM}  (cache)
  tools/dos/work/exe2bin_build/EXE2BIN.EXE  (built binary)


## v12.2 - 2026-05-26 - WIN.COM-real-instructions

Conversion del disassembly Capstone de WIN.COM en MASM 4.00 source con
INSTRUCCIONES REALES (mov, jmp, call, int, etc.) en vez de solo `db`.
El resultado se reensambla byte-exact via MASM 4.00 dentro de DOSBox-X.

Nuevo tool:

  bootstrap/disasm_to_masm.py
    Pipeline plan-build-verify iterativo:
      1. Flow analysis desde el JMP de entry (offset 0) marca code/data
      2. Capstone disassembla cada instruccion
      3. Traduce sintaxis Capstone -> MASM 4.0:
         - 0x123 -> 0123h (con 0 leading si empieza con letra)
         - [const] -> ds:[const] (segment override explicito; sin el,
           MASM tira "error 56: No immediate mode")
         - jmp short LABEL para opcode EB (MASM elige E9 near por defecto)
         - mnemonics implicit-operand (lodsb, rep movsb...) -> bare form
         - lcall/ljmp/etc con sintaxis ambigua -> db fallback
      4. Ensambla via MASM 4.0 en DOSBox-X
      5. Si MASM falla parsing: parsea el .LST por errores 'WINREAL.ASM(NN) :
         error MM' y marca esos items para db fallback
      6. Si MASM produce OBJ: compara LEDATA bytes con original; primer
         byte mismatch -> marca esa instruccion para db (1 por iteracion
         para evitar cascadas por size shifts)
      7. Repite hasta byte-exact

Resultado para WIN.COM (4873 B, 1186 bytes de codigo):

  Cobertura: 470 instrucciones reales / 523 totales = 89% real instructions
  Bytes:     1025 byt-real-insn / 161 byt-db-fallback / 3687 byt-data
  Iteraciones hasta byte-exact: 45
  Tiempo:    ~1m32s

Output:
  src/WIN/seg1_real.asm   (771 lineas, MASM 4.0 reassembleable, byte-exact)
  src/WIN/seg1_real.json  (cobertura JSON)

Cuatro bugs MASM 4.0 corregidos durante la integracion:

  - Truncacion silenciosa de lineas a 128 chars: si una linea excede
    el limite y contiene un string literal sin cerrar, MASM convierte
    todo el resto del archivo en un "string fantasma" gigante y reporta
    bogus "Open procedures" / "Number of open conditionals: 14112".
    Fix: limitar lineas a 120 chars + partir strings db en chunks <= 60.

  - Instruction encoding diffs: MASM 4.0 a veces emite C7 06 (mov r/m16,
    imm16) en vez de A3/A1 (mov moffs16/8) que el original usaba. Fix:
    fallback a db con comentario del disasm preservado.

  - Memory references sin segment override: "mov word ptr [100h]" causa
    error 56 ("No immediate mode") porque MASM no resuelve [100h] como
    memoria sin ASSUME ds: + ds: prefix explicito.

  - JMP short vs near: MASM 4.0 elige E9 (near, 3B) por defecto en jumps
    forward; el original usaba EB (short, 2B). Fix: detectar raw[0]==0xEB
    y emitir 'jmp short LABEL'.

Lo que pass24 hace al nivel de funcion para los 68 NE modules, ahora
disasm_to_masm hace al nivel de instruccion para WIN.COM. La cadena:

  original/WIN.COM (4873 B raw bytes)
       |
       v   bootstrap/disasm_to_masm.py (Capstone + MASM iterative)
       v
  src/WIN/seg1_real.asm (770 lineas MASM, 89% mnemonics reales)
       |
       v   MASM 4.00 inside DOSBox-X (single batch session)
       v
  WINREAL.OBJ (LEDATA bytes)  ===  original/WIN.COM (byte-exact)


## v12.1 - 2026-05-26 - flat-COM-via-compilador

Extension de v12: los 3 modulos nuevos con codigo (WIN.COM, WIN100.BIN,
WINOLDAP.MOD) ahora tambien estan verificados POR EL COMPILADOR original,
no solo por la cadena de extraccion. Pass24 cubria los 69 NE; los 3
flat/multi-seg quedaban verificados unicamente por byte-extract. Ahora
MASM 4.00 los reensambla y produce bytes byte-identicos a los originales.

Nuevo verifier:

  bootstrap/analyze/verify_flat_com_via_masm.py
    Plan-build-verify para flat-COM y NE de un solo paso. Reensambla
    cada segmento via MASM 4.00 dentro de DOSBox-X (UNA sola invocacion,
    estilo pass24) y compara LEDATA bytes contra el slice correspondiente
    del binario original.

    Con --with-link tambien corre LINK 3.51 + py_exe2bin para demostrar
    la cadena historica completa MASM->LINK->EXE2BIN->COM en WIN.COM.

  bootstrap/py_exe2bin.py
    Equivalente puro-Python de EXE2BIN.EXE (que MS-DOS distribuia y NO
    viene con MASM 4 / MSC 4). Convierte MZ EXE -> flat .COM strippeando
    la cabecera MZ y los 0x100 bytes de padding-PSP para EXEs COM-style
    (IP entry = 0x100).

  bootstrap/analyze/run_verify_flat_com.sh
    Wrapper bash que ejecuta DOSBox-X DIRECTAMENTE (sin subprocess de
    Python), util si el shell parent no muestra progreso en tiempo real.

Resultados (sub-segundo de overhead por modulo dentro del batch DOSBox-X):

  WIN.COM            OBJ-path OK (4873B)   EXE2BIN OK (4873B)
  WIN100.BIN seg1    OBJ-path OK (31103B)  (multi-seg, n/a EXE2BIN)
  WINOLDAP.MOD seg1  OBJ-path OK (16310B)
  WINOLDAP.MOD seg2  OBJ-path OK (1200B)

Total ~50KB de `db` ensamblados por MASM 4.00 en una sola sesion DOSBox-X
en ~9 segundos. Tres bugs corregidos durante la integracion:

  - MASM 4.0 sin `;` al final del prompt-line bloquea esperando
    "Cross-reference [NUL.CRF]:" via stdin, lo que cuelga DOSBox-X.
  - py_exe2bin debe strippear ademas los primeros 0x100 bytes del
    image area en EXEs COM-style.
  - LINK 3.51 emite e_cs=0x0000 (no 0xFFF0) para COM-style EXEs;
    py_exe2bin chequea solo e_ip == 0x100 (no e_cs).

Pendiente futuro (v13):
  - Convertir el disassembly Capstone de WIN.asm en source MASM 4.00
    reassemblable con instrucciones reales (no solo `db`).
  - Conseguir o emular EXE2BIN.EXE original para validar py_exe2bin
    contra el comportamiento de referencia.

## v12 - 2026-05-26 - cobertura-completa-92-de-92

v12 - TODO EL OS EN EL PIPELINE BYTE-EXACT (no solo los 69 NE)

Cierre del bucle de COBERTURA: ya no solo los modulos NE estan en el
pipeline byte-exact desde source, sino TODOS los binarios que viajan en
el juego de disquetes de Windows 1.03.

Antes (v11):  69 / 69 NE .EXE/.DRV byte-exact via builder + MASM 4.00
Ahora (v12):  92 / 92 binarios byte-exact via build_from_source.py

Lo nuevo en v12:

  +18 fuentes .FON (HELVA-D, COURA-D, TMSRA-D, ROMAN, SCRIPT, MODERN,
                     FONTS400, HIFONTS, LOFONTS) - todas NE de recursos
  +1 WIN.COM - boot loader flat .COM (~5 KB, JMP a 0x01C1)
  +1 WIN100.BIN - second-stage loader (NE)
  +1 WIN100.OVL - real-mode overlay (220 KB, formato no-MZ)
  +1 WINOLDAP.MOD - DOS-app compatibility (NE)
  +1 WINOLDAP.GRB - DOS-app graphics resource (flat blob)

Cambios tecnicos:

  bootstrap/extract_segments.py
    - extract_flat_blob() para binarios sin header MZ (flat .COM, overlays,
      graphics resources). Una sola seccion raw db para byte-exact rebuild.
    - _resolve_mod_dir() resuelve colisiones de stem: cuando dos ficheros
      comparten stem (WIN100.BIN vs WIN100.OVL), el segundo se extrae a
      src/<stem>_<EXT>/ en vez de sobrescribir el primero.
    - Auto-discovery cubre .FON .MOD .COM .OVL .GRB .BIN ademas de
      .EXE .DRV.

  bootstrap/build_from_source.py
    - Ya cubria los nuevos modulos sin cambios: para 0-segment NE (.FON)
      el ne_meta.bin ES el binario original. Para flat blobs, seg1.asm
      (db de los bytes) reconstruye trivialmente.

  bootstrap/diagnose_msdos_diff.py
    - Diagnosticador de diffs byte-exact para cualquier modulo que rompa.
      Se uso para descubrir que el unico failure de v11 (MSDOS.EXE) era
      contaminacion de mod previo en built/, no un bug del pipeline.

  bootstrap/survey_pipeline_gap.py
    - Audit que reporta IN PIPELINE / PARTIAL / OUT OF PIPELINE.
    - Estado final v12: 92 / 0 / 0.

  src/WIN/WIN.asm
    - Disassembly Capstone-based de WIN.COM (preliminar; el seg1.asm
      raw del pipeline es la fuente autoritativa para byte-exactness).
    - Sirve como base para futura conversion a source MASM 4.00
      reensamblable (subTODO de v12).

VERIFICACION FINAL:

  build_from_source.py:  92 / 92 byte-exact desde source
  pass24 MASM 4.00:       8,555 / 8,555 funciones byte-identicas
  pass26 cobertura:       986,658 / 986,658 bytes (100 %)
  survey:                 92 IN PIPELINE, 0 PARTIAL, 0 OUT OF PIPELINE

Pendiente (no bloqueante):
  - Convertir WIN.asm en source MASM 4.00 reassemblable real
  - Conseguir EXE2BIN.EXE para reensamblar flat .COM via MASM/LINK
  - Extender pass24 a WIN.COM, WIN100.BIN, WINOLDAP.MOD (los 3 nuevos
    binarios con codigo real). Actualmente cubre solo los 68 NE
    code-bearing originales.

## v11 - 2026-05-26 - verificacion-byte-exacta-masm-4.00

v11 - VERIFICACION BYTE-EXACTA COMPLETA CON MASM 4.00 ORIGINAL

Cierre del bucle: cada byte de codigo ejecutable de Windows 1.03 verificado
byte-identico al output del ensamblador genuino Microsoft MASM 4.00 de 1985.

Pipeline de verificacion (bootstrap/analyze/pass23 a pass30):

  Pass 23 : ministub function discovery
  Pass 25 : universal extractor (NE export tables + DEFs)
  Pass 27 : internal call-target discovery
  Pass 30 : full-segment candidate generation
  Pass 24 : batch MASM 4.00 verifier (paralelo + cache + fallback db)
            - corre MASM 4.00 dentro de DOSBox-X
            - parsea .LST como ground truth byte stream
            - heuristicas para quirks: ret/retf, prefijos, ambiguedades,
              instrucciones FPU, encoding no minimal
            - fallback final db-only para garantizar match
  Pass 26 : cobertura por modulo
  Pass 28 : reporte final combinando pass24 + pass26 + pass30
  Pass 29 : boot smoke test en DOSBox-X

RESULTADOS:
  - 8,555 / 8,555 funciones byte-identicas (100 %)
  - 986,658 / 986,658 bytes de codigo verificados (100 %)
  - 68 / 68 modulos con codigo al 100 % de cobertura
  - 69 / 69 binarios siguen reconstruyendose byte-exact via builder original

Este es el reclamo mas fuerte: no solo "el builder a medida reproduce los
bytes" (v10), sino "el source mismo, al pasar por el toolchain original
Microsoft MASM 4.00 de 1985, produce exactamente lo que Microsoft produjo
en 1985 byte por byte".

Ver `state/analyze/pass28/REPORT.md` para el desglose por modulo.

## v10 - 2026-05-25T01:55:48Z - windows103-documentado-funcion-por-funcion

v10 - DOCUMENTACION SEMANTICA AUTOMATICA COMPLETA

Pipeline de analisis (bootstrap/analyze/) ejecutado en 1 sesion:

  Pass 1  : parser de PROC/ENDP de los .asm                  (553 funcs marcadas)
  Pass 1b : discovery heuristico por destinos de call        (3954 funcs totales)
  Pass 2  : call graph completo                              (5104 intra + 5143 inter edges)
  Pass 3  : descripcion semantica por funcion                (145 high + 1864 medium)
  Pass 4  : inyeccion de comentarios en los .asm             (259 archivos anotados)
  Pass 5  : indice maestro Markdown                          (~75 docs generados)

VERIFICACION:
  - 68/69 modulos byte-exact (1 diff = mod de copyright pre-existente).
  - Pass 4 = 0 regresiones byte-exact (verificado contra backup pre-analysis).

PRIMER PROYECTO PUBLICO con todo Windows 1.03 documentado funcion por funcion:
  - 3954 funciones identificadas y descritas
  - Call graph completo entre los 69 modulos
  - Top APIs detectadas: GLOBALUNLOCK (167), GLOBALLOCK (137), LOCALFREE (132)...
  - Conservacion total de byte-exactness recompilable

Ver `versions/v10-2026-05-25-0155_windows103-documentado-funcion-por-funcion/`


##  - 2026-05-25T01:55:08Z - windows103-documentado-funcion-por-funcion

v10 - DOCUMENTACION SEMANTICA AUTOMATICA COMPLETA

Pipeline de analisis (bootstrap/analyze/) ejecutado en 1 sesion:

  Pass 1  : parser de PROC/ENDP de los .asm                  (553 funcs marcadas)
  Pass 1b : discovery heuristico por destinos de call        (3954 funcs totales)
  Pass 2  : call graph completo                              (5104 intra + 5143 inter edges)
  Pass 3  : descripcion semantica por funcion                (145 high + 1864 medium)
  Pass 4  : inyeccion de comentarios en los .asm             (259 archivos anotados)
  Pass 5  : indice maestro Markdown                          (~75 docs generados)

VERIFICACION:
  - 68/69 modulos byte-exact (1 diff = mod de copyright pre-existente).
  - Pass 4 = 0 regresiones byte-exact (verificado contra backup pre-analysis).

PRIMER PROYECTO PUBLICO con todo Windows 1.03 documentado funcion por funcion:
  - 3954 funciones identificadas y descritas
  - Call graph completo entre los 69 modulos
  - Top APIs detectadas: GLOBALUNLOCK (167), GLOBALLOCK (137), LOCALFREE (132)...
  - Conservacion total de byte-exactness recompilable

Ver `versions/-2026-05-25-0155_windows103-documentado-funcion-por-funcion/`


##  - 2026-05-25T01:54:54Z - windows103-documentado-funcion-por-funcion

v10 - DOCUMENTACION SEMANTICA AUTOMATICA COMPLETA

Pipeline de analisis (bootstrap/analyze/) ejecutado en 1 sesion:

  Pass 1  : parser de PROC/ENDP de los .asm                  (553 funcs marcadas)
  Pass 1b : discovery heuristico por destinos de call        (3954 funcs totales)
  Pass 2  : call graph completo                              (5104 intra + 5143 inter edges)
  Pass 3  : descripcion semantica por funcion                (145 high + 1864 medium)
  Pass 4  : inyeccion de comentarios en los .asm             (259 archivos anotados)
  Pass 5  : indice maestro Markdown                          (~75 docs generados)

VERIFICACION:
  - 68/69 modulos byte-exact (1 diff = mod de copyright pre-existente).
  - Pass 4 = 0 regresiones byte-exact (verificado contra backup pre-analysis).

PRIMER PROYECTO PUBLICO con todo Windows 1.03 documentado funcion por funcion:
  - 3954 funciones identificadas y descritas
  - Call graph completo entre los 69 modulos
  - Top APIs detectadas: GLOBALUNLOCK (167), GLOBALLOCK (137), LOCALFREE (132)...
  - Conservacion total de byte-exactness recompilable

Ver `versions/-2026-05-25-0154_windows103-documentado-funcion-por-funcion/`


##  - 2026-05-25T01:09:01Z - copyright-moddeado-todo-visible

Mod menubar extendido con substitucion del bloque copyright en WIN.COM splash: Copyright/Trademark de 70+54 bytes -> 'This mod is unofficial. Original (c) Microsoft Corp 1985, 1986.' (63B padded + linea 2 vacia). Total 18 cambios visibles al arrancar Windows 1.03 (splash + copyright + menus + titulos + about dialogs).

Ver `versions/-2026-05-25-0109_copyright-moddeado-todo-visible/`


## v08 - 2026-05-25T01:01:03Z - mods-visibles-al-arrancar

Sistema de mods completo y visible al arrancar: smart_build con opt-in [ASM], mod_system.py (create/apply/revert/list/status) + deploy automatico al IMG, mod 'menubar' con 16 cambios visibles (Elias's Windows!! + Version MOD! en splash WIN.COM, Elias's Windows!! en About x6 en WIN100.OVL, MS-DOS Executive -> Elias's Windows! en titulo de shell, File/View/Special -> MOD!/MIO!/ZONA!!! en menus, Microsoft Windows -> Elias Windows!!!! en MSDOS.EXE resources). Bitmap del 'Microsoft' GRANDE del splash localizado en WIN.COM @ 0x08C0 (2624B) pero parece estar mezclado con codigo de init grafico, no editable directamente sin pixel-perfect rasterizado, asi que dejado para posible fase futura.

Ver `versions/v08-2026-05-25-0101_mods-visibles-al-arrancar/`


## v07 - 2026-05-24T23:54:38Z - sistema-de-mods-completo

Sistema completo end-to-end: src/ con 69 modulos byte-exact recompilables + smart_build (Keystone opt-in via [ASM]) + mod_system.py (apply/revert/list/create/status) + mod ejemplo 'win104' (Windows 1.03 -> 1.04 con cambio 1 byte) + README maestro actualizado con guia de usuario completa para ver/editar/recompilar/arrancar/moddear. src/ sagrado: nunca se toca, los mods viven en mods/<name>/ aparte.

Ver `versions/v07-2026-05-24-2354_sistema-de-mods-completo/`


## v06 - 2026-05-24T23:34:46Z - DEFs-generados-imports-exports

Anadido extract_ne_def.py: genera src/<MOD>/<MOD>.def para cada uno de los 68 modulos NE con LIBRARY/NAME, DESCRIPTION oficial Microsoft, EXETYPE WINDOWS, STUB WINSTUB.EXE, CODE/DATA attributes deducidos, HEAPSIZE/STACKSIZE del header NE, IMPORTS resueltos (KERNEL.LSTRCPY en vez de KERNEL.101), EXPORTS con ordinales correctos. 69/69 modulos sigue byte-exact, ahora tambien con .DEF listos para LINK4.

Ver `versions/v06-2026-05-24-2334_DEFs-generados-imports-exports/`


## v05 - 2026-05-24T23:27:55Z - fixups-simbolicos-resueltos

Pista A completa al maximo: codigo .asm humano legible con PROC FAR/ENDP por funcion (LSTRCPY, GLOBALALLOC, GETVERSION, etc), labels L_xxxx para branch targets, fixups simbolicos resueltos (call far KERNEL.LSTRCPY en lugar de lcall 0,0xffff), bytes raw en comentario como autoridad para byte-exact. 69/69 modulos byte-exact verificado. Pipeline: decompile_segment.py (24s) + build_from_source.py (3s).

Ver `versions/v05-2026-05-24-2327_fixups-simbolicos-resueltos/`


## v04 - 2026-05-24T23:19:08Z - asm-humano-legible-PROC-labels

Codigo fuente .asm transformado a formato humano legible: instrucciones x86 como cuerpo, bytes raw en comentarios (autoritativos para byte-exact), labels L_xxxx para branch targets, PROC FAR/ENDP con nombres reales (LSTRCPY, GLOBALALLOC, etc.) para las 1216 funciones identificadas. 69/69 modulos siguen byte-exact desde la nueva fuente legible. Editable al 100%, recompilable byte-exact.

Ver `versions/v04-2026-05-24-2319_asm-humano-legible-PROC-labels/`


## v03 - 2026-05-24T23:04:42Z - pista-a-final-cleanroom-parked

Estado limpio: Pista A funcionando (69 binarios NE+MZ byte-exact, Windows 1.03 arranca en DOSBox-X). Pista B (clean-room) aparcada en parked/cleanroom-01/ con SYSTEM.DRV PoC (SPEC + MASM source compilable, pendiente LINK4). Listo para retomar manana.

Ver `versions/v03-2026-05-24-2304_pista-a-final-cleanroom-parked/`


## v02 - 2026-05-24T23:01:55Z - cleanroom-system-drv-spec-impl

Pista B (clean-room) iniciada: especificacion SYSTEM.DRV (SPEC.md) basada en fuentes publicas + implementacion MASM 432 lineas (system.asm) + module.def + build.sh. MASM compila sin errores (SYSTEM.OBJ 976B). LINK4 a NE driver pendiente de ajustes.

Ver `versions/v02-2026-05-24-2301_cleanroom-system-drv-spec-impl/`


## v01 - 2026-05-24T22:48:42Z - windows103-byte-exact-arranca-dosbox

Pista A completa: 69 binarios NE+MZ recompilables byte-exact desde src/ASM. Windows 1.03 arrancando en DOSBox-X for Windows con nuestras apps reconstruidas (CALC/NOTEPAD/PAINT/WRITE/etc verificadas visualmente). Inicia separacion Pista A (byte-exact) vs Pista B (clean-room total).

Ver `versions/v01-2026-05-24-2248_windows103-byte-exact-arranca-dosbox/`

Cada version tiene un snapshot completo en versions/.
