#!/usr/bin/env bash
# Auditoria del proyecto para preparar subida a GitHub
set -uo pipefail
cd "$(dirname "$0")/.."

echo "=== TAMANOS POR DIRECTORIO TOP-LEVEL ==="
du -sh */ 2>/dev/null | sort -h

echo
echo "=== TAMANO TOTAL DEL REPO (sin .venv ni .git) ==="
du -sh --exclude='.venv' --exclude='.git' . 2>/dev/null

echo
echo "=== ARCHIVOS GRANDES (>500K) ==="
find . -type f -size +500k 2>/dev/null \
    | grep -v -E "(\.venv/|\.git/|backups/|versions/|runtime/|original/|built/|src/.+\.asm)" \
    | xargs -I{} du -h {} 2>/dev/null | sort -h | tail -30

echo
echo "=== ARCHIVOS PERDIDOS EN ROOT (deberian estar en logs/ o ser borrados) ==="
ls -la *.txt *.log 2>/dev/null | awk '{printf "%10s  %s\n", $5, $NF}'

echo
echo "=== CONTEO DE ARCHIVOS POR DIRECTORIO ==="
for d in */; do
    n=$(find "$d" -type f 2>/dev/null | wc -l)
    s=$(du -sh "$d" 2>/dev/null | awk '{print $1}')
    printf "  %-25s %5d archivos  %s\n" "$d" "$n" "$s"
done
