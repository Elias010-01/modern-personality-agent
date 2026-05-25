#!/usr/bin/env bash
set -uo pipefail
cd "$(dirname "$0")/.."

SDK_DIR="vendor/modern-personality-research/docs/WindowsSDK"
OUT_DIR="docs-cleanroom/sdk-text"
mkdir -p "$OUT_DIR"

echo "=== Extrayendo texto de PDFs del Windows 1.0 SDK ==="
for pdf in "$SDK_DIR"/*.pdf; do
  name=$(basename "$pdf" .pdf)
  echo "  $name.pdf -> $OUT_DIR/$name.txt"
  pdftotext -layout "$pdf" "$OUT_DIR/$name.txt" 2>/dev/null || echo "    WARN: pdftotext fallo en $name"
done

echo
echo "=== Resumen ==="
ls -lh "$OUT_DIR"/

echo
echo "=== Buscando funciones SYSTEM.DRV en los docs ==="
for fname in InquireSystem CreateSystemTimer KillSystemTimer EnableSystemTimers DisableSystemTimers InquireLongInts; do
  echo
  echo "--- $fname ---"
  grep -irE "(^|[^a-zA-Z])$fname([^a-zA-Z]|\$)" "$OUT_DIR" 2>/dev/null | head -5
done
