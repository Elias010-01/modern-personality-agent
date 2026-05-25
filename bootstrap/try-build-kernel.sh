#!/usr/bin/env bash
# Intenta compilar TODO el kernel.mak del autor del repo upstream
# usando MASM 4.0 + LINK4 dentro de DOSBox-X.
set -euo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent

WORK=$(mktemp -d -t mpa-kernel-XXXX)
TC=$HOME/opt/legacy-toolchain/c
UP=$HOME/opt/legacy-toolchain/upstream-build

# Copiar source completo
cp -r "$UP/kernel" "$WORK/KERNEL"
cp -r "$UP/libw" "$WORK/LIBW"
mkdir -p "$WORK/OUT"

# Lista de .asm a compilar (extraida del kernel.mak del autor)
ASMS=(
  KERNSTUB KDATA LDBOOT DOSINIT LDFASTB LSTRING RIP.C DISKIO LD.C TASK
  SCHEDULE CONTEXT INT21 I21MEM INT24 HANDLE GALLOC GCOMPACT GINTERF
  GLRU GMEM LALLOC LCOMPACT LINTERF LDAUX LDDEBUG LDDISK LDFILE LDHEADER
  LDINT LDOPEN LDRELOC LDSEG LDSTACK LDUTIL RESMAN.C RESAUX ATOM USERPRO
  KDATAEND
)

# BUILD.BAT con las llamadas MASM
{
  echo "@echo off"
  for name in "${ASMS[@]}"; do
    if [ "$name" = "RIP.C" ]; then src_file="RIP.C.ASM"; obj_name="RIP";
    elif [ "$name" = "LD.C" ]; then src_file="LD.C.ASM"; obj_name="LD";
    elif [ "$name" = "RESMAN.C" ]; then src_file="RESMA_C.ASM"; obj_name="RESMAN";
    else src_file="$name.ASM"; obj_name="$name"; fi
    printf "echo --- %s --- >> D:\\\\OUT\\\\BUILD.LOG\r\n" "$obj_name"
    printf "MASM -I..\\\\LIBW\\\\INC -I..\\\\KERNEL %s,D:\\\\OUT\\\\%s.OBJ,,; >> D:\\\\OUT\\\\BUILD.LOG\r\n" "$src_file" "$obj_name"
    printf "if errorlevel 1 echo FAIL: %s >> D:\\\\OUT\\\\FAILED.TXT\r\n" "$obj_name"
  done
  printf "echo DONE >> D:\\\\OUT\\\\BUILD.LOG\r\n"
} > "$WORK/KERNEL/BUILD.BAT"

# dosbox.conf compacto: arranca BUILD.BAT
{
  echo "[sdl]"
  echo "output=surface"
  echo "autolock=false"
  echo ""
  echo "[dosbox]"
  echo "machine=svga_s3"
  echo "memsize=16"
  echo ""
  echo "[autoexec]"
  echo "MOUNT C \"$TC\""
  echo "MOUNT D \"$WORK\""
  echo "PATH=C:\\MASM4;C:\\MSC\\BIN"
  echo "SET INCLUDE=D:\\LIBW\\INC;D:\\KERNEL;C:\\MSC\\INCLUDE"
  echo "SET LIB=C:\\MSC\\LIB"
  echo "SET TMP=D:\\OUT\\"
  echo "D:"
  echo "CD KERNEL"
  echo "BUILD.BAT"
  echo "exit"
} > "$WORK/dosbox.conf"

# Renombramos los .C.ASM que tienen dos puntos (DOS no los acepta bien con MASM args)
mv "$WORK/KERNEL/RIP.C.asm"     "$WORK/KERNEL/RIP.C.ASM"     2>/dev/null || true
mv "$WORK/KERNEL/LD.C.asm"      "$WORK/KERNEL/LD.C.ASM"      2>/dev/null || true
# RESMAN.C.asm → rename a RESMA_C.ASM por seguridad (un punto + extensión)
mv "$WORK/KERNEL/RESMAN.C.asm"  "$WORK/KERNEL/RESMA_C.ASM"   2>/dev/null || true

# Normaliza extensiones a uppercase para DOS
for f in "$WORK/KERNEL"/*.asm; do
  [ -f "$f" ] || continue
  mv "$f" "${f%.asm}.ASM" 2>/dev/null || true
done

echo "=== running MASM 4.0 sobre $(echo "${ASMS[@]}" | wc -w) modulos ==="
SDL_AUDIODRIVER=dummy timeout 600 /usr/bin/dosbox-x \
  -conf "$WORK/dosbox.conf" \
  -silent -fastlaunch -nogui -nomenu -exit 2>&1 | tail -3

echo
echo "=== outputs en $WORK/OUT/ ==="
ls -la "$WORK/OUT/" | head -60

echo
echo "=== resumen ==="
total=${#ASMS[@]}
ok=$(ls "$WORK/OUT/"*.OBJ 2>/dev/null | wc -l)
echo "OBJs generados: $ok / $total"

if [ -f "$WORK/OUT/FAILED.TXT" ]; then
  echo
  echo "=== FAILED.TXT ==="
  cat "$WORK/OUT/FAILED.TXT"
fi

echo
echo "=== ultimas 50 lineas de BUILD.LOG ==="
tail -50 "$WORK/OUT/BUILD.LOG" 2>&1 || echo "no build log"

echo
echo "Workdir: $WORK"
