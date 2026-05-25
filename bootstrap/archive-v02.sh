#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
exec bash bootstrap/archive-version.sh \
  "cleanroom-system-drv-spec-impl" \
  "Pista B (clean-room) iniciada: especificacion SYSTEM.DRV (SPEC.md) basada en fuentes publicas + implementacion MASM 432 lineas (system.asm) + module.def + build.sh. MASM compila sin errores (SYSTEM.OBJ 976B). LINK4 a NE driver pendiente de ajustes."
