#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
exec bash bootstrap/archive-version.sh \
  "DEFs-generados-imports-exports" \
  "Anadido extract_ne_def.py: genera src/<MOD>/<MOD>.def para cada uno de los 68 modulos NE con LIBRARY/NAME, DESCRIPTION oficial Microsoft, EXETYPE WINDOWS, STUB WINSTUB.EXE, CODE/DATA attributes deducidos, HEAPSIZE/STACKSIZE del header NE, IMPORTS resueltos (KERNEL.LSTRCPY en vez de KERNEL.101), EXPORTS con ordinales correctos. 69/69 modulos sigue byte-exact, ahora tambien con .DEF listos para LINK4."
