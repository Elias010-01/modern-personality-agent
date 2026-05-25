#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
export PATH="$HOME/.local/bin:$PATH"
export VIRTUAL_ENV="$(pwd)/.venv"
uv pip install capstone
.venv/bin/python -c "import capstone; print('capstone version:', capstone.__version__)"
