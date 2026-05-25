#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

# Crea una imagen booteable basada en Windows 1.03.IMG pero con NUESTROS
# .EXE/.DRV reconstruidos desde fuente (built/) sustituyendo los originales.
#
# Necesario porque Windows 1.03 requiere ficheros que NO están en built/:
#   - COMMAND.COM (DOS)
#   - WIN.COM (loader de Windows; no es NE)
#   - WIN100.BIN / WIN100.OVL (core de Windows; no son NE)
#   - WIN.INI (config)
#   - PIF/ directorio
#   - Fonts (no son NE, no las reconstruimos)
#   - DOTHIS.TXT, README.TXT, AUTOEXEC.BAT
# Esos los heredamos del IMG original. Lo que SI reconstruimos
# (KERNEL.EXE, GDI.EXE, USER.EXE, ...) se sobreescribe con los nuestros.

SRC_IMG="vendor/win103-disks/extracted/Windows 1.03.IMG"
OUT_IMG="runtime/win103-built.img"

if [[ ! -f "$SRC_IMG" ]]; then
  echo "ERROR: $SRC_IMG no existe. Ejecuta bootstrap/download-win103-disks.sh" >&2
  exit 1
fi

mkdir -p runtime
cp -f "$SRC_IMG" "$OUT_IMG"

echo "=== Contenido inicial del IMG (clon de Windows 1.03.IMG) ==="
mdir -i "$OUT_IMG" :: | tail -20

# Mapeo: nombres en built/ -> nombre dentro del IMG
# El IMG usa nombres 8.3 todos en mayuscula. Nuestros built/ ya estan asi.
echo
echo "=== Sustituyendo .EXE/.DRV con nuestros built/ ==="
COUNT=0
for f in built/*.EXE built/*.DRV; do
  [[ -f "$f" ]] || continue
  name=$(basename "$f")
  # Verificar si ese archivo existe en la IMG (con cualquier extension)
  if mdir -i "$OUT_IMG" "::$name" >/dev/null 2>&1; then
    # Eliminar y volver a copiar
    mdel -i "$OUT_IMG" "::$name" 2>/dev/null || true
    mcopy -i "$OUT_IMG" -o "$f" "::$name"
    COUNT=$((COUNT+1))
    if [[ $COUNT -le 10 ]]; then
      echo "  sustituido: $name"
    fi
  fi
done
echo "  ... ($COUNT ficheros sustituidos total)"

# Sobreescribir AUTOEXEC.BAT para que arranque WIN directamente
echo
echo "=== Configurando AUTOEXEC.BAT para arrancar Windows automaticamente ==="
TMP_AUTO=$(mktemp)
cat > "$TMP_AUTO" <<'EOF'
@echo off
echo Bienvenido. Arrancando Windows 1.03 con binarios RECONSTRUIDOS desde fuente...
echo  - 69 modulos NE+MZ recompilados byte-exact desde src/ASM
echo  - Ver bootstrap/build_from_source.py
echo.
WIN
EOF
# Convertir LF a CRLF (DOS)
sed -i 's/$/\r/' "$TMP_AUTO"
mdel -i "$OUT_IMG" "::AUTOEXEC.BAT" 2>/dev/null || true
mcopy -i "$OUT_IMG" -o "$TMP_AUTO" "::AUTOEXEC.BAT"
rm -f "$TMP_AUTO"

echo
echo "=== Verificando que los .EXE/.DRV en la IMG son los nuestros ==="
# Spot check: extraer KERNEL.EXE de la IMG y comparar sha256 con built/KERNEL.EXE
TMP=$(mktemp -d)
mcopy -i "$OUT_IMG" "::KERNEL.EXE" "$TMP/" 2>/dev/null
mcopy -i "$OUT_IMG" "::GDI.EXE" "$TMP/" 2>/dev/null
mcopy -i "$OUT_IMG" "::USER.EXE" "$TMP/" 2>/dev/null
for f in KERNEL.EXE GDI.EXE USER.EXE; do
  SHA_IMG=$(sha256sum "$TMP/$f" 2>/dev/null | cut -c1-16)
  SHA_BUILT=$(sha256sum "built/$f" 2>/dev/null | cut -c1-16)
  SHA_ORIG=$(sha256sum "original/$f" 2>/dev/null | cut -c1-16)
  if [[ "$SHA_IMG" == "$SHA_BUILT" && "$SHA_BUILT" == "$SHA_ORIG" ]]; then
    echo "  [OK] $f en IMG = built/ = original/  (sha=$SHA_IMG)"
  else
    echo "  [DIFF] $f  IMG=$SHA_IMG  built=$SHA_BUILT  original=$SHA_ORIG"
  fi
done
rm -rf "$TMP"

echo
echo "=== IMG final ==="
ls -lh "$OUT_IMG"
echo
echo "=== Contenido final del IMG ==="
mdir -i "$OUT_IMG" :: | tail -30
