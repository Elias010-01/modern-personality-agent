#!/usr/bin/env bash
set -euo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent

./.venv/bin/python <<'PY'
import sqlite3
c = sqlite3.connect("state/mpa.db")
n = c.execute("UPDATE functions SET status='pending' WHERE status='in_progress'").rowcount
c.commit()
print("reset rows:", n)
PY

# Borra cualquier workspace previo del intento anterior (incompleto)
rm -rf workspaces/KERNEL/*

echo "=== next ==="
./.venv/bin/python -m mpa.cli next

echo
echo "=== contenido del workspace generado ==="
ls -la workspaces/KERNEL/
for d in workspaces/KERNEL/*/; do
  echo
  echo ">>> $d"
  ls -la "$d"
  echo "--- context.md ---"
  cat "$d/context.md"
  echo "--- disasm.txt (head -50) ---"
  head -50 "$d/disasm.txt"
done
