#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
exec bash bootstrap/archive-version.sh \
  "sistema-de-mods-completo" \
  "Sistema completo end-to-end: src/ con 69 modulos byte-exact recompilables + smart_build (Keystone opt-in via [ASM]) + mod_system.py (apply/revert/list/create/status) + mod ejemplo 'win104' (Windows 1.03 -> 1.04 con cambio 1 byte) + README maestro actualizado con guia de usuario completa para ver/editar/recompilar/arrancar/moddear. src/ sagrado: nunca se toca, los mods viven en mods/<name>/ aparte."
