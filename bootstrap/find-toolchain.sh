#!/usr/bin/env bash
# Busca en archive.org items con MSC 4.0 y MASM 4.0
set -euo pipefail

echo "=== buscando Microsoft C 4 ==="
curl -s "https://archive.org/advancedsearch.php?q=%28title%3A%22Microsoft+C%22+OR+title%3A%22MS+C%22%29+AND+mediatype%3Asoftware&fl%5B%5D=identifier&fl%5B%5D=title&fl%5B%5D=downloads&output=json&rows=40" \
  | jq -r '.response.docs[] | select(.title | test("4\\.0|4\\.00|MSC\\s*4|C\\s+Compiler\\s+4"; "i")) | "\(.downloads // 0)\t\(.identifier)\t\(.title)"' \
  | sort -rn | head -10

echo
echo "=== buscando MASM 4 ==="
curl -s "https://archive.org/advancedsearch.php?q=%28title%3A%22MASM%22+OR+title%3A%22Macro+Assembler%22%29+AND+mediatype%3Asoftware&fl%5B%5D=identifier&fl%5B%5D=title&fl%5B%5D=downloads&output=json&rows=40" \
  | jq -r '.response.docs[] | select(.title | test("4\\.0|4\\.00|MASM\\s*4"; "i")) | "\(.downloads // 0)\t\(.identifier)\t\(.title)"' \
  | sort -rn | head -10

echo
echo "=== buscando FreeDOS ==="
curl -s "https://archive.org/advancedsearch.php?q=title%3A%22FreeDOS%22+AND+mediatype%3Asoftware&fl%5B%5D=identifier&fl%5B%5D=title&fl%5B%5D=downloads&output=json&rows=20" \
  | jq -r '.response.docs[] | "\(.downloads // 0)\t\(.identifier)\t\(.title)"' \
  | sort -rn | head -10
