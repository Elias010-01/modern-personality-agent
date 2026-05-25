#!/usr/bin/env bash
set -e
export PATH="$HOME/.local/bin:$PATH"
LOG=/tmp/mpa-step.log
exec > "$LOG" 2>&1

REPO=/mnt/c/Users/Elias/CascadeProjects/modern-personality-agent
cd "$REPO"

echo "=== which uv just ==="
which uv just

echo "=== creating venv ==="
uv venv .venv --python 3.11

echo "=== installing package ==="
uv pip install --python .venv/bin/python -e tools[dev]

echo "=== venv check ==="
.venv/bin/python -c "import mpa, mpa.cli; print('mpa imported ok')"

echo "=== mpa --help via just ==="
.venv/bin/python -m mpa.cli --help | head -5

echo "=== DONE ==="
