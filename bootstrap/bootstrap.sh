#!/usr/bin/env bash
# bootstrap.sh — orquesta la instalación completa de prereqs en WSL.
#
# Uso (desde WSL, dentro de la raíz del repo):
#   bash bootstrap/bootstrap.sh [--skip-toolchain]
#
# Idempotente: salta los pasos que ya están hechos.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$REPO_ROOT"

log()  { printf '\033[1;36m[bootstrap]\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33m[bootstrap]\033[0m %s\n' "$*"; }
err()  { printf '\033[1;31m[bootstrap]\033[0m %s\n' "$*" >&2; }

if [[ "$(uname -s)" != "Linux" ]]; then
  err "Este script está pensado para WSL/Linux. Detectado: $(uname -s)"
  exit 1
fi

SKIP_TOOLCHAIN=0
for arg in "$@"; do
  case "$arg" in
    --skip-toolchain) SKIP_TOOLCHAIN=1 ;;
    *) err "argumento desconocido: $arg"; exit 2 ;;
  esac
done

# ---- 1. Paquetes del sistema -------------------------------------------------
log "instalando paquetes apt…"
sudo apt-get update -qq
sudo apt-get install -y --no-install-recommends \
  build-essential pkg-config git curl ca-certificates \
  python3 python3-venv python3-pip \
  ripgrep jq unzip xz-utils \
  openjdk-17-jdk-headless \
  libsdl2-dev libsdl2-net-dev libpcap-dev \
  autoconf automake libtool

# ---- 2. uv (gestor de venvs) ------------------------------------------------
if ! command -v uv >/dev/null 2>&1; then
  log "instalando uv…"
  curl -LsSf https://astral.sh/uv/install.sh | sh
  export PATH="$HOME/.local/bin:$PATH"
fi

# ---- 3. just ------------------------------------------------------------------
if ! command -v just >/dev/null 2>&1; then
  log "instalando just…"
  curl -fsSL https://just.systems/install.sh \
    | bash -s -- --to "$HOME/.local/bin"
fi

# ---- 4. Python venv del repo --------------------------------------------------
log "creando venv Python…"
"$HOME/.local/bin/uv" venv .venv --python 3.11 || uv venv .venv --python 3.11
"$HOME/.local/bin/uv" pip install -e tools[dev] || uv pip install -e tools[dev]

# ---- 5. Repos upstream --------------------------------------------------------
log "clonando upstream…"
mkdir -p vendor
clone_or_pull() {
  local url="$1"; local dst="$2"
  if [[ -d "$dst/.git" ]]; then
    git -C "$dst" pull --ff-only || warn "pull falló en $dst (continuamos)"
  else
    git clone --depth=50 "$url" "$dst"
  fi
}
clone_or_pull https://github.com/starfrost013/modern-personality-windows.git  vendor/modern-personality-windows
clone_or_pull https://github.com/starfrost013/modern-personality-research.git vendor/modern-personality-research
clone_or_pull https://github.com/starfrost013/modern-personality-runtime.git  vendor/modern-personality-runtime

# Symlink desde la KB hacia el repo de research, para que ripgrep lo encuentre
mkdir -p kb/data
ln -sfn "$REPO_ROOT/vendor/modern-personality-research" kb/data/research

# ---- 6. Ghidra ----------------------------------------------------------------
bash "$SCRIPT_DIR/install-ghidra.sh"

# ---- 7. DOSBox-X --------------------------------------------------------------
bash "$SCRIPT_DIR/install-dosbox-x.sh"

# ---- 8. Toolchain legacy ------------------------------------------------------
if [[ "$SKIP_TOOLCHAIN" -eq 1 ]]; then
  warn "saltando toolchain legacy (--skip-toolchain). Lo necesitarás para 'just verify'."
else
  bash "$SCRIPT_DIR/install-legacy-toolchain.sh" || {
    warn "toolchain legacy falló. Revisa bootstrap/install-legacy-toolchain.sh"
    warn "Puedes continuar sin él para tareas que no requieran 'just verify'."
  }
fi

log "bootstrap completo. Ejecuta:"
log "  source .venv/bin/activate  (o usa 'just' que ya lo activa)"
log "  just doctor"
