#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
exec bash bootstrap/archive-version.sh \
  "copyright-moddeado-todo-visible" \
  "Mod menubar extendido con substitucion del bloque copyright en WIN.COM splash: Copyright/Trademark de 70+54 bytes -> 'This mod is unofficial. Original (c) Microsoft Corp 1985, 1986.' (63B padded + linea 2 vacia). Total 18 cambios visibles al arrancar Windows 1.03 (splash + copyright + menus + titulos + about dialogs)."
