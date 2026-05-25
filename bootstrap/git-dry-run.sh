#!/usr/bin/env bash
# Dry-run de git: inicia repo local, anade todo segun .gitignore, y muestra resumen.
# No hace push. Solo dice que SE SUBIRIA si hicieras git push.
set -uo pipefail
cd "$(dirname "$0")/.."

# Limpiar git previo si existe (es un dry-run)
rm -rf .git

git init -b main -q
git add -A

NFILES=$(git ls-files | wc -l)
SIZE_KB=$(git ls-files -z | xargs -0 du -b 2>/dev/null | awk '{s+=$1} END {print s/1024}')

echo "================================================================"
echo "  GIT DRY-RUN - QUE SE SUBIRIA A GITHUB"
echo "================================================================"
printf "  Archivos:        %d\n" "$NFILES"
printf "  Tamano total:    %.1f MB (%.0f KB)\n" "$(echo "$SIZE_KB/1024" | bc -l)" "$SIZE_KB"
echo
echo "  Por directorio:"
for d in $(git ls-files | awk -F/ '{print $1}' | sort -u); do
    n=$(git ls-files | grep -c "^${d}\b")
    sz=$(git ls-files | grep "^${d}\b" | xargs -I{} du -b {} 2>/dev/null | awk '{s+=$1} END {print s/1024}')
    printf "    %-25s %5d archivos  %8.0f KB\n" "$d/" "$n" "${sz:-0}"
done
echo
echo "  Verificacion de binarios sensibles (deberian ser CERO):"
N_BIN=$(git ls-files | grep -iE "\.(exe|drv|dll|ovl|com)$" | wc -l)
N_NEMETA=$(git ls-files | grep -E "ne_meta\.bin$" | wc -l)
N_RELOC=$(git ls-files | grep -E "\.reloc\.bin$" | wc -l)
N_TAR=$(git ls-files | grep -E "\.(tar\.gz|tgz|zip)$" | wc -l)
printf "    .EXE/.DRV/.DLL/.OVL/.COM:   %d  %s\n" "$N_BIN" "$([ $N_BIN -eq 0 ] && echo '[OK]' || echo '[!!! REVISAR]')"
printf "    ne_meta.bin:                %d  %s\n" "$N_NEMETA" "$([ $N_NEMETA -eq 0 ] && echo '[OK]' || echo '[!!! REVISAR]')"
printf "    .reloc.bin:                 %d  %s\n" "$N_RELOC" "$([ $N_RELOC -eq 0 ] && echo '[OK]' || echo '[!!! REVISAR]')"
printf "    .tar.gz / .zip:             %d  %s\n" "$N_TAR" "$([ $N_TAR -eq 0 ] && echo '[OK]' || echo '[!!! REVISAR]')"
echo
echo "  Top 15 archivos mas grandes:"
git ls-files -z | xargs -0 du -h 2>/dev/null | sort -h | tail -15 | sed 's/^/    /'
echo
echo "  Limpiando .git temporal del dry-run..."
rm -rf .git
echo "  DONE. No se ha hecho commit ni push."
