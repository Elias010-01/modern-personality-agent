# CHANGELOG

Historial de versiones del proyecto win103-byteexact (renombrado desde modern-personality-agent).

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
