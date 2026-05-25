#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
exec bash bootstrap/archive-version.sh \
  "pista-a-final-cleanroom-parked" \
  "Estado limpio: Pista A funcionando (69 binarios NE+MZ byte-exact, Windows 1.03 arranca en DOSBox-X). Pista B (clean-room) aparcada en parked/cleanroom-01/ con SYSTEM.DRV PoC (SPEC + MASM source compilable, pendiente LINK4). Listo para retomar manana."
