#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
exec bash bootstrap/archive-version.sh \
  "fixups-simbolicos-resueltos" \
  "Pista A completa al maximo: codigo .asm humano legible con PROC FAR/ENDP por funcion (LSTRCPY, GLOBALALLOC, GETVERSION, etc), labels L_xxxx para branch targets, fixups simbolicos resueltos (call far KERNEL.LSTRCPY en lugar de lcall 0,0xffff), bytes raw en comentario como autoridad para byte-exact. 69/69 modulos byte-exact verificado. Pipeline: decompile_segment.py (24s) + build_from_source.py (3s)."
