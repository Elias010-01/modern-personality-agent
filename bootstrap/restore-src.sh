#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

# Encontrar el backup más reciente
BACKUP=$(ls -1t backups/windows103-recompilable-*.tar.gz 2>/dev/null | head -1)
if [[ -z "$BACKUP" ]]; then
  echo "ERROR: no hay backups en backups/" >&2
  exit 1
fi

echo "Restaurando src/ desde: $BACKUP"
# Solo restaurar src/, no tocar nada más
tar xzf "$BACKUP" --overwrite src/
echo "src/ restaurado"

# Verificar
COUNT=$(find src -name 'seg*.asm' | wc -l)
echo "  $COUNT ficheros seg*.asm presentes"

# Verificar que build sigue funcionando
echo
echo "Verificando build byte-exact..."
.venv/bin/python bootstrap/build_from_source.py 2>&1 | tail -3
