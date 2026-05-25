#!/usr/bin/env bash
# Solo sanitiza el codigo del autor a upstream-build, sin compilar.
set -euo pipefail

UP_SRC=/mnt/c/Users/Elias/CascadeProjects/modern-personality-agent/vendor/modern-personality-windows
UP=$HOME/opt/legacy-toolchain/upstream-build

rm -rf "$UP"
mkdir -p "$UP/kernel" "$UP/libw/INC" "$UP/libw/H"

sanitize() {
  local s="$1" d="$2"
  iconv -f UTF-8 -t ASCII//TRANSLIT "$s" 2>/dev/null > "$d.tmp"
  LC_ALL=C tr -d '\200-\377' < "$d.tmp" > "$d.tmp2"
  sed -e 's/$/\r/' "$d.tmp2" > "$d"
  rm -f "$d.tmp" "$d.tmp2"
}

count=0
for f in "$UP_SRC"/kernel/*.{asm,ASM,inc,INC,c,C,h,H,def,DEF,lnk,LNK,mak}; do
  [ -f "$f" ] || continue
  base=$(basename "$f")
  upper=$(echo "$base" | tr '[:lower:]' '[:upper:]')
  case "$upper" in
    LD.C.ASM)     out="LD_C.ASM" ;;
    RIP.C.ASM)    out="RIP_C.ASM" ;;
    RESMAN.C.ASM) out="RESMA_C.ASM" ;;
    *)            out="$upper" ;;
  esac
  sanitize "$f" "$UP/kernel/$out"
  count=$((count+1))
done

for f in "$UP_SRC"/libw/INC/*; do
  [ -f "$f" ] || continue
  out=$(basename "$f" | tr '[:lower:]' '[:upper:]')
  sanitize "$f" "$UP/libw/INC/$out"
  count=$((count+1))
done

for f in "$UP_SRC"/libw/H/*; do
  [ -f "$f" ] || continue
  out=$(basename "$f" | tr '[:lower:]' '[:upper:]')
  sanitize "$f" "$UP/libw/H/$out"
  count=$((count+1))
done

echo "Sanitized $count files into $UP"
ls "$UP/kernel/RIP_C.ASM" "$UP/kernel/LD_C.ASM" "$UP/kernel/RESMA_C.ASM"
