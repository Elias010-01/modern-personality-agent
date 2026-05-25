#!/usr/bin/env bash
set -uo pipefail
cd "$(dirname "$0")/.."

echo "=== Imagenes de Win 1.0 Alpha ==="
for img in vendor/modern-personality-research/win1.0alpha/Disk0?.img; do
  echo
  echo "--- $img ---"
  mdir -i "$img" :: 2>/dev/null | head -30
done

echo
echo "=== Imagenes de Win 1.0 DR5 disk1 ==="
ls vendor/modern-personality-research/win1.0dr5/disk1/

echo
echo "=== MS-DOS booteables candidatos ==="
ls vendor/modern-personality-research/mdos4/'dos 3.1'/ 2>/dev/null
echo
ls vendor/modern-personality-research/mdos4/112685/ 2>/dev/null
