#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
export PATH="$HOME/.local/bin:$PATH"
export VIRTUAL_ENV="$(pwd)/.venv"
uv pip install keystone-engine
.venv/bin/python -c "import keystone; print('keystone version:', keystone.__version__)"
