; ======================================================================
; MOUSE / seg1.asm   (segment 1 of MOUSE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         4
; Total instructions:                  340
; 
; Classification (pass8):
;   C-origin (high+medium):              0
;   ASM-origin (high+medium):            2
;   Unclear:                             2
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original MOUSE segment 1
; segment_size=953 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

MOUSE_TEXT SEGMENT BYTE PUBLIC 'CODE'


;-----------------------------------------------------------------------
; entry  (offset 0x0000, size 69 bytes)
;-----------------------------------------------------------------------
entry PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    L_024D                          ; E8 3E 02
        jae     L_0015                          ; 73 04
        jcxz    L_001C                          ; E3 09
        jmp     L_0025                          ; EB 10
;   [conditional branch target (if/else)] L_0015
L_0015:
        call    L_010B                          ; E8 F3 00
        or      ax, ax                          ; 0B C0
        jne     L_0025                          ; 75 09
;   [conditional branch target (if/else)] L_001C
L_001C:
        call    far _SEG2_010C                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0041                          ; 74 1C
;   [branch target] L_0025
L_0025:
        cmp     cx, 0xc8                        ; 81 F9 C8 00
        jae     L_0041                          ; 73 16
        mov     si, ax                          ; 8B F0
        mov     di, 0x4e                        ; BF 4E 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        push    ds                              ; 1E
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        pop     ds                              ; 1F
        mov     byte ptr [0], 0xff              ; C6 06 00 00 FF
;   [conditional branch target (if/else)] L_0041
L_0041:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
entry ENDP

        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        mov     di, word ptr [0xe]              ; 8B 3E 0E 00
        mov     si, di                          ; 8B F7
        add     si, 2                           ; 83 C6 02
        mov     dx, si                          ; 8B D6
        mov     al, 0x90                        ; B0 90
        out     dx, al                          ; EE
        mov     dx, di                          ; 8B D7
        jmp     L_005E                          ; EB 00
;   [unconditional branch target] L_005E
L_005E:
        in      al, dx                          ; EC
        and     al, 0xf                         ; 24 0F
        mov     ch, al                          ; 8A E8
        mov     dx, si                          ; 8B D6
        mov     al, 0xb0                        ; B0 B0
        out     dx, al                          ; EE
        mov     dx, di                          ; 8B D7
        jmp     L_006C                          ; EB 00
;   [unconditional branch target] L_006C
L_006C:
        in      al, dx                          ; EC
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        or      al, ch                          ; 0A C5
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        mov     dx, si                          ; 8B D6
        mov     al, 0xd0                        ; B0 D0
        out     dx, al                          ; EE
        mov     dx, di                          ; 8B D7
        jmp     L_007F                          ; EB 00
;   [unconditional branch target] L_007F
L_007F:
        in      al, dx                          ; EC
        and     al, 0xf                         ; 24 0F
        mov     ch, al                          ; 8A E8
        mov     dx, si                          ; 8B D6
        mov     al, 0xf0                        ; B0 F0
        out     dx, al                          ; EE
        mov     dx, di                          ; 8B D7
        jmp     L_008D                          ; EB 00
;   [unconditional branch target] L_008D
L_008D:
        in      al, dx                          ; EC
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        mov     di, ax                          ; 8B F8
        or      al, ch                          ; 0A C5
        cwde                                    ; 98
        push    ax                              ; 50
        mov     dx, si                          ; 8B D6
        xor     ax, ax                          ; 33 C0
        out     dx, al                          ; EE
        mov     word ptr [0x20], ax             ; A3 20 00
        mov     ax, di                          ; 8B C7
        not     ax                              ; F7 D0
        mov     dl, ah                          ; 8A D4
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shr     dl, cl                          ; D2 EA
        ; constant WM_CREATE
        mov     cx, 1                           ; B9 01 00
        and     dx, cx                          ; 23 D1
        not     cx                              ; F7 D1
        and     cx, word ptr [0x22]             ; 23 0E 22 00
        or      dx, cx                          ; 0B D1
        xchg    word ptr [0x22], dx             ; 87 16 22 00
        cmp     word ptr [0x22], dx             ; 39 16 22 00
        je      L_00CF                          ; 74 0E
        ja      L_00CA                          ; 77 07
        or      byte ptr [0x20], 4              ; 80 0E 20 00 04
        jmp     L_00CF                          ; EB 05
;   [conditional branch target (if/else)] L_00CA
L_00CA:
        or      byte ptr [0x20], 2              ; 80 0E 20 00 02
;   [branch target] L_00CF
L_00CF:
        mov     cx, 2                           ; B9 02 00
        mov     al, ah                          ; 8A C4
        and     ax, cx                          ; 23 C1
        not     cx                              ; F7 D1
        and     cx, word ptr [0x22]             ; 23 0E 22 00
        or      ax, cx                          ; 0B C1
        xchg    word ptr [0x22], ax             ; 87 06 22 00
        cmp     word ptr [0x22], ax             ; 39 06 22 00
        je      L_00F6                          ; 74 0E
        ja      L_00F1                          ; 77 07
        or      byte ptr [0x20], 0x10           ; 80 0E 20 00 10
        jmp     L_00F6                          ; EB 05
;   [conditional branch target (if/else)] L_00F1
L_00F1:
        or      byte ptr [0x20], 8              ; 80 0E 20 00 08
;   [branch target] L_00F6
L_00F6:
        pop     cx                              ; 59
        mov     al, 0x20                        ; B0 20
        out     0x20, al                        ; E6 20
        sti                                     ; FB
        mov     ax, bx                          ; 8B C3
        or      ax, cx                          ; 0B C1
        je      L_0107                          ; 74 05
        or      byte ptr [0x20], 1              ; 80 0E 20 00 01
;   [error/early exit] L_0107
L_0107:
        mov     ax, word ptr [0x20]             ; A1 20 00
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (127 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_010B   offset=0x010B  size=127 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_010B
L_010B:
        mov     dx, 0x23c                       ; BA 3C 02
        ; constant WM_CREATE
        mov     cx, 1                           ; B9 01 00
;   [loop iteration target] L_0111
L_0111:
        push    dx                              ; 52
        mov     al, 0x91                        ; B0 91
        add     dx, 3                           ; 83 C2 03
        out     dx, al                          ; EE
        mov     al, 0xa5                        ; B0 A5
        mov     ah, al                          ; 8A E0
        sub     dx, 2                           ; 83 EA 02
        jmp     L_0121                          ; EB 00
;   [unconditional branch target] L_0121
L_0121:
        out     dx, al                          ; EE
        jmp     L_0124                          ; EB 00
;   [unconditional branch target] L_0124
L_0124:
        in      al, dx                          ; EC
        cmp     al, ah                          ; 3A C4
        pop     dx                              ; 5A
        je      L_0133                          ; 74 09
        add     dx, 4                           ; 83 C2 04
        loop    L_0111                          ; E2 E2
;   [loop start] L_012F
L_012F:
        xor     ax, ax                          ; 33 C0
        jmp     L_0187                          ; EB 54
;   [conditional branch target (if/else)] L_0133
L_0133:
        add     dx, 2                           ; 83 C2 02
        in      al, dx                          ; EC
        mov     ah, al                          ; 8A E0
        mov     cx, 0x2710                      ; B9 10 27
        xor     bh, bh                          ; 32 FF
;   [loop iteration target] L_013E
L_013E:
        in      al, dx                          ; EC
        xor     ah, al                          ; 32 E0
        or      bh, ah                          ; 0A FC
        mov     ah, al                          ; 8A E0
        loop    L_013E                          ; E2 F7
        or      bh, bh                          ; 0A FF
        je      L_012F                          ; 74 E4
        sub     dx, 2                           ; 83 EA 02
        mov     word ptr [0xe], dx              ; 89 16 0E 00
        mov     byte ptr [0x10], 8              ; C6 06 10 00 08
        mov     byte ptr [0x11], 0xfe           ; C6 06 11 00 FE
        ; constant WM_SIZE
        mov     cl, 5                           ; B1 05
        test    bh, 1                           ; F6 C7 01
        jne     L_0173                          ; 75 10
        mov     cl, 2                           ; B1 02
        test    bh, 8                           ; F6 C7 08
        jne     L_0173                          ; 75 09
        inc     cl                              ; FE C1
        test    bh, 4                           ; F6 C7 04
        jne     L_0173                          ; 75 02
        inc     cl                              ; FE C1
;   [conditional branch target (if/else)] L_0173
L_0173:
        add     byte ptr [0x10], cl             ; 00 0E 10 00
        rol     byte ptr [0x11], cl             ; D2 06 11 00
        mov     word ptr [4], 0x22              ; C7 06 04 00 22 00
        mov     ax, 0x4c                        ; B8 4C 00
        mov     cx, 0xbf                        ; B9 BF 00
;   [fall-through exit] L_0187
L_0187:
        ret                                     ; C3
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        in      al, dx                          ; EC
        test    al, 0x40                        ; A8 40
        jne     L_0194                          ; 75 03
        jmp     L_020D                          ; EB 7A
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0194
L_0194:
        xor     dx, dx                          ; 33 D2
        mov     word ptr [0x20], dx             ; 89 16 20 00
        mov     dl, al                          ; 8A D0
        ; constant WM_SIZE
        mov     cl, 5                           ; B1 05
        shr     dl, cl                          ; D2 EA
        ; constant WM_CREATE
        mov     cx, 1                           ; B9 01 00
        and     dx, cx                          ; 23 D1
        not     cx                              ; F7 D1
        and     cx, word ptr [0x22]             ; 23 0E 22 00
        or      dx, cx                          ; 0B D1
        xchg    word ptr [0x22], dx             ; 87 16 22 00
        cmp     word ptr [0x22], dx             ; 39 16 22 00
        je      L_01C5                          ; 74 0E
        ja      L_01C0                          ; 77 07
        or      byte ptr [0x20], 4              ; 80 0E 20 00 04
        jmp     L_01C5                          ; EB 05
;   [conditional branch target (if/else)] L_01C0
L_01C0:
        or      byte ptr [0x20], 2              ; 80 0E 20 00 02
;   [branch target] L_01C5
L_01C5:
        mov     dl, al                          ; 8A D0
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shr     dl, cl                          ; D2 EA
        mov     cx, 2                           ; B9 02 00
        and     dx, cx                          ; 23 D1
        not     cx                              ; F7 D1
        and     cx, word ptr [0x22]             ; 23 0E 22 00
        or      dx, cx                          ; 0B D1
        xchg    word ptr [0x22], dx             ; 87 16 22 00
        cmp     word ptr [0x22], dx             ; 39 16 22 00
        je      L_01F0                          ; 74 0E
        ja      L_01EB                          ; 77 07
        or      byte ptr [0x20], 0x10           ; 80 0E 20 00 10
        jmp     L_01F0                          ; EB 05
;   [conditional branch target (if/else)] L_01EB
L_01EB:
        or      byte ptr [0x20], 8              ; 80 0E 20 00 08
;   [branch target] L_01F0
L_01F0:
        mov     bx, ax                          ; 8B D8
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        and     al, 0xc0                        ; 24 C0
        mov     byte ptr [0x25], al             ; A2 25 00
        mov     cl, 6                           ; B1 06
        shl     bx, cl                          ; D3 E3
        and     bl, 0xc0                        ; 80 E3 C0
        mov     byte ptr [0x24], bl             ; 88 1E 24 00
        mov     byte ptr [0x26], 1              ; C6 06 26 00 01
        jmp     L_0221                          ; EB 14
;   [unconditional branch target] L_020D
L_020D:
        and     al, 0x3f                        ; 24 3F
        cmp     byte ptr [0x26], 1              ; 80 3E 26 00 01
        jb      L_0221                          ; 72 0B
        ja      L_0225                          ; 77 0D
        or      byte ptr [0x24], al             ; 08 06 24 00
        mov     byte ptr [0x26], 2              ; C6 06 26 00 02
;   [branch target] L_0221
L_0221:
        xor     ax, ax                          ; 33 C0
        jmp     L_0245                          ; EB 20
;   [conditional branch target (if/else)] L_0225
L_0225:
        or      al, byte ptr [0x25]             ; 0A 06 25 00
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [0x24]             ; A0 24 00
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [0x26], 0              ; C6 06 26 00 00
        mov     ax, bx                          ; 8B C3
        or      ax, cx                          ; 0B C1
        je      L_0242                          ; 74 05
        or      byte ptr [0x20], 1              ; 80 0E 20 00 01
;   [conditional branch target (if/else)] L_0242
L_0242:
        mov     ax, word ptr [0x20]             ; A1 20 00
;   [unconditional branch target] L_0245
L_0245:
        push    ax                              ; 50
        mov     al, 0x20                        ; B0 20
        out     0x20, al                        ; E6 20
        pop     ax                              ; 58
        sti                                     ; FB
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (118 instructions, no FAR API calls).
;   Interrupt handler.

;-------------------------------------------------------------------------
; sub_024D   offset=0x024D  size=118 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=7)
; Prologue: none     Epilogue: iret   (INTERRUPT HANDLER)
;
; Near calls (internal): L_02B2, L_034C
;-------------------------------------------------------------------------
;   [sub-routine] L_024D
L_024D:
        mov     dx, 0x23e                       ; BA 3E 02
;   [loop start] L_0250
L_0250:
        mov     ah, 0xde                        ; B4 DE
        in      al, dx                          ; EC
        cmp     al, ah                          ; 3A C4
        je      L_0267                          ; 74 10
        in      al, dx                          ; EC
        cmp     al, ah                          ; 3A C4
        je      L_0267                          ; 74 0B
;   [loop start] L_025C
L_025C:
        sub     dx, 4                           ; 83 EA 04
        cmp     dl, 0x2e                        ; 80 FA 2E
        jne     L_0250                          ; 75 EC
        clc                                     ; F8
        jmp     L_0297                          ; EB 30
;   [conditional branch target (if/else)] L_0267
L_0267:
        in      al, dx                          ; EC
        mov     bl, al                          ; 8A D8
        in      al, dx                          ; EC
        cmp     al, ah                          ; 3A C4
        jne     L_025C                          ; 75 ED
        in      al, dx                          ; EC
        cmp     al, bl                          ; 3A C3
        jne     L_025C                          ; 75 E8
        sub     dx, 2                           ; 83 EA 02
        mov     word ptr [0xe], dx              ; 89 16 0E 00
        ; constant GMEM_ZEROINIT
        mov     al, 0x80                        ; B0 80
        out     dx, al                          ; EE
        jmp     L_0280                          ; EB 00
;   [unconditional branch target] L_0280
L_0280:
        mov     al, 7                           ; B0 07
        out     dx, al                          ; EE
        inc     dx                              ; 42
        call    L_02B2                          ; E8 2B 00
        mov     cx, 0                           ; B9 00 00
        jb      L_0297                          ; 72 0B
        mov     al, 0x11                        ; B0 11
        out     dx, al                          ; EE
        mov     ax, 0x360                       ; B8 60 03
        mov     cx, 0x59                        ; B9 59 00
        nop                                     ; 90
        stc                                     ; F9
;   [error/early exit] L_0297
L_0297:
        ret                                     ; C3
        or      ax, 0xbdf                       ; 0D DF 0B
        test    word ptr [bp + si], 0xcfb       ; F7 0A FB 0C
        out     dx, ax                          ; EF
        add     byte ptr [bx + si], al          ; 00 00
        or      bh, bl                          ; 0A FB
        or      si, di                          ; 0B F7
        or      al, 0xef                        ; 0C EF
        add     byte ptr [bx + si], al          ; 00 00
        cwde                                    ; 98
        add     bl, byte ptr [bx + si - 0x5dfe] ; 02 98 02 A2
        add     bl, byte ptr [bx + si - 0x47fe] ; 02 98 02 B8
        db      0ffh                            ; FF
        dec     word ptr [bp + 0x26c0]          ; FF 8E C0 26
        mov     al, byte ptr [0xe]              ; A0 0E 00
        sub     al, 0xfc                        ; 2C FC
        jae     L_02C1                          ; 73 02
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
;   [conditional branch target (if/else)] L_02C1
L_02C1:
        cwde                                    ; 98
        add     ax, ax                          ; 03 C0
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr cs:[bx + 0x2aa]    ; 2E 8B B7 AA 02
;   [loop start] L_02CB
L_02CB:
        xor     ax, ax                          ; 33 C0
        mov     es, ax                          ; 8E C0
        add     ax, word ptr cs:[si]            ; 2E 03 04
        mov     byte ptr [0x11], ah             ; 88 26 11 00
        mov     byte ptr [0x10], al             ; A2 10 00
        stc                                     ; F9
        je      L_0334                          ; 74 58
        xor     bx, bx                          ; 33 DB
        mov     bl, al                          ; 8A D8
        add     bx, bx                          ; 03 DB
        add     bx, bx                          ; 03 DB
        cli                                     ; FA
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        mov     word ptr es:[bx], 0x337         ; 26 C7 07 37 03
        mov     word ptr es:[bx + 2], cs        ; 26 8C 4F 02
        in      al, 0x21                        ; E4 21
        push    ax                              ; 50
        and     al, ah                          ; 22 C4
        out     0x21, al                        ; E6 21
        sti                                     ; FB
        mov     al, 0x11                        ; B0 11
        out     dx, al                          ; EE
        call    L_034C                          ; E8 49 00
        cmp     ax, 3                           ; 3D 03 00
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        out     dx, al                          ; EE
        jb      L_0312                          ; 72 07
        call    L_034C                          ; E8 3E 00
        or      ax, ax                          ; 0B C0
        je      L_0317                          ; 74 05
;   [conditional branch target (if/else)] L_0312
L_0312:
        mov     byte ptr [0x10], 0              ; C6 06 10 00 00
;   [conditional branch target (if/else)] L_0317
L_0317:
        pop     cx                              ; 59
        cli                                     ; FA
        pop     word ptr es:[bx + 2]            ; 26 8F 47 02
        pop     word ptr es:[bx]                ; 26 8F 07
        in      al, 0x21                        ; E4 21
        xor     al, cl                          ; 32 C1
        and     al, ch                          ; 22 C5
        xor     al, cl                          ; 32 C1
        out     0x21, al                        ; E6 21
        sti                                     ; FB
        inc     si                              ; 46
        inc     si                              ; 46
        mov     al, byte ptr [0x10]             ; A0 10 00
        cmp     al, 1                           ; 3C 01
        jb      L_02CB                          ; 72 97
;   [error/early exit] L_0334
L_0334:
        ret                                     ; C3
        add     byte ptr [bx + si], al          ; 00 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        add     ax, word ptr cs:[0x335]         ; 2E 03 06 35 03
        jb      L_0346                          ; 72 04
        mov     word ptr cs:[0x335], ax         ; 2E A3 35 03
;   [conditional branch target (if/else)] L_0346
L_0346:
        mov     al, 0x20                        ; B0 20
        out     0x20, al                        ; E6 20
        pop     ax                              ; 58
        iret                                    ; CF
; Description (heuristic):
;   Pure computation / dispatcher (61 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_034C   offset=0x034C  size=61 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=3)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_034C
L_034C:
        mov     word ptr cs:[0x335], es         ; 2E 8C 06 35 03
        ; constant WM_MOVE
        mov     al, 3                           ; B0 03
        xor     cx, cx                          ; 33 C9
;   [loop iteration target] L_0355
L_0355:
        loop    L_0355                          ; E2 FE
        dec     al                              ; FE C8
        jne     L_0355                          ; 75 FA
        mov     ax, word ptr cs:[0x335]         ; 2E A1 35 03
        ret                                     ; C3
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        mov     al, 7                           ; B0 07
        out     dx, al                          ; EE
        inc     dx                              ; 42
        mov     al, 0x31                        ; B0 31
        out     dx, al                          ; EE
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        dec     dx                              ; 4A
        out     dx, al                          ; EE
        inc     dx                              ; 42
        in      al, dx                          ; EC
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        mov     al, 2                           ; B0 02
        dec     dx                              ; 4A
        out     dx, al                          ; EE
        inc     dx                              ; 42
        in      al, dx                          ; EC
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, 0                           ; B0 00
        dec     dx                              ; 4A
        out     dx, al                          ; EE
        inc     dx                              ; 42
        in      al, dx                          ; EC
        xchg    ah, al                          ; 86 C4
        mov     al, 7                           ; B0 07
        dec     dx                              ; 4A
        out     dx, al                          ; EE
        inc     dx                              ; 42
        mov     al, 0x11                        ; B0 11
        out     dx, al                          ; EE
        xchg    ah, al                          ; 86 C4
        xor     ah, ah                          ; 32 E4
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        test    al, 0x80                        ; A8 80
        je      L_03A3                          ; 74 0A
        or      ah, 2                           ; 80 CC 02
        test    al, 0x10                        ; A8 10
        jne     L_03A3                          ; 75 03
        xor     ah, 6                           ; 80 F4 06
;   [conditional branch target (if/else)] L_03A3
L_03A3:
        test    al, 0x20                        ; A8 20
        je      L_03B1                          ; 74 0A
        or      ah, 8                           ; 80 CC 08
        test    al, 4                           ; A8 04
        jne     L_03B1                          ; 75 03
        xor     ah, 0x18                        ; 80 F4 18
;   [conditional branch target (if/else)] L_03B1
L_03B1:
        mov     al, 0x20                        ; B0 20
        out     0x20, al                        ; E6 20
        xchg    ah, al                          ; 86 C4
        cwde                                    ; 98
        ret                                     ; C3

MOUSE_TEXT ENDS

        END
