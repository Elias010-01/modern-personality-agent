; ======================================================================
; TERMINAL / seg2.asm   (segment 2 of TERMINAL)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):       158
; Total instructions:                 9980
; 
; Classification (pass8):
;   C-origin (high+medium):            151
;   ASM-origin (high+medium):            0
;   Unclear:                             7
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     209 (102 unique)
;   Top:
;       11  RELEASEDC
;        7  GETMENU
;        6  LSTRCPY
;        6  CHECKMENUITEM
;        6  INTERSECTRECT
;        6  UPDATEWINDOW
;        5  OPENFILE
;        4  GETDC
; ======================================================================
; AUTO-GENERATED from original TERMINAL segment 2
; segment_size=25500 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

TERMINAL_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Description (heuristic):
;   Pure computation / dispatcher (44 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=44 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_00EC, L_3452, L_45B1
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        ; constant WM_CREATE
        mov     si, 1                           ; BE 01 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_45B1                          ; E8 9F 45
        or      ax, ax                          ; 0B C0
        je      L_0048                          ; 74 32
;   [loop start] L_0016
L_0016:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 2D 34
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 2                           ; 3D 02 00
        je      L_004C                          ; 74 1F
        cmp     ax, 6                           ; 3D 06 00
        je      L_0039                          ; 74 07
        cmp     ax, 7                           ; 3D 07 00
        je      L_0050                          ; 74 19
        jmp     L_003E                          ; EB 05
;   [conditional branch target (if/else)] L_0039
L_0039:
        call    L_00EC                          ; E8 B0 00
        mov     si, ax                          ; 8B F0
;   [loop start (also forward branch)] L_003E
L_003E:
        cmp     word ptr [bp - 2], 1            ; 83 7E FE 01
        jne     L_0048                          ; 75 04
        or      si, si                          ; 0B F6
        je      L_0016                          ; 74 CE
;   [conditional branch target (if/else)] L_0048
L_0048:
        mov     ax, si                          ; 8B C6
        jmp     L_0055                          ; EB 09
;   [conditional branch target (if/else)] L_004C
L_004C:
        sub     si, si                          ; 2B F6
        jmp     L_003E                          ; EB EE
;   [conditional branch target (if/else)] L_0050
L_0050:
        ; constant WM_CREATE
        mov     si, 1                           ; BE 01 00
        jmp     L_003E                          ; EB E9
;   [fall-through exit] L_0055
L_0055:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: ENABLEMENUITEM, GETMENU.

;-------------------------------------------------------------------------
; sub_005A   offset=0x005A  size=31 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   GETMENU
;
; Near calls (internal): L_3B9D
;-------------------------------------------------------------------------
;   [sub-routine] L_005A
L_005A:
        ;   = cProc <84> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x54                        ; 83 EC 54
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        call    L_3B9D                          ; E8 32 3B
        add     sp, 4                           ; 83 C4 04
        or      ax, ax                          ; 0B C0
        je      L_0077                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0079                          ; EB 02
;   [conditional branch target (if/else)] L_0077
L_0077:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0079
L_0079:
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        cmp     word ptr [bp - 0x54], 0         ; 83 7E AC 00
        je      L_0096                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0099                          ; EB 03
;   [conditional branch target (if/else)] L_0096
L_0096:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0099
L_0099:
        push    ax                              ; 50
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (35 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_00A3   offset=0x00A3  size=35 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_3EB9, L_4604
;-------------------------------------------------------------------------
;   [sub-routine] L_00A3
L_00A3:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [0x274]            ; A1 74 02
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A EB 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00E8                          ; 74 28
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        mov     ax, word ptr [0x274]            ; A1 74 02
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        je      L_00D4                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_00D6                          ; EB 02
;   [conditional branch target (if/else)] L_00D4
L_00D4:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_00D6
L_00D6:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_4604                          ; E8 28 45
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3EB9                          ; E8 D1 3D
;   [error/early exit] L_00E8
L_00E8:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (68 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_00EC   offset=0x00EC  size=68 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_3452, L_397F, L_466B, L_603D
;-------------------------------------------------------------------------
;   [sub-routine] L_00EC
L_00EC:
        ;   = cProc <132> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x84                        ; 81 EC 84 00
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1b78                      ; B8 78 1B
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    L_603D                          ; E8 38 5F
        push    word ptr [0x1bf8]               ; FF 36 F8 1B
        push    word ptr [0x2070]               ; FF 36 70 20
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ax                              ; 50
        mov     ax, 0x1cc4                      ; B8 C4 1C
        push    ax                              ; 50
        call    far _entry_14                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 0x84], 0         ; C7 86 7C FF 00 00
        cmp     ax, 1                           ; 3D 01 00
        je      L_0134                          ; 74 07
        cmp     ax, 2                           ; 3D 02 00
        je      L_0150                          ; 74 1E
        jmp     L_014A                          ; EB 16
;   [conditional branch target (if/else)] L_0134
L_0134:
        push    word ptr [0x2070]               ; FF 36 70 20
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        lea     ax, [bp - 0x7a]                 ; 8D 46 86
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 0D 33
        cmp     ax, 7                           ; 3D 07 00
        jne     L_0150                          ; 75 06
;   [loop start (also forward branch)] L_014A
L_014A:
        mov     ax, word ptr [bp - 0x84]        ; 8B 86 7C FF
        jmp     L_018B                          ; EB 3B
;   [conditional branch target (if/else)] L_0150
L_0150:
        push    word ptr [0x2070]               ; FF 36 70 20
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_466B                          ; E8 0D 45
        or      ax, ax                          ; 0B C0
        je      L_014A                          ; 74 E8
        lea     ax, [bp - 0x7a]                 ; 8D 46 86
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_397F                          ; E8 14 38
        mov     ax, 0x1b78                      ; B8 78 1B
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    L_603D                          ; E8 C0 5E
        mov     word ptr [bp - 0x84], 1         ; C7 86 7C FF 01 00
        mov     word ptr [0x194], 0             ; C7 06 94 01 00 00
        jmp     L_014A                          ; EB BF
;   [fall-through exit] L_018B
L_018B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (120 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_018F   offset=0x018F  size=120 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_04AA, L_2ACA, L_3452, L_3EB9, L_4754, L_4BE2, L_603D
;-------------------------------------------------------------------------
;   [sub-routine] L_018F
L_018F:
        ;   = cProc <262> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x106                       ; 81 EC 06 01
        push    word ptr [0x2070]               ; FF 36 70 20
        call    0                               ; E8 63 FE
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_01A7                          ; 75 03
        jmp     L_02A2                          ; E9 FB 00
;   [conditional branch target (if/else)] L_01A7
L_01A7:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 16 29
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1b78                      ; B8 78 1B
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    L_603D                          ; E8 77 5E
        push    word ptr [0x1bf8]               ; FF 36 F8 1B
        push    word ptr [0x2070]               ; FF 36 70 20
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ax                              ; 50
        mov     ax, 0x1cc4                      ; B8 C4 1C
        push    ax                              ; 50
        call    far _entry_13                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 1                           ; 3D 01 00
        je      L_01EB                          ; 74 03
        jmp     L_027E                          ; E9 93 00
;   [conditional branch target (if/else)] L_01EB
L_01EB:
        push    word ptr [0x2070]               ; FF 36 70 20
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_4754                          ; E8 5B 45
        or      ax, ax                          ; 0B C0
        jne     L_0200                          ; 75 03
        jmp     L_0295                          ; E9 95 00
;   [conditional branch target (if/else)] L_0200
L_0200:
        mov     word ptr [0x194], 0             ; C7 06 94 01 00 00
        mov     ax, 0x1b78                      ; B8 78 1B
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    L_603D                          ; E8 25 5E
        cmp     word ptr [0x18c], 0             ; 83 3E 8C 01 00
        je      L_0230                          ; 74 11
        push    word ptr [0x18c]                ; FF 36 8C 01
        push    word ptr [0x2070]               ; FF 36 70 20
        call    L_04AA                          ; E8 80 02
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [0x18c], ax            ; A3 8C 01
;   [conditional branch target (if/else)] L_0230
L_0230:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3EB9                          ; E8 7D 3C
        push    word ptr [0x2070]               ; FF 36 70 20
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 06 32
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0295                          ; 75 44
        push    word ptr [0x2070]               ; FF 36 70 20
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        jne     L_0261                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0263                          ; EB 02
;   [conditional branch target (if/else)] L_0261
L_0261:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0263
L_0263:
        push    ax                              ; 50
        call    L_4BE2                          ; E8 7B 49
        or      ax, ax                          ; 0B C0
        je      L_0295                          ; 74 2A
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        jne     L_0277                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0279                          ; EB 02
;   [conditional branch target (if/else)] L_0277
L_0277:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0279
L_0279:
        mov     word ptr [0x190], ax            ; A3 90 01
        jmp     L_0295                          ; EB 17
;   [unconditional branch target] L_027E
L_027E:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_0295                          ; 7D 11
        push    word ptr [0x2070]               ; FF 36 70 20
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x7a]                 ; 8D 46 86
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 BD 31
;   [branch target] L_0295
L_0295:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 28 28
;   [fall-through exit] L_02A2
L_02A2:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_02A6   offset=0x02A6  size=36 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Near calls (internal): L_00EC, L_018F
;-------------------------------------------------------------------------
;   [sub-routine] L_02A6
L_02A6:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 7                           ; 3D 07 00
        jne     L_02B4                          ; 75 03
        jmp     L_0361                          ; E9 AD 00
;   [conditional branch target (if/else)] L_02B4
L_02B4:
        jle     L_02B9                          ; 7E 03
        jmp     L_0462                          ; E9 A9 01
;   [conditional branch target (if/else)] L_02B9
L_02B9:
        cmp     ax, 1                           ; 3D 01 00
        jne     L_02C1                          ; 75 03
        jmp     L_03B9                          ; E9 F8 00
;   [conditional branch target (if/else)] L_02C1
L_02C1:
        cmp     ax, 2                           ; 3D 02 00
        je      L_02F2                          ; 74 2C
        cmp     ax, 3                           ; 3D 03 00
        je      L_02F8                          ; 74 2D
        cmp     ax, 4                           ; 3D 04 00
        je      L_0314                          ; 74 44
        cmp     ax, 5                           ; 3D 05 00
        jne     L_02D8                          ; 75 03
        jmp     L_0458                          ; E9 80 01
;   [conditional branch target (if/else)] L_02D8
L_02D8:
        cmp     ax, 6                           ; 3D 06 00
        jne     L_02E0                          ; 75 03
        jmp     L_044E                          ; E9 6E 01
;   [conditional branch target (if/else)] L_02E0
L_02E0:
        jmp     L_04A6                          ; E9 C3 01
;   [loop start] L_02E3
L_02E3:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
;   [loop start] L_02E9
L_02E9:
        push    ax                              ; 50
        call    far _entry_12                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04A6                          ; E9 B4 01
;   [conditional branch target (if/else)] L_02F2
L_02F2:
        call    L_018F                          ; E8 9A FE
        jmp     L_04A6                          ; E9 AE 01
;   [conditional branch target (if/else)] L_02F8
L_02F8:
        cmp     word ptr [0x194], 0             ; 83 3E 94 01 00
        je      L_0305                          ; 74 06
        call    L_00EC                          ; E8 EA FD
        jmp     L_04A6                          ; E9 A1 01
; Description (heuristic):
;   Mixed routine using: OPENFILE.

;-------------------------------------------------------------------------
; sub_0305   offset=0x0305  size=166 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;
; Near calls (first 8 of 12): L_00A3, L_00EC, L_04AA, L_397F, L_3B32, L_3C89, L_3EB9, L_4604 ...
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0305
L_0305:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x1b78                      ; B8 78 1B
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_466B                          ; E8 5A 43
        jmp     L_04A6                          ; E9 92 01
;   [conditional branch target (if/else)] L_0314
L_0314:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_00EC                          ; E8 D2 FD
;   [loop start] L_031A
L_031A:
        add     sp, 2                           ; 83 C4 02
        jmp     L_04A6                          ; E9 86 01
;   [loop start] L_0320
L_0320:
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_00A3                          ; E8 7D FD
        jmp     L_031A                          ; EB F2
;   [loop start] L_0328
L_0328:
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_02E9                          ; EB B8
;   [loop start] L_0331
L_0331:
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        jmp     L_02E9                          ; EB AF
;   [loop start] L_033A
L_033A:
        cmp     word ptr [0x18e], 0             ; 83 3E 8E 01 00
        jne     L_0346                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0348                          ; EB 02
;   [conditional branch target (if/else)] L_0346
L_0346:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0348
L_0348:
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_3C89                          ; E8 3A 39
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [0x18e], ax            ; A3 8E 01
;   [loop start] L_0355
L_0355:
        mov     ax, 0x1b80                      ; B8 80 1B
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_397F                          ; E8 21 36
        jmp     L_04A6                          ; E9 45 01
;   [unconditional branch target] L_0361
L_0361:
        push    word ptr [bp + 4]               ; FF 76 04
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        jne     L_0370                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0372                          ; EB 02
;   [conditional branch target (if/else)] L_0370
L_0370:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0372
L_0372:
        push    ax                              ; 50
        call    L_4BE2                          ; E8 6C 48
        or      ax, ax                          ; 0B C0
        jne     L_037D                          ; 75 03
        jmp     L_04A6                          ; E9 29 01
;   [conditional branch target (if/else)] L_037D
L_037D:
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        jne     L_0389                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_038B                          ; EB 02
;   [conditional branch target (if/else)] L_0389
L_0389:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_038B
L_038B:
        mov     word ptr [0x190], ax            ; A3 90 01
        jmp     L_04A6                          ; E9 15 01
;   [loop start] L_0391
L_0391:
        push    word ptr [0x190]                ; FF 36 90 01
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_3B32                          ; E8 97 37
        add     sp, 4                           ; 83 C4 04
        jmp     L_04A6                          ; E9 05 01
;   [loop start] L_03A1
L_03A1:
        call    L_4BB4                          ; E8 10 48
        jmp     L_04A6                          ; E9 FF 00
;   [loop start] L_03A7
L_03A7:
        push    word ptr [0x18c]                ; FF 36 8C 01
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_04AA                          ; E8 F9 00
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [0x18c], ax            ; A3 8C 01
        jmp     L_0355                          ; EB 9C
;   [unconditional branch target] L_03B9
L_03B9:
        cmp     word ptr [0x18c], 0             ; 83 3E 8C 01 00
        je      L_03D0                          ; 74 10
        push    word ptr [0x18c]                ; FF 36 8C 01
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_04AA                          ; E8 E0 00
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [0x18c], ax            ; A3 8C 01
;   [conditional branch target (if/else)] L_03D0
L_03D0:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x1a0                       ; B8 A0 01
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3EB9                          ; E8 DC 3A
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        je      L_0409                          ; 74 25
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_4BE2                          ; E8 F5 47
        or      ax, ax                          ; 0B C0
        je      L_0409                          ; 74 18
        mov     word ptr [0x190], 0             ; C7 06 90 01 00 00
        mov     word ptr [0x18a], 0             ; C7 06 8A 01 00 00
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0409
L_0409:
        mov     word ptr [0x194], 1             ; C7 06 94 01 01 00
        mov     ax, 0x1c3a                      ; B8 3A 1C
        push    ds                              ; 1E
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, 0x1b78                      ; B8 78 1B
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A C7 04 00 00 [FIXUP]
        mov     ax, 0x1b3a                      ; B8 3A 1B
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_397F                          ; E8 54 35
        mov     ax, 0x266                       ; B8 66 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1a0                       ; B8 A0 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        push    ax                              ; 50
        call    L_603D                          ; E8 01 5C
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_4604                          ; E8 B8 41
        jmp     L_04A6                          ; EB 58
;   [unconditional branch target] L_044E
L_044E:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_18                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04A6                          ; EB 4E
;   [unconditional branch target] L_0458
L_0458:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_17                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04A6                          ; EB 44
;   [unconditional branch target] L_0462
L_0462:
        cmp     ax, 0xb                         ; 3D 0B 00
        jne     L_046A                          ; 75 03
        jmp     L_0320                          ; E9 B6 FE
;   [conditional branch target (if/else)] L_046A
L_046A:
        jg      L_0486                          ; 7F 1A
        cmp     ax, 8                           ; 3D 08 00
        jne     L_0474                          ; 75 03
        jmp     L_033A                          ; E9 C6 FE
;   [conditional branch target (if/else)] L_0474
L_0474:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_047C                          ; 75 03
        jmp     L_03A7                          ; E9 2B FF
;   [conditional branch target (if/else)] L_047C
L_047C:
        cmp     ax, 0xa                         ; 3D 0A 00
        jne     L_0484                          ; 75 03
        jmp     L_0391                          ; E9 0D FF
;   [conditional branch target (if/else)] L_0484
L_0484:
        jmp     L_04A6                          ; EB 20
;   [conditional branch target (if/else)] L_0486
L_0486:
        cmp     ax, 0xc                         ; 3D 0C 00
        jne     L_048E                          ; 75 03
        jmp     L_0328                          ; E9 9A FE
;   [conditional branch target (if/else)] L_048E
L_048E:
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_0496                          ; 75 03
        jmp     L_0331                          ; E9 9B FE
;   [conditional branch target (if/else)] L_0496
L_0496:
        cmp     ax, 0xe                         ; 3D 0E 00
        jne     L_049E                          ; 75 03
        jmp     L_03A1                          ; E9 03 FF
;   [conditional branch target (if/else)] L_049E
L_049E:
        cmp     ax, 0x3e9                       ; 3D E9 03
        jne     L_04A6                          ; 75 03
        jmp     L_02E3                          ; E9 3D FE
;   [error/early exit] L_04A6
L_04A6:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: LSTRCPY, OPENFILE, CHECKMENUITEM (+1 more).

;-------------------------------------------------------------------------
; sub_04AA   offset=0x04AA  size=74 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   GETMENU
;-------------------------------------------------------------------------
;   [sub-routine] L_04AA
L_04AA:
        ;   = cProc <130> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x82                        ; 81 EC 82 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_051E                          ; 75 67
        mov     ax, 0x2aa                       ; B8 AA 02
        push    ds                              ; 1E
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1bf8]               ; FF 36 F8 1B
        push    word ptr [0x2070]               ; FF 36 70 20
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ax                              ; 50
        mov     ax, 0x2034                      ; B8 34 20
        push    ax                              ; 50
        call    far _entry_14                   ; 9A 1B 01 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 1                           ; 3D 01 00
        jl      L_0533                          ; 7C 46
        cmp     ax, 2                           ; 3D 02 00
        jg      L_0533                          ; 7F 41
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x7a]                 ; 8D 46 86
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_16                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0533                          ; 75 2B
        mov     word ptr [bp + 6], 1            ; C7 46 06 01 00
        mov     ax, 0x2aa                       ; B8 AA 02
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x7a]                 ; 8D 46 86
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A E0 05 00 00 [FIXUP]
        jmp     L_0533                          ; EB 15
;   [conditional branch target (if/else)] L_051E
L_051E:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0529                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_052B                          ; EB 02
;   [conditional branch target (if/else)] L_0529
L_0529:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_052B
L_052B:
        mov     word ptr [bp + 6], ax           ; 89 46 06
        call    far _entry_15                   ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_0533
L_0533:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETMENU                ; 9A 80 00 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_054B                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_054D                          ; EB 02
;   [conditional branch target (if/else)] L_054B
L_054B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_054D
L_054D:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Small helper using 2 API(s): RELEASECAPTURE, SETCAPTURE.

;-------------------------------------------------------------------------
; sub_055F   offset=0x055F  size=30 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   RELEASECAPTURE
;   SETCAPTURE
;
; Near calls (internal): L_5C30, L_5C64, L_5CA6
;-------------------------------------------------------------------------
;   [sub-routine] L_055F
L_055F:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_0576                          ; 74 0C
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_0584                          ; 74 15
        cmp     ax, 0x202                       ; 3D 02 02
        je      L_059A                          ; 74 26
        jmp     L_05AB                          ; EB 35
;   [conditional branch target (if/else)] L_0576
L_0576:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_5C64                          ; E8 E2 56
        jmp     L_05AB                          ; EB 27
;   [conditional branch target (if/else)] L_0584
L_0584:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_5CA6                          ; E8 0E 57
        jmp     L_05AB                          ; EB 11
;   [conditional branch target (if/else)] L_059A
L_059A:
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_5C30                          ; E8 85 56
;   [fall-through exit] L_05AB
L_05AB:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: LSTRCPY.

;-------------------------------------------------------------------------
; sub_05AF   offset=0x05AF  size=82 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;
; Near calls (internal): L_3452, L_3EB9, L_4754, L_4BE2, L_603D
;-------------------------------------------------------------------------
;   [sub-routine] L_05AF
L_05AF:
        ;   = cProc <132> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x84                        ; 81 EC 84 00
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_05C3                          ; 75 03
        jmp     L_065A                          ; E9 97 00
;   [conditional branch target (if/else)] L_05C3
L_05C3:
        lea     ax, [bp - 0x80]                 ; 8D 46 80
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1b78                      ; B8 78 1B
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    L_603D                          ; E8 69 5A
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x80]                 ; 8D 46 80
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_4754                          ; E8 64 41
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_065C                          ; 74 66
        mov     word ptr [0x194], 0             ; C7 06 94 01 00 00
        mov     ax, 0x1b78                      ; B8 78 1B
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x80]                 ; 8D 46 80
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    L_603D                          ; E8 30 5A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3EB9                          ; E8 9F 38
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 29 2E
        cmp     ax, 6                           ; 3D 06 00
        jne     L_065C                          ; 75 2E
        push    word ptr [bp + 4]               ; FF 76 04
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        jne     L_063D                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_063F                          ; EB 02
;   [conditional branch target (if/else)] L_063D
L_063D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_063F
L_063F:
        push    ax                              ; 50
        call    L_4BE2                          ; E8 9F 45
        or      ax, ax                          ; 0B C0
        je      L_065C                          ; 74 15
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        jne     L_0653                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0655                          ; EB 02
;   [conditional branch target (if/else)] L_0653
L_0653:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0655
L_0655:
        mov     word ptr [0x190], ax            ; A3 90 01
        jmp     L_065C                          ; EB 02
;   [unconditional branch target] L_065A
L_065A:
        sub     si, si                          ; 2B F6
;   [error/early exit] L_065C
L_065C:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: ENUMFONTS, GETSYSTEMMETRICS.

;-------------------------------------------------------------------------
; sub_0663   offset=0x0663  size=149 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ENUMFONTS
;   GETSYSTEMMETRICS
;
; Near calls (internal): L_603D
;-------------------------------------------------------------------------
;   [sub-routine] L_0663
L_0663:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 83 06 00 00 [FIXUP]
        cdq                                     ; 99
        mov     cx, 0x50                        ; B9 50 00
        idiv    cx                              ; F7 F9
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], ax               ; 89 07
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 8E 06 00 00 [FIXUP]
        mov     cx, 4                           ; B9 04 00
        push    cx                              ; 51
        mov     si, ax                          ; 8B F0
        call    far USER.GETSYSTEMMETRICS       ; 9A 99 06 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     cx, 1                           ; B9 01 00
        push    cx                              ; 51
        mov     di, ax                          ; 8B F8
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        sub     ax, di                          ; 2B C7
        sub     ax, si                          ; 2B C6
        cdq                                     ; 99
        mov     cx, 0x19                        ; B9 19 00
        idiv    cx                              ; F7 F9
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], ax               ; 89 07
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        add     ax, word ptr es:[bx]            ; 26 03 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        jle     L_073B                          ; 7E 55
        cmp     word ptr es:[bx + 8], 0         ; 26 83 7F 08 00
        je      L_0736                          ; 74 49
        cmp     word ptr es:[bx + 8], ax        ; 26 39 47 08
        jle     L_0712                          ; 7E 1F
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        cmp     word ptr es:[bx + 8], ax        ; 26 39 47 08
        jg      L_0736                          ; 7F 39
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr es:[bx + 0xa], ax      ; 26 39 47 0A
        jle     L_073B                          ; 7E 35
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        cmp     word ptr es:[bx + 0xa], ax      ; 26 39 47 0A
        jle     L_073B                          ; 7E 2B
        jmp     L_0736                          ; EB 24
;   [conditional branch target (if/else)] L_0712
L_0712:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        jge     L_0724                          ; 7D 06
        cmp     word ptr es:[bx + 8], ax        ; 26 39 47 08
        jne     L_073B                          ; 75 17
;   [conditional branch target (if/else)] L_0724
L_0724:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jge     L_0736                          ; 7D 06
        cmp     word ptr es:[bx + 0xa], ax      ; 26 39 47 0A
        jl      L_073B                          ; 7C 05
;   [branch target] L_0736
L_0736:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
;   [conditional branch target (if/else)] L_073B
L_073B:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_076A                          ; 74 29
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 0xc                         ; 05 0C 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        call    L_603D                          ; E8 E4 58
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
;   [conditional branch target (if/else)] L_076A
L_076A:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        cmp     word ptr es:[bx + 0xa], ax      ; 26 39 47 0A
        jne     L_0781                          ; 75 0A
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        cmp     word ptr es:[bx + 8], ax        ; 26 39 47 08
        je      L_0786                          ; 74 05
;   [conditional branch target (if/else)] L_0781
L_0781:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0788                          ; EB 02
;   [conditional branch target (if/else)] L_0786
L_0786:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0788
L_0788:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_07CC                          ; 75 22
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx]                ; 26 FF 37
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x5e6]                ; FF 36 E6 05
        push    word ptr [0x5e4]                ; FF 36 E4 05
        push    es                              ; 06
        push    bx                              ; 53
        call    far GDI.ENUMFONTS               ; 9A 86 08 00 00 [FIXUP]
        jmp     L_07CF                          ; EB 03
;   [conditional branch target (if/else)] L_07CC
L_07CC:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_07CF
L_07CF:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; Description (heuristic):
;   Thin wrapper around GETDC(hWnd) -> HDC.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_07DA   offset=0x07DA  size=16 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETDC(HWND hWnd) -> HDC
;-------------------------------------------------------------------------
;   [sub-routine] L_07DA
L_07DA:
        ;   = cProc <152> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x98                        ; 81 EC 98 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_07EF                          ; 75 03
        jmp     L_08A8                          ; E9 B9 00
;   [conditional branch target (if/else)] L_07EF
L_07EF:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_07F8                          ; 75 03
        jmp     L_08A8                          ; E9 B0 00
;   [conditional branch target (if/else)] L_07F8
L_07F8:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x66], ax        ; 89 46 9A
        or      ax, ax                          ; 0B C0
        jne     L_080A                          ; 75 03
        jmp     L_08A8                          ; E9 9E 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HANDLE    (1 use)
;   Locals:
;     [bp-0x66]   HDC       (1 use)

; Description (heuristic):
;   Mixed routine using: CREATEFONTINDIRECT, ENUMFONTS, GETOBJECT (+3 more).

;-------------------------------------------------------------------------
; sub_080A   offset=0x080A  size=62 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   CREATEFONTINDIRECT
;   ENUMFONTS
;   GETOBJECT
;   GETTEXTMETRICS
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_0663
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_080A
L_080A:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        lea     ax, [bp - 0x98]                 ; 8D 86 68 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x66]            ; FF 76 9A
        ;   ^ arg hDC
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x66]            ; FF 76 9A
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ax                              ; 50
        lea     ax, [bp - 0x62]                 ; 8D 46 9E
        push    ax                              ; 50
        call    L_0663                          ; E8 1B FE
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [bp - 0x64]            ; F7 6E 9C
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        cmp     word ptr [bp - 0x62], ax        ; 39 46 9E
        jle     L_0867                          ; 7E 03
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
;   [conditional branch target (if/else)] L_0867
L_0867:
        mov     word ptr [bp - 0x5e], 0         ; C7 46 A2 00 00
        mov     word ptr [bp - 0x5c], 0         ; C7 46 A4 00 00
        push    word ptr [bp - 0x66]            ; FF 76 9A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x5e2]                ; FF 36 E2 05
        push    word ptr [0x5e0]                ; FF 36 E0 05
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.ENUMFONTS               ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x5e], 0         ; 83 7E A2 00
        je      L_089D                          ; 74 0D
        lea     ax, [bp - 0x5a]                 ; 8D 46 A6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.CREATEFONTINDIRECT      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_089D
L_089D:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        push    word ptr [bp - 0x66]            ; FF 76 9A
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
;   [fall-through exit] L_08A8
L_08A8:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_08AF   offset=0x08AF  size=17 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_08AF
L_08AF:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_08E0                          ; 74 28
        cmp     word ptr [0x2058], 0            ; 83 3E 58 20 00
        je      L_08C8                          ; 74 09
        push    word ptr [0x2058]               ; FF 36 58 20
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A D4 08 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_08C8
L_08C8:
        cmp     word ptr [0x1cbc], 0            ; 83 3E BC 1C 00
        je      L_08D8                          ; 74 09
        push    word ptr [0x1cbc]               ; FF 36 BC 1C
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_08D8
L_08D8:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A FD 0A 00 00 [FIXUP]
;   [error/early exit] L_08E0
L_08E0:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_08E6   offset=0x08E6  size=226 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   GETPROFILEINT
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LOCALFREE(HANDLE hMem) -> HANDLE
;   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;   LOADACCELERATORS
;   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
;   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
;   REGISTERCLASS
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;
; Near calls (first 8 of 9): L_005A, L_07DA, L_08E6, L_19BA, L_3452, L_3588, L_397F, L_3EB9 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_08E6
L_08E6:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 0x19                        ; B8 19 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], 0x1e         ; C7 46 FE 1E 00
        jmp     L_0919                          ; EB 10
;   [loop start] L_0909
L_0909:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jne     L_0915                          ; 75 04
        mov     ax, word ptr [bx]               ; 8B 07
        jmp     L_0923                          ; EB 0E
;   [conditional branch target (if/else)] L_0915
L_0915:
        add     word ptr [bp - 2], 4            ; 83 46 FE 04
;   [unconditional branch target] L_0919
L_0919:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     word ptr [bx], 0                ; 83 3F 00
        jne     L_0909                          ; 75 E8
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_0923
L_0923:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x1bf8], ax           ; A3 F8 1B
        mov     ax, OFFSET _entry_8             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_8             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 5D 09 00 00 [FIXUP]
        mov     word ptr [0x5e0], ax            ; A3 E0 05
        mov     word ptr [0x5e2], dx            ; 89 16 E2 05
        mov     ax, OFFSET _entry_9             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_9             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 74 09 00 00 [FIXUP]
        mov     word ptr [0x5e4], ax            ; A3 E4 05
        mov     word ptr [0x5e6], dx            ; 89 16 E6 05
        mov     ax, OFFSET _entry_7             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_7             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1c2e], ax           ; A3 2E 1C
        mov     word ptr [0x1c30], dx           ; 89 16 30 1C
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [0x5e8], ax            ; A3 E8 05
        mov     word ptr [0x5ea], dx            ; 89 16 EA 05
        call    L_08E6                          ; E8 57 FF
        mov     word ptr [0x264], ax            ; A3 64 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_3588                          ; E8 F0 2B
        or      ax, ax                          ; 0B C0
        jne     L_09A1                          ; 75 05
;   [loop start] L_099C
L_099C:
        sub     ax, ax                          ; 2B C0
        jmp     L_0B0A                          ; E9 69 01
;   [conditional branch target (if/else)] L_09A1
L_09A1:
        mov     ax, 0x1c3a                      ; B8 3A 1C
        push    ds                              ; 1E
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, 0x1b78                      ; B8 78 1B
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A 1E 04 00 00 [FIXUP]
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_0A35                          ; 75 7B
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_099C                          ; 74 CE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hInstance
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszCursor (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszCursor (low/offset)
        ; --> LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszIcon (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszIcon (low/offset)
        ; --> LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     word ptr [bx + 0x12], 1         ; C7 47 12 01 00
        mov     word ptr [bx + 0x14], 0         ; C7 47 14 00 00
        mov     ax, 0x1c16                      ; B8 16 1C
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     word ptr [bx], 0                ; C7 07 00 00
        mov     word ptr [bx + 2], OFFSET _entry_1 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_1 ; C7 47 04 FF FF [FIXUP]
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0A2D                          ; 75 03
        jmp     L_099C                          ; E9 6F FF
;   [conditional branch target (if/else)] L_0A2D
L_0A2D:
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0A35
L_0A35:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADACCELERATORS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x205a], ax           ; A3 5A 20
        or      ax, ax                          ; 0B C0
        jne     L_0A4D                          ; 75 03
        jmp     L_099C                          ; E9 4F FF
;   [conditional branch target (if/else)] L_0A4D
L_0A4D:
        mov     ax, 0x1c16                      ; B8 16 1C
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        mov     ax, 0x4a                        ; B8 4A 00
        push    ds                              ; 1E
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        sub     ax, ax                          ; 2B C0
        mov     dx, 0xfc                        ; BA FC 00
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        ;   ^ arg nHeight
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWndParent
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0A7D                          ; 75 03
        jmp     L_099C                          ; E9 1F FF
;   [conditional branch target (if/else)] L_0A7D
L_0A7D:
        mov     word ptr [0x2070], ax           ; A3 70 20
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x2058], ax           ; A3 58 20
        or      ax, ax                          ; 0B C0
        je      L_0AE9                          ; 74 59
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_07DA                          ; E8 43 FD
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [0x1cbc], ax           ; A3 BC 1C
        call    L_5B46                          ; E8 A6 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_19BA                          ; E8 14 0F
        push    word ptr [bp - 4]               ; FF 76 FC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_19                   ; 9A 05 04 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_20                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_005A                          ; E8 9A F5
        add     sp, 2                           ; 83 C4 02
        mov     ax, 0x4b                        ; B8 4B 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_397F                          ; E8 B3 2E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3EB9                          ; E8 E0 33
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hWnd
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B0A                          ; EB 21
;   [conditional branch target (if/else)] L_0AE9
L_0AE9:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0x1bfc                      ; B8 FC 1B
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 59 29
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x2070], 0            ; C7 06 70 20 00 00
        jmp     L_099C                          ; E9 92 FE
;   [unconditional branch target] L_0B0A
L_0B0A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Menu manipulation routine (2 menu APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0B15   offset=0x0B15  size=68 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   CLOSECLIPBOARD
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   ENUMCLIPBOARDFORMATS
;   GETMENU
;   OPENCLIPBOARD
;
; Near calls (internal): L_50F9
;-------------------------------------------------------------------------
;   [sub-routine] L_0B15
L_0B15:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETMENU                ; 9A 37 05 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0B2D                          ; 75 03
        jmp     L_0BE6                          ; E9 B9 00
;   [conditional branch target (if/else)] L_0B2D
L_0B2D:
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        cmp     word ptr [0x18a], 0             ; 83 3E 8A 01 00
        je      L_0B3E                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_0B40                          ; EB 02
;   [conditional branch target (if/else)] L_0B3E
L_0B3E:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0B40
L_0B40:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 4F 05 00 00 [FIXUP]
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0B7A                          ; 74 23
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
;   [loop start] L_0B5C
L_0B5C:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far USER.ENUMCLIPBOARDFORMATS   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        je      L_0B75                          ; 74 0A
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0B5C                          ; 75 EC
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
;   [conditional branch target (if/else)] L_0B75
L_0B75:
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0B7A
L_0B7A:
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        je      L_0B98                          ; 74 12
        cmp     word ptr [0x18a], 0             ; 83 3E 8A 01 00
        jne     L_0B98                          ; 75 0B
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_0B98                          ; 75 05
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [conditional branch target (if/else)] L_0B98
L_0B98:
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A B2 0B 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A E0 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        je      L_0BC9                          ; 74 07
        cmp     word ptr [0x18a], 0             ; 83 3E 8A 01 00
        je      L_0BD5                          ; 74 0C
;   [conditional branch target (if/else)] L_0BC9
L_0BC9:
        call    L_50F9                          ; E8 2D 45
        or      ax, ax                          ; 0B C0
        jne     L_0BD5                          ; 75 05
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [conditional branch target (if/else)] L_0BD5
L_0BD5:
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 9B 00 00 00 [FIXUP]
        jmp     L_0BF6                          ; EB 10
; Description (heuristic):
;   Mixed routine using: CHANGEMENU, DEFWINDOWPROC, GETSYSTEMMENU (+4 more).

;-------------------------------------------------------------------------
; sub_0BE6   offset=0x0BE6  size=316 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CHANGEMENU
;   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   GETSYSTEMMENU
;   POSTQUITMESSAGE
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETFOCUS
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;
; Near calls (first 8 of 22): L_005A, L_02A6, L_055F, L_05AF, L_08AF, L_0B15, L_1A20, L_2049 ...
;-------------------------------------------------------------------------
;   [unconditional branch target] L_0BE6
L_0BE6:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0x1bfc                      ; B8 FC 1B
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 5C 28
;   [fall-through exit] L_0BF6
L_0BF6:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x1a                        ; 3D 1A 00
        jne     L_0C14                          ; 75 03
        jmp     L_0DA3                          ; E9 8F 01
;   [conditional branch target (if/else)] L_0C14
L_0C14:
        jbe     L_0C19                          ; 76 03
        jmp     L_0E99                          ; E9 80 02
;   [conditional branch target (if/else)] L_0C19
L_0C19:
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x14                        ; 3D 14 00
        jbe     L_0C24                          ; 76 03
        jmp     L_0D2A                          ; E9 06 01
;   [conditional branch target (if/else)] L_0C24
L_0C24:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xe6f]        ; 2E FF A7 6F 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x3e7                       ; B8 E7 03
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A 61 0C 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x2044                      ; B8 44 20
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3e9                       ; B8 E9 03
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_0C65
L_0C65:
        sub     ax, ax                          ; 2B C0
        jmp     L_0C72                          ; EB 09
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_2049                          ; E8 DA 13
;   [loop start] L_0C6F
L_0C6F:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0C72
L_0C72:
        sub     dx, dx                          ; 2B D2
        jmp     L_0F08                          ; E9 91 02
        call    L_27C1                          ; E8 47 1B
        jmp     L_0C65                          ; EB E9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_3E3A                          ; E8 B8 31
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_0C65                          ; 74 DC
        call    L_1A20                          ; E8 94 0D
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.POSTQUITMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0C65                          ; EB CF
        push    word ptr [0x2070]               ; FF 36 70 20
        call    L_3E3A                          ; E8 9D 31
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_0C65                          ; 74 C1
        push    word ptr [0x2070]               ; FF 36 70 20
        call    0                               ; E8 55 F3
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_0C65                          ; 74 B3
        push    word ptr [0x2070]               ; FF 36 70 20
        call    L_08AF                          ; E8 F6 FB
        mov     word ptr [0x2070], 0            ; C7 06 70 20 00 00
        jmp     L_0C65                          ; EB A4
        mov     word ptr [0x192], 1             ; C7 06 92 01 01 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_3E3A                          ; E8 6D 31
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_0C65                          ; 74 91
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    0                               ; E8 26 F3
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_0CEA                          ; 75 09
        mov     word ptr [0x192], 0             ; C7 06 92 01 00 00
        jmp     L_0C65                          ; E9 7B FF
;   [conditional branch target (if/else)] L_0CEA
L_0CEA:
        cmp     word ptr [0x182], 0             ; 83 3E 82 01 00
        jne     L_0CF4                          ; 75 03
        jmp     L_0C6F                          ; E9 7B FF
;   [conditional branch target (if/else)] L_0CF4
L_0CF4:
        push    word ptr [0x182]                ; FF 36 82 01
        ;   ^ arg hWnd
        ; constant WM_COMMAND
        mov     ax, 0x111                       ; B8 11 01
        push    ax                              ; 50
        ;   ^ arg wMsg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1c14]               ; FF 36 14 1C
        call    L_493B                          ; E8 2B 3C
        add     sp, 2                           ; 83 C4 02
        jmp     L_0C6F                          ; E9 59 FF
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_0D21                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D23                          ; EB 02
;   [conditional branch target (if/else)] L_0D21
L_0D21:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0D23
L_0D23:
        mov     word ptr [0x184], ax            ; A3 84 01
        or      ax, ax                          ; 0B C0
        je      L_0D41                          ; 74 17
;   [loop start (also forward branch)] L_0D2A
L_0D2A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg wMsg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg wParam
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lParam (low/offset)
        ; --> DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0F08                          ; E9 C7 01
;   [conditional branch target (if/else)] L_0D41
L_0D41:
        call    L_263D                          ; E8 F9 18
        jmp     L_0C65                          ; E9 1E FF
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        jne     L_0D8C                          ; 75 3E
        mov     word ptr [0x4e], 1              ; C7 06 4E 00 01 00
        push    word ptr [0x5ea]                ; FF 36 EA 05
        push    word ptr [0x5e8]                ; FF 36 E8 05
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_05AF                          ; E8 4D F8
        add     sp, 6                           ; 83 C4 06
        or      ax, ax                          ; 0B C0
        jne     L_0D83                          ; 75 1A
        mov     ax, 0x4c                        ; B8 4C 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_397F                          ; E8 0D 2C
        mov     ax, 0x266                       ; B8 66 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1a0                       ; B8 A0 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        push    ax                              ; 50
        call    L_603D                          ; E8 BA 52
;   [conditional branch target (if/else)] L_0D83
L_0D83:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_45B1                          ; E8 25 38
;   [conditional branch target (if/else)] L_0D8C
L_0D8C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2FE5                          ; E8 51 22
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A E0 0A 00 00 [FIXUP]
        jmp     L_0C65                          ; E9 C2 FE
;   [unconditional branch target] L_0DA3
L_0DA3:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_005A                          ; E8 B1 F2
        add     sp, 2                           ; 83 C4 02
        jmp     L_0C65                          ; E9 B6 FE
        cmp     word ptr [bp + 0xc], 7          ; 83 7E 0C 07
        jne     L_0DBA                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0DBC                          ; EB 02
;   [conditional branch target (if/else)] L_0DBA
L_0DBA:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0DBC
L_0DBC:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2E0E                          ; E8 4C 20
        jmp     L_0C65                          ; E9 A0 FE
;   [loop start] L_0DC5
L_0DC5:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_02A6                          ; E8 D2 F4
        add     sp, 8                           ; 83 C4 08
        jmp     L_0C65                          ; E9 8B FE
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0DE3                          ; 75 03
        jmp     L_0C65                          ; E9 82 FE
;   [conditional branch target (if/else)] L_0DE3
L_0DE3:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0DEC                          ; 74 03
        jmp     L_0C65                          ; E9 79 FE
;   [conditional branch target (if/else)] L_0DEC
L_0DEC:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0C65                          ; E9 6E FE
;   [loop start] L_0DF7
L_0DF7:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_055F                          ; E8 56 F7
        add     sp, 0xa                         ; 83 C4 0A
        jmp     L_0C65                          ; E9 56 FE
;   [loop start] L_0E0F
L_0E0F:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3A45                          ; E8 28 2C
;   [loop start] L_0E1D
L_0E1D:
        add     sp, 6                           ; 83 C4 06
        jmp     L_0C65                          ; E9 42 FE
;   [loop start] L_0E23
L_0E23:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_3AB9                          ; E8 8A 2C
        jmp     L_0E1D                          ; EB EC
;   [loop start] L_0E31
L_0E31:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_4EFD                          ; E8 C0 40
        jmp     L_0E1D                          ; EB DE
;   [loop start] L_0E3F
L_0E3F:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_4FBB                          ; E8 70 41
        jmp     L_0E1D                          ; EB D0
;   [loop start] L_0E4D
L_0E4D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0B15                          ; E8 C2 FC
        jmp     L_0C65                          ; E9 0F FE
;   [loop start] L_0E56
L_0E56:
        cmp     word ptr [bp + 0xa], 0x3e9      ; 81 7E 0A E9 03
        je      L_0E60                          ; 74 03
        jmp     L_0D2A                          ; E9 CA FE
;   [conditional branch target (if/else)] L_0E60
L_0E60:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_12                   ; 9A B8 00 00 00 [FIXUP]
        jmp     L_0C65                          ; E9 F6 FD
        sub     al, 0xc                         ; 2C 0C
        jl      L_0E7F                          ; 7C 0C
        sub     cl, byte ptr [di]               ; 2A 0D
        sub     cl, byte ptr [di]               ; 2A 0D
        push    ss                              ; 16
        or      ax, 0xdda                       ; 0D DA 0D
        scasw   ax, word ptr es:[di]            ; AF
        or      ax, 0xdaf                       ; 0D AF 0D
;   [conditional branch target (if/else)] L_0E7F
L_0E7F:
        sub     cl, byte ptr [di]               ; 2A 0D
        sub     cl, byte ptr [di]               ; 2A 0D
        sub     cl, byte ptr [di]               ; 2A 0D
        sub     cl, byte ptr [di]               ; 2A 0D
        sub     cl, byte ptr [di]               ; 2A 0D
        sub     cl, byte ptr [di]               ; 2A 0D
        inc     di                              ; 47
        or      ax, 0xc96                       ; 0D 96 0C
        ror     word ptr [si], 0x2a             ; C1 0C 2A
        or      ax, 0xd2a                       ; 0D 2A 0D
        imul    cx, word ptr [si], 0xc77        ; 69 0C 77 0C
;   [unconditional branch target] L_0E99
L_0E99:
        cmp     ax, 0x115                       ; 3D 15 01
        je      L_0E31                          ; 74 93
        ja      L_0EC8                          ; 77 28
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_0EA8                          ; 75 03
        jmp     L_0E0F                          ; E9 67 FF
;   [conditional branch target (if/else)] L_0EA8
L_0EA8:
        cmp     ax, 0x102                       ; 3D 02 01
        jne     L_0EB0                          ; 75 03
        jmp     L_0E23                          ; E9 73 FF
;   [conditional branch target (if/else)] L_0EB0
L_0EB0:
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0EB8                          ; 75 03
        jmp     L_0DC5                          ; E9 0D FF
;   [conditional branch target (if/else)] L_0EB8
L_0EB8:
        cmp     ax, 0x112                       ; 3D 12 01
        je      L_0E56                          ; 74 99
        cmp     ax, 0x114                       ; 3D 14 01
        jne     L_0EC5                          ; 75 03
        jmp     L_0E3F                          ; E9 7A FF
;   [conditional branch target (if/else)] L_0EC5
L_0EC5:
        jmp     L_0D2A                          ; E9 62 FE
;   [conditional branch target (if/else)] L_0EC8
L_0EC8:
        cmp     ax, 0x203                       ; 3D 03 02
        jne     L_0ED0                          ; 75 03
        jmp     L_0C65                          ; E9 95 FD
;   [conditional branch target (if/else)] L_0ED0
L_0ED0:
        ja      L_0EED                          ; 77 1B
        cmp     ax, 0x116                       ; 3D 16 01
        jne     L_0EDA                          ; 75 03
        jmp     L_0E4D                          ; E9 73 FF
;   [conditional branch target (if/else)] L_0EDA
L_0EDA:
        cmp     ax, 0x200                       ; 3D 00 02
        jae     L_0EE2                          ; 73 03
        jmp     L_0D2A                          ; E9 48 FE
;   [conditional branch target (if/else)] L_0EE2
L_0EE2:
        cmp     ax, 0x202                       ; 3D 02 02
        ja      L_0EEA                          ; 77 03
        jmp     L_0DF7                          ; E9 0D FF
;   [conditional branch target (if/else)] L_0EEA
L_0EEA:
        jmp     L_0D2A                          ; E9 3D FE
;   [conditional branch target (if/else)] L_0EED
L_0EED:
        cmp     ax, 0x204                       ; 3D 04 02
        jne     L_0EF5                          ; 75 03
        jmp     L_0DF7                          ; E9 02 FF
;   [conditional branch target (if/else)] L_0EF5
L_0EF5:
        cmp     ax, 0x206                       ; 3D 06 02
        jne     L_0EFD                          ; 75 03
        jmp     L_0C65                          ; E9 68 FD
;   [conditional branch target (if/else)] L_0EFD
L_0EFD:
        cmp     ax, 0x500                       ; 3D 00 05
        jne     L_0F05                          ; 75 03
        jmp     L_0C65                          ; E9 60 FD
;   [conditional branch target (if/else)] L_0F05
L_0F05:
        jmp     L_0D2A                          ; E9 22 FE
;   [unconditional branch target] L_0F08
L_0F08:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Internal helper (13 instructions).

;-------------------------------------------------------------------------
; sub_0F13   offset=0x0F13  size=13 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0F13
L_0F13:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jl      L_0F26                          ; 7C 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jle     L_0F29                          ; 7E 03
;   [conditional branch target (if/else)] L_0F26
L_0F26:
        mov     word ptr [bp + 8], ax           ; 89 46 08
;   [error/early exit] L_0F29
L_0F29:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_0F32   offset=0x0F32  size=16 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0F32
L_0F32:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     bx, word ptr [si]               ; 8B 1C
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [si], si               ; 89 34
        mov     word ptr [si + 2], si           ; 89 74 02
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Internal helper (17 instructions).

;-------------------------------------------------------------------------
; sub_0F53   offset=0x0F53  size=17 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0F53
L_0F53:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        mov     word ptr [si + 2], ax           ; 89 44 02
        mov     word ptr [si], di               ; 89 3C
        mov     word ptr [di + 2], si           ; 89 75 02
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx], si               ; 89 37
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (59 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F75   offset=0x0F75  size=59 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0F32
;-------------------------------------------------------------------------
;   [sub-routine] L_0F75
L_0F75:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 0x10], 0         ; 83 7F 10 00
        jle     L_0FDE                          ; 7E 58
        mov     di, word ptr [bx + 0xe]         ; 8B 7F 0E
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        add     si, word ptr [bp + 4]           ; 03 76 04
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        add     ax, di                          ; 03 C7
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 6], di           ; 39 7E 06
        jg      L_0FC6                          ; 7F 2A
        cmp     si, di                          ; 3B F7
        jle     L_0FC6                          ; 7E 26
        mov     ax, si                          ; 8B C6
        sub     ax, di                          ; 2B C7
        mov     word ptr [bp + 4], ax           ; 89 46 04
        cmp     ax, word ptr [bx + 0x10]        ; 3B 47 10
        jl      L_0FB8                          ; 7C 0C
        mov     word ptr [bx + 0x10], 0         ; C7 47 10 00 00
        mov     word ptr [bx + 0xe], 0          ; C7 47 0E 00 00
        jmp     L_0FDE                          ; EB 26
;   [conditional branch target (if/else)] L_0FB8
L_0FB8:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [bx + 0xe], ax         ; 01 47 0E
        sub     word ptr [bx + 0x10], ax        ; 29 47 10
        jmp     L_0FDE                          ; EB 18
;   [conditional branch target (if/else)] L_0FC6
L_0FC6:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jge     L_0FDE                          ; 7D 10
        cmp     ax, si                          ; 3B C6
        jg      L_0FDE                          ; 7F 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        sub     ax, word ptr [bx + 0xe]         ; 2B 47 0E
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
;   [branch target] L_0FDE
L_0FDE:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 0x10], 0         ; 83 7F 10 00
        jg      L_1006                          ; 7F 1F
        mov     ax, word ptr [0x54]             ; A1 54 00
        cmp     bx, ax                          ; 3B D8
        jne     L_1000                          ; 75 12
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [0x54], ax             ; A3 54 00
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_1000                          ; 75 06
        mov     word ptr [0x54], 0              ; C7 06 54 00 00 00
;   [conditional branch target (if/else)] L_1000
L_1000:
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0F32                          ; E8 2C FF
;   [error/early exit] L_1006
L_1006:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (47 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_100E   offset=0x100E  size=47 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0F32, L_0F53
;-------------------------------------------------------------------------
;   [sub-routine] L_100E
L_100E:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1087                          ; 74 6D
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 0x10], 0         ; 83 7F 10 00
        jne     L_1029                          ; 75 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
;   [conditional branch target (if/else)] L_1029
L_1029:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        add     ax, word ptr [bx + 0x10]        ; 03 47 10
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [bp + 4]           ; 03 46 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx + 0xe], ax         ; 39 47 0E
        jg      L_1049                          ; 7F 03
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
;   [conditional branch target (if/else)] L_1049
L_1049:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jle     L_105C                          ; 7E 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_105F                          ; EB 03
;   [conditional branch target (if/else)] L_105C
L_105C:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
;   [unconditional branch target] L_105F
L_105F:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        sub     ax, word ptr [bx + 0xe]         ; 2B 47 0E
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     ax, word ptr [0x54]             ; A1 54 00
        cmp     bx, ax                          ; 3B D8
        je      L_1081                          ; 74 12
        or      ax, ax                          ; 0B C0
        je      L_1081                          ; 74 0E
        push    bx                              ; 53
        call    L_0F32                          ; E8 BB FE
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x54]                 ; FF 36 54 00
        call    L_0F53                          ; E8 D2 FE
;   [conditional branch target (if/else)] L_1081
L_1081:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x54], ax             ; A3 54 00
;   [error/early exit] L_1087
L_1087:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xc]  WORD      (1 use)

; Description (heuristic):
;   Pure computation / dispatcher (46 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_108D   offset=0x108D  size=46 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_603D
;-------------------------------------------------------------------------
;   [sub-routine] L_108D
L_108D:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        cmp     word ptr [bp + 0xc], si         ; 39 76 0C
        jl      L_10F0                          ; 7C 54
        cmp     word ptr [bp + 0xc], 0x18       ; 83 7E 0C 18
        jg      L_10F0                          ; 7F 4E
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [bx + 0x174e]      ; 8B BF 4E 17
        mov     si, word ptr [di + 0xa]         ; 8B 75 0A
        sub     si, word ptr [bp + 0xa]         ; 2B 76 0A
        add     si, word ptr [di + 0xc]         ; 03 75 0C
        or      si, si                          ; 0B F6
        jle     L_10EE                          ; 7E 36
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        shl     ax, 1                           ; D1 E0
        lea     cx, [di + 0x12]                 ; 8D 4D 12
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jle     L_10D4                          ; 7E 05
        mov     word ptr [bp + 4], si           ; 89 76 04
        jmp     L_10D7                          ; EB 03
;   [conditional branch target (if/else)] L_10D4
L_10D4:
        mov     si, word ptr [bp + 4]           ; 8B 76 04
;   [unconditional branch target] L_10D7
L_10D7:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    L_603D                          ; E8 51 4F
        jmp     L_10F0                          ; EB 02
;   [conditional branch target (if/else)] L_10EE
L_10EE:
        sub     si, si                          ; 2B F6
;   [branch target] L_10F0
L_10F0:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (133 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_10FA   offset=0x10FA  size=133 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_100E, L_108D, L_603D
;-------------------------------------------------------------------------
;   [sub-routine] L_10FA
L_10FA:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jge     L_110A                          ; 7D 03
        jmp     L_11C0                          ; E9 B6 00
;   [conditional branch target (if/else)] L_110A
L_110A:
        cmp     word ptr [bp + 0xc], 0x18       ; 83 7E 0C 18
        jle     L_1113                          ; 7E 03
        jmp     L_11C0                          ; E9 AD 00
;   [conditional branch target (if/else)] L_1113
L_1113:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jge     L_111C                          ; 7D 03
        jmp     L_11C0                          ; E9 A4 00
;   [conditional branch target (if/else)] L_111C
L_111C:
        cmp     word ptr [bp + 0xa], 0x4f       ; 83 7E 0A 4F
        jle     L_1125                          ; 7E 03
        jmp     L_11C0                          ; E9 9B 00
;   [conditional branch target (if/else)] L_1125
L_1125:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x174e]      ; 8B 87 4E 17
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x50                        ; B8 50 00
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jge     L_1143                          ; 7D 05
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        jmp     L_1145                          ; EB 02
;   [conditional branch target (if/else)] L_1143
L_1143:
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_1145
L_1145:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jle     L_11C0                          ; 7E 74
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        add     ax, 0x12                        ; 05 12 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    L_603D                          ; E8 D5 4E
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     word ptr [bx + 0xc], 0          ; 83 7F 0C 00
        jne     L_1177                          ; 75 06
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
;   [conditional branch target (if/else)] L_1177
L_1177:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        add     ax, word ptr [bx + 0xc]         ; 03 47 0C
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        jg      L_1197                          ; 7F 03
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
;   [conditional branch target (if/else)] L_1197
L_1197:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jle     L_11AA                          ; 7E 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_11AD                          ; EB 03
;   [conditional branch target (if/else)] L_11AA
L_11AA:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_11AD
L_11AD:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        sub     ax, word ptr [bx + 0xa]         ; 2B 47 0A
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        push    bx                              ; 53
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_100E                          ; E8 4E FE
;   [error/early exit] L_11C0
L_11C0:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        sub     di, di                          ; 2B FF
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [loop start] L_11F1
L_11F1:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jle     L_1243                          ; 7E 46
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_1214                          ; 7D 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_1217                          ; EB 03
;   [conditional branch target (if/else)] L_1214
L_1214:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [unconditional branch target] L_1217
L_1217:
        push    ax                              ; 50
        call    L_108D                          ; E8 72 FE
        mov     si, ax                          ; 8B F0
        add     di, si                          ; 03 FE
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp + 6], ax           ; 01 46 06
        sub     word ptr [bp + 4], si           ; 29 76 04
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_123D                          ; 7E 10
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        mov     word ptr es:[bx], 0xa           ; 26 C7 07 0A 00
        dec     word ptr [bp + 4]               ; FF 4E 04
        inc     di                              ; 47
;   [conditional branch target (if/else)] L_123D
L_123D:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jg      L_1247                          ; 7F 04
;   [conditional branch target (if/else)] L_1243
L_1243:
        mov     ax, di                          ; 8B C7
        jmp     L_124C                          ; EB 05
;   [conditional branch target (if/else)] L_1247
L_1247:
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_11F1                          ; EB A5
;   [fall-through exit] L_124C
L_124C:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (80 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1254   offset=0x1254  size=80 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_100E, L_605D
;-------------------------------------------------------------------------
;   [sub-routine] L_1254
L_1254:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        cmp     word ptr [bx + 0xc], 0          ; 83 7F 0C 00
        jg      L_1267                          ; 7F 03
        jmp     L_1327                          ; E9 C0 00
;   [conditional branch target (if/else)] L_1267
L_1267:
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jg      L_12BD                          ; 7F 36
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_12BD                          ; 7E 31
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        mov     word ptr [bp + 6], ax           ; 89 46 06
        cmp     ax, word ptr [bx + 0xc]         ; 3B 47 0C
        jl      L_12AF                          ; 7C 12
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bx + 0xc], 0          ; C7 47 0C 00 00
        mov     word ptr [bx + 0xa], 0          ; C7 47 0A 00 00
        jmp     L_12F8                          ; EB 49
;   [conditional branch target (if/else)] L_12AF
L_12AF:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr [bx + 0xa], ax         ; 01 47 0A
        sub     word ptr [bx + 0xc], ax         ; 29 47 0C
        jmp     L_12F8                          ; EB 3B
;   [conditional branch target (if/else)] L_12BD
L_12BD:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jge     L_12E0                          ; 7D 1B
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_12E0                          ; 7C 16
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     si, bx                          ; 8B F3
        sub     ax, word ptr [si + 0xa]         ; 2B 44 0A
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        jmp     L_12F8                          ; EB 18
;   [conditional branch target (if/else)] L_12E0
L_12E0:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        jg      L_12F3                          ; 7F 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jl      L_12F8                          ; 7C 05
;   [conditional branch target (if/else)] L_12F3
L_12F3:
        mov     word ptr [bp + 6], 0            ; C7 46 06 00 00
;   [branch target] L_12F8
L_12F8:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_1327                          ; 7E 29
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1310                          ; 74 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_100E                          ; E8 FE FC
;   [conditional branch target (if/else)] L_1310
L_1310:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        add     ax, 0x12                        ; 05 12 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_605D                          ; E8 36 4D
;   [error/early exit] L_1327
L_1327:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (47 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_132E   offset=0x132E  size=47 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1254
;-------------------------------------------------------------------------
;   [sub-routine] L_132E
L_132E:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1254                          ; E8 13 FF
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx + 8], 1            ; C7 47 08 01 00
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_1359                          ; 75 0A
        mov     word ptr [bx + 0x10], 0         ; C7 47 10 00 00
        mov     word ptr [bx + 0xe], 0          ; C7 47 0E 00 00
;   [error/early exit] L_1359
L_1359:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     bx, si                          ; 8B DE
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, si                          ; 8B C6
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bx], ax               ; 89 07
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (79 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_13A6   offset=0x13A6  size=79 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_148E
;-------------------------------------------------------------------------
;   [sub-routine] L_13A6
L_13A6:
        ;   = cProc <20> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     word ptr [0x52], 1              ; C7 06 52 00 01 00
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        mov     word ptr [bp - 0x10], 0x174e    ; C7 46 F0 4E 17
        sub     di, di                          ; 2B FF
;   [loop start] L_13D9
L_13D9:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     si, word ptr [bx]               ; 8B 37
        cmp     word ptr [si + 8], 0            ; 83 7C 08 00
        je      L_13ED                          ; 74 05
        inc     word ptr [bp - 8]               ; FF 46 F8
        jmp     L_1446                          ; EB 59
;   [conditional branch target (if/else)] L_13ED
L_13ED:
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [si + 6]           ; 2B 44 06
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_1408                          ; 75 0D
        mov     word ptr [bp - 6], di           ; 89 7E FA
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_1446                          ; EB 3E
;   [conditional branch target (if/else)] L_1408
L_1408:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        cmp     ax, di                          ; 3B C7
        jne     L_141F                          ; 75 0D
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jne     L_141F                          ; 75 05
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_1446                          ; EB 27
;   [conditional branch target (if/else)] L_141F
L_141F:
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        call    L_148E                          ; E8 5D 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        jne     L_1477                          ; 75 3F
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 6], di           ; 89 7E FA
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [unconditional branch target] L_1446
L_1446:
        mov     word ptr [si + 6], di           ; 89 7C 06
        mov     word ptr [si + 8], 0            ; C7 44 08 00 00
        inc     di                              ; 47
        cmp     di, 0x18                        ; 83 FF 18
        jle     L_13D9                          ; 7E 85
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_1471                          ; EB 13
;   [loop start] L_145E
L_145E:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jle     L_1477                          ; 7E 13
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        call    L_148E                          ; E8 20 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
;   [unconditional branch target] L_1471
L_1471:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_145E                          ; 74 E7
;   [conditional branch target (if/else)] L_1477
L_1477:
        mov     word ptr [0x52], 0              ; C7 06 52 00 00 00
        mov     word ptr [0x50], 0              ; C7 06 50 00 00 00
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (107 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_148E   offset=0x148E  size=107 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1884, L_20ED, L_2182
;-------------------------------------------------------------------------
;   [sub-routine] L_148E
L_148E:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        cmp     word ptr [si + 2], 0            ; 83 7C 02 00
        jg      L_14A7                          ; 7F 03
        jmp     L_15AB                          ; E9 04 01
;   [conditional branch target (if/else)] L_14A7
L_14A7:
        cmp     word ptr [si + 6], 0            ; 83 7C 06 00
        jg      L_14B0                          ; 7F 03
        jmp     L_1536                          ; E9 86 00
;   [conditional branch target (if/else)] L_14B0
L_14B0:
        cmp     word ptr [si + 8], 0            ; 83 7C 08 00
        jle     L_14E1                          ; 7E 2B
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si + 8]           ; 2B 44 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        add     ax, word ptr [si + 8]           ; 03 44 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [si]               ; 2B 04
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     di, word ptr [bp - 0xc]         ; 8B 7E F4
        add     di, ax                          ; 03 F8
        add     word ptr [si], di               ; 01 3C
        sub     word ptr [si + 2], di           ; 29 7C 02
        jmp     L_154D                          ; EB 6C
;   [conditional branch target (if/else)] L_14E1
L_14E1:
        cmp     word ptr [si + 8], 0            ; 83 7C 08 00
        jge     L_150F                          ; 7D 28
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [si + 8]           ; 2B 44 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si]               ; 2B 04
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     di, ax                          ; 8B F8
        add     di, word ptr [bp - 0xc]         ; 03 7E F4
        sub     word ptr [si + 2], di           ; 29 7C 02
        add     word ptr [si], di               ; 01 3C
        jmp     L_154D                          ; EB 3E
;   [conditional branch target (if/else)] L_150F
L_150F:
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si]               ; 2B 04
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        add     ax, word ptr [si + 6]           ; 03 44 06
        add     word ptr [si], ax               ; 01 04
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, word ptr [si + 6]           ; 03 44 06
        sub     word ptr [si + 2], ax           ; 29 44 02
        mov     word ptr [si + 6], 0            ; C7 44 06 00 00
        jmp     L_154D                          ; EB 17
;   [unconditional branch target] L_1536
L_1536:
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        add     word ptr [si], ax               ; 01 04
        mov     word ptr [si + 2], 0            ; C7 44 02 00 00
;   [unconditional branch target] L_154D
L_154D:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_1576                          ; 74 23
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], 0x50         ; C7 46 FA 50 00
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        push    word ptr [si + 8]               ; FF 74 08
        call    L_2182                          ; E8 0C 0C
;   [conditional branch target (if/else)] L_1576
L_1576:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        je      L_15AB                          ; 74 2F
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], 0x50         ; C7 46 FA 50 00
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_20ED                          ; E8 50 0B
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_1884                          ; E8 D9 02
;   [branch target] L_15AB
L_15AB:
        mov     word ptr [si + 6], 0            ; C7 44 06 00 00
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (144 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_15BB   offset=0x15BB  size=144 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_132E, L_1D3B
;-------------------------------------------------------------------------
;   [sub-routine] L_15BB
L_15BB:
        ;   = cProc <60> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x3c                        ; 83 EC 3C
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_15CC                          ; 7D 03
        jmp     L_172E                          ; E9 62 01
;   [conditional branch target (if/else)] L_15CC
L_15CC:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 6]           ; 03 46 06
        cmp     ax, 0x19                        ; 3D 19 00
        jle     L_15DA                          ; 7E 03
        jmp     L_172E                          ; E9 54 01
;   [conditional branch target (if/else)] L_15DA
L_15DA:
        mov     word ptr [0x50], 1              ; C7 06 50 00 01 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1D3B                          ; E8 4F 07
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jl      L_15F5                          ; 7C 03
        jmp     L_1684                          ; E9 8F 00
;   [conditional branch target (if/else)] L_15F5
L_15F5:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 4], ax           ; 89 46 04
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        shl     si, 1                           ; D1 E6
        add     si, 0x174e                      ; 81 C6 4E 17
        mov     di, bp                          ; 8B FD
        sub     di, 0x3c                        ; 83 EF 3C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_163B                          ; EB 22
;   [loop start] L_1619
L_1619:
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     word ptr [bx + 4], ax           ; 01 47 04
        push    bx                              ; 53
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_132E                          ; E8 02 FD
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 8], 1            ; C7 47 08 01 00
        mov     ax, bx                          ; 8B C3
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
;   [unconditional branch target] L_163B
L_163B:
        dec     word ptr [bp - 6]               ; FF 4E FA
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jge     L_1619                          ; 7D D5
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        shl     di, 1                           ; D1 E7
        add     di, 0x174e                      ; 81 C7 4E 17
        jmp     L_1662                          ; EB 13
;   [loop start] L_164F
L_164F:
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     word ptr [bx + 4], ax           ; 29 47 04
        mov     ax, bx                          ; 8B C3
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
;   [unconditional branch target] L_1662
L_1662:
        dec     word ptr [bp - 2]               ; FF 4E FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_164F                          ; 7D E4
        mov     si, bp                          ; 8B F5
        sub     si, 0x3c                        ; 83 EE 3C
;   [loop start] L_1670
L_1670:
        dec     word ptr [bp + 4]               ; FF 4E 04
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jge     L_167C                          ; 7D 03
        jmp     L_172E                          ; E9 B2 00
;   [conditional branch target (if/else)] L_167C
L_167C:
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        jmp     L_1670                          ; EB EC
;   [unconditional branch target] L_1684
L_1684:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jg      L_168D                          ; 7F 03
        jmp     L_172E                          ; E9 A1 00
;   [conditional branch target (if/else)] L_168D
L_168D:
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        add     si, word ptr [bp + 6]           ; 03 76 06
        shl     si, 1                           ; D1 E6
        add     si, 0x174e                      ; 81 C6 4E 17
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        shl     di, 1                           ; D1 E7
        add     di, bp                          ; 03 FD
        sub     di, 0x3c                        ; 83 EF 3C
        jmp     L_16D8                          ; EB 24
;   [loop start] L_16B4
L_16B4:
        sub     si, 2                           ; 83 EE 02
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_132E                          ; E8 6B FC
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 8], 1            ; C7 47 08 01 00
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     word ptr [bx + 4], ax           ; 29 47 04
        sub     di, 2                           ; 83 EF 02
        mov     ax, bx                          ; 8B C3
        mov     word ptr [di], ax               ; 89 05
;   [unconditional branch target] L_16D8
L_16D8:
        dec     word ptr [bp - 6]               ; FF 4E FA
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jge     L_16B4                          ; 7D D3
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        add     di, word ptr [bp + 6]           ; 03 7E 06
        shl     di, 1                           ; D1 E7
        add     di, 0x174e                      ; 81 C7 4E 17
        jmp     L_1706                          ; EB 17
;   [loop start] L_16EF
L_16EF:
        sub     si, 2                           ; 83 EE 02
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [bx + 4], ax           ; 01 47 04
        sub     di, 2                           ; 83 EF 02
        mov     ax, bx                          ; 8B C3
        mov     word ptr [di], ax               ; 89 05
;   [unconditional branch target] L_1706
L_1706:
        dec     word ptr [bp - 2]               ; FF 4E FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_16EF                          ; 7D E0
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        shl     si, 1                           ; D1 E6
        add     si, bp                          ; 03 F5
        sub     si, 0x3c                        ; 83 EE 3C
        jmp     L_1725                          ; EB 0A
;   [loop start] L_171B
L_171B:
        sub     di, 2                           ; 83 EF 02
        sub     si, 2                           ; 83 EE 02
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [di], ax               ; 89 05
;   [unconditional branch target] L_1725
L_1725:
        dec     word ptr [bp + 4]               ; FF 4E 04
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jge     L_171B                          ; 7D ED
;   [fall-through exit] L_172E
L_172E:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (86 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1736   offset=0x1736  size=86 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0F13, L_1254, L_13A6, L_20ED
;-------------------------------------------------------------------------
;   [sub-routine] L_1736
L_1736:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_1745                          ; 75 03
        jmp     L_1820                          ; E9 DB 00
;   [conditional branch target (if/else)] L_1745
L_1745:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        call    L_0F13                          ; E8 BD F7
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        call    L_0F13                          ; E8 A8 F7
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        push    word ptr es:[bx]                ; 26 FF 37
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x4f                        ; B8 4F 00
        push    ax                              ; 50
        call    L_0F13                          ; E8 94 F7
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    L_0F13                          ; E8 80 F7
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        cmp     word ptr [0x50], 0              ; 83 3E 50 00 00
        je      L_17C4                          ; 74 23
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        mov     cx, word ptr es:[bx + 4]        ; 26 8B 4F 04
        sub     cx, word ptr es:[bx]            ; 26 2B 0F
        imul    cx                              ; F7 E9
        cmp     ax, 0x51                        ; 3D 51 00
        jge     L_17BE                          ; 7D 07
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        jmp     L_17D3                          ; EB 15
;   [conditional branch target (if/else)] L_17BE
L_17BE:
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_13A6                          ; E8 E2 FB
;   [conditional branch target (if/else)] L_17C4
L_17C4:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_20ED                          ; E8 1D 09
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [unconditional branch target] L_17D3
L_17D3:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        shl     ax, 1                           ; D1 E0
        add     ax, 0x174e                      ; 05 4E 17
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_1814                          ; EB 1F
;   [loop start] L_17F5
L_17F5:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_1254                          ; E8 43 FA
        inc     word ptr [bp - 6]               ; FF 46 FA
;   [unconditional branch target] L_1814
L_1814:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jg      L_17F5                          ; 7F D5
;   [fall-through exit] L_1820
L_1820:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (33 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1826   offset=0x1826  size=33 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1C66, L_2808
;-------------------------------------------------------------------------
;   [sub-routine] L_1826
L_1826:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_2808                          ; E8 C7 0F
        cmp     word ptr [0x5e], 0              ; 83 3E 5E 00 00
        jne     L_187E                          ; 75 36
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        inc     ax                              ; 40
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 4]           ; 03 46 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x58]                 ; FF 36 58 00
        push    word ptr [0x56]                 ; FF 36 56 00
        push    word ptr [0x5c]                 ; FF 36 5C 00
        push    word ptr [0x5a]                 ; FF 36 5A 00
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_1C66                          ; E8 E8 03
;   [error/early exit] L_187E
L_187E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; Description (heuristic):
;   Pure computation / dispatcher (83 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1884   offset=0x1884  size=83 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0F13, L_100E, L_1826, L_1954
;-------------------------------------------------------------------------
;   [sub-routine] L_1884
L_1884:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1954                          ; E8 C2 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        call    L_0F13                          ; E8 70 F6
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        call    L_0F13                          ; E8 5C F6
        dec     ax                              ; 48
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jle     L_18C3                          ; 7E 03
        jmp     L_194C                          ; E9 89 00
;   [conditional branch target (if/else)] L_18C3
L_18C3:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        shl     ax, 1                           ; D1 E0
        add     ax, 0x174e                      ; 05 4E 17
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [loop start] L_18CE
L_18CE:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     si, word ptr [bx]               ; 8B 37
        mov     word ptr [bp - 2], si           ; 89 76 FE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        cmp     word ptr [si + 0xa], di         ; 39 7C 0A
        jge     L_18E9                          ; 7D 04
        mov     ax, di                          ; 8B C7
        jmp     L_18EC                          ; EB 03
;   [conditional branch target (if/else)] L_18E9
L_18E9:
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
;   [unconditional branch target] L_18EC
L_18EC:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        add     ax, word ptr [si + 0xc]         ; 03 44 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        jge     L_1907                          ; 7D 06
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        jmp     L_190A                          ; EB 03
;   [conditional branch target (if/else)] L_1907
L_1907:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
;   [unconditional branch target] L_190A
L_190A:
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jle     L_1941                          ; 7E 2D
        cmp     word ptr [0x52], 0              ; 83 3E 52 00 00
        je      L_1925                          ; 74 0A
        push    si                              ; 56
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    ax                              ; 50
        call    L_100E                          ; E8 EB F6
        jmp     L_1941                          ; EB 1C
;   [conditional branch target (if/else)] L_1925
L_1925:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        add     ax, 0x12                        ; 05 12 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_1826                          ; E8 E5 FE
;   [branch target] L_1941
L_1941:
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jle     L_18CE                          ; 7E 82
;   [fall-through exit] L_194C
L_194C:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (40 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1954   offset=0x1954  size=40 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0F75, L_13A6, L_1826
;-------------------------------------------------------------------------
;   [sub-routine] L_1954
L_1954:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        cmp     word ptr [0x52], 0              ; 83 3E 52 00 00
        jne     L_19B3                          ; 75 51
        cmp     word ptr [0x50], 0              ; 83 3E 50 00 00
        je      L_19AC                          ; 74 43
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_13A6                          ; E8 37 FA
        jmp     L_19AC                          ; EB 3B
;   [loop start] L_1971
L_1971:
        mov     bx, word ptr [0x54]             ; 8B 1E 54 00
        mov     si, word ptr [bx + 2]           ; 8B 77 02
        cmp     word ptr [si + 0x10], 0         ; 83 7C 10 00
        jle     L_19A2                          ; 7E 24
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 4]               ; FF 76 FC
        push    ax                              ; 50
        shl     ax, 1                           ; D1 E0
        lea     cx, [si + 0x12]                 ; 8D 4C 12
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [si + 0x10]            ; FF 74 10
        call    L_1826                          ; E8 84 FE
;   [conditional branch target (if/else)] L_19A2
L_19A2:
        push    si                              ; 56
        push    word ptr [si + 0xe]             ; FF 74 0E
        push    word ptr [si + 0x10]            ; FF 74 10
        call    L_0F75                          ; E8 C9 F5
;   [branch target] L_19AC
L_19AC:
        cmp     word ptr [0x54], 0              ; 83 3E 54 00 00
        jne     L_1971                          ; 75 BE
;   [error/early exit] L_19B3
L_19B3:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (38 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_19BA   offset=0x19BA  size=38 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_132E, L_272D
;-------------------------------------------------------------------------
;   [sub-routine] L_19BA
L_19BA:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
;   [loop start] L_19C4
L_19C4:
        mov     ax, 0xb2                        ; B8 B2 00
        imul    si                              ; F7 EE
        mov     di, ax                          ; 8B F8
        add     di, 0x5ec                       ; 81 C7 EC 05
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x174e], di      ; 89 BF 4E 17
        mov     word ptr [di + 4], si           ; 89 75 04
        mov     word ptr [di + 6], si           ; 89 75 06
        mov     word ptr [di + 8], 0            ; C7 45 08 00 00
        mov     word ptr [di], di               ; 89 3D
        mov     word ptr [di + 2], di           ; 89 7D 02
        mov     word ptr [di + 0xa], 0          ; C7 45 0A 00 00
        mov     word ptr [di + 0xc], 0x50       ; C7 45 0C 50 00
        mov     word ptr [di + 0xe], 0          ; C7 45 0E 00 00
        mov     word ptr [di + 0x10], 0         ; C7 45 10 00 00
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_132E                          ; E8 2C F9
        mov     word ptr [di + 8], 0            ; C7 45 08 00 00
        mov     word ptr [di + 0xc], 0          ; C7 45 0C 00 00
        inc     si                              ; 46
        cmp     si, 0x18                        ; 83 FE 18
        jle     L_19C4                          ; 7E B2
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_272D                          ; E8 15 0D
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Internal helper (6 instructions).

;-------------------------------------------------------------------------
; sub_1A20   offset=0x1A20  size=6 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_27AA
;-------------------------------------------------------------------------
;   [sub-routine] L_1A20
L_1A20:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_27AA                          ; E8 84 0D
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x8]  WORD      (1 use)

; Description (heuristic):
;   Pure computation / dispatcher (50 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1A2A   offset=0x1A2A  size=50 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_100E, L_6074
;-------------------------------------------------------------------------
;   [sub-routine] L_1A2A
L_1A2A:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_1A96                          ; 7E 5E
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_1A96                          ; 7C 58
        cmp     word ptr [bp + 8], 0x18         ; 83 7E 08 18
        jg      L_1A96                          ; 7F 52
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_1A96                          ; 7C 4C
        cmp     word ptr [bp + 6], 0x4f         ; 83 7E 06 4F
        jg      L_1A96                          ; 7F 46
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [bx + 0x174e]      ; 8B BF 4E 17
        mov     si, word ptr [di + 0xa]         ; 8B 75 0A
        sub     si, word ptr [bp + 6]           ; 2B 76 06
        add     si, word ptr [di + 0xc]         ; 03 75 0C
        or      si, si                          ; 0B F6
        jle     L_1A96                          ; 7E 30
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jle     L_1A6E                          ; 7E 03
        mov     word ptr [bp + 4], si           ; 89 76 04
;   [conditional branch target (if/else)] L_1A6E
L_1A6E:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        lea     ax, [bx + di + 0x12]            ; 8D 41 12
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        shl     ax, 1                           ; D1 E0
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    L_6074                          ; E8 EC 45
        push    di                              ; 57
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        call    L_100E                          ; E8 7E F5
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     word ptr [di + 0xc], ax         ; 29 45 0C
;   [error/early exit] L_1A96
L_1A96:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (99 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1A9E   offset=0x1A9E  size=99 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_100E, L_603D, L_6074
;-------------------------------------------------------------------------
;   [sub-routine] L_1A9E
L_1A9E:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jg      L_1AAE                          ; 7F 03
        jmp     L_1BA4                          ; E9 F6 00
;   [conditional branch target (if/else)] L_1AAE
L_1AAE:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jge     L_1AB7                          ; 7D 03
        jmp     L_1BA4                          ; E9 ED 00
;   [conditional branch target (if/else)] L_1AB7
L_1AB7:
        cmp     word ptr [bp + 0xc], 0x18       ; 83 7E 0C 18
        jle     L_1AC0                          ; 7E 03
        jmp     L_1BA4                          ; E9 E4 00
;   [conditional branch target (if/else)] L_1AC0
L_1AC0:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jge     L_1AC9                          ; 7D 03
        jmp     L_1BA4                          ; E9 DB 00
;   [conditional branch target (if/else)] L_1AC9
L_1AC9:
        cmp     word ptr [bp + 0xa], 0x4f       ; 83 7E 0A 4F
        jle     L_1AD2                          ; 7E 03
        jmp     L_1BA4                          ; E9 D2 00
;   [conditional branch target (if/else)] L_1AD2
L_1AD2:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x174e]      ; 8B 87 4E 17
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        add     ax, 0x12                        ; 05 12 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], ds           ; 8C 5E FA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 4]           ; 03 46 04
        cmp     ax, 0x50                        ; 3D 50 00
        jle     L_1B03                          ; 7E 09
        mov     ax, 0x50                        ; B8 50 00
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mov     word ptr [bp + 4], ax           ; 89 46 04
;   [conditional branch target (if/else)] L_1B03
L_1B03:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        add     ax, word ptr [bx + 0xc]         ; 03 47 0C
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jge     L_1B1B                          ; 7D 05
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [conditional branch target (if/else)] L_1B1B
L_1B1B:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        cmp     ax, 0x50                        ; 3D 50 00
        jle     L_1B38                          ; 7E 09
        mov     ax, 0x50                        ; B8 50 00
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_1B38
L_1B38:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    L_6074                          ; E8 27 45
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    L_603D                          ; E8 DB 44
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     word ptr [bx + 0xc], 0          ; 83 7F 0C 00
        jne     L_1B70                          ; 75 05
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        jmp     L_1B86                          ; EB 16
;   [conditional branch target (if/else)] L_1B70
L_1B70:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        jge     L_1B80                          ; 7D 05
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        jmp     L_1B83                          ; EB 03
;   [conditional branch target (if/else)] L_1B80
L_1B80:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
;   [unconditional branch target] L_1B83
L_1B83:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
;   [unconditional branch target] L_1B86
L_1B86:
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     si, bx                          ; 8B F3
        sub     ax, word ptr [si + 0xa]         ; 2B 44 0A
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        push    bx                              ; 53
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_100E                          ; E8 6A F4
;   [fall-through exit] L_1BA4
L_1BA4:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_1BAB   offset=0x1BAB  size=19 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1BAB
L_1BAB:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jle     L_1BC0                          ; 7E 07
;   [loop start] L_1BB9
L_1BB9:
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        jmp     L_1BD5                          ; EB 15
;   [conditional branch target (if/else)] L_1BC0
L_1BC0:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_1BD0                          ; 75 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jg      L_1BB9                          ; 7F E9
;   [conditional branch target (if/else)] L_1BD0
L_1BD0:
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [fall-through exit] L_1BD5
L_1BD5:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (27 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1BDE   offset=0x1BDE  size=27 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1BDE
L_1BDE:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jle     L_1BF4                          ; 7E 08
;   [loop start] L_1BEC
L_1BEC:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        jmp     L_1C0A                          ; EB 16
;   [conditional branch target (if/else)] L_1BF4
L_1BF4:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jne     L_1C04                          ; 75 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jg      L_1BEC                          ; 7F E8
;   [conditional branch target (if/else)] L_1C04
L_1C04:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
;   [unconditional branch target] L_1C0A
L_1C0A:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     ax, bx                          ; 8B C3
        mov     dx, ss                          ; 8C D2
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (27 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1C22   offset=0x1C22  size=27 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1C22
L_1C22:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jge     L_1C38                          ; 7D 08
;   [loop start] L_1C30
L_1C30:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        jmp     L_1C4E                          ; EB 16
;   [conditional branch target (if/else)] L_1C38
L_1C38:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jne     L_1C48                          ; 75 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jl      L_1C30                          ; 7C E8
;   [conditional branch target (if/else)] L_1C48
L_1C48:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
;   [unconditional branch target] L_1C4E
L_1C4E:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     ax, bx                          ; 8B C3
        mov     dx, ss                          ; 8C D2
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Mixed routine using: INTERSECTRECT.

;-------------------------------------------------------------------------
; sub_1C66   offset=0x1C66  size=79 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   INTERSECTRECT
;
; Near calls (internal): L_2078
;-------------------------------------------------------------------------
;   [sub-routine] L_1C66
L_1C66:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jle     L_1C7A                          ; 7E 03
        jmp     L_1D35                          ; E9 BB 00
;   [conditional branch target (if/else)] L_1C7A
L_1C7A:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bx + 6], ax           ; 39 47 06
        jg      L_1C85                          ; 7F 03
        jmp     L_1D35                          ; E9 B0 00
;   [conditional branch target (if/else)] L_1C85
L_1C85:
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jle     L_1C95                          ; 7E 0B
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     word ptr [bp + 0xa], 0          ; C7 46 0A 00 00
;   [conditional branch target (if/else)] L_1C95
L_1C95:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bx + 6], ax           ; 39 47 06
        jle     L_1CA3                          ; 7E 03
        jmp     L_1D2A                          ; E9 87 00
;   [conditional branch target (if/else)] L_1CA3
L_1CA3:
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        dec     ax                              ; 48
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], 0x50         ; C7 46 06 50 00
        jmp     L_1D2A                          ; EB 79
;   [loop start] L_1CB1
L_1CB1:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        inc     ax                              ; 40
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jne     L_1CD4                          ; 75 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_1CD9                          ; EB 05
;   [conditional branch target (if/else)] L_1CD4
L_1CD4:
        mov     word ptr [bp - 0xe], 0x50       ; C7 46 F2 50 00
;   [unconditional branch target] L_1CD9
L_1CD9:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x174e]      ; 8B 87 4E 17
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     ax                              ; 40
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        add     ax, word ptr [bx + 0xc]         ; 03 47 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INTERSECTRECT          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1D22                          ; 74 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        call    L_2078                          ; E8 56 03
;   [conditional branch target (if/else)] L_1D22
L_1D22:
        mov     word ptr [bp + 0xa], 0          ; C7 46 0A 00 00
        inc     word ptr [bp + 0xc]             ; FF 46 0C
;   [unconditional branch target] L_1D2A
L_1D2A:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jg      L_1D35                          ; 7F 03
        jmp     L_1CB1                          ; E9 7C FF
;   [error/early exit] L_1D35
L_1D35:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; Description (heuristic):
;   Pure computation / dispatcher (31 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1D3B   offset=0x1D3B  size=31 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1D3B
L_1D3B:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [0x58], ax             ; 01 06 58 00
        add     word ptr [0x5c], ax             ; 01 06 5C 00
        or      ax, ax                          ; 0B C0
        jle     L_1D77                          ; 7E 2A
        cmp     word ptr [0x5c], 0x18           ; 83 3E 5C 00 18
        jle     L_1D9F                          ; 7E 4B
        mov     word ptr [0x5a], 0x50           ; C7 06 5A 00 50 00
        mov     word ptr [0x5c], 0x18           ; C7 06 5C 00 18 00
        cmp     word ptr [0x58], 0x18           ; 83 3E 58 00 18
        jle     L_1D9F                          ; 7E 38
        mov     ax, word ptr [0x5a]             ; A1 5A 00
        mov     dx, word ptr [0x5c]             ; 8B 16 5C 00
        mov     word ptr [0x56], ax             ; A3 56 00
        mov     word ptr [0x58], dx             ; 89 16 58 00
        jmp     L_1D9F                          ; EB 28
;   [conditional branch target (if/else)] L_1D77
L_1D77:
        cmp     word ptr [0x58], 0              ; 83 3E 58 00 00
        jge     L_1D9F                          ; 7D 21
        mov     word ptr [0x58], 0              ; C7 06 58 00 00 00
        mov     word ptr [0x56], 0              ; C7 06 56 00 00 00
        cmp     word ptr [0x5c], 0              ; 83 3E 5C 00 00
        jge     L_1D9F                          ; 7D 0E
        mov     ax, word ptr [0x56]             ; A1 56 00
        mov     dx, word ptr [0x58]             ; 8B 16 58 00
        mov     word ptr [0x5a], ax             ; A3 5A 00
        mov     word ptr [0x5c], dx             ; 89 16 5C 00
;   [error/early exit] L_1D9F
L_1D9F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_1DA5   offset=0x1DA5  size=14 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1DA5
L_1DA5:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [0x56]             ; A1 56 00
        mov     dx, word ptr [0x58]             ; 8B 16 58 00
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [0x5a]             ; A1 5A 00
        mov     dx, word ptr [0x5c]             ; 8B 16 5C 00
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: SETRECT.

;-------------------------------------------------------------------------
; sub_1DCA   offset=0x1DCA  size=162 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   SETRECT
;
; Near calls (internal): L_13A6, L_1BAB, L_1BDE, L_1C22, L_1C66
;-------------------------------------------------------------------------
;   [sub-routine] L_1DCA
L_1DCA:
        ;   = cProc <32> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x20                        ; 83 EC 20
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x50], 0              ; 83 3E 50 00 00
        je      L_1DF3                          ; 74 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_13A6                          ; E8 B3 F5
;   [conditional branch target (if/else)] L_1DF3
L_1DF3:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        call    L_1C22                          ; E8 1C FE
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ax                              ; 50
        call    L_1BDE                          ; E8 B8 FD
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x58]                 ; FF 36 58 00
        push    word ptr [0x56]                 ; FF 36 56 00
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ax                              ; 50
        call    L_1C22                          ; E8 DE FD
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 0xa], dx         ; 89 56 0A
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [0x5c]                 ; FF 36 5C 00
        push    word ptr [0x5a]                 ; FF 36 5A 00
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ax                              ; 50
        call    L_1BDE                          ; E8 78 FD
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp + 4], ax           ; 89 46 04
        mov     word ptr [bp + 6], dx           ; 89 56 06
        push    word ptr [0x58]                 ; FF 36 58 00
        push    word ptr [0x56]                 ; FF 36 56 00
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_1BAB                          ; E8 27 FD
        or      ax, ax                          ; 0B C0
        jne     L_1E9D                          ; 75 15
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [0x5c]                 ; FF 36 5C 00
        push    word ptr [0x5a]                 ; FF 36 5A 00
        call    L_1BAB                          ; E8 12 FD
        or      ax, ax                          ; 0B C0
        je      L_1EC8                          ; 74 2B
;   [conditional branch target (if/else)] L_1E9D
L_1E9D:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [0x58]                 ; FF 36 58 00
        push    word ptr [0x56]                 ; FF 36 56 00
        push    word ptr [0x5c]                 ; FF 36 5C 00
        push    word ptr [0x5a]                 ; FF 36 5A 00
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_1C66                          ; E8 AF FD
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        jmp     L_1F45                          ; EB 7D
;   [conditional branch target (if/else)] L_1EC8
L_1EC8:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [0x58]                 ; FF 36 58 00
        push    word ptr [0x56]                 ; FF 36 56 00
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ax                              ; 50
        call    L_1C22                          ; E8 42 FD
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [0x58]                 ; FF 36 58 00
        push    word ptr [0x56]                 ; FF 36 56 00
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        call    L_1BDE                          ; E8 E2 FC
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx]                   ; FF 37
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_1C66                          ; E8 5C FD
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [0x5c]                 ; FF 36 5C 00
        push    word ptr [0x5a]                 ; FF 36 5A 00
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ax                              ; 50
        call    L_1C22                          ; E8 00 FD
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [0x5c]                 ; FF 36 5C 00
        push    word ptr [0x5a]                 ; FF 36 5A 00
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ax                              ; 50
        call    L_1BDE                          ; E8 A0 FC
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx]                   ; FF 37
;   [unconditional branch target] L_1F45
L_1F45:
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_1C66                          ; E8 1A FD
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     word ptr [0x56], ax             ; A3 56 00
        mov     word ptr [0x58], dx             ; 89 16 58 00
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [0x5a], ax             ; A3 5A 00
        mov     word ptr [0x5c], dx             ; 89 16 5C 00
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jne     L_1F77                          ; 75 0C
        mov     ax, dx                          ; 8B C2
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jne     L_1F77                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1F79                          ; EB 02
;   [conditional branch target (if/else)] L_1F77
L_1F77:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_1F79
L_1F79:
        mov     word ptr [0x5e], ax             ; A3 5E 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Mixed routine using: HIDECARET, SCROLLWINDOW, SHOWCARET (+1 more).

;-------------------------------------------------------------------------
; sub_1F82   offset=0x1F82  size=46 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   HIDECARET
;   SCROLLWINDOW
;   SHOWCARET
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_1F82
L_1F82:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jl      L_2002                          ; 7C 74
        cmp     word ptr [bp + 4], 0x4f         ; 83 7E 04 4F
        jg      L_2002                          ; 7F 6E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0x6e]             ; 2B 06 6E 00
        imul    word ptr [0x1784]               ; F7 2E 84 17
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x72]             ; A1 72 00
        sub     ax, word ptr [0x6e]             ; 2B 06 6E 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x6e], ax             ; A3 6E 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x6e]             ; 03 06 6E 00
        mov     word ptr [0x72], ax             ; A3 72 00
        mov     ax, word ptr [0x6e]             ; A1 6E 00
        mov     word ptr [0x76], ax             ; A3 76 00
        mov     ax, word ptr [0x72]             ; A1 72 00
        mov     word ptr [0x7a], ax             ; A3 7A 00
        push    word ptr [0x2070]               ; FF 36 70 20
        call    far USER.HIDECARET              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A F5 1F 00 00 [FIXUP]
        push    word ptr [0x2070]               ; FF 36 70 20
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SCROLLWINDOW           ; 9A 2D 22 00 00 [FIXUP]
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 0F 22 00 00 [FIXUP]
        push    word ptr [0x2070]               ; FF 36 70 20
        call    far USER.SHOWCARET              ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_2002
L_2002:
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x2]   HDC       (3 uses)

; Description (heuristic):
;   Mixed routine using: SELECTOBJECT, SETBKMODE, SETTEXTCOLOR (+1 more).

;-------------------------------------------------------------------------
; sub_200A   offset=0x200A  size=21 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   GETDC(HWND hWnd) -> HDC
;-------------------------------------------------------------------------
;   [sub-routine] L_200A
L_200A:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FC 07 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        ;   ^ arg hDC
        push    word ptr [0x1788]               ; FF 36 88 17
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 23 08 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        push    word ptr [0x1782]               ; FF 36 82 17
        ;   ^ arg clrText (high/segment)
        push    word ptr [0x1780]               ; FF 36 80 17
        ;   ^ arg clrText (low/offset)
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Small helper using 2 API(s): FILLRECT, GETCLIENTRECT.

;-------------------------------------------------------------------------
; sub_2049   offset=0x2049  size=18 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   FILLRECT
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;-------------------------------------------------------------------------
;   [sub-routine] L_2049
L_2049:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_2072                          ; 74 1F
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        mov     ax, 0x1c32                      ; B8 32 1C
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x1c32                      ; B8 32 1C
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x60]                 ; FF 36 60 00
        call    far USER.FILLRECT               ; 9A 27 21 00 00 [FIXUP]
;   [error/early exit] L_2072
L_2072:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: INTERSECTRECT, INVERTRECT.

;-------------------------------------------------------------------------
; sub_2078   offset=0x2078  size=52 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   INTERSECTRECT
;   INVERTRECT
;
; Near calls (internal): L_2CF4
;-------------------------------------------------------------------------
;   [sub-routine] L_2078
L_2078:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x6e                        ; B8 6E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INTERSECTRECT          ; 9A C1 20 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_20AA                          ; 74 14
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_2CF4                          ; E8 57 0C
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A E3 20 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_20AA
L_20AA:
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_20E7                          ; 74 36
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x76                        ; B8 76 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INTERSECTRECT          ; 9A 0B 21 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_20E7                          ; 74 1E
        mov     ax, word ptr [0x74]             ; A1 74 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     ax                              ; 40
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_2CF4                          ; E8 1A 0C
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_20E7
L_20E7:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: FILLRECT, INTERSECTRECT.

;-------------------------------------------------------------------------
; sub_20ED   offset=0x20ED  size=58 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   FILLRECT
;   INTERSECTRECT
;
; Near calls (internal): L_2CF4
;-------------------------------------------------------------------------
;   [sub-routine] L_20ED
L_20ED:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_2174                          ; 74 7A
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x6e                        ; B8 6E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.INTERSECTRECT          ; 9A 43 21 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_212B                          ; 74 18
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_2CF4                          ; E8 DA 0B
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x60]                 ; FF 36 60 00
        call    far USER.FILLRECT               ; 9A 69 21 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_212B
L_212B:
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_216D                          ; 74 3B
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x76                        ; B8 76 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.INTERSECTRECT          ; 9A B0 21 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_216D                          ; 74 22
        mov     ax, word ptr [0x74]             ; A1 74 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     ax                              ; 40
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_2CF4                          ; E8 98 0B
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x60]                 ; FF 36 60 00
        call    far USER.FILLRECT               ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_216D
L_216D:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_2179                          ; EB 05
;   [conditional branch target (if/else)] L_2174
L_2174:
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
;   [fall-through exit] L_2179
L_2179:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Mixed routine using: INTERSECTRECT, SCROLLWINDOW, UPDATEWINDOW.

;-------------------------------------------------------------------------
; sub_2182   offset=0x2182  size=74 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   INTERSECTRECT
;   SCROLLWINDOW
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (internal): L_2CF4
;-------------------------------------------------------------------------
;   [sub-routine] L_2182
L_2182:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_2191                          ; 75 03
        jmp     L_223A                          ; E9 A9 00
;   [conditional branch target (if/else)] L_2191
L_2191:
        cmp     word ptr [0x184], 0             ; 83 3E 84 01 00
        je      L_219B                          ; 74 03
        jmp     L_223A                          ; E9 9F 00
;   [conditional branch target (if/else)] L_219B
L_219B:
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x6e                        ; B8 6E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INTERSECTRECT          ; 9A E6 21 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_21CF                          ; 74 17
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_21F8                          ; 74 39
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [0x7c]             ; A1 7C 00
        cmp     word ptr [bx + 6], ax           ; 39 47 06
        jl      L_21F8                          ; 7C 2E
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_21F8                          ; EB 29
;   [conditional branch target (if/else)] L_21CF
L_21CF:
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_21FD                          ; 74 27
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x76                        ; B8 76 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INTERSECTRECT          ; 9A 10 1D 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_21FD                          ; 74 0F
        mov     ax, word ptr [0x74]             ; A1 74 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [branch target] L_21F8
L_21F8:
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [conditional branch target (if/else)] L_21FD
L_21FD:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_223A                          ; 75 37
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        call    L_2CF4                          ; E8 EA 0A
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 36 22 00 00 [FIXUP]
        push    word ptr [0x2070]               ; FF 36 70 20
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        imul    word ptr [0x1786]               ; F7 2E 86 17
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCROLLWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_223A
L_223A:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Internal helper (6 instructions).

;-------------------------------------------------------------------------
; sub_2240   offset=0x2240  size=6 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_2240
L_2240:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x64], ax             ; A3 64 00
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: INVALIDATERECT, SCROLLWINDOW, UPDATEWINDOW.

;-------------------------------------------------------------------------
; sub_224D   offset=0x224D  size=113 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   SCROLLWINDOW
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_224D
L_224D:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        mov     ax, word ptr [0x74]             ; A1 74 00
        sub     ax, word ptr [0x70]             ; 2B 06 70 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0x70]             ; A1 70 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jl      L_2270                          ; 7C 08
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jg      L_2276                          ; 7F 06
;   [conditional branch target (if/else)] L_2270
L_2270:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_227B                          ; 75 05
;   [loop start (also forward branch)] L_2276
L_2276:
        sub     ax, ax                          ; 2B C0
        jmp     L_2388                          ; E9 0D 01
;   [conditional branch target (if/else)] L_227B
L_227B:
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_228A                          ; 74 08
        mov     ax, word ptr [0x78]             ; A1 78 00
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        je      L_2276                          ; 74 EC
;   [conditional branch target (if/else)] L_228A
L_228A:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jl      L_2296                          ; 7C 06
        cmp     word ptr [bp + 4], 0x18         ; 83 7E 04 18
        jle     L_229C                          ; 7E 06
;   [conditional branch target (if/else)] L_2296
L_2296:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2388                          ; E9 EC 00
;   [conditional branch target (if/else)] L_229C
L_229C:
        cmp     word ptr [0x64], 0              ; 83 3E 64 00 00
        je      L_22B3                          ; 74 10
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        and     ah, 0x3f                        ; 80 E4 3F
        inc     ax                              ; 40
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_22C0                          ; EB 0D
;   [conditional branch target (if/else)] L_22B3
L_22B3:
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        jmp     L_22C0                          ; EB 06
;   [loop start] L_22BA
L_22BA:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     word ptr [bp - 0xe], ax         ; 29 46 F2
;   [unconditional branch target] L_22C0
L_22C0:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jl      L_22BA                          ; 7C F2
        jmp     L_22D0                          ; EB 06
;   [loop start] L_22CA
L_22CA:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
;   [unconditional branch target] L_22D0
L_22D0:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jle     L_22CA                          ; 7E EF
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jge     L_22E6                          ; 7D 05
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
;   [conditional branch target (if/else)] L_22E6
L_22E6:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        cmp     ax, 0x18                        ; 3D 18 00
        jle     L_22FA                          ; 7E 09
        mov     ax, 0x18                        ; B8 18 00
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
;   [conditional branch target (if/else)] L_22FA
L_22FA:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [0x70]             ; 2B 06 70 00
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [0x70], ax             ; A3 70 00
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     word ptr [0x74], ax             ; A3 74 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        imul    word ptr [0x1786]               ; F7 2E 86 17
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x72]             ; A1 72 00
        sub     ax, word ptr [0x6e]             ; 2B 06 6E 00
        imul    word ptr [0x1784]               ; F7 2E 84 17
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jl      L_233D                          ; 7C 05
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        jmp     L_2342                          ; EB 05
;   [conditional branch target (if/else)] L_233D
L_233D:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_2342
L_2342:
        cmp     ax, word ptr [bp - 0xa]         ; 3B 46 F6
        jl      L_235C                          ; 7C 15
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_2276                          ; E9 1A FF
;   [conditional branch target (if/else)] L_235C
L_235C:
        push    word ptr [0x2070]               ; FF 36 70 20
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        neg     ax                              ; F7 D8
        imul    word ptr [0x1786]               ; F7 2E 86 17
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCROLLWINDOW           ; 9A B4 25 00 00 [FIXUP]
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A BB 23 00 00 [FIXUP]
        jmp     L_2276                          ; E9 EE FE
;   [fall-through exit] L_2388
L_2388:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: RELEASEDC, UPDATEWINDOW.

;-------------------------------------------------------------------------
; sub_238E   offset=0x238E  size=85 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (internal): L_1884, L_200A, L_20ED, L_24F1, L_2ACA
;-------------------------------------------------------------------------
;   [sub-routine] L_238E
L_238E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        mov     ax, word ptr [0x62]             ; A1 62 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_23A9                          ; 75 03
        jmp     L_2452                          ; E9 A9 00
;   [conditional branch target (if/else)] L_23A9
L_23A9:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 14 07
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A D6 1F 00 00 [FIXUP]
        call    L_200A                          ; E8 48 FC
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_240B                          ; 75 40
        push    ax                              ; 50
        mov     ax, 0x76                        ; B8 76 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_20ED                          ; E8 19 FD
        mov     word ptr [0x62], 0              ; C7 06 62 00 00 00
        push    word ptr [0x6a]                 ; FF 36 6A 00
        push    word ptr [0x6c]                 ; FF 36 6C 00
        call    L_24F1                          ; E8 0C 01
        cmp     word ptr [0x6c], 0x19           ; 83 3E 6C 00 19
        jge     L_2439                          ; 7D 4D
        mov     ax, word ptr [0x74]             ; A1 74 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x6e]             ; A1 6E 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0x72]             ; A1 72 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 0xe]             ; FF 76 F2
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        jmp     L_2435                          ; EB 2A
;   [conditional branch target (if/else)] L_240B
L_240B:
        cmp     word ptr [0x6c], 0              ; 83 3E 6C 00 00
        jle     L_2439                          ; 7E 27
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 0x76                        ; B8 76 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_20ED                          ; E8 D0 FC
        mov     word ptr [0x62], 1              ; C7 06 62 00 01 00
        push    word ptr [0x6a]                 ; FF 36 6A 00
        push    word ptr [0x6c]                 ; FF 36 6C 00
        call    L_24F1                          ; E8 C3 00
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 0x76                        ; B8 76 00
        push    ds                              ; 1E
;   [unconditional branch target] L_2435
L_2435:
        push    ax                              ; 50
        call    L_1884                          ; E8 4B F4
;   [conditional branch target (if/else)] L_2439
L_2439:
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 8D 24 00 00 [FIXUP]
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 78 06
;   [unconditional branch target] L_2452
L_2452:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x26]   HDC       (1 use)

; Description (heuristic):
;   Mixed routine using: GETTEXTMETRICS, INVALIDATERECT, RELEASEDC.

;-------------------------------------------------------------------------
; sub_2460   offset=0x2460  size=55 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETTEXTMETRICS
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_200A, L_24F1, L_2ACA
;-------------------------------------------------------------------------
;   [sub-routine] L_2460
L_2460:
        ;   = cProc <38> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x26                        ; 83 EC 26
        mov     ax, word ptr [0x1788]           ; A1 88 17
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        je      L_24EB                          ; 74 7D
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x1788], ax           ; A3 88 17
        call    L_200A                          ; E8 93 FB
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        push    ax                              ; 50
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A 30 08 00 00 [FIXUP]
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        push    word ptr [bp - 0x26]            ; FF 76 DA
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A A4 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        mov     word ptr [0x1786], ax           ; A3 86 17
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [0x1784], ax           ; A3 84 17
        mov     ax, word ptr [0x1c38]           ; A1 38 1C
        sub     ax, word ptr [0x1c34]           ; 2B 06 34 1C
        cdq                                     ; 99
        mov     cx, word ptr [0x1786]           ; 8B 0E 86 17
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [0x1c36]           ; A1 36 1C
        sub     ax, word ptr [0x1c32]           ; 2B 06 32 1C
        cdq                                     ; 99
        mov     cx, word ptr [0x1784]           ; 8B 0E 84 17
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    cx                              ; 51
        push    word ptr [0x1786]               ; FF 36 86 17
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 FA 05
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    L_24F1                          ; E8 18 00
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        mov     ax, 0x1c32                      ; B8 32 1C
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 31 26 00 00 [FIXUP]
;   [error/early exit] L_24EB
L_24EB:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: INVALIDATERECT, SCROLLWINDOW.

;-------------------------------------------------------------------------
; sub_24F1   offset=0x24F1  size=114 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=2)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   SCROLLWINDOW
;-------------------------------------------------------------------------
;   [sub-routine] L_24F1
L_24F1:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    si                              ; 56
        lea     di, [bp - 0xa]                  ; 8D 7E F6
        mov     si, 0x6e                        ; BE 6E 00
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x6c], ax             ; A3 6C 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x6a], ax             ; A3 6A 00
        add     ax, word ptr [0x6e]             ; 03 06 6E 00
        mov     word ptr [0x72], ax             ; A3 72 00
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_2542                          ; 74 23
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_2542                          ; 7E 1D
        dec     word ptr [bp + 4]               ; FF 4E 04
        mov     word ptr [0x78], 0x18           ; C7 06 78 00 18 00
        mov     word ptr [0x7c], 0x19           ; C7 06 7C 00 19 00
        mov     ax, word ptr [0x6e]             ; A1 6E 00
        mov     word ptr [0x76], ax             ; A3 76 00
        mov     ax, word ptr [0x72]             ; A1 72 00
        mov     word ptr [0x7a], ax             ; A3 7A 00
        jmp     L_2560                          ; EB 1E
;   [conditional branch target (if/else)] L_2542
L_2542:
        mov     word ptr [0x78], 0x19           ; C7 06 78 00 19 00
        mov     word ptr [0x7c], 0x19           ; C7 06 7C 00 19 00
        mov     ax, word ptr [0x6e]             ; A1 6E 00
        mov     word ptr [0x76], ax             ; A3 76 00
        mov     ax, word ptr [0x72]             ; A1 72 00
        mov     word ptr [0x7a], ax             ; A3 7A 00
        mov     word ptr [0x62], 0              ; C7 06 62 00 00 00
;   [unconditional branch target] L_2560
L_2560:
        cmp     word ptr [bp + 4], 0x18         ; 83 7E 04 18
        jle     L_256B                          ; 7E 05
        mov     word ptr [bp + 4], 0x18         ; C7 46 04 18 00
;   [conditional branch target (if/else)] L_256B
L_256B:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, word ptr [0x70]             ; 03 06 70 00
        mov     word ptr [0x74], ax             ; A3 74 00
        cmp     ax, 0x18                        ; 3D 18 00
        jle     L_2589                          ; 7E 0F
        mov     word ptr [0x74], 0x18           ; C7 06 74 00 18 00
        mov     ax, 0x18                        ; B8 18 00
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        mov     word ptr [0x70], ax             ; A3 70 00
;   [conditional branch target (if/else)] L_2589
L_2589:
        mov     ax, word ptr [0x70]             ; A1 70 00
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jge     L_25B8                          ; 7D 22
        mov     ax, word ptr [0x70]             ; A1 70 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [0x2070]               ; FF 36 70 20
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        neg     ax                              ; F7 D8
        imul    word ptr [0x1786]               ; F7 2E 86 17
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SCROLLWINDOW           ; 9A EC 1F 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_25B8
L_25B8:
        mov     ax, word ptr [0x74]             ; A1 74 00
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_25EF                          ; 7D 2F
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_2635                          ; 74 6E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        imul    word ptr [0x1786]               ; F7 2E 86 17
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        add     ax, word ptr [0x1786]           ; 03 06 86 17
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        imul    word ptr [0x1786]               ; F7 2E 86 17
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_2623                          ; EB 34
;   [conditional branch target (if/else)] L_25EF
L_25EF:
        mov     ax, word ptr [0x74]             ; A1 74 00
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jle     L_2635                          ; 7E 3E
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_2635                          ; 74 37
        sub     ax, word ptr [0x70]             ; 2B 06 70 00
        imul    word ptr [0x1786]               ; F7 2E 86 17
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        add     ax, word ptr [0x1786]           ; 03 06 86 17
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     ax, word ptr [0x72]             ; A1 72 00
        sub     ax, word ptr [0x6e]             ; 2B 06 6E 00
        imul    word ptr [0x1786]               ; F7 2E 86 17
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [unconditional branch target] L_2623
L_2623:
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 55 23 00 00 [FIXUP]
;   [error/early exit] L_2635
L_2635:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: GETCLIENTRECT, INVALIDATERECT, UPDATEWINDOW.

;-------------------------------------------------------------------------
; sub_263D   offset=0x263D  size=94 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (internal): L_224D, L_24F1, L_2ACA, L_5119
;-------------------------------------------------------------------------
;   [sub-routine] L_263D
L_263D:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 7A 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        mov     ax, 0x1c32                      ; B8 32 1C
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 5D 20 00 00 [FIXUP]
        mov     ax, word ptr [0x1c38]           ; A1 38 1C
        cdq                                     ; 99
        mov     cx, word ptr [0x1786]           ; 8B 0E 86 17
        idiv    cx                              ; F7 F9
        mov     word ptr [0x1790], ax           ; A3 90 17
        mov     ax, word ptr [0x1c36]           ; A1 36 1C
        add     ax, word ptr [0x1784]           ; 03 06 84 17
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, word ptr [0x1784]           ; 8B 0E 84 17
        idiv    cx                              ; F7 F9
        mov     word ptr [0x178e], ax           ; A3 8E 17
        cmp     ax, 0x4f                        ; 3D 4F 00
        jle     L_268B                          ; 7E 03
        mov     ax, 0x50                        ; B8 50 00
;   [conditional branch target (if/else)] L_268B
L_268B:
        add     ax, word ptr [0x6e]             ; 03 06 6E 00
        mov     word ptr [0x72], ax             ; A3 72 00
        mov     word ptr [0x7a], ax             ; A3 7A 00
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 81 23 00 00 [FIXUP]
        mov     ax, word ptr [0x1c32]           ; A1 32 1C
        mov     word ptr [0x7e], ax             ; A3 7E 00
        mov     ax, word ptr [0x1c36]           ; A1 36 1C
        mov     word ptr [0x82], ax             ; A3 82 00
        mov     ax, word ptr [0x84]             ; A1 84 00
        cmp     word ptr [0x1c38], ax           ; 39 06 38 1C
        jle     L_26CA                          ; 7E 17
        mov     ax, word ptr [0x1c38]           ; A1 38 1C
        mov     word ptr [0x84], ax             ; A3 84 00
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        mov     ax, 0x7e                        ; B8 7E 00
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A F1 26 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_26CA
L_26CA:
        mov     ax, word ptr [0x1790]           ; A1 90 17
        imul    word ptr [0x1786]               ; F7 2E 86 17
        mov     word ptr [0x80], ax             ; A3 80 00
        mov     ax, word ptr [0x84]             ; A1 84 00
        cmp     word ptr [0x1c38], ax           ; 39 06 38 1C
        jge     L_26F5                          ; 7D 18
        mov     ax, word ptr [0x1c38]           ; A1 38 1C
        mov     word ptr [0x84], ax             ; A3 84 00
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        mov     ax, 0x7e                        ; B8 7E 00
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A E7 24 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_26F5
L_26F5:
        push    word ptr [0x178e]               ; FF 36 8E 17
        push    word ptr [0x1790]               ; FF 36 90 17
        call    L_24F1                          ; E8 F1 FD
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_224D                          ; E8 47 FB
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 B5 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 A8 03
        push    word ptr [0x2070]               ; FF 36 70 20
        call    L_5119                          ; E8 F0 29
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HWND      (3 uses)
;   Locals:
;     [bp-0x22]   HDC       (2 uses)

; Description (heuristic):
;   Mixed routine using: GETSTOCKOBJECT, GETTEXTMETRICS, SELECTOBJECT (+3 more).

;-------------------------------------------------------------------------
; sub_272D   offset=0x272D  size=46 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   GETTEXTMETRICS
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   GETDC(HWND hWnd) -> HDC
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_24F1, L_27C1
;-------------------------------------------------------------------------
;   [sub-routine] L_272D
L_272D:
        ;   = cProc <34> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x22                        ; 83 EC 22
        call    L_27C1                          ; E8 8B 00
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A 85 0A 00 00 [FIXUP]
        mov     word ptr [0x1788], ax           ; A3 88 17
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 15 20 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        push    ax                              ; 50
        ;   ^ arg hDC
        push    word ptr [0x1788]               ; FF 36 88 17
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 7E 29 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        mov     ax, 0x1c32                      ; B8 32 1C
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 60 26 00 00 [FIXUP]
        push    word ptr [bp - 0x22]            ; FF 76 DE
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A 81 24 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        push    word ptr [bp - 0x22]            ; FF 76 DE
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 41 24 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        add     ax, word ptr [bp - 0x18]        ; 03 46 E8
        mov     word ptr [0x1786], ax           ; A3 86 17
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [0x1784], ax           ; A3 84 17
        mov     ax, word ptr [0x1c36]           ; A1 36 1C
        cdq                                     ; 99
        mov     cx, word ptr [0x1784]           ; 8B 0E 84 17
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        mov     ax, word ptr [0x1c38]           ; A1 38 1C
        cdq                                     ; 99
        mov     cx, word ptr [0x1786]           ; 8B 0E 86 17
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        call    L_24F1                          ; E8 4D FD
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Thin wrapper around DELETEOBJECT(hObj) -> BOOL.

;-------------------------------------------------------------------------
; sub_27AA   offset=0x27AA  size=9 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_27AA
L_27AA:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_27BD                          ; 74 09
        push    word ptr [0x60]                 ; FF 36 60 00
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A D0 27 00 00 [FIXUP]
;   [error/early exit] L_27BD
L_27BD:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Small helper using 3 API(s): CREATESOLIDBRUSH, DELETEOBJECT, GETSYSCOLOR.

;-------------------------------------------------------------------------
; sub_27C1   offset=0x27C1  size=23 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;   GETSYSCOLOR
;-------------------------------------------------------------------------
;   [sub-routine] L_27C1
L_27C1:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_27D4                          ; 74 09
        push    word ptr [0x60]                 ; FF 36 60 00
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A C4 08 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_27D4
L_27D4:
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A E9 27 00 00 [FIXUP]
        mov     word ptr [0x178a], ax           ; A3 8A 17
        mov     word ptr [0x178c], dx           ; 89 16 8C 17
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1780], ax           ; A3 80 17
        mov     word ptr [0x1782], dx           ; 89 16 82 17
        push    word ptr [0x178c]               ; FF 36 8C 17
        ;   ^ arg clr (high/segment)
        push    word ptr [0x178a]               ; FF 36 8A 17
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x60], ax             ; A3 60 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Drawing routine (3 GDI APIs).

;-------------------------------------------------------------------------
; sub_2808   offset=0x2808  size=134 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   FILLRECT
;   INTERSECTRECT
;   INVERTRECT
;
; Near calls (internal): L_2CF4, L_60F0
;-------------------------------------------------------------------------
;   [sub-routine] L_2808
L_2808:
        ;   = cProc <100> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x64                        ; 83 EC 64
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        inc     ax                              ; 40
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 4]           ; 03 46 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x6e                        ; B8 6E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INTERSECTRECT          ; 9A 5C 28 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_2863                          ; 75 1E
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_2863                          ; 74 17
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x76                        ; B8 76 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INTERSECTRECT          ; 9A 8E 20 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
;   [conditional branch target (if/else)] L_2863
L_2863:
        cmp     word ptr [0x184], 0             ; 83 3E 84 01 00
        je      L_286D                          ; 74 03
        jmp     L_296A                          ; E9 FD 00
;   [conditional branch target (if/else)] L_286D
L_286D:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_2876                          ; 75 03
        jmp     L_296A                          ; E9 F4 00
;   [conditional branch target (if/else)] L_2876
L_2876:
        mov     ax, word ptr [0x78]             ; A1 78 00
        cmp     word ptr [bp - 0x62], ax        ; 39 46 9E
        jne     L_2888                          ; 75 0A
        mov     ax, word ptr [0x74]             ; A1 74 00
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        inc     ax                              ; 40
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
;   [conditional branch target (if/else)] L_2888
L_2888:
        mov     ax, word ptr [bp - 0x64]        ; 8B 46 9C
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp + 6], ax           ; 01 46 06
        mov     ax, word ptr [bp - 0x60]        ; 8B 46 A0
        sub     ax, word ptr [bp - 0x64]        ; 2B 46 9C
        mov     word ptr [bp + 4], ax           ; 89 46 04
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ax                              ; 50
        call    L_2CF4                          ; E8 51 04
        lea     ax, [bp - 0x5c]                 ; 8D 46 A4
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        cmp     word ptr [bp + 4], 0x50         ; 83 7E 04 50
        jge     L_28B9                          ; 7D 05
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        jmp     L_28BC                          ; EB 03
;   [conditional branch target (if/else)] L_28B9
L_28B9:
        mov     ax, 0x50                        ; B8 50 00
;   [unconditional branch target] L_28BC
L_28BC:
        push    ax                              ; 50
        call    L_60F0                          ; E8 30 38
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x60]                 ; FF 36 60 00
        call    far USER.FILLRECT               ; 9A 6E 20 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDC
        push    word ptr [bp - 0x64]            ; FF 76 9C
        ;   ^ arg x
        push    word ptr [bp - 0x62]            ; FF 76 9E
        ;   ^ arg y
        lea     ax, [bp - 0x5c]                 ; 8D 46 A4
        push    ss                              ; 16
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x62]        ; 8B 46 9E
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     ax, word ptr [bp - 0x64]        ; 8B 46 9C
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_296A                          ; 74 6E
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_2948                          ; EB 45
;   [loop start] L_2903
L_2903:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        test    word ptr es:[bx], 0x8000        ; 26 F7 07 00 80
        je      L_2924                          ; 74 13
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_2942                          ; 75 2B
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        jmp     L_2942                          ; EB 1E
;   [conditional branch target (if/else)] L_2924
L_2924:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_2942                          ; 74 18
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A 66 29 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [branch target] L_2942
L_2942:
        mov     ax, word ptr [0x1784]           ; A1 84 17
        add     word ptr [bp + 0xa], ax         ; 01 46 0A
;   [unconditional branch target] L_2948
L_2948:
        dec     word ptr [bp + 4]               ; FF 4E 04
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jge     L_2903                          ; 7D B2
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_296A                          ; 74 13
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A A6 20 00 00 [FIXUP]
;   [error/early exit] L_296A
L_296A:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xa]  HDC       (3 uses)

; Description (heuristic):
;   Mixed routine using: SELECTOBJECT, SETBKMODE, SETTEXTCOLOR (+1 more).

;-------------------------------------------------------------------------
; sub_2970   offset=0x2970  size=90 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   INTERSECTRECT
;
; Near calls (internal): L_1884, L_20ED, L_2C98
;-------------------------------------------------------------------------
;   [sub-routine] L_2970
L_2970:
        ;   = cProc <24> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [0x1788]               ; FF 36 88 17
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 22 20 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A 2E 20 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [0x1782]               ; FF 36 82 17
        ;   ^ arg clrText (high/segment)
        push    word ptr [0x1780]               ; FF 36 80 17
        ;   ^ arg clrText (low/offset)
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A 3E 20 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [0x1786], 0            ; 83 3E 86 17 00
        jle     L_29BB                          ; 7E 06
        mov     ax, word ptr [0x1786]           ; A1 86 17
        dec     ax                              ; 48
        jmp     L_29BD                          ; EB 02
;   [conditional branch target (if/else)] L_29BB
L_29BB:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_29BD
L_29BD:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     ax, word ptr es:[bx + 6]        ; 26 03 47 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0x1784], 0            ; 83 3E 84 17 00
        jle     L_29D4                          ; 7E 06
        mov     ax, word ptr [0x1784]           ; A1 84 17
        dec     ax                              ; 48
        jmp     L_29D6                          ; EB 02
;   [conditional branch target (if/else)] L_29D4
L_29D4:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_29D6
L_29D6:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     ax, word ptr es:[bx + 4]        ; 26 03 47 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_2C98                          ; E8 B1 02
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x6e                        ; B8 6E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INTERSECTRECT          ; 9A 3A 28 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2A1B                          ; 74 1C
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_2A10                          ; 74 0B
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_20ED                          ; E8 DD F6
;   [conditional branch target (if/else)] L_2A10
L_2A10:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_1884                          ; E8 69 EE
;   [conditional branch target (if/else)] L_2A1B
L_2A1B:
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_2A57                          ; 74 35
        mov     ax, word ptr [0x74]             ; A1 74 00
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jg      L_2A57                          ; 7F 2D
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jle     L_2A57                          ; 7E 28
        mov     ax, word ptr [0x78]             ; A1 78 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x7c]             ; A1 7C 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_2A4C                          ; 74 0B
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_20ED                          ; E8 A1 F6
;   [conditional branch target (if/else)] L_2A4C
L_2A4C:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_1884                          ; E8 2D EE
;   [error/early exit] L_2A57
L_2A57:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Mixed routine using: PTINRECT, SETCARETPOS.

;-------------------------------------------------------------------------
; sub_2A5D   offset=0x2A5D  size=47 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   PTINRECT
;   SETCARETPOS
;
; Near calls (internal): L_2D73
;-------------------------------------------------------------------------
;   [sub-routine] L_2A5D
L_2A5D:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     ax, 0x6e                        ; B8 6E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.PTINRECT               ; 9A 8D 2A 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_2A9D                          ; 75 23
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_2A9D                          ; 74 1C
        mov     ax, 0x76                        ; B8 76 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_2A9D                          ; 74 06
        mov     ax, word ptr [0x74]             ; A1 74 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
;   [conditional branch target (if/else)] L_2A9D
L_2A9D:
        or      si, si                          ; 0B F6
        je      L_2AB4                          ; 74 13
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_2D73                          ; E8 C9 02
        mov     word ptr [bp + 4], ax           ; 89 46 04
        mov     word ptr [bp + 6], dx           ; 89 56 06
        push    ax                              ; 50
        push    dx                              ; 52
        jmp     L_2ABE                          ; EB 0A
;   [conditional branch target (if/else)] L_2AB4
L_2AB4:
        mov     ax, word ptr [0x1c36]           ; A1 36 1C
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0x1c38]           ; A1 38 1C
        inc     ax                              ; 40
        push    ax                              ; 50
;   [unconditional branch target] L_2ABE
L_2ABE:
        call    far USER.SETCARETPOS            ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: CREATECARET, DESTROYCARET, HIDECARET (+1 more).

;-------------------------------------------------------------------------
; sub_2ACA   offset=0x2ACA  size=151 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CREATECARET
;   DESTROYCARET
;   HIDECARET
;   SHOWCARET
;
; Near calls (internal): L_2A5D, L_2ACA
;-------------------------------------------------------------------------
;   [sub-routine] L_2ACA
L_2ACA:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0xa                         ; 3D 0A 00
        jbe     L_2AE2                          ; 76 03
        jmp     L_2C86                          ; E9 A4 01
;   [conditional branch target (if/else)] L_2AE2
L_2AE2:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x2c70]       ; 2E FF A7 70 2C
        cmp     word ptr [0x86], 0              ; 83 3E 86 00 00
        jne     L_2AF4                          ; 75 03
        jmp     L_2C86                          ; E9 92 01
;   [conditional branch target (if/else)] L_2AF4
L_2AF4:
        call    far USER.DESTROYCARET           ; 9A 80 2B 00 00 [FIXUP]
        cmp     word ptr [0x8a], 0              ; 83 3E 8A 00 00
        jne     L_2B70                          ; 75 70
;   [loop start] L_2B00
L_2B00:
        mov     ax, word ptr [0x1784]           ; A1 84 17
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        inc     ax                              ; 40
;   [loop start] L_2B12
L_2B12:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x2070]               ; FF 36 70 20
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x1786]               ; FF 36 86 17
        call    far USER.CREATECARET            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x88], 0              ; 83 3E 88 00 00
        jne     L_2B32                          ; 75 03
        jmp     L_2C86                          ; E9 54 01
;   [conditional branch target (if/else)] L_2B32
L_2B32:
        cmp     word ptr [0x1792], 0            ; 83 3E 92 17 00
        jge     L_2B3C                          ; 7D 03
        jmp     L_2C86                          ; E9 4A 01
;   [conditional branch target (if/else)] L_2B3C
L_2B3C:
        push    word ptr [0x2070]               ; FF 36 70 20
        call    far USER.SHOWCARET              ; 9A E8 2B 00 00 [FIXUP]
        mov     word ptr [0x8c], 1              ; C7 06 8C 00 01 00
        push    word ptr [0x90]                 ; FF 36 90 00
;   [loop start] L_2B4F
L_2B4F:
        push    word ptr [0x8e]                 ; FF 36 8E 00
        call    L_2A5D                          ; E8 07 FF
        jmp     L_2C86                          ; E9 2D 01
        cmp     word ptr [0x86], 0              ; 83 3E 86 00 00
        je      L_2B63                          ; 74 03
        jmp     L_2C86                          ; E9 23 01
;   [conditional branch target (if/else)] L_2B63
L_2B63:
        mov     word ptr [0x86], 1              ; C7 06 86 00 01 00
        cmp     word ptr [0x8a], 0              ; 83 3E 8A 00 00
        je      L_2B00                          ; 74 90
;   [conditional branch target (if/else)] L_2B70
L_2B70:
        mov     ax, word ptr [0x1784]           ; A1 84 17
        jmp     L_2B12                          ; EB 9D
        cmp     word ptr [0x86], 0              ; 83 3E 86 00 00
        jne     L_2B7F                          ; 75 03
        jmp     L_2C86                          ; E9 07 01
;   [conditional branch target (if/else)] L_2B7F
L_2B7F:
        call    far USER.DESTROYCARET           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x8c], 0              ; C7 06 8C 00 00 00
        mov     word ptr [0x86], 0              ; C7 06 86 00 00 00
        jmp     L_2C86                          ; E9 F3 00
        dec     word ptr [0x1792]               ; FF 0E 92 17
        mov     ax, word ptr [0x1792]           ; A1 92 17
        inc     ax                              ; 40
        je      L_2BA0                          ; 74 03
        jmp     L_2C86                          ; E9 E6 00
;   [loop start (also forward branch)] L_2BA0
L_2BA0:
        cmp     word ptr [0x8c], 0              ; 83 3E 8C 00 00
        jne     L_2BAA                          ; 75 03
        jmp     L_2C86                          ; E9 DC 00
;   [conditional branch target (if/else)] L_2BAA
L_2BAA:
        push    word ptr [0x2070]               ; FF 36 70 20
        call    far USER.HIDECARET              ; 9A CD 1F 00 00 [FIXUP]
        mov     word ptr [0x8c], 0              ; C7 06 8C 00 00 00
        jmp     L_2C86                          ; E9 CA 00
        inc     word ptr [0x1792]               ; FF 06 92 17
        je      L_2BC5                          ; 74 03
        jmp     L_2C86                          ; E9 C1 00
;   [conditional branch target (if/else)] L_2BC5
L_2BC5:
        cmp     word ptr [0x86], 0              ; 83 3E 86 00 00
        jne     L_2BCF                          ; 75 03
        jmp     L_2C86                          ; E9 B7 00
;   [conditional branch target (if/else)] L_2BCF
L_2BCF:
        cmp     word ptr [0x88], 0              ; 83 3E 88 00 00
        jne     L_2BD9                          ; 75 03
        jmp     L_2C86                          ; E9 AD 00
;   [conditional branch target (if/else)] L_2BD9
L_2BD9:
        cmp     word ptr [0x8c], 0              ; 83 3E 8C 00 00
        je      L_2BE3                          ; 74 03
        jmp     L_2C86                          ; E9 A3 00
;   [conditional branch target (if/else)] L_2BE3
L_2BE3:
        push    word ptr [0x2070]               ; FF 36 70 20
        call    far USER.SHOWCARET              ; 9A 1D 2C 00 00 [FIXUP]
;   [loop start] L_2BEC
L_2BEC:
        mov     word ptr [0x8c], 1              ; C7 06 8C 00 01 00
        jmp     L_2C86                          ; E9 91 00
        mov     word ptr [0x88], 0              ; C7 06 88 00 00 00
        jmp     L_2BA0                          ; EB A3
        mov     word ptr [0x88], 1              ; C7 06 88 00 01 00
        cmp     word ptr [0x86], 0              ; 83 3E 86 00 00
        je      L_2C86                          ; 74 7C
        cmp     word ptr [0x8c], 0              ; 83 3E 8C 00 00
        jne     L_2C86                          ; 75 75
        cmp     word ptr [0x1792], 0            ; 83 3E 92 17 00
        jl      L_2C86                          ; 7C 6E
        push    word ptr [0x2070]               ; FF 36 70 20
        call    far USER.SHOWCARET              ; 9A FE 1F 00 00 [FIXUP]
        push    word ptr [0x90]                 ; FF 36 90 00
        push    word ptr [0x8e]                 ; FF 36 8E 00
        call    L_2A5D                          ; E8 31 FE
        jmp     L_2BEC                          ; EB BE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x8e], ax             ; A3 8E 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x90], ax             ; A3 90 00
        cmp     word ptr [0x86], 0              ; 83 3E 86 00 00
        je      L_2C86                          ; 74 45
        push    ax                              ; 50
        jmp     L_2B4F                          ; E9 0A FF
        cmp     word ptr [0x8a], 0              ; 83 3E 8A 00 00
        jne     L_2C86                          ; 75 3A
        mov     word ptr [0x8a], 1              ; C7 06 8A 00 01 00
;   [loop start] L_2C52
L_2C52:
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 6B FE
        jmp     L_2C86                          ; EB 25
        cmp     word ptr [0x8a], 0              ; 83 3E 8A 00 00
        je      L_2C86                          ; 74 1E
        mov     word ptr [0x8a], 0              ; C7 06 8A 00 00 00
        jmp     L_2C52                          ; EB E2
        pop     cx                              ; 59
        sub     si, word ptr [di + 0x2b]        ; 2B 75 2B
        xchg    bx, ax                          ; 93
        sub     di, word ptr [si + 0x2e2b]      ; 2B BC 2B 2E
        sub     al, 0xea                        ; 2C EA
        sub     al, byte ptr [bp - 0x2d4]       ; 2A 86 2C FD
        sub     si, bp                          ; 2B F5
        sub     ax, word ptr [di + 0x2c]        ; 2B 45 2C
        popaw                                   ; 61
        sub     al, 0xa1                        ; 2C A1
        mov     es, word ptr [bx + si]          ; 8E 00
        mov     dx, word ptr [0x90]             ; 8B 16 90 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (34 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2C98   offset=0x2C98  size=34 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_2C98
L_2C98:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0x1786], 0            ; 83 3E 86 17 00
        jle     L_2CEE                          ; 7E 4C
        cmp     word ptr [0x1784], 0            ; 83 3E 84 17 00
        jle     L_2CEE                          ; 7E 45
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        cdq                                     ; 99
        mov     cx, word ptr [0x1786]           ; 8B 0E 86 17
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0x70]             ; 03 06 70 00
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bx]               ; 8B 07
        cdq                                     ; 99
        mov     cx, word ptr [0x1784]           ; 8B 0E 84 17
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0x6e]             ; 03 06 6E 00
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        cdq                                     ; 99
        mov     cx, word ptr [0x1786]           ; 8B 0E 86 17
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0x70]             ; 03 06 70 00
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        mov     cx, word ptr [0x1784]           ; 8B 0E 84 17
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0x6e]             ; 03 06 6E 00
        mov     word ptr [bx + 4], ax           ; 89 47 04
;   [error/early exit] L_2CEE
L_2CEE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2CF4   offset=0x2CF4  size=21 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_2CF4
L_2CF4:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        sub     ax, word ptr [0x70]             ; 2B 06 70 00
        imul    word ptr [0x1786]               ; F7 2E 86 17
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bx]               ; 8B 07
        sub     ax, word ptr [0x6e]             ; 2B 06 6E 00
        imul    word ptr [0x1784]               ; F7 2E 84 17
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        sub     ax, word ptr [0x70]             ; 2B 06 70 00
        imul    word ptr [0x1786]               ; F7 2E 86 17
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, word ptr [0x6e]             ; 2B 06 6E 00
        imul    word ptr [0x1784]               ; F7 2E 84 17
        mov     word ptr [bx + 4], ax           ; 89 47 04
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (23 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2D34   offset=0x2D34  size=23 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_2D34
L_2D34:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0x1786], 0            ; 83 3E 86 17 00
        jle     L_2D67                          ; 7E 29
        cmp     word ptr [0x1784], 0            ; 83 3E 84 17 00
        jle     L_2D67                          ; 7E 22
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        mov     cx, word ptr [0x1786]           ; 8B 0E 86 17
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0x70]             ; 03 06 70 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     cx, word ptr [0x1784]           ; 8B 0E 84 17
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0x6e]             ; 03 06 6E 00
        mov     word ptr [bp + 4], ax           ; 89 46 04
;   [error/early exit] L_2D67
L_2D67:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Internal helper (13 instructions).

;-------------------------------------------------------------------------
; sub_2D73   offset=0x2D73  size=13 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_2D73
L_2D73:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [0x70]             ; 2B 06 70 00
        imul    word ptr [0x1786]               ; F7 2E 86 17
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0x6e]             ; 2B 06 6E 00
        imul    word ptr [0x1784]               ; F7 2E 84 17
        mov     word ptr [bp + 4], ax           ; 89 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (42 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2D99   offset=0x2D99  size=42 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_2D34
;-------------------------------------------------------------------------
;   [sub-routine] L_2D99
L_2D99:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [0x1784]           ; A1 84 17
        sar     ax, 1                           ; D1 F8
        and     ah, 0x7f                        ; 80 E4 7F
        add     word ptr [bp + 4], ax           ; 01 46 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_2D34                          ; E8 84 FF
        mov     word ptr [bp + 4], ax           ; 89 46 04
        mov     word ptr [bp + 6], dx           ; 89 56 06
        or      dx, dx                          ; 0B D2
        jge     L_2DC6                          ; 7D 0C
        mov     word ptr [bp + 6], 0            ; C7 46 06 00 00
        mov     word ptr [bp + 4], 0            ; C7 46 04 00 00
        jmp     L_2E02                          ; EB 3C
;   [conditional branch target (if/else)] L_2DC6
L_2DC6:
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_2DDD                          ; 74 10
        mov     ax, word ptr [0x74]             ; A1 74 00
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_2DDD                          ; 75 08
        mov     ax, word ptr [0x78]             ; A1 78 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_2E02                          ; EB 25
;   [conditional branch target (if/else)] L_2DDD
L_2DDD:
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_2DF1                          ; 74 0D
        mov     ax, word ptr [0x74]             ; A1 74 00
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jl      L_2DF1                          ; 7C 05
        mov     ax, word ptr [0x78]             ; A1 78 00
        jmp     L_2DFA                          ; EB 09
;   [conditional branch target (if/else)] L_2DF1
L_2DF1:
        mov     ax, word ptr [0x74]             ; A1 74 00
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jl      L_2E02                          ; 7C 09
        dec     ax                              ; 48
;   [unconditional branch target] L_2DFA
L_2DFA:
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], 0x50         ; C7 46 04 50 00
;   [error/early exit] L_2E02
L_2E02:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (27 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2E0E   offset=0x2E0E  size=27 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_2ACA, L_5BDB
;-------------------------------------------------------------------------
;   [sub-routine] L_2E0E
L_2E0E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_2E36                          ; 74 18
        cmp     word ptr [0x188], 0             ; 83 3E 88 01 00
        je      L_2E36                          ; 74 11
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x17cc]               ; FF 36 CC 17
        push    word ptr [0x17ce]               ; FF 36 CE 17
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 94 FC
;   [conditional branch target (if/else)] L_2E36
L_2E36:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_5BDB                          ; E8 9F 2D
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (75 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2E47   offset=0x2E47  size=75 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_15BB, L_1A2A, L_1A9E, L_2E47
;-------------------------------------------------------------------------
;   [sub-routine] L_2E47
L_2E47:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0xf2], 0              ; 83 3E F2 00 00
        jle     L_2E66                          ; 7E 15
        push    word ptr [0x17ce]               ; FF 36 CE 17
        push    word ptr [0x17cc]               ; FF 36 CC 17
        push    word ptr [0xf2]                 ; FF 36 F2 00
        call    L_1A2A                          ; E8 CA EB
        mov     word ptr [0xf2], 0              ; C7 06 F2 00 00 00
;   [conditional branch target (if/else)] L_2E66
L_2E66:
        cmp     word ptr [0xf0], 0              ; 83 3E F0 00 00
        jle     L_2E90                          ; 7E 23
        push    word ptr [0x17d2]               ; FF 36 D2 17
        push    word ptr [0x17d0]               ; FF 36 D0 17
        mov     ax, word ptr [0x17d0]           ; A1 D0 17
        shl     ax, 1                           ; D1 E0
        mov     cx, 0x17d4                      ; B9 D4 17
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0xf0]                 ; FF 36 F0 00
        call    L_1A9E                          ; E8 14 EC
        mov     word ptr [0xf0], 0              ; C7 06 F0 00 00 00
;   [error/early exit] L_2E90
L_2E90:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_2EBF                          ; 7E 1B
        push    word ptr [0x17ce]               ; FF 36 CE 17
        mov     ax, 0x18                        ; B8 18 00
        sub     ax, word ptr [0x17ce]           ; 2B 06 CE 17
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    L_15BB                          ; E8 02 E7
        mov     word ptr [0x17cc], 0            ; C7 06 CC 17 00 00
;   [conditional branch target (if/else)] L_2EBF
L_2EBF:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_2EF5                          ; 7E 1B
        call    L_2E47                          ; E8 6A FF
        push    word ptr [0x17ce]               ; FF 36 CE 17
        mov     ax, 0x18                        ; B8 18 00
        sub     ax, word ptr [0x17ce]           ; 2B 06 CE 17
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_15BB                          ; E8 CC E6
        mov     word ptr [0x17cc], 0            ; C7 06 CC 17 00 00
;   [conditional branch target (if/else)] L_2EF5
L_2EF5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x8]  WORD      (1 use)

; Description (heuristic):
;   Pure computation / dispatcher (48 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2F00   offset=0x2F00  size=48 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_2E47
;-------------------------------------------------------------------------
;   [sub-routine] L_2F00
L_2F00:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [0x17cc]           ; A1 CC 17
        mov     dx, word ptr [0x17ce]           ; 8B 16 CE 17
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     ax, bx                          ; 8B C3
        mov     dx, ss                          ; 8C D2
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_2F5A                          ; 7C 22
        cmp     word ptr [bp + 6], 0x4f         ; 83 7E 06 4F
        jg      L_2F5A                          ; 7F 1C
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_2F5A                          ; 7C 16
        cmp     word ptr [bp + 8], 0x18         ; 83 7E 08 18
        jg      L_2F5A                          ; 7F 10
        call    L_2E47                          ; E8 FA FE
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [0x17cc], ax           ; A3 CC 17
        mov     word ptr [0x17ce], dx           ; 89 16 CE 17
;   [conditional branch target (if/else)] L_2F5A
L_2F5A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2F65   offset=0x2F65  size=22 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=2, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Near calls (internal): L_2ACA
;-------------------------------------------------------------------------
;   [sub-routine] L_2F65
L_2F65:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 4E FB
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x4]   HDC       (1 use)

; Description (heuristic):
;   Mixed routine using: RELEASEDC.

;-------------------------------------------------------------------------
; sub_2F85   offset=0x2F85  size=42 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_1954, L_200A, L_224D, L_2ACA, L_2E47
;-------------------------------------------------------------------------
;   [sub-routine] L_2F85
L_2F85:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        call    L_2E47                          ; E8 B2 FE
        call    L_200A                          ; E8 72 F0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    L_1954                          ; E8 B5 E9
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 78 27 00 00 [FIXUP]
        push    word ptr [0x17ce]               ; FF 36 CE 17
        call    L_224D                          ; E8 9B F2
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x17cc]               ; FF 36 CC 17
        push    word ptr [0x17ce]               ; FF 36 CE 17
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 07 FB
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 FA FA
        mov     word ptr [0xf4], 0              ; C7 06 F4 00 00 00
        mov     word ptr [0xf6], 0              ; C7 06 F6 00 00 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (2 uses)

; Description (heuristic):
;   Mixed routine using: BEGINPAINT, ENDPAINT.

;-------------------------------------------------------------------------
; sub_2FE5   offset=0x2FE5  size=47 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
;   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
;
; Near calls (internal): L_2970, L_2ACA
;-------------------------------------------------------------------------
;   [sub-routine] L_2FE5
L_2FE5:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x22                        ; 83 EC 22
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 CB FA
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x22]            ; FF 76 DE
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    L_2970                          ; E8 56 F9
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 96 FA
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (51 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_303F   offset=0x303F  size=51 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_108D, L_383C, L_60F0
;-------------------------------------------------------------------------
;   [sub-routine] L_303F
L_303F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xac                        ; 81 EC AC 00
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_3059                          ; 75 06
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_30B5                          ; 74 5C
;   [conditional branch target (if/else)] L_3059
L_3059:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 0xa6], ax        ; 89 86 5A FF
        mov     word ptr [bp - 0xa8], 0         ; C7 86 58 FF 00 00
        push    ax                              ; 50
        push    word ptr [bp - 0xa8]            ; FF B6 58 FF
        lea     ax, [bp - 0xa4]                 ; 8D 86 5C FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x51                        ; B8 51 00
        push    ax                              ; 50
        call    L_108D                          ; E8 15 E0
        mov     word ptr [bp - 0xaa], ax        ; 89 86 56 FF
        lea     ax, [bp - 0xa4]                 ; 8D 86 5C FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xa4]                 ; 8D 86 5C FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xaa]            ; FF B6 56 FF
        call    L_60F0                          ; E8 61 30
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_30A3                          ; 74 0E
        lea     ax, [bp - 0xa4]                 ; 8D 86 5C FF
        push    ax                              ; 50
        push    word ptr [bp - 0xaa]            ; FF B6 56 FF
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_30A3
L_30A3:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_30B5                          ; 74 0C
        lea     ax, [bp - 0xa4]                 ; 8D 86 5C FF
        push    ax                              ; 50
        push    word ptr [bp - 0xaa]            ; FF B6 56 FF
        call    L_383C                          ; E8 87 07
;   [conditional branch target (if/else)] L_30B5
L_30B5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Mixed routine using: PEEKMESSAGE, RELEASEDC.

;-------------------------------------------------------------------------
; sub_30C0   offset=0x30C0  size=277 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Far API calls:
;   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (first 8 of 13): L_10FA, L_15BB, L_1736, L_1A2A, L_1A9E, L_200A, L_2E47, L_2F65 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_30C0
L_30C0:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x18                        ; 83 EC 18
        call    L_2E47                          ; E8 77 FD
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x18e]                ; FF 36 8E 01
        push    word ptr [0x18c]                ; FF 36 8C 01
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_303F                          ; E8 5B FF
        cmp     word ptr [bp + 8], 0x17         ; 83 7E 08 17
        jne     L_312B                          ; 75 41
        mov     ax, word ptr [0x74]             ; A1 74 00
        sub     ax, word ptr [0x70]             ; 2B 06 70 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     word ptr [0xf6]                 ; FF 06 F6 00
        cmp     word ptr [0xf6], 1              ; 83 3E F6 00 01
        jg      L_3104                          ; 7F 05
        cmp     ax, 1                           ; 3D 01 00
        jg      L_3114                          ; 7F 10
;   [conditional branch target (if/else)] L_3104
L_3104:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2F85                          ; E8 7C FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2F65                          ; E8 57 FE
        mov     word ptr [0xf6], 0              ; C7 06 F6 00 00 00
;   [conditional branch target (if/else)] L_3114
L_3114:
        call    L_5A84                          ; E8 6D 29
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    L_15BB                          ; E8 96 E4
        inc     word ptr [0xf4]                 ; FF 06 F4 00
        jmp     L_313A                          ; EB 0F
;   [conditional branch target (if/else)] L_312B
L_312B:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_313A                          ; 7C 09
        cmp     word ptr [bp + 8], 0x17         ; 83 7E 08 17
        jge     L_313A                          ; 7D 03
        inc     word ptr [bp + 8]               ; FF 46 08
;   [branch target] L_313A
L_313A:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [0x17cc], ax           ; A3 CC 17
        mov     word ptr [0x17ce], dx           ; 89 16 CE 17
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMin
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMax
        push    ax                              ; 50
        ;   ^ arg wRemoveMsg
        ; --> PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_3165                          ; 74 07
        mov     word ptr [bp - 0x18], 1         ; C7 46 E8 01 00
        jmp     L_316A                          ; EB 05
;   [conditional branch target (if/else)] L_3165
L_3165:
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
;   [unconditional branch target] L_316A
L_316A:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jg      L_3193                          ; 7F 03
        jmp     L_32A1                          ; E9 0E 01
;   [conditional branch target (if/else)] L_3193
L_3193:
        cmp     word ptr [0xf2], 0              ; 83 3E F2 00 00
        jg      L_319D                          ; 7F 03
        jmp     L_3292                          ; E9 F5 00
;   [conditional branch target (if/else)] L_319D
L_319D:
        push    word ptr [0x17ce]               ; FF 36 CE 17
        push    word ptr [0x17cc]               ; FF 36 CC 17
        push    word ptr [0xf2]                 ; FF 36 F2 00
        call    L_1A2A                          ; E8 7E E8
        mov     word ptr [0xf2], 0              ; C7 06 F2 00 00 00
        jmp     L_3292                          ; E9 DD 00
;   [loop start] L_31B5
L_31B5:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [0x17cc]           ; 03 06 CC 17
        cmp     ax, 0x50                        ; 3D 50 00
        jg      L_31C6                          ; 7F 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_31CD                          ; EB 07
;   [conditional branch target (if/else)] L_31C6
L_31C6:
        mov     ax, 0x50                        ; B8 50 00
        sub     ax, word ptr [0x17cc]           ; 2B 06 CC 17
;   [unconditional branch target] L_31CD
L_31CD:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [0xee], 0              ; 83 3E EE 00 00
        je      L_3214                          ; 74 3D
        cmp     word ptr [0xf0], 0              ; 83 3E F0 00 00
        jne     L_31EC                          ; 75 0E
        mov     ax, word ptr [0x17cc]           ; A1 CC 17
        mov     dx, word ptr [0x17ce]           ; 8B 16 CE 17
        mov     word ptr [0x17d0], ax           ; A3 D0 17
        mov     word ptr [0x17d2], dx           ; 89 16 D2 17
;   [conditional branch target (if/else)] L_31EC
L_31EC:
        mov     ax, word ptr [0x17cc]           ; A1 CC 17
        shl     ax, 1                           ; D1 E0
        add     ax, 0x17d4                      ; 05 D4 17
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    L_603D                          ; E8 39 2E
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0x17cc]           ; 03 06 CC 17
        sub     ax, word ptr [0x17d0]           ; 2B 06 D0 17
        mov     word ptr [0xf0], ax             ; A3 F0 00
        jmp     L_3227                          ; EB 13
;   [conditional branch target (if/else)] L_3214
L_3214:
        push    word ptr [0x17ce]               ; FF 36 CE 17
        push    word ptr [0x17cc]               ; FF 36 CC 17
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_10FA                          ; E8 D3 DE
;   [unconditional branch target] L_3227
L_3227:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     word ptr [0x17cc], ax           ; 01 06 CC 17
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp + 8], ax           ; 01 46 08
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     word ptr [bp + 6], ax           ; 29 46 06
        cmp     word ptr [0x17cc], 0x4f         ; 83 3E CC 17 4F
        jle     L_3292                          ; 7E 52
        test    byte ptr [0x10d], 0x40          ; F6 06 0D 01 40
        je      L_3266                          ; 74 1F
        cmp     word ptr [0x17ce], 0x18         ; 83 3E CE 17 18
        je      L_3266                          ; 74 18
        push    word ptr [0x17ce]               ; FF 36 CE 17
        push    word ptr [0x17cc]               ; FF 36 CC 17
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_30C0                          ; E8 65 FE
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [0x17cc], 0            ; C7 06 CC 17 00 00
        jmp     L_3292                          ; EB 2C
;   [conditional branch target (if/else)] L_3266
L_3266:
        mov     word ptr [0x17cc], 0x4f         ; C7 06 CC 17 4F 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_3292                          ; 7E 20
        push    word ptr [0x17ce]               ; FF 36 CE 17
        push    word ptr [0x17cc]               ; FF 36 CC 17
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 8]           ; 03 46 08
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_10FA                          ; E8 6D DE
        mov     word ptr [bp + 6], 0            ; C7 46 06 00 00
;   [branch target] L_3292
L_3292:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_329B                          ; 7E 03
        jmp     L_31B5                          ; E9 1A FF
;   [conditional branch target (if/else)] L_329B
L_329B:
        mov     word ptr [0xec], 1              ; C7 06 EC 00 01 00
;   [unconditional branch target] L_32A1
L_32A1:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        call    L_200A                          ; E8 4B ED
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1736                          ; E8 6B E4
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A A7 2F 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [0x17cc]           ; A1 CC 17
        mov     dx, word ptr [0x17ce]           ; 8B 16 CE 17
        mov     word ptr [0x17d0], ax           ; A3 D0 17
        mov     word ptr [0x17d2], dx           ; 89 16 D2 17
        mov     word ptr [0xf0], 0              ; C7 06 F0 00 00 00
        mov     word ptr [0xee], 1              ; C7 06 EE 00 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0xf0], 0              ; 83 3E F0 00 00
        jle     L_333F                          ; 7E 1F
        push    word ptr [0x17d2]               ; FF 36 D2 17
        push    word ptr [0x17d0]               ; FF 36 D0 17
        mov     ax, word ptr [0x17d0]           ; A1 D0 17
        shl     ax, 1                           ; D1 E0
        add     ax, 0x17d4                      ; 05 D4 17
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xf0]                 ; FF 36 F0 00
        call    L_1A9E                          ; E8 65 E7
        mov     word ptr [0xf0], 0              ; C7 06 F0 00 00 00
;   [conditional branch target (if/else)] L_333F
L_333F:
        mov     word ptr [0xee], 0              ; C7 06 EE 00 00 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr [0xf2], ax             ; 01 06 F2 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (16 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_336F   offset=0x336F  size=16 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_336F
L_336F:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        test    word ptr [bp + 4], 0x4000       ; F7 46 04 00 40
        je      L_33B4                          ; 74 3B
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0xfffb                      ; 3D FB FF
        je      L_33A8                          ; 74 27
        cmp     ax, 0xfffc                      ; 3D FC FF
        je      L_3396                          ; 74 10
        cmp     ax, 0xfffd                      ; 3D FD FF
        je      L_33B4                          ; 74 29
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        jmp     L_33A0                          ; EB 0A
; Description (heuristic):
;   Internal helper (9 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_3396   offset=0x3396  size=9 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Near calls (internal): L_3452
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_3396
L_3396:
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        mov     ax, 0x27                        ; B8 27 00
;   [loop start (also forward branch)] L_33A0
L_33A0:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 AC 00
        jmp     L_33B4                          ; EB 0C
; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_33A8   offset=0x33A8  size=8 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_33A8
L_33A8:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0x2010                      ; B8 10 20
        jmp     L_33A0                          ; EB EC
;   [error/early exit] L_33B4
L_33B4:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (40 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_33BA   offset=0x33BA  size=40 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_33BA
;-------------------------------------------------------------------------
;   [sub-routine] L_33BA
L_33BA:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        cmp     di, 0xa                         ; 83 FF 0A
        jle     L_33E2                          ; 7E 11
        push    si                              ; 56
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_33BA                          ; E8 DA FF
        mov     si, ax                          ; 8B F0
;   [conditional branch target (if/else)] L_33E2
L_33E2:
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        mov     byte ptr [si], dl               ; 88 14
        inc     si                              ; 46
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (42 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_33FF   offset=0x33FF  size=42 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=1)
; Prologue: standard_bp     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_33FF
L_33FF:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
;   [loop start] L_340D
L_340D:
        mov     ax, word ptr [0x1cc0]           ; A1 C0 1C
        cmp     word ptr [si], ax               ; 39 04
        jne     L_341C                          ; 75 08
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_343F                          ; 74 25
        jmp     L_3437                          ; EB 1B
;   [conditional branch target (if/else)] L_341C
L_341C:
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        inc     si                              ; 46
        cmp     byte ptr [si - 1], 0            ; 80 7C FF 00
        jne     L_340D                          ; 75 E5
        sub     ax, ax                          ; 2B C0
        jmp     L_344C                          ; EB 20
;   [loop start] L_342C
L_342C:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
;   [unconditional branch target] L_3437
L_3437:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_342C                          ; 75 ED
;   [conditional branch target (if/else)] L_343F
L_343F:
        inc     si                              ; 46
        inc     si                              ; 46
;   [loop start] L_3441
L_3441:
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        or      al, al                          ; 0A C0
        jne     L_3441                          ; 75 F8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_344C
L_344C:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x8]  WORD      (2 uses)

; Description (heuristic):
;   Mixed routine using: LSTRCPY, LOADSTRING, MESSAGEBOX.

;-------------------------------------------------------------------------
; sub_3452   offset=0x3452  size=124 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;
; Near calls (internal): L_33FF
;-------------------------------------------------------------------------
;   [sub-routine] L_3452
L_3452:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a6                       ; 81 EC A6 01
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        cmp     word ptr [bp + 8], 0xa          ; 83 7E 08 0A
        je      L_3482                          ; 74 18
        push    word ptr [0x1bf8]               ; FF 36 F8 1B
        ;   ^ arg hInstance
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg wID
        lea     ax, [bp - 0x154]                ; 8D 86 AC FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A C9 34 00 00 [FIXUP]
        jmp     L_3492                          ; EB 10
;   [conditional branch target (if/else)] L_3482
L_3482:
        lea     ax, [bp - 0x154]                ; 8D 86 AC FE
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x1de2                      ; B8 E2 1D
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 9F 34 00 00 [FIXUP]
;   [unconditional branch target] L_3492
L_3492:
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x154]                ; 8D 86 AC FE
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 18 05 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, 0xa                         ; 2D 0A 00
        cmp     ax, 0x12                        ; 3D 12 00
        jbe     L_34B1                          ; 76 03
        jmp     L_355A                          ; E9 A9 00
;   [conditional branch target (if/else)] L_34B1
L_34B1:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x3534]       ; 2E FF A7 34 35
        push    word ptr [0x1bf8]               ; FF 36 F8 1B
        ;   ^ arg hInstance
        push    si                              ; 56
        ;   ^ arg wID
        lea     ax, [bp - 0x1a4]                ; 8D 86 5C FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 9F 35 00 00 [FIXUP]
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ax                              ; 50
        lea     ax, [bp - 0x1a4]                ; 8D 86 5C FE
        push    ax                              ; 50
;   [loop start] L_34D7
L_34D7:
        lea     ax, [bp - 0x154]                ; 8D 86 AC FE
        push    ax                              ; 50
        call    L_33FF                          ; E8 20 FF
        add     sp, 6                           ; 83 C4 06
        mov     word ptr [bp - 0x1a6], 0x30     ; C7 86 5A FE 30 00
        jmp     L_355A                          ; EB 70
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ax                              ; 50
        push    si                              ; 56
        lea     ax, [bp - 0x154]                ; 8D 86 AC FE
        push    ax                              ; 50
        call    L_33FF                          ; E8 07 FF
        add     sp, 6                           ; 83 C4 06
        mov     word ptr [bp - 0x1a6], 0x124    ; C7 86 5A FE 24 01
        jmp     L_355A                          ; EB 57
        mov     word ptr [bp - 0x1a6], 0x21     ; C7 86 5A FE 21 00
        jmp     L_355A                          ; EB 4F
        mov     word ptr [bp - 0x1a6], 0x23     ; C7 86 5A FE 23 00
        jmp     L_355A                          ; EB 47
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ax                              ; 50
        push    si                              ; 56
        lea     ax, [bp - 0x154]                ; 8D 86 AC FE
        push    ax                              ; 50
        call    L_33FF                          ; E8 DE FE
        add     sp, 6                           ; 83 C4 06
        mov     word ptr [bp - 0x1a6], 0x24     ; C7 86 5A FE 24 00
        jmp     L_355A                          ; EB 2E
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ax                              ; 50
        push    si                              ; 56
        jmp     L_34D7                          ; EB A3
        sub     al, 0x35                        ; 2C 35
        sub     al, 0x35                        ; 2C 35
        sub     al, 0x35                        ; 2C 35
        sub     al, 0x35                        ; 2C 35
        sub     al, 0x35                        ; 2C 35
        mov     cx, 0x334                       ; B9 34 03
        xor     ax, 0x34e2                      ; 35 E2 34
        loop    L_357A                          ; E2 34
        sub     al, 0x35                        ; 2C 35
        or      si, word ptr [di]               ; 0B 35
        sub     al, 0x35                        ; 2C 35
        sub     al, 0x35                        ; 2C 35
        mov     cx, 0x2434                      ; B9 34 24
        xor     ax, 0x34ea                      ; 35 EA 34
        sub     al, 0x35                        ; 2C 35
        adc     si, word ptr [di]               ; 13 35
        sub     al, 0x35                        ; 2C 35
;   [unconditional branch target] L_355A
L_355A:
        cmp     word ptr [bp + 8], 0xa          ; 83 7E 08 0A
        jne     L_3565                          ; 75 05
        or      byte ptr [bp - 0x1a5], 0x10     ; 80 8E 5B FE 10
;   [conditional branch target (if/else)] L_3565
L_3565:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x1c16                      ; B8 16 1C
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        push    word ptr [bp - 0x1a6]           ; FF B6 5A FE
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HANDLE    (1 use)

; Description (heuristic):
;   Mixed routine using: LOADSTRING.

;-------------------------------------------------------------------------
; sub_3588   offset=0x3588  size=297 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_3588
L_3588:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 0x37                        ; B8 37 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A C8 35 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_35AC                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_35AE                          ; EB 02
;   [conditional branch target (if/else)] L_35AC
L_35AC:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_35AE
L_35AE:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x1cc0], ax           ; A3 C0 1C
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x1b3a                      ; B8 3A 1B
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A EB 35 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_35D5                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_35D7                          ; EB 02
;   [conditional branch target (if/else)] L_35D5
L_35D5:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_35D7
L_35D7:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x1c16                      ; B8 16 1C
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 0E 36 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_35F8                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_35FA                          ; EB 02
;   [conditional branch target (if/else)] L_35F8
L_35F8:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_35FA
L_35FA:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x2044                      ; B8 44 20
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 31 36 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_361B                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_361D                          ; EB 02
;   [conditional branch target (if/else)] L_361B
L_361B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_361D
L_361D:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x2024                      ; B8 24 20
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 54 36 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_363E                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3640                          ; EB 02
;   [conditional branch target (if/else)] L_363E
L_363E:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3640
L_3640:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 0x23                        ; B8 23 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x202c                      ; B8 2C 20
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 77 36 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3661                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3663                          ; EB 02
;   [conditional branch target (if/else)] L_3661
L_3661:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3663
L_3663:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x2034                      ; B8 34 20
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 9A 36 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3684                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3686                          ; EB 02
;   [conditional branch target (if/else)] L_3684
L_3684:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3686
L_3686:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x1cc4                      ; B8 C4 1C
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A BD 36 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_36A7                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_36A9                          ; EB 02
;   [conditional branch target (if/else)] L_36A7
L_36A7:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_36A9
L_36A9:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 0x25                        ; B8 25 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x1b52                      ; B8 52 1B
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A E0 36 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_36CA                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_36CC                          ; EB 02
;   [conditional branch target (if/else)] L_36CA
L_36CA:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_36CC
L_36CC:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x1b70                      ; B8 70 1B
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 03 37 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_36ED                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_36EF                          ; EB 02
;   [conditional branch target (if/else)] L_36ED
L_36ED:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_36EF
L_36EF:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x1de2                      ; B8 E2 1D
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 26 37 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3710                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3712                          ; EB 02
;   [conditional branch target (if/else)] L_3710
L_3710:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3712
L_3712:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 0x1d                        ; B8 1D 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x1bfc                      ; B8 FC 1B
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3733                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3735                          ; EB 02
;   [conditional branch target (if/else)] L_3733
L_3733:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3735
L_3735:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x205c                      ; B8 5C 20
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 6C 37 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3756                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3758                          ; EB 02
;   [conditional branch target (if/else)] L_3756
L_3756:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3758
L_3758:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x1b5c                      ; B8 5C 1B
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 8F 37 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3779                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_377B                          ; EB 02
;   [conditional branch target (if/else)] L_3779
L_3779:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_377B
L_377B:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x1b26                      ; B8 26 1B
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A B2 37 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_379C                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_379E                          ; EB 02
;   [conditional branch target (if/else)] L_379C
L_379C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_379E
L_379E:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x1dce                      ; B8 CE 1D
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A D5 37 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_37BF                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_37C1                          ; EB 02
;   [conditional branch target (if/else)] L_37BF
L_37BF:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_37C1
L_37C1:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 0x27                        ; B8 27 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x2010                      ; B8 10 20
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A F8 37 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_37E2                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_37E4                          ; EB 02
;   [conditional branch target (if/else)] L_37E2
L_37E2:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_37E4
L_37E4:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x1e4                       ; B8 E4 01
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 1B 38 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3805                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3807                          ; EB 02
;   [conditional branch target (if/else)] L_3805
L_3805:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3807
L_3807:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x1c3a                      ; B8 3A 1C
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 7C 34 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3828                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_382A                          ; EB 02
;   [conditional branch target (if/else)] L_3828
L_3828:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_382A
L_382A:
        or      word ptr [bp - 2], ax           ; 09 46 FE
        jne     L_3834                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3836                          ; EB 02
;   [error/early exit] L_3834
L_3834:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_3836
L_3836:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: DELETEDC, ESCAPE, TEXTOUT (+6 more).

;-------------------------------------------------------------------------
; sub_383C   offset=0x383C  size=86 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   DELETEDC(HDC hDC) -> BOOL
;   ESCAPE
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   ENABLEWINDOW
;   GETACTIVEWINDOW
;   GETMENU
;   ISWINDOWENABLED
;   SETFOCUS
;
; Near calls (internal): L_336F, L_397F
;-------------------------------------------------------------------------
;   [sub-routine] L_383C
L_383C:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        cmp     word ptr [0x18e], 0             ; 83 3E 8E 01 00
        jne     L_384C                          ; 75 03
        jmp     L_392C                          ; E9 E0 00
;   [conditional branch target (if/else)] L_384C
L_384C:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, word ptr [0x2040]           ; A1 40 20
        add     ax, word ptr [0x1c2c]           ; 03 06 2C 1C
        cmp     ax, word ptr [0x200e]           ; 3B 06 0E 20
        jl      L_38C0                          ; 7C 62
        push    word ptr [0x2070]               ; FF 36 70 20
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_387A                          ; 74 0C
        push    word ptr [0x2070]               ; FF 36 70 20
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A A0 38 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_387A
L_387A:
        push    word ptr [0x2072]               ; FF 36 72 20
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_38BA                          ; 74 23
        push    word ptr [0x2070]               ; FF 36 70 20
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        call    far USER.GETACTIVEWINDOW        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x2070]           ; A1 70 20
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_38BA                          ; 75 06
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A F0 0D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_38BA
L_38BA:
        mov     word ptr [0x2040], 0            ; C7 06 40 20 00 00
;   [conditional branch target (if/else)] L_38C0
L_38C0:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jl      L_38ED                          ; 7C 27
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_38E4                          ; 7E 18
        push    word ptr [0x2072]               ; FF 36 72 20
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr [0x2040]               ; FF 36 40 20
        ;   ^ arg y
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A E6 28 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_38E4
L_38E4:
        mov     ax, word ptr [0x1c2c]           ; A1 2C 1C
        add     word ptr [0x2040], ax           ; 01 06 40 20
        jmp     L_392C                          ; EB 3F
;   [conditional branch target (if/else)] L_38ED
L_38ED:
        push    word ptr [0x2072]               ; FF 36 72 20
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x18e], 0             ; C7 06 8E 01 00 00
        push    word ptr [0x2070]               ; FF 36 70 20
        call    far USER.GETMENU                ; 9A 1F 0B 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_3919                          ; 74 0D
        push    ax                              ; 50
        ;   ^ arg hMenu
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 42 0B 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_3919
L_3919:
        push    word ptr [0x2070]               ; FF 36 70 20
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_336F                          ; E8 4C FA
        mov     ax, 0x1b80                      ; B8 80 1B
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_397F                          ; E8 53 00
;   [fall-through exit] L_392C
L_392C:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: ANSIPREV, LSTRLEN.

;-------------------------------------------------------------------------
; sub_3932   offset=0x3932  size=33 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   ANSIPREV
;   LSTRLEN(LPSTR lpsz) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_3932
L_3932:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [bp + 4]           ; 03 46 04
        jmp     L_396B                          ; EB 24
;   [loop start] L_3947
L_3947:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        cmp     al, 0x5c                        ; 3C 5C
        je      L_3957                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_395C                          ; 75 05
;   [conditional branch target (if/else)] L_3957
L_3957:
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_3976                          ; EB 1A
;   [conditional branch target (if/else)] L_395C
L_395C:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_396B
L_396B:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        ja      L_3947                          ; 77 D1
;   [fall-through exit] L_3976
L_3976:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   String manipulation routine (2 string APIs).

;-------------------------------------------------------------------------
; sub_397F   offset=0x397F  size=86 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_3932
;-------------------------------------------------------------------------
;   [sub-routine] L_397F
L_397F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x58                        ; 83 EC 58
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_399D                          ; 74 09
        push    bx                              ; 53
        call    L_3932                          ; E8 9A FF
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_39A2                          ; EB 05
;   [conditional branch target (if/else)] L_399D
L_399D:
        mov     word ptr [bp - 8], 0x1b3a       ; C7 46 F8 3A 1B
;   [unconditional branch target] L_39A2
L_39A2:
        cmp     word ptr [0x18c], 0             ; 83 3E 8C 01 00
        je      L_39B5                          ; 74 0C
        mov     ax, 0x2024                      ; B8 24 20
        push    ax                              ; 50
        call    L_3932                          ; E8 82 FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_39BA                          ; EB 05
;   [conditional branch target (if/else)] L_39B5
L_39B5:
        mov     word ptr [bp - 6], 0x3f2        ; C7 46 FA F2 03
;   [unconditional branch target] L_39BA
L_39BA:
        cmp     word ptr [0x18e], 0             ; 83 3E 8E 01 00
        je      L_39CD                          ; 74 0C
        mov     ax, 0x202c                      ; B8 2C 20
        push    ax                              ; 50
        call    L_3932                          ; E8 6A FF
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_39D2                          ; EB 05
;   [conditional branch target (if/else)] L_39CD
L_39CD:
        mov     word ptr [bp - 4], 0x3f2        ; C7 46 FC F2 03
;   [unconditional branch target] L_39D2
L_39D2:
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x1c16                      ; B8 16 1C
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 8E 34 00 00 [FIXUP]
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x1b52                      ; B8 52 1B
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A FB 39 00 00 [FIXUP]
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 0A 3A 00 00 [FIXUP]
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 19 3A 00 00 [FIXUP]
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x1b70                      ; B8 70 1B
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 28 3A 00 00 [FIXUP]
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (44 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_3A45   offset=0x3A45  size=44 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Near calls (internal): L_5D26
;-------------------------------------------------------------------------
;   [sub-routine] L_3A45
L_3A45:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [0x18a], 0             ; 83 3E 8A 01 00
        jne     L_3A65                          ; 75 07
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        jne     L_3A76                          ; 75 11
;   [conditional branch target (if/else)] L_3A65
L_3A65:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_5D26                          ; E8 B5 22
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_3AAD                          ; EB 37
;   [conditional branch target (if/else)] L_3A76
L_3A76:
        test    byte ptr [0x10e], 8             ; F6 06 0E 01 08
        je      L_3A82                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3AB0                          ; EB 2E
;   [conditional branch target (if/else)] L_3A82
L_3A82:
        test    byte ptr [0x10d], 0x20          ; F6 06 0D 01 20
        je      L_3AA4                          ; 74 1B
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jle     L_3AA4                          ; 7E 15
        mov     word ptr [bp + 0xa], 1          ; C7 46 0A 01 00
        jmp     L_3AA4                          ; EB 0E
;   [loop start] L_3A96
L_3A96:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_52                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [branch target] L_3AA4
L_3AA4:
        dec     word ptr [bp + 0xa]             ; FF 4E 0A
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jge     L_3A96                          ; 7D E9
;   [unconditional branch target] L_3AAD
L_3AAD:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
;   [unconditional branch target] L_3AB0
L_3AB0:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Mixed routine using: MESSAGEBEEP.

;-------------------------------------------------------------------------
; sub_3AB9   offset=0x3AB9  size=50 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   MESSAGEBEEP
;
; Near calls (internal): L_3B32, L_4A18, L_62E4
;-------------------------------------------------------------------------
;   [sub-routine] L_3AB9
L_3AB9:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        cmp     word ptr [0x18a], 0             ; 83 3E 8A 01 00
        je      L_3AD6                          ; 74 0F
        push    word ptr [0x190]                ; FF 36 90 01
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_3B32                          ; E8 61 00
        add     sp, 4                           ; 83 C4 04
        jmp     L_3B2D                          ; EB 57
;   [conditional branch target (if/else)] L_3AD6
L_3AD6:
        test    byte ptr [0x10e], 8             ; F6 06 0E 01 08
        jne     L_3B2D                          ; 75 50
        test    byte ptr [0x10d], 0x20          ; F6 06 0D 01 20
        je      L_3AEF                          ; 74 0B
        cmp     word ptr [bp + 8], 1            ; 83 7E 08 01
        jle     L_3AEF                          ; 7E 05
        mov     word ptr [bp + 8], 1            ; C7 46 08 01 00
;   [conditional branch target (if/else)] L_3AEF
L_3AEF:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_62E4                          ; E8 ED 27
        cwde                                    ; 98
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_3B24                          ; EB 27
;   [loop start] L_3AFD
L_3AFD:
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_4A18                          ; E8 0A 0F
        mov     si, ax                          ; 8B F0
        cmp     si, 1                           ; 83 FE 01
        jge     L_3B24                          ; 7D 0F
        or      si, si                          ; 0B F6
        jne     L_3B2D                          ; 75 14
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBEEP            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_3B2D                          ; EB 09
;   [branch target] L_3B24
L_3B24:
        dec     word ptr [bp + 8]               ; FF 4E 08
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_3AFD                          ; 7D D0
;   [error/early exit] L_3B2D
L_3B2D:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_3B32   offset=0x3B32  size=21 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_3B32
L_3B32:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0x18a], 0             ; 83 3E 8A 01 00
        jne     L_3B41                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3B43                          ; EB 02
;   [conditional branch target (if/else)] L_3B41
L_3B41:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3B43
L_3B43:
        mov     word ptr [0x18a], ax            ; A3 8A 01
        push    word ptr [bp + 4]               ; FF 76 04
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_3B53                          ; 74 04
        or      ax, ax                          ; 0B C0
        je      L_3B58                          ; 74 05
;   [conditional branch target (if/else)] L_3B53
L_3B53:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3B5A                          ; EB 02
;   [conditional branch target (if/else)] L_3B58
L_3B58:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3B5A
L_3B5A:
        push    ax                              ; 50
        call    far _entry_19                   ; 9A AE 0A 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_3B64   offset=0x3B64  size=28 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=1)
; Prologue: standard_bp     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_3B64
L_3B64:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
;   [loop start] L_3B72
L_3B72:
        cmp     byte ptr [si], 0                ; 80 3C 00
        je      L_3B88                          ; 74 11
        dec     word ptr [bp + 8]               ; FF 4E 08
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_3B88                          ; 7E 08
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        cmp     al, 0x2c                        ; 3C 2C
        jne     L_3B8F                          ; 75 07
;   [conditional branch target (if/else)] L_3B88
L_3B88:
        mov     byte ptr [di], 0                ; C6 05 00
        mov     ax, si                          ; 8B C6
        jmp     L_3B97                          ; EB 08
;   [conditional branch target (if/else)] L_3B8F
L_3B8F:
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        jmp     L_3B72                          ; EB DB
;   [fall-through exit] L_3B97
L_3B97:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around GETPROFILESTRING.

;-------------------------------------------------------------------------
; sub_3B9D   offset=0x3B9D  size=20 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   GETPROFILESTRING
;-------------------------------------------------------------------------
;   [sub-routine] L_3B9D
L_3B9D:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x3fd                       ; B8 FD 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3f6                       ; B8 F6 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3f5                       ; B8 F5 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: CREATEDC, DISPATCHMESSAGE, PEEKMESSAGE (+1 more).

;-------------------------------------------------------------------------
; sub_3BC3   offset=0x3BC3  size=92 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CREATEDC(LPSTR lpszDriver, LPSTR lpszDevice, LPSTR lpszOutput, LPVOID lpInitData) -> HDC
;   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
;   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
;   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
;
; Near calls (internal): L_3B64, L_3B9D
;-------------------------------------------------------------------------
;   [sub-routine] L_3BC3
L_3BC3:
        ;   = cProc <164> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa4                        ; 81 EC A4 00
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ax                              ; 50
        call    L_3B9D                          ; E8 C8 FF
        add     sp, 4                           ; 83 C4 04
        or      ax, ax                          ; 0B C0
        jne     L_3BE3                          ; 75 07
        mov     word ptr [bp - 0x54], 0         ; C7 46 AC 00 00
        jmp     L_3C3A                          ; EB 57
;   [conditional branch target (if/else)] L_3BE3
L_3BE3:
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ax                              ; 50
        call    L_3B64                          ; E8 72 FF
        add     sp, 6                           ; 83 C4 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        lea     ax, [bp - 0xa4]                 ; 8D 86 5C FF
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_3B64                          ; E8 5D FF
        add     sp, 6                           ; 83 C4 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        lea     ax, [bp - 0x7c]                 ; 8D 46 84
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_3B64                          ; E8 49 FF
        add     sp, 6                           ; 83 C4 06
        lea     ax, [bp - 0xa4]                 ; 8D 86 5C FF
        push    ss                              ; 16
        ;   ^ arg lpszDriver (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDriver (low/offset)
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        ;   ^ arg lpszDevice (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDevice (low/offset)
        lea     ax, [bp - 0x7c]                 ; 8D 46 84
        push    ss                              ; 16
        ;   ^ arg lpszOutput (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszOutput (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpInitData (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpInitData (low/offset)
        ; --> CREATEDC(LPSTR lpszDriver, LPSTR lpszDevice, LPSTR lpszOutput, LPVOID lpInitData) -> HDC
        call    far GDI.CREATEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
;   [fall-through exit] L_3C3A
L_3C3A:
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        jmp     L_3C64                          ; EB 14
;   [loop start] L_3C50
L_3C50:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_3C64
L_3C64:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWnd
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMin
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMax
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wRemoveMsg
        ; --> PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
        call    far USER.PEEKMESSAGE            ; 9A 56 31 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3C50                          ; 75 D5
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Mixed routine using: DELETEDC, ESCAPE, GETDEVICECAPS (+8 more).

;-------------------------------------------------------------------------
; sub_3C89   offset=0x3C89  size=166 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   DELETEDC(HDC hDC) -> BOOL
;   ESCAPE
;   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
;   GETTEXTMETRICS
;   LSTRLEN(LPSTR lpsz) -> INT
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   ENABLEWINDOW
;   GETACTIVEWINDOW
;   GETMENU
;   ISWINDOWENABLED
;   SETFOCUS
;
; Near calls (internal): L_2F00, L_303F, L_336F, L_3BC3
;-------------------------------------------------------------------------
;   [sub-routine] L_3C89
L_3C89:
        ;   = cProc <132> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x84                        ; 81 EC 84 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETMENU                ; 9A 44 3E 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_3CA4                          ; 75 03
        jmp     L_3D67                          ; E9 C3 00
;   [conditional branch target (if/else)] L_3CA4
L_3CA4:
        call    L_3BC3                          ; E8 1C FF
        mov     word ptr [0x2072], ax           ; A3 72 20
        or      ax, ax                          ; 0B C0
        ja      L_3CC0                          ; 77 12
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
;   [loop start] L_3CB5
L_3CB5:
        call    L_336F                          ; E8 B7 F6
        mov     word ptr [bp + 6], 0            ; C7 46 06 00 00
        jmp     L_3E18                          ; E9 58 01
;   [conditional branch target (if/else)] L_3CC0
L_3CC0:
        push    word ptr [0x2072]               ; FF 36 72 20
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x1c30]               ; FF 36 30 1C
        push    word ptr [0x1c2e]               ; FF 36 2E 1C
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A F0 3C 00 00 [FIXUP]
        push    word ptr [0x2072]               ; FF 36 72 20
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 18 3D 00 00 [FIXUP]
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        or      ax, ax                          ; 0B C0
        jl      L_3D1F                          ; 7C 24
        push    word ptr [0x2072]               ; FF 36 72 20
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0x1b80                      ; B8 80 1B
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 3E 39 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x1b80                      ; B8 80 1B
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A C8 3D 00 00 [FIXUP]
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
;   [conditional branch target (if/else)] L_3D1F
L_3D1F:
        cmp     word ptr [bp - 0x2c], 0         ; 83 7E D4 00
        jl      L_3D55                          ; 7C 30
        push    word ptr [0x2072]               ; FF 36 72 20
        ;   ^ arg hDC
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x200e], ax           ; A3 0E 20
        push    word ptr [0x2072]               ; FF 36 72 20
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A 6D 27 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        mov     word ptr [0x1c2c], ax           ; A3 2C 1C
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr [0x1c2a], ax           ; A3 2A 1C
        jmp     L_3E18                          ; E9 C3 00
;   [conditional branch target (if/else)] L_3D55
L_3D55:
        push    word ptr [0x2072]               ; FF 36 72 20
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A EB 3D 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        jmp     L_3CB5                          ; E9 4E FF
;   [unconditional branch target] L_3D67
L_3D67:
        cmp     word ptr [0x18e], 0             ; 83 3E 8E 01 00
        je      L_3D95                          ; 74 27
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2F00                          ; E8 88 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 0x80], ax        ; 89 46 80
        mov     word ptr [bp - 0x7e], dx        ; 89 56 82
        push    dx                              ; 52
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_303F                          ; E8 AA F2
;   [conditional branch target (if/else)] L_3D95
L_3D95:
        cmp     word ptr [0x18e], 0             ; 83 3E 8E 01 00
        je      L_3E18                          ; 74 7C
        push    word ptr [0x2070]               ; FF 36 70 20
        call    far USER.ISWINDOWENABLED        ; 9A 63 38 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        or      ax, ax                          ; 0B C0
        je      L_3DB8                          ; 74 0C
        push    word ptr [0x2070]               ; FF 36 70 20
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FE 3D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_3DB8
L_3DB8:
        push    word ptr [0x2072]               ; FF 36 72 20
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A E2 3D 00 00 [FIXUP]
        mov     word ptr [0x2040], 0            ; C7 06 40 20 00 00
        push    word ptr [0x2072]               ; FF 36 72 20
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 8A 38 00 00 [FIXUP]
        push    word ptr [0x2072]               ; FF 36 72 20
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A F2 38 00 00 [FIXUP]
        cmp     word ptr [bp - 0x2a], 0         ; 83 7E D6 00
        je      L_3E18                          ; 74 23
        push    word ptr [0x2070]               ; FF 36 70 20
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 76 38 00 00 [FIXUP]
        call    far USER.GETACTIVEWINDOW        ; 9A A5 38 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x2070]           ; A1 70 20
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_3E18                          ; 75 06
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A B6 38 00 00 [FIXUP]
;   [branch target] L_3E18
L_3E18:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_3E33                          ; 74 15
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_3E2D                          ; 75 02
        sub     ax, ax                          ; 2B C0
;   [conditional branch target (if/else)] L_3E2D
L_3E2D:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 77 3E 00 00 [FIXUP]
;   [error/early exit] L_3E33
L_3E33:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: CHECKMENUITEM, GETMENU.

;-------------------------------------------------------------------------
; sub_3E3A   offset=0x3E3A  size=45 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   GETMENU
;
; Near calls (internal): L_3C89, L_4BE2
;-------------------------------------------------------------------------
;   [sub-routine] L_3E3A
L_3E3A:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETMENU                ; 9A 01 39 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        je      L_3E65                          ; 74 13
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_4BE2                          ; E8 87 0D
        or      ax, ax                          ; 0B C0
        je      L_3EB3                          ; 74 54
        mov     word ptr [0x190], 0             ; C7 06 90 01 00 00
;   [conditional branch target (if/else)] L_3E65
L_3E65:
        cmp     word ptr [0x18e], 0             ; 83 3E 8E 01 00
        je      L_3E8D                          ; 74 21
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A A4 3E 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_3C89                          ; E8 05 FE
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [0x18e], 0             ; C7 06 8E 01 00 00
;   [conditional branch target (if/else)] L_3E8D
L_3E8D:
        cmp     word ptr [0x18c], 0             ; 83 3E 8C 01 00
        je      L_3EAE                          ; 74 1A
        call    far _entry_15                   ; 9A 2F 05 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 15 39 00 00 [FIXUP]
        mov     word ptr [0x18c], 0             ; C7 06 8C 01 00 00
;   [conditional branch target (if/else)] L_3EAE
L_3EAE:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3EB5                          ; EB 02
;   [error/early exit] L_3EB3
L_3EB3:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_3EB5
L_3EB5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (42 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_3EB9   offset=0x3EB9  size=42 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_2ACA
;-------------------------------------------------------------------------
;   [sub-routine] L_3EB9
L_3EB9:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 FA EB
        push    word ptr [bp + 8]               ; FF 76 08
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     word ptr [bx + 0xc], 0          ; 83 7F 0C 00
        je      L_3EE0                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_3EE3                          ; EB 03
;   [conditional branch target (if/else)] L_3EE0
L_3EE0:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_3EE3
L_3EE3:
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 0xa]             ; FF 77 0A
        push    word ptr [bx + 6]               ; FF 77 06
        call    far _entry_53                   ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 CB EB
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Mixed routine using: YIELD, GETTICKCOUNT, GETTIMERRESOLUTION.

;-------------------------------------------------------------------------
; sub_3F0A   offset=0x3F0A  size=39 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   YIELD(void) -> VOID
;   GETTICKCOUNT
;   GETTIMERRESOLUTION
;-------------------------------------------------------------------------
;   [sub-routine] L_3F0A
L_3F0A:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        call    far USER.GETTIMERRESOLUTION     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        call    far USER.GETTICKCOUNT           ; 9A 4C 3F 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_55                   ; 9A 66 41 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_54                   ; 9A 73 41 00 00 [FIXUP]
        cdq                                     ; 99
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
;   [loop start] L_3F4B
L_3F4B:
        call    far USER.GETTICKCOUNT           ; 9A FF FF 00 00 [FIXUP]
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        sbb     dx, word ptr [bp - 0xa]         ; 1B 56 F6
        cmp     dx, word ptr [bp - 6]           ; 3B 56 FA
        ja      L_3F69                          ; 77 0E
        jb      L_3F62                          ; 72 05
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jae     L_3F69                          ; 73 07
;   [conditional branch target (if/else)] L_3F62
L_3F62:
        ; --> YIELD(void) -> VOID
        call    far KERNEL.YIELD                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_3F4B                          ; EB E2
;   [error/early exit] L_3F69
L_3F69:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: READCOMM.

;-------------------------------------------------------------------------
; sub_3F6F   offset=0x3F6F  size=39 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   READCOMM
;-------------------------------------------------------------------------
;   [sub-routine] L_3F6F
L_3F6F:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
;   [loop start] L_3F75
L_3F75:
        push    word ptr [0x1c14]               ; FF 36 14 1C
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.READCOMM               ; 9A 83 42 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 1                           ; 3D 01 00
        jne     L_3F9B                          ; 75 0C
        cmp     byte ptr [bp - 2], 0xd          ; 80 7E FE 0D
        je      L_3F75                          ; 74 E0
        cmp     byte ptr [bp - 2], 0xa          ; 80 7E FE 0A
        je      L_3F75                          ; 74 DA
;   [conditional branch target (if/else)] L_3F9B
L_3F9B:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        or      ax, ax                          ; 0B C0
        je      L_3FAE                          ; 74 0C
        cmp     ax, 1                           ; 3D 01 00
        je      L_3FB8                          ; 74 11
;   [loop start] L_3FA7
L_3FA7:
        mov     word ptr [bp - 4], 4            ; C7 46 FC 04 00
        jmp     L_3FB3                          ; EB 05
;   [conditional branch target (if/else)] L_3FAE
L_3FAE:
        mov     word ptr [bp - 4], 7            ; C7 46 FC 07 00
;   [loop start (also forward branch)] L_3FB3
L_3FB3:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_3FD0                          ; EB 18
;   [conditional branch target (if/else)] L_3FB8
L_3FB8:
        cmp     byte ptr [bp - 2], 0x30         ; 80 7E FE 30
        jl      L_3FA7                          ; 7C E9
        cmp     byte ptr [bp - 2], 0x35         ; 80 7E FE 35
        jg      L_3FA7                          ; 7F E3
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        cwde                                    ; 98
        sub     ax, 0x30                        ; 2D 30 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_3FB3                          ; EB E3
;   [fall-through exit] L_3FD0
L_3FD0:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (68 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_3FD4   offset=0x3FD4  size=68 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Near calls (internal): L_33BA
;-------------------------------------------------------------------------
;   [sub-routine] L_3FD4
L_3FD4:
        ;   = cProc <88> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x58                        ; 83 EC 58
        push    si                              ; 56
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x41             ; C6 07 41
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x54             ; C6 07 54
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x53             ; C6 07 53
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x36             ; C6 07 36
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x3d             ; C6 07 3D
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 0x24]            ; FF 77 24
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_33BA                          ; E8 9F F3
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x20             ; C6 07 20
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x53             ; C6 07 53
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x37             ; C6 07 37
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x3d             ; C6 07 3D
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 0x22]            ; FF 77 22
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_33BA                          ; E8 6B F3
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x20             ; C6 07 20
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x53             ; C6 07 53
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x31             ; C6 07 31
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x31             ; C6 07 31
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x3d             ; C6 07 3D
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 0x12], 0         ; 83 7F 12 00
        je      L_408F                          ; 74 08
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x46                        ; B8 46 00
        jmp     L_4095                          ; EB 06
; Description (heuristic):
;   Pure computation / dispatcher (75 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_408F   offset=0x408F  size=75 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_33BA
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_408F
L_408F:
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0xc8                        ; B8 C8 00
;   [unconditional branch target] L_4095
L_4095:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_33BA                          ; E8 1F F3
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x20             ; C6 07 20
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x44             ; C6 07 44
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 0x10], 0         ; 83 7F 10 00
        je      L_40BC                          ; 74 04
        mov     al, 0x54                        ; B0 54
        jmp     L_40BE                          ; EB 02
;   [conditional branch target (if/else)] L_40BC
L_40BC:
        mov     al, 0x50                        ; B0 50
;   [unconditional branch target] L_40BE
L_40BE:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], al               ; 88 07
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, 0x26                        ; 05 26 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_40FA                          ; EB 29
;   [loop start] L_40D1
L_40D1:
        cmp     byte ptr [bp - 6], 0x30         ; 80 7E FA 30
        jl      L_40DD                          ; 7C 06
        cmp     byte ptr [bp - 6], 0x39         ; 80 7E FA 39
        jle     L_40EF                          ; 7E 12
;   [conditional branch target (if/else)] L_40DD
L_40DD:
        cmp     byte ptr [bp - 6], 0x2c         ; 80 7E FA 2C
        je      L_40EF                          ; 74 0C
        cmp     byte ptr [bp - 6], 0x23         ; 80 7E FA 23
        je      L_40EF                          ; 74 06
        cmp     byte ptr [bp - 6], 0x2a         ; 80 7E FA 2A
        jne     L_40FA                          ; 75 0B
;   [conditional branch target (if/else)] L_40EF
L_40EF:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        mov     byte ptr [bx], al               ; 88 07
;   [branch target] L_40FA
L_40FA:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        or      al, al                          ; 0A C0
        jne     L_40D1                          ; 75 C8
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0xd              ; C6 07 0D
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x58], 0         ; C7 46 A8 00 00
        jmp     L_4146                          ; EB 1B
;   [loop start] L_412B
L_412B:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_414E                          ; 74 1B
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [bx], al               ; 88 07
        inc     word ptr [bp - 0x58]            ; FF 46 A8
;   [unconditional branch target] L_4146
L_4146:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0x58], ax        ; 39 46 A8
        jle     L_412B                          ; 7E DD
;   [error/early exit] L_414E
L_414E:
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (23 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_4156   offset=0x4156  size=23 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_3F0A
;-------------------------------------------------------------------------
;   [sub-routine] L_4156
L_4156:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x2710                      ; B8 10 27
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_54                   ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    L_3F0A                          ; E8 8F FD
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: FLUSHCOMM, GETCOMMERROR, READCOMM (+1 more).

;-------------------------------------------------------------------------
; sub_4181   offset=0x4181  size=219 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   FLUSHCOMM
;   GETCOMMERROR
;   READCOMM
;   WRITECOMM
;
; Near calls (internal): L_3F0A, L_3F6F, L_3FD4, L_4156, L_4181
;-------------------------------------------------------------------------
;   [sub-routine] L_4181
L_4181:
        ;   = cProc <182> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xb6                        ; 81 EC B6 00
        push    si                              ; 56
        mov     word ptr [bp - 0x10], 1         ; C7 46 F0 01 00
        push    word ptr [0x1c14]               ; FF 36 14 1C
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCOMMERROR           ; 9A D2 41 00 00 [FIXUP]
        push    word ptr [0x1c14]               ; FF 36 14 1C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.FLUSHCOMM              ; 9A B1 41 00 00 [FIXUP]
        push    word ptr [0x1c14]               ; FF 36 14 1C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.FLUSHCOMM              ; 9A DE 41 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_41EF                          ; 75 34
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    L_4181                          ; E8 BC FF
        add     sp, 4                           ; 83 C4 04
        push    word ptr [0x1c14]               ; FF 36 14 1C
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCOMMERROR           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1c14]               ; FF 36 14 1C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.FLUSHCOMM              ; 9A EB 41 00 00 [FIXUP]
        push    word ptr [0x1c14]               ; FF 36 14 1C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.FLUSHCOMM              ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_41EF
L_41EF:
        cmp     word ptr [bp + 4], 0x80         ; 81 7E 04 80 00
        jne     L_4214                          ; 75 1E
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        push    ax                              ; 50
        call    L_3FD4                          ; E8 CF FD
        add     sp, 6                           ; 83 C4 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_4229                          ; EB 15
;   [conditional branch target (if/else)] L_4214
L_4214:
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        mov     ax, word ptr [si + 0x428]       ; 8B 84 28 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [si + 0x42a]       ; 8B 84 2A 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [unconditional branch target] L_4229
L_4229:
        push    word ptr [0x1c14]               ; FF 36 14 1C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.WRITECOMM              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jne     L_42B3                          ; 75 6E
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 0x16]            ; FF 77 16
        call    L_4156                          ; E8 07 FF
        mov     ax, 0xfa                        ; B8 FA 00
        push    ax                              ; 50
        call    L_3F0A                          ; E8 B4 FC
        cmp     word ptr [bp + 4], 0x80         ; 81 7E 04 80 00
        je      L_4263                          ; 74 06
        cmp     word ptr [bp + 4], 5            ; 83 7E 04 05
        jne     L_426A                          ; 75 07
;   [conditional branch target (if/else)] L_4263
L_4263:
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ax                              ; 50
        call    L_3F0A                          ; E8 A0 FC
;   [conditional branch target (if/else)] L_426A
L_426A:
        push    word ptr [0x1c14]               ; FF 36 14 1C
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ss                              ; 16
        push    ax                              ; 50
        cmp     word ptr [bp - 0x12], 0x50      ; 83 7E EE 50
        jge     L_427E                          ; 7D 05
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        jmp     L_4281                          ; EB 03
;   [conditional branch target (if/else)] L_427E
L_427E:
        mov     ax, 0x50                        ; B8 50 00
;   [unconditional branch target] L_4281
L_4281:
        push    ax                              ; 50
        call    far USER.READCOMM               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jne     L_42B3                          ; 75 21
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
;   [loop start] L_4298
L_4298:
        dec     word ptr [bp - 0x14]            ; FF 4E EC
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jl      L_42B8                          ; 7C 17
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr [si]               ; 8A 04
        cmp     byte ptr [bx], al               ; 38 07
        je      L_4298                          ; 74 E5
;   [conditional branch target (if/else)] L_42B3
L_42B3:
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [error/early exit] L_42B8
L_42B8:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 7            ; C7 46 FC 07 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        or      ax, ax                          ; 0B C0
        je      L_42FA                          ; 74 21
        cmp     ax, 1                           ; 3D 01 00
        je      L_4319                          ; 74 3B
        cmp     ax, 2                           ; 3D 02 00
        je      L_433C                          ; 74 59
        cmp     ax, 3                           ; 3D 03 00
        je      L_4360                          ; 74 78
        cmp     ax, 4                           ; 3D 04 00
        jne     L_42F0                          ; 75 03
        jmp     L_43A2                          ; E9 B2 00
;   [conditional branch target (if/else)] L_42F0
L_42F0:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_42F8                          ; 75 03
        jmp     L_43C3                          ; E9 CB 00
;   [conditional branch target (if/else)] L_42F8
L_42F8:
        jmp     L_430B                          ; EB 11
;   [conditional branch target (if/else)] L_42FA
L_42FA:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x1878], ax           ; A3 78 18
        mov     word ptr [bp + 0xc], 1          ; C7 46 0C 01 00
        mov     word ptr [0x187a], 0            ; C7 06 7A 18 00 00
;   [loop start (also forward branch)] L_430B
L_430B:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        jmp     L_43E5                          ; E9 CC 00
;   [conditional branch target (if/else)] L_4319
L_4319:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [0x1878]           ; 2B 06 78 18
        cmp     ax, 0x3e8                       ; 3D E8 03
        jl      L_430B                          ; 7C E6
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_4181                          ; E8 53 FE
        add     sp, 4                           ; 83 C4 04
        or      ax, ax                          ; 0B C0
        je      L_4352                          ; 74 1D
        mov     word ptr [bp + 0xc], 2          ; C7 46 0C 02 00
        jmp     L_430B                          ; EB CF
;   [conditional branch target (if/else)] L_433C
L_433C:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [0x1878]           ; 2B 06 78 18
        cmp     ax, 0x9c4                       ; 3D C4 09
        jl      L_430B                          ; 7C C3
        call    L_3F6F                          ; E8 24 FC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_4359                          ; 74 07
;   [conditional branch target (if/else)] L_4352
L_4352:
        mov     word ptr [bp + 0xc], 5          ; C7 46 0C 05 00
        jmp     L_430B                          ; EB B2
;   [conditional branch target (if/else)] L_4359
L_4359:
        mov     word ptr [bp + 0xc], 3          ; C7 46 0C 03 00
        jmp     L_430B                          ; EB AB
;   [conditional branch target (if/else)] L_4360
L_4360:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        cmp     byte ptr [bx + 0x26], 0         ; 80 7F 26 00
        jne     L_4371                          ; 75 08
        mov     word ptr [0x1876], 4            ; C7 06 76 18 04 00
        jmp     L_4377                          ; EB 06
;   [conditional branch target (if/else)] L_4371
L_4371:
        mov     word ptr [0x1876], 0x80         ; C7 06 76 18 80 00
;   [unconditional branch target] L_4377
L_4377:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x1876]               ; FF 36 76 18
        call    L_4181                          ; E8 00 FE
        add     sp, 4                           ; 83 C4 04
        or      ax, ax                          ; 0B C0
        jne     L_4395                          ; 75 0D
        mov     word ptr [bp - 4], 4            ; C7 46 FC 04 00
;   [loop start] L_438D
L_438D:
        mov     word ptr [bp + 0xc], 0          ; C7 46 0C 00 00
        jmp     L_430B                          ; E9 76 FF
;   [conditional branch target (if/else)] L_4395
L_4395:
        mov     word ptr [bp - 4], 7            ; C7 46 FC 07 00
        mov     word ptr [bp + 0xc], 4          ; C7 46 0C 04 00
        jmp     L_430B                          ; E9 69 FF
;   [unconditional branch target] L_43A2
L_43A2:
        call    L_3F6F                          ; E8 CA FB
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_43B8                          ; 75 0C
        cmp     word ptr [0x1876], 4            ; 83 3E 76 18 04
        jne     L_43B8                          ; 75 05
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [conditional branch target (if/else)] L_43B8
L_43B8:
        cmp     word ptr [bp - 4], 7            ; 83 7E FC 07
        jne     L_43C1                          ; 75 03
        jmp     L_430B                          ; E9 4A FF
;   [conditional branch target (if/else)] L_43C1
L_43C1:
        jmp     L_438D                          ; EB CA
;   [unconditional branch target] L_43C3
L_43C3:
        cmp     word ptr [0x187a], 0            ; 83 3E 7A 18 00
        jne     L_43DE                          ; 75 14
        mov     word ptr [0x187a], 1            ; C7 06 7A 18 01 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x1878], ax           ; A3 78 18
        mov     word ptr [bp + 0xc], 1          ; C7 46 0C 01 00
        jmp     L_430B                          ; E9 2D FF
;   [conditional branch target (if/else)] L_43DE
L_43DE:
        mov     word ptr [bp - 4], 5            ; C7 46 FC 05 00
        jmp     L_438D                          ; EB A8
;   [unconditional branch target] L_43E5
L_43E5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x2]   HCURSOR   (1 use)

; Description (heuristic):
;   Mixed routine using: FLUSHCOMM, GETTICKCOUNT, GETTIMERRESOLUTION (+2 more).

;-------------------------------------------------------------------------
; sub_43F0   offset=0x43F0  size=134 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   FLUSHCOMM
;   GETTICKCOUNT
;   GETTIMERRESOLUTION
;   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
;   SETCURSOR
;
; Near calls (internal): L_3F0A, L_3F6F, L_4181, L_43F0
;-------------------------------------------------------------------------
;   [sub-routine] L_43F0
L_43F0:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hInstance
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszCursor (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszCursor (low/offset)
        ; --> LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
        call    far USER.LOADCURSOR             ; 9A D8 09 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_4414                          ; 74 09
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 60 44 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_4414
L_4414:
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        call    L_3F0A                          ; E8 EF FA
        push    word ptr [0x1c14]               ; FF 36 14 1C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.FLUSHCOMM              ; 9A A4 41 00 00 [FIXUP]
        mov     ax, 0x5dc                       ; B8 DC 05
        push    ax                              ; 50
        call    L_3F0A                          ; E8 DC FA
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_4181                          ; E8 49 FD
        add     sp, 4                           ; 83 C4 04
        mov     ax, 0x7d0                       ; B8 D0 07
        push    ax                              ; 50
        call    L_3F0A                          ; E8 C8 FA
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_4181                          ; E8 35 FD
        add     sp, 4                           ; 83 C4 04
        mov     ax, 0xc8                        ; B8 C8 00
        push    ax                              ; 50
        call    L_3F0A                          ; E8 B4 FA
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_4464                          ; 74 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_4464
L_4464:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1c                        ; 83 EC 1C
        mov     word ptr [bp - 0x14], 0xc6c0    ; C7 46 EC C0 C6
        mov     word ptr [bp - 0x12], 0x2d      ; C7 46 EE 2D 00
        mov     word ptr [bp - 0x18], 0x4240    ; C7 46 E8 40 42
        mov     word ptr [bp - 0x16], 0xf       ; C7 46 EA 0F 00
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_4181                          ; E8 EE FC
        add     sp, 4                           ; 83 C4 04
        call    far USER.GETTIMERRESOLUTION     ; 9A 11 3F 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        call    far USER.GETTICKCOUNT           ; 9A DD 44 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far _entry_54                   ; 9A D1 44 00 00 [FIXUP]
        cdq                                     ; 99
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far _entry_54                   ; 9A 2F 45 00 00 [FIXUP]
        cdq                                     ; 99
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
;   [loop start] L_44DC
L_44DC:
        call    far USER.GETTICKCOUNT           ; 9A 01 45 00 00 [FIXUP]
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        sbb     dx, word ptr [bp - 0x1a]        ; 1B 56 E6
        cmp     dx, word ptr [bp - 6]           ; 3B 56 FA
        ja      L_453C                          ; 77 50
        jb      L_44F3                          ; 72 05
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jae     L_453C                          ; 73 49
;   [conditional branch target (if/else)] L_44F3
L_44F3:
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_4181                          ; E8 84 FC
        add     sp, 4                           ; 83 C4 04
;   [loop start] L_4500
L_4500:
        call    far USER.GETTICKCOUNT           ; 9A 1C 3F 00 00 [FIXUP]
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        sbb     dx, word ptr [bp - 0x1a]        ; 1B 56 E6
        cmp     dx, word ptr [bp - 0xa]         ; 3B 56 F6
        ja      L_4522                          ; 77 12
        jb      L_4517                          ; 72 05
        cmp     ax, word ptr [bp - 0xc]         ; 3B 46 F4
        jae     L_4522                          ; 73 0B
;   [conditional branch target (if/else)] L_4517
L_4517:
        call    L_3F6F                          ; E8 55 FA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 7                           ; 3D 07 00
        je      L_4500                          ; 74 DE
;   [conditional branch target (if/else)] L_4522
L_4522:
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far _entry_54                   ; 9A 40 3F 00 00 [FIXUP]
        cdq                                     ; 99
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        adc     word ptr [bp - 0xa], dx         ; 11 56 F6
        jmp     L_44DC                          ; EB A0
;   [conditional branch target (if/else)] L_453C
L_453C:
        cmp     word ptr [bp - 4], 1            ; 83 7E FC 01
        jne     L_454B                          ; 75 09
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_43F0                          ; E8 A8 FE
        add     sp, 2                           ; 83 C4 02
;   [conditional branch target (if/else)] L_454B
L_454B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (39 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_4556   offset=0x4556  size=39 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_4556
L_4556:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        jmp     L_459E                          ; EB 3C
;   [loop start] L_4562
L_4562:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
;   [loop start] L_4573
L_4573:
        cmp     word ptr [bp - 8], 8            ; 83 7E F8 08
        jae     L_459E                          ; 73 25
        mov     di, si                          ; 8B FE
        and     di, 1                           ; 81 E7 01 00
        ; constant WM_PAINT
        mov     cl, 0xf                         ; B1 0F
        shl     di, cl                          ; D3 E7
        mov     ax, si                          ; 8B C6
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        or      ax, di                          ; 0B C7
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        and     ax, 1                           ; 25 01 00
        xor     si, ax                          ; 33 F0
        shr     word ptr [bp - 6], 1            ; D1 6E FA
        inc     word ptr [bp - 8]               ; FF 46 F8
        jmp     L_4573                          ; EB D5
;   [branch target] L_459E
L_459E:
        dec     word ptr [bp + 4]               ; FF 4E 04
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jge     L_4562                          ; 7D BB
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (42 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_45B1   offset=0x45B1  size=42 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_601D, L_603D
;-------------------------------------------------------------------------
;   [sub-routine] L_45B1
L_45B1:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        mov     ax, 0x32c                       ; B8 2C 03
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        push    ax                              ; 50
        call    L_601D                          ; E8 50 1A
        or      ax, ax                          ; 0B C0
        jne     L_45D6                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_45D8                          ; EB 02
;   [conditional branch target (if/else)] L_45D6
L_45D6:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_45D8
L_45D8:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_45F6                          ; 74 17
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_45F6                          ; 74 11
        mov     ax, 0x32c                       ; B8 2C 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x266                       ; B8 66 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        push    ax                              ; 50
        call    L_603D                          ; E8 47 1A
;   [conditional branch target (if/else)] L_45F6
L_45F6:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (41 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_4604   offset=0x4604  size=41 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_2460, L_263D, L_4950, L_5ABE, L_61EF
;-------------------------------------------------------------------------
;   [sub-routine] L_4604
L_4604:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        je      L_461F                          ; 74 0A
        push    word ptr [0x1c14]               ; FF 36 14 1C
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_4950                          ; E8 31 03
;   [conditional branch target (if/else)] L_461F
L_461F:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_4645                          ; 74 20
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 0xe], 0          ; 83 7F 0E 00
        jne     L_4635                          ; 75 07
        cmp     word ptr [0x1cbc], 0            ; 83 3E BC 1C 00
        jne     L_463B                          ; 75 06
;   [conditional branch target (if/else)] L_4635
L_4635:
        push    word ptr [0x2058]               ; FF 36 58 20
        jmp     L_463F                          ; EB 04
;   [conditional branch target (if/else)] L_463B
L_463B:
        push    word ptr [0x1cbc]               ; FF 36 BC 1C
;   [unconditional branch target] L_463F
L_463F:
        call    L_2460                          ; E8 1E DE
        call    L_263D                          ; E8 F8 DF
;   [conditional branch target (if/else)] L_4645
L_4645:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 0xc4]            ; FF B7 C4 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_61EF                          ; E8 9E 1B
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 0x14]            ; FF 77 14
        call    L_5ABE                          ; E8 64 14
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x88]   HFILE     (2 uses)

; Description (heuristic):
;   File I/O routine (2 file APIs).
;   Writes to file handle.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_466B   offset=0x466B  size=60 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   _LWRITE(HFILE hFile, LPCVOID lpBuffer, WORD wBytes) -> WORD
;
; Near calls (internal): L_4556, L_45B1
;-------------------------------------------------------------------------
;   [sub-routine] L_466B
L_466B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x8a                        ; 81 EC 8A 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 8                           ; 05 08 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 8D 47 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x1000                      ; B8 00 10
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A A1 47 00 00 [FIXUP]
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        or      ax, ax                          ; 0B C0
        jl      L_4716                          ; 7C 69
        mov     word ptr [0x266], 0             ; C7 06 66 02 00 00
        mov     ax, 0x32a                       ; B8 2A 03
        sub     ax, 0x266                       ; 2D 66 02
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        call    L_4556                          ; E8 8E FE
        mov     word ptr [0x266], ax            ; A3 66 02
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        ;   ^ arg hFile
        mov     ax, 0x266                       ; B8 66 02
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0xc6                        ; B8 C6 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> _LWRITE(HFILE hFile, LPCVOID lpBuffer, WORD wBytes) -> WORD
        call    far KERNEL._LWRITE              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0xc6                        ; 3D C6 00
        je      L_46E7                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_46E9                          ; EB 02
;   [conditional branch target (if/else)] L_46E7
L_46E7:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_46E9
L_46E9:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_46FB                          ; 75 0B
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_45B1                          ; E8 B8 FE
        jmp     L_470B                          ; EB 10
; Description (heuristic):
;   Thin wrapper around _LCLOSE(hFile) -> HFILE.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_46FB   offset=0x46FB  size=11 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   _LCLOSE(HFILE hFile) -> HFILE
;
; Near calls (internal): L_3452
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_46FB
L_46FB:
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 47 ED
;   [unconditional branch target] L_470B
L_470B:
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        ;   ^ arg hFile
        ; --> _LCLOSE(HFILE hFile) -> HFILE
        call    far KERNEL._LCLOSE              ; 9A 1A 48 00 00 [FIXUP]
        jmp     L_472C                          ; EB 16
; Description (heuristic):
;   Pure computation / dispatcher (26 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_4716   offset=0x4716  size=26 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_3452
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_4716
L_4716:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 2B ED
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [unconditional branch target] L_472C
L_472C:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_4737                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4739                          ; EB 02
;   [conditional branch target (if/else)] L_4737
L_4737:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_4739
L_4739:
        mov     word ptr [0x186], ax            ; A3 86 01
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_4747                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4749                          ; EB 02
;   [conditional branch target (if/else)] L_4747
L_4747:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_4749
L_4749:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0xa]   WORD      (1 use)
;     [bp-0x90]   WORD      (1 use)
;     [bp-0x92]   HFILE     (2 uses)

; Description (heuristic):
;   File I/O routine (3 file APIs).
;   Reads from file handle.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_4754   offset=0x4754  size=78 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   _LCLOSE(HFILE hFile) -> HFILE
;   _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
;
; Near calls (internal): L_3452, L_4556, L_603D
;-------------------------------------------------------------------------
;   [sub-routine] L_4754
L_4754:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x158                       ; 81 EC 58 01
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, word ptr [0x274]            ; A1 74 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x90], 2         ; C7 86 70 FF 02 00
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 8                           ; 05 08 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A DD 39 00 00 [FIXUP]
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ss                              ; 16
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        push    word ptr [bp - 0x90]            ; FF B6 70 FF
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A B0 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x92], ax        ; 89 86 6E FF
        or      ax, ax                          ; 0B C0
        jl      L_4820                          ; 7C 73
        lea     ax, [bp - 0x158]                ; 8D 86 A8 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1a0                       ; B8 A0 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        push    ax                              ; 50
        call    L_603D                          ; E8 7E 18
        mov     word ptr [bp - 0xc], 0xc4       ; C7 46 F4 C4 00
        push    word ptr [bp - 0x92]            ; FF B6 6E FF
        ;   ^ arg hFile
        lea     ax, [bp - 0x158]                ; 8D 86 A8 FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0xc6                        ; B8 C6 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
        call    far KERNEL._LREAD               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_47FF                          ; 7C 1D
        mov     ax, word ptr [bp - 0x158]       ; 8B 86 A8 FE
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0x158], 0        ; C7 86 A8 FE 00 00
        lea     ax, [bp - 0x158]                ; 8D 86 A8 FE
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_4556                          ; E8 5C FD
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        je      L_4815                          ; 74 16
;   [conditional branch target (if/else)] L_47FF
L_47FF:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 42 EC
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
;   [conditional branch target (if/else)] L_4815
L_4815:
        push    word ptr [bp - 0x92]            ; FF B6 6E FF
        ;   ^ arg hFile
        ; --> _LCLOSE(HFILE hFile) -> HFILE
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_4836                          ; EB 16
; Description (heuristic):
;   Pure computation / dispatcher (56 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_4820   offset=0x4820  size=56 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_3452, L_397F, L_45B1, L_4604, L_603D
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_4820
L_4820:
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 21 EC
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
;   [unconditional branch target] L_4836
L_4836:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_4886                          ; 75 4A
        mov     ax, 0x266                       ; B8 66 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x158]                ; 8D 86 A8 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        push    ax                              ; 50
        call    L_603D                          ; E8 EF 17
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_45B1                          ; E8 5A FD
        push    word ptr [0x2070]               ; FF 36 70 20
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        mov     ax, word ptr [0x274]            ; A1 74 02
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_486C                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_486E                          ; EB 02
;   [conditional branch target (if/else)] L_486C
L_486C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_486E
L_486E:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_4604                          ; E8 90 FD
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_397F                          ; E8 FF F0
        mov     word ptr [0x186], 1             ; C7 06 86 01 01 00
;   [conditional branch target (if/else)] L_4886
L_4886:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_4891                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4893                          ; EB 02
;   [conditional branch target (if/else)] L_4891
L_4891:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_4893
L_4893:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Internal helper (17 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_489E   offset=0x489E  size=17 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_489E
L_489E:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        add     al, 0x31                        ; 04 31
        mov     byte ptr [0x19d], al            ; A2 9D 01
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_48FF                          ; 75 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0xfff4                      ; 3D F4 FF
        je      L_48C9                          ; 74 12
        cmp     ax, 0xfffc                      ; 3D FC FF
        je      L_48E7                          ; 74 2B
        cmp     ax, 0xfffe                      ; 3D FE FF
        je      L_48F3                          ; 74 32
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x13                        ; B8 13 00
        jmp     L_48F9                          ; EB 30
; Description (heuristic):
;   Internal helper (13 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_48C9   offset=0x48C9  size=13 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Near calls (internal): L_3452
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_48C9
L_48C9:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        cmp     word ptr [0x26a], 0             ; 83 3E 6A 02 00
        je      L_48DC                          ; 74 05
        mov     ax, 0x22                        ; B8 22 00
        jmp     L_48DF                          ; EB 03
;   [conditional branch target (if/else)] L_48DC
L_48DC:
        mov     ax, 0x21                        ; B8 21 00
;   [loop start (also forward branch)] L_48DF
L_48DF:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 6D EB
        jmp     L_48FF                          ; EB 18
; Description (heuristic):
;   Internal helper (5 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_48E7   offset=0x48E7  size=5 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_48E7
L_48E7:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0x1b26                      ; B8 26 1B
        jmp     L_48DF                          ; EB EC
; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_48F3   offset=0x48F3  size=8 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_48F3
L_48F3:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x1c                        ; B8 1C 00
;   [unconditional branch target] L_48F9
L_48F9:
        push    ax                              ; 50
        mov     ax, 0x19a                       ; B8 9A 01
        jmp     L_48DF                          ; EB E0
;   [error/early exit] L_48FF
L_48FF:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around OPENCOMM.

;-------------------------------------------------------------------------
; sub_4903   offset=0x4903  size=25 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   OPENCOMM
;
; Near calls (internal): L_4950
;-------------------------------------------------------------------------
;   [sub-routine] L_4903
L_4903:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     al, byte ptr [bx + 0x18]        ; 8A 47 18
        add     al, 0x31                        ; 04 31
        mov     byte ptr [0x19d], al            ; A2 9D 01
        mov     ax, 0x19a                       ; B8 9A 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.OPENCOMM               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jl      L_4934                          ; 7C 07
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_4950                          ; E8 1C 00
;   [error/early exit] L_4934
L_4934:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around CLOSECOMM.

;-------------------------------------------------------------------------
; sub_493B   offset=0x493B  size=9 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   CLOSECOMM
;-------------------------------------------------------------------------
;   [sub-routine] L_493B
L_493B:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jl      L_494C                          ; 7C 08
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.CLOSECOMM              ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_494C
L_494C:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: GETCOMMSTATE, SETCOMMSTATE.

;-------------------------------------------------------------------------
; sub_4950   offset=0x4950  size=55 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETCOMMSTATE
;   SETCOMMSTATE
;-------------------------------------------------------------------------
;   [sub-routine] L_4950
L_4950:
        ;   = cProc <26> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_495F                          ; 7D 03
        jmp     L_49EC                          ; E9 8D 00
;   [conditional branch target (if/else)] L_495F
L_495F:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCOMMSTATE           ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_49EC                          ; 7C 7C
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx + 0x16]        ; 8B 47 16
        mov     word ptr [bp - 0x19], ax        ; 89 46 E7
        mov     al, byte ptr [bx + 0x1a]        ; 8A 47 1A
        mov     byte ptr [bp - 0x17], al        ; 88 46 E9
        mov     al, byte ptr [bx + 0x1c]        ; 8A 47 1C
        mov     byte ptr [bp - 0x15], al        ; 88 46 EB
        mov     al, byte ptr [bx + 0x1e]        ; 8A 47 1E
        mov     byte ptr [bp - 0x16], al        ; 88 46 EA
        mov     word ptr [bp - 0xa], 0x1e       ; C7 46 F6 1E 00
        mov     word ptr [bp - 8], 0x201        ; C7 46 F8 01 02
        or      byte ptr [bp - 0xd], 8          ; 80 4E F3 08
        mov     ax, word ptr [bx + 0x20]        ; 8B 47 20
        or      ax, ax                          ; 0B C0
        je      L_49AC                          ; 74 0C
        cmp     ax, 1                           ; 3D 01 00
        je      L_49C6                          ; 74 21
        cmp     ax, 2                           ; 3D 02 00
        je      L_49D8                          ; 74 2E
        jmp     L_49E2                          ; EB 36
;   [conditional branch target (if/else)] L_49AC
L_49AC:
        mov     byte ptr [bp - 0xc], 0x11       ; C6 46 F4 11
        mov     byte ptr [bp - 0xb], 0x13       ; C6 46 F5 13
        or      byte ptr [bp - 0xd], 1          ; 80 4E F3 01
        or      byte ptr [bp - 0xd], 2          ; 80 4E F3 02
        and     byte ptr [bp - 0xd], 0xbf       ; 80 66 F3 BF
        and     byte ptr [bp - 0xd], 0xdf       ; 80 66 F3 DF
        jmp     L_49E2                          ; EB 1C
;   [conditional branch target (if/else)] L_49C6
L_49C6:
        or      byte ptr [bp - 0xd], 0x40       ; 80 4E F3 40
        or      byte ptr [bp - 0xd], 0x20       ; 80 4E F3 20
;   [loop start] L_49CE
L_49CE:
        and     byte ptr [bp - 0xd], 0xfe       ; 80 66 F3 FE
        and     byte ptr [bp - 0xd], 0xfd       ; 80 66 F3 FD
        jmp     L_49E2                          ; EB 0A
;   [conditional branch target (if/else)] L_49D8
L_49D8:
        and     byte ptr [bp - 0xd], 0xbf       ; 80 66 F3 BF
        and     byte ptr [bp - 0xd], 0xdf       ; 80 66 F3 DF
        jmp     L_49CE                          ; EB EC
;   [unconditional branch target] L_49E2
L_49E2:
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETCOMMSTATE           ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_49EC
L_49EC:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_49F2   offset=0x49F2  size=19 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_49F2
L_49F2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_59                   ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Mixed routine using: GETCOMMERROR, GETTICKCOUNT, GETTIMERRESOLUTION (+1 more).

;-------------------------------------------------------------------------
; sub_4A18   offset=0x4A18  size=156 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   GETCOMMERROR
;   GETTICKCOUNT
;   GETTIMERRESOLUTION
;   WRITECOMM
;
; Near calls (internal): L_3452, L_49F2
;-------------------------------------------------------------------------
;   [sub-routine] L_4A18
L_4A18:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        jne     L_4A34                          ; 75 03
        jmp     L_4AD8                          ; E9 A4 00
;   [conditional branch target (if/else)] L_4A34
L_4A34:
        cmp     word ptr [0x1c14], 0            ; 83 3E 14 1C 00
        jge     L_4A3E                          ; 7D 03
        jmp     L_4AD8                          ; E9 9A 00
;   [conditional branch target (if/else)] L_4A3E
L_4A3E:
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        push    word ptr [0x1c14]               ; FF 36 14 1C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.WRITECOMM              ; 9A 36 42 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        je      L_4AAF                          ; 74 4F
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jge     L_4A6E                          ; 7D 08
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [conditional branch target (if/else)] L_4A6E
L_4A6E:
        push    word ptr [0x1c14]               ; FF 36 14 1C
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCOMMERROR           ; 9A 77 4B 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_4A97                          ; 75 13
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [0x1c14]               ; FF 36 14 1C
        call    far _entry_58                   ; 9A 69 4B 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_4AAF                          ; EB 18
;   [conditional branch target (if/else)] L_4A97
L_4A97:
        mov     al, byte ptr [0x27e]            ; A0 7E 02
        add     al, 0x31                        ; 04 31
        mov     byte ptr [0x19d], al            ; A2 9D 01
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        mov     ax, 0x19a                       ; B8 9A 01
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 A3 E9
;   [branch target] L_4AAF
L_4AAF:
        cmp     word ptr [0x26e], 0             ; 83 3E 6E 02 00
        je      L_4ACD                          ; 74 17
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jle     L_4ACD                          ; 7E 11
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xa]             ; FF 76 F6
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_49F2                          ; E8 25 FF
;   [conditional branch target (if/else)] L_4ACD
L_4ACD:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_4AD8                          ; 74 05
        mov     word ptr [bp - 0xa], 0xffff     ; C7 46 F6 FF FF
;   [branch target] L_4AD8
L_4AD8:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        jne     L_4B02                          ; 75 03
        jmp     L_4BA8                          ; E9 A6 00
;   [conditional branch target (if/else)] L_4B02
L_4B02:
        cmp     word ptr [0x1c14], 0            ; 83 3E 14 1C 00
        jge     L_4B0C                          ; 7D 03
        jmp     L_4BA8                          ; E9 9C 00
;   [conditional branch target (if/else)] L_4B0C
L_4B0C:
        call    far USER.GETTIMERRESOLUTION     ; 9A 97 44 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        call    far USER.GETTICKCOUNT           ; 9A 4A 4B 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x4240                      ; B8 40 42
        ; constant WM_PAINT
        mov     dx, 0xf                         ; BA 0F 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_55                   ; 9A 33 3F 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far _entry_54                   ; 9A B9 44 00 00 [FIXUP]
        cdq                                     ; 99
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
;   [loop start] L_4B49
L_4B49:
        call    far USER.GETTICKCOUNT           ; 9A A2 44 00 00 [FIXUP]
        sub     ax, word ptr [bp - 0x16]        ; 2B 46 EA
        sbb     dx, word ptr [bp - 0x14]        ; 1B 56 EC
        cmp     dx, word ptr [bp - 0x10]        ; 3B 56 F0
        ja      L_4B8F                          ; 77 36
        jb      L_4B60                          ; 72 05
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        jae     L_4B8F                          ; 73 2F
;   [conditional branch target (if/else)] L_4B60
L_4B60:
        push    word ptr [0x2070]               ; FF 36 70 20
        push    word ptr [0x1c14]               ; FF 36 14 1C
        call    far _entry_58                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1c14]               ; FF 36 14 1C
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCOMMERROR           ; 9A 98 41 00 00 [FIXUP]
        mov     ax, 0x100                       ; B8 00 01
        sub     ax, word ptr [bp - 7]           ; 2B 46 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jg      L_4BA8                          ; 7F 20
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_4B49                          ; EB BA
;   [conditional branch target (if/else)] L_4B8F
L_4B8F:
        mov     al, byte ptr [0x27e]            ; A0 7E 02
        add     al, 0x31                        ; 04 31
        mov     byte ptr [0x19d], al            ; A2 9D 01
        push    word ptr [0x2070]               ; FF 36 70 20
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        mov     ax, 0x19a                       ; B8 9A 01
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 AA E8
;   [branch target] L_4BA8
L_4BA8:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Small helper using 2 API(s): CLEARCOMMBREAK, SETCOMMBREAK.

;-------------------------------------------------------------------------
; sub_4BB4   offset=0x4BB4  size=16 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   CLEARCOMMBREAK
;   SETCOMMBREAK
;
; Near calls (internal): L_3F0A
;-------------------------------------------------------------------------
;   [sub-routine] L_4BB4
L_4BB4:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        je      L_4BDE                          ; 74 20
        cmp     word ptr [0x1c14], 0            ; 83 3E 14 1C 00
        jl      L_4BDE                          ; 7C 19
        push    word ptr [0x1c14]               ; FF 36 14 1C
        call    far USER.SETCOMMBREAK           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ax                              ; 50
        call    L_3F0A                          ; E8 35 F3
        push    word ptr [0x1c14]               ; FF 36 14 1C
        call    far USER.CLEARCOMMBREAK         ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_4BDE
L_4BDE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: GETMENU.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_4BE2   offset=0x4BE2  size=89 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETMENU
;
; Near calls (internal): L_3452, L_489E, L_4903, L_493B
;-------------------------------------------------------------------------
;   [sub-routine] L_4BE2
L_4BE2:
        ;   = cProc <16> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETMENU                ; 9A 94 3C 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_4C01                          ; 75 03
        jmp     L_4CFF                          ; E9 FE 00
;   [conditional branch target (if/else)] L_4C01
L_4C01:
        cmp     word ptr [0x26a], 0             ; 83 3E 6A 02 00
        je      L_4C2A                          ; 74 22
        cmp     byte ptr [0x28c], 0             ; 80 3E 8C 02 00
        jne     L_4C2A                          ; 75 1B
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 6E 4C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_4C25                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4C27                          ; EB 02
;   [conditional branch target (if/else)] L_4C25
L_4C25:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_4C27
L_4C27:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
;   [conditional branch target (if/else)] L_4C2A
L_4C2A:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_4C33                          ; 74 03
        jmp     L_4CC2                          ; E9 8F 00
;   [conditional branch target (if/else)] L_4C33
L_4C33:
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        call    L_4903                          ; E8 C9 FC
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [0x1c14], ax           ; A3 14 1C
        or      ax, ax                          ; 0B C0
        jge     L_4C57                          ; 7D 13
        push    word ptr [0x27e]                ; FF 36 7E 02
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_489E                          ; E8 4C FC
        add     sp, 8                           ; 83 C4 08
        jmp     L_4CBD                          ; EB 66
;   [conditional branch target (if/else)] L_4C57
L_4C57:
        cmp     word ptr [0x26a], 0             ; 83 3E 6A 02 00
        je      L_4CC2                          ; 74 64
        cmp     byte ptr [0x28c], 0             ; 80 3E 8C 02 00
        je      L_4CC2                          ; 74 5D
;   [loop start] L_4C65
L_4C65:
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 68 0E 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, 7                           ; 3D 07 00
        jne     L_4C8E                          ; 75 14
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 C9 E7
        cmp     ax, 2                           ; 3D 02 00
        jne     L_4C65                          ; 75 D7
;   [conditional branch target (if/else)] L_4C8E
L_4C8E:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        or      ax, ax                          ; 0B C0
        jl      L_4CA4                          ; 7C 0F
        cmp     ax, 1                           ; 3D 01 00
        jle     L_4CC2                          ; 7E 28
        cmp     ax, 6                           ; 3D 06 00
        jl      L_4CA4                          ; 7C 05
        cmp     ax, 7                           ; 3D 07 00
        jle     L_4CB3                          ; 7E 0F
;   [conditional branch target (if/else)] L_4CA4
L_4CA4:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3452                          ; E8 9F E7
;   [conditional branch target (if/else)] L_4CB3
L_4CB3:
        push    word ptr [0x1c14]               ; FF 36 14 1C
        call    L_493B                          ; E8 81 FC
        add     sp, 2                           ; 83 C4 02
;   [loop start (also forward branch)] L_4CBD
L_4CBD:
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
;   [loop start (also forward branch)] L_4CC2
L_4CC2:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_4CCB                          ; 74 03
        jmp     L_4D8B                          ; E9 C0 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  WORD      (2 uses)
;   Locals:
;     [bp-0xc]   HMENU     (2 uses)

; Description (heuristic):
;   Menu manipulation routine (2 menu APIs).

;-------------------------------------------------------------------------
; sub_4CCB   offset=0x4CCB  size=132 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   GETDC(HWND hWnd) -> HDC
;   READCOMM
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_2FE5, L_43F0, L_493B
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_4CCB
L_4CCB:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hMenu
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A E5 4C 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hMenu
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A A3 0B 00 00 [FIXUP]
        push    word ptr [0x2070]               ; FF 36 70 20
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_4CFA                          ; 74 07
        cmp     word ptr [0x18a], 0             ; 83 3E 8A 01 00
        je      L_4D34                          ; 74 3A
;   [conditional branch target (if/else)] L_4CFA
L_4CFA:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4D36                          ; EB 37
;   [unconditional branch target] L_4CFF
L_4CFF:
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 18 4C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_4CBD                          ; 74 AD
        cmp     word ptr [0x26a], 0             ; 83 3E 6A 02 00
        je      L_4D28                          ; 74 11
        cmp     byte ptr [0x28c], 0             ; 80 3E 8C 02 00
        je      L_4D28                          ; 74 0A
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        call    L_43F0                          ; E8 CB F6
        add     sp, 2                           ; 83 C4 02
;   [conditional branch target (if/else)] L_4D28
L_4D28:
        push    word ptr [0x1c14]               ; FF 36 14 1C
        call    L_493B                          ; E8 0C FC
        add     sp, 2                           ; 83 C4 02
        jmp     L_4CC2                          ; EB 8E
;   [conditional branch target (if/else)] L_4D34
L_4D34:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_4D36
L_4D36:
        push    ax                              ; 50
        call    far _entry_19                   ; 9A 5C 3B 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_4D71                          ; 74 2F
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 60 27 00 00 [FIXUP]
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 46 27 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [0x2070]               ; FF 36 70 20
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2FE5                          ; E8 80 E2
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A D3 32 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_4D71
L_4D71:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_4D83                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_4D85                          ; EB 02
;   [conditional branch target (if/else)] L_4D83
L_4D83:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_4D85
L_4D85:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 2F 3E 00 00 [FIXUP]
;   [unconditional branch target] L_4D8B
L_4D8B:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jne     L_4D96                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4D98                          ; EB 02
;   [error/early exit] L_4D96
L_4D96:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_4D98
L_4D98:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x58                        ; 83 EC 58
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        mov     word ptr [bp - 0x58], 0         ; C7 46 A8 00 00
;   [loop start] L_4DAF
L_4DAF:
        push    word ptr [0x1c14]               ; FF 36 14 1C
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.READCOMM               ; 9A E7 4D 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        or      ax, ax                          ; 0B C0
        jl      L_4E26                          ; 7C 5E
        cmp     ax, 1                           ; 3D 01 00
        jne     L_4DAF                          ; 75 E2
        cmp     byte ptr [bp - 0x54], 0xa       ; 80 7E AC 0A
        jne     L_4DAF                          ; 75 DC
;   [loop start] L_4DD3
L_4DD3:
        cmp     word ptr [bp - 0x58], 0x50      ; 83 7E A8 50
        jge     L_4E01                          ; 7D 28
        push    word ptr [0x1c14]               ; FF 36 14 1C
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.READCOMM               ; 9A 83 3F 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        or      ax, ax                          ; 0B C0
        jl      L_4E26                          ; 7C 34
        or      ax, ax                          ; 0B C0
        jle     L_4DD3                          ; 7E DD
        mov     bx, word ptr [bp - 0x52]        ; 8B 5E AE
        cmp     byte ptr [bx], 0xa              ; 80 3F 0A
        jne     L_4E19                          ; 75 1B
        mov     byte ptr [bx], 0                ; C6 07 00
;   [conditional branch target (if/else)] L_4E01
L_4E01:
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_4E26                          ; 75 12
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_4E28                          ; EB 0F
;   [conditional branch target (if/else)] L_4E19
L_4E19:
        mov     bx, word ptr [bp - 0x52]        ; 8B 5E AE
        cmp     byte ptr [bx], 0xd              ; 80 3F 0D
        je      L_4DD3                          ; 74 B2
        inc     word ptr [bp - 0x52]            ; FF 46 AE
        jmp     L_4DD3                          ; EB AD
;   [error/early exit] L_4E26
L_4E26:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_4E28
L_4E28:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (45 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_4E2E   offset=0x4E2E  size=45 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_108D, L_5658, L_56EC, L_575A
;-------------------------------------------------------------------------
;   [sub-routine] L_4E2E
L_4E2E:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_4E7D                          ; 74 43
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [loop start] L_4E44
L_4E44:
        cmp     word ptr [bp - 2], 0x18         ; 83 7E FE 18
        jg      L_4EA5                          ; 7F 5B
        call    L_575A                          ; E8 0D 09
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        or      ax, dx                          ; 0B C2
        je      L_4EA5                          ; 74 4E
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    L_108D                          ; E8 21 C2
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        push    es                              ; 06
        push    bx                              ; 53
        call    L_56EC                          ; E8 74 08
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_4E44                          ; EB C7
;   [conditional branch target (if/else)] L_4E7D
L_4E7D:
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [loop start] L_4E82
L_4E82:
        cmp     word ptr [bp - 2], 0x18         ; 83 7E FE 18
        jg      L_4EA5                          ; 7F 1D
        mov     ax, word ptr [0x452]            ; A1 52 04
        or      ax, word ptr [0x454]            ; 0B 06 54 04
        je      L_4EA5                          ; 74 14
        les     bx, ptr [0x452]                 ; C4 1E 52 04
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        call    L_5658                          ; E8 B8 07
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_4E82                          ; EB DD
;   [error/early exit] L_4EA5
L_4EA5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (23 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_4EAB   offset=0x4EAB  size=23 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_605D, L_611B
;-------------------------------------------------------------------------
;   [sub-routine] L_4EAB
L_4EAB:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        call    L_611B                          ; E8 67 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        or      ax, dx                          ; 0B C2
        je      L_4ED9                          ; 74 1B
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     word ptr es:[bx + 8], 0x50      ; 26 C7 47 08 50 00
        mov     ax, bx                          ; 8B C3
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_605D                          ; E8 84 11
;   [error/early exit] L_4ED9
L_4ED9:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (11 instructions).

;-------------------------------------------------------------------------
; sub_4EE3   offset=0x4EE3  size=11 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_6194
;-------------------------------------------------------------------------
;   [sub-routine] L_4EE3
L_4EE3:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_4EF7                          ; 74 09
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_6194                          ; E8 9D 12
;   [error/early exit] L_4EF7
L_4EF7:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Internal helper (6 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_4EFD   offset=0x4EFD  size=6 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_4EFD
L_4EFD:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [0x44c], 0             ; 83 3E 4C 04 00
        jne     L_4F0D                          ; 75 03
        jmp     L_4FB7                          ; E9 AA 00
; Description (heuristic):
;   Mixed routine using: GETSCROLLPOS, GETSCROLLRANGE, SETSCROLLPOS.

;-------------------------------------------------------------------------
; sub_4F0D   offset=0x4F0D  size=71 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   GETSCROLLPOS
;   GETSCROLLRANGE
;   SETSCROLLPOS
;
; Near calls (internal): L_59BF
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_4F0D
L_4F0D:
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETSCROLLPOS           ; 9A 98 4F 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETSCROLLRANGE         ; 9A E0 4F 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 5                           ; 3D 05 00
        ja      L_4FB7                          ; 77 7D
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x4f6c]       ; 2E FF A7 6C 4F
        dec     word ptr [bp - 2]               ; FF 4E FE
        jmp     L_4F78                          ; EB 31
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_4F78                          ; EB 2C
        mov     ax, word ptr [0x74]             ; A1 74 00
        sub     ax, word ptr [0x70]             ; 2B 06 70 00
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        jmp     L_4F78                          ; EB 20
        mov     ax, word ptr [0x74]             ; A1 74 00
        sub     ax, word ptr [0x70]             ; 2B 06 70 00
        add     word ptr [bp - 2], ax           ; 01 46 FE
        jmp     L_4F78                          ; EB 14
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_4F78                          ; EB 0C
        inc     dx                              ; 42
        dec     di                              ; 4F
        inc     di                              ; 47
        dec     di                              ; 4F
        dec     sp                              ; 4C
        dec     di                              ; 4F
        pop     ax                              ; 58
        dec     di                              ; 4F
        dec     di                              ; 64 4F
        dec     di                              ; 64 4F
;   [unconditional branch target] L_4F78
L_4F78:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_4F85                          ; 7D 07
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_4F90                          ; EB 0B
;   [conditional branch target (if/else)] L_4F85
L_4F85:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jle     L_4F90                          ; 7E 03
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [branch target] L_4F90
L_4F90:
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETSCROLLPOS           ; 9A C8 4F 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        je      L_4FB7                          ; 74 16
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 66 50 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_59BF                          ; E8 08 0A
;   [error/early exit] L_4FB7
L_4FB7:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: GETSCROLLPOS, GETSCROLLRANGE, SETSCROLLPOS.

;-------------------------------------------------------------------------
; sub_4FBB   offset=0x4FBB  size=131 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   GETSCROLLPOS
;   GETSCROLLRANGE
;   SETSCROLLPOS
;
; Near calls (internal): L_1F82, L_2ACA
;-------------------------------------------------------------------------
;   [sub-routine] L_4FBB
L_4FBB:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSCROLLPOS           ; 9A 4C 50 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETSCROLLRANGE         ; 9A 80 51 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        je      L_5007                          ; 74 1C
        cmp     ax, 1                           ; 3D 01 00
        je      L_5015                          ; 74 25
        cmp     ax, 2                           ; 3D 02 00
        je      L_501A                          ; 74 25
        cmp     ax, 3                           ; 3D 03 00
        je      L_5026                          ; 74 2C
        cmp     ax, 4                           ; 3D 04 00
        je      L_5032                          ; 74 33
        cmp     ax, 5                           ; 3D 05 00
        je      L_500A                          ; 74 06
        jmp     L_50F5                          ; E9 EE 00
;   [conditional branch target (if/else)] L_5007
L_5007:
        dec     word ptr [bp - 6]               ; FF 4E FA
;   [loop start (also forward branch)] L_500A
L_500A:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jge     L_503A                          ; 7D 2A
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_5042                          ; EB 2D
;   [conditional branch target (if/else)] L_5015
L_5015:
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_500A                          ; EB F0
;   [conditional branch target (if/else)] L_501A
L_501A:
        mov     ax, word ptr [0x72]             ; A1 72 00
        sub     ax, word ptr [0x6e]             ; 2B 06 6E 00
        sub     word ptr [bp - 6], ax           ; 29 46 FA
        jmp     L_500A                          ; EB E4
;   [conditional branch target (if/else)] L_5026
L_5026:
        mov     ax, word ptr [0x72]             ; A1 72 00
        sub     ax, word ptr [0x6e]             ; 2B 06 6E 00
        add     word ptr [bp - 6], ax           ; 01 46 FA
        jmp     L_500A                          ; EB D8
;   [conditional branch target (if/else)] L_5032
L_5032:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_500A                          ; EB D0
;   [conditional branch target (if/else)] L_503A
L_503A:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_5045                          ; 7E 03
;   [unconditional branch target] L_5042
L_5042:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_5045
L_5045:
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSCROLLPOS           ; 9A 56 51 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jne     L_5058                          ; 75 03
        jmp     L_50F5                          ; E9 9D 00
;   [conditional branch target (if/else)] L_5058
L_5058:
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x1c12], 0            ; 83 3E 12 1C 00
        je      L_507E                          ; 74 0D
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 4C DA
;   [conditional branch target (if/else)] L_507E
L_507E:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_1F82                          ; E8 FE CE
        cmp     word ptr [0x1c12], 0            ; 83 3E 12 1C 00
        je      L_5098                          ; 74 0D
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 32 DA
;   [conditional branch target (if/else)] L_5098
L_5098:
        mov     ax, word ptr [0x6e]             ; A1 6E 00
        cmp     word ptr [0x1b4e], ax           ; 39 06 4E 1B
        jl      L_50AA                          ; 7C 09
        mov     ax, word ptr [0x72]             ; A1 72 00
        cmp     word ptr [0x1b50], ax           ; 39 06 50 1B
        jl      L_50C6                          ; 7C 1C
;   [conditional branch target (if/else)] L_50AA
L_50AA:
        cmp     word ptr [0x1c12], 0            ; 83 3E 12 1C 00
        je      L_50F5                          ; 74 44
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 0C DA
        mov     word ptr [0x1c12], 0            ; C7 06 12 1C 00 00
        jmp     L_50F5                          ; EB 2F
;   [conditional branch target (if/else)] L_50C6
L_50C6:
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x1b4e]               ; FF 36 4E 1B
        mov     ax, word ptr [0x1b50]           ; A1 50 1B
        sub     ax, word ptr [0x45a]            ; 2B 06 5A 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 EF D9
        cmp     word ptr [0x1c12], 0            ; 83 3E 12 1C 00
        jne     L_50F5                          ; 75 13
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 DB D9
        mov     word ptr [0x1c12], 1            ; C7 06 12 1C 01 00
;   [error/early exit] L_50F5
L_50F5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_50F9   offset=0x50F9  size=14 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_50F9
L_50F9:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [0x1afe]           ; A1 FE 1A
        cmp     word ptr [0x1b04], ax           ; 39 06 04 1B
        jne     L_5113                          ; 75 0E
        mov     ax, word ptr [0x1afc]           ; A1 FC 1A
        cmp     word ptr [0x1b02], ax           ; 39 06 02 1B
        jne     L_5113                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_5115                          ; EB 02
;   [error/early exit] L_5113
L_5113:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_5115
L_5115:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: GETSCROLLPOS, GETSCROLLRANGE, RELEASEDC (+3 more).

;-------------------------------------------------------------------------
; sub_5119   offset=0x5119  size=305 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETSCROLLPOS
;   GETSCROLLRANGE
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETSCROLLPOS
;   SETSCROLLRANGE
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (first 8 of 14): L_1DCA, L_1F82, L_200A, L_2240, L_224D, L_238E, L_263D, L_2ACA ...
;-------------------------------------------------------------------------
;   [sub-routine] L_5119
L_5119:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [0x44c], 0             ; 83 3E 4C 04 00
        jne     L_5129                          ; 75 03
        jmp     L_522D                          ; E9 04 01
;   [conditional branch target (if/else)] L_5129
L_5129:
        cmp     word ptr [0x464], 0             ; 83 3E 64 04 00
        je      L_5133                          ; 74 03
        jmp     L_522D                          ; E9 FA 00
;   [conditional branch target (if/else)] L_5133
L_5133:
        mov     word ptr [0x464], 1             ; C7 06 64 04 01 00
        mov     ax, word ptr [0x6e]             ; A1 6E 00
        sub     ax, word ptr [0x72]             ; 2B 06 72 00
        add     ax, 0x4f                        ; 05 4F 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_514F                          ; 7D 05
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [conditional branch target (if/else)] L_514F
L_514F:
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSCROLLPOS           ; 9A FF 51 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jle     L_516F                          ; 7E 10
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_4FBB                          ; E8 4F FE
        add     sp, 6                           ; 83 C4 06
;   [conditional branch target (if/else)] L_516F
L_516F:
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETSCROLLRANGE         ; 9A CF 51 00 00 [FIXUP]
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_5192                          ; 75 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        je      L_51A5                          ; 74 13
;   [conditional branch target (if/else)] L_5192
L_5192:
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A F3 51 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_51A5
L_51A5:
        mov     ax, word ptr [0x45c]            ; A1 5C 04
        sub     ax, word ptr [0x74]             ; 2B 06 74 00
        add     ax, word ptr [0x70]             ; 03 06 70 00
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_51BD                          ; 7D 05
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [conditional branch target (if/else)] L_51BD
L_51BD:
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_51E1                          ; 75 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        je      L_51F7                          ; 74 16
;   [conditional branch target (if/else)] L_51E1
L_51E1:
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_51F7
L_51F7:
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        mov     cx, word ptr [0x70]             ; 8B 0E 70 00
        add     cx, word ptr [0x45a]            ; 03 0E 5A 04
        cmp     cx, ax                          ; 3B C8
        je      L_5227                          ; 74 18
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, word ptr [0x70]             ; A1 70 00
        add     ax, word ptr [0x45a]            ; 03 06 5A 04
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A F7 52 00 00 [FIXUP]
;   [error/early exit] L_5227
L_5227:
        mov     word ptr [0x464], 0             ; C7 06 64 04 00 00
;   [fall-through exit] L_522D
L_522D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 7D D8
        mov     word ptr [0x1b06], ax           ; A3 06 1B
        mov     word ptr [0x1b08], dx           ; 89 16 08 1B
        mov     word ptr [0x44c], 1             ; C7 06 4C 04 01 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_2240                          ; E8 E0 CF
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_5B5F                          ; E8 F8 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_238E                          ; E8 1F D1
        mov     word ptr [0x1b00], ax           ; A3 00 1B
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_4E2E                          ; E8 B5 FB
        mov     ax, word ptr [0x452]            ; A1 52 04
        mov     dx, word ptr [0x454]            ; 8B 16 54 04
        mov     word ptr [0x44e], ax            ; A3 4E 04
        mov     word ptr [0x450], dx            ; 89 16 50 04
        or      ax, dx                          ; 0B C2
        je      L_52AC                          ; 74 21
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_5290
L_5290:
        les     bx, ptr [0x44e]                 ; C4 1E 4E 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     dx, word ptr es:[bx + 6]        ; 26 8B 57 06
        mov     word ptr [0x44e], ax            ; A3 4E 04
        mov     word ptr [0x450], dx            ; 89 16 50 04
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 0x18         ; 83 7E FC 18
        jle     L_5290                          ; 7E E4
;   [conditional branch target (if/else)] L_52AC
L_52AC:
        mov     ax, word ptr [0x45c]            ; A1 5C 04
        sub     ax, 0x19                        ; 2D 19 00
        mov     word ptr [0x45a], ax            ; A3 5A 04
        or      ax, ax                          ; 0B C0
        jge     L_52BF                          ; 7D 06
        mov     word ptr [0x45a], 0             ; C7 06 5A 04 00 00
;   [conditional branch target (if/else)] L_52BF
L_52BF:
        mov     ax, word ptr [0x45a]            ; A1 5A 04
        mov     word ptr [0x460], ax            ; A3 60 04
        mov     ax, word ptr [0x70]             ; A1 70 00
        mov     word ptr [0x462], ax            ; A3 62 04
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_5119                          ; E8 48 FE
        call    L_263D                          ; E8 69 D3
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 9A 26 00 00 [FIXUP]
        push    word ptr [0x1b08]               ; FF 36 08 1B
        call    L_224D                          ; E8 6A CF
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, word ptr [0x70]             ; A1 70 00
        add     ax, word ptr [0x45a]            ; 03 06 5A 04
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A BE 53 00 00 [FIXUP]
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x1b06]               ; FF 36 06 1B
        push    word ptr [0x1b08]               ; FF 36 08 1B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 BE D7
        push    word ptr [0x1b08]               ; FF 36 08 1B
        push    word ptr [0x1b06]               ; FF 36 06 1B
        call    L_5463                          ; E8 4C 01
        mov     ax, word ptr [0x1b06]           ; A1 06 1B
        mov     word ptr [0x1b4e], ax           ; A3 4E 1B
        mov     ax, word ptr [0x1b08]           ; A1 08 1B
        add     ax, word ptr [0x45a]            ; 03 06 5A 04
        mov     word ptr [0x1b50], ax           ; A3 50 1B
        mov     word ptr [0x1c12], 1            ; C7 06 12 1C 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x1b04], ax           ; A3 04 1B
        mov     word ptr [0x1b02], ax           ; A3 02 1B
        mov     word ptr [0x1afe], ax           ; A3 FE 1A
        mov     word ptr [0x1afc], ax           ; A3 FC 1A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        call    L_200A                          ; E8 AE CC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_1DCA                          ; E8 5B CA
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 59 54 00 00 [FIXUP]
        mov     ax, word ptr [0x460]            ; A1 60 04
        sub     ax, word ptr [0x45a]            ; 2B 06 5A 04
        push    ax                              ; 50
        call    L_5828                          ; E8 A3 04
        push    word ptr [0x462]                ; FF 36 62 04
        call    L_224D                          ; E8 C1 CE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_4E2E                          ; E8 9C FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_5B5F                          ; E8 C7 07
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_2240                          ; E8 A1 CE
        mov     word ptr [0x44c], 0             ; C7 06 4C 04 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1F82                          ; E8 D7 CB
        push    word ptr [0x1b08]               ; FF 36 08 1B
        call    L_224D                          ; E8 9B CE
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A AD 4F 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A E3 53 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A A1 51 00 00 [FIXUP]
        call    L_263D                          ; E8 53 D2
        push    word ptr [0x1b00]               ; FF 36 00 1B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_238E                          ; E8 9B CF
        push    word ptr [0x1b08]               ; FF 36 08 1B
        call    L_224D                          ; E8 53 CE
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x1b06]               ; FF 36 06 1B
        push    word ptr [0x1b08]               ; FF 36 08 1B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 BF D6
        cmp     word ptr [0x1c12], 0            ; 83 3E 12 1C 00
        jne     L_541F                          ; 75 0D
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 AB D6
;   [conditional branch target (if/else)] L_541F
L_541F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x2]   HDC       (1 use)

; Description (heuristic):
;   Thin wrapper around RELEASEDC(hWnd, hDC) -> INT.

;-------------------------------------------------------------------------
; sub_542A   offset=0x542A  size=20 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_1DCA, L_200A
;-------------------------------------------------------------------------
;   [sub-routine] L_542A
L_542A:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        call    L_200A                          ; E8 D7 CB
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x45a]            ; A1 5A 04
        sub     word ptr [bp + 0xa], ax         ; 29 46 0A
        sub     word ptr [bp + 6], ax           ; 29 46 06
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1DCA                          ; E8 79 C9
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 6D 4D 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Internal helper (18 instructions).

;-------------------------------------------------------------------------
; sub_5463   offset=0x5463  size=18 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_542A
;-------------------------------------------------------------------------
;   [sub-routine] L_5463
L_5463:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [0x45a]            ; A1 5A 04
        add     word ptr [bp + 6], ax           ; 01 46 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [0x1b02], ax           ; A3 02 1B
        mov     word ptr [0x1b04], dx           ; 89 16 04 1B
        mov     word ptr [0x1afc], ax           ; A3 FC 1A
        mov     word ptr [0x1afe], dx           ; 89 16 FE 1A
        push    dx                              ; 52
        push    ax                              ; 50
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_542A                          ; E8 A3 FF
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (168 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_548D   offset=0x548D  size=168 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1BDE, L_1C22, L_542A
;-------------------------------------------------------------------------
;   [sub-routine] L_548D
L_548D:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [0x45a]            ; A1 5A 04
        add     word ptr [bp + 6], ax           ; 01 46 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [0x1afc], ax           ; A3 FC 1A
        mov     word ptr [0x1afe], dx           ; 89 16 FE 1A
        push    word ptr [0x1b04]               ; FF 36 04 1B
        push    word ptr [0x1b02]               ; FF 36 02 1B
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_542A                          ; E8 7A FF
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [0x45a]            ; A1 5A 04
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x28                        ; 83 EC 28
        push    word ptr [0x1b04]               ; FF 36 04 1B
        push    word ptr [0x1b02]               ; FF 36 02 1B
        push    word ptr [0x1afe]               ; FF 36 FE 1A
        push    word ptr [0x1afc]               ; FF 36 FC 1A
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ax                              ; 50
        call    L_1C22                          ; E8 39 C7
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        push    word ptr [0x1b04]               ; FF 36 04 1B
        push    word ptr [0x1b02]               ; FF 36 02 1B
        push    word ptr [0x1afe]               ; FF 36 FE 1A
        push    word ptr [0x1afc]               ; FF 36 FC 1A
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ax                              ; 50
        call    L_1BDE                          ; E8 D1 C6
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [0x452]            ; A1 52 04
        mov     dx, word ptr [0x454]            ; 8B 16 54 04
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        or      ax, dx                          ; 0B C2
        jne     L_5539                          ; 75 06
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_564D                          ; E9 14 01
;   [conditional branch target (if/else)] L_5539
L_5539:
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_5553                          ; EB 13
;   [loop start] L_5540
L_5540:
        les     bx, ptr [bp - 0x1c]             ; C4 5E E4
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        inc     word ptr [bp - 0xe]             ; FF 46 F2
;   [unconditional branch target] L_5553
L_5553:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jg      L_5540                          ; 7F E5
        jmp     L_5622                          ; E9 C4 00
;   [loop start] L_555E
L_555E:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        mov     dx, word ptr [bp - 0x1a]        ; 8B 56 E6
        add     ax, 0xa                         ; 05 0A 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        les     bx, ptr [bp - 0x1c]             ; C4 5E E4
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        sub     ax, word ptr [bp - 0x18]        ; 2B 46 E8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jne     L_5599                          ; 75 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_559C                          ; EB 03
;   [conditional branch target (if/else)] L_5599
L_5599:
        mov     ax, 0x50                        ; B8 50 00
;   [unconditional branch target] L_559C
L_559C:
        sub     ax, word ptr [bp - 0x18]        ; 2B 46 E8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_55AF                          ; 7D 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_55B2                          ; EB 03
;   [conditional branch target (if/else)] L_55AF
L_55AF:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
;   [unconditional branch target] L_55B2
L_55B2:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        or      ax, ax                          ; 0B C0
        jge     L_55C3                          ; 7D 05
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [conditional branch target (if/else)] L_55C3
L_55C3:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cdq                                     ; 99
        add     word ptr [bp - 0x20], ax        ; 01 46 E0
        adc     word ptr [bp - 0x1e], dx        ; 11 56 E2
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_55F3                          ; 74 1E
        jmp     L_55EA                          ; EB 13
;   [loop start] L_55D7
L_55D7:
        les     bx, ptr [bp - 0x14]             ; C4 5E EC
        add     word ptr [bp - 0x14], 2         ; 83 46 EC 02
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_55EA
L_55EA:
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jge     L_55D7                          ; 7D E4
;   [conditional branch target (if/else)] L_55F3
L_55F3:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jge     L_561F                          ; 7D 24
        add     word ptr [bp - 0x20], 2         ; 83 46 E0 02
        adc     word ptr [bp - 0x1e], 0         ; 83 56 E2 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_561F                          ; 74 14
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     byte ptr es:[bx], 0xd           ; 26 C6 07 0D
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     byte ptr es:[bx], 0xa           ; 26 C6 07 0A
;   [conditional branch target (if/else)] L_561F
L_561F:
        inc     word ptr [bp - 0x16]            ; FF 46 EA
;   [unconditional branch target] L_5622
L_5622:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jg      L_562D                          ; 7F 03
        jmp     L_555E                          ; E9 31 FF
;   [conditional branch target (if/else)] L_562D
L_562D:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_563F                          ; 74 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
;   [conditional branch target (if/else)] L_563F
L_563F:
        add     word ptr [bp - 0x20], 1         ; 83 46 E0 01
        adc     word ptr [bp - 0x1e], 0         ; 83 56 E2 00
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     dx, word ptr [bp - 0x1e]        ; 8B 56 E2
;   [unconditional branch target] L_564D
L_564D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (49 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_5658   offset=0x5658  size=49 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_5658
L_5658:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        jne     L_5666                          ; 75 03
        jmp     L_56E6                          ; E9 80 00
;   [conditional branch target (if/else)] L_5666
L_5666:
        dec     word ptr [0x45c]                ; FF 0E 5C 04
        mov     ax, word ptr [0x452]            ; A1 52 04
        mov     dx, word ptr [0x454]            ; 8B 16 54 04
        cmp     word ptr [bp + 6], dx           ; 39 56 06
        jne     L_569F                          ; 75 29
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_569F                          ; 75 24
        les     bx, ptr [0x452]                 ; C4 1E 52 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [0x452], ax            ; A3 52 04
        mov     word ptr [0x454], dx            ; 89 16 54 04
        cmp     word ptr [bp + 6], dx           ; 39 56 06
        jne     L_569F                          ; 75 0D
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_569F                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x454], ax            ; A3 54 04
        mov     word ptr [0x452], ax            ; A3 52 04
;   [conditional branch target (if/else)] L_569F
L_569F:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     dx, word ptr es:[bx + 6]        ; 26 8B 57 06
        les     bx, ptr es:[bx]                 ; 26 C4 1F
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     word ptr es:[bx + 6], dx        ; 26 89 57 06
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        les     bx, ptr es:[bx + 4]             ; 26 C4 5F 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0x456]            ; A1 56 04
        mov     dx, word ptr [0x458]            ; 8B 16 58 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [0x456], ax            ; A3 56 04
        mov     word ptr [0x458], dx            ; 89 16 58 04
;   [fall-through exit] L_56E6
L_56E6:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (34 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_56EC   offset=0x56EC  size=34 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_56EC
L_56EC:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        inc     word ptr [0x45c]                ; FF 06 5C 04
        mov     ax, word ptr [0x452]            ; A1 52 04
        or      ax, word ptr [0x454]            ; 0B 06 54 04
        jne     L_570B                          ; 75 0F
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [0x452], ax            ; A3 52 04
        mov     word ptr [0x454], dx            ; 89 16 54 04
        jmp     L_5754                          ; EB 49
;   [conditional branch target (if/else)] L_570B
L_570B:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0x452]            ; A1 52 04
        mov     dx, word ptr [0x454]            ; 8B 16 54 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        les     bx, ptr [0x452]                 ; C4 1E 52 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     dx, word ptr es:[bx + 6]        ; 26 8B 57 06
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     word ptr es:[bx + 6], dx        ; 26 89 57 06
        les     bx, ptr [0x452]                 ; C4 1E 52 04
        les     bx, ptr es:[bx + 4]             ; 26 C4 5F 04
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        les     bx, ptr [0x452]                 ; C4 1E 52 04
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     word ptr es:[bx + 6], dx        ; 26 89 57 06
;   [fall-through exit] L_5754
L_5754:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (39 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_575A   offset=0x575A  size=39 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_5658, L_605D
;-------------------------------------------------------------------------
;   [sub-routine] L_575A
L_575A:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [0x456]            ; A1 56 04
        or      ax, word ptr [0x458]            ; 0B 06 58 04
        jne     L_5774                          ; 75 0B
        push    word ptr [0x454]                ; FF 36 54 04
        push    word ptr [0x452]                ; FF 36 52 04
        call    L_5658                          ; E8 E4 FE
;   [conditional branch target (if/else)] L_5774
L_5774:
        mov     ax, word ptr [0x456]            ; A1 56 04
        mov     dx, word ptr [0x458]            ; 8B 16 58 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        or      ax, dx                          ; 0B C2
        je      L_5797                          ; 74 12
        les     bx, ptr [0x456]                 ; C4 1E 56 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [0x456], ax            ; A3 56 04
        mov     word ptr [0x458], dx            ; 89 16 58 04
;   [conditional branch target (if/else)] L_5797
L_5797:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     word ptr es:[bx + 6], dx        ; 26 89 57 06
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_605D                          ; E8 A0 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (38 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_57C7   offset=0x57C7  size=38 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_224D
;-------------------------------------------------------------------------
;   [sub-routine] L_57C7
L_57C7:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_57F5                          ; 7E 21
        mov     ax, 0x18                        ; B8 18 00
        sub     ax, word ptr [0x74]             ; 2B 06 74 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_57E8                          ; 7D 05
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        jmp     L_57EB                          ; EB 03
;   [conditional branch target (if/else)] L_57E8
L_57E8:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
;   [unconditional branch target] L_57EB
L_57EB:
        mov     word ptr [bp + 4], ax           ; 89 46 04
        add     ax, word ptr [0x74]             ; 03 06 74 00
        dec     ax                              ; 48
        jmp     L_5815                          ; EB 20
;   [conditional branch target (if/else)] L_57F5
L_57F5:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jge     L_5818                          ; 7D 1D
        mov     ax, word ptr [0x70]             ; A1 70 00
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jle     L_580C                          ; 7E 05
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        jmp     L_580E                          ; EB 02
;   [conditional branch target (if/else)] L_580C
L_580C:
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_580E
L_580E:
        mov     word ptr [bp + 4], ax           ; 89 46 04
        add     ax, word ptr [0x70]             ; 03 06 70 00
;   [unconditional branch target] L_5815
L_5815:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_5818
L_5818:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_224D                          ; E8 2F CA
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: RELEASEDC.

;-------------------------------------------------------------------------
; sub_5828   offset=0x5828  size=134 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_10FA, L_15BB, L_1954, L_200A, L_542A
;-------------------------------------------------------------------------
;   [sub-routine] L_5828
L_5828:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     ax, word ptr [0x44e]            ; A1 4E 04
        or      ax, word ptr [0x450]            ; 0B 06 50 04
        jne     L_583F                          ; 75 03
        jmp     L_59A6                          ; E9 67 01
;   [conditional branch target (if/else)] L_583F
L_583F:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jl      L_5848                          ; 7C 03
        jmp     L_58D2                          ; E9 8A 00
;   [conditional branch target (if/else)] L_5848
L_5848:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 4], ax           ; 89 46 04
        mov     ax, word ptr [0x45a]            ; A1 5A 04
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jle     L_5877                          ; 7E 1F
        mov     word ptr [bp + 4], ax           ; 89 46 04
        jmp     L_5877                          ; EB 1A
;   [loop start] L_585D
L_585D:
        les     bx, ptr [0x44e]                 ; C4 1E 4E 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     dx, word ptr es:[bx + 6]        ; 26 8B 57 06
        mov     word ptr [0x44e], ax            ; A3 4E 04
        mov     word ptr [0x450], dx            ; 89 16 50 04
        dec     word ptr [0x45a]                ; FF 0E 5A 04
        dec     word ptr [bp + 4]               ; FF 4E 04
;   [branch target] L_5877
L_5877:
        cmp     word ptr [bp + 4], 0x19         ; 83 7E 04 19
        jg      L_585D                          ; 7F E0
;   [loop start] L_587D
L_587D:
        dec     word ptr [bp + 4]               ; FF 4E 04
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jge     L_5889                          ; 7D 03
        jmp     L_5990                          ; E9 07 01
;   [conditional branch target (if/else)] L_5889
L_5889:
        les     bx, ptr [0x44e]                 ; C4 1E 4E 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     dx, word ptr es:[bx + 6]        ; 26 8B 57 06
        mov     word ptr [0x44e], ax            ; A3 4E 04
        mov     word ptr [0x450], dx            ; 89 16 50 04
        dec     word ptr [0x45a]                ; FF 0E 5A 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_15BB                          ; E8 0D BD
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [0x44e]            ; A1 4E 04
        mov     dx, word ptr [0x450]            ; 8B 16 50 04
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [0x44e]                 ; C4 1E 4E 04
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        call    L_10FA                          ; E8 2A B8
        jmp     L_587D                          ; EB AB
;   [unconditional branch target] L_58D2
L_58D2:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jg      L_58DB                          ; 7F 03
        jmp     L_5990                          ; E9 B5 00
;   [loop start (also forward branch)] L_58DB
L_58DB:
        cmp     word ptr [bp + 4], 0x19         ; 83 7E 04 19
        jle     L_58F4                          ; 7E 13
        mov     ax, word ptr [0x452]            ; A1 52 04
        mov     dx, word ptr [0x454]            ; 8B 16 54 04
        cmp     word ptr [0x450], dx            ; 39 16 50 04
        jne     L_5956                          ; 75 68
        cmp     word ptr [0x44e], ax            ; 39 06 4E 04
        jne     L_5956                          ; 75 62
;   [loop start (also forward branch)] L_58F4
L_58F4:
        dec     word ptr [bp + 4]               ; FF 4E 04
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jge     L_5900                          ; 7D 03
        jmp     L_5990                          ; E9 90 00
;   [conditional branch target (if/else)] L_5900
L_5900:
        inc     word ptr [0x45a]                ; FF 06 5A 04
        les     bx, ptr [0x44e]                 ; C4 1E 4E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [0x44e], ax            ; A3 4E 04
        mov     word ptr [0x450], dx            ; 89 16 50 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    L_15BB                          ; E8 97 BC
        mov     word ptr [bp - 0xa], 0x17       ; C7 46 F6 17 00
        mov     ax, word ptr [0x44e]            ; A1 4E 04
        mov     dx, word ptr [0x450]            ; 8B 16 50 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [loop start] L_593B
L_593B:
        cmp     word ptr [bp - 6], 0x17         ; 83 7E FA 17
        jge     L_5972                          ; 7D 31
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_593B                          ; EB E5
;   [conditional branch target (if/else)] L_5956
L_5956:
        inc     word ptr [0x45a]                ; FF 06 5A 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        les     bx, ptr [0x44e]                 ; C4 1E 4E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [0x44e], ax            ; A3 4E 04
        mov     word ptr [0x450], dx            ; 89 16 50 04
        jmp     L_58DB                          ; E9 69 FF
;   [conditional branch target (if/else)] L_5972
L_5972:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        call    L_10FA                          ; E8 6D B7
        jmp     L_58F4                          ; E9 64 FF
;   [unconditional branch target] L_5990
L_5990:
        call    L_200A                          ; E8 77 C6
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        call    L_1954                          ; E8 BA BF
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 76 53 00 00 [FIXUP]
;   [unconditional branch target] L_59A6
L_59A6:
        push    word ptr [0x1b04]               ; FF 36 04 1B
        push    word ptr [0x1b02]               ; FF 36 02 1B
        push    word ptr [0x1afe]               ; FF 36 FE 1A
        push    word ptr [0x1afc]               ; FF 36 FC 1A
        call    L_542A                          ; E8 71 FA
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (81 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_59BF   offset=0x59BF  size=81 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_2ACA, L_57C7, L_5828
;-------------------------------------------------------------------------
;   [sub-routine] L_59BF
L_59BF:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0x70]             ; 2B 06 70 00
        sub     ax, word ptr [0x45a]            ; 2B 06 5A 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_59DA                          ; 75 03
        jmp     L_5A7E                          ; E9 A4 00
;   [conditional branch target (if/else)] L_59DA
L_59DA:
        cmp     word ptr [0x1c12], 0            ; 83 3E 12 1C 00
        je      L_59EE                          ; 74 0D
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 DC D0
;   [conditional branch target (if/else)] L_59EE
L_59EE:
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_57C7                          ; E8 D3 FD
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        je      L_5A05                          ; 74 09
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_5828                          ; E8 23 FE
;   [conditional branch target (if/else)] L_5A05
L_5A05:
        cmp     word ptr [0x1c12], 0            ; 83 3E 12 1C 00
        je      L_5A19                          ; 74 0D
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 B1 D0
;   [conditional branch target (if/else)] L_5A19
L_5A19:
        mov     ax, word ptr [0x70]             ; A1 70 00
        add     ax, word ptr [0x45a]            ; 03 06 5A 04
        cmp     ax, word ptr [0x1b50]           ; 3B 06 50 1B
        jg      L_5A33                          ; 7F 0D
        mov     ax, word ptr [0x74]             ; A1 74 00
        add     ax, word ptr [0x45a]            ; 03 06 5A 04
        cmp     ax, word ptr [0x1b50]           ; 3B 06 50 1B
        jg      L_5A4F                          ; 7F 1C
;   [conditional branch target (if/else)] L_5A33
L_5A33:
        cmp     word ptr [0x1c12], 0            ; 83 3E 12 1C 00
        je      L_5A7E                          ; 74 44
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 83 D0
        mov     word ptr [0x1c12], 0            ; C7 06 12 1C 00 00
        jmp     L_5A7E                          ; EB 2F
;   [conditional branch target (if/else)] L_5A4F
L_5A4F:
        cmp     word ptr [0x1c12], 0            ; 83 3E 12 1C 00
        jne     L_5A69                          ; 75 13
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 67 D0
        mov     word ptr [0x1c12], 1            ; C7 06 12 1C 01 00
;   [conditional branch target (if/else)] L_5A69
L_5A69:
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x1b4e]               ; FF 36 4E 1B
        mov     ax, word ptr [0x1b50]           ; A1 50 1B
        sub     ax, word ptr [0x45a]            ; 2B 06 5A 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 4C D0
;   [error/early exit] L_5A7E
L_5A7E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_5A84   offset=0x5A84  size=25 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_108D, L_56EC, L_575A
;-------------------------------------------------------------------------
;   [sub-routine] L_5A84
L_5A84:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        call    L_575A                          ; E8 CD FC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        or      ax, dx                          ; 0B C2
        je      L_5ABA                          ; 74 23
        push    word ptr [0x468]                ; FF 36 68 04
        push    word ptr [0x466]                ; FF 36 66 04
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    L_108D                          ; E8 DF B5
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        push    es                              ; 06
        push    bx                              ; 53
        call    L_56EC                          ; E8 32 FC
;   [error/early exit] L_5ABA
L_5ABA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (50 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_5ABE   offset=0x5ABE  size=50 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_4EAB, L_4EE3, L_575A
;-------------------------------------------------------------------------
;   [sub-routine] L_5ABE
L_5ABE:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [0x45e]            ; A1 5E 04
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jle     L_5B03                          ; 7E 37
;   [loop start] L_5ACC
L_5ACC:
        mov     ax, word ptr [0x45e]            ; A1 5E 04
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jle     L_5B21                          ; 7E 4D
        call    L_4EAB                          ; E8 D4 F3
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        or      ax, dx                          ; 0B C2
        je      L_5B21                          ; 74 40
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [0x456]            ; A1 56 04
        mov     dx, word ptr [0x458]            ; 8B 16 58 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [0x456], ax            ; A3 56 04
        mov     word ptr [0x458], dx            ; 89 16 58 04
        inc     word ptr [0x45e]                ; FF 06 5E 04
        jmp     L_5ACC                          ; EB C9
;   [conditional branch target (if/else)] L_5B03
L_5B03:
        cmp     word ptr [bp + 4], 0x18         ; 83 7E 04 18
        jle     L_5B21                          ; 7E 18
;   [loop start] L_5B09
L_5B09:
        mov     ax, word ptr [0x45e]            ; A1 5E 04
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_5B21                          ; 7D 10
        mov     ax, word ptr [0x456]            ; A1 56 04
        or      ax, word ptr [0x458]            ; 0B 06 58 04
        jne     L_5B26                          ; 75 0C
        cmp     word ptr [0x44c], 0             ; 83 3E 4C 04 00
        je      L_5B26                          ; 74 05
;   [conditional branch target (if/else)] L_5B21
L_5B21:
        mov     ax, word ptr [0x45e]            ; A1 5E 04
        jmp     L_5B40                          ; EB 1A
;   [conditional branch target (if/else)] L_5B26
L_5B26:
        call    L_575A                          ; E8 31 FC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        or      ax, dx                          ; 0B C2
        je      L_5B3A                          ; 74 07
        push    dx                              ; 52
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_4EE3                          ; E8 A9 F3
;   [conditional branch target (if/else)] L_5B3A
L_5B3A:
        dec     word ptr [0x45e]                ; FF 0E 5E 04
        jmp     L_5B09                          ; EB C9
;   [fall-through exit] L_5B40
L_5B40:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_5B46   offset=0x5B46  size=12 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_5ABE
;-------------------------------------------------------------------------
;   [sub-routine] L_5B46
L_5B46:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        call    L_5ABE                          ; E8 6B FF
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x454], ax            ; A3 54 04
        mov     word ptr [0x452], ax            ; A3 52 04
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: RELEASEDC.

;-------------------------------------------------------------------------
; sub_5B5F   offset=0x5B5F  size=42 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_1DA5, L_1DCA, L_200A
;-------------------------------------------------------------------------
;   [sub-routine] L_5B5F
L_5B5F:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        cmp     word ptr [0x1b0a], 0            ; 83 3E 0A 1B 00
        je      L_5B72                          ; 74 06
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_5B7F                          ; 74 0D
;   [conditional branch target (if/else)] L_5B72
L_5B72:
        cmp     word ptr [0x1b0a], 0            ; 83 3E 0A 1B 00
        jne     L_5BD5                          ; 75 5C
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_5BD5                          ; 74 56
;   [conditional branch target (if/else)] L_5B7F
L_5B7F:
        call    L_200A                          ; E8 88 C4
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_5BCF                          ; 74 46
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_5BA2                          ; 74 13
        push    ax                              ; 50
        push    word ptr [0x472]                ; FF 36 72 04
        push    word ptr [0x470]                ; FF 36 70 04
        push    word ptr [0x476]                ; FF 36 76 04
        push    word ptr [0x474]                ; FF 36 74 04
        jmp     L_5BC0                          ; EB 1E
;   [conditional branch target (if/else)] L_5BA2
L_5BA2:
        mov     ax, 0x470                       ; B8 70 04
        push    ax                              ; 50
        mov     ax, 0x474                       ; B8 74 04
        push    ax                              ; 50
        call    L_1DA5                          ; E8 F8 C1
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [0x46e]                ; FF 36 6E 04
        push    word ptr [0x46c]                ; FF 36 6C 04
        push    word ptr [0x46e]                ; FF 36 6E 04
        push    word ptr [0x46c]                ; FF 36 6C 04
;   [unconditional branch target] L_5BC0
L_5BC0:
        call    L_1DCA                          ; E8 07 C2
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWnd
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A A2 59 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_5BCF
L_5BCF:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x1b0a], ax           ; A3 0A 1B
;   [error/early exit] L_5BD5
L_5BD5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_5BDB   offset=0x5BDB  size=36 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_2ACA, L_5B5F
;-------------------------------------------------------------------------
;   [sub-routine] L_5BDB
L_5BDB:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [0x478]            ; A1 78 04
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        je      L_5C24                          ; 74 3B
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_5C07                          ; 74 18
        cmp     word ptr [0x47a], 0             ; 83 3E 7A 04 00
        je      L_5C03                          ; 74 0D
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_5B5F                          ; E8 62 FF
        mov     word ptr [0x47a], 0             ; C7 06 7A 04 00 00
;   [conditional branch target (if/else)] L_5C03
L_5C03:
        sub     ax, ax                          ; 2B C0
        jmp     L_5C1A                          ; EB 13
;   [conditional branch target (if/else)] L_5C07
L_5C07:
        mov     ax, word ptr [0x1b0a]           ; A1 0A 1B
        mov     word ptr [0x47a], ax            ; A3 7A 04
        or      ax, ax                          ; 0B C0
        je      L_5C17                          ; 74 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_5B5F                          ; E8 48 FF
;   [conditional branch target (if/else)] L_5C17
L_5C17:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_5C1A
L_5C1A:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 A6 CE
;   [error/early exit] L_5C24
L_5C24:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x478], ax            ; A3 78 04
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_5C30   offset=0x5C30  size=19 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_2D99, L_548D
;-------------------------------------------------------------------------
;   [sub-routine] L_5C30
L_5C30:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        cmp     word ptr [0x1b0a], 0            ; 83 3E 0A 1B 00
        je      L_5C5E                          ; 74 21
        cmp     word ptr [0x46a], 0             ; 83 3E 6A 04 00
        je      L_5C5E                          ; 74 1A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_2D99                          ; E8 4C D1
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 8], dx           ; 89 56 08
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_548D                          ; E8 35 F8
        mov     word ptr [0x46a], 0             ; C7 06 6A 04 00 00
;   [error/early exit] L_5C5E
L_5C5E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_5C64   offset=0x5C64  size=25 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_2D99, L_548D, L_5C30
;-------------------------------------------------------------------------
;   [sub-routine] L_5C64
L_5C64:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x1b0a], 0            ; 83 3E 0A 1B 00
        je      L_5CA0                          ; 74 2F
        cmp     word ptr [0x46a], 0             ; 83 3E 6A 04 00
        je      L_5CA0                          ; 74 28
        test    byte ptr [bp + 4], 1            ; F6 46 04 01
        je      L_5C94                          ; 74 16
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_2D99                          ; E8 12 D1
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_548D                          ; E8 FB F7
        jmp     L_5CA0                          ; EB 0C
;   [conditional branch target (if/else)] L_5C94
L_5C94:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_5C30                          ; E8 90 FF
;   [error/early exit] L_5CA0
L_5CA0:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (47 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_5CA6   offset=0x5CA6  size=47 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_2ACA, L_2D99, L_5463, L_5C64
;-------------------------------------------------------------------------
;   [sub-routine] L_5CA6
L_5CA6:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        cmp     word ptr [0x1b0a], 0            ; 83 3E 0A 1B 00
        je      L_5D20                          ; 74 6D
        test    byte ptr [bp + 4], 4            ; F6 46 04 04
        je      L_5CC7                          ; 74 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_5C64                          ; E8 9F FF
        jmp     L_5D1A                          ; EB 53
;   [conditional branch target (if/else)] L_5CC7
L_5CC7:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_2D99                          ; E8 C9 D0
        mov     word ptr [0x1b0c], ax           ; A3 0C 1B
        mov     word ptr [0x1b0e], dx           ; 89 16 0E 1B
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x1b0c]               ; FF 36 0C 1B
        push    dx                              ; 52
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 E5 CD
        cmp     word ptr [0x1c12], 0            ; 83 3E 12 1C 00
        jne     L_5CF9                          ; 75 0D
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 D1 CD
;   [conditional branch target (if/else)] L_5CF9
L_5CF9:
        mov     word ptr [0x1c12], 1            ; C7 06 12 1C 01 00
        mov     ax, word ptr [0x1b0c]           ; A1 0C 1B
        mov     word ptr [0x1b4e], ax           ; A3 4E 1B
        mov     ax, word ptr [0x1b0e]           ; A1 0E 1B
        add     ax, word ptr [0x45a]            ; 03 06 5A 04
        mov     word ptr [0x1b50], ax           ; A3 50 1B
        push    word ptr [0x1b0e]               ; FF 36 0E 1B
        push    word ptr [0x1b0c]               ; FF 36 0C 1B
        call    L_5463                          ; E8 49 F7
;   [fall-through exit] L_5D1A
L_5D1A:
        mov     word ptr [0x46a], 1             ; C7 06 6A 04 01 00
;   [error/early exit] L_5D20
L_5D20:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Mixed routine using: GETKEYSTATE, GETSCROLLPOS, GETSCROLLRANGE (+1 more).

;-------------------------------------------------------------------------
; sub_5D26   offset=0x5D26  size=297 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETKEYSTATE
;   GETSCROLLPOS
;   GETSCROLLRANGE
;   SETSCROLLPOS
;
; Near calls (first 8 of 10): L_1F82, L_224D, L_2ACA, L_2D73, L_4EFD, L_4FBB, L_5828, L_5C30 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_5D26
L_5D26:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x21                        ; 3D 21 00
        jl      L_5D39                          ; 7C 05
        cmp     ax, 0x28                        ; 3D 28 00
        jle     L_5D3E                          ; 7E 05
;   [conditional branch target (if/else)] L_5D39
L_5D39:
        sub     ax, ax                          ; 2B C0
        jmp     L_6017                          ; E9 D9 02
;   [conditional branch target (if/else)] L_5D3E
L_5D3E:
        mov     ax, word ptr [0x45a]            ; A1 5A 04
        cmp     word ptr [0x1b50], ax           ; 39 06 50 1B
        jge     L_5D59                          ; 7D 12
        mov     ax, word ptr [0x1b50]           ; A1 50 1B
        sub     ax, word ptr [0x45a]            ; 2B 06 5A 04
        push    ax                              ; 50
        call    L_5828                          ; E8 D6 FA
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_5D84                          ; EB 2B
;   [conditional branch target (if/else)] L_5D59
L_5D59:
        mov     ax, word ptr [0x45a]            ; A1 5A 04
        add     ax, 0x18                        ; 05 18 00
        cmp     ax, word ptr [0x1b50]           ; 3B 06 50 1B
        jg      L_5D7A                          ; 7F 15
        mov     ax, word ptr [0x1b50]           ; A1 50 1B
        sub     ax, word ptr [0x45a]            ; 2B 06 5A 04
        sub     ax, 0x17                        ; 2D 17 00
        push    ax                              ; 50
        call    L_5828                          ; E8 B5 FA
        mov     word ptr [bp - 0xa], 0x17       ; C7 46 F6 17 00
        jmp     L_5D84                          ; EB 0A
;   [conditional branch target (if/else)] L_5D7A
L_5D7A:
        mov     ax, word ptr [0x1b50]           ; A1 50 1B
        sub     ax, word ptr [0x45a]            ; 2B 06 5A 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [unconditional branch target] L_5D84
L_5D84:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_224D                          ; E8 C3 C4
        mov     ax, word ptr [0x6e]             ; A1 6E 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0x1b4e], ax           ; 39 06 4E 1B
        jge     L_5D9B                          ; 7D 05
        mov     ax, word ptr [0x1b4e]           ; A1 4E 1B
        jmp     L_5DB0                          ; EB 15
;   [conditional branch target (if/else)] L_5D9B
L_5D9B:
        mov     ax, word ptr [0x72]             ; A1 72 00
        cmp     word ptr [0x1b4e], ax           ; 39 06 4E 1B
        jl      L_5DB3                          ; 7C 0F
        mov     ax, word ptr [0x6e]             ; A1 6E 00
        add     ax, word ptr [0x1b4e]           ; 03 06 4E 1B
        sub     ax, word ptr [0x72]             ; 2B 06 72 00
        inc     ax                              ; 40
;   [unconditional branch target] L_5DB0
L_5DB0:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [conditional branch target (if/else)] L_5DB3
L_5DB3:
        mov     ax, word ptr [0x6e]             ; A1 6E 00
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        je      L_5DD3                          ; 74 18
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_1F82                          ; E8 C1 C1
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF 5D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_5DD3
L_5DD3:
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETSCROLLPOS           ; 9A 15 4F 00 00 [FIXUP]
        mov     cx, word ptr [0x70]             ; 8B 0E 70 00
        add     cx, word ptr [0x45a]            ; 03 0E 5A 04
        cmp     cx, ax                          ; 3B C8
        je      L_5E03                          ; 74 18
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, word ptr [0x70]             ; A1 70 00
        add     ax, word ptr [0x45a]            ; 03 06 5A 04
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 23 52 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_5E03
L_5E03:
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x1b4e]               ; FF 36 4E 1B
        push    word ptr [bp - 0xa]             ; FF 76 F6
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 B7 CC
        mov     ax, word ptr [0x1b4e]           ; A1 4E 1B
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [0x1c12], 0            ; 83 3E 12 1C 00
        jne     L_5E45                          ; 75 13
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 8B CC
        mov     word ptr [0x1c12], 1            ; C7 06 12 1C 01 00
;   [conditional branch target (if/else)] L_5E45
L_5E45:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, 0x21                        ; 2D 21 00
        cmp     ax, 7                           ; 3D 07 00
        jbe     L_5E53                          ; 76 03
        jmp     L_5F73                          ; E9 20 01
;   [conditional branch target (if/else)] L_5E53
L_5E53:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x5f63]       ; 2E FF A7 63 5F
        mov     ax, word ptr [0x70]             ; A1 70 00
        sub     word ptr [bp - 0xc], ax         ; 29 46 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
;   [loop start] L_5E67
L_5E67:
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_4EFD                          ; E8 8F F0
        add     sp, 6                           ; 83 C4 06
        mov     ax, word ptr [0x70]             ; A1 70 00
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        jmp     L_5F73                          ; E9 F9 00
        mov     ax, word ptr [0x70]             ; A1 70 00
        sub     word ptr [bp - 0xc], ax         ; 29 46 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_5E67                          ; EB DF
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETSCROLLRANGE         ; 9A 2E 4F 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_4EFD                          ; E8 52 F0
        add     sp, 6                           ; 83 C4 06
        mov     ax, word ptr [0x6e]             ; A1 6E 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [0x74]             ; A1 74 00
        dec     ax                              ; 48
;   [loop start] L_5EB8
L_5EB8:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_5F73                          ; E9 B5 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_4EFD                          ; E8 32 F0
        add     sp, 6                           ; 83 C4 06
        mov     ax, word ptr [0x6e]             ; A1 6E 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [0x70]             ; A1 70 00
        jmp     L_5EB8                          ; EB DF
        mov     ax, word ptr [0x70]             ; A1 70 00
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jg      L_5EEE                          ; 7F 0D
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_4EFD                          ; E8 12 F0
        add     sp, 6                           ; 83 C4 06
;   [conditional branch target (if/else)] L_5EEE
L_5EEE:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_5F73                          ; 74 7F
        dec     word ptr [bp - 0xc]             ; FF 4E F4
        jmp     L_5F73                          ; EB 7A
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        inc     ax                              ; 40
        cmp     ax, word ptr [0x74]             ; 3B 06 74 00
        jl      L_5F13                          ; 7C 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_4EFD                          ; E8 ED EF
        add     sp, 6                           ; 83 C4 06
;   [conditional branch target (if/else)] L_5F13
L_5F13:
        cmp     word ptr [bp - 0xc], 0x17       ; 83 7E F4 17
        jge     L_5F73                          ; 7D 5A
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_5F73                          ; EB 55
        mov     ax, word ptr [0x6e]             ; A1 6E 00
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jg      L_5F33                          ; 7F 0D
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_4FBB                          ; E8 8B F0
        add     sp, 6                           ; 83 C4 06
;   [conditional branch target (if/else)] L_5F33
L_5F33:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_5F73                          ; 74 3A
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        jmp     L_5F73                          ; EB 35
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        inc     ax                              ; 40
        cmp     ax, word ptr [0x72]             ; 3B 06 72 00
        jl      L_5F58                          ; 7C 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_4FBB                          ; E8 66 F0
        add     sp, 6                           ; 83 C4 06
;   [conditional branch target (if/else)] L_5F58
L_5F58:
        cmp     word ptr [bp - 0xe], 0x4e       ; 83 7E F2 4E
        jge     L_5F73                          ; 7D 15
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        jmp     L_5F73                          ; EB 10
        pop     bx                              ; 5B
        pop     si                              ; 5E
        jp      L_5FC5                          ; 7A 5E
        mov     byte ptr [bp - 0x42], bl        ; 88 5E BE
        pop     si                              ; 5E
        push    ds                              ; 1E
        pop     di                              ; 5F
        fstp    dword ptr [bp + 0x3e]           ; D9 5E 3E
        pop     di                              ; 5F
        stc                                     ; F9
        pop     si                              ; 5E
;   [branch target] L_5F73
L_5F73:
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 48 CB
        cmp     word ptr [0x1c12], 0            ; 83 3E 12 1C 00
        jne     L_5F9C                          ; 75 13
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ACA                          ; E8 34 CB
        mov     word ptr [0x1c12], 1            ; C7 06 12 1C 01 00
;   [conditional branch target (if/else)] L_5F9C
L_5F9C:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [0x1b4e], ax           ; A3 4E 1B
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [0x45a]            ; 03 06 5A 04
        mov     word ptr [0x1b50], ax           ; A3 50 1B
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    L_2D73                          ; E8 BE CD
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_5FF5                          ; 7D 2D
        cmp     word ptr [0x46a], 0             ; 83 3E 6A 04 00
        jne     L_5FE6                          ; 75 17
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_2D73                          ; E8 9B CD
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_5CA6                          ; E8 C0 FC
;   [conditional branch target (if/else)] L_5FE6
L_5FE6:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_5C64                          ; E8 71 FC
        jmp     L_6014                          ; EB 1F
;   [conditional branch target (if/else)] L_5FF5
L_5FF5:
        cmp     word ptr [0x46a], 0             ; 83 3E 6A 04 00
        je      L_6014                          ; 74 18
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_5CA6                          ; E8 9E FC
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_5C30                          ; E8 1C FC
;   [branch target] L_6014
L_6014:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_6017
L_6017:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_601D   offset=0x601D  size=19 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_601D
L_601D:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        cld                                     ; FC
        xor     ax, ax                          ; 33 C0
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        repe cmpsb byte ptr [si], byte ptr es:[di] ; F3 A6
        jne     L_6035                          ; 75 01
        inc     ax                              ; 40
;   [error/early exit] L_6035
L_6035:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_603D   offset=0x603D  size=19 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=1)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_603D
L_603D:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        cld                                     ; FC
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        lds     si, ptr [bp + 6]                ; C5 76 06
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        shr     cx, 1                           ; D1 E9
        jae     L_6052                          ; 73 01
        movsb   byte ptr es:[di], byte ptr [si] ; A4
;   [conditional branch target (if/else)] L_6052
L_6052:
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_605D   offset=0x605D  size=12 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_605D
L_605D:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        cld                                     ; FC
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        les     di, ptr [bp + 8]                ; C4 7E 08
        rep stosw word ptr es:[di], ax          ; F3 AB
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (68 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_6074   offset=0x6074  size=68 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=8, ASM=3)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_6074
L_6074:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        cmp     ax, cx                          ; 3B C1
        jle     L_608B                          ; 7E 02
        mov     ax, cx                          ; 8B C1
;   [conditional branch target (if/else)] L_608B
L_608B:
        sub     cx, ax                          ; 2B C8
        lds     si, ptr [bp + 8]                ; C5 76 08
        push    ds                              ; 1E
        pop     es                              ; 07
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jl      L_60AC                          ; 7C 14
        add     si, word ptr [bp + 6]           ; 03 76 06
        dec     si                              ; 4E
        mov     di, si                          ; 8B FE
        sub     si, ax                          ; 2B F0
        std                                     ; FD
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     cx, ax                          ; 8B C8
        mov     al, 0x20                        ; B0 20
        rep stosb byte ptr es:[di], al          ; F3 AA
        cld                                     ; FC
        jmp     L_60C4                          ; EB 18
;   [conditional branch target (if/else)] L_60AC
L_60AC:
        mov     di, si                          ; 8B FE
        add     si, ax                          ; 03 F0
        cld                                     ; FC
        shr     cx, 1                           ; D1 E9
        jae     L_60B6                          ; 73 01
        movsb   byte ptr es:[di], byte ptr [si] ; A4
;   [conditional branch target (if/else)] L_60B6
L_60B6:
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x2020                      ; B8 20 20
        shr     cx, 1                           ; D1 E9
        jae     L_60C2                          ; 73 01
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_60C2
L_60C2:
        rep stosw word ptr es:[di], ax          ; F3 AB
;   [unconditional branch target] L_60C4
L_60C4:
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, 0x4300                      ; B8 00 43
        int     0x21                            ; CD 21
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jae     L_60E5                          ; 73 01
        dec     ax                              ; 48
;   [conditional branch target (if/else)] L_60E5
L_60E5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (24 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_60F0   offset=0x60F0  size=24 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_60F0
L_60F0:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        lds     si, ptr [bp + 6]                ; C5 76 06
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        xor     bl, bl                          ; 32 DB
;   [loop iteration target] L_6101
L_6101:
        lodsw   ax, word ptr [si]               ; AD
        or      bl, ah                          ; 0A DC
        stosb   byte ptr es:[di], al            ; AA
        or      ax, ax                          ; 0B C0
        loopne  L_6101                          ; E0 F8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        and     bl, 0x80                        ; 80 E3 80
        jne     L_6112                          ; 75 01
        dec     ax                              ; 48
;   [conditional branch target (if/else)] L_6112
L_6112:
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_611B   offset=0x611B  size=47 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LOCALFREE(HANDLE hMem) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_611B
L_611B:
        push    si                              ; 56
        push    di                              ; 57
        xor     di, di                          ; 33 FF
        mov     si, word ptr [0x482]            ; 8B 36 82 04
;   [loop start] L_6123
L_6123:
        or      si, si                          ; 0B F6
        je      L_6135                          ; 74 0E
        mov     bx, word ptr [si]               ; 8B 1C
        cmp     word ptr [bx + 4], 0x19         ; 83 7F 04 19
        jl      L_6169                          ; 7C 3A
        mov     di, si                          ; 8B FE
        mov     si, word ptr [bx]               ; 8B 37
        jmp     L_6123                          ; EB EE
;   [conditional branch target (if/else)] L_6135
L_6135:
        push    word ptr [0x480]                ; FF 36 80 04
        ;   ^ arg wFlags
        push    word ptr [0x484]                ; FF 36 84 04
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A C3 09 00 00 [FIXUP]
        jcxz    L_618D                          ; E3 49
        mov     si, ax                          ; 8B F0
        push    word ptr [0x47e]                ; FF 36 7E 04
        ;   ^ arg wFlags
        push    word ptr [0x488]                ; FF 36 88 04
        ;   ^ arg dwBytes (high/segment)
        push    word ptr [0x486]                ; FF 36 86 04
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        jcxz    L_6187                          ; E3 2E
        mov     bx, 0x482                       ; BB 82 04
        or      di, di                          ; 0B FF
        je      L_6162                          ; 74 02
        mov     bx, word ptr [di]               ; 8B 1D
;   [conditional branch target (if/else)] L_6162
L_6162:
        mov     word ptr [bx], si               ; 89 37
        mov     bx, word ptr [si]               ; 8B 1C
        mov     word ptr [bx + 2], ax           ; 89 47 02
;   [conditional branch target (if/else)] L_6169
L_6169:
        mov     es, word ptr [bx + 2]           ; 8E 47 02
        xor     si, si                          ; 33 F6
;   [loop start] L_616E
L_616E:
        cmp     byte ptr es:[si], 1             ; 26 80 3C 01
        jne     L_617A                          ; 75 06
        add     si, 0xaf                        ; 81 C6 AF 00
        jmp     L_616E                          ; EB F4
;   [conditional branch target (if/else)] L_617A
L_617A:
        inc     word ptr [bx + 4]               ; FF 47 04
        inc     byte ptr es:[si]                ; 26 FE 04
        mov     dx, es                          ; 8C C2
        lea     ax, [si + 1]                    ; 8D 44 01
        jmp     L_6191                          ; EB 0A
;   [conditional branch target (if/else)] L_6187
L_6187:
        push    si                              ; 56
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 31 0A 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_618D
L_618D:
        xor     dx, dx                          ; 33 D2
        xor     ax, ax                          ; 33 C0
;   [fall-through exit] L_6191
L_6191:
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_6194   offset=0x6194  size=41 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   LOCALFREE(HANDLE hMem) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_6194
L_6194:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     di, di                          ; 33 FF
        mov     si, word ptr [0x482]            ; 8B 36 82 04
;   [loop start] L_61A2
L_61A2:
        or      si, si                          ; 0B F6
        je      L_61E5                          ; 74 3F
        mov     bx, word ptr [si]               ; 8B 1C
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        je      L_61B3                          ; 74 06
        mov     di, si                          ; 8B FE
        mov     si, word ptr [bx]               ; 8B 37
        jmp     L_61A2                          ; EB EF
;   [conditional branch target (if/else)] L_61B3
L_61B3:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        dec     bx                              ; 4B
        cmp     byte ptr es:[bx], 1             ; 26 80 3F 01
        jne     L_61E5                          ; 75 28
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        mov     bx, word ptr [si]               ; 8B 1C
        dec     word ptr [bx + 4]               ; FF 4F 04
        jg      L_61E1                          ; 7F 19
        mov     ax, word ptr [bx]               ; 8B 07
        mov     bx, 0x482                       ; BB 82 04
        or      di, di                          ; 0B FF
        je      L_61D3                          ; 74 02
        mov     bx, word ptr [di]               ; 8B 1D
;   [conditional branch target (if/else)] L_61D3
L_61D3:
        mov     word ptr [bx], ax               ; 89 07
        push    es                              ; 06
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 89 61 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_61E1
L_61E1:
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_61E7                          ; EB 02
;   [conditional branch target (if/else)] L_61E5
L_61E5:
        xor     ax, ax                          ; 33 C0
;   [fall-through exit] L_61E7
L_61E7:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (97 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_61EF   offset=0x61EF  size=97 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_61EF
L_61EF:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     word ptr [bp - 4], 0x1e0a       ; C7 46 FC 0A 1E
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
;   [loop start] L_6207
L_6207:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bp - 0xe]         ; 8A 46 F2
        mov     byte ptr [bx], al               ; 88 07
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        cmp     word ptr [bp - 0xe], 0x100      ; 81 7E F2 00 01
        jl      L_6207                          ; 7C EB
        mov     word ptr [bp - 4], 0x1f0a       ; C7 46 FC 0A 1F
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
;   [loop start] L_6226
L_6226:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bp - 0xe]         ; 8A 46 F2
        mov     byte ptr [bx], al               ; 88 07
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        cmp     word ptr [bp - 0xe], 0x100      ; 81 7E F2 00 01
        jl      L_6226                          ; 7C EB
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_62B9                          ; 74 78
        cmp     word ptr [bp + 6], 0xa          ; 83 7E 06 0A
        jg      L_62B9                          ; 7F 72
        mov     word ptr [bp - 4], 0x1e8a       ; C7 46 FC 8A 1E
        mov     word ptr [bp - 0xa], 0x1f09     ; C7 46 F6 09 1F
        jmp     L_625C                          ; EB 09
;   [loop start] L_6253
L_6253:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0                ; C6 07 00
;   [unconditional branch target] L_625C
L_625C:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jbe     L_6253                          ; 76 EF
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x54a]       ; 8B 87 4A 05
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_62B0                          ; EB 33
;   [loop start] L_627D
L_627D:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        mov     byte ptr [si + 0x1e0a], al      ; 88 84 0A 1E
        mov     byte ptr [si + 0x1f0a], ah      ; 88 A4 0A 1F
        mov     bl, al                          ; 8A D8
        sub     bh, bh                          ; 2A FF
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        mov     byte ptr [bx + 0x1f0a], al      ; 88 87 0A 1F
;   [unconditional branch target] L_62B0
L_62B0:
        dec     word ptr [bp - 8]               ; FF 4E F8
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jge     L_627D                          ; 7D C4
;   [conditional branch target (if/else)] L_62B9
L_62B9:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bl, byte ptr [bp + 6]           ; 8A 5E 06
        sub     bh, bh                          ; 2A FF
        mov     al, byte ptr [bx + 0x1e0a]      ; 8A 87 0A 1E
        cwde                                    ; 98
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Internal helper (18 instructions).

;-------------------------------------------------------------------------
; sub_62E4   offset=0x62E4  size=18 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_62E4
L_62E4:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bl, byte ptr [bp + 6]           ; 8A 5E 06
        sub     bh, bh                          ; 2A FF
        mov     al, byte ptr [bx + 0x1f0a]      ; 8A 87 0A 1F
        cwde                                    ; 98
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (72 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_6303   offset=0x6303  size=72 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_6303
;-------------------------------------------------------------------------
;   [sub-routine] L_6303
L_6303:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        jmp     L_6340                          ; EB 23
;   [loop start] L_631D
L_631D:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     bl, byte ptr es:[bx]            ; 26 8A 1F
        sub     bh, bh                          ; 2A FF
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [bx + si]          ; 8A 00
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        or      al, al                          ; 0A C0
        je      L_6340                          ; 74 0C
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 6]               ; FF 46 FA
;   [branch target] L_6340
L_6340:
        dec     word ptr [bp + 4]               ; FF 4E 04
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jge     L_631D                          ; 7D D4
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x1e0a                      ; B8 0A 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_6303                          ; E8 96 FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x1f0a                      ; B8 0A 1F
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_6303                          ; E8 71 FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

TERMINAL_TEXT ENDS

        END
