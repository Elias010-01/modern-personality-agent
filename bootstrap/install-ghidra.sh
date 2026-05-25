#!/usr/bin/env bash
# Instala Ghidra en ~/opt/ghidra. Idempotente.

set -euo pipefail

VERSION="${GHIDRA_VERSION:-11.1.2}"
RELEASE_DATE="${GHIDRA_RELEASE_DATE:-20240709}"
TARGET="$HOME/opt/ghidra"

log()  { printf '\033[1;36m[ghidra]\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33m[ghidra]\033[0m %s\n' "$*"; }
err()  { printf '\033[1;31m[ghidra]\033[0m %s\n' "$*" >&2; }

if [[ -x "$TARGET/support/analyzeHeadless" ]]; then
  log "Ghidra ya instalado en $TARGET (skip)"
  "$TARGET/support/analyzeHeadless" -version 2>/dev/null || true
  exit 0
fi

mkdir -p "$HOME/opt"
cd "$HOME/opt"

URL="https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_${VERSION}_build/ghidra_${VERSION}_PUBLIC_${RELEASE_DATE}.zip"
ZIP="ghidra_${VERSION}.zip"

if [[ ! -f "$ZIP" ]]; then
  log "descargando Ghidra $VERSION…"
  curl -fL --retry 3 -o "$ZIP" "$URL"
fi

log "extrayendo…"
unzip -q -o "$ZIP"

# El zip extrae a ghidra_<VERSION>_PUBLIC/. Lo renombramos a ghidra/.
extracted="ghidra_${VERSION}_PUBLIC"
if [[ ! -d "$extracted" ]]; then
  err "no encuentro $extracted tras extraer"
  exit 1
fi
rm -rf "$TARGET"
mv "$extracted" "$TARGET"
rm -f "$ZIP"

if [[ ! -x "$TARGET/support/analyzeHeadless" ]]; then
  err "analyzeHeadless no es ejecutable; algo salió mal"
  exit 1
fi

log "Ghidra $VERSION instalado en $TARGET"
"$TARGET/support/analyzeHeadless" -version 2>/dev/null || true
