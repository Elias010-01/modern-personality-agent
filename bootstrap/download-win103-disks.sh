#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

mkdir -p vendor/win103-disks
cd vendor/win103-disks

if [[ ! -f "Windows 1.0x Floppy Disks.zip" ]]; then
  echo "Descargando Windows 1.0x Floppy Disks (2.3 MB)..."
  curl -L -o "Windows 1.0x Floppy Disks.zip" \
    "https://archive.org/download/windows-1.0-floppy-imgs/Windows%201.0x%20Floppy%20Disks.zip"
fi

echo "Tamano: $(ls -lh 'Windows 1.0x Floppy Disks.zip' | awk '{print $5}')"

if [[ ! -d extracted ]]; then
  mkdir -p extracted
  cd extracted
  unzip -o "../Windows 1.0x Floppy Disks.zip"
  cd ..
fi

echo
echo "=== Contenido ==="
find extracted -type f | head -30
