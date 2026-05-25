#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
exec bash bootstrap/archive-version.sh \
  "asm-humano-legible-PROC-labels" \
  "Codigo fuente .asm transformado a formato humano legible: instrucciones x86 como cuerpo, bytes raw en comentarios (autoritativos para byte-exact), labels L_xxxx para branch targets, PROC FAR/ENDP con nombres reales (LSTRCPY, GLOBALALLOC, etc.) para las 1216 funciones identificadas. 69/69 modulos siguen byte-exact desde la nueva fuente legible. Editable al 100%, recompilable byte-exact."
