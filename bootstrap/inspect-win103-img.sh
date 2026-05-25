#!/usr/bin/env bash
set -uo pipefail
cd "$(dirname "$0")/.."

IMG="vendor/win103-disks/extracted/Windows 1.03.IMG"
echo "=== Tamano de la imagen ==="
ls -lh "$IMG"

echo
echo "=== Contenido FAT12 ==="
mdir -i "$IMG" :: | head -60
