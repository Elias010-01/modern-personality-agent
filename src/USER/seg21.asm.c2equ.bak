; ======================================================================
; USER / seg21.asm   (segment 21 of USER)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         3
; Total instructions:                  366
; 
; Classification (pass8):
;   C-origin (high+medium):              2
;   ASM-origin (high+medium):            0
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     5 (5 unique)
;   Top:
;        1  SELECTOBJECT
;        1  SETBKMODE
;        1  FREERESOURCE
;        1  LOCKSEGMENT
;        1  UNLOCKSEGMENT
; ======================================================================
; AUTO-GENERATED from original USER segment 21
; segment_size=898 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'


;-----------------------------------------------------------------------
; STATICWNDPROC  (offset 0x0000, size 815 bytes)
;-----------------------------------------------------------------------
STATICWNDPROC PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2a                        ; 83 EC 2A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     al, byte ptr [si + 0x30]        ; 8A 44 30
        sub     ah, ah                          ; 2A E4
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0xc                         ; 3D 0C 00
        jne     L_0024                          ; 75 03
        jmp     L_010B                          ; E9 E7 00
;   [conditional branch target (if/else)] L_0024
L_0024:
        jbe     L_0029                          ; 76 03
        jmp     L_014A                          ; E9 21 01
;   [conditional branch target (if/else)] L_0029
L_0029:
        cmp     ax, 1                           ; 3D 01 00
        je      L_0078                          ; 74 4A
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0036                          ; 75 03
        jmp     L_00D8                          ; E9 A2 00
;   [conditional branch target (if/else)] L_0036
L_0036:
        cmp     ax, 0xa                         ; 3D 0A 00
        jne     L_003E                          ; 75 03
        jmp     L_012C                          ; E9 EE 00
;   [conditional branch target (if/else)] L_003E
L_003E:
        jmp     L_015E                          ; E9 1D 01
;   [loop start] L_0041
L_0041:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jne     L_0059                          ; 75 0E
        push    si                              ; 56
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_199A                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [conditional branch target (if/else)] L_0059
L_0059:
        push    si                              ; 56
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x28]            ; FF 76 D8
        call    L_0199                          ; E8 36 01
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0074                          ; 75 0B
        push    si                              ; 56
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1A93                  ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_0074
L_0074:
        sub     ax, ax                          ; 2B C0
        jmp     L_00F5                          ; EB 7D
;   [conditional branch target (if/else)] L_0078
L_0078:
        sub     ax, ax                          ; 2B C0
        or      ax, ax                          ; 0B C0
        jne     L_0074                          ; 75 F6
        cmp     di, 3                           ; 83 FF 03
        jne     L_0074                          ; 75 F1
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     dx, word ptr es:[bx + 0x18]     ; 26 8B 57 18
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp - 8]                ; C4 5E F8
        cmp     byte ptr es:[bx], 0xff          ; 26 80 3F FF
        jne     L_00A9                          ; 75 0C
        mov     ax, word ptr es:[bx + 1]        ; 26 8B 47 01
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [conditional branch target (if/else)] L_00A9
L_00A9:
        push    word ptr [si + 0x3a]            ; FF 74 3A
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_174                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x44], ax        ; 89 44 44
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x10]         ; 26 FF 77 10
        push    word ptr es:[bx + 0xe]          ; 26 FF 77 0E
        push    word ptr [0x46a]                ; FF 36 6A 04
        push    word ptr [0x46c]                ; FF 36 6C 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_204A                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0074                          ; EB 9C
;   [unconditional branch target] L_00D8
L_00D8:
        sub     ax, ax                          ; 2B C0
        or      ax, ax                          ; 0B C0
        jne     L_0074                          ; 75 96
        cmp     di, 3                           ; 83 FF 03
        jne     L_0074                          ; 75 91
        push    word ptr [si + 0x44]            ; FF 74 44
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0074                          ; EB 87
;   [loop start] L_00ED
L_00ED:
        cmp     di, 3                           ; 83 FF 03
        jb      L_015E                          ; 72 6C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_00F5
L_00F5:
        sub     dx, dx                          ; 2B D2
        jmp     L_018C                          ; E9 92 00
;   [loop start] L_00FA
L_00FA:
        cmp     di, 3                           ; 83 FF 03
        jb      L_0102                          ; 72 03
        jmp     L_0074                          ; E9 72 FF
;   [conditional branch target (if/else)] L_0102
L_0102:
        jmp     L_015E                          ; EB 5A
;   [loop start] L_0104
L_0104:
        mov     ax, 0xffff                      ; B8 FF FF
        cdq                                     ; 99
        jmp     L_018C                          ; E9 81 00
;   [unconditional branch target] L_010B
L_010B:
        cmp     di, 3                           ; 83 FF 03
        jb      L_0113                          ; 72 03
        jmp     L_0074                          ; E9 61 FF
;   [conditional branch target (if/else)] L_0113
L_0113:
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_6C09                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        call    far _SEG1_0E13                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_012C                          ; 75 03
        jmp     L_0074                          ; E9 48 FF
;   [branch target] L_012C
L_012C:
        push    si                              ; 56
        call    far _SEG1_37F9                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    si                              ; 56
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0199                          ; E8 5B 00
        push    si                              ; 56
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _SEG1_381A                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0074                          ; E9 2A FF
;   [unconditional branch target] L_014A
L_014A:
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_0152                          ; 75 03
        jmp     L_0041                          ; E9 EF FE
;   [conditional branch target (if/else)] L_0152
L_0152:
        ja      L_0172                          ; 77 1E
        cmp     ax, 0xd                         ; 3D 0D 00
        jb      L_015E                          ; 72 05
        cmp     ax, 0xe                         ; 3D 0E 00
        jbe     L_00FA                          ; 76 9C
;   [loop start (also forward branch)] L_015E
L_015E:
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_679B                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_018C                          ; EB 1A
;   [conditional branch target (if/else)] L_0172
L_0172:
        cmp     ax, 0x81                        ; 3D 81 00
        jne     L_017A                          ; 75 03
        jmp     L_00ED                          ; E9 73 FF
;   [conditional branch target (if/else)] L_017A
L_017A:
        cmp     ax, 0x82                        ; 3D 82 00
        jne     L_0182                          ; 75 03
        jmp     L_00FA                          ; E9 78 FF
;   [conditional branch target (if/else)] L_0182
L_0182:
        cmp     ax, 0x84                        ; 3D 84 00
        jne     L_018A                          ; 75 03
        jmp     L_0104                          ; E9 7A FF
;   [conditional branch target (if/else)] L_018A
L_018A:
        jmp     L_015E                          ; EB D2
;   [unconditional branch target] L_018C
L_018C:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_0199
L_0199:
        ;   = cProc <20> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     al, byte ptr [si + 0x30]        ; 8A 44 30
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far _SEG1_1BAC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_01FD                          ; 74 30
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     dx, dx                          ; 2B D2
        cmp     dx, dx                          ; 3B D2
        ja      L_01DB                          ; 77 05
        cmp     ax, 7                           ; 3D 07 00
        jb      L_01E9                          ; 72 0E
;   [conditional branch target (if/else)] L_01DB
L_01DB:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     dx, dx                          ; 2B D2
        cmp     dx, dx                          ; 3B D2
        ja      L_01E9                          ; 77 05
        cmp     ax, 9                           ; 3D 09 00
        jbe     L_01FD                          ; 76 14
;   [conditional branch target (if/else)] L_01E9
L_01E9:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x12]            ; FF 76 EE
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1B34                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_01FD
L_01FD:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 24 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [si + 0x40], 0         ; 83 7C 40 00
        je      L_0228                          ; 74 0B
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [si + 0x40]            ; FF 74 40
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 23 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0228
L_0228:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     ax, 9                           ; 3D 09 00
        jbe     L_0233                          ; 76 03
        jmp     L_031C                          ; E9 E9 00
;   [conditional branch target (if/else)] L_0233
L_0233:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x308]        ; 2E FF A7 08 03
        cmp     word ptr [si + 0x36], 0         ; 83 7C 36 00
        jne     L_0244                          ; 75 03
        jmp     L_031C                          ; E9 D8 00
;   [conditional branch target (if/else)] L_0244
L_0244:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [si + 0x33], 8         ; F6 44 33 08
        je      L_0280                          ; 74 2D
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, OFFSET _entry_485           ; B8 A8 02 [FIXUP]
        mov     dx, OFFSET _entry_485           ; BA AB 02 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x2a]        ; 8B 44 2A
        sub     ax, word ptr [si + 0x26]        ; 2B 44 26
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x2c]        ; 8B 44 2C
        sub     ax, word ptr [si + 0x28]        ; 2B 44 28
        push    ax                              ; 50
        call    far _SEG1_4D62                  ; 9A C5 02 00 00 [FIXUP]
        jmp     L_028E                          ; EB 0E
;   [conditional branch target (if/else)] L_0280
L_0280:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_032F                          ; E8 A1 00
;   [unconditional branch target] L_028E
L_028E:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_031C                          ; E9 82 00
        cmp     word ptr [si + 0x44], 0         ; 83 7C 44 00
        je      L_031C                          ; 74 7C
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x3cc]                ; FF 36 CC 03
        mov     ax, OFFSET _entry_485           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_485           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x44]        ; 8B 44 44
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x46a]                ; FF 36 6A 04
        push    word ptr [0x46c]                ; FF 36 6C 04
        call    far _SEG1_4D62                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_031C                          ; EB 51
        mov     di, word ptr [0x3c8]            ; 8B 3E C8 03
        jmp     L_02DB                          ; EB 0A
        mov     di, word ptr [0x3be]            ; 8B 3E BE 03
        jmp     L_02DB                          ; EB 04
        mov     di, word ptr [0x3c6]            ; 8B 3E C6 03
;   [unconditional branch target] L_02DB
L_02DB:
        cmp     byte ptr [si + 0x30], 7         ; 80 7C 30 07
        jae     L_02F1                          ; 73 10
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    di                              ; 57
        call    far _SEG1_665A                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_031C                          ; EB 2B
;   [conditional branch target (if/else)] L_02F1
L_02F1:
        mov     word ptr [0x3ac], di            ; 89 3E AC 03
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _SEG1_45E5                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_031C                          ; EB 14
        cmp     ax, word ptr [bp + si]          ; 3B 02
        cmp     ax, word ptr [bp + si]          ; 3B 02
        cmp     ax, word ptr [bp + si]          ; 3B 02
        lcall   0xd102, 0xcb02                  ; 9A 02 CB 02 D1
        add     dl, bh                          ; 02 D7
        add     cl, bl                          ; 02 CB
        add     dl, cl                          ; 02 D1
        add     dl, bh                          ; 02 D7
        add     bh, bh                          ; 02 FF
        jbe     L_0325                          ; 76 06
        push    word ptr [bp - 2]               ; FF 76 FE
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
STATICWNDPROC ENDP

; Description (heuristic):
;   Internal helper (18 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_032F   offset=0x032F  size=18 instr  segment=seg21.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_032F
L_032F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], -1           ; 83 7E 06 FF
        jne     L_0352                          ; 75 13
        push    word ptr [bp + 0xc]             ; FF 76 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _SEG1_35C9                  ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        jmp     L_0378                          ; EB 26
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0352   offset=0x0352  size=22 instr  segment=seg21.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: unknown
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0352
L_0352:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 0x36]        ; 8B 47 36
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     al, byte ptr [bx + 0x30]        ; 8A 47 30
        sub     ah, ah                          ; 2A E4
        or      ax, 0x150                       ; 0D 50 01
        push    ax                              ; 50
        call    far _entry_85                   ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0378
L_0378:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

USER_TEXT ENDS

        END
