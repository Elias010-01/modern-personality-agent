#!/usr/bin/env bash
# Prepara la imagen DOS con MSC 4.0 y MASM 4.0 instalados.
#
# Esta es la parte más delicada del bootstrap porque MSC 4.0 / MASM 4.0 son
# software propietario de Microsoft de 1985-1986. NO se distribuyen aquí.
#
# El repo upstream `modern-personality-runtime` tiene una guía y, posiblemente,
# scripts para construir una imagen de disco DOS con el toolchain. Este script:
#
#   1. Comprueba que ese repo está clonado en vendor/.
#   2. Delega la construcción de la imagen al runtime, si tiene un script tal.
#   3. Si no hay script, deja una guía clara al usuario y sale con error.
#
# La imagen final tiene que vivir en ~/opt/legacy-toolchain/dos.img.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

TARGET_DIR="$HOME/opt/legacy-toolchain"
TARGET_IMG="$TARGET_DIR/dos.img"
RUNTIME_REPO="$REPO_ROOT/vendor/modern-personality-runtime"

log()  { printf '\033[1;36m[toolchain]\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33m[toolchain]\033[0m %s\n' "$*"; }
err()  { printf '\033[1;31m[toolchain]\033[0m %s\n' "$*" >&2; }

if [[ -f "$TARGET_IMG" ]]; then
  log "imagen ya existe en $TARGET_IMG (skip)"
  exit 0
fi

mkdir -p "$TARGET_DIR"

if [[ ! -d "$RUNTIME_REPO" ]]; then
  err "Falta vendor/modern-personality-runtime."
  err "Ejecuta primero bash bootstrap/bootstrap.sh (clona los upstream)."
  exit 1
fi

# Heurística: buscar un script de construcción de imagen en el runtime.
build_script=""
for candidate in \
    "$RUNTIME_REPO/scripts/build-dos-image.sh" \
    "$RUNTIME_REPO/build/build-image.sh" \
    "$RUNTIME_REPO/Makefile" \
  ; do
  if [[ -f "$candidate" ]]; then
    build_script="$candidate"
    break
  fi
done

if [[ -z "$build_script" ]]; then
  cat >&2 <<EOF

[toolchain] No encuentro un script automático para construir la imagen DOS
            con MSC 4.0 / MASM 4.0 en el repo upstream
            modern-personality-runtime.

            Tienes que prepararla a mano. Pasos resumidos:

  1. Consigue copias legítimas de:
     - MS-DOS 3.x (sirve cualquier versión 3.x o 5.x)
     - Microsoft C 4.00
     - Microsoft Macro Assembler 4.00
     (museos/archive.org tienen los floppies originales)

  2. Crea una imagen FAT12/16 montable por DOSBox-X:

       qemu-img create -f raw $TARGET_IMG 32M
       mkfs.msdos -F 16 $TARGET_IMG
       sudo mount -o loop $TARGET_IMG /mnt/dos
       # Instala DOS, copia C400/MASM en C:\\MSC y C:\\MASM
       # (lo más fácil: arrancar DOSBox-X con la imagen, instalar interactivamente)
       sudo umount /mnt/dos

  3. Verifica:

       PATH=C:\\MSC\\BIN;C:\\MASM
       SET INCLUDE=C:\\MSC\\INCLUDE
       SET LIB=C:\\MSC\\LIB
       CL /c HOLA.C    # debe producir HOLA.OBJ

  4. Coloca la imagen en: $TARGET_IMG

  5. Reintenta: just smoke

EOF
  exit 1
fi

log "delegando construcción al runtime: $build_script"
case "$build_script" in
  *Makefile)
    make -C "$(dirname "$build_script")" image
    ;;
  *.sh)
    bash "$build_script"
    ;;
esac

if [[ ! -f "$TARGET_IMG" ]]; then
  warn "el runtime ejecutó pero la imagen no apareció en $TARGET_IMG."
  warn "Cópiala manualmente desde donde la haya dejado el runtime."
  exit 1
fi

log "imagen lista en $TARGET_IMG"
