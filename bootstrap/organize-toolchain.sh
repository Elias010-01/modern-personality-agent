#!/usr/bin/env bash
# Reorganiza los raw_ dirs en MSC/BIN, MSC/INCLUDE, MSC/LIB y extrae MASM5.1.
set -euo pipefail

T=$HOME/opt/legacy-toolchain/c
DL=/tmp/mpa-toolchain-dl

echo "=== contenido por raw_ ==="
for d in "$T/MSC"/raw_*; do
  echo "--- $(basename $d) ---"
  find "$d" -type f -printf "%P\n" | sort | head -40
  echo
done

echo "=== extrayendo MASM5.1 disquetes ==="
mkdir -p "$T/MASM"
for img in "$DL"/masm51_extracted/disk*.img; do
  name=$(basename "$img" .img)
  echo "--- $name ---"
  mdir -i "$img" :: 2>&1 | head -30 || true
done

echo "=== copiando MASM 5.1 a $T/MASM ==="
for img in "$DL"/masm51_extracted/disk*.img; do
  # Copia todos los ficheros a un subdir por disco
  name=$(basename "$img" .img)
  mkdir -p "$T/MASM/raw_$name"
  mdir -i "$img" :: 2>/dev/null | awk '
    /^[A-Z0-9~_]+ +[A-Z0-9]+ +[0-9]+/ { print $1"."$2 }
  ' | while read -r f; do
    [ -z "$f" ] && continue
    mcopy -n -i "$img" "::$f" "$T/MASM/raw_$name/$f" 2>/dev/null || true
  done
done

echo "=== contenido masm ==="
find "$T/MASM" -type f -printf "%P\n" | sort | head -60
