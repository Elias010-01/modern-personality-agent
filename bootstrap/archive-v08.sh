#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
exec bash bootstrap/archive-version.sh \
  "mods-visibles-al-arrancar" \
  "Sistema de mods completo y visible al arrancar: smart_build con opt-in [ASM], mod_system.py (create/apply/revert/list/status) + deploy automatico al IMG, mod 'menubar' con 16 cambios visibles (Elias's Windows!! + Version MOD! en splash WIN.COM, Elias's Windows!! en About x6 en WIN100.OVL, MS-DOS Executive -> Elias's Windows! en titulo de shell, File/View/Special -> MOD!/MIO!/ZONA!!! en menus, Microsoft Windows -> Elias Windows!!!! en MSDOS.EXE resources). Bitmap del 'Microsoft' GRANDE del splash localizado en WIN.COM @ 0x08C0 (2624B) pero parece estar mezclado con codigo de init grafico, no editable directamente sin pixel-perfect rasterizado, asi que dejado para posible fase futura."
