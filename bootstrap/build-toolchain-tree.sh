#!/usr/bin/env bash
# Construye ~/opt/legacy-toolchain/c/ con MSC 4.0 + MASM 5.1.
# DOSBox-X lo monta con MOUNT C, sin necesidad de imagen FAT12.
set -euo pipefail

DL=/tmp/mpa-toolchain-dl
TARGET=$HOME/opt/legacy-toolchain/c
mkdir -p "$TARGET" "$DL"
cd "$DL"

# ---- 1. Descargar MSC 4.0 ----------------------------------------------------
echo "=== descargando MSC 4.0 (6 disquetes) ==="
rm -f msc40.done
MSC_FILES=(
  "C COMPILER.img"
  "C INC LIB S.img"
  "C LIB L.img"
  "C LIB M C.img"
  "C STARTUP.img"
  "C UTILITIES.img"
)
for f in "${MSC_FILES[@]}"; do
  out="msc40_$(echo "$f" | tr ' ' '_')"
  if [ -f "$out" ] && [ "$(stat -c%s "$out")" -ge 300000 ]; then
    echo "  $f -> $out (ya descargado)"
    continue
  fi
  # url-encode espacios → %20
  url_f=$(echo "$f" | sed 's/ /%20/g')
  echo "  descargando $f → $out"
  curl -fsSL -o "$out" "https://archive.org/download/ms-c400-compiler/${url_f}"
  ls -la "$out"
done

# ---- 2. Descargar MASM 5.1 ---------------------------------------------------
echo
echo "=== descargando MASM 5.1 ==="
if [ ! -f masm51.7z ] || [ "$(stat -c%s masm51.7z 2>/dev/null || echo 0)" -lt 100000 ]; then
  # Listo los ficheros del item primero
  curl -s 'https://archive.org/metadata/microsoft-macro-assembler-5.1-5.25.-7z' \
    | jq -r '.files[] | "\(.name)\t\(.size // "?")"' | head -20
  # Descarga el .7z principal
  primary=$(curl -s 'https://archive.org/metadata/microsoft-macro-assembler-5.1-5.25.-7z' \
    | jq -r '.files[].name' | grep -iE '\.(7z|zip)$' | head -1)
  echo "  primary archive: $primary"
  url_p=$(echo "$primary" | sed 's/ /%20/g')
  curl -fsSL -o masm51.7z "https://archive.org/download/microsoft-macro-assembler-5.1-5.25.-7z/${url_p}"
  ls -la masm51.7z
fi

# ---- 3. Extraer disquetes MSC 4.0 ----------------------------------------------
echo
echo "=== extrayendo .img de MSC 4.0 ==="
mkdir -p "$TARGET/MSC/BIN" "$TARGET/MSC/INCLUDE" "$TARGET/MSC/LIB" "$TARGET/MSC/STARTUP"

extract_img() {
  local img="$1" dst="$2"
  echo "  $img → $dst"
  mkdir -p "$dst"
  # Lista el contenido
  mdir -i "$img" :: 2>/dev/null | awk '
    /^[A-Z0-9~_]+ +[A-Z0-9]+ +[0-9]+/ { print $1"."$2 }
  ' | while read -r fname; do
    [ -z "$fname" ] && continue
    mcopy -n -i "$img" "::$fname" "$dst/$fname" 2>/dev/null || true
  done
  # Subdirectorios (recursivo simple)
  mdir -i "$img" :: 2>/dev/null | awk '/<DIR>/ {print $1}' | while read -r sub; do
    [ -z "$sub" ] && continue
    [ "$sub" = "." ] || [ "$sub" = ".." ] && continue
    mkdir -p "$dst/$sub"
    mdir -i "$img" "::$sub" 2>/dev/null | awk '
      /^[A-Z0-9~_]+ +[A-Z0-9]+ +[0-9]+/ { print $1"."$2 }
    ' | while read -r f2; do
      [ -z "$f2" ] && continue
      mcopy -n -i "$img" "::$sub/$f2" "$dst/$sub/$f2" 2>/dev/null || true
    done
  done
}

extract_img msc40_C_COMPILER.img    "$TARGET/MSC/raw_compiler"
extract_img msc40_C_INC_LIB_S.img   "$TARGET/MSC/raw_inc_lib_s"
extract_img msc40_C_LIB_L.img       "$TARGET/MSC/raw_lib_l"
extract_img msc40_C_LIB_M_C.img     "$TARGET/MSC/raw_lib_mc"
extract_img msc40_C_STARTUP.img     "$TARGET/MSC/raw_startup"
extract_img msc40_C_UTILITIES.img   "$TARGET/MSC/raw_utilities"

# ---- 4. Extraer MASM 5.1 -------------------------------------------------------
echo
echo "=== extrayendo MASM 5.1 ==="
mkdir -p "$TARGET/MASM"
if [ -f masm51.7z ]; then
  cd "$DL"
  mkdir -p masm51_extracted
  7z x -y -omasm51_extracted masm51.7z > /dev/null
  echo "  contenido extraído:"
  find masm51_extracted -maxdepth 3 -type f | head -20
fi

echo
echo "=== resumen ==="
ls -la "$TARGET/MSC/"
echo
echo "Faltan pasos posteriores: organizar los raw_ dirs en MSC/BIN, MSC/INCLUDE, MSC/LIB."
