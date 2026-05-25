#!/usr/bin/env bash
# make-mod-win104.sh
# Crea el mod "win104" que cambia la version reportada por GETVERSION:
#   Windows 1.03 -> Windows 1.04
#
# Modifica un solo byte en KERNEL/seg1.asm:
#   B8 01 03  ->  B8 01 04
set -euo pipefail
cd "$(dirname "$0")/.."

MOD_DIR="mods/win104"
PATCH_FILE="$MOD_DIR/patches/KERNEL/seg1.asm"

mkdir -p "$(dirname "$PATCH_FILE")"

# Awk script: replace 'B8 01 03' line ONLY between GETVERSION PROC and GETVERSION ENDP
awk '
  /^GETVERSION[[:space:]]+PROC/ { inblock = 1 }
  /^GETVERSION[[:space:]]+ENDP/ { inblock = 0 }
  {
    if (inblock && /mov.*ax,.*0x301.*; B8 01 03/) {
      sub(/mov     ax, 0x301/,             "mov     ax, 0x401")
      sub(/; B8 01 03/,                    "; B8 01 04")
    }
    print
  }
' src/KERNEL/seg1.asm > "$PATCH_FILE"

# Verificar que se hizo el cambio en el bloque GETVERSION
if awk '
  /^GETVERSION[[:space:]]+PROC/ { inblock = 1 }
  /^GETVERSION[[:space:]]+ENDP/ { inblock = 0 }
  inblock && /B8 01 04/ { found = 1 }
  END { exit !found }
' "$PATCH_FILE"; then
  echo "[OK] Patch creado: $PATCH_FILE"
  echo "  Cambio: B8 01 03 -> B8 01 04 (Windows 1.03 -> Windows 1.04) dentro de GETVERSION"
  echo
  echo "  Sample de GETVERSION moddeada:"
  awk '/^GETVERSION[[:space:]]+PROC/,/^GETVERSION[[:space:]]+ENDP/' "$PATCH_FILE" | head -10 | sed 's/^/    /'
else
  echo "[ERR] No se pudo aplicar el patch en GETVERSION"
  exit 1
fi

# Update meta.toml
cat > "$MOD_DIR/meta.toml" <<'EOF'
name = "win104"
title = "Windows 1.04 (cambia version reportada por GetVersion)"
author = "modern-personality-agent"
description = """
Modifica KERNEL.GETVERSION para que reporte version 1.04 (AX=0x0401)
en lugar de 1.03 (AX=0x0301). Apps que llaman GetVersion veran "1.04".

Es un cambio de UN SOLO BYTE (B8 01 03 -> B8 01 04).
Demostracion del sistema de mods sin tocar src/.
"""
EOF

echo
echo "Aplicar el mod con:"
echo "  python3 bootstrap/mod_system.py apply win104"
