#!/usr/bin/env bash
# Compila e instala DOSBox-X en ~/opt/dosbox-x.
#
# Razones para compilar desde fuente vez de usar paquete:
# - Los repos de Ubuntu suelen llevar DOSBox vanilla, no DOSBox-X.
# - Vamos a aplicar parches (hook de framebuffer dump) en el futuro.
#
# Idempotente: si ya hay binario, sale.

set -euo pipefail

TARGET="$HOME/opt/dosbox-x"
DOSBOX_X_REF="${DOSBOX_X_REF:-dosbox-x-v2024.10.05}"  # tag estable

log()  { printf '\033[1;36m[dosbox-x]\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33m[dosbox-x]\033[0m %s\n' "$*"; }
err()  { printf '\033[1;31m[dosbox-x]\033[0m %s\n' "$*" >&2; }

if [[ -x "$TARGET/bin/dosbox-x" ]]; then
  log "DOSBox-X ya compilado en $TARGET (skip)"
  exit 0
fi

mkdir -p "$HOME/src" "$TARGET/bin"
cd "$HOME/src"

if [[ ! -d dosbox-x ]]; then
  log "clonando dosbox-x ($DOSBOX_X_REF)…"
  git clone --depth=1 --branch "$DOSBOX_X_REF" https://github.com/joncampbell123/dosbox-x.git || \
    git clone https://github.com/joncampbell123/dosbox-x.git
fi
cd dosbox-x
git fetch --tags
git checkout "$DOSBOX_X_REF" 2>/dev/null || warn "tag $DOSBOX_X_REF no encontrado, usando HEAD"

log "configurando…"
./build-debug || ./autogen.sh
# build-debug ya hace ./configure y make. Si no, fallback manual:
if [[ ! -x "src/dosbox-x" ]]; then
  ./configure --enable-core-inline --prefix="$TARGET"
  make -j"$(nproc)"
fi

log "instalando en $TARGET…"
make install || {
  # Si make install no funciona en build-debug mode, copiamos a mano:
  cp src/dosbox-x "$TARGET/bin/"
}

if [[ ! -x "$TARGET/bin/dosbox-x" ]]; then
  err "compilación falló: $TARGET/bin/dosbox-x no existe"
  exit 1
fi

log "DOSBox-X instalado: $($TARGET/bin/dosbox-x --version 2>&1 | head -1)"
