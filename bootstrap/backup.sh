#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p backups
STAMP=$(date +%Y%m%d-%H%M)
NAME="windows103-recompilable-$STAMP.tar.gz"
tar --warning=no-file-changed --warning=no-file-removed -czf "backups/$NAME" \
    src/ \
    built/ \
    state/mpa.db \
    PROGRESS.md \
    bootstrap/ \
    tools/ \
    config.toml \
    targets.toml \
    2>/dev/null || true
ls -lh "backups/$NAME"
echo "sha256:"
sha256sum "backups/$NAME"
echo
echo "Contenido (resumen):"
tar tzf "backups/$NAME" | wc -l | xargs echo "  archivos totales:"
echo "  src/ módulos:    $(tar tzf "backups/$NAME" | grep -c '^src/[^/]*/$')"
echo "  built/ binarios: $(tar tzf "backups/$NAME" | grep -cE '^built/[A-Z0-9_]+\.(EXE|DRV)$')"
