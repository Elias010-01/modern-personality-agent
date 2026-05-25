#!/usr/bin/env bash
# Wrapper para llamar archive-version.sh con args fijos (evita problemas
# de quoting al pasar args desde PowerShell -> bash).
set -euo pipefail
cd "$(dirname "$0")/.."
exec bash bootstrap/archive-version.sh \
  "windows103-byte-exact-arranca-dosbox" \
  "Pista A completa: 69 binarios NE+MZ recompilables byte-exact desde src/ASM. Windows 1.03 arrancando en DOSBox-X for Windows con nuestras apps reconstruidas (CALC/NOTEPAD/PAINT/WRITE/etc verificadas visualmente). Inicia separacion Pista A (byte-exact) vs Pista B (clean-room total)."
