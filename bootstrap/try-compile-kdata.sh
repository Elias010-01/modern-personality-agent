#!/usr/bin/env bash
# Intenta compilar KDATA.asm con MASM 4.0 en DOSBox-X para validar pipeline.
set -euo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent

WORK=$(mktemp -d -t mpa-upbuild-XXXX)
TC=$HOME/opt/legacy-toolchain/c
UP=$HOME/opt/legacy-toolchain/upstream-build

# Copiamos el codigo al work dir (DOS no entiende paths largos)
cp -r "$UP/kernel" "$WORK/KERNEL"
cp -r "$UP/libw" "$WORK/LIBW"
mkdir -p "$WORK/OUT"

# Config DOSBox-X con autoexec
cat > "$WORK/dosbox.conf" << EOF
[sdl]
output=surface
autolock=false

[dosbox]
machine=svga_s3
memsize=16

[autoexec]
MOUNT C "$TC"
MOUNT D "$WORK"
PATH=C:\\MASM4;C:\\MSC\\BIN
SET INCLUDE=D:\\LIBW\\INC;D:\\KERNEL;C:\\MSC\\INCLUDE
SET LIB=C:\\MSC\\LIB
SET TMP=D:\\
D:
CD KERNEL
MASM -I..\\LIBW\\INC -I..\\KERNEL KDATA.ASM,D:\\OUT\\KDATA.OBJ,,; > D:\\OUT\\KDATA_MA.LOG
if errorlevel 1 echo FAIL > D:\\OUT\\KDATA.FAIL
echo DONE > D:\\OUT\\DONE.TXT
exit
EOF

echo "=== running MASM 4.0 on KDATA.asm ==="
SDL_AUDIODRIVER=dummy timeout 60 /usr/bin/dosbox-x \
  -conf "$WORK/dosbox.conf" \
  -silent -fastlaunch -nogui -nomenu -exit 2>&1 | tail -3

echo
echo "=== resultado ==="
ls -la "$WORK/OUT/"
echo
echo "=== KDATA_MASM.LOG (last 30 lines) ==="
tail -30 "$WORK/OUT/KDATA_MASM.LOG" 2>&1 || echo "no log"
echo
echo "=== exit status ==="
if [ -f "$WORK/OUT/KDATA.OBJ" ]; then
  echo "OK: KDATA.OBJ generated ($(stat -c%s "$WORK/OUT/KDATA.OBJ") bytes)"
else
  echo "FAIL: no KDATA.OBJ"
fi
if [ -f "$WORK/OUT/KDATA.FAIL" ]; then
  echo "MASM reported errorlevel"
fi
echo "Workdir: $WORK"
