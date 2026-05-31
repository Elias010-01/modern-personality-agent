; ======================================================================
; USER / seg12.asm   (segment 12 of USER)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        51
; Total instructions:                 3431
; 
; Classification (pass8):
;   C-origin (high+medium):             46
;   ASM-origin (high+medium):            0
;   Unclear:                             3
;   Tiny / unclassified:                 2
; 
; Far API calls in this segment:     10 (5 unique)
;   Top:
;        2  INTERSECTVISRECT
;        2  PATBLT
;        2  RESTOREVISRGN
;        2  SAVEVISRGN
;        2  SELECTOBJECT
; ======================================================================
; AUTO-GENERATED from original USER segment 12
; segment_size=8632 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     word ptr [0x50], 1              ; C7 06 50 00 01 00
        cmp     word ptr [0x1be], 0             ; 83 3E BE 01 00
        jne     L_0052                          ; 75 3B
        cmp     word ptr [0x51c], 0             ; 83 3E 1C 05 00
        je      L_0032                          ; 74 14
        call    far _SEG1_1396                  ; 9A FF FF 00 00 [FIXUP]
        call    L_005D                          ; E8 37 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x51c]                ; FF 36 1C 05
        call    L_205B                          ; E8 2B 20
        jmp     L_003B                          ; EB 09
;   [conditional branch target (if/else)] L_0032
L_0032:
        mov     ax, 0x512                       ; B8 12 05
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0766                          ; E8 2B 07
;   [unconditional branch target] L_003B
L_003B:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0046                          ; 74 05
        call    far _entry_379                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0046
L_0046:
        cmp     word ptr [0x51c], 0             ; 83 3E 1C 05 00
        je      L_0052                          ; 74 05
        call    far _SEG1_3A74                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0052
L_0052:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_005D   offset=0x005D  size=19 instr  segment=seg12.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_0081
;-------------------------------------------------------------------------
;   [sub-routine] L_005D
L_005D:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [0x4dc]            ; 8B 36 DC 04
        sub     di, di                          ; 2B FF
        jmp     L_0075                          ; EB 08
;   [loop start] L_006D
L_006D:
        push    si                              ; 56
        add     si, 0xe                         ; 83 C6 0E
        call    L_0081                          ; E8 0D 00
        inc     di                              ; 47
;   [unconditional branch target] L_0075
L_0075:
        cmp     word ptr [0x51c], di            ; 39 3E 1C 05
        jg      L_006D                          ; 7F F2
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (17 instructions).

;-------------------------------------------------------------------------
; sub_0081   offset=0x0081  size=17 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_00A5
;-------------------------------------------------------------------------
;   [sub-routine] L_0081
L_0081:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        push    word ptr [si + 0xc]             ; FF 74 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x514]                ; FF 36 14 05
        mov     ax, word ptr [0x518]            ; A1 18 05
        sub     ax, word ptr [0x514]            ; 2B 06 14 05
        push    ax                              ; 50
        push    si                              ; 56
        call    L_00A5                          ; E8 07 00
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (125 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_00A5   offset=0x00A5  size=125 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_029C
;-------------------------------------------------------------------------
;   [sub-routine] L_00A5
L_00A5:
        ;   = cProc <26> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        jmp     L_00D2                          ; EB 16
;   [loop start] L_00BC
L_00BC:
        cmp     word ptr [si + 8], 0            ; 83 7C 08 00
        je      L_00CD                          ; 74 0B
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        jmp     L_00D0                          ; EB 03
;   [conditional branch target (if/else)] L_00CD
L_00CD:
        inc     word ptr [bp - 0xc]             ; FF 46 F4
;   [unconditional branch target] L_00D0
L_00D0:
        mov     si, word ptr [si]               ; 8B 34
;   [unconditional branch target] L_00D2
L_00D2:
        cmp     word ptr [bp + 0xa], si         ; 39 76 0A
        jne     L_00BC                          ; 75 E5
        mov     ax, word ptr [0x480]            ; A1 80 04
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [bp - 0x16]        ; 03 46 EA
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        imul    word ptr [0x464]                ; F7 2E 64 04
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp - 8], cx           ; 89 4E F8
        or      cx, cx                          ; 0B C9
        jle     L_0100                          ; 7E 05
        mov     ax, word ptr [0x464]            ; A1 64 04
        jmp     L_0109                          ; EB 09
;   [conditional branch target (if/else)] L_0100
L_0100:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0xe]         ; 8B 4E F2
        idiv    cx                              ; F7 F9
;   [unconditional branch target] L_0109
L_0109:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_011E                          ; 7E 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0120                          ; EB 02
;   [conditional branch target (if/else)] L_011E
L_011E:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0120
L_0120:
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        or      ax, ax                          ; 0B C0
        je      L_0147                          ; 74 20
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_0147                          ; 74 1A
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        imul    word ptr [0x464]                ; F7 2E 64 04
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, cx                          ; 2B C1
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0xc]         ; 8B 4E F4
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
;   [conditional branch target (if/else)] L_0147
L_0147:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        jmp     L_01E2                          ; E9 8F 00
;   [loop start] L_0153
L_0153:
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_1344                  ; 9A 72 02 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [si + 0x18], ax        ; 89 44 18
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        je      L_01A9                          ; 74 41
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jle     L_019B                          ; 7E 2D
        cmp     word ptr [si + 8], 0            ; 83 7C 08 00
        je      L_0193                          ; 74 1F
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        je      L_017F                          ; 74 05
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        jmp     L_019E                          ; EB 1F
;   [conditional branch target (if/else)] L_017F
L_017F:
        push    word ptr [si + 8]               ; FF 74 08
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far _SEG1_520B                  ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [0x464]            ; 03 06 64 04
        jmp     L_019E                          ; EB 0B
;   [conditional branch target (if/else)] L_0193
L_0193:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        jmp     L_019E                          ; EB 03
;   [conditional branch target (if/else)] L_019B
L_019B:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_019E
L_019E:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        add     ax, word ptr [bp - 0x14]        ; 03 46 EC
        jmp     L_01AF                          ; EB 06
;   [conditional branch target (if/else)] L_01A9
L_01A9:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 6]           ; 03 46 06
;   [unconditional branch target] L_01AF
L_01AF:
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     word ptr [bp - 4], ax           ; 01 46 FC
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        dec     ax                              ; 48
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        je      L_01C7                          ; 74 06
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        sub     word ptr [si + 0x18], ax        ; 29 44 18
;   [conditional branch target (if/else)] L_01C7
L_01C7:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_01D6                          ; 74 09
        mov     ax, word ptr [0x480]            ; A1 80 04
        sub     ax, word ptr [bp - 0x12]        ; 2B 46 EE
        add     word ptr [si + 0x1c], ax        ; 01 44 1C
;   [conditional branch target (if/else)] L_01D6
L_01D6:
        lea     ax, [si + 0x16]                 ; 8D 44 16
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_029C                          ; E8 BC 00
        mov     si, word ptr [si]               ; 8B 34
;   [unconditional branch target] L_01E2
L_01E2:
        cmp     word ptr [bp + 0xa], si         ; 39 76 0A
        je      L_01EA                          ; 74 03
        jmp     L_0153                          ; E9 69 FF
;   [error/early exit] L_01EA
L_01EA:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Internal helper (13 instructions).

;-------------------------------------------------------------------------
; sub_01F1   offset=0x01F1  size=13 instr  segment=seg12.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_020E
;-------------------------------------------------------------------------
;   [sub-routine] L_01F1
L_01F1:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x51c]                ; FF 36 1C 05
        push    word ptr [0x512]                ; FF 36 12 05
        mov     ax, word ptr [0x516]            ; A1 16 05
        sub     ax, word ptr [0x512]            ; 2B 06 12 05
        push    ax                              ; 50
        call    L_020E                          ; E8 04 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (59 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_020E   offset=0x020E  size=59 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_029C
;-------------------------------------------------------------------------
;   [sub-routine] L_020E
L_020E:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_0294                          ; 74 6E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        add     ax, word ptr [0x4dc]            ; 03 06 DC 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_028A                          ; EB 41
;   [loop start] L_0249
L_0249:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx], si               ; 89 37
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_0259                          ; 75 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_025E                          ; EB 05
;   [conditional branch target (if/else)] L_0259
L_0259:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, si                          ; 03 C6
;   [unconditional branch target] L_025E
L_025E:
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + 4], si           ; 89 77 04
        mov     di, word ptr [bx + 0xc]         ; 8B 7F 0C
        jmp     L_0282                          ; EB 17
;   [loop start] L_026B
L_026B:
        push    di                              ; 57
        lea     ax, [di + 0x1e]                 ; 8D 45 1E
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_1344                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [di + 0x16]                 ; 8D 45 16
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_029C                          ; E8 1C 00
        mov     di, word ptr [di]               ; 8B 3D
;   [unconditional branch target] L_0282
L_0282:
        or      di, di                          ; 0B FF
        jne     L_026B                          ; 75 E5
        add     word ptr [bp - 2], 0xe          ; 83 46 FE 0E
;   [unconditional branch target] L_028A
L_028A:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        dec     word ptr [bp - 0xa]             ; FF 4E F6
        or      ax, ax                          ; 0B C0
        jne     L_0249                          ; 75 B5
;   [error/early exit] L_0294
L_0294:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (31 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_029C   offset=0x029C  size=31 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_029C
L_029C:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     di, word ptr [0x47e]            ; 8B 3E 7E 04
        sar     di, 1                           ; D1 FF
        cmp     word ptr [si], 0                ; 83 3C 00
        jne     L_02B6                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_02B8                          ; EB 02
;   [conditional branch target (if/else)] L_02B6
L_02B6:
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_02B8
L_02B8:
        add     ax, word ptr [si]               ; 03 04
        sub     ax, word ptr [0x47e]            ; 2B 06 7E 04
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [0x516]            ; A1 16 05
        cmp     word ptr [si + 4], ax           ; 39 44 04
        jne     L_02D0                          ; 75 05
        mov     ax, word ptr [0x47e]            ; A1 7E 04
        jmp     L_02D2                          ; EB 02
;   [conditional branch target (if/else)] L_02D0
L_02D0:
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_02D2
L_02D2:
        add     ax, word ptr [si + 4]           ; 03 44 04
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx + 4], ax           ; 89 47 04
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (26 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_02E3   offset=0x02E3  size=26 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0346
;-------------------------------------------------------------------------
;   [sub-routine] L_02E3
L_02E3:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        dec     si                              ; 4E
        or      si, si                          ; 0B F6
        jge     L_02F5                          ; 7D 02
        sub     si, si                          ; 2B F6
;   [conditional branch target (if/else)] L_02F5
L_02F5:
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        cmp     di, word ptr [0x51c]            ; 3B 3E 1C 05
        jl      L_0303                          ; 7C 05
        mov     di, word ptr [0x51c]            ; 8B 3E 1C 05
        dec     di                              ; 4F
;   [conditional branch target (if/else)] L_0303
L_0303:
        push    word ptr [bp + 4]               ; FF 76 04
        push    si                              ; 56
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0346                          ; E8 38 00
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0316   offset=0x0316  size=25 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0346
;-------------------------------------------------------------------------
;   [sub-routine] L_0316
L_0316:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        or      si, si                          ; 0B F6
        je      L_0326                          ; 74 01
        dec     si                              ; 4E
;   [conditional branch target (if/else)] L_0326
L_0326:
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     ax, di                          ; 8B C7
        inc     ax                              ; 40
        cmp     ax, word ptr [0x51c]            ; 3B 06 1C 05
        je      L_0333                          ; 74 01
        inc     di                              ; 47
;   [conditional branch target (if/else)] L_0333
L_0333:
        push    word ptr [bp + 4]               ; FF 76 04
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0346                          ; E8 08 00
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (55 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0346   offset=0x0346  size=55 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_020E, L_127A, L_127E, L_205B, L_2089
;-------------------------------------------------------------------------
;   [sub-routine] L_0346
L_0346:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        push    di                              ; 57
        call    L_127E                          ; E8 26 0F
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        call    L_127A                          ; E8 16 0F
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cdq                                     ; 99
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        sub     cx, di                          ; 2B CF
        inc     cx                              ; 41
        idiv    cx                              ; F7 F9
        cmp     ax, word ptr [0x462]            ; 3B 06 62 04
        jge     L_0391                          ; 7D 18
        mov     ax, word ptr [0x512]            ; A1 12 05
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        sub     di, di                          ; 2B FF
        mov     ax, word ptr [0x51c]            ; A1 1C 05
        dec     ax                              ; 48
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     ax, word ptr [0x516]            ; A1 16 05
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_0391
L_0391:
        push    di                              ; 57
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_020E                          ; E8 6E FE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_03AD                          ; 74 07
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        and     byte ptr [bx + 0x2e], 0xef      ; 80 67 2E EF
;   [conditional branch target (if/else)] L_03AD
L_03AD:
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        push    ax                              ; 50
        call    L_205B                          ; E8 A5 1C
        push    di                              ; 57
        push    si                              ; 56
        call    L_2089                          ; E8 CE 1C
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (27 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_03C3   offset=0x03C3  size=27 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0431
;-------------------------------------------------------------------------
;   [sub-routine] L_03C3
L_03C3:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        or      di, di                          ; 0B FF
        jne     L_03D8                          ; 75 06
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     di, word ptr [bx + 0xc]         ; 8B 7F 0C
;   [conditional branch target (if/else)] L_03D8
L_03D8:
        cmp     di, 1                           ; 83 FF 01
        jne     L_03E8                          ; 75 0B
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    si                              ; 56
        call    far _SEG1_1377                  ; 9A 0F 04 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
;   [conditional branch target (if/else)] L_03E8
L_03E8:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    di                              ; 57
        push    word ptr [si]                   ; FF 34
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0431                          ; E8 3A 00
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_03FF   offset=0x03FF  size=25 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0431
;-------------------------------------------------------------------------
;   [sub-routine] L_03FF
L_03FF:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    si                              ; 56
        call    far _SEG1_1377                  ; 9A 55 04 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_041B                          ; 75 02
        mov     di, si                          ; 8B FE
;   [conditional branch target (if/else)] L_041B
L_041B:
        push    word ptr [bp + 8]               ; FF 76 08
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0431                          ; E8 08 00
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (335 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0431   offset=0x0431  size=335 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (first 8 of 14): L_005D, L_00A5, L_01F1, L_02E3, L_0316, L_03C3, L_03FF, L_0766 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_0431
L_0431:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        jmp     L_044B                          ; EB 05
;   [loop start] L_0446
L_0446:
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     di, word ptr [di]               ; 8B 3D
;   [unconditional branch target] L_044B
L_044B:
        cmp     word ptr [bp + 8], di           ; 39 7E 08
        jne     L_0446                          ; 75 F6
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _SEG1_1377                  ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        push    di                              ; 57
        call    L_12B5                          ; E8 56 0E
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0475                          ; 74 0D
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 0x24]        ; 8B 47 24
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     di, word ptr [bx]               ; 8B 3F
        jmp     L_047D                          ; EB 08
;   [conditional branch target (if/else)] L_0475
L_0475:
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        sub     di, di                          ; 2B FF
;   [unconditional branch target] L_047D
L_047D:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cdq                                     ; 99
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        idiv    cx                              ; F7 F9
        cmp     ax, word ptr [0x464]            ; 3B 06 64 04
        jge     L_04A8                          ; 7D 16
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     cx, word ptr [si + 2]           ; 8B 4C 02
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        sub     di, di                          ; 2B FF
;   [conditional branch target (if/else)] L_04A8
L_04A8:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    di                              ; 57
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 2]               ; FF 76 FE
        push    si                              ; 56
        call    L_00A5                          ; E8 EF FB
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_04C3                          ; 74 07
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        and     byte ptr [bx + 0x2e], 0xef      ; 80 67 2E EF
;   [conditional branch target (if/else)] L_04C3
L_04C3:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_04D0                          ; 74 07
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_201C                          ; E8 4C 1B
;   [conditional branch target (if/else)] L_04D0
L_04D0:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        call    far _SEG1_1396                  ; 9A 2B 06 00 00 [FIXUP]
        mov     al, byte ptr [si + 0x38]        ; 8A 44 38
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        cmp     al, 0x3f                        ; 3C 3F
        jne     L_050A                          ; 75 0B
        mov     al, byte ptr [0x51c]            ; A0 1C 05
        dec     al                              ; FE C8
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        mov     byte ptr [si + 0x38], al        ; 88 44 38
;   [conditional branch target (if/else)] L_050A
L_050A:
        ; constant WM_GETTEXTLENGTH
        mov     al, 0xe                         ; B0 0E
        imul    byte ptr [bp - 8]               ; F6 6E F8
        add     ax, word ptr [0x4dc]            ; 03 06 DC 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        call    far _entry_335                  ; 9A 50 06 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     byte ptr [bp - 8], 0            ; 80 7E F8 00
        jl      L_052E                          ; 7C 0A
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        cwde                                    ; 98
        cmp     ax, word ptr [0x51c]            ; 3B 06 1C 05
        jl      L_0591                          ; 7C 63
;   [conditional branch target (if/else)] L_052E
L_052E:
        cmp     byte ptr [bp - 8], 0            ; 80 7E F8 00
        jge     L_053E                          ; 7D 0A
        inc     byte ptr [bp - 8]               ; FE 46 F8
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        neg     al                              ; F6 D8
        jmp     L_054B                          ; EB 0D
;   [conditional branch target (if/else)] L_053E
L_053E:
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        cwde                                    ; 98
        cmp     ax, word ptr [0x51c]            ; 3B 06 1C 05
        jl      L_054E                          ; 7C 06
        mov     al, byte ptr [0x51c]            ; A0 1C 05
;   [unconditional branch target] L_054B
L_054B:
        mov     byte ptr [bp - 8], al           ; 88 46 F8
;   [conditional branch target (if/else)] L_054E
L_054E:
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        mov     byte ptr [si + 0x38], al        ; 88 44 38
        ; constant WM_GETTEXTLENGTH
        mov     cl, 0xe                         ; B1 0E
        imul    cl                              ; F6 E9
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        add     ax, word ptr [0x4dc]            ; 03 06 DC 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_2133                          ; E8 C9 1B
        push    si                              ; 56
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0x4dc]            ; 03 06 DC 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_1164                  ; 9A 97 05 00 00 [FIXUP]
        push    si                              ; 56
        mov     ax, 0x512                       ; B8 12 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_1344                  ; 9A A2 05 00 00 [FIXUP]
        push    si                              ; 56
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_0316                          ; E8 87 FD
        jmp     L_05CC                          ; EB 3B
;   [conditional branch target (if/else)] L_0591
L_0591:
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        push    di                              ; 57
        call    far _SEG1_1164                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_1344                  ; 9A 59 01 00 00 [FIXUP]
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_05BF                          ; 74 13
        call    L_005D                          ; E8 AE FA
        and     byte ptr [si + 0x2e], 0xef      ; 80 64 2E EF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x51c]                ; FF 36 1C 05
        call    L_205B                          ; E8 9E 1A
        jmp     L_05CC                          ; EB 0D
;   [conditional branch target (if/else)] L_05BF
L_05BF:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    si                              ; 56
        push    di                              ; 57
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_03C3                          ; E8 F7 FD
;   [unconditional branch target] L_05CC
L_05CC:
        or      byte ptr [si + 0x2e], 0x10      ; 80 4C 2E 10
        push    si                              ; 56
        call    far _SEG1_1810                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_05E1                          ; 74 05
        call    far _entry_379                  ; 9A 42 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_05E1
L_05E1:
        call    far _SEG1_3A74                  ; 9A 0D 07 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     word ptr [0x1be], 0             ; 83 3E BE 01 00
        je      L_0625                          ; 74 19
        cmp     word ptr [0x1be], si            ; 39 36 BE 01
        je      L_0615                          ; 74 03
        jmp     L_0711                          ; E9 FC 00
;   [conditional branch target (if/else)] L_0615
L_0615:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        call    far _entry_386                  ; 9A FF FF 00 00 [FIXUP]
        sub     word ptr [0x518], ax            ; 29 06 18 05
        jmp     L_062A                          ; EB 05
;   [conditional branch target (if/else)] L_0625
L_0625:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
;   [unconditional branch target] L_062A
L_062A:
        call    far _SEG1_1396                  ; 9A 1F 00 00 00 [FIXUP]
        mov     di, word ptr [si]               ; 8B 3C
        push    si                              ; 56
        mov     al, byte ptr [si + 0x38]        ; 8A 44 38
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        ; constant WM_GETTEXTLENGTH
        mov     cl, 0xe                         ; B1 0E
        imul    cl                              ; F6 E9
        add     ax, word ptr [0x4dc]            ; 03 06 DC 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far _SEG1_11AD                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1be], 0             ; C7 06 BE 01 00 00
        call    far _entry_335                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, word ptr [bp - 8]           ; 0B 46 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     word ptr [bx + 0xa], 0          ; 83 7F 0A 00
        jne     L_06CC                          ; 75 69
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_20B9                          ; E8 4E 1A
        cmp     word ptr [0x51c], 0             ; 83 3E 1C 05 00
        jne     L_0695                          ; 75 23
        mov     word ptr [0x10], 1              ; C7 06 10 00 01 00
        mov     ax, 0x512                       ; B8 12 05
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0766                          ; E8 E5 00
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_06F2                          ; 74 6B
        call    far _SEG1_3889                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        jmp     L_06AC                          ; EB 17
;   [conditional branch target (if/else)] L_0695
L_0695:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_06C1                          ; 74 26
        call    L_01F1                          ; E8 53 FB
        call    L_005D                          ; E8 BC F9
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_06B7                          ; 74 10
;   [loop start] L_06A7
L_06A7:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    si                              ; 56
;   [unconditional branch target] L_06AC
L_06AC:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_18E3                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_06F2                          ; EB 3B
;   [conditional branch target (if/else)] L_06B7
L_06B7:
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_203F                          ; E8 80 19
        jmp     L_06F2                          ; EB 31
;   [conditional branch target (if/else)] L_06C1
L_06C1:
        push    si                              ; 56
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_02E3                          ; E8 19 FC
        jmp     L_06F2                          ; EB 26
;   [conditional branch target (if/else)] L_06CC
L_06CC:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_06E7                          ; 74 15
        call    L_005D                          ; E8 88 F9
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_06A7                          ; 75 CC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x51c]                ; FF 36 1C 05
        call    L_205B                          ; E8 76 19
        jmp     L_06F2                          ; EB 0B
;   [conditional branch target (if/else)] L_06E7
L_06E7:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    di                              ; 57
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_03FF                          ; E8 0D FD
;   [branch target] L_06F2
L_06F2:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_070C                          ; 75 14
        push    si                              ; 56
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_0704                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0706                          ; EB 02
;   [conditional branch target (if/else)] L_0704
L_0704:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0706
L_0706:
        push    ax                              ; 50
        call    far _entry_382                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_070C
L_070C:
        call    far _SEG1_3A74                  ; 9A 4E 00 00 00 [FIXUP]
;   [unconditional branch target] L_0711
L_0711:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        cmp     word ptr [0x1be], 0             ; 83 3E BE 01 00
        jne     L_073B                          ; 75 04
        add     word ptr [0x518], si            ; 01 36 18 05
;   [conditional branch target (if/else)] L_073B
L_073B:
        mov     ax, word ptr [0x4dc]            ; A1 DC 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sub     di, di                          ; 2B FF
        jmp     L_0750                          ; EB 0B
;   [loop start] L_0745
L_0745:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 0xe          ; 83 46 FC 0E
        add     word ptr [bx + 6], si           ; 01 77 06
        inc     di                              ; 47
;   [unconditional branch target] L_0750
L_0750:
        mov     al, byte ptr [0x5e2]            ; A0 E2 05
        sub     ah, ah                          ; 2A E4
        cmp     ax, di                          ; 3B C7
        ja      L_0745                          ; 77 EC
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: INTERSECTVISRECT, PATBLT, RESTOREVISRGN (+2 more).

;-------------------------------------------------------------------------
; sub_0766   offset=0x0766  size=97 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   INTERSECTVISRECT
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   RESTOREVISRGN
;   SAVEVISRGN
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;
; Near calls (internal): L_0850, L_08DF
;-------------------------------------------------------------------------
;   [sub-routine] L_0766
L_0766:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        call    far _SEG1_38D1                  ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        push    di                              ; 57
        call    far GDI.SAVEVISRGN              ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        push    word ptr [0x512]                ; FF 36 12 05
        push    word ptr [0x514]                ; FF 36 14 05
        push    word ptr [0x516]                ; FF 36 16 05
        push    word ptr [0x518]                ; FF 36 18 05
        call    far GDI.INTERSECTVISRECT        ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_3CEC                  ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        ;   ^ arg hDC
        push    word ptr [0x3be]                ; FF 36 BE 03
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        ;   ^ arg hDC
        push    word ptr [si]                   ; FF 34
        ;   ^ arg x
        push    word ptr [si + 2]               ; FF 74 02
        ;   ^ arg y
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si]               ; 2B 04
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [si + 2]           ; 2B 44 02
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far GDI.RESTOREVISRGN           ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far _SEG1_38E1                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        push    si                              ; 56
        cmp     word ptr [0x1be], 0             ; 83 3E BE 01 00
        je      L_0805                          ; 74 05
        mov     ax, 4                           ; B8 04 00
        jmp     L_0808                          ; EB 03
;   [conditional branch target (if/else)] L_0805
L_0805:
        mov     ax, 2                           ; B8 02 00
;   [unconditional branch target] L_0808
L_0808:
        push    ax                              ; 50
        call    far _SEG1_121A                  ; 9A FF FF 00 00 [FIXUP]
        call    far _SEG1_1396                  ; 9A F1 04 00 00 [FIXUP]
        cmp     word ptr [0x1be], 0             ; 83 3E BE 01 00
        jne     L_0838                          ; 75 1E
        call    far _entry_386                  ; 9A 01 09 00 00 [FIXUP]
        add     word ptr [0x518], ax            ; 01 06 18 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x35c], ax            ; A3 5C 03
        mov     word ptr [0x1be], si            ; 89 36 BE 01
        call    far _SEG1_3889                  ; 9A FA 08 00 00 [FIXUP]
        push    si                              ; 56
        call    L_0850                          ; E8 1A 00
        jmp     L_083F                          ; EB 07
;   [conditional branch target (if/else)] L_0838
L_0838:
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_08DF                          ; E8 A0 00
;   [unconditional branch target] L_083F
L_083F:
        call    far _SEG1_3A74                  ; 9A E2 05 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (57 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0850   offset=0x0850  size=57 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_2133
;-------------------------------------------------------------------------
;   [sub-routine] L_0850
L_0850:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, 0x35e                       ; B8 5E 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [si + 0x1e]                 ; 8D 44 1E
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x50], 0              ; C7 06 50 00 00 00
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [0x546]            ; A1 46 05
        sub     ax, word ptr [0x47e]            ; 2B 06 7E 04
        push    ax                              ; 50
        push    word ptr [0x548]                ; FF 36 48 05
        mov     ax, word ptr [0x54a]            ; A1 4A 05
        add     ax, word ptr [0x47e]            ; 03 06 7E 04
        push    ax                              ; 50
        mov     ax, word ptr [0x54c]            ; A1 4C 05
        add     ax, word ptr [0x480]            ; 03 06 80 04
        push    ax                              ; 50
        call    far _SEG1_643D                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1344                  ; 9A 22 09 00 00 [FIXUP]
        cmp     word ptr [0x35c], 0             ; 83 3E 5C 03 00
        je      L_08D2                          ; 74 2B
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_0D5B                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x51c], 0             ; 83 3E 1C 05 00
        jne     L_08BD                          ; 75 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_2133                          ; E8 76 18
;   [conditional branch target (if/else)] L_08BD
L_08BD:
        push    si                              ; 56
        push    word ptr [0x4dc]                ; FF 36 DC 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_1164                  ; 9A 77 05 00 00 [FIXUP]
        push    si                              ; 56
        call    far _SEG1_1810                  ; 9A D2 05 00 00 [FIXUP]
        jmp     L_08D8                          ; EB 06
;   [conditional branch target (if/else)] L_08D2
L_08D2:
        push    si                              ; 56
        call    far _SEG1_160E                  ; 9A 28 09 00 00 [FIXUP]
;   [fall-through exit] L_08D8
L_08D8:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (45 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_08DF   offset=0x08DF  size=45 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_005D, L_0766
;-------------------------------------------------------------------------
;   [sub-routine] L_08DF
L_08DF:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        cmp     word ptr [0x35c], 0             ; 83 3E 5C 03 00
        je      L_0900                          ; 74 10
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_0D98                  ; 9A FF FF 00 00 [FIXUP]
        call    far _SEG1_3889                  ; 9A 2D 09 00 00 [FIXUP]
        jmp     L_094F                          ; EB 4F
;   [conditional branch target (if/else)] L_0900
L_0900:
        call    far _entry_386                  ; 9A 1B 06 00 00 [FIXUP]
        sub     word ptr [0x518], ax            ; 29 06 18 05
        mov     word ptr [0x1be], 0             ; C7 06 BE 01 00 00
        cmp     word ptr [0x50], 0              ; 83 3E 50 00 00
        je      L_091B                          ; 74 05
        call    L_005D                          ; E8 44 F7
        jmp     L_0926                          ; EB 0B
;   [conditional branch target (if/else)] L_091B
L_091B:
        push    si                              ; 56
        mov     ax, 0x35e                       ; B8 5E 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_1344                  ; 9A 82 05 00 00 [FIXUP]
;   [unconditional branch target] L_0926
L_0926:
        push    si                              ; 56
        call    far _SEG1_160E                  ; 9A FF FF 00 00 [FIXUP]
        call    far _SEG1_3889                  ; 9A 88 06 00 00 [FIXUP]
        cmp     word ptr [0x51c], 0             ; 83 3E 1C 05 00
        jne     L_0941                          ; 75 09
        mov     ax, 0x512                       ; B8 12 05
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0766                          ; E8 25 FE
;   [conditional branch target (if/else)] L_0941
L_0941:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_18E3                  ; 9A B1 06 00 00 [FIXUP]
;   [fall-through exit] L_094F
L_094F:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (107 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0956   offset=0x0956  size=107 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_00A5
;-------------------------------------------------------------------------
;   [sub-routine] L_0956
L_0956:
        ;   = cProc <20> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [si + 0x1e]                 ; 8D 44 1E
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A 66 0A 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_097F                          ; 75 09
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_097F                          ; 75 03
        jmp     L_0A44                          ; E9 C5 00
;   [conditional branch target (if/else)] L_097F
L_097F:
        ; constant WM_GETTEXTLENGTH
        mov     al, 0xe                         ; B0 0E
        imul    byte ptr [si + 0x38]            ; F6 6C 38
        add     ax, word ptr [0x4dc]            ; 03 06 DC 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        sub     ax, word ptr [si + 0x20]        ; 2B 44 20
        add     ax, word ptr [bp + 6]           ; 03 46 06
        add     ax, word ptr [bp + 4]           ; 03 46 04
        mov     word ptr [si + 8], ax           ; 89 44 08
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_09E3                          ; 74 43
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [si + 0x24], ax        ; 01 44 24
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        sub     ax, word ptr [0x480]            ; 2B 06 80 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     di, word ptr [si]               ; 8B 3C
        mov     ax, word ptr [di + 0x24]        ; 8B 45 24
        sub     ax, word ptr [si + 0x24]        ; 2B 44 24
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, word ptr [0x464]            ; 3B 06 64 04
        jle     L_09CF                          ; 7E 0E
        add     ax, word ptr [0x480]            ; 03 06 80 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [di]               ; 8B 05
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_09DD                          ; EB 0E
;   [conditional branch target (if/else)] L_09CF
L_09CF:
        mov     ax, word ptr [0x518]            ; A1 18 05
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [unconditional branch target] L_09DD
L_09DD:
        push    di                              ; 57
        push    word ptr [bp - 6]               ; FF 76 FA
        jmp     L_0A38                          ; EB 55
;   [conditional branch target (if/else)] L_09E3
L_09E3:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     word ptr [si + 0x20], ax        ; 29 44 20
        push    word ptr [bp - 4]               ; FF 76 FC
        push    si                              ; 56
        call    far _SEG1_1377                  ; 9A E2 03 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        sub     ax, word ptr [di + 0x20]        ; 2B 45 20
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, word ptr [0x464]            ; 3B 06 64 04
        jle     L_0A18                          ; 7E 15
        mov     ax, word ptr [di + 0x20]        ; 8B 45 20
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0x480]            ; 03 06 80 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 6], di           ; 89 7E FA
        jmp     L_0A34                          ; EB 1C
;   [conditional branch target (if/else)] L_0A18
L_0A18:
        mov     ax, word ptr [0x514]            ; A1 14 05
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        add     ax, word ptr [0x480]            ; 03 06 80 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [unconditional branch target] L_0A34
L_0A34:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    si                              ; 56
;   [unconditional branch target] L_0A38
L_0A38:
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_00A5                          ; E8 61 F6
;   [unconditional branch target] L_0A44
L_0A44:
        push    si                              ; 56
        lea     ax, [si + 0x1e]                 ; 8D 44 1E
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_1344                  ; 9A 9C 08 00 00 [FIXUP]
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        mov     word ptr [si + 0x18], ax        ; 89 44 18
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
        lea     ax, [si + 0x1e]                 ; 8D 44 1E
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A 65 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (79 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0A75   offset=0x0A75  size=79 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0956, L_0B4E, L_11CE
;-------------------------------------------------------------------------
;   [sub-routine] L_0A75
L_0A75:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx + 0x24]        ; 8B 47 24
        sub     ax, word ptr [bx + 0x20]        ; 2B 47 20
        cmp     ax, word ptr [0x464]            ; 3B 06 64 04
        jge     L_0A9E                          ; 7D 12
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0A95                          ; 74 03
        jmp     L_0B46                          ; E9 B1 00
;   [conditional branch target (if/else)] L_0A95
L_0A95:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0A9E                          ; 74 03
        jmp     L_0B46                          ; E9 A8 00
;   [conditional branch target (if/else)] L_0A9E
L_0A9E:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx + 0x24]        ; 8B 47 24
        sub     ax, word ptr [bx + 0x20]        ; 2B 47 20
        add     ax, word ptr [bp + 8]           ; 03 46 08
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        cmp     ax, word ptr [0x464]            ; 3B 06 64 04
        jge     L_0AB6                          ; 7D 03
        jmp     L_0B46                          ; E9 90 00
;   [conditional branch target (if/else)] L_0AB6
L_0AB6:
        mov     ax, word ptr [bx + 0x22]        ; 8B 47 22
        sub     ax, word ptr [bx + 0x1e]        ; 2B 47 1E
        add     ax, word ptr [bp + 4]           ; 03 46 04
        add     ax, word ptr [bp + 6]           ; 03 46 06
        cmp     ax, word ptr [0x462]            ; 3B 06 62 04
        jl      L_0B46                          ; 7C 7E
        call    far _SEG1_1396                  ; 9A 8C 0C 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_11CE                          ; E8 F5 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0956                          ; E8 71 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sub     di, di                          ; 2B FF
        mov     si, di                          ; 8B F7
        cmp     word ptr [bp + 6], si           ; 39 76 06
        je      L_0AFE                          ; 74 0D
        cmp     word ptr [bp + 6], si           ; 39 76 06
        jge     L_0AFB                          ; 7D 05
        mov     di, 0x2089                      ; BF 89 20
        jmp     L_0AFE                          ; EB 03
;   [conditional branch target (if/else)] L_0AFB
L_0AFB:
        mov     si, 0x205b                      ; BE 5B 20
;   [branch target] L_0AFE
L_0AFE:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0B12                          ; 74 0E
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jge     L_0B0F                          ; 7D 05
        mov     di, 0x205b                      ; BF 5B 20
        jmp     L_0B12                          ; EB 03
;   [conditional branch target (if/else)] L_0B0F
L_0B0F:
        mov     si, 0x2089                      ; BE 89 20
;   [branch target] L_0B12
L_0B12:
        or      si, si                          ; 0B F6
        je      L_0B22                          ; 74 0C
        push    word ptr [0x53e]                ; FF 36 3E 05
        push    word ptr [0x5b6]                ; FF 36 B6 05
        mov     ax, si                          ; 8B C6
        call    ax                              ; FF D0
;   [conditional branch target (if/else)] L_0B22
L_0B22:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_0B4E                          ; E8 1D 00
        or      di, di                          ; 0B FF
        je      L_0B41                          ; 74 0C
        push    word ptr [0x53e]                ; FF 36 3E 05
        push    word ptr [0x5b6]                ; FF 36 B6 05
        mov     ax, di                          ; 8B C7
        call    ax                              ; FF D0
;   [conditional branch target (if/else)] L_0B41
L_0B41:
        call    far _SEG1_3A74                  ; 9A 40 08 00 00 [FIXUP]
;   [error/early exit] L_0B46
L_0B46:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (37 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0B4E   offset=0x0B4E  size=37 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1FD8
;-------------------------------------------------------------------------
;   [sub-routine] L_0B4E
L_0B4E:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        ; constant WM_GETTEXTLENGTH
        mov     al, 0xe                         ; B0 0E
        imul    byte ptr [si + 0x38]            ; F6 6C 38
        mov     di, ax                          ; 8B F8
        add     di, word ptr [0x4dc]            ; 03 3E DC 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_0B98                          ; 74 2C
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_0B78                          ; 7C 06
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_0B7F                          ; 7E 07
;   [conditional branch target (if/else)] L_0B78
L_0B78:
        mov     word ptr [bp - 4], 0x1ff9       ; C7 46 FC F9 1F
        jmp     L_0B84                          ; EB 05
;   [conditional branch target (if/else)] L_0B7F
L_0B7F:
        mov     word ptr [bp - 4], 0x1fd8       ; C7 46 FC D8 1F
;   [unconditional branch target] L_0B84
L_0B84:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0B91                          ; 74 07
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [si]                   ; FF 34
        jmp     L_0B95                          ; EB 04
;   [conditional branch target (if/else)] L_0B91
L_0B91:
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
;   [unconditional branch target] L_0B95
L_0B95:
        call    word ptr [bp - 4]               ; FF 56 FC
;   [conditional branch target (if/else)] L_0B98
L_0B98:
        push    word ptr [di + 0xc]             ; FF 75 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1FD8                          ; E8 37 14
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (90 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0BA9   offset=0x0BA9  size=90 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0C80, L_0FE8, L_1005
;-------------------------------------------------------------------------
;   [sub-routine] L_0BA9
L_0BA9:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    si                              ; 56
        call    L_1005                          ; E8 3D 04
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_0BF5                          ; 75 27
        or      si, si                          ; 0B F6
        jne     L_0BD5                          ; 75 03
        jmp     L_0C73                          ; E9 9E 00
;   [conditional branch target (if/else)] L_0BD5
L_0BD5:
        test    byte ptr [si + 0x33], 0x20      ; F6 44 33 20
        jne     L_0BDE                          ; 75 03
        jmp     L_0C73                          ; E9 95 00
;   [conditional branch target (if/else)] L_0BDE
L_0BDE:
        push    word ptr [si + 0x1e]            ; FF 74 1E
        push    word ptr [si + 0x20]            ; FF 74 20
        call    far _entry_397                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x618], ax            ; A3 18 06
        push    ax                              ; 50
        push    si                              ; 56
        call    far _entry_396                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0C73                          ; EB 7E
;   [conditional branch target (if/else)] L_0BF5
L_0BF5:
        mov     al, byte ptr [si + 0x33]        ; 8A 44 33
        sub     ah, ah                          ; 2A E4
        and     ax, 0x20                        ; 25 20 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_0C17                          ; 74 13
        cmp     di, 1                           ; 83 FF 01
        je      L_0C11                          ; 74 08
        push    si                              ; 56
        call    L_0FE8                          ; E8 DB 03
        or      ax, ax                          ; 0B C0
        je      L_0C73                          ; 74 62
;   [conditional branch target (if/else)] L_0C11
L_0C11:
        push    si                              ; 56
        call    far _entry_337                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0C17
L_0C17:
        mov     ax, di                          ; 8B C7
        cmp     ax, 1                           ; 3D 01 00
        je      L_0C48                          ; 74 2A
        cmp     ax, 4                           ; 3D 04 00
        je      L_0C39                          ; 74 16
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0C67                          ; 74 3E
        push    si                              ; 56
        push    word ptr [0x600]                ; FF 36 00 06
        push    word ptr [0x5e4]                ; FF 36 E4 05
        call    far _SEG1_0D32                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0C73                          ; EB 3A
;   [conditional branch target (if/else)] L_0C39
L_0C39:
        push    si                              ; 56
        push    word ptr [0x5e4]                ; FF 36 E4 05
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_06C6                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0C73                          ; EB 2B
;   [conditional branch target (if/else)] L_0C48
L_0C48:
        mov     al, byte ptr [0x618]            ; A0 18 06
        mov     byte ptr [si + 0x39], al        ; 88 44 39
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0C5C                          ; 74 08
        push    si                              ; 56
        call    far _entry_338                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0C73                          ; EB 17
;   [conditional branch target (if/else)] L_0C5C
L_0C5C:
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_0D98                  ; 9A F5 08 00 00 [FIXUP]
        jmp     L_0C73                          ; EB 0C
;   [conditional branch target (if/else)] L_0C67
L_0C67:
        push    si                              ; 56
        push    word ptr [0x600]                ; FF 36 00 06
        push    word ptr [0x5e4]                ; FF 36 E4 05
        call    L_0C80                          ; E8 0D 00
;   [branch target] L_0C73
L_0C73:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (210 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0C80   offset=0x0C80  size=210 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (first 8 of 17): L_0081, L_01F1, L_03C3, L_03FF, L_0EAF, L_0F49, L_0F9F, L_127A ...
;-------------------------------------------------------------------------
;   [sub-routine] L_0C80
L_0C80:
        ;   = cProc <28> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1c                        ; 83 EC 1C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        call    far _SEG1_1396                  ; 9A 0F 08 00 00 [FIXUP]
        mov     al, byte ptr [si + 0x38]        ; 8A 44 38
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        ; constant WM_GETTEXTLENGTH
        mov     cl, 0xe                         ; B1 0E
        imul    cl                              ; F6 E9
        mov     di, ax                          ; 8B F8
        add     di, word ptr [0x4dc]            ; 03 3E DC 04
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        add     ax, word ptr [0x4dc]            ; 03 06 DC 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0CED                          ; 7D 30
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
        dec     ax                              ; 48
        mov     word ptr [bp + 6], ax           ; 89 46 06
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        add     ax, word ptr [0x4dc]            ; 03 06 DC 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cwde                                    ; 98
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jl      L_0CE7                          ; 7C 06
        add     di, 0xe                         ; 83 C7 0E
        inc     byte ptr [bp - 6]               ; FE 46 FA
;   [conditional branch target (if/else)] L_0CE7
L_0CE7:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_2133                          ; E8 46 14
;   [conditional branch target (if/else)] L_0CED
L_0CED:
        push    si                              ; 56
        push    di                              ; 57
        call    far _SEG1_11AD                  ; 9A 45 06 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _SEG1_1164                  ; 9A C6 08 00 00 [FIXUP]
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     byte ptr [si + 0x38], al        ; 88 44 38
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_0D39                          ; 74 2D
        cmp     word ptr [di + 0xa], 0          ; 83 7D 0A 00
        je      L_0D39                          ; 74 27
        call    L_01F1                          ; E8 DC F4
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_0081                          ; E8 66 F3
        push    di                              ; 57
        call    L_0081                          ; E8 62 F3
        and     byte ptr [si + 0x2e], 0xef      ; 80 64 2E EF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_205B                          ; E8 2F 13
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x51c]                ; FF 36 1C 05
        call    L_2089                          ; E8 53 13
        jmp     L_0E98                          ; E9 5F 01
;   [conditional branch target (if/else)] L_0D39
L_0D39:
        cmp     word ptr [di + 0xa], 0          ; 83 7D 0A 00
        je      L_0D42                          ; 74 03
        jmp     L_0DE7                          ; E9 A5 00
;   [conditional branch target (if/else)] L_0D42
L_0D42:
        mov     ax, word ptr [di]               ; 8B 05
        sub     ax, word ptr [di + 4]           ; 2B 45 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cwde                                    ; 98
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        call    L_20B9                          ; E8 64 13
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_0D64                          ; 7E 07
        sub     word ptr [bp - 2], 0xe          ; 83 6E FE 0E
        dec     word ptr [bp + 6]               ; FF 4E 06
;   [conditional branch target (if/else)] L_0D64
L_0D64:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_0DCF                          ; 74 65
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cwde                                    ; 98
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jle     L_0D91                          ; 7E 12
        inc     ax                              ; 40
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [conditional branch target (if/else)] L_0D91
L_0D91:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_0F9F                          ; E8 FE 01
        push    si                              ; 56
        lea     ax, [si + 0x1e]                 ; 8D 44 1E
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_1344                  ; 9A 83 0E 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_127E                          ; E8 CC 04
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx], ax               ; 89 07
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_127A                          ; E8 BD 04
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + 4], ax           ; 89 47 04
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [si + 0x16]                 ; 8D 44 16
        push    ax                              ; 50
        call    L_0F49                          ; E8 7C 01
        jmp     L_0DD8                          ; EB 09
;   [conditional branch target (if/else)] L_0DCF
L_0DCF:
        call    L_01F1                          ; E8 1F F4
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_0081                          ; E8 A9 F2
;   [unconditional branch target] L_0DD8
L_0DD8:
        and     byte ptr [si + 0x2e], 0xef      ; 80 64 2E EF
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_203F                          ; E8 5B 12
        jmp     L_0E98                          ; E9 B1 00
;   [unconditional branch target] L_0DE7
L_0DE7:
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cwde                                    ; 98
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        je      L_0E21                          ; 74 31
        push    word ptr [bp - 2]               ; FF 76 FE
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_03C3                          ; E8 C5 F5
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    di                              ; 57
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_03FF                          ; E8 F4 F5
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    L_201C                          ; E8 05 12
        push    di                              ; 57
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    L_201C                          ; E8 FE 11
        jmp     L_0EA2                          ; E9 81 00
;   [conditional branch target (if/else)] L_0E21
L_0E21:
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        sub     ax, word ptr [si + 0x20]        ; 2B 44 20
        sub     ax, word ptr [0x480]            ; 2B 06 80 04
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_12B5                          ; E8 81 04
        cmp     ax, word ptr [si + 0x20]        ; 3B 44 20
        jle     L_0E54                          ; 7E 1B
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        jmp     L_0E62                          ; EB 0E
;   [conditional branch target (if/else)] L_0E54
L_0E54:
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
;   [unconditional branch target] L_0E62
L_0E62:
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x16]            ; FF 76 EA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    L_0EAF                          ; E8 3E 00
        and     byte ptr [si + 0x2e], 0xef      ; 80 64 2E EF
        push    di                              ; 57
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_201C                          ; E8 A0 11
        push    si                              ; 56
        lea     ax, [si + 0x1e]                 ; 8D 44 1E
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_1344                  ; 9A E3 0E 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_12B5                          ; E8 28 04
        mov     word ptr [si + 0x18], ax        ; 89 44 18
        push    word ptr [si]                   ; FF 34
        call    L_12B8                          ; E8 23 04
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
;   [unconditional branch target] L_0E98
L_0E98:
        or      byte ptr [si + 0x2e], 0x10      ; 80 4C 2E 10
        push    si                              ; 56
        call    far _SEG1_1810                  ; 9A CC 08 00 00 [FIXUP]
;   [unconditional branch target] L_0EA2
L_0EA2:
        call    far _SEG1_3A74                  ; 9A 42 0B 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (48 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0EAF   offset=0x0EAF  size=48 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0F14, L_0F49
;-------------------------------------------------------------------------
;   [sub-routine] L_0EAF
L_0EAF:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        jmp     L_0F07                          ; EB 48
;   [loop start] L_0EBF
L_0EBF:
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [si + 0x1e]                 ; 8D 44 1E
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A 6C 09 00 00 [FIXUP]
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _SEG1_6515                  ; 9A C2 0F 00 00 [FIXUP]
        push    si                              ; 56
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1344                  ; 9A 4B 0A 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0EF5                          ; 74 08
        push    si                              ; 56
        lea     ax, [si + 0x16]                 ; 8D 44 16
        push    ax                              ; 50
        call    L_0F14                          ; E8 1F 00
;   [conditional branch target (if/else)] L_0EF5
L_0EF5:
        or      di, di                          ; 0B FF
        je      L_0F05                          ; 74 0C
        mov     al, byte ptr [si + 0x38]        ; 8A 44 38
        cwde                                    ; 98
        push    ax                              ; 50
        lea     ax, [si + 0x16]                 ; 8D 44 16
        push    ax                              ; 50
        call    L_0F49                          ; E8 44 00
;   [conditional branch target (if/else)] L_0F05
L_0F05:
        mov     si, word ptr [si]               ; 8B 34
;   [unconditional branch target] L_0F07
L_0F07:
        cmp     word ptr [bp + 8], si           ; 39 76 08
        jne     L_0EBF                          ; 75 B3
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F14   offset=0x0F14  size=21 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0F14
L_0F14:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, word ptr [0x480]            ; A1 80 04
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [si + 2], 4            ; 83 7C 02 04
        jg      L_0F31                          ; 7F 05
        mov     word ptr [si + 2], 0            ; C7 44 02 00 00
;   [conditional branch target (if/else)] L_0F31
L_0F31:
        mov     ax, word ptr [0x518]            ; A1 18 05
        sub     ax, 4                           ; 2D 04 00
        cmp     word ptr [si + 6], ax           ; 39 44 06
        jl      L_0F42                          ; 7C 06
        mov     ax, word ptr [0x518]            ; A1 18 05
        mov     word ptr [si + 6], ax           ; 89 44 06
;   [error/early exit] L_0F42
L_0F42:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F49   offset=0x0F49  size=36 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0F49
L_0F49:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     di, ax                          ; 8B F8
        add     di, word ptr [0x4dc]            ; 03 3E DC 04
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0F6F                          ; 74 09
        mov     ax, word ptr [0x47e]            ; A1 7E 04
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [di]               ; 03 05
        jmp     L_0F71                          ; EB 02
;   [conditional branch target (if/else)] L_0F6F
L_0F6F:
        mov     ax, word ptr [di]               ; 8B 05
;   [unconditional branch target] L_0F71
L_0F71:
        sub     ax, word ptr [0x47e]            ; 2B 06 7E 04
        mov     word ptr [si], ax               ; 89 04
        mov     ax, word ptr [0x51c]            ; A1 1C 05
        dec     ax                              ; 48
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_0F8D                          ; 74 0D
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        mov     cx, word ptr [0x47e]            ; 8B 0E 7E 04
        sar     cx, 1                           ; D1 F9
        add     ax, cx                          ; 03 C1
        jmp     L_0F94                          ; EB 07
;   [conditional branch target (if/else)] L_0F8D
L_0F8D:
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        add     ax, word ptr [0x47e]            ; 03 06 7E 04
;   [unconditional branch target] L_0F94
L_0F94:
        mov     word ptr [si + 4], ax           ; 89 44 04
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (35 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F9F   offset=0x0F9F  size=35 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0EAF
;-------------------------------------------------------------------------
;   [sub-routine] L_0F9F
L_0F9F:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        imul    si                              ; F7 EE
        mov     di, ax                          ; 8B F8
        add     di, word ptr [0x4dc]            ; 03 3E DC 04
        jmp     L_0FD8                          ; EB 21
;   [loop start] L_0FB7
L_0FB7:
        mov     ax, di                          ; 8B C7
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_6515                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, di                          ; 8B DF
        add     di, 0xe                         ; 83 C7 0E
        push    word ptr [bx + 0xc]             ; FF 77 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        call    L_0EAF                          ; E8 D7 FE
;   [unconditional branch target] L_0FD8
L_0FD8:
        mov     ax, si                          ; 8B C6
        inc     si                              ; 46
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_0FB7                          ; 75 D7
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_0FE8   offset=0x0FE8  size=16 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0FE8
L_0FE8:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        push    si                              ; 56
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (172 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1005   offset=0x1005  size=172 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_11AB, L_12E4
;-------------------------------------------------------------------------
;   [sub-routine] L_1005
L_1005:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        cmp     word ptr [0x1be], 0             ; 83 3E BE 01 00
        je      L_1016                          ; 74 05
        xor     ax, ax                          ; 33 C0
        jmp     L_11A3                          ; E9 8D 01
;   [conditional branch target (if/else)] L_1016
L_1016:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x78], ax             ; A3 78 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     bx, ax                          ; 8B D8
        mov     word ptr [0x7a], ax             ; A3 7A 00
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        or      dx, dx                          ; 0B D2
        jne     L_1033                          ; 75 08
        mov     dl, byte ptr [0x46a]            ; 8A 16 6A 04
        mov     dh, byte ptr [0x46c]            ; 8A 36 6C 04
;   [conditional branch target (if/else)] L_1033
L_1033:
        shr     dx, 1                           ; D1 EA
        mov     bx, word ptr [0x518]            ; 8B 1E 18 05
        cmp     ax, bx                          ; 3B C3
        jl      L_106C                          ; 7C 2F
        sub     al, dh                          ; 2A C6
        sbb     ah, 0                           ; 80 DC 00
        cmp     ax, bx                          ; 3B C3
        jl      L_1069                          ; 7C 23
        push    word ptr [0x78]                 ; FF 36 78 00
        push    word ptr [0x7a]                 ; FF 36 7A 00
        call    far _entry_397                  ; 9A E5 0B 00 00 [FIXUP]
        mov     word ptr [0x618], ax            ; A3 18 06
        push    ax                              ; 50
        call    far _entry_434                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1063                          ; 74 03
        jmp     L_11A0                          ; E9 3D 01
;   [conditional branch target (if/else)] L_1063
L_1063:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_11A3                          ; E9 3A 01
;   [conditional branch target (if/else)] L_1069
L_1069:
        mov     word ptr [0x7a], ax             ; A3 7A 00
;   [conditional branch target (if/else)] L_106C
L_106C:
        push    dx                              ; 52
        push    word ptr [0x7a]                 ; FF 36 7A 00
        push    word ptr [0x78]                 ; FF 36 78 00
        xor     ax, ax                          ; 33 C0
        mov     word ptr [0x600], ax            ; A3 00 06
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_4FAC                  ; 9A FF FF 00 00 [FIXUP]
        pop     dx                              ; 5A
        mov     word ptr [0x5e4], ax            ; A3 E4 05
        mov     si, ax                          ; 8B F0
        or      ax, ax                          ; 0B C0
        jne     L_108E                          ; 75 03
        jmp     L_119B                          ; E9 0D 01
;   [conditional branch target (if/else)] L_108E
L_108E:
        xor     ax, ax                          ; 33 C0
        mov     al, byte ptr [si + 0x38]        ; 8A 44 38
        mov     word ptr [0x600], ax            ; A3 00 06
        mov     ax, word ptr [0x7a]             ; A1 7A 00
        mov     bx, ax                          ; 8B D8
        sub     al, dh                          ; 2A C6
        sbb     ah, 0                           ; 80 DC 00
        cmp     ax, word ptr [si + 0x20]        ; 3B 44 20
        jge     L_10B9                          ; 7D 14
        mov     al, byte ptr [0x600]            ; A0 00 06
        call    L_12E4                          ; E8 39 02
        push    ax                              ; 50
        push    si                              ; 56
        call    far _SEG1_1377                  ; 9A EE 09 00 00 [FIXUP]
        xor     cl, cl                          ; 32 C9
        mov     word ptr [0x5e4], ax            ; A3 E4 05
        jmp     L_110A                          ; EB 51
;   [conditional branch target (if/else)] L_10B9
L_10B9:
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        add     bl, dh                          ; 02 DE
        adc     bh, 0                           ; 80 D7 00
        cmp     bx, word ptr [si + 0x24]        ; 3B 5C 24
        jge     L_110A                          ; 7D 45
        inc     cl                              ; FE C1
        mov     ax, word ptr [0x78]             ; A1 78 00
        mov     bx, ax                          ; 8B D8
        sub     al, dl                          ; 2A C2
        sbb     ah, 0                           ; 80 DC 00
        cmp     ax, word ptr [si + 0x1e]        ; 3B 44 1E
        jge     L_10DB                          ; 7D 05
        mov     ax, word ptr [0x600]            ; A1 00 06
        jmp     L_10ED                          ; EB 12
;   [conditional branch target (if/else)] L_10DB
L_10DB:
        inc     cl                              ; FE C1
        mov     ax, bx                          ; 8B C3
        add     al, dl                          ; 02 C2
        adc     ah, 0                           ; 80 D4 00
        cmp     ax, word ptr [si + 0x22]        ; 3B 44 22
        jl      L_10F5                          ; 7C 0C
        mov     ax, word ptr [0x600]            ; A1 00 06
        inc     ax                              ; 40
;   [unconditional branch target] L_10ED
L_10ED:
        inc     ax                              ; 40
        neg     ax                              ; F7 D8
        mov     word ptr [0x600], ax            ; A3 00 06
        jmp     L_110A                          ; EB 15
;   [conditional branch target (if/else)] L_10F5
L_10F5:
        inc     cl                              ; FE C1
        test    byte ptr [si + 0x33], 8         ; F6 44 33 08
        je      L_1105                          ; 74 08
        xor     ax, ax                          ; 33 C0
        mov     word ptr [0x5e4], ax            ; A3 E4 05
        jmp     L_11A3                          ; E9 9E 00
;   [conditional branch target (if/else)] L_1105
L_1105:
        mov     ax, 4                           ; B8 04 00
        jmp     L_110D                          ; EB 03
;   [branch target] L_110A
L_110A:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
;   [unconditional branch target] L_110D
L_110D:
        call    L_11AB                          ; E8 9B 00
        or      ax, ax                          ; 0B C0
        jne     L_1117                          ; 75 03
        jmp     L_11A3                          ; E9 8C 00
;   [conditional branch target (if/else)] L_1117
L_1117:
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        or      di, di                          ; 0B FF
        jne     L_1121                          ; 75 03
        jmp     L_11A3                          ; E9 82 00
;   [conditional branch target (if/else)] L_1121
L_1121:
        test    byte ptr [di + 0x33], 0x20      ; F6 45 33 20
        je      L_112A                          ; 74 03
        jmp     L_11A3                          ; EB 7A
        nop                                     ; 90
;   [conditional branch target (if/else)] L_112A
L_112A:
        cmp     cl, 2                           ; 80 F9 02
        jge     L_114A                          ; 7D 1B
        cmp     si, di                          ; 3B F7
        je      L_11A0                          ; 74 6D
        or      cl, cl                          ; 0A C9
        jne     L_1141                          ; 75 0A
        or      si, si                          ; 0B F6
        je      L_113F                          ; 74 04
        cmp     si, word ptr [di]               ; 3B 35
        je      L_11A0                          ; 74 61
;   [conditional branch target (if/else)] L_113F
L_113F:
        jmp     L_119B                          ; EB 5A
;   [conditional branch target (if/else)] L_1141
L_1141:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, word ptr [si]               ; 3B 04
        je      L_11A0                          ; 74 58
        jmp     L_119B                          ; EB 51
;   [conditional branch target (if/else)] L_114A
L_114A:
        cmp     cl, 4                           ; 80 F9 04
        je      L_1191                          ; 74 42
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     ch, byte ptr [di + 0x38]        ; 8A 6D 38
        ; constant WM_SETTEXT
        mov     al, ch                          ; 8A C5
        call    L_12E4                          ; E8 8A 01
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [0x5e2]            ; A0 E2 05
        cmp     al, byte ptr [0x51c]            ; 3A 06 1C 05
        je      L_11A0                          ; 74 3B
        mov     al, byte ptr [bx + 0xa]         ; 8A 47 0A
        dec     al                              ; FE C8
        jne     L_1187                          ; 75 1B
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        cmp     di, si                          ; 3B FE
        je      L_11A0                          ; 74 2D
        mov     bl, byte ptr [si + 0x38]        ; 8A 5C 38
        ; constant WM_SETTEXT
        mov     al, ch                          ; 8A C5
        cmp     cl, 2                           ; 80 F9 02
        jne     L_1181                          ; 75 04
        inc     al                              ; FE C0
        inc     al                              ; FE C0
;   [conditional branch target (if/else)] L_1181
L_1181:
        dec     al                              ; FE C8
        cmp     al, bl                          ; 3A C3
        je      L_11A0                          ; 74 19
;   [conditional branch target (if/else)] L_1187
L_1187:
        xor     ax, ax                          ; 33 C0
        mov     word ptr [0x5e4], ax            ; A3 E4 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_11A3                          ; EB 12
;   [conditional branch target (if/else)] L_1191
L_1191:
        cmp     si, word ptr [bp + 4]           ; 3B 76 04
        je      L_11A0                          ; 74 0A
        mov     ax, 4                           ; B8 04 00
        jmp     L_11A3                          ; EB 08
;   [unconditional branch target] L_119B
L_119B:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_11A3                          ; EB 03
;   [branch target] L_11A0
L_11A0:
        mov     ax, 0                           ; B8 00 00
;   [fall-through exit] L_11A3
L_11A3:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_11AB   offset=0x11AB  size=16 instr  segment=seg12.asm
;
; Classification (pass8): unclear  (score C=1, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_11AB
L_11AB:
        push    ax                              ; 50
        cmp     cl, 2                           ; 80 F9 02
        jl      L_11CC                          ; 7C 1B
        cmp     cl, 4                           ; 80 F9 04
        je      L_11CC                          ; 74 16
        mov     al, byte ptr [0x5e2]            ; A0 E2 05
        cmp     al, byte ptr [0x51c]            ; 3A 06 1C 05
        jne     L_11CC                          ; 75 0D
        or      di, di                          ; 0B FF
        je      L_11C7                          ; 74 04
        test    byte ptr [di + 0x33], 0x20      ; F6 45 33 20
;   [error/early exit] L_11C7
L_11C7:
        pop     ax                              ; 58
        mov     ax, 0                           ; B8 00 00
        ret                                     ; C3
;   [error/early exit] L_11CC
L_11CC:
        pop     ax                              ; 58
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (82 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_11CE   offset=0x11CE  size=82 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_020E, L_12E4
;-------------------------------------------------------------------------
;   [sub-routine] L_11CE
L_11CE:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        xor     ax, ax                          ; 33 C0
        mov     al, byte ptr [si + 0x38]        ; 8A 44 38
        mov     bx, ax                          ; 8B D8
        call    L_12E4                          ; E8 04 01
        mov     si, ax                          ; 8B F0
        lea     si, [si]                        ; 8D 34
        lea     di, [si + 4]                    ; 8D 7C 04
        push    word ptr [si]                   ; FF 34
        push    word ptr [di]                   ; FF 35
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        je      L_1214                          ; 74 22
        sub     word ptr [si], ax               ; 29 04
        mov     cx, word ptr [si]               ; 8B 0C
        xor     ax, ax                          ; 33 C0
        mov     dl, al                          ; 8A D0
        push    ax                              ; 50
        mov     dh, bl                          ; 8A F3
        mov     ax, cx                          ; 8B C1
        sub     ax, word ptr [si - 0xe]         ; 2B 44 F2
        cmp     ax, word ptr [0x462]            ; 3B 06 62 04
        jl      L_123F                          ; 7C 37
        mov     cx, ax                          ; 8B C8
        mov     dl, bl                          ; 8A D3
        dec     dl                              ; FE CA
        pop     ax                              ; 58
        push    word ptr [si - 0xe]             ; FF 74 F2
        jmp     L_123F                          ; EB 2B
;   [conditional branch target (if/else)] L_1214
L_1214:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, ax                          ; 0B C0
        je      L_126D                          ; 74 52
        add     word ptr [di], ax               ; 01 05
        push    word ptr [di]                   ; FF 35
        mov     cx, word ptr [0x516]            ; 8B 0E 16 05
        sub     cx, word ptr [di]               ; 2B 0D
        mov     dl, bl                          ; 8A D3
        inc     dl                              ; FE C2
        mov     dh, byte ptr [0x51c]            ; 8A 36 1C 05
        mov     ax, word ptr [di + 0xe]         ; 8B 45 0E
        sub     ax, word ptr [di]               ; 2B 05
        cmp     ax, word ptr [0x462]            ; 3B 06 62 04
        jl      L_123F                          ; 7C 07
        mov     cx, ax                          ; 8B C8
        mov     dh, bl                          ; 8A F3
        add     dh, 2                           ; 80 C6 02
;   [branch target] L_123F
L_123F:
        mov     ax, word ptr [di]               ; 8B 05
        sub     ax, word ptr [si]               ; 2B 04
        cmp     ax, word ptr [0x462]            ; 3B 06 62 04
        jge     L_1250                          ; 7D 07
        pop     ax                              ; 58
        pop     word ptr [di]                   ; 8F 05
        pop     word ptr [si]                   ; 8F 04
        jmp     L_126F                          ; EB 1F
;   [conditional branch target (if/else)] L_1250
L_1250:
        pop     di                              ; 5F
        push    bx                              ; 53
        inc     bx                              ; 43
        push    bx                              ; 53
        push    word ptr [si]                   ; FF 34
        push    ax                              ; 50
        mov     bl, dl                          ; 8A DA
        mov     word ptr [0x53e], bx            ; 89 1E 3E 05
        push    bx                              ; 53
        ; constant VK_RETURN
        mov     bl, dh                          ; 8A DE
        mov     word ptr [0x5b6], bx            ; 89 1E B6 05
        push    bx                              ; 53
        push    di                              ; 57
        push    cx                              ; 51
        call    L_020E                          ; E8 A4 EF
        call    L_020E                          ; E8 A1 EF
;   [conditional branch target (if/else)] L_126D
L_126D:
        pop     ax                              ; 58
        pop     ax                              ; 58
;   [fall-through exit] L_126F
L_126F:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
        mov     bx, word ptr [di + 0xc]         ; 8B 5D 0C
; Description (heuristic):
;   Internal helper (2 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_127A   offset=0x127A  size=2 instr  segment=seg12.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_127A
L_127A:
        xor     dl, dl                          ; 32 D2
        jmp     L_1280                          ; EB 02
; Description (heuristic):
;   Pure computation / dispatcher (24 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_127E   offset=0x127E  size=24 instr  segment=seg12.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_12E4
;-------------------------------------------------------------------------
;   [sub-routine] L_127E
L_127E:
        ; constant WM_CREATE
        mov     dl, 1                           ; B2 01
;   [unconditional branch target] L_1280
L_1280:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     cl, al                          ; 8A C8
        call    L_12E4                          ; E8 59 00
        mov     bx, ax                          ; 8B D8
        or      dl, dl                          ; 0A D2
        je      L_129D                          ; 74 0C
        mov     ax, word ptr [bx - 0xa]         ; 8B 47 F6
        or      cl, cl                          ; 0A C9
        jne     L_12AB                          ; 75 13
        mov     ax, word ptr [0x512]            ; A1 12 05
        jmp     L_12AB                          ; EB 0E
;   [conditional branch target (if/else)] L_129D
L_129D:
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        inc     cl                              ; FE C1
        cmp     cl, byte ptr [0x51c]            ; 3A 0E 1C 05
        jne     L_12AB                          ; 75 03
        mov     ax, word ptr [0x516]            ; A1 16 05
;   [error/early exit] L_12AB
L_12AB:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        mov     ax, word ptr [0x1be]            ; A1 BE 01
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (2 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_12B5   offset=0x12B5  size=2 instr  segment=seg12.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_12B5
L_12B5:
        clc                                     ; F8
        jmp     L_12B9                          ; EB 01
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_12B8   offset=0x12B8  size=19 instr  segment=seg12.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_12B8
L_12B8:
        stc                                     ; F9
;   [unconditional branch target] L_12B9
L_12B9:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        jb      L_12D0                          ; 72 0F
        xor     ax, ax                          ; 33 C0
        or      bx, bx                          ; 0B DB
        je      L_12DE                          ; 74 17
        mov     ax, word ptr [bx + 0x24]        ; 8B 47 24
        sub     ax, word ptr [0x480]            ; 2B 06 80 04
        jmp     L_12DE                          ; EB 0E
;   [conditional branch target (if/else)] L_12D0
L_12D0:
        or      bx, bx                          ; 0B DB
        mov     ax, word ptr [0x518]            ; A1 18 05
        je      L_12DE                          ; 74 07
        mov     ax, word ptr [bx + 0x20]        ; 8B 47 20
        add     ax, word ptr [0x480]            ; 03 06 80 04
;   [error/early exit] L_12DE
L_12DE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (69 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_12E4   offset=0x12E4  size=69 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1385, L_1CB5, L_1F40
;-------------------------------------------------------------------------
;   [sub-routine] L_12E4
L_12E4:
        push    cx                              ; 51
        ; constant WM_GETTEXTLENGTH
        mov     ch, 0xe                         ; B5 0E
        mul     ch                              ; F6 E5
        add     ax, word ptr [0x4dc]            ; 03 06 DC 04
        pop     cx                              ; 59
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
        push    si                              ; 56
        mov     si, word ptr [bp + 0x10]        ; 8B 76 10
        call    far _SEG1_376A                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_131F                          ; 74 14
        push    si                              ; 56
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1385                          ; E8 68 00
        jmp     L_1379                          ; EB 5A
;   [conditional branch target (if/else)] L_131F
L_131F:
        test    byte ptr [si + 0x33], 0xc0      ; F6 44 33 C0
        je      L_1337                          ; 74 12
        push    si                              ; 56
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1F40                          ; E8 0B 0C
        jmp     L_1379                          ; EB 42
;   [conditional branch target (if/else)] L_1337
L_1337:
        test    byte ptr [si + 0x33], 0x20      ; F6 44 33 20
        je      L_134B                          ; 74 0E
        mov     word ptr [0x626], si            ; 89 36 26 06
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_476                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_134B
L_134B:
        mov     bx, word ptr [si + 4]           ; 8B 5C 04
        mov     ax, word ptr [bx + 0x16]        ; 8B 47 16
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_135E                          ; 75 06
        mov     ax, word ptr [0x62c]            ; A1 2C 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_135E
L_135E:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x3da]                ; FF 36 DA 03
        call    far _SEG1_3737                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, OFFSET _entry_532           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_532           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1CB5                          ; E8 3C 09
;   [unconditional branch target] L_1379
L_1379:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; Description (heuristic):
;   Pure computation / dispatcher (404 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1385   offset=0x1385  size=404 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0A75, L_17F2, L_18E0, L_1A67, L_1CB5, L_1D3C, L_1EA2
;-------------------------------------------------------------------------
;   [sub-routine] L_1385
L_1385:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x386], ax            ; A3 86 03
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x378], ax            ; A3 78 03
        mov     word ptr [0x384], ax            ; A3 84 03
        mov     word ptr [0x38a], ax            ; A3 8A 03
        mov     word ptr [0x38c], ax            ; A3 8C 03
        push    si                              ; 56
        call    L_18E0                          ; E8 35 05
        test    byte ptr [si + 0x33], 0x40      ; F6 44 33 40
        je      L_13C5                          ; 74 14
        mov     ax, 0x37c                       ; B8 7C 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x38]        ; 8B 44 38
        add     ax, 0x26                        ; 05 26 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A C1 16 00 00 [FIXUP]
        jmp     L_13DE                          ; EB 19
;   [conditional branch target (if/else)] L_13C5
L_13C5:
        mov     ax, 0x37c                       ; B8 7C 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0x516]            ; A1 16 05
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0x518]            ; A1 18 05
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _SEG1_643D                  ; 9A 91 08 00 00 [FIXUP]
;   [unconditional branch target] L_13DE
L_13DE:
        test    byte ptr [si + 0x33], 0x80      ; F6 44 33 80
        jne     L_13EE                          ; 75 0A
        mov     ax, 0x37c                       ; B8 7C 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_5D22                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_13EE
L_13EE:
        mov     word ptr [0x36e], 0             ; C7 06 6E 03 00 00
        mov     word ptr [0x388], 3             ; C7 06 88 03 03 00
        push    word ptr [0x5f0]                ; FF 36 F0 05
        call    far _SEG1_375A                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, OFFSET _entry_531           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_531           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1CB5                          ; E8 A3 08
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x100                       ; 3D 00 01
        je      L_145D                          ; 74 28
        cmp     ax, 0x101                       ; 3D 01 01
        jne     L_143D                          ; 75 03
        jmp     L_17E5                          ; E9 A8 03
;   [conditional branch target (if/else)] L_143D
L_143D:
        cmp     ax, 0x104                       ; 3D 04 01
        je      L_145D                          ; 74 1B
        cmp     ax, 0x105                       ; 3D 05 01
        jne     L_144A                          ; 75 03
        jmp     L_17E5                          ; E9 9B 03
;   [conditional branch target (if/else)] L_144A
L_144A:
        cmp     ax, 0x200                       ; 3D 00 02
        jne     L_1452                          ; 75 03
        jmp     L_15E9                          ; E9 97 01
;   [conditional branch target (if/else)] L_1452
L_1452:
        cmp     ax, 0x202                       ; 3D 02 02
        jne     L_145A                          ; 75 03
        jmp     L_15E9                          ; E9 8F 01
;   [conditional branch target (if/else)] L_145A
L_145A:
        jmp     L_17E5                          ; E9 88 03
;   [conditional branch target (if/else)] L_145D
L_145D:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_1472                          ; 74 0D
        jbe     L_146A                          ; 76 03
        jmp     L_15CE                          ; E9 64 01
;   [conditional branch target (if/else)] L_146A
L_146A:
        cmp     ax, 3                           ; 3D 03 00
        je      L_1472                          ; 74 03
        jmp     L_17E5                          ; E9 73 03
;   [loop start (also forward branch)] L_1472
L_1472:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_17F2                          ; E8 7A 03
        call    far _SEG1_329D                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x38a], ax            ; A3 8A 03
        mov     word ptr [0x38c], dx            ; 89 16 8C 03
        mov     si, ax                          ; 8B F0
        mov     di, dx                          ; 8B FA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 0x25                        ; 2D 25 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jge     L_1498                          ; 7D 03
        jmp     L_160F                          ; E9 77 01
;   [conditional branch target (if/else)] L_1498
L_1498:
        cmp     ax, 3                           ; 3D 03 00
        jle     L_14A0                          ; 7E 03
        jmp     L_160F                          ; E9 6F 01
;   [conditional branch target (if/else)] L_14A0
L_14A0:
        test    byte ptr [bp - 0xc], 1          ; F6 46 F4 01
        je      L_14AD                          ; 74 07
        mov     word ptr [bp - 0x14], 2         ; C7 46 EC 02 00
        jmp     L_14B2                          ; EB 05
;   [conditional branch target (if/else)] L_14AD
L_14AD:
        mov     word ptr [bp - 0x14], 1         ; C7 46 EC 01 00
;   [unconditional branch target] L_14B2
L_14B2:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        and     ax, word ptr [0x388]            ; 23 06 88 03
        cmp     ax, word ptr [bp - 0x14]        ; 3B 46 EC
        je      L_14C1                          ; 74 03
        jmp     L_1576                          ; E9 B5 00
;   [conditional branch target (if/else)] L_14C1
L_14C1:
        mov     word ptr [0x36e], 7             ; C7 06 6E 03 07 00
        cmp     word ptr [0x386], 0             ; 83 3E 86 03 00
        je      L_14ED                          ; 74 1F
        mov     word ptr [0x386], 0             ; C7 06 86 03 00 00
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     ax, word ptr [bx + 0x22]        ; 8B 47 22
        add     ax, word ptr [bx + 0x1e]        ; 03 47 1E
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0x38a], ax            ; A3 8A 03
        mov     ax, word ptr [bx + 0x24]        ; 8B 47 24
        add     ax, word ptr [bx + 0x20]        ; 03 47 20
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0x38c], ax            ; A3 8C 03
;   [conditional branch target (if/else)] L_14ED
L_14ED:
        test    byte ptr [bp - 0xc], 1          ; F6 46 F4 01
        je      L_1507                          ; 74 14
        mov     ax, word ptr [0x38a]            ; A1 8A 03
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     ax, word ptr [bx + 0x22]        ; 8B 47 22
        add     ax, word ptr [bx + 0x1e]        ; 03 47 1E
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0x38a], ax            ; A3 8A 03
;   [conditional branch target (if/else)] L_1507
L_1507:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_1A67                          ; E8 57 05
        mov     si, word ptr [0x38a]            ; 8B 36 8A 03
        mov     di, word ptr [0x38c]            ; 8B 3E 8C 03
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        xor     word ptr [0x388], ax            ; 31 06 88 03
        test    byte ptr [bp - 0xc], 1          ; F6 46 F4 01
        je      L_154F                          ; 74 2A
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        mov     word ptr [bp - 0x14], 2         ; C7 46 EC 02 00
        cmp     word ptr [bp - 0xc], 1          ; 83 7E F4 01
        jle     L_1541                          ; 7E 0E
        cmp     word ptr [0x382], di            ; 39 3E 82 03
        jle     L_1590                          ; 7E 57
        mov     word ptr [0x384], 0xffff        ; C7 06 84 03 FF FF
        jmp     L_1590                          ; EB 4F
;   [conditional branch target (if/else)] L_1541
L_1541:
        cmp     word ptr [0x37e], di            ; 39 3E 7E 03
        jge     L_1590                          ; 7D 49
        mov     word ptr [0x384], 1             ; C7 06 84 03 01 00
        jmp     L_1590                          ; EB 41
;   [conditional branch target (if/else)] L_154F
L_154F:
        mov     word ptr [bp - 0x14], 1         ; C7 46 EC 01 00
        cmp     word ptr [bp - 0xc], 1          ; 83 7E F4 01
        jle     L_1568                          ; 7E 0E
        cmp     word ptr [0x380], si            ; 39 36 80 03
        jle     L_1590                          ; 7E 30
        mov     word ptr [0x378], 0xffff        ; C7 06 78 03 FF FF
        jmp     L_1590                          ; EB 28
;   [conditional branch target (if/else)] L_1568
L_1568:
        cmp     word ptr [0x37c], si            ; 39 36 7C 03
        jge     L_1590                          ; 7D 22
        mov     word ptr [0x378], 1             ; C7 06 78 03 01 00
        jmp     L_1590                          ; EB 1A
;   [unconditional branch target] L_1576
L_1576:
        shl     word ptr [bp - 0xc], 1          ; D1 66 F4
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     al, byte ptr [bx + 0x2fe]       ; 8A 87 FE 02
        cwde                                    ; 98
        add     di, ax                          ; 03 F8
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     al, byte ptr [bx + 0x2fe]       ; 8A 87 FE 02
        cwde                                    ; 98
        add     si, ax                          ; 03 F0
;   [branch target] L_1590
L_1590:
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        test    byte ptr [bx + 0x33], 0xc0      ; F6 47 33 C0
        jne     L_15C5                          ; 75 2C
        push    word ptr [0x370]                ; FF 36 70 03
        push    word ptr [0x374]                ; FF 36 74 03
        push    si                              ; 56
        call    far _SEG1_523C                  ; 9A B9 15 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _SEG1_524C                  ; 9A BF 15 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        push    word ptr [0x372]                ; FF 36 72 03
        push    word ptr [0x376]                ; FF 36 76 03
        push    di                              ; 57
        call    far _SEG1_523C                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _SEG1_524C                  ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
;   [conditional branch target (if/else)] L_15C5
L_15C5:
        push    si                              ; 56
        push    di                              ; 57
        call    far _SEG1_3470                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_160F                          ; EB 41
;   [unconditional branch target] L_15CE
L_15CE:
        cmp     ax, 0x1b                        ; 3D 1B 00
        jne     L_15D6                          ; 75 03
        jmp     L_1472                          ; E9 9C FE
;   [conditional branch target (if/else)] L_15D6
L_15D6:
        cmp     ax, 0x25                        ; 3D 25 00
        jae     L_15DE                          ; 73 03
        jmp     L_17E5                          ; E9 07 02
;   [conditional branch target (if/else)] L_15DE
L_15DE:
        cmp     ax, 0x28                        ; 3D 28 00
        ja      L_15E6                          ; 77 03
        jmp     L_1472                          ; E9 8C FE
;   [conditional branch target (if/else)] L_15E6
L_15E6:
        jmp     L_17E5                          ; E9 FC 01
;   [unconditional branch target] L_15E9
L_15E9:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_17F2                          ; E8 03 02
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     dx, dx                          ; 2B D2
        mov     di, ax                          ; 8B F8
        cmp     di, word ptr [0x38c]            ; 3B 3E 8C 03
        je      L_1600                          ; 74 04
        mov     word ptr [0x388], dx            ; 89 16 88 03
;   [conditional branch target (if/else)] L_1600
L_1600:
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        cmp     si, word ptr [0x38a]            ; 3B 36 8A 03
        je      L_160F                          ; 74 06
        mov     word ptr [0x388], 0             ; C7 06 88 03 00 00
;   [branch target] L_160F
L_160F:
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [bx + 0x24]        ; 2B 47 24
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bx + 0x20]        ; 8B 47 20
        sub     ax, di                          ; 2B C7
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bx + 0x1e]        ; 8B 47 1E
        sub     ax, si                          ; 2B C6
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [bx + 0x22]        ; 2B 47 22
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_1D3C                          ; E8 01 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_1645                          ; 75 03
        jmp     L_173A                          ; E9 F5 00
;   [conditional branch target (if/else)] L_1645
L_1645:
        or      ax, ax                          ; 0B C0
        jg      L_164C                          ; 7F 03
        jmp     L_17E5                          ; E9 99 01
;   [conditional branch target (if/else)] L_164C
L_164C:
        cmp     word ptr [0x384], 0             ; 83 3E 84 03 00
        jne     L_165D                          ; 75 0A
        cmp     word ptr [0x378], 0             ; 83 3E 78 03 00
        jne     L_165D                          ; 75 03
        jmp     L_17E5                          ; E9 88 01
;   [conditional branch target (if/else)] L_165D
L_165D:
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        test    byte ptr [bx + 0x33], 0xc0      ; F6 47 33 C0
        jne     L_16B3                          ; 75 4D
        cmp     word ptr [0x36e], 7             ; 83 3E 6E 03 07
        jge     L_1670                          ; 7D 03
        jmp     L_17E5                          ; E9 75 01
;   [conditional branch target (if/else)] L_1670
L_1670:
        push    bx                              ; 53
        cmp     word ptr [0x384], 0             ; 83 3E 84 03 00
        jle     L_167D                          ; 7E 05
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        jmp     L_167F                          ; EB 02
;   [conditional branch target (if/else)] L_167D
L_167D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_167F
L_167F:
        push    ax                              ; 50
        cmp     word ptr [0x384], 0             ; 83 3E 84 03 00
        jge     L_168C                          ; 7D 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_168E                          ; EB 02
;   [conditional branch target (if/else)] L_168C
L_168C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_168E
L_168E:
        push    ax                              ; 50
        cmp     word ptr [0x378], 0             ; 83 3E 78 03 00
        jle     L_169B                          ; 7E 05
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        jmp     L_169D                          ; EB 02
;   [conditional branch target (if/else)] L_169B
L_169B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_169D
L_169D:
        push    ax                              ; 50
        cmp     word ptr [0x378], 0             ; 83 3E 78 03 00
        jge     L_16AA                          ; 7D 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_16AC                          ; EB 02
;   [conditional branch target (if/else)] L_16AA
L_16AA:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_16AC
L_16AC:
        push    ax                              ; 50
        call    L_0A75                          ; E8 C5 F3
        jmp     L_17E5                          ; E9 32 01
;   [conditional branch target (if/else)] L_16B3
L_16B3:
        mov     ax, 0x37c                       ; B8 7C 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        add     ax, 0x1e                        ; 05 1E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A CA 0E 00 00 [FIXUP]
        cmp     word ptr [0x384], 0             ; 83 3E 84 03 00
        jle     L_16D2                          ; 7E 06
        mov     word ptr [0x37e], di            ; 89 3E 7E 03
        jmp     L_16DD                          ; EB 0B
;   [conditional branch target (if/else)] L_16D2
L_16D2:
        cmp     word ptr [0x384], 0             ; 83 3E 84 03 00
        jge     L_16DD                          ; 7D 04
        mov     word ptr [0x382], di            ; 89 3E 82 03
;   [branch target] L_16DD
L_16DD:
        cmp     word ptr [0x378], 0             ; 83 3E 78 03 00
        jle     L_16EA                          ; 7E 06
        mov     word ptr [0x37c], si            ; 89 36 7C 03
        jmp     L_16F5                          ; EB 0B
;   [conditional branch target (if/else)] L_16EA
L_16EA:
        cmp     word ptr [0x378], 0             ; 83 3E 78 03 00
        jge     L_16F5                          ; 7D 04
        mov     word ptr [0x380], si            ; 89 36 80 03
;   [branch target] L_16F5
L_16F5:
        mov     si, word ptr [0x380]            ; 8B 36 80 03
        mov     ax, word ptr [0x37c]            ; A1 7C 03
        sub     si, ax                          ; 2B F0
        mov     ax, word ptr [0x462]            ; A1 62 04
        cmp     si, ax                          ; 3B F0
        jge     L_1708                          ; 7D 03
        jmp     L_17E5                          ; E9 DD 00
;   [conditional branch target (if/else)] L_1708
L_1708:
        mov     di, word ptr [0x382]            ; 8B 3E 82 03
        mov     ax, word ptr [0x37e]            ; A1 7E 03
        sub     di, ax                          ; 2B F8
        mov     ax, word ptr [0x464]            ; A1 64 04
        cmp     di, ax                          ; 3B F8
        jge     L_171B                          ; 7D 03
        jmp     L_17E5                          ; E9 CA 00
;   [conditional branch target (if/else)] L_171B
L_171B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1EA2                          ; E8 81 07
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x37c]                ; FF 36 7C 03
        push    word ptr [0x37e]                ; FF 36 7E 03
        push    si                              ; 56
        push    di                              ; 57
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_204A                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_17E5                          ; E9 AB 00
;   [unconditional branch target] L_173A
L_173A:
        cmp     word ptr [0x36e], 5             ; 83 3E 6E 03 05
        jge     L_1748                          ; 7D 07
        inc     word ptr [0x36e]                ; FF 06 6E 03
        jmp     L_17E5                          ; E9 9D 00
;   [conditional branch target (if/else)] L_1748
L_1748:
        cmp     word ptr [0x36e], 7             ; 83 3E 6E 03 07
        jge     L_1753                          ; 7D 04
        inc     word ptr [0x36e]                ; FF 06 6E 03
;   [conditional branch target (if/else)] L_1753
L_1753:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jle     L_1761                          ; 7E 08
        mov     word ptr [0x384], 1             ; C7 06 84 03 01 00
        jmp     L_176D                          ; EB 0C
;   [conditional branch target (if/else)] L_1761
L_1761:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jle     L_176D                          ; 7E 06
        mov     word ptr [0x384], 0xffff        ; C7 06 84 03 FF FF
;   [branch target] L_176D
L_176D:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jle     L_177B                          ; 7E 08
        mov     word ptr [0x378], 1             ; C7 06 78 03 01 00
        jmp     L_1787                          ; EB 0C
;   [conditional branch target (if/else)] L_177B
L_177B:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jle     L_1787                          ; 7E 06
        mov     word ptr [0x378], 0xffff        ; C7 06 78 03 FF FF
;   [branch target] L_1787
L_1787:
        mov     word ptr [0x38c], di            ; 89 3E 8C 03
        mov     word ptr [0x38a], si            ; 89 36 8A 03
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        test    byte ptr [bx + 0x33], 0xc0      ; F6 47 33 C0
        jne     L_17BE                          ; 75 26
        cmp     word ptr [0x384], 0             ; 83 3E 84 03 00
        je      L_17AB                          ; 74 0C
        mov     ax, word ptr [0x372]            ; A1 72 03
        mov     word ptr [0x37e], ax            ; A3 7E 03
        mov     ax, word ptr [0x376]            ; A1 76 03
        mov     word ptr [0x382], ax            ; A3 82 03
;   [conditional branch target (if/else)] L_17AB
L_17AB:
        cmp     word ptr [0x378], 0             ; 83 3E 78 03 00
        je      L_17BE                          ; 74 0C
        mov     ax, word ptr [0x370]            ; A1 70 03
        mov     word ptr [0x37c], ax            ; A3 7C 03
        mov     ax, word ptr [0x374]            ; A1 74 03
        mov     word ptr [0x380], ax            ; A3 80 03
;   [conditional branch target (if/else)] L_17BE
L_17BE:
        cmp     word ptr [0x384], 0             ; 83 3E 84 03 00
        jne     L_17CC                          ; 75 07
        cmp     word ptr [0x378], 0             ; 83 3E 78 03 00
        je      L_17E5                          ; 74 19
;   [conditional branch target (if/else)] L_17CC
L_17CC:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_17F2                          ; E8 20 00
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        test    byte ptr [bx + 0x33], 0x80      ; F6 47 33 80
        jne     L_17E5                          ; 75 0A
        mov     ax, 0x37c                       ; B8 7C 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_5D22                  ; 9A EA 13 00 00 [FIXUP]
;   [branch target] L_17E5
L_17E5:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: PATBLT, SELECTOBJECT.

;-------------------------------------------------------------------------
; sub_17F2   offset=0x17F2  size=84 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=12, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_17F2
L_17F2:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [si + 0x1e]                 ; 8D 44 1E
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A BF 13 00 00 [FIXUP]
        cmp     word ptr [0x384], 0             ; 83 3E 84 03 00
        jne     L_181C                          ; 75 0A
        cmp     word ptr [0x378], 0             ; 83 3E 78 03 00
        jne     L_181C                          ; 75 03
        jmp     L_18D9                          ; E9 BD 00
;   [conditional branch target (if/else)] L_181C
L_181C:
        cmp     word ptr [0x384], 0             ; 83 3E 84 03 00
        je      L_1838                          ; 74 15
        cmp     word ptr [0x384], 0             ; 83 3E 84 03 00
        jle     L_1832                          ; 7E 08
        mov     ax, word ptr [0x38c]            ; A1 8C 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_1838                          ; EB 06
;   [conditional branch target (if/else)] L_1832
L_1832:
        mov     ax, word ptr [0x38c]            ; A1 8C 03
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [branch target] L_1838
L_1838:
        cmp     word ptr [0x378], 0             ; 83 3E 78 03 00
        je      L_185D                          ; 74 1E
        mov     ax, word ptr [0x38a]            ; A1 8A 03
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [0x378], 0             ; 83 3E 78 03 00
        jle     L_1851                          ; 7E 05
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_185D                          ; EB 0C
;   [conditional branch target (if/else)] L_1851
L_1851:
        mov     ax, word ptr [0x38a]            ; A1 8A 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x47e]            ; A1 7E 04
        sub     word ptr [bp - 0xc], ax         ; 29 46 F4
;   [branch target] L_185D
L_185D:
        call    far _SEG1_38D1                  ; 9A 79 07 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_45E5                  ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [si + 0x33], 0xc0      ; F6 44 33 C0
        jne     L_18D1                          ; 75 57
        cmp     word ptr [0x378], 0             ; 83 3E 78 03 00
        je      L_18D1                          ; 74 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDC
        push    word ptr [0x550]                ; FF 36 50 05
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A AA 07 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDC
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg x
        push    word ptr [0x514]                ; FF 36 14 05
        ;   ^ arg y
        push    word ptr [0x47e]                ; FF 36 7E 04
        ;   ^ arg nWidth
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [0x514]            ; 2B 06 14 05
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A CD 18 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDC
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg x
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg y
        push    word ptr [0x47e]                ; FF 36 7E 04
        ;   ^ arg nWidth
        mov     ax, word ptr [0x518]            ; A1 18 05
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A CA 07 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_18D1
L_18D1:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _SEG1_38E1                  ; 9A D6 07 00 00 [FIXUP]
;   [fall-through exit] L_18D9
L_18D9:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (148 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_18E0   offset=0x18E0  size=148 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0BA9, L_1A67, L_1D3C
;-------------------------------------------------------------------------
;   [sub-routine] L_18E0
L_18E0:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        test    byte ptr [bx + 0x33], 0xc0      ; F6 47 33 C0
        je      L_18F3                          ; 74 03
        jmp     L_1996                          ; E9 A3 00
;   [conditional branch target (if/else)] L_18F3
L_18F3:
        mov     al, byte ptr [bx + 0x38]        ; 8A 47 38
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        ; constant WM_GETTEXTLENGTH
        mov     cl, 0xe                         ; B1 0E
        imul    cl                              ; F6 E9
        add     ax, word ptr [0x4dc]            ; 03 06 DC 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bx + 0xc]         ; 8B 77 0C
        mov     byte ptr [bp - 4], 1            ; C6 46 FC 01
        jmp     L_1914                          ; EB 05
;   [loop start] L_190F
L_190F:
        inc     byte ptr [bp - 4]               ; FE 46 FC
        mov     si, word ptr [si]               ; 8B 34
;   [unconditional branch target] L_1914
L_1914:
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jne     L_190F                          ; 75 F6
        mov     si, word ptr [si]               ; 8B 34
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cwde                                    ; 98
        imul    word ptr [0x506]                ; F7 2E 06 05
        add     ax, word ptr [0x514]            ; 03 06 14 05
        mov     word ptr [0x372], ax            ; A3 72 03
        mov     byte ptr [bp - 4], 1            ; C6 46 FC 01
        jmp     L_1933                          ; EB 03
;   [loop start] L_1930
L_1930:
        inc     byte ptr [bp - 4]               ; FE 46 FC
;   [unconditional branch target] L_1933
L_1933:
        mov     si, word ptr [si]               ; 8B 34
        or      si, si                          ; 0B F6
        jne     L_1930                          ; 75 F7
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cwde                                    ; 98
        imul    word ptr [0x506]                ; F7 2E 06 05
        mov     cx, word ptr [0x518]            ; 8B 0E 18 05
        sub     cx, ax                          ; 2B C8
        mov     word ptr [0x376], cx            ; 89 0E 76 03
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     al, byte ptr [bx + 0x38]        ; 8A 47 38
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        or      al, al                          ; 0A C0
        jne     L_195B                          ; 75 03
        inc     byte ptr [bp - 4]               ; FE 46 FC
;   [conditional branch target (if/else)] L_195B
L_195B:
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cwde                                    ; 98
        imul    word ptr [0x462]                ; F7 2E 62 04
        add     ax, word ptr [0x512]            ; 03 06 12 05
        add     ax, word ptr [0x480]            ; 03 06 80 04
        mov     word ptr [0x370], ax            ; A3 70 03
        mov     al, byte ptr [0x51c]            ; A0 1C 05
        sub     al, byte ptr [bp - 6]           ; 2A 46 FA
        dec     al                              ; FE C8
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        or      al, al                          ; 0A C0
        jne     L_1980                          ; 75 03
        inc     byte ptr [bp - 4]               ; FE 46 FC
;   [conditional branch target (if/else)] L_1980
L_1980:
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cwde                                    ; 98
        imul    word ptr [0x462]                ; F7 2E 62 04
        mov     cx, word ptr [0x516]            ; 8B 0E 16 05
        sub     cx, ax                          ; 2B C8
        sub     cx, word ptr [0x480]            ; 2B 0E 80 04
        mov     word ptr [0x374], cx            ; 89 0E 74 03
;   [fall-through exit] L_1996
L_1996:
        pop     si                              ; 5E
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
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        call    far _SEG1_329D                  ; 9A 79 14 00 00 [FIXUP]
        mov     word ptr [0x38a], ax            ; A3 8A 03
        mov     word ptr [0x38c], dx            ; 89 16 8C 03
        push    si                              ; 56
        push    di                              ; 57
        call    L_1D3C                          ; E8 79 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_1A0E                          ; 74 44
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        push    word ptr [bx + 0x1e]            ; FF 77 1E
        push    word ptr [bx + 0x20]            ; FF 77 20
        call    far _entry_397                  ; 9A 4F 10 00 00 [FIXUP]
        mov     word ptr [0x618], ax            ; A3 18 06
        mov     word ptr [0x626], 0             ; C7 06 26 06 00 00
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jle     L_19F9                          ; 7E 12
        push    word ptr [0x38a]                ; FF 36 8A 03
        push    word ptr [0x38c]                ; FF 36 8C 03
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BA9                          ; E8 B2 F1
        jmp     L_1A5A                          ; EB 61
;   [conditional branch target (if/else)] L_19F9
L_19F9:
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        test    byte ptr [bx + 0x33], 0x20      ; F6 47 33 20
        je      L_1A5A                          ; 74 58
        push    word ptr [0x618]                ; FF 36 18 06
        push    bx                              ; 53
        call    far _entry_396                  ; 9A EF 0B 00 00 [FIXUP]
        jmp     L_1A5A                          ; EB 4C
;   [conditional branch target (if/else)] L_1A0E
L_1A0E:
        cmp     si, 0x100                       ; 81 FE 00 01
        je      L_1A1A                          ; 74 06
        cmp     si, 0x104                       ; 81 FE 04 01
        jne     L_1A5A                          ; 75 40
;   [conditional branch target (if/else)] L_1A1A
L_1A1A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    di                              ; 57
        call    L_1A67                          ; E8 46 00
        push    word ptr [0x510]                ; FF 36 10 05
        push    word ptr [0x38a]                ; FF 36 8A 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_524C                  ; 9A A9 15 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _SEG1_523C                  ; 9A A3 15 00 00 [FIXUP]
        mov     word ptr [0x38a], ax            ; A3 8A 03
        push    ax                              ; 50
        push    word ptr [0x50e]                ; FF 36 0E 05
        push    word ptr [0x38c]                ; FF 36 8C 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_524C                  ; 9A EB 1B 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _SEG1_523C                  ; 9A 8F 1C 00 00 [FIXUP]
        mov     word ptr [0x38c], ax            ; A3 8C 03
        push    ax                              ; 50
        call    far _SEG1_3470                  ; 9A 16 1D 00 00 [FIXUP]
;   [branch target] L_1A5A
L_1A5A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (225 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1A67   offset=0x1A67  size=225 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1A67
;-------------------------------------------------------------------------
;   [sub-routine] L_1A67
L_1A67:
        ;   = cProc <22> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x16                        ; 83 EC 16
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0x518]            ; A1 18 05
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x510]                ; FF 36 10 05
        push    word ptr [0x50e]                ; FF 36 0E 05
        call    far _SEG1_643D                  ; 9A DA 13 00 00 [FIXUP]
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x38c]                ; FF 36 8C 03
        push    word ptr [0x38a]                ; FF 36 8A 03
        call    far _SEG1_64DE                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1AA4                          ; 75 03
        jmp     L_1C7F                          ; E9 DB 01
;   [conditional branch target (if/else)] L_1AA4
L_1AA4:
        mov     di, word ptr [0x38c]            ; 8B 3E 8C 03
        mov     si, word ptr [0x38a]            ; 8B 36 8A 03
        cmp     word ptr [bp - 0x12], di        ; 39 7E EE
        jle     L_1AB6                          ; 7E 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1AB8                          ; EB 02
;   [conditional branch target (if/else)] L_1AB6
L_1AB6:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1AB8
L_1AB8:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        je      L_1B16                          ; 74 57
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        test    byte ptr [bx + 0x33], 0xc0      ; F6 47 33 C0
        je      L_1AD2                          ; 74 0A
        mov     ax, bx                          ; 8B C3
;   [loop start] L_1ACA
L_1ACA:
        add     ax, 0x1e                        ; 05 1E 00
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_1AFE                          ; EB 2C
;   [conditional branch target (if/else)] L_1AD2
L_1AD2:
        push    word ptr [0x38c]                ; FF 36 8C 03
        push    word ptr [0x38a]                ; FF 36 8A 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_4FAC                  ; 9A 7D 10 00 00 [FIXUP]
        mov     word ptr [bp + 6], ax           ; 89 46 06
        or      ax, ax                          ; 0B C0
        jne     L_1ACA                          ; 75 E0
        mov     ax, 0x37c                       ; B8 7C 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x512                       ; B8 12 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A 07 18 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], 0x37c     ; C7 46 F0 7C 03
;   [unconditional branch target] L_1AFE
L_1AFE:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        add     ax, word ptr [bx]               ; 03 07
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        add     ax, word ptr [bx + 2]           ; 03 47 02
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
;   [conditional branch target (if/else)] L_1B16
L_1B16:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_1B6E                          ; 74 50
        cmp     ax, 0x26                        ; 3D 26 00
        jne     L_1B26                          ; 75 03
        jmp     L_1BA9                          ; E9 83 00
;   [conditional branch target (if/else)] L_1B26
L_1B26:
        cmp     ax, 0x27                        ; 3D 27 00
        je      L_1B36                          ; 74 0B
        cmp     ax, 0x28                        ; 3D 28 00
        jne     L_1B33                          ; 75 03
        jmp     L_1BF4                          ; E9 C1 00
;   [conditional branch target (if/else)] L_1B33
L_1B33:
        jmp     L_1C7F                          ; E9 49 01
;   [conditional branch target (if/else)] L_1B36
L_1B36:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_1B59                          ; 74 1D
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_1B45                          ; 75 03
        jmp     L_1C7F                          ; E9 3A 01
;   [conditional branch target (if/else)] L_1B45
L_1B45:
        cmp     word ptr [bp - 0xe], si         ; 39 76 F2
        jle     L_1B50                          ; 7E 06
;   [loop start] L_1B4A
L_1B4A:
        mov     si, word ptr [bp - 0xe]         ; 8B 76 F2
        jmp     L_1C7F                          ; E9 2F 01
;   [conditional branch target (if/else)] L_1B50
L_1B50:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     si, word ptr [bx + 4]           ; 8B 77 04
        jmp     L_1C7F                          ; E9 26 01
;   [conditional branch target (if/else)] L_1B59
L_1B59:
        mov     ax, word ptr [0x466]            ; A1 66 04
        add     ax, si                          ; 03 C6
        cmp     ax, word ptr [0x516]            ; 3B 06 16 05
        jle     L_1B67                          ; 7E 03
        jmp     L_1C7F                          ; E9 18 01
;   [conditional branch target (if/else)] L_1B67
L_1B67:
        add     si, word ptr [0x466]            ; 03 36 66 04
        jmp     L_1C7F                          ; E9 11 01
;   [conditional branch target (if/else)] L_1B6E
L_1B6E:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_1B95                          ; 74 21
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_1B7D                          ; 75 03
        jmp     L_1C7F                          ; E9 02 01
;   [conditional branch target (if/else)] L_1B7D
L_1B7D:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        cmp     word ptr [bx], si               ; 39 37
        jne     L_1B88                          ; 75 04
        dec     si                              ; 4E
        jmp     L_1C66                          ; E9 DE 00
;   [conditional branch target (if/else)] L_1B88
L_1B88:
        cmp     word ptr [bp - 0xe], si         ; 39 76 F2
        jl      L_1B4A                          ; 7C BD
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     si, word ptr [bx]               ; 8B 37
        jmp     L_1C7F                          ; E9 EA 00
;   [conditional branch target (if/else)] L_1B95
L_1B95:
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [0x466]            ; 2B 06 66 04
        or      ax, ax                          ; 0B C0
        jge     L_1BA2                          ; 7D 03
        jmp     L_1C7F                          ; E9 DD 00
;   [conditional branch target (if/else)] L_1BA2
L_1BA2:
        sub     si, word ptr [0x466]            ; 2B 36 66 04
        jmp     L_1C7F                          ; E9 D6 00
;   [unconditional branch target] L_1BA9
L_1BA9:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_1BDB                          ; 74 2C
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_1BD5                          ; 74 20
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        cmp     word ptr [bx + 2], di           ; 39 7F 02
        jne     L_1BC1                          ; 75 04
;   [loop start] L_1BBD
L_1BBD:
        dec     di                              ; 4F
        jmp     L_1C66                          ; E9 A5 00
;   [conditional branch target (if/else)] L_1BC1
L_1BC1:
        cmp     word ptr [bp - 0xc], di         ; 39 7E F4
        jl      L_1BCF                          ; 7C 09
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     di, word ptr [bx + 2]           ; 8B 7F 02
        jmp     L_1C7F                          ; E9 B0 00
;   [loop start (also forward branch)] L_1BCF
L_1BCF:
        mov     di, word ptr [bp - 0xc]         ; 8B 7E F4
        jmp     L_1C7F                          ; E9 AA 00
;   [conditional branch target (if/else)] L_1BD5
L_1BD5:
        mov     di, word ptr [bp - 0xc]         ; 8B 7E F4
        jmp     L_1B4A                          ; E9 6F FF
;   [conditional branch target (if/else)] L_1BDB
L_1BDB:
        cmp     word ptr [bp - 0x12], di        ; 39 7E EE
        je      L_1BBD                          ; 74 DD
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [0x468]            ; 2B 06 68 04
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _SEG1_524C                  ; 9A 89 1C 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        jmp     L_1C7F                          ; E9 8B 00
;   [unconditional branch target] L_1BF4
L_1BF4:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_1C24                          ; 74 2A
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_1C1F                          ; 74 1F
        cmp     word ptr [bp - 0xc], di         ; 39 7E F4
        jg      L_1BCF                          ; 7F CA
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        sub     ax, word ptr [0x480]            ; 2B 06 80 04
        cmp     ax, di                          ; 3B C7
        jle     L_1C1C                          ; 7E 09
        mov     di, word ptr [bx + 6]           ; 8B 7F 06
        sub     di, word ptr [0x480]            ; 2B 3E 80 04
        jmp     L_1C7F                          ; EB 63
;   [conditional branch target (if/else)] L_1C1C
L_1C1C:
        inc     di                              ; 47
        jmp     L_1C66                          ; EB 47
;   [conditional branch target (if/else)] L_1C1F
L_1C1F:
        mov     di, word ptr [bp - 0x12]        ; 8B 7E EE
        jmp     L_1C7F                          ; EB 5B
;   [conditional branch target (if/else)] L_1C24
L_1C24:
        mov     ax, word ptr [0x50e]            ; A1 0E 05
        mov     cx, word ptr [0x468]            ; 8B 0E 68 04
        sar     cx, 1                           ; D1 F9
        sub     ax, cx                          ; 2B C1
        cmp     ax, di                          ; 3B C7
        jle     L_1C7F                          ; 7E 4C
        cmp     word ptr [bp - 0x12], di        ; 39 7E EE
        jne     L_1C53                          ; 75 1B
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        mov     cx, word ptr [0x466]            ; 8B 0E 66 04
        idiv    cx                              ; F7 F9
        mov     ax, cx                          ; 8B C1
        sar     ax, 1                           ; D1 F8
        sub     dx, ax                          ; 2B D0
        neg     dx                              ; F7 DA
        mov     ax, cx                          ; 8B C1
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        add     dx, ax                          ; 03 D0
        add     si, dx                          ; 03 F2
;   [conditional branch target (if/else)] L_1C53
L_1C53:
        cmp     word ptr [bp - 0x12], di        ; 39 7E EE
        jne     L_1C5F                          ; 75 07
        mov     ax, word ptr [0x468]            ; A1 68 04
        sar     ax, 1                           ; D1 F8
        jmp     L_1C62                          ; EB 03
;   [conditional branch target (if/else)] L_1C5F
L_1C5F:
        mov     ax, word ptr [0x468]            ; A1 68 04
;   [unconditional branch target] L_1C62
L_1C62:
        add     di, ax                          ; 03 F8
        jmp     L_1C7F                          ; EB 19
;   [unconditional branch target] L_1C66
L_1C66:
        mov     word ptr [0x38a], si            ; 89 36 8A 03
        mov     word ptr [0x38c], di            ; 89 3E 8C 03
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1A67                          ; E8 F0 FD
        mov     si, word ptr [0x38a]            ; 8B 36 8A 03
        mov     di, word ptr [0x38c]            ; 8B 3E 8C 03
;   [branch target] L_1C7F
L_1C7F:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    si                              ; 56
        call    far _SEG1_524C                  ; 9A A0 1C 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _SEG1_523C                  ; 9A A6 1C 00 00 [FIXUP]
        mov     word ptr [0x38a], ax            ; A3 8A 03
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    di                              ; 57
        call    far _SEG1_524C                  ; 9A 2D 1A 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _SEG1_523C                  ; 9A 33 1A 00 00 [FIXUP]
        mov     word ptr [0x38c], ax            ; A3 8C 03
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (55 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1CB5   offset=0x1CB5  size=55 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1CB5
L_1CB5:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_6384                  ; 9A 8B 1D 00 00 [FIXUP]
        cmp     di, 0xa1                        ; 81 FF A1 00
        je      L_1D1A                          ; 74 4B
        test    byte ptr [si + 0x33], 0x20      ; F6 44 33 20
        je      L_1CFA                          ; 74 25
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        mov     cx, word ptr [0x46a]            ; 8B 0E 6A 04
        sar     cx, 1                           ; D1 F9
        add     ax, cx                          ; 03 C1
        mov     cx, word ptr [0x46a]            ; 8B 0E 6A 04
        sar     cx, 1                           ; D1 F9
        sar     cx, 1                           ; D1 F9
        add     ax, cx                          ; 03 C1
        mov     word ptr [0x38a], ax            ; A3 8A 03
        mov     bx, word ptr [0x634]            ; 8B 1E 34 06
        mov     ax, word ptr [bx + 0x20]        ; 8B 47 20
        sub     ax, word ptr [0x46c]            ; 2B 06 6C 04
        jmp     L_1D0D                          ; EB 13
;   [conditional branch target (if/else)] L_1CFA
L_1CFA:
        mov     ax, word ptr [si + 0x22]        ; 8B 44 22
        add     ax, word ptr [si + 0x1e]        ; 03 44 1E
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0x38a], ax            ; A3 8A 03
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        add     ax, word ptr [si + 0x20]        ; 03 44 20
        sar     ax, 1                           ; D1 F8
;   [unconditional branch target] L_1D0D
L_1D0D:
        mov     word ptr [0x38c], ax            ; A3 8C 03
        push    word ptr [0x38a]                ; FF 36 8A 03
        push    ax                              ; 50
        call    far _SEG1_3470                  ; 9A C8 15 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1D1A
L_1D1A:
        push    si                              ; 56
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_2840                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (138 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1D3C   offset=0x1D3C  size=138 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1D3C, L_1EA2, L_1ED4
;-------------------------------------------------------------------------
;   [sub-routine] L_1D3C
L_1D3C:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 2], si           ; 89 76 FE
        cmp     si, 0x202                       ; 81 FE 02 02
        je      L_1D6B                          ; 74 13
        cmp     si, 0x100                       ; 81 FE 00 01
        jne     L_1D9F                          ; 75 41
        cmp     di, 0xd                         ; 83 FF 0D
        je      L_1D6B                          ; 74 08
        mov     word ptr [bp - 4], di           ; 89 7E FC
        cmp     di, 0x1b                        ; 83 FF 1B
        jne     L_1D9F                          ; 75 34
;   [conditional branch target (if/else)] L_1D6B
L_1D6B:
        push    word ptr [0x608]                ; FF 36 08 06
        call    far _SEG1_375A                  ; 9A FF 13 00 00 [FIXUP]
        call    far _SEG1_3781                  ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_5D22                  ; 9A E1 17 00 00 [FIXUP]
        call    far _SEG1_3273                  ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_6384                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1D9A                          ; 74 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1DA1                          ; EB 07
;   [conditional branch target (if/else)] L_1D9A
L_1D9A:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1DA1                          ; EB 02
;   [conditional branch target (if/else)] L_1D9F
L_1D9F:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_1DA1
L_1DA1:
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
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        or      si, si                          ; 0B F6
        jne     L_1DC1                          ; 75 03
        jmp     L_1E96                          ; E9 D5 00
;   [conditional branch target (if/else)] L_1DC1
L_1DC1:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1ED4                          ; E8 0D 01
        call    far _SEG1_329D                  ; 9A B3 19 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_1D3C                          ; E8 63 FF
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        je      L_1DE7                          ; 74 07
        or      ax, ax                          ; 0B C0
        jge     L_1E26                          ; 7D 42
        jmp     L_1E96                          ; E9 AF 00
;   [conditional branch target (if/else)] L_1DE7
L_1DE7:
        cmp     si, 0x100                       ; 81 FE 00 01
        jne     L_1E26                          ; 75 39
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 0x25                        ; 2D 25 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jl      L_1E1B                          ; 7C 21
        cmp     ax, 3                           ; 3D 03 00
        jg      L_1E1B                          ; 7F 1C
        shl     word ptr [bp - 6], 1            ; D1 66 FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr [bx + 0x2fe]       ; 8A 87 FE 02
        cwde                                    ; 98
        add     word ptr [bp - 8], ax           ; 01 46 F8
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr [bx + 0x2fe]       ; 8A 87 FE 02
        cwde                                    ; 98
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
;   [conditional branch target (if/else)] L_1E1B
L_1E1B:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _SEG1_3470                  ; 9A A7 1F 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1E26
L_1E26:
        mov     ax, 0x37c                       ; B8 7C 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [0x38a]            ; 2B 06 8A 03
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [0x38c]            ; 2B 06 8C 03
        push    ax                              ; 50
        call    far _SEG1_6515                  ; 9A C8 1E 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [0x38a], ax            ; A3 8A 03
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [0x38c], ax            ; A3 8C 03
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_1E90                          ; 74 3E
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        test    byte ptr [bx + 0x33], 0x40      ; F6 47 33 40
        je      L_1E64                          ; 74 09
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_5D22                  ; 9A 5A 1F 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1E64
L_1E64:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1EA2                          ; E8 38 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x37c]                ; FF 36 7C 03
        push    word ptr [0x37e]                ; FF 36 7E 03
        mov     ax, word ptr [0x380]            ; A1 80 03
        sub     ax, word ptr [0x37c]            ; 2B 06 7C 03
        push    ax                              ; 50
        mov     ax, word ptr [0x382]            ; A1 82 03
        sub     ax, word ptr [0x37e]            ; 2B 06 7E 03
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_204A                  ; 9A 33 17 00 00 [FIXUP]
        jmp     L_1E96                          ; EB 06
;   [conditional branch target (if/else)] L_1E90
L_1E90:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1ED4                          ; E8 3E 00
;   [unconditional branch target] L_1E96
L_1E96:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (24 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1EA2   offset=0x1EA2  size=24 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1EA2
L_1EA2:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        test    byte ptr [si + 0x33], 0x40      ; F6 44 33 40
        je      L_1ECC                          ; 74 19
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        mov     ax, 0x37c                       ; B8 7C 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [di + 0x26]        ; 8B 45 26
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, word ptr [di + 0x28]        ; 8B 45 28
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    far _SEG1_6515                  ; 9A D8 0E 00 00 [FIXUP]
;   [error/early exit] L_1ECC
L_1ECC:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: INTERSECTVISRECT, RESTOREVISRGN, SAVEVISRGN.

;-------------------------------------------------------------------------
; sub_1ED4   offset=0x1ED4  size=40 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   INTERSECTVISRECT
;   RESTOREVISRGN
;   SAVEVISRGN
;-------------------------------------------------------------------------
;   [sub-routine] L_1ED4
L_1ED4:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        call    far _SEG1_38D1                  ; 9A 5E 18 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        sub     di, di                          ; 2B FF
        test    byte ptr [si + 0x33], 0x40      ; F6 44 33 40
        je      L_1F13                          ; 74 24
        push    si                              ; 56
        call    far _SEG1_1CC5                  ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.SAVEVISRGN              ; 9A 81 07 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [di + 0x26]            ; FF 75 26
        push    word ptr [di + 0x28]            ; FF 75 28
        push    word ptr [di + 0x2a]            ; FF 75 2A
        push    word ptr [di + 0x2c]            ; FF 75 2C
        call    far GDI.INTERSECTVISRECT        ; 9A 97 07 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1F13
L_1F13:
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x37c                       ; B8 7C 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_45E5                  ; 9A 70 18 00 00 [FIXUP]
        or      di, di                          ; 0B FF
        je      L_1F30                          ; 74 08
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.RESTOREVISRGN           ; 9A D0 07 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1F30
L_1F30:
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far _SEG1_38E1                  ; 9A D5 18 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (65 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1F40   offset=0x1F40  size=65 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1ED4
;-------------------------------------------------------------------------
;   [sub-routine] L_1F40
L_1F40:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        test    byte ptr [si + 0x33], 0x40      ; F6 44 33 40
        je      L_1F5E                          ; 74 0D
        mov     ax, word ptr [si + 0x38]        ; 8B 44 38
        add     ax, 0x26                        ; 05 26 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_5D22                  ; 9A 7E 1D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1F5E
L_1F5E:
        mov     ax, 0x37c                       ; B8 7C 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [si + 0x1e]                 ; 8D 44 1E
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A F5 1A 00 00 [FIXUP]
        push    si                              ; 56
        call    L_1ED4                          ; E8 63 FF
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_6384                  ; 9A C5 1C 00 00 [FIXUP]
        cmp     di, 0xa1                        ; 81 FF A1 00
        jne     L_1F8E                          ; 75 0E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x38c], ax            ; A3 8C 03
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x38a], ax            ; A3 8A 03
        jmp     L_1FB4                          ; EB 26
;   [conditional branch target (if/else)] L_1F8E
L_1F8E:
        mov     ax, word ptr [si + 0x22]        ; 8B 44 22
        add     ax, word ptr [si + 0x1e]        ; 03 44 1E
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0x38a], ax            ; A3 8A 03
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        add     ax, word ptr [si + 0x20]        ; 03 44 20
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0x38c], ax            ; A3 8C 03
        push    ax                              ; 50
        call    far _SEG1_3470                  ; 9A 56 1A 00 00 [FIXUP]
        push    word ptr [0x5f0]                ; FF 36 F0 05
        call    far _SEG1_375A                  ; 9A 70 1D 00 00 [FIXUP]
;   [unconditional branch target] L_1FB4
L_1FB4:
        push    si                              ; 56
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        mov     ax, OFFSET _entry_533           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_533           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_2840                  ; 9A 30 1D 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Internal helper (17 instructions).

;-------------------------------------------------------------------------
; sub_1FD8   offset=0x1FD8  size=17 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1FD8
L_1FD8:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        jmp     L_1FED                          ; EB 08
;   [loop start] L_1FE5
L_1FE5:
        push    si                              ; 56
        call    far _SEG1_160E                  ; 9A 10 20 00 00 [FIXUP]
        mov     si, word ptr [si]               ; 8B 34
;   [unconditional branch target] L_1FED
L_1FED:
        cmp     si, di                          ; 3B F7
        jne     L_1FE5                          ; 75 F4
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Internal helper (18 instructions).

;-------------------------------------------------------------------------
; sub_1FF9   offset=0x1FF9  size=18 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1FF9
;-------------------------------------------------------------------------
;   [sub-routine] L_1FF9
L_1FF9:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        cmp     si, di                          ; 3B F7
        je      L_2014                          ; 74 0C
        push    word ptr [si]                   ; FF 34
        push    di                              ; 57
        call    L_1FF9                          ; E8 EB FF
        push    si                              ; 56
        call    far _SEG1_160E                  ; 9A D4 08 00 00 [FIXUP]
;   [error/early exit] L_2014
L_2014:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Internal helper (18 instructions).

;-------------------------------------------------------------------------
; sub_201C   offset=0x201C  size=18 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1FD8, L_1FF9
;-------------------------------------------------------------------------
;   [sub-routine] L_201C
L_201C:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 0xc]             ; FF 77 0C
        push    si                              ; 56
        call    L_1FF9                          ; E8 CC FF
        or      si, si                          ; 0B F6
        je      L_2038                          ; 74 07
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1FD8                          ; E8 A0 FF
;   [error/early exit] L_2038
L_2038:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_203F   offset=0x203F  size=12 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_205B, L_2089
;-------------------------------------------------------------------------
;   [sub-routine] L_203F
L_203F:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_2089                          ; E8 3E 00
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x51c]                ; FF 36 1C 05
        call    L_205B                          ; E8 06 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (23 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_205B   offset=0x205B  size=23 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1FD8
;-------------------------------------------------------------------------
;   [sub-routine] L_205B
L_205B:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        jmp     L_207D                          ; EB 15
;   [loop start] L_2068
L_2068:
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        imul    si                              ; F7 EE
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [0x4dc]            ; 03 1E DC 04
        push    word ptr [bx + 0xc]             ; FF 77 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1FD8                          ; E8 5C FF
        inc     si                              ; 46
;   [unconditional branch target] L_207D
L_207D:
        cmp     si, di                          ; 3B F7
        jl      L_2068                          ; 7C E7
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (24 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2089   offset=0x2089  size=24 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1FD8
;-------------------------------------------------------------------------
;   [sub-routine] L_2089
L_2089:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        jmp     L_20AA                          ; EB 14
;   [loop start] L_2096
L_2096:
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        imul    di                              ; F7 EF
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [0x4dc]            ; 03 1E DC 04
        push    word ptr [bx + 0xc]             ; FF 77 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1FD8                          ; E8 2E FF
;   [unconditional branch target] L_20AA
L_20AA:
        mov     ax, di                          ; 8B C7
        dec     di                              ; 4F
        cmp     ax, si                          ; 3B C6
        jg      L_2096                          ; 7F E5
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (39 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_20B9   offset=0x20B9  size=39 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_2111
;-------------------------------------------------------------------------
;   [sub-routine] L_20B9
L_20B9:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        add     ax, word ptr [0x4dc]            ; 03 06 DC 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     di, ax                          ; 8B F8
        add     di, 0xe                         ; 83 C7 0E
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        inc     si                              ; 46
        jmp     L_20FC                          ; EB 23
;   [loop start] L_20D9
L_20D9:
        mov     ax, di                          ; 8B C7
        add     di, 0xe                         ; 83 C7 0E
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        call    far _SEG1_5284                  ; 9A 64 21 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        add     word ptr [bp - 4], 0xe          ; 83 46 FC 0E
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    L_2111                          ; E8 15 00
;   [unconditional branch target] L_20FC
L_20FC:
        mov     ax, si                          ; 8B C6
        inc     si                              ; 46
        cmp     ax, word ptr [0x51c]            ; 3B 06 1C 05
        jne     L_20D9                          ; 75 D4
        dec     word ptr [0x51c]                ; FF 0E 1C 05
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_2111   offset=0x2111  size=16 instr  segment=seg12.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_2111
L_2111:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     si, word ptr [bx + 0xc]         ; 8B 77 0C
        jmp     L_2128                          ; EB 08
;   [loop start] L_2120
L_2120:
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        add     byte ptr [si + 0x38], al        ; 00 44 38
        mov     si, word ptr [si]               ; 8B 34
;   [unconditional branch target] L_2128
L_2128:
        or      si, si                          ; 0B F6
        jne     L_2120                          ; 75 F4
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (60 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2133   offset=0x2133  size=60 instr  segment=seg12.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Near calls (internal): L_2111
;-------------------------------------------------------------------------
;   [sub-routine] L_2133
L_2133:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [0x51c]            ; 8B 36 1C 05
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        imul    si                              ; F7 EE
        mov     di, ax                          ; 8B F8
        add     di, word ptr [0x4dc]            ; 03 3E DC 04
        lea     ax, [di - 0xe]                  ; 8D 45 F2
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_2173                          ; EB 21
;   [loop start] L_2152
L_2152:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     word ptr [bp - 2], 0xe          ; 83 6E FE 0E
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        call    far _SEG1_5284                  ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        sub     di, 0xe                         ; 83 EF 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_2111                          ; E8 9E FF
;   [unconditional branch target] L_2173
L_2173:
        mov     ax, si                          ; 8B C6
        dec     si                              ; 4E
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jl      L_2152                          ; 7C D7
        inc     word ptr [0x51c]                ; FF 06 1C 05
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        add     ax, word ptr [0x4dc]            ; 03 06 DC 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_525C                  ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        mov     di, ax                          ; 8B F8
        add     di, word ptr [0x4dc]            ; 03 3E DC 04
        mov     ax, di                          ; 8B C7
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x512                       ; B8 12 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A 69 1F 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

USER_TEXT ENDS

        END
