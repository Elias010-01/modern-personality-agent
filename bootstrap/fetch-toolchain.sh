#!/usr/bin/env bash
# Descarga los componentes para construir la imagen DOS toolchain:
#   - Microsoft C Compiler 4.0 (Archive.org)
#   - MASM 4.0 (Archive.org, búsqueda)
#   - FreeDOS 1.2 (base bootable)
#
# Resultado en /tmp/mpa-toolchain-dl/
set -euo pipefail

DL=/tmp/mpa-toolchain-dl
mkdir -p "$DL"
cd "$DL"

echo "=== 1. Buscando MASM 4 / Macro Assembler en Archive.org ==="
curl -s 'https://archive.org/advancedsearch.php?q=MASM+mediatype%3Asoftware&fl%5B%5D=identifier&fl%5B%5D=title&fl%5B%5D=downloads&output=json&rows=40' \
  | jq -r '.response.docs[] | "\(.downloads // 0)\t\(.identifier)\t\(.title)"' \
  | sort -rn | head -25

echo
echo "=== 2. Buscando Macro Assembler explícitamente ==="
curl -s 'https://archive.org/advancedsearch.php?q=%22Macro+Assembler%22+mediatype%3Asoftware&fl%5B%5D=identifier&fl%5B%5D=title&fl%5B%5D=downloads&output=json&rows=40' \
  | jq -r '.response.docs[] | "\(.downloads // 0)\t\(.identifier)\t\(.title)"' \
  | sort -rn | head -25

echo
echo "=== 3. Buscando Microsoft Assembler 4 ==="
curl -s 'https://archive.org/advancedsearch.php?q=%22Microsoft+Assembler%22+mediatype%3Asoftware&fl%5B%5D=identifier&fl%5B%5D=title&fl%5B%5D=downloads&output=json&rows=40' \
  | jq -r '.response.docs[] | "\(.downloads // 0)\t\(.identifier)\t\(.title)"' \
  | sort -rn | head -25

echo
echo "=== 4. Descargando MSC 4.0 (ms-c400-compiler) ==="
if [ ! -f msc40.done ]; then
  curl -s 'https://archive.org/metadata/ms-c400-compiler' | jq -r '.files[] | "\(.name)\t\(.size // "?")"' | head -30
  echo "--- descarga ---"
  for f in $(curl -s 'https://archive.org/metadata/ms-c400-compiler' | jq -r '.files[].name' | grep -iE '\.(zip|7z|img)$' | head -5); do
    echo "  -> $f"
    curl -sL -o "msc40_${f}" "https://archive.org/download/ms-c400-compiler/${f}" || echo "  (fail $f)"
  done
  ls -la msc40_* 2>&1 | head
  touch msc40.done
fi

echo
echo "=== 5. Descargando FreeDOS 1.2 base ==="
if [ ! -f fd12.done ]; then
  curl -s 'https://archive.org/metadata/FD12FULL' | jq -r '.files[] | "\(.name)\t\(.size // "?")"' | head -20
  touch fd12.done
fi

echo
echo "=== resultado en $DL ==="
ls -la "$DL"
