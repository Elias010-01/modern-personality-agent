#!/usr/bin/env bash
# deploy-to-img.sh - Copia los binarios de built/ a la imagen del
# disquete runtime/win103-built.img para que DOSBox-X los cargue.
#
# Por defecto copia TODOS los binarios. Con --only MOD1 MOD2 copia solo esos.
#
# Hace backup de la imagen antes de modificar: runtime/win103-built.img.bak
set -euo pipefail
cd "$(dirname "$0")/.."

IMG="runtime/win103-built.img"
BUILT="built"
BAK="runtime/win103-built.img.bak"

if [ ! -f "$IMG" ]; then
  echo "ERROR: imagen $IMG no existe"
  exit 1
fi

# Backup imagen si no existe ya
if [ ! -f "$BAK" ]; then
  echo "Creando backup inicial de la imagen: $BAK"
  cp "$IMG" "$BAK"
fi

# Lista de binarios a copiar
if [ "${1:-}" = "--only" ]; then
  shift
  CANDIDATES="$@"
  echo "Copiando solo: $CANDIDATES"
else
  # Por defecto, los .EXE/.DRV que ESTAN en el disquete
  CANDIDATES=""
  for f in CALC CALENDAR CARDFILE CLIPBRD CLOCK CONTROL MSDOS NOTEPAD PAINT \
           REVERSI SPOOLER TERMINAL WRITE; do
    CANDIDATES="$CANDIDATES $f.EXE"
  done
fi

n_copied=0
for f in $CANDIDATES; do
  src="$BUILT/$f"
  if [ ! -f "$src" ]; then
    echo "  WARN: $src no existe, saltando"
    continue
  fi
  # Comprobar si difiere del original (= ha sido moddeado)
  orig="original/$f"
  if [ -f "$orig" ] && cmp -s "$src" "$orig"; then
    # Identico al original; copiar igualmente (no hace dano)
    diff_tag=""
  else
    diff_tag=" [MODDED]"
  fi
  # Copiar via mtools (fuerza, sin preservar timestamps porque MS-DOS FAT no lo hace bien)
  mcopy -i "$IMG" -o "$src" "::$f" 2>/dev/null
  echo "  [OK] $f$diff_tag"
  n_copied=$((n_copied + 1))
done

echo
echo "=== $n_copied binarios copiados a $IMG ==="
echo
echo "Arrancar Windows 1.03 con los binarios:"
echo "  Windows: Start-Process \"runtime\\dosbox-x-win\\mingw-build\\mingw-sdl2\\dosbox-x.exe\" -ArgumentList \"-conf\",\"runtime\\dosbox-win103.conf\""
echo
echo "Restaurar imagen original (sin mods):"
echo "  cp $BAK $IMG"
