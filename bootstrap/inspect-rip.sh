#!/usr/bin/env bash
F=/mnt/c/Users/Elias/CascadeProjects/modern-personality-agent/vendor/modern-personality-windows/kernel/RIP.c.asm
echo "=== file ==="
file "$F"
echo
echo "=== first 256 bytes ==="
head -c 256 "$F" | xxd
echo
echo "=== non-ASCII chars (sorted unique, first 20) ==="
LC_ALL=C grep -oP '[\x80-\xff]+' "$F" | sort -u | head -20
echo
echo "=== line count, byte count ==="
wc -l "$F"; wc -c "$F"
