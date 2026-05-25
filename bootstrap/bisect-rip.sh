#!/usr/bin/env bash
# Bisect: copia las primeras N lineas de RIP_C.ASM, compila, ve si funciona.
# Encuentra la primera linea que rompe el compile.
set -uo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent

UP=$HOME/opt/legacy-toolchain/upstream-build
TC=$HOME/opt/legacy-toolchain/c

SRC="$UP/kernel/RIP_C.ASM"
TOTAL=$(wc -l < "$SRC")
echo "RIP_C.ASM has $TOTAL lines"

try_compile() {
  local n=$1
  local work=$(mktemp -d -t mpa-bisect-XXXX)
  cp -r "$UP/kernel" "$work/KERNEL"
  cp -r "$UP/libw" "$work/LIBW"
  mkdir -p "$work/OUT"
  # Truncar
  head -n "$n" "$SRC" > "$work/KERNEL/TRIM.ASM"
  # Añadir END al final
  echo "" >> "$work/KERNEL/TRIM.ASM"
  echo "sEnd CODE" >> "$work/KERNEL/TRIM.ASM"
  echo "end" >> "$work/KERNEL/TRIM.ASM"
  
  cat > "$work/dosbox.conf" << EOF
[sdl]
output=surface
autolock=false
[dosbox]
machine=svga_s3
memsize=16
[autoexec]
MOUNT C "$TC"
MOUNT D "$work"
PATH=C:\\MASM4
SET INCLUDE=D:\\LIBW\\INC;D:\\KERNEL
D:
CD KERNEL
MASM -I..\\LIBW\\INC -I..\\KERNEL TRIM.ASM,D:\\OUT\\TRIM.OBJ,D:\\OUT\\TRIM.LST,; > D:\\OUT\\TRIM.LOG
echo DONE > D:\\OUT\\DONE.TXT
exit
EOF
  SDL_AUDIODRIVER=dummy timeout 30 /usr/bin/dosbox-x \
    -conf "$work/dosbox.conf" \
    -silent -fastlaunch -nogui -nomenu -exit > /dev/null 2>&1
  
  if [ -f "$work/OUT/TRIM.OBJ" ]; then
    echo "$work"
    return 0
  else
    echo "FAIL"
    rm -rf "$work"
    return 1
  fi
}

# Probar valores
for N in 50 100 150 200 250 300 350 400 450 500 550 579; do
  result=$(try_compile "$N")
  if [ "$result" = "FAIL" ]; then
    echo "N=$N: FAIL"
  else
    sz=$(stat -c%s "$result/OUT/TRIM.OBJ" 2>/dev/null)
    echo "N=$N: OK ($sz bytes obj)"
  fi
done
