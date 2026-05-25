#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

mkdir -p runtime/dosbox-x-win
cd runtime/dosbox-x-win

# Obtener URL del asset Windows del ultimo release de DOSBox-X
echo "Buscando ultimo release de DOSBox-X..."
API_JSON=$(curl -sL https://api.github.com/repos/joncampbell123/dosbox-x/releases/latest)
echo "Tag: $(echo "$API_JSON" | grep -oE '"tag_name": *"[^"]+"' | head -1)"

# Sacar todas las URLs de browser_download_url
URLS=$(echo "$API_JSON" | grep -oE '"browser_download_url": *"[^"]+"' | sed 's/.*: *"//;s/"$//')
echo
echo "Assets disponibles:"
echo "$URLS" | sed 's|.*/||' | head -20

# Preferir mingw64 portable (build Windows 64-bit oficial sin instalacion)
WIN_URL=$(echo "$URLS" | grep -E 'mingw64.*portable.*\.zip$' | head -1)
if [[ -z "$WIN_URL" ]]; then
  WIN_URL=$(echo "$URLS" | grep -E 'mingw64.*\.zip$' | head -1)
fi
if [[ -z "$WIN_URL" ]]; then
  WIN_URL=$(echo "$URLS" | grep -iE '(win64|windows).*\.zip$' | head -1)
fi

if [[ -z "$WIN_URL" ]]; then
  echo "ERROR: no se encontro asset Windows en el ultimo release" >&2
  exit 1
fi

echo
echo "Descargando: $WIN_URL"
ZIP_NAME=$(basename "$WIN_URL")

if [[ ! -f "$ZIP_NAME" ]]; then
  curl -L --progress-bar -o "$ZIP_NAME" "$WIN_URL"
fi
ls -lh "$ZIP_NAME"

echo
echo "Extrayendo..."
unzip -o -q "$ZIP_NAME"

echo
echo "=== Contenido extraido ==="
find . -maxdepth 3 -type f -name 'dosbox-x.exe' 2>/dev/null
echo "---"
ls -la
