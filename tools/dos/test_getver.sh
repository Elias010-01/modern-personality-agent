#!/bin/bash
# Lift GETVERSION (Windows 1.03 KERNEL.EXE @ seg1:0x023C, 4 bytes total)
# back to C and compile with MSC 4.0. If MSC produces the exact same 4 bytes
# (B8 01 03 CB) we have our first byte-exact verified function.
set -e
cd "$(dirname "$0")"
WORK=work

# The lift. Windows 1.x calling convention: PASCAL FAR.
# /Gw    : Windows API calling convention (FAR PASCAL with prologue)
# /AS    : small model (KERNEL is small model)
cat > "$WORK/getver.c" <<'EOF'
unsigned far pascal GetVersion()
{
    return 0x0301;
}
EOF

cat > "$WORK/getver.asm" <<'EOF'
; GetVersion - the MASM equivalent of returning 0x0301
_TEXT   SEGMENT BYTE PUBLIC 'CODE'
        ASSUME  CS:_TEXT

PUBLIC  GETVERSION

GETVERSION PROC FAR
        mov     ax, 0301h
        ret
GETVERSION ENDP

_TEXT   ENDS
        END
EOF

cat > "$WORK/build.bat" <<'EOF'
echo === Test 1: cl /c /AS /Gs (no stack check) === > out.txt
set INCLUDE=C:\
set LIB=C:\
cl /c /AS /Gs getver.c < nul > cl.txt
type cl.txt >> out.txt
ren getver.obj gs.obj
echo. >> out.txt
echo === Test 2: cl /c /AS /Gw /Gs (Windows + nostack) === >> out.txt
cl /c /AS /Gw /Gs getver.c < nul > cl2.txt
type cl2.txt >> out.txt
ren getver.obj gwgs.obj
echo. >> out.txt
echo === Test 3: MASM the asm version === >> out.txt
masm getver,getver,getver,nul; > masm.txt
type masm.txt >> out.txt
echo. >> out.txt
echo === Final files === >> out.txt
dir *.obj >> out.txt
echo === DONE === >> out.txt
EOF

rm -f "$WORK"/getver.obj "$WORK"/GETVER.OBJ "$WORK"/gs.obj "$WORK"/GS.OBJ \
      "$WORK"/gwgs.obj "$WORK"/GWGS.OBJ "$WORK"/out.txt "$WORK"/OUT.TXT \
      "$WORK"/cl.txt "$WORK"/CL.TXT "$WORK"/cl2.txt "$WORK"/CL2.TXT \
      "$WORK"/masm.txt "$WORK"/MASM.TXT 2>/dev/null

bash "./dosbuild.sh" "$WORK" "build.bat"

echo "=== OUT.TXT ==="
cat "$WORK/OUT.TXT" 2>/dev/null
echo ""
for v in GS GWGS GETVER; do
    f="$WORK/$v.OBJ"
    if [ -f "$f" ]; then
        sz=$(stat -c%s "$f")
        echo "=== $v.OBJ ($sz bytes) ==="
        xxd "$f" | head -25
        echo ""
        if xxd -p "$f" | tr -d '\n' | grep -qi "b80103cb"; then
            echo "  >>> $v: PERFECT BYTE-EXACT MATCH (B8 01 03 CB consecutive) <<<"
        elif xxd -p "$f" | tr -d '\n' | grep -qi "b80103"; then
            echo "  $v: has B8 01 03 but extra wrapping bytes around"
        fi
        echo ""
    fi
done
