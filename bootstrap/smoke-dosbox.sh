#!/usr/bin/env bash
# Smoke test manual de DOSBox-X + MSC 4.0.
set -euo pipefail

WORK=$(mktemp -d -t mpa-smoke-XXXX)
T=$HOME/opt/legacy-toolchain/c

echo "=== work dir: $WORK ==="
# Pequeño .C
cat > "$WORK/SMOKE.C" << 'EOF'
int mpa_smoke(int x) { return x + 1; }
EOF

# BAT que compila
cat > "$WORK/BUILD.BAT" << 'EOF'
@echo off
echo === MPA build start ===
echo --- SMOKE.c ---
CL /c /AM /Gs /W2 /Zl SMOKE.C
if errorlevel 1 echo MPA_FAIL: SMOKE
echo === MPA build end ===
EOF

# Convertir a CRLF
unix2dos "$WORK/SMOKE.C" "$WORK/BUILD.BAT" 2>/dev/null || sed -i 's/$/\r/' "$WORK/SMOKE.C" "$WORK/BUILD.BAT"

# Config con [autoexec] section
cat > "$WORK/dosbox.conf" << EOF
[sdl]
output=surface
autolock=false

[dosbox]
machine=svga_s3
memsize=16

[cpu]
core=auto
cputype=auto

[autoexec]
@echo on
MOUNT C "$T"
MOUNT D "$WORK"
PATH=C:\\MSC\\BIN;C:\\MASM
SET INCLUDE=C:\\MSC\\INCLUDE
SET LIB=C:\\MSC\\LIB
SET TMP=D:\\
D:
BUILD.BAT
echo MPA_EXIT_OK
exit
EOF

echo "=== dosbox.conf ==="
cat "$WORK/dosbox.conf"

echo "=== dosbox-x -- run (silent + fastlaunch, WSLg X11) ==="
SDL_AUDIODRIVER=dummy /usr/bin/dosbox-x \
  -conf "$WORK/dosbox.conf" \
  -silent -fastlaunch -nogui -nomenu \
  -exit 2>&1 | tee /tmp/mpa-smoke.log | tail -60

echo
echo "=== work dir tras run ==="
ls -la "$WORK"
echo
echo "=== buscando .OBJ ==="
find "$WORK" -iname '*.obj' -o -iname '*.OBJ' 2>&1
