#!/usr/bin/env bash
# Test mínimo: ¿se ejecuta autoexec? ¿se ejecuta CL?
set -euo pipefail

W=$(mktemp -d -t mpa-dbg-XXXX)
T=$HOME/opt/legacy-toolchain/c
echo "work=$W"

# Test 1: marker desde autoexec
cat > "$W/dosbox.conf" << EOF
[autoexec]
MOUNT C "$T"
MOUNT D "$W"
D:
echo MARKER1 > MARKER1.TXT
PATH=C:\\MSC\\BIN;C:\\MASM
SET INCLUDE=C:\\MSC\\INCLUDE
SET LIB=C:\\MSC\\LIB
SET TMP=D:\\
echo MARKER2 > MARKER2.TXT
copy SMOKE.C SMOKE_CP.C
echo POSTCOPY > MARKER3.TXT
CL /c /AM /Gs /Zl SMOKE.C > CL_OUT.TXT 2>&1
echo POSTCL > MARKER4.TXT
exit
EOF

cat > "$W/SMOKE.C" << 'EOF'
int mpa_smoke(int x) { return x + 1; }
EOF
sed -i 's/$/\r/' "$W/SMOKE.C"

echo "=== running dosbox-x ==="
timeout 30 dosbox-x -conf "$W/dosbox.conf" -silent -fastlaunch -nogui -nomenu -exit 2>&1 | tail -3
echo "exit=$?"

echo
echo "=== contents of $W ==="
ls -la "$W"
echo
for m in MARKER1.TXT MARKER2.TXT MARKER3.TXT MARKER4.TXT CL_OUT.TXT SMOKE.OBJ SMOKE_CP.C; do
  if [ -f "$W/$m" ]; then
    echo "--- $m ---"
    cat "$W/$m" 2>/dev/null | head -20 || true
  else
    echo "ABSENT: $m"
  fi
done
