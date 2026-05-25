#!/usr/bin/env bash
set -uo pipefail
cd "$(dirname "$0")/.."

IMG="runtime/win103-built.img"
if [[ ! -f "$IMG" ]]; then
  echo "ERROR: $IMG no existe" >&2
  exit 1
fi

echo "=== Contenido del IMG ==="
mdir -i "$IMG" :: | head -35

echo
echo "=== Apps NUESTRAS en la IMG (sha256 IMG vs built/) ==="
TMP=$(mktemp -d)
APPS="CALC.EXE NOTEPAD.EXE PAINT.EXE CALENDAR.EXE CARDFILE.EXE CLIPBRD.EXE CLOCK.EXE CONTROL.EXE REVERSI.EXE SPOOLER.EXE TERMINAL.EXE WRITE.EXE"
for app in $APPS; do
  mcopy -i "$IMG" "::$app" "$TMP/" 2>/dev/null || { echo "  [MISS] $app  no esta en la IMG"; continue; }
  SHA_IMG=$(sha256sum "$TMP/$app" 2>/dev/null | cut -c1-16)
  SHA_BUILT=$(sha256sum "built/$app" 2>/dev/null | cut -c1-16)
  if [[ "$SHA_IMG" == "$SHA_BUILT" ]]; then
    echo "  [OK]   $app  sha=$SHA_IMG  (NUESTRA build/$app esta en la IMG)"
  else
    echo "  [DIFF] $app  img=$SHA_IMG built=$SHA_BUILT"
  fi
done

echo
echo "=== AUTOEXEC.BAT ==="
mcopy -i "$IMG" "::AUTOEXEC.BAT" "$TMP/AUTO" 2>/dev/null && cat "$TMP/AUTO"

rm -rf "$TMP"
