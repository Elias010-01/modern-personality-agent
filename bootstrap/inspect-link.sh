#!/usr/bin/env bash
WORK=$(ls -dt /tmp/mpa-kernel-* | head -1)
echo "WORK=$WORK"
echo "=== LINK.LOG ==="
cat "$WORK/OUT/LINK.LOG" 2>/dev/null
echo
echo "=== files in OUT ==="
ls -la "$WORK/OUT/"
