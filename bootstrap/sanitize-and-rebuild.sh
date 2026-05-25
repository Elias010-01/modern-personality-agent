#!/usr/bin/env bash
# Sanitiza los .asm/.inc del autor (UTF-8 -> ASCII + CRLF + 8.3 names)
# y re-build COMPLETO con MASM 4.0 + LINK4. Re-link contra original.
set -euo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent

UP=vendor/modern-personality-windows
TC=$HOME/opt/legacy-toolchain/c
BUILD=$HOME/opt/legacy-toolchain/upstream-build

rm -rf "$BUILD"
mkdir -p "$BUILD/kernel" "$BUILD/libw/INC" "$BUILD/libw/H" "$BUILD/out"

# Copiar y sanitizar: UTF-8 -> ASCII + CRLF
sanitize() {
  local src="$1" dst="$2"
  # 1) Convertir UTF-8 -> ASCII transliterado
  iconv -f UTF-8 -t ASCII//TRANSLIT "$src" 2>/dev/null > "$dst.tmp" || \
    iconv -f UTF-8 -t ASCII -c "$src" > "$dst.tmp"
  # 2) Quitar cualquier byte residual >0x7F (que iconv haya dejado)
  LC_ALL=C tr -d '\200-\377' < "$dst.tmp" > "$dst.tmp2"
  # 3) Convertir LF -> CRLF
  unix2dos -q < "$dst.tmp2" > "$dst" 2>/dev/null || \
    sed -e 's/$/\r/' "$dst.tmp2" > "$dst"
  rm -f "$dst.tmp" "$dst.tmp2"
}

echo "=== sanitizando kernel/ ==="
for f in "$UP"/kernel/*.{asm,ASM,inc,INC,c,C,h,H,def,DEF,lnk,LNK,mak}; do
  [ -f "$f" ] || continue
  base=$(basename "$f")
  upper=$(echo "$base" | tr '[:lower:]' '[:upper:]')
  case "$upper" in
    LD.C.ASM)     out="LD_C.ASM" ;;
    RIP.C.ASM)    out="RIP_C.ASM" ;;
    RESMAN.C.ASM) out="RESMA_C.ASM" ;;
    *)            out="$upper" ;;
  esac
  sanitize "$f" "$BUILD/kernel/$out"
done

echo "=== sanitizando libw/ ==="
for f in "$UP"/libw/INC/*.{INC,inc} "$UP"/libw/H/*.{H,h}; do
  [ -f "$f" ] || continue
  rel="${f#$UP/}"
  out_dir="$BUILD/$(dirname "$rel")"
  out_name=$(basename "$f" | tr '[:lower:]' '[:upper:]')
  mkdir -p "$out_dir"
  sanitize "$f" "$out_dir/$out_name"
done

echo
echo "=== sanitized files ==="
find "$BUILD" -type f | wc -l
echo

# Toolchain MASM4
mkdir -p "$TC/MASM4"
cp "$UP/bin/MASM.EXE" "$TC/MASM4/MASM.EXE"
cp "$UP/bin/LINK4.EXE" "$TC/MASM4/LINK4.EXE"

# Lista completa de modulos a compilar (40 + 2 .C como ASM)
ASMS=(
  KERNSTUB KDATA LDBOOT DOSINIT LDFASTB LSTRING DISKIO TASK
  SCHEDULE CONTEXT INT21 I21MEM INT24 HANDLE GALLOC GCOMPACT GINTERF
  GLRU GMEM LALLOC LCOMPACT LINTERF LDAUX LDDEBUG LDDISK LDFILE LDHEADER
  LDINT LDOPEN LDRELOC LDSEG LDSTACK LDUTIL RESAUX ATOM USERPRO KDATAEND
  LD_C RIP_C RESMA_C
)

WORK=$(mktemp -d -t mpa-rebuild-XXXX)
cp -r "$BUILD/kernel" "$WORK/KERNEL"
cp -r "$BUILD/libw" "$WORK/LIBW"
mkdir -p "$WORK/OUT"

# Build batch
{
  echo "@echo off"
  for name in "${ASMS[@]}"; do
    src_file="$name.ASM"
    # OBJ name (truncar a 8 chars max)
    case "$name" in
      LD_C)     obj_name="LD" ;;
      RIP_C)    obj_name="RIP" ;;
      RESMA_C)  obj_name="RESMAN" ;;
      *)        obj_name="$name" ;;
    esac
    printf "echo === %s === >> D:\\\\OUT\\\\BUILD.LOG\r\n" "$obj_name"
    printf "MASM -I..\\\\LIBW\\\\INC -I..\\\\KERNEL %s,D:\\\\OUT\\\\%s.OBJ,,; >> D:\\\\OUT\\\\BUILD.LOG\r\n" "$src_file" "$obj_name"
    printf "if errorlevel 1 echo FAIL: %s >> D:\\\\OUT\\\\FAILED.TXT\r\n" "$obj_name"
  done
  printf "echo BUILD-DONE > D:\\\\OUT\\\\DONE.TXT\r\n"
} > "$WORK/KERNEL/BUILD.BAT"

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
PATH=C:\\MASM4
SET INCLUDE=D:\\LIBW\\INC;D:\\KERNEL
SET TMP=D:\\OUT\\
D:
CD KERNEL
BUILD.BAT
exit
EOF

echo "=== compilando ${#ASMS[@]} modulos ==="
SDL_AUDIODRIVER=dummy timeout 600 /usr/bin/dosbox-x \
  -conf "$WORK/dosbox.conf" \
  -silent -fastlaunch -nogui -nomenu -exit 2>&1 | tail -2

echo
total=${#ASMS[@]}
ok=$(ls "$WORK/OUT/"*.OBJ 2>/dev/null | wc -l)
echo "compile result: $ok / $total OBJs"
if [ -f "$WORK/OUT/FAILED.TXT" ]; then
  echo "FAILED.TXT:"
  cat "$WORK/OUT/FAILED.TXT"
fi

# Si compilo todo, intentar link
if [ "$ok" -ge 38 ]; then
  echo
  echo "=== LINK4 ==="
  cat > "$WORK/OUT/KERNEL.LNK" << 'LNKEOF'
kdata context ldreloc ldaux lddisk +
ldfile ldint ldopen ldseg ldstack +
ldutil lstring task resaux resman +
schedule int21 int24 atom userpro +
diskio lalloc lcompact ldheader linterf +
handle galloc i21mem gcompact glru +
gmem ginterf lddebug ldboot ldfastb +
dosinit kdataend ld rip
KERNEL.EXE
KERNEL.MAP
;
D:\KERNEL\KERNEL.DEF
LNKEOF

  cat > "$WORK/dosbox-link.conf" << EOF2
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
SET TMP=D:\\OUT\\
D:
CD OUT
LINK4 @KERNEL.LNK > LINK.LOG
echo LINK-DONE > LINK.DONE
exit
EOF2
  SDL_AUDIODRIVER=dummy timeout 90 /usr/bin/dosbox-x \
    -conf "$WORK/dosbox-link.conf" \
    -silent -fastlaunch -nogui -nomenu -exit 2>&1 | tail -2

  if [ -f "$WORK/OUT/KERNEL.EXE" ]; then
    sz=$(stat -c%s "$WORK/OUT/KERNEL.EXE")
    osz=$(stat -c%s original/KERNEL.EXE)
    echo "KERNEL.EXE: $sz bytes (original $osz)"
  else
    echo "LINK FAIL: no KERNEL.EXE"
    tail -30 "$WORK/OUT/LINK.LOG" 2>&1 || true
  fi
fi

echo "Workdir: $WORK"
