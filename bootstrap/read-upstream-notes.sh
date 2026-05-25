#!/usr/bin/env bash
UP=/mnt/c/Users/Elias/CascadeProjects/modern-personality-agent/vendor/modern-personality-windows
echo "=== notes/ ==="
ls -la "$UP/notes/"
echo
for f in "$UP/notes/"*; do
  if [ -f "$f" ]; then
    echo "=== $(basename "$f") ==="
    head -80 "$f"
    echo
  fi
done

echo "=== purpose.txt ==="
cat "$UP/purpose.txt"
echo
echo "=== Function count.txt (kernel) ==="
cat "$UP/kernel/Function count.txt" 2>/dev/null
echo
echo "=== kernelsrc.txt ==="
cat "$UP/kernel/kernelsrc.txt" 2>/dev/null
