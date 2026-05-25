#!/usr/bin/env bash
set -euo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent
echo "=== state/ ==="
ls -la state/ 2>&1 || echo "(no existe)"
echo
echo "=== cfg.paths.ghidra_proj ==="
./.venv/bin/python <<'PY'
from pathlib import Path
from mpa.config import load_config
cfg = load_config(Path("."))
print("ghidra_proj =", cfg.paths.ghidra_proj)
print("logs        =", cfg.paths.logs)
print("ghidra_proj exists:", cfg.paths.ghidra_proj.exists())
print("logs exists:", cfg.paths.logs.exists())
PY
echo
echo "=== buscando .gpr (proyecto Ghidra) en posibles paths ==="
find /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent -name '*.gpr' 2>/dev/null | head -5
find /home/elias -name 'KERNEL.gpr' 2>/dev/null | head -5
find /tmp -name '*.gpr' 2>/dev/null | head -5
