#!/usr/bin/env bash
# park-cleanroom.sh
#
# Mueve el trabajo en curso del clean-room (Pista B) a parked/cleanroom-NN/
# y deja el directorio principal limpio en estado Pista A (byte-exact que
# ya funciona en DOSBox-X).
#
# El trabajo NO se pierde: queda en parked/ con un README claro para
# retomarlo cuando se quiera.

set -uo pipefail  # NO -e
cd "$(dirname "$0")/.."

mkdir -p parked
# Numero auto-incremental
LAST=$(ls -1d parked/cleanroom-* 2>/dev/null | sed 's|.*-||' | sort -n | tail -1 || true)
NEXT=$(printf "%02d" $((${LAST:-0} + 1)))
PARK_DIR="parked/cleanroom-$NEXT"
mkdir -p "$PARK_DIR"

STAMP=$(date -u +%Y-%m-%dT%H:%M:%SZ)

echo "=== Aparcando clean-room en $PARK_DIR ==="

# Mover artefactos del clean-room
if [[ -d src-cleanroom ]]; then
  mv src-cleanroom "$PARK_DIR/src-cleanroom"
  echo "  movido: src-cleanroom -> $PARK_DIR/src-cleanroom"
fi

if [[ -d docs-cleanroom ]]; then
  mv docs-cleanroom "$PARK_DIR/docs-cleanroom"
  echo "  movido: docs-cleanroom -> $PARK_DIR/docs-cleanroom"
fi

if [[ -d built-cleanroom ]]; then
  mv built-cleanroom "$PARK_DIR/built-cleanroom"
  echo "  movido: built-cleanroom -> $PARK_DIR/built-cleanroom"
fi

# README para retomar
cat > "$PARK_DIR/RETOMAR.md" <<EOF
# Clean-room aparcado #$NEXT

**Aparcado**: $STAMP

## Donde se quedo

Estaba en plena PoC de SYSTEM.DRV clean-room (Pista B).
Compilo con MASM 4.0 pero LINK4 fallaba silenciosamente al producir el NE driver.

## Status de SYSTEM.DRV clean-room

- \`src-cleanroom/SYSTEM/system.asm\`: implementacion MASM 432 lineas, 6
  funciones exportadas + 2 helpers + ISR INT 8.
- \`src-cleanroom/SYSTEM/system.def\`: module definition para LINK4.
- \`src-cleanroom/SYSTEM/build.sh\`: pipeline MASM -> OBJ -> LINK4 (en DOSBox-X).
- \`docs-cleanroom/SYSTEM/SPEC.md\`: especificacion clean-room basada en
  fuentes publicas (NE entry table + SYSTEM.SYM upstream + arquitectura
  Win 1.0).
- \`docs-cleanroom/sdk-text/\`: texto extraido de los PDFs del Windows 1.0
  SDK oficial.

MASM compila SIN errores y produce SYSTEM.OBJ (976 bytes).
LINK4 corre pero no genera SYSTEM.DRV. Hay que ajustar el .DEF y/o
flags de LINK4.

## Para retomar

1. Mover este directorio de vuelta:
   \`\`\`bash
   mv parked/cleanroom-$NEXT/src-cleanroom .
   mv parked/cleanroom-$NEXT/docs-cleanroom .
   mv parked/cleanroom-$NEXT/built-cleanroom . 2>/dev/null
   \`\`\`

2. Atacar LINK4. Cosas a probar:
   - Comparar el .DEF nuestro con \`vendor/modern-personality-windows/kernel/KERNEL.def\`
     (especialmente las directivas \`SEGMENTS\` y \`STACK\`).
   - Probar LINK4 sin /MAP, sin /NOD.
   - Probar invocando LINK4 sin args y respondiendo en modo interactivo
     para ver el prompt.
   - Probar agregar segmento STACK al ASM o al DEF.
   - Si todo falla, generar SYSTEM.DRV via nuestro generador OMF directo
     (omf_direct.py) + ne_rebuild.py.

3. Una vez tengamos built-cleanroom/SYSTEM.DRV, sustituirlo en
   runtime/win103-built.img y arrancar Windows en DOSBox-X.

## Pista B - filosofia de continuacion

El usuario quiere clean-room TOTAL (0% Microsoft). Esto requiere ~180h
de trabajo de agente IA para los 1216 funciones. Empezar por modulos
pequenos (SYSTEM, MOUSE, KEYBOARD, COMM, SOUND) e ir subiendo.

Las APPS (CALC, NOTEPAD, etc) son mas faciles porque usan APIs publicos
documentadas en el Windows 1.0 SDK que tenemos en \`docs-cleanroom/sdk-text/\`.
EOF

# Snapshot tarball para historia
tar czf "$PARK_DIR/snapshot.tar.gz" -C "$PARK_DIR" . 2>/dev/null || true

echo
echo "=== Resumen ==="
ls -la "$PARK_DIR"
echo
echo "=== Estado del directorio principal (limpio en Pista A) ==="
ls -d src* docs* built* 2>/dev/null
echo
echo "  src/         (Pista A byte-exact)"
echo "  built/       (binarios reconstruidos byte-exact)"
echo "  versions/    (historico v01, v02, ...)"
echo "  runtime/     (DOSBox-X + IMG de Win 1.03 buildable)"
echo "  parked/      (trabajo aparcado: cleanroom-$NEXT)"
