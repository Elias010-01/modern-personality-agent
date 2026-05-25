#!/usr/bin/env bash
# Compila LD.c.asm y RIP.c.asm dirigidamente con LIST output completo
# para ver el error real en el assembler.
set -euo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent

WORK=$(mktemp -d -t mpa-debug-XXXX)
TC=$HOME/opt/legacy-toolchain/c
UP=$HOME/opt/legacy-toolchain/upstream-build

cp -r "$UP/kernel" "$WORK/KERNEL"
cp -r "$UP/libw" "$WORK/LIBW"
mkdir -p "$WORK/OUT"

# Renombrar a 8.3 friendly
mv "$WORK/KERNEL/LD.C.ASM" "$WORK/KERNEL/LD_C.ASM" 2>/dev/null || \
  mv "$WORK/KERNEL/LD.c.asm" "$WORK/KERNEL/LD_C.ASM" 2>/dev/null || true
mv "$WORK/KERNEL/RIP.C.ASM" "$WORK/KERNEL/RIP_C.ASM" 2>/dev/null || \
  mv "$WORK/KERNEL/RIP.c.asm" "$WORK/KERNEL/RIP_C.ASM" 2>/dev/null || true
mv "$WORK/KERNEL/RESMAN.C.asm" "$WORK/KERNEL/RESMAN_C.ASM" 2>/dev/null || true

ls "$WORK/KERNEL/"*.ASM 2>/dev/null | head -3
echo

cat > "$WORK/KERNEL/BUILD.BAT" <<'EOF'
@echo off
echo === LD_C ===
MASM -I..\LIBW\INC -I..\KERNEL LD_C.ASM,D:\OUT\LD.OBJ,D:\OUT\LD.LST,; > D:\OUT\LD_LOG.TXT
echo --- exit %errorlevel% --- >> D:\OUT\LD_LOG.TXT
echo === RIP_C ===
MASM -I..\LIBW\INC -I..\KERNEL RIP_C.ASM,D:\OUT\RIP.OBJ,D:\OUT\RIP.LST,; > D:\OUT\RIP_LOG.TXT
echo --- exit %errorlevel% --- >> D:\OUT\RIP_LOG.TXT
echo === RESMAN ===
MASM -I..\LIBW\INC -I..\KERNEL RESMAN_C.ASM,D:\OUT\RES.OBJ,D:\OUT\RES.LST,; > D:\OUT\RES_LOG.TXT
echo --- exit %errorlevel% --- >> D:\OUT\RES_LOG.TXT
echo DONE > D:\OUT\DONE.TXT
EOF

cat > "$WORK/dosbox.conf" <<EOF
[sdl]
output=surface
autolock=false
[dosbox]
machine=svga_s3
memsize=16
[autoexec]
MOUNT C "$TC"
MOUNT D "$WORK"
PATH=C:\\MASM4
SET INCLUDE=D:\\LIBW\\INC;D:\\KERNEL
SET TMP=D:\\OUT\\
D:
CD KERNEL
BUILD.BAT
exit
EOF

echo "=== running MASM ==="
SDL_AUDIODRIVER=dummy timeout 90 /usr/bin/dosbox-x \
  -conf "$WORK/dosbox.conf" \
  -silent -fastlaunch -nogui -nomenu -exit 2>&1 | tail -3

echo
for name in LD RIP RES; do
  echo "=== $name LOG ==="
  if [ -f "$WORK/OUT/${name}_LOG.TXT" ]; then
    # Buscar errores
    grep -iE "error|severe|warning|undefined|cannot|fatal" "$WORK/OUT/${name}_LOG.TXT" | head -20 || true
    echo "--- ultimas 15 lineas ---"
    tail -15 "$WORK/OUT/${name}_LOG.TXT"
  fi
  echo
done

echo "=== OBJ produced ==="
ls -la "$WORK/OUT/"*.OBJ 2>/dev/null || echo "ninguno"

echo "Workdir: $WORK"
