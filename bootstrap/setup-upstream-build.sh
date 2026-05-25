#!/usr/bin/env bash
# Prepara una build copia del codigo de modern-personality-windows
# usando MASM 4.0 + LINK4 que vienen con el repo, ya monteables en DOSBox-X.
set -euo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent

UP=vendor/modern-personality-windows
TC=$HOME/opt/legacy-toolchain/c
BUILD=$HOME/opt/legacy-toolchain/upstream-build

# 1) Toolchain MASM 4.0: instalamos como MASM/MASM4
mkdir -p "$TC/MASM4"
cp "$UP/bin/MASM.EXE" "$TC/MASM4/MASM.EXE"
cp "$UP/bin/LINK4.EXE" "$TC/MASM4/LINK4.EXE"
cp "$UP/bin/LINK351.EXE" "$TC/MASM4/LINK351.EXE"
cp "$UP/bin/MAKE.EXE" "$TC/MASM4/MAKE.EXE"
echo "MASM 4.0 toolchain en $TC/MASM4/:"
ls -la "$TC/MASM4/"

# 2) Build dir con los fuentes del autor + nuestra copia de original KERNEL.EXE
rm -rf "$BUILD"
mkdir -p "$BUILD/kernel" "$BUILD/libw/INC" "$BUILD/libw/H" "$BUILD/out"
cp -r "$UP"/kernel/*.{asm,ASM,inc,INC,c,C,h,H,def,DEF,lnk,LNK,mak} "$BUILD/kernel/" 2>/dev/null || true
cp -r "$UP"/libw/INC/*.{INC,inc} "$BUILD/libw/INC/" 2>/dev/null || true
cp -r "$UP"/libw/H/*.{H,h} "$BUILD/libw/H/" 2>/dev/null || true

# Mostrar lo copiado
echo
echo "=== build dir ==="
find "$BUILD" -type f | head -30
echo
echo "kernel/ count: $(ls "$BUILD/kernel" | wc -l)"
echo "libw/INC/ count: $(ls "$BUILD/libw/INC" | wc -l)"
