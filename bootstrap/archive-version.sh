#!/usr/bin/env bash
# archive-version.sh
#
# Snapshot la version actual del proyecto a versions/<vNN-fecha-slug>/.
#
# Estructura por version:
#   versions/v05-2026-05-25-0044_my-slug/
#     META.txt          version, fecha, mensaje
#     CHANGES.md        que cambio respecto a la version anterior (a rellenar)
#     state-mpa.db      snapshot de la DB
#     src.tar.gz        snapshot completo del codigo fuente
#     built.tar.gz      snapshot de los binarios reconstruidos
#     progress.md       snapshot del PROGRESS.md
#
# Uso:
#   bash bootstrap/archive-version.sh "slug-corto" "Mensaje explicativo"
#
# Ejemplo:
#   bash bootstrap/archive-version.sh "windows103-arranca-dosbox" \
#     "Windows 1.03 arranca en DOSBox-X con nuestros built/ apps byte-exact"

set -uo pipefail  # NO -e: queremos seguir aunque comandos secundarios fallen
cd "$(dirname "$0")/.."

SLUG="${1:-snapshot}"
MSG="${2:-(sin mensaje)}"

mkdir -p versions

# Calcular numero de version auto-incremental
LAST=$(ls -1d versions/v*/ 2>/dev/null | sed 's|.*/v||;s|-.*||' | sort -n | tail -1)
# Forzar base 10 (evita interpretar 08/09 como octal)
NEXT=$((10#${LAST:-0} + 1))
NEXT_PAD=$(printf "v%02d" "$NEXT")

STAMP=$(date -u +%Y-%m-%d-%H%M)
ISO=$(date -u +%Y-%m-%dT%H:%M:%SZ)
DIR="versions/${NEXT_PAD}-${STAMP}_${SLUG}"
mkdir -p "$DIR"

echo "=== Archivando version $NEXT_PAD ==="
echo "  directorio: $DIR"
echo "  fecha: $ISO"
echo "  mensaje: $MSG"

# META
cat > "$DIR/META.txt" <<EOF
version:    $NEXT_PAD
slug:       $SLUG
timestamp:  $ISO
message:    $MSG
git_branch: $(git -C . branch --show-current 2>/dev/null || echo "(no git)")
git_commit: $(git -C . rev-parse --short HEAD 2>/dev/null || echo "(no git)")
host:       $(hostname)
user:       $(whoami)

stats:
  src_modules:   $(ls -1 src/ 2>/dev/null | wc -l)
  built_files:   $(ls -1 built/*.EXE built/*.DRV 2>/dev/null | wc -l)
  db_functions:  $(sqlite3 state/mpa.db "select count(*) from functions" 2>/dev/null || echo "?")
  db_matched:    $(sqlite3 state/mpa.db "select count(*) from functions where status='matched'" 2>/dev/null || echo "?")
EOF

# Snapshot DB
[[ -f state/mpa.db ]] && cp -f state/mpa.db "$DIR/state-mpa.db"

# Snapshot PROGRESS.md
[[ -f PROGRESS.md ]] && cp -f PROGRESS.md "$DIR/progress.md"

# Snapshot src/ (tarball comprimido)
if [[ -d src ]]; then
  tar czf "$DIR/src.tar.gz" --warning=no-file-changed src/ 2>/dev/null || true
fi

# Snapshot src-cleanroom/ (si existe)
if [[ -d src-cleanroom ]]; then
  tar czf "$DIR/src-cleanroom.tar.gz" --warning=no-file-changed src-cleanroom/ 2>/dev/null || true
fi

# Snapshot built/ (tarball comprimido)
if [[ -d built ]]; then
  tar czf "$DIR/built.tar.gz" --warning=no-file-changed built/ 2>/dev/null || true
fi

# CHANGES.md stub para rellenar manualmente o por el agente
PREV=$(ls -1d versions/v*/ 2>/dev/null | grep -v "$NEXT_PAD" | sort | tail -1)
cat > "$DIR/CHANGES.md" <<EOF
# Cambios en $NEXT_PAD ($STAMP)

**Mensaje**: $MSG

**Anterior**: ${PREV:-"(esta es la primera version)"}

## Que se logro en esta version

(rellenar)

## Comandos de reproduccion

\`\`\`bash
# (rellenar con los comandos clave usados)
\`\`\`

## Verificacion

(como confirmamos que esta version funciona)
EOF

# Update CHANGELOG.md root
CHANGELOG="CHANGELOG.md"
if [[ ! -f "$CHANGELOG" ]]; then
  cat > "$CHANGELOG" <<EOF
# CHANGELOG

Historial de versiones del proyecto modern-personality-agent.
Cada version tiene un snapshot completo en versions/.
EOF
fi
TMP_LOG=$(mktemp)
{
  head -3 "$CHANGELOG"
  echo
  echo "## $NEXT_PAD - $ISO - $SLUG"
  echo
  echo "$MSG"
  echo
  echo "Ver \`$DIR/\`"
  echo
  tail -n +4 "$CHANGELOG"
} > "$TMP_LOG"
mv "$TMP_LOG" "$CHANGELOG"

# Resumen
echo
echo "=== $NEXT_PAD archivado ==="
ls -lh "$DIR/"
echo
echo "Total versiones:"
ls -1d versions/v*/ 2>/dev/null
echo
echo "CHANGELOG.md actualizado"
