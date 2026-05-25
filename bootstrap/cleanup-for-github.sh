#!/usr/bin/env bash
# Limpia archivos sueltos en root antes de la subida a GitHub.
# Mueve los .txt/.log de sesiones a logs/scratch/ (que estara en .gitignore).
set -uo pipefail
cd "$(dirname "$0")/.."

mkdir -p logs/scratch

echo "=== Moviendo .txt sueltos del root a logs/scratch/ ==="
for f in batch-test.txt bisect.txt build.txt bulk-all.txt bulk-test.txt \
         candidates.txt compare.txt debug.txt import.txt import2.txt import3.txt \
         link.txt linkdetail.txt match2.txt notes.txt out.txt rebuild.txt \
         step1.txt submatch.txt analyze.log check.log; do
    if [ -f "$f" ]; then
        mv "$f" "logs/scratch/$f"
        echo "  moved: $f"
    fi
done

echo
echo "=== Resultado: archivos sueltos restantes en root ==="
ls *.txt *.log 2>/dev/null || echo "  (ninguno)"

echo
echo "=== DONE ==="
