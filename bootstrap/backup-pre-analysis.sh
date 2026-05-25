#!/usr/bin/env bash
# Backup robusto antes de la sesion de analisis semantico
set -euo pipefail

cd "$(dirname "$0")/.."

STAMP=$(date -u +%Y%m%d-%H%M)
BK="backups/pre-analysis-${STAMP}"

echo "=== Backup pre-analysis ==="
echo "Target: $BK"
mkdir -p "$BK"

for d in src built state mods; do
    if [ -d "$d" ]; then
        echo "  - copying $d/ ..."
        cp -r "$d" "$BK/$d"
    fi
done

du -sh "$BK"
echo "=== DONE ==="
echo "$BK" > backups/LATEST_PRE_ANALYSIS.txt
