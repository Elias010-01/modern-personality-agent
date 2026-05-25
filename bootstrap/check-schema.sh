#!/usr/bin/env bash
cd "$(dirname "$0")/.."
echo "=== schema ==="
sqlite3 state/mpa.db ".schema functions"
echo
echo "=== sample SYSTEM ==="
sqlite3 -header state/mpa.db "select * from functions where module='SYSTEM' limit 10;"
