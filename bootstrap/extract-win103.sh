#!/usr/bin/env bash
# Extrae los binarios NE de los disquetes de Windows 1.03 a original/.
# Asume que mswin103.zip ya está descargado en /tmp/win103-dl/.
set -euo pipefail

REPO=/mnt/c/Users/Elias/CascadeProjects/modern-personality-agent
DL=/tmp/win103-dl
SRC="$DL/Microsoft Windows 1.03 (5.25)"
DST="$REPO/original"

mkdir -p "$DST"

echo "=== contenido de cada disquete ==="
for img in "$SRC"/Disk*.img; do
  name=$(basename "$img")
  echo "--- $name ---"
  mdir -i "$img" :: 2>&1 | head -50 || true
done

echo
echo "=== extrayendo binarios NE a original/ ==="
# Para cada disquete, copia todos los .EXE y .DRV (que es lo que tiene NE format)
for img in "$SRC"/Disk*.img; do
  name=$(basename "$img")
  # Lista los nombres de fichero
  mdir -i "$img" :: 2>/dev/null | awk '
    /^[A-Z0-9~_]+ +[A-Z0-9]+ +[0-9]+/ { name=$1; ext=$2; if (ext=="EXE"||ext=="DRV"||ext=="FON") print name"."ext }
  ' | while read -r f; do
    [ -z "$f" ] && continue
    echo "  $name -> $f"
    mcopy -n -i "$img" "::$f" "$DST/$f" 2>&1 || echo "    (skip $f)"
  done
done

echo
echo "=== resultado final en original/ ==="
ls -la "$DST"
