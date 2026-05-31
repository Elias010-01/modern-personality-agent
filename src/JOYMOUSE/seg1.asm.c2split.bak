; ======================================================================
; JOYMOUSE / seg1.asm   (segment 1 of JOYMOUSE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         7
; Total instructions:                  318
; 
; Classification (pass8):
;   C-origin (high+medium):              2
;   ASM-origin (high+medium):            0
;   Unclear:                             5
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     4 (4 unique)
;   Top:
;        1  CREATESYSTEMTIMER
;        1  ENABLESYSTEMTIMERS
;        1  DISABLESYSTEMTIMERS
;        1  KILLSYSTEMTIMER
; ======================================================================
; AUTO-GENERATED from original JOYMOUSE segment 1
; segment_size=815 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

JOYMOUSE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        push    ds                              ; 1E
        push    es                              ; 06
        push    si                              ; 56
        push    di                              ; 57
        push    bp                              ; 55
        mov     ax, word ptr cs:[0x172]         ; 2E A1 72 01
        mov     ds, ax                          ; 8E D8
        call    L_02B7                          ; E8 A5 02
        mov     dx, word ptr [2]                ; 8B 16 02 00
        call    L_0047                          ; E8 2E 00
        cmp     byte ptr [0x15], 1              ; 80 3E 15 00 01
        jne     L_0026                          ; 75 06
        xor     bx, bx                          ; 33 DB
        xor     cx, cx                          ; 33 C9
        jmp     L_0031                          ; EB 0B
;   [conditional branch target (if/else)] L_0026
L_0026:
        xor     ax, ax                          ; 33 C0
        cmp     byte ptr [0x14], 1              ; 80 3E 14 00 01
        jne     L_0035                          ; 75 06
        or      al, 1                           ; 0C 01
;   [unconditional branch target] L_0031
L_0031:
        lcall   [0x10]                          ; FF 1E 10 00
;   [conditional branch target (if/else)] L_0035
L_0035:
        xor     ax, ax                          ; 33 C0
        mov     byte ptr [0x14], al             ; A2 14 00
        mov     byte ptr [0x15], al             ; A2 15 00
        pop     bp                              ; 5D
        pop     di                              ; 5F
        pop     si                              ; 5E
        pop     es                              ; 07
        pop     ds                              ; 1F
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     bx                              ; 5B
        pop     ax                              ; 58
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0047   offset=0x0047  size=28 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_0085, L_00D0, L_011D
;-------------------------------------------------------------------------
;   [sub-routine] L_0047
L_0047:
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        xor     ax, ax                          ; 33 C0
        xor     bx, bx                          ; 33 DB
        xor     cx, cx                          ; 33 C9
        call    L_0085                          ; E8 32 00
        call    L_00D0                          ; E8 7A 00
        or      bx, cx                          ; 0B D9
        xchg    bx, ax                          ; 93
        cmp     byte ptr [0x1a], 1              ; 80 3E 1A 00 01
        je      L_006F                          ; 74 0F
        cmp     ax, 0xa                         ; 3D 0A 00
        jne     L_0081                          ; 75 1C
        mov     byte ptr [0x1a], 1              ; C6 06 1A 00 01
        mov     ax, 2                           ; B8 02 00
        jmp     L_0081                          ; EB 12
;   [conditional branch target (if/else)] L_006F
L_006F:
        call    L_011D                          ; E8 AB 00
        cmp     bl, 2                           ; 80 FB 02
        je      L_007C                          ; 74 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_0081                          ; EB 05
;   [conditional branch target (if/else)] L_007C
L_007C:
        xor     ax, ax                          ; 33 C0
        mov     byte ptr [0x1a], al             ; A2 1A 00
;   [error/early exit] L_0081
L_0081:
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     bx                              ; 5B
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0085   offset=0x0085  size=25 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0085
L_0085:
        ; constant WM_LBUTTONDOWN
        mov     dx, 0x201                       ; BA 01 02
        in      al, dx                          ; EC
        and     al, 0x30                        ; 24 30
        and     al, 0x10                        ; 24 10
        xor     bx, bx                          ; 33 DB
        cmp     al, 0                           ; 3C 00
        je      L_00A8                          ; 74 15
        mov     bl, 4                           ; B3 04
        cmp     byte ptr [0x18], 0              ; 80 3E 18 00 00
        je      L_00CD                          ; 74 31
        mov     byte ptr [0x18], 0              ; C6 06 18 00 00
        mov     byte ptr [0x15], 1              ; C6 06 15 00 01
        jmp     L_00CF                          ; EB 27
;   [conditional branch target (if/else)] L_00A8
L_00A8:
        inc     byte ptr [0x16]                 ; FE 06 16 00
        cmp     byte ptr [0x16], 1              ; 80 3E 16 00 01
        jne     L_00CD                          ; 75 1A
        mov     byte ptr [0x16], 0              ; C6 06 16 00 00
        mov     bl, 2                           ; B3 02
        cmp     byte ptr [0x18], 1              ; 80 3E 18 00 01
        je      L_00CD                          ; 74 0C
        mov     byte ptr [0x18], 1              ; C6 06 18 00 01
        mov     byte ptr [0x15], 1              ; C6 06 15 00 01
        jmp     L_00CF                          ; EB 02
;   [conditional branch target (if/else)] L_00CD
L_00CD:
        xor     bx, bx                          ; 33 DB
;   [fall-through exit] L_00CF
L_00CF:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (27 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_00D0   offset=0x00D0  size=27 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_00D0
L_00D0:
        ; constant WM_LBUTTONDOWN
        mov     dx, 0x201                       ; BA 01 02
        in      al, dx                          ; EC
        and     al, 0x30                        ; 24 30
        push    bx                              ; 53
        and     al, 0x20                        ; 24 20
        xor     cx, cx                          ; 33 C9
        cmp     al, 0                           ; 3C 00
        je      L_00F4                          ; 74 15
        ; constant VK_SHIFT
        mov     cl, 0x10                        ; B1 10
        cmp     byte ptr [0x19], 0              ; 80 3E 19 00 00
        je      L_0119                          ; 74 31
        mov     byte ptr [0x19], 0              ; C6 06 19 00 00
        mov     byte ptr [0x15], 1              ; C6 06 15 00 01
        jmp     L_011B                          ; EB 27
;   [conditional branch target (if/else)] L_00F4
L_00F4:
        inc     byte ptr [0x17]                 ; FE 06 17 00
        cmp     byte ptr [0x17], 1              ; 80 3E 17 00 01
        jne     L_0119                          ; 75 1A
        mov     byte ptr [0x17], 0              ; C6 06 17 00 00
        mov     cl, 8                           ; B1 08
        cmp     byte ptr [0x19], 1              ; 80 3E 19 00 01
        je      L_0119                          ; 74 0C
        mov     byte ptr [0x19], 1              ; C6 06 19 00 01
        mov     byte ptr [0x15], 1              ; C6 06 15 00 01
        jmp     L_011B                          ; EB 02
;   [conditional branch target (if/else)] L_0119
L_0119:
        xor     cx, cx                          ; 33 C9
;   [fall-through exit] L_011B
L_011B:
        pop     bx                              ; 5B
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: CREATESYSTEMTIMER, ENABLESYSTEMTIMERS.

;-------------------------------------------------------------------------
; sub_011D   offset=0x011D  size=137 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CREATESYSTEMTIMER
;   ENABLESYSTEMTIMERS
;
; Near calls (internal): L_0250, L_027D
;-------------------------------------------------------------------------
;   [sub-routine] L_011D
L_011D:
        ; constant WM_LBUTTONDOWN
        mov     dx, 0x201                       ; BA 01 02
        in      al, dx                          ; EC
        and     al, 0x30                        ; 24 30
        and     al, 0x10                        ; 24 10
        xor     bx, bx                          ; 33 DB
        cmp     al, 0                           ; 3C 00
        jne     L_012D                          ; 75 02
        mov     bl, 2                           ; B3 02
;   [error/early exit] L_012D
L_012D:
        ret                                     ; C3
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     si, 0                           ; BE 00 00
        call    L_0250                          ; E8 10 01
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_014A                          ; 74 05
        mov     byte ptr [0], 1                 ; C6 06 00 00 01
;   [conditional branch target (if/else)] L_014A
L_014A:
        les     di, ptr [bp + 6]                ; C4 7E 06
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        mov     cx, ax                          ; 8B C8
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        sub     ax, cx                          ; 2B C1
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        jmp     L_018C                          ; EB 1B
        nop                                     ; 90
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        push    di                              ; 57
        jb      L_01E4                          ; 72 69
        je      L_01F1                          ; 74 74
        outsb   dx, byte ptr gs:[si]            ; 65 6E
        and     byte ptr [bp + si + 0x79], al   ; 20 42 79
        and     byte ptr [bp + si + 0x65], cl   ; 20 4A 65
        and     byte ptr [bx + si + 0x61], dl   ; 66 66 20 50 61
        arpl    word ptr [bp + di - 0x3c], bp   ; 63 6B C4
        pop     si                              ; 5E
        push    es                              ; 06
        mov     word ptr [0x10], bx             ; 89 1E 10 00
        mov     word ptr [0x12], es             ; 8C 06 12 00
        cmp     word ptr [0xe], 0               ; 83 3E 0E 00 00
        jne     L_01D5                          ; 75 37
        mov     word ptr cs:[0x172], ds         ; 2E 8C 1E 72 01
        mov     word ptr [0xe], 1               ; C7 06 0E 00 01 00
        call    L_0250                          ; E8 A4 00
        mov     byte ptr [0x1c], ah             ; 88 26 1C 00
        mov     byte ptr [0x1e], al             ; A2 1E 00
        xchg    cx, ax                          ; 91
        xor     ax, ax                          ; 33 C0
        mov     bx, 0x14                        ; BB 14 00
        mov     al, cl                          ; 8A C1
        call    L_027D                          ; E8 BF 00
        push    cx                              ; 51
        sub     cl, al                          ; 2A C8
        mov     byte ptr [0x2a], cl             ; 88 0E 2A 00
        pop     cx                              ; 59
        mov     bx, 0x14                        ; BB 14 00
        mov     al, cl                          ; 8A C1
        call    L_027D                          ; E8 AF 00
        add     al, cl                          ; 02 C1
        mov     byte ptr [0x2e], al             ; A2 2E 00
        jmp     L_01D7                          ; EB 02
;   [conditional branch target (if/else)] L_01D5
L_01D5:
        jmp     L_0243                          ; EB 6C
;   [unconditional branch target] L_01D7
L_01D7:
        mov     bx, 0x14                        ; BB 14 00
        ; constant WM_SETTEXT
        mov     al, ch                          ; 8A C5
        call    L_027D                          ; E8 9E 00
        push    cx                              ; 51
        sub     ch, al                          ; 2A E8
        mov     byte ptr [0x2c], ch             ; 88 2E 2C 00
        pop     cx                              ; 59
        mov     bx, 0x14                        ; BB 14 00
        ; constant WM_SETTEXT
        mov     al, ch                          ; 8A C5
        call    L_027D                          ; E8 8E 00
        add     al, ch                          ; 02 C5
;   [conditional branch target (if/else)] L_01F1
L_01F1:
        mov     byte ptr [0x30], al             ; A2 30 00
        mov     bx, 0x50                        ; BB 50 00
        mov     al, cl                          ; 8A C1
        call    L_027D                          ; E8 81 00
        push    cx                              ; 51
        sub     cl, al                          ; 2A C8
        mov     byte ptr [0x22], cl             ; 88 0E 22 00
        pop     cx                              ; 59
        mov     bx, 0x50                        ; BB 50 00
        mov     al, cl                          ; 8A C1
        call    L_027D                          ; E8 71 00
        add     al, cl                          ; 02 C1
        mov     byte ptr [0x26], al             ; A2 26 00
        mov     bx, 0x50                        ; BB 50 00
        ; constant WM_SETTEXT
        mov     al, ch                          ; 8A C5
        call    L_027D                          ; E8 64 00
        push    cx                              ; 51
        sub     ch, al                          ; 2A E8
        mov     byte ptr [0x24], ch             ; 88 2E 24 00
        pop     cx                              ; 59
        mov     bx, 0x50                        ; BB 50 00
        ; constant WM_SETTEXT
        mov     al, ch                          ; 8A C5
        call    L_027D                          ; E8 54 00
        add     al, ch                          ; 02 C5
        mov     byte ptr [0x28], al             ; A2 28 00
        call    far SYSTEM.ENABLESYSTEMTIMERS   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0                           ; B8 00 00
        xor     cx, cx                          ; 33 C9
        push    cx                              ; 51
        push    cs                              ; 0E
        push    ax                              ; 50
        call    far SYSTEM.CREATESYSTEMTIMER    ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x20], ax             ; A3 20 00
;   [unconditional branch target] L_0243
L_0243:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (27 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0250   offset=0x0250  size=27 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=1)
; Prologue: saves_regs     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0250
L_0250:
        push    si                              ; 56
        push    di                              ; 57
        push    bp                              ; 55
        mov     cx, 0xff                        ; B9 FF 00
        ; constant WM_LBUTTONDOWN
        mov     dx, 0x201                       ; BA 01 02
        xor     si, si                          ; 33 F6
        xor     di, di                          ; 33 FF
        mov     bp, 0x101                       ; BD 01 01
        mov     bx, bp                          ; 8B DD
        cli                                     ; FA
        out     dx, al                          ; EE
;   [loop iteration target] L_0264
L_0264:
        in      al, dx                          ; EC
        mov     ah, al                          ; 8A E0
        shr     ah, 1                           ; D0 EC
        and     bp, ax                          ; 23 E8
        add     si, bp                          ; 03 F5
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        and     bx, ax                          ; 23 D8
        add     di, bx                          ; 03 FB
        loop    L_0264                          ; E2 ED
        sti                                     ; FB
        xchg    si, ax                          ; 96
        pop     bp                              ; 5D
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Small helper using 2 API(s): DISABLESYSTEMTIMERS, KILLSYSTEMTIMER.

;-------------------------------------------------------------------------
; sub_027D   offset=0x027D  size=28 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: retf
;
; Far API calls:
;   DISABLESYSTEMTIMERS
;   KILLSYSTEMTIMER
;-------------------------------------------------------------------------
;   [sub-routine] L_027D
L_027D:
        mul     bx                              ; F7 E3
        mov     bx, 0x64                        ; BB 64 00
        div     bx                              ; F7 F3
        ret                                     ; C3
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        cmp     word ptr [0xe], 0               ; 83 3E 0E 00 00
        je      L_02AC                          ; 74 14
        mov     word ptr [0xe], 0               ; C7 06 0E 00 00 00
        mov     ax, word ptr [0x20]             ; A1 20 00
        push    ax                              ; 50
        call    far SYSTEM.KILLSYSTEMTIMER      ; 9A FF FF 00 00 [FIXUP]
        call    far SYSTEM.DISABLESYSTEMTIMERS  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_02AC
L_02AC:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (46 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_02B7   offset=0x02B7  size=46 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_0250
;-------------------------------------------------------------------------
;   [sub-routine] L_02B7
L_02B7:
        push    di                              ; 57
        push    si                              ; 56
        call    L_0250                          ; E8 94 FF
        xor     cx, cx                          ; 33 C9
        xor     bx, bx                          ; 33 DB
        mov     word ptr [0x32], ax             ; A3 32 00
        xor     al, al                          ; 32 C0
        xchg    al, ah                          ; 86 E0
        cmp     ax, word ptr [0x30]             ; 3B 06 30 00
        jl      L_02DC                          ; 7C 0F
        cmp     ax, word ptr [0x28]             ; 3B 06 28 00
        jl      L_02D6                          ; 7C 03
        add     cx, 5                           ; 83 C1 05
;   [conditional branch target (if/else)] L_02D6
L_02D6:
        mov     byte ptr [0x14], 1              ; C6 06 14 00 01
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_02DC
L_02DC:
        mov     ax, word ptr [0x32]             ; A1 32 00
        xor     ah, ah                          ; 32 E4
        cmp     ax, word ptr [0x2e]             ; 3B 06 2E 00
        jl      L_02F6                          ; 7C 0F
        cmp     ax, word ptr [0x26]             ; 3B 06 26 00
        jl      L_02F0                          ; 7C 03
        add     bx, 5                           ; 83 C3 05
;   [conditional branch target (if/else)] L_02F0
L_02F0:
        mov     byte ptr [0x14], 1              ; C6 06 14 00 01
        inc     bx                              ; 43
;   [conditional branch target (if/else)] L_02F6
L_02F6:
        mov     ax, word ptr [0x32]             ; A1 32 00
        xor     al, al                          ; 32 C0
        xchg    al, ah                          ; 86 E0
        cmp     ax, word ptr [0x2c]             ; 3B 06 2C 00
        jg      L_0312                          ; 7F 0F
        cmp     ax, word ptr [0x24]             ; 3B 06 24 00
        jg      L_030C                          ; 7F 03
        sub     cx, 5                           ; 83 E9 05
;   [conditional branch target (if/else)] L_030C
L_030C:
        mov     byte ptr [0x14], 1              ; C6 06 14 00 01
        dec     cx                              ; 49
;   [conditional branch target (if/else)] L_0312
L_0312:
        mov     ax, word ptr [0x32]             ; A1 32 00
        xor     ah, ah                          ; 32 E4
        cmp     ax, word ptr [0x2a]             ; 3B 06 2A 00
        jg      L_032C                          ; 7F 0F
        cmp     ax, word ptr [0x22]             ; 3B 06 22 00
        jg      L_0326                          ; 7F 03
        sub     bx, 5                           ; 83 EB 05
;   [conditional branch target (if/else)] L_0326
L_0326:
        mov     byte ptr [0x14], 1              ; C6 06 14 00 01
        dec     bx                              ; 4B
;   [error/early exit] L_032C
L_032C:
        pop     si                              ; 5E
        pop     di                              ; 5F
        ret                                     ; C3

JOYMOUSE_TEXT ENDS

        END
