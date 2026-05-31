; ======================================================================
; HERCULES / seg1.asm   (segment 1 of HERCULES)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        57
; Total instructions:                 3024
; 
; Classification (pass8):
;   C-origin (high+medium):              0
;   ASM-origin (high+medium):           28
;   Unclear:                            26
;   Tiny / unclassified:                 3
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original HERCULES segment 1
; segment_size=7773 bytes, flags=0x0040
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

HERCULES_TEXT SEGMENT BYTE PUBLIC 'CODE'

        add     byte ptr [bx + si], al          ; 00 00
        inc     ax                              ; 40
        inc     ax                              ; 40
        add     byte ptr [bx + si - 0x3f40], 0xff ; 80 80 C0 C0 FF
        inc     word ptr [bp + di]              ; FF 03
        cli                                     ; FA
        jns     L_0012                          ; 79 04
        sub     di, 0x7fa6                      ; 81 EF A6 7F
;   [conditional branch target (if/else)] L_0012
L_0012:
        sub     cl, 8                           ; 80 E9 08
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 0xb                         ; 80 E9 0B
        add     di, dx                          ; 03 FA
        jns     L_0024                          ; 79 04
        add     di, 0x7fa6                      ; 81 C7 A6 7F
;   [conditional branch target (if/else)] L_0024
L_0024:
        sub     cl, 8                           ; 80 E9 08
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 0xb                         ; 80 E9 0B
        add     di, dx                          ; 03 FA
        jns     L_0036                          ; 79 04
        sub     di, 0x7fa6                      ; 81 EF A6 7F
;   [conditional branch target (if/else)] L_0036
L_0036:
        sub     cl, 8                           ; 80 E9 08
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 0xb                         ; 80 E9 0B
        add     di, dx                          ; 03 FA
        jns     L_0048                          ; 79 04
        add     di, 0x7fa6                      ; 81 C7 A6 7F
;   [conditional branch target (if/else)] L_0048
L_0048:
        sub     cl, 8                           ; 80 E9 08
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 0xb                         ; 80 E9 0B
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 3                           ; 80 E9 03
        add     di, dx                          ; 03 FA
        jns     L_0061                          ; 79 04
        sub     di, 0x7fa6                      ; 81 EF A6 7F
;   [conditional branch target (if/else)] L_0061
L_0061:
        sub     cl, 0x10                        ; 80 E9 10
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 3                           ; 80 E9 03
        add     di, dx                          ; 03 FA
        jns     L_0073                          ; 79 04
        add     di, 0x7fa6                      ; 81 C7 A6 7F
;   [conditional branch target (if/else)] L_0073
L_0073:
        sub     cl, 0x10                        ; 80 E9 10
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 3                           ; 80 E9 03
        add     di, dx                          ; 03 FA
        jns     L_0085                          ; 79 04
        sub     di, 0x7fa6                      ; 81 EF A6 7F
;   [conditional branch target (if/else)] L_0085
L_0085:
        sub     cl, 0x10                        ; 80 E9 10
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 3                           ; 80 E9 03
        add     di, dx                          ; 03 FA
        jns     L_0097                          ; 79 04
        add     di, 0x7fa6                      ; 81 C7 A6 7F
;   [conditional branch target (if/else)] L_0097
L_0097:
        sub     cl, 0x10                        ; 80 E9 10
        or      al, byte ptr [bx + si]          ; 0A 00
        sbb     al, 0                           ; 1C 00
        add     byte ptr cs:[bx + si], al       ; 2E 00 40 00
        push    dx                              ; 52
        add     byte ptr [si], ah               ; 00 64 00
        jbe     L_00A8                          ; 76 00
;   [conditional branch target (if/else)] L_00A8
L_00A8:
        mov     byte ptr [bx + si], al          ; 88 00
        daa                                     ; 27
        add     byte ptr [bx], ah               ; 00 27
        add     byte ptr [bx + di], bh          ; 00 39
        add     byte ptr [bx + di], bh          ; 00 39
        add     byte ptr [di], bh               ; 00 7D 00
        pop     word ptr [bx + si]              ; 8F 00
        jge     L_00B8                          ; 7D 00
;   [conditional branch target (if/else)] L_00B8
L_00B8:
        pop     word ptr [bx + si]              ; 8F 00
        or      cx, word ptr [bp + di]          ; 0B 0B
        or      cx, word ptr [bp + di]          ; 0B 0B
        pop     es                              ; 07
        pop     es                              ; 07
        pop     es                              ; 07
        pop     es                              ; 07
        adc     dl, byte ptr [bp + si]          ; 12 12
        adc     dl, byte ptr [bp + si]          ; 12 12
        adc     dl, byte ptr [bp + si]          ; 12 12
        adc     dl, byte ptr [bp + si]          ; 12 12
        pop     es                              ; 07
        pop     es                              ; 07
        pop     es                              ; 07
        pop     es                              ; 07
        or      cx, word ptr [bp + di]          ; 0B 0B
        or      cx, word ptr [bp + di]          ; 0B 0B
        push    es                              ; 06
        push    es                              ; 06
        push    es                              ; 06
        push    es                              ; 06
        or      ax, 0xd0d                       ; 0D 0D 0D
        or      ax, 0                           ; 0D 00 00
        add     byte ptr [bx + si], al          ; 00 00
        push    es                              ; 06
        push    es                              ; 06
        push    es                              ; 06
        push    es                              ; 06
        add     byte ptr [bx + si + 0x2d0], bh  ; 00 B8 D0 02
        pop     sp                              ; 5C
        add     word ptr [bp + si], bx          ; 01 5A 00
        add     word ptr [bx + di], ax          ; 01 01
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si + 0x7a58], bh ; 00 B8 58 7A
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], ah          ; 00 20
        add     byte ptr [bx + si], al          ; 00 40 00
        pushaw                                  ; 60
        add     byte ptr [bx + di], al          ; 00 01
        add     word ptr [bx + si], ax          ; 01 00
        loope   L_0110                          ; E1 00
;   [loop iteration target] L_0110
L_0110:
        xchg    cx, ax                          ; 91
        add     al, dl                          ; 00 D0
        add     bl, byte ptr [si + 1]           ; 02 5C 01
        add     word ptr [bx + si], ax          ; 01 00
        add     word ptr [bx + si], ax          ; 01 00
        dec     bp                              ; 4D
        add     byte ptr [bp + si], cl          ; 00 0A
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bp + si], al          ; 00 02
        add     byte ptr [bp + si], ah          ; 00 22
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bp + si], ah          ; 00 22
        add     byte ptr [bx + si], cl          ; 00 08
        add     byte ptr [si], al               ; 00 04
        and     byte ptr [bx + si], al          ; 20 00
        add     byte ptr [bx + di], al          ; 00 01
        add     byte ptr [bp + di], cl          ; 00 0B
        add     byte ptr [bx + si], dl          ; 00 10
        add     byte ptr [bp + di], dl          ; 00 13
        add     byte ptr [0xca00], ah           ; 00 26 00 CA
        or      byte ptr [bp + si - 0x2ffb], ch ; 08 AA 05 D0
        add     ah, byte ptr [si - 0x1b02]      ; 02 A4 FE E4
        push    di                              ; 57
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        cmp     al, dl                          ; 38 D0
        add     ah, byte ptr [si - 0x1702]      ; 02 A4 FE E8
        add     dx, bp                          ; 03 D5
        add     ch, byte ptr [di]               ; 02 2D
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        adc     byte ptr [bx], ah               ; 10 27
        sub     word ptr [0x32d], cx            ; 29 0E 2D 03
        and     di, di                          ; 23 FF
        test    al, 0xc                         ; A8 0C
        adc     al, 0xb7                        ; 64 14 B7
        add     byte ptr [bp + di], ah          ; 00 23
        jmp     word ptr [bx + si]              ; FF 60 00
        dec     ax                              ; 48
        add     byte ptr [si], al               ; 00 04
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si + 0x2040], al ; 00 80 40 20
        adc     byte ptr [bx + si], cl          ; 10 08
        add     al, 2                           ; 04 02
        add     word ptr [di], si               ; 01 35
        sub     ax, 0x72e                       ; 2D 2E 07
        pop     bx                              ; 5B
        add     dl, byte ptr [bx + 0x57]        ; 02 57 57
        add     al, byte ptr [bp + di]          ; 02 03
        add     byte ptr [bx + si], al          ; 00 00
        popaw                                   ; 61
        push    ax                              ; 50
        push    dx                              ; 52
        nop     word ptr [0x1919]               ; 0F 19 06 19 19
        add     cl, byte ptr [di]               ; 02 0D
        or      cx, word ptr [si]               ; 0B 0C
; Description (heuristic):
;   Internal helper (13 instructions).

;-------------------------------------------------------------------------
; sub_0192   offset=0x0192  size=13 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=9)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_01CA
;-------------------------------------------------------------------------
;   [sub-routine] L_0192
L_0192:
        ; constant WM_PAINT
        mov     ah, 0xf                         ; B4 0F
        int     0x10                            ; CD 10
        stosb   byte ptr es:[di], al            ; AA
        mov     dx, 0x3bf                       ; BA BF 03
        ; constant WM_MOVE
        mov     al, 3                           ; B0 03
        out     dx, al                          ; EE
        mov     al, 0x82                        ; B0 82
        lea     si, [0x17a]                     ; 8D 36 7A 01
        mov     bx, 0x5555                      ; BB 55 55
        mov     cx, 0x4000                      ; B9 00 40
        call    L_01CA                          ; E8 1E 00
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_01AF   offset=0x01AF  size=12 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=8)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_01CA
;-------------------------------------------------------------------------
;   [sub-routine] L_01AF
L_01AF:
        mov     al, byte ptr [si + 0x20]        ; 8A 44 20
        push    ax                              ; 50
        mov     al, 0x20                        ; B0 20
        lea     si, [0x186]                     ; 8D 36 86 01
        mov     bx, 0x720                       ; BB 20 07
        mov     cx, 0x2000                      ; B9 00 20
        call    L_01CA                          ; E8 08 00
        pop     ax                              ; 58
        mov     ah, 0                           ; B4 00
        int     0x10                            ; CD 10
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (735 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_01CA   offset=0x01CA  size=735 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1A53, L_1ADF, L_1E2F
;-------------------------------------------------------------------------
;   [sub-routine] L_01CA
L_01CA:
        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        mov     dx, 0x3b8                       ; BA B8 03
        out     dx, al                          ; EE
        mov     dx, 0x3b4                       ; BA B4 03
        ; constant WM_SETTEXT
        mov     cx, 0xc                         ; B9 0C 00
        xor     ah, ah                          ; 32 E4
;   [loop iteration target] L_01D9
L_01D9:
        mov     al, ah                          ; 8A C4
        out     dx, al                          ; EE
        jmp     L_01DE                          ; EB 00
;   [unconditional branch target] L_01DE
L_01DE:
        inc     dx                              ; 42
        lodsb   al, byte ptr [si]               ; AC
        out     dx, al                          ; EE
        inc     ah                              ; FE C4
        dec     dx                              ; 4A
        loop    L_01D9                          ; E2 F3
        pop     cx                              ; 59
        mov     ax, 0xb800                      ; B8 00 B8
        mov     es, ax                          ; 8E C0
        cld                                     ; FC
        xor     di, di                          ; 33 FF
        pop     ax                              ; 58
        rep stosw word ptr es:[di], ax          ; F3 AB
        mov     dx, 0x3b8                       ; BA B8 03
        pop     ax                              ; 58
        or      al, 8                           ; 0C 08
        out     dx, al                          ; EE
        ret                                     ; C3
        mov     dx, ds                          ; 8C DA
        mov     cx, si                          ; 8B CE
        mov     si, 0xb3b8                      ; BE B8 B3
        mov     ds, ax                          ; 8E D8
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr [bx + si]          ; 8A 18
        mov     si, cx                          ; 8B F1
        mov     ds, dx                          ; 8E DA
        mov     dh, bl                          ; 8A F3
        add     byte ptr cs:[0x7449], 3         ; 2E 80 06 49 74 03
        jmp     0xffffe2a2                      ; E9 8A E0
        and     ax, bp                          ; 23 C5
        or      al, bh                          ; 0A C7
        mov     bh, ah                          ; 8A FC
        and     ax, 0xffff                      ; 25 FF FF
        or      al, ah                          ; 0A C4
        stosb   byte ptr es:[di], al            ; AA
        db      0ffh                            ; FF
        jg      L_0266                          ; 7F 3F
        pop     ds                              ; 1F
        sysret                                  ; 0F 07
        add     ax, word ptr [bx + di]          ; 03 01
        add     al, 0xe0                        ; 80 C0 E0
        db      0f0h                            ; F0
        clc                                     ; F8
        cld                                     ; FC
        db      0feh                            ; FE
        db      0ffh                            ; FF
        inc     word ptr [bx + si]              ; FF 00
        add     si, di                          ; 01 FE
        add     di, sp                          ; 03 FC
        pop     es                              ; 07
        clc                                     ; F8
        db      00fh                            ; 0F
        db      0f0h                            ; F0
        pop     ds                              ; 1F
        loopne  L_0280                          ; E0 3F
        sar     byte ptr [bx - 0x80], 0xf6      ; C0 7F 80 F6
        sal     byte ptr [bp + si], 1           ; D0 32
        add     ax, 0x50a                       ; 05 0A 05
        and     al, byte ptr [di]               ; 22 05
        xor     al, bl                          ; 32 C3
;   [loop start] L_024E
L_024E:
        xor     al, dl                          ; 32 C2
        xor     al, ah                          ; 32 C4
        xor     al, dh                          ; 32 C6
        or      al, bl                          ; 0A C3
        or      al, dl                          ; 0A C2
        or      al, ah                          ; 0A C4
        or      al, dh                          ; 0A C6
        and     al, bl                          ; 22 C3
        and     al, dl                          ; 22 C2
        and     al, ah                          ; 22 C4
        and     al, dh                          ; 22 C6
        stosb   byte ptr es:[di], al            ; AA
        jp      L_024E                          ; 7A E7
        jns     L_021F                          ; 79 B6
        insw    word ptr es:[di], dx            ; 6D
        stosb   byte ptr es:[di], al            ; AA
        stosb   byte ptr es:[di], al            ; AA
        stosb   byte ptr es:[di], al            ; AA
        stosb   byte ptr es:[di], al            ; AA
        and     ax, 0x3947                      ; 25 47 39
        inc     di                              ; 47
        cmp     word ptr [bp - 0x74], ax        ; 39 46 8C
        fcom    dword ptr [bx + si + 0x5545]    ; D8 90 45 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x38                        ; B8 38 00
        call    L_1E2F                          ; E8 AB 1B
        push    si                              ; 56
        push    di                              ; 57
        jae     L_028B                          ; 73 03
        jmp     L_0828                          ; E9 9D 05
;   [conditional branch target (if/else)] L_028B
L_028B:
        cld                                     ; FC
        mov     cx, 0x100                       ; B9 00 01
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_030F                          ; 74 70
        mov     byte ptr [bp - 5], cl           ; 88 4E FB
        mov     dx, 0xc0                        ; BA C0 00
        xchg    cl, ch                          ; 86 E9
;   [loop start] L_02A7
L_02A7:
        inc     ch                              ; FE C5
        test    dx, ax                          ; 85 C2
        je      L_02B1                          ; 74 04
        inc     cl                              ; FE C1
        xor     ch, ch                          ; 32 ED
;   [conditional branch target (if/else)] L_02B1
L_02B1:
        shl     dx, 1                           ; D1 E2
        shl     dx, 1                           ; D1 E2
        jae     L_02A7                          ; 73 F0
        ; constant WM_SIZE
        mov     dl, 5                           ; B2 05
        test    ax, 0x20                        ; A9 20 00
        je      L_02C2                          ; 74 04
        inc     ch                              ; FE C5
        inc     dl                              ; FE C2
;   [conditional branch target (if/else)] L_02C2
L_02C2:
        and     ch, 0xfe                        ; 80 E5 FE
        sub     dl, ch                          ; 2A D5
        mov     byte ptr [bp - 0x33], dl        ; 88 56 CD
        mov     bx, ax                          ; 8B D8
        and     bx, 0x1c                        ; 81 E3 1C 00
        shr     bx, 1                           ; D1 EB
        and     al, 3                           ; 24 03
        cmp     bl, 5                           ; 80 FB 05
        jb      L_02DC                          ; 72 03
        add     cl, 2                           ; 80 C1 02
;   [conditional branch target (if/else)] L_02DC
L_02DC:
        mov     dl, cl                          ; 8A D1
        add     cl, al                          ; 02 C8
        add     cl, cl                          ; 02 C9
        mov     bx, word ptr cs:[bx + 0x264]    ; 2E 8B 9F 64 02
        rol     bx, cl                          ; D3 C3
        mov     word ptr [bp - 0x32], bx        ; 89 5E CE
;   [loop start] L_02EC
L_02EC:
        mov     si, bx                          ; 8B F3
        and     si, 3                           ; 81 E6 03 00
        ror     bx, 1                           ; D1 CB
        ror     bx, 1                           ; D1 CB
        inc     byte ptr [bp + si - 6]          ; FE 42 FA
        dec     dl                              ; FE CA
        jne     L_02EC                          ; 75 EF
        test    byte ptr [bp - 6], 1            ; F6 46 FA 01
        je      L_0308                          ; 74 05
;   [loop start] L_0303
L_0303:
        xor     ax, ax                          ; 33 C0
        jmp     L_0824                          ; E9 1C 05
;   [conditional branch target (if/else)] L_0308
L_0308:
        xor     cx, cx                          ; 33 C9
        mov     cl, byte ptr [bp - 5]           ; 8A 4E FB
        jcxz    L_032A                          ; E3 1B
;   [conditional branch target (if/else)] L_030F
L_030F:
        lds     si, ptr [bp + 0x1a]             ; C5 76 1A
        lodsw   ax, word ptr [si]               ; AD
        mov     cx, ax                          ; 8B C8
        add     si, 4                           ; 83 C6 04
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, 0x101                       ; 3D 01 01
        jne     L_0303                          ; 75 E1
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
;   [conditional branch target (if/else)] L_032A
L_032A:
        mov     word ptr [bp - 0x26], cx        ; 89 4E DA
        cmp     byte ptr [bp - 3], 0            ; 80 7E FD 00
        je      L_033C                          ; 74 09
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        cmp     word ptr [si + 8], 1            ; 83 7C 08 01
        je      L_0303                          ; 74 C7
;   [conditional branch target (if/else)] L_033C
L_033C:
        lds     si, ptr [bp + 0x22]             ; C5 76 22
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        add     si, 4                           ; 83 C6 04
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, 0x101                       ; 3D 01 01
        jne     L_0303                          ; 75 B3
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     si, word ptr [bp + 0x14]        ; 8B 76 14
        or      si, si                          ; 0B F6
        je      L_0303                          ; 74 A4
        mov     di, word ptr [bp + 0x12]        ; 8B 7E 12
        or      di, di                          ; 0B FF
        je      L_0303                          ; 74 9D
        dec     si                              ; 4E
        dec     di                              ; 4F
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        or      ax, word ptr [bp - 0x2e]        ; 0B 46 D2
        je      L_03A4                          ; 74 34
        mov     cx, word ptr [bp + 0x20]        ; 8B 4E 20
        mov     dx, word ptr [bp + 0x1e]        ; 8B 56 1E
        cmp     word ptr [bp - 0x26], 0         ; 83 7E DA 00
        je      L_039D                          ; 74 21
        mov     ax, cx                          ; 8B C1
        mov     bx, dx                          ; 8B DA
        mov     cx, word ptr [bp + 0x18]        ; 8B 4E 18
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        je      L_039D                          ; 74 11
        cmp     cx, ax                          ; 3B C8
        jle     L_0391                          ; 7E 01
        xchg    cx, ax                          ; 91
;   [conditional branch target (if/else)] L_0391
L_0391:
        cmp     dx, bx                          ; 3B D3
        jle     L_0397                          ; 7E 02
        xchg    bx, dx                          ; 87 D3
;   [conditional branch target (if/else)] L_0397
L_0397:
        add     si, ax                          ; 03 F0
        add     di, bx                          ; 03 FB
        jmp     L_03A1                          ; EB 04
;   [conditional branch target (if/else)] L_039D
L_039D:
        add     si, cx                          ; 03 F1
        add     di, dx                          ; 03 FA
;   [unconditional branch target] L_03A1
L_03A1:
        call    L_1A53                          ; E8 AF 16
;   [conditional branch target (if/else)] L_03A4
L_03A4:
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        dec     dx                              ; 4A
        mov     bx, word ptr [bp + 0x20]        ; 8B 5E 20
        mov     di, bx                          ; 8B FB
        and     bx, 7                           ; 81 E3 07 00
        mov     ax, di                          ; 8B C7
        cmp     byte ptr [bp - 5], 0            ; 80 7E FB 00
        je      L_03C0                          ; 74 07
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     byte ptr [bp - 0xa], 2          ; C6 46 F6 02
;   [conditional branch target (if/else)] L_03C0
L_03C0:
        mov     si, ax                          ; 8B F0
        and     ax, 7                           ; 25 07 00
        cmp     si, di                          ; 3B F7
        jl      L_03F7                          ; 7C 2E
        sub     al, bl                          ; 2A C3
        mov     byte ptr [bp - 0xb], 1          ; C6 46 F5 01
        mov     ch, byte ptr cs:[bx + 0x224]    ; 2E 8A AF 24 02
        ja      L_03DA                          ; 77 04
        mov     byte ptr [bp - 0xa], 1          ; C6 46 F6 01
;   [conditional branch target (if/else)] L_03DA
L_03DA:
        add     al, 8                           ; 04 08
        and     al, 7                           ; 24 07
        add     bx, dx                          ; 03 DA
        mov     dx, bx                          ; 8B D3
        and     bx, 7                           ; 81 E3 07 00
        mov     cl, byte ptr cs:[bx + 0x22c]    ; 2E 8A 8F 2C 02
        mov     bl, al                          ; 8A D8
        add     bx, bx                          ; 03 DB
        mov     bx, word ptr cs:[bx + 0x234]    ; 2E 8B 9F 34 02
        jmp     L_042D                          ; EB 37
        nop                                     ; 90
;   [conditional branch target (if/else)] L_03F7
L_03F7:
        mov     byte ptr [bp - 0xb], 0          ; C6 46 F5 00
        mov     cl, byte ptr cs:[bx + 0x224]    ; 2E 8A 8F 24 02
        add     ax, dx                          ; 03 C2
        add     bx, dx                          ; 03 DA
        add     di, dx                          ; 03 FA
        add     si, dx                          ; 03 F2
        mov     dx, bx                          ; 8B D3
        and     ax, 7                           ; 25 07 00
        and     bx, 7                           ; 81 E3 07 00
        mov     ch, byte ptr cs:[bx + 0x22c]    ; 2E 8A AF 2C 02
        sub     al, bl                          ; 2A C3
        jb      L_041E                          ; 72 04
        mov     byte ptr [bp - 0xa], 1          ; C6 46 F6 01
;   [conditional branch target (if/else)] L_041E
L_041E:
        add     al, 8                           ; 04 08
        and     al, 7                           ; 24 07
        mov     ah, cl                          ; 8A E1
        mov     cl, al                          ; 8A C8
        mov     bx, 0xff                        ; BB FF 00
        shl     bx, cl                          ; D3 E3
        mov     cl, ah                          ; 8A CC
;   [unconditional branch target] L_042D
L_042D:
        mov     byte ptr [bp - 7], al           ; 88 46 F9
        mov     word ptr [bp - 0x12], bx        ; 89 5E EE
        shr     dx, 1                           ; D1 EA
        shr     dx, 1                           ; D1 EA
        shr     dx, 1                           ; D1 EA
        jne     L_0440                          ; 75 05
        and     ch, cl                          ; 22 E9
        xor     cl, cl                          ; 32 C9
        inc     dx                              ; 42
;   [conditional branch target (if/else)] L_0440
L_0440:
        dec     dx                              ; 4A
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        ; constant WM_SETTEXT
        mov     bl, ch                          ; 8A DD
        mov     ch, cl                          ; 8A E9
        not     cl                              ; F6 D1
        mov     word ptr [bp - 0x10], cx        ; 89 4E F0
        mov     bh, bl                          ; 8A FB
        not     bl                              ; F6 D3
        mov     word ptr [bp - 0xe], bx         ; 89 5E F2
        shr     di, 1                           ; D1 EF
        shr     di, 1                           ; D1 EF
        shr     di, 1                           ; D1 EF
        add     word ptr [bp - 0x1a], di        ; 01 7E E6
        mov     bx, word ptr [bp + 0x1e]        ; 8B 5E 1E
        mov     cx, bx                          ; 8B CB
        cmp     byte ptr [bp - 5], 0            ; 80 7E FB 00
        je      L_0474                          ; 74 0C
        shr     si, 1                           ; D1 EE
        shr     si, 1                           ; D1 EE
        shr     si, 1                           ; D1 EE
        add     word ptr [bp - 0x16], si        ; 01 76 EA
        mov     cx, word ptr [bp + 0x16]        ; 8B 4E 16
;   [conditional branch target (if/else)] L_0474
L_0474:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        ; constant WM_CREATE
        mov     dh, 1                           ; B6 01
        cmp     cx, bx                          ; 3B CB
        jge     L_0484                          ; 7D 07
        dec     ax                              ; 48
        add     bx, ax                          ; 03 D8
        add     cx, ax                          ; 03 C8
        mov     dh, 0xff                        ; B6 FF
;   [conditional branch target (if/else)] L_0484
L_0484:
        mov     byte ptr [bp - 8], bl           ; 88 5E F8
        mov     byte ptr [bp - 9], dh           ; 88 76 F7
        mov     di, word ptr [bp - 0x30]        ; 8B 7E D0
        mov     si, di                          ; 8B F7
        mov     ax, di                          ; 8B C7
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        je      L_04BA                          ; 74 23
        mov     di, 0x2000                      ; BF 00 20
        mov     si, 0xa05a                      ; BE 5A A0
        test    byte ptr [bp - 9], 0x80         ; F6 46 F7 80
        je      L_04A8                          ; 74 05
        mov     si, 0x605a                      ; BE 5A 60
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_04A8
L_04A8:
        shr     bx, 1                           ; D1 EB
        jae     L_04B1                          ; 73 05
        add     word ptr [bp - 0x1a], 0x2000    ; 81 46 E6 00 20
;   [conditional branch target (if/else)] L_04B1
L_04B1:
        shr     bx, 1                           ; D1 EB
        jae     L_04BA                          ; 73 05
        add     word ptr [bp - 0x1a], 0x4000    ; 81 46 E6 00 40
;   [conditional branch target (if/else)] L_04BA
L_04BA:
        mul     bx                              ; F7 E3
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        test    byte ptr [bp - 9], 0x80         ; F6 46 F7 80
        je      L_04CB                          ; 74 06
        neg     di                              ; F7 DF
        neg     si                              ; F7 DE
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_04CB
L_04CB:
        xor     si, di                          ; 33 F7
        mov     word ptr [bp - 0x2c], di        ; 89 7E D4
        mov     word ptr [bp - 0x2a], si        ; 89 76 D6
        cmp     byte ptr [bp - 5], 0            ; 80 7E FB 00
        je      L_0522                          ; 74 49
        mov     di, word ptr [bp - 0x28]        ; 8B 7E D8
        mov     si, di                          ; 8B F7
        mov     ax, di                          ; 8B C7
        cmp     word ptr [bp - 0x26], 0         ; 83 7E DA 00
        je      L_0509                          ; 74 23
        mov     di, 0x2000                      ; BF 00 20
        mov     si, 0xa05a                      ; BE 5A A0
        test    byte ptr [bp - 9], 0x80         ; F6 46 F7 80
        je      L_04F7                          ; 74 05
        mov     si, 0x605a                      ; BE 5A 60
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_04F7
L_04F7:
        shr     cx, 1                           ; D1 E9
        jae     L_0500                          ; 73 05
        add     word ptr [bp - 0x16], 0x2000    ; 81 46 EA 00 20
;   [conditional branch target (if/else)] L_0500
L_0500:
        shr     cx, 1                           ; D1 E9
        jae     L_0509                          ; 73 05
        add     word ptr [bp - 0x16], 0x4000    ; 81 46 EA 00 40
;   [conditional branch target (if/else)] L_0509
L_0509:
        mul     cx                              ; F7 E1
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
        test    byte ptr [bp - 9], 0x80         ; F6 46 F7 80
        je      L_051A                          ; 74 06
        neg     di                              ; F7 DF
        neg     si                              ; F7 DE
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_051A
L_051A:
        xor     si, di                          ; 33 F7
        mov     word ptr [bp - 0x24], di        ; 89 7E DC
        mov     word ptr [bp - 0x22], si        ; 89 76 DE
;   [conditional branch target (if/else)] L_0522
L_0522:
        mov     ax, 0x17e                       ; B8 7E 01
        call    L_1E2F                          ; E8 07 19
        jae     L_052D                          ; 73 03
        jmp     L_0824                          ; E9 F7 02
;   [conditional branch target (if/else)] L_052D
L_052D:
        add     sp, 0x20                        ; 83 C4 20
        mov     di, sp                          ; 8B FC
        mov     word ptr [bp - 0x1e], di        ; 89 7E E2
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        xor     cx, cx                          ; 33 C9
        mov     ax, 0x5751                      ; B8 51 57
        stosw   word ptr es:[di], ax            ; AB
        cmp     byte ptr [bp - 5], 0            ; 80 7E FB 00
        je      L_054F                          ; 74 03
        mov     al, 0x56                        ; B0 56
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_054F
L_054F:
        cmp     byte ptr [bp - 3], 0            ; 80 7E FD 00
        je      L_0577                          ; 74 22
        mov     si, 0x1fa                       ; BE FA 01
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        stosw   word ptr es:[di], ax            ; AB
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        stosw   word ptr es:[di], ax            ; AB
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        mov     dx, di                          ; 8B D7
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        stosb   byte ptr es:[di], al            ; AA
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        mov     cl, 8                           ; B1 08
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
        mov     al, byte ptr [bp - 9]           ; 8A 46 F7
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_0577
L_0577:
        mov     bx, di                          ; 8B DF
        xor     dx, dx                          ; 33 D2
        or      dl, byte ptr [bp - 5]           ; 0A 56 FB
        je      L_05B9                          ; 74 39
        or      dh, byte ptr [bp - 7]           ; 0A 76 F9
        je      L_0590                          ; 74 0B
        mov     al, 0xbd                        ; B0 BD
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xff32                      ; B8 32 FF
        stosw   word ptr es:[di], ax            ; AB
;   [loop start (also forward branch)] L_0590
L_0590:
        mov     bx, di                          ; 8B DF
        mov     al, 0xac                        ; B0 AC
        stosb   byte ptr es:[di], al            ; AA
        or      dh, dh                          ; 0A F6
        je      L_05B4                          ; 74 1B
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        mov     ax, 0xc0d0                      ; B8 D0 C0
        cmp     cl, 5                           ; 80 F9 05
        jb      L_05AB                          ; 72 08
        neg     cl                              ; F6 D9
        add     cl, 8                           ; 80 C1 08
        mov     ax, 0xc8d0                      ; B8 D0 C8
;   [conditional branch target (if/else)] L_05AB
L_05AB:
        rep stosw word ptr es:[di], ax          ; F3 AB
        mov     si, 0x216                       ; BE 16 02
        mov     cl, 4                           ; B1 04
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
;   [conditional branch target (if/else)] L_05B4
L_05B4:
        dec     byte ptr [bp - 0xa]             ; FE 4E F6
        jne     L_0590                          ; 75 D7
;   [conditional branch target (if/else)] L_05B9
L_05B9:
        mov     word ptr [bp - 0x36], bx        ; 89 5E CA
        xor     dh, dh                          ; 32 F6
        mov     cx, word ptr [bp + 0xe]         ; 8B 4E 0E
        cmp     cx, 0x20                        ; 83 F9 20
        jne     L_05C9                          ; 75 03
        jmp     L_0676                          ; E9 AD 00
;   [conditional branch target (if/else)] L_05C9
L_05C9:
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        mov     si, word ptr [bp - 0x32]        ; 8B 76 CE
        mov     dl, byte ptr [bp - 0x33]        ; 8A 56 CD
        cmp     byte ptr [bp - 5], 1            ; 80 7E FB 01
        jb      L_05E7                          ; 72 0E
        jne     L_05E3                          ; 75 08
        mov     ax, si                          ; 8B C6
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        je      L_05E7                          ; 74 04
;   [conditional branch target (if/else)] L_05E3
L_05E3:
        mov     ax, 0xd08a                      ; B8 8A D0
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_05E7
L_05E7:
        cmp     byte ptr [bp - 4], 2            ; 80 7E FC 02
        jb      L_05F7                          ; 72 0A
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x258a                      ; B8 8A 25
        stosw   word ptr es:[di], ax            ; AB
        or      dh, 2                           ; 80 CE 02
;   [loop start (also forward branch)] L_05F7
L_05F7:
        mov     ax, si                          ; 8B C6
        and     ax, 3                           ; 25 03 00
        dec     ax                              ; 48
        jne     L_060C                          ; 75 0D
        test    dh, 1                           ; F6 C6 01
        je      L_0672                          ; 74 6E
        and     dh, 0xfe                        ; 80 E6 FE
        mov     ax, 0xc28a                      ; B8 8A C2
        jmp     L_0671                          ; EB 65
;   [conditional branch target (if/else)] L_060C
L_060C:
        dec     ax                              ; 48
        mov     ax, 0xc68a                      ; B8 8A C6
        jne     L_066E                          ; 75 5C
        mov     ax, 0xc48a                      ; B8 8A C4
        test    dh, 2                           ; F6 C6 02
        jne     L_066E                          ; 75 54
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x58a                       ; B8 8A 05
        jmp     L_066E                          ; EB 4C
;   [loop start] L_0622
L_0622:
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        mov     bx, cx                          ; 8B D9
        and     bx, 0xc                         ; 81 E3 0C 00
        mov     ax, 0xd0f6                      ; B8 F6 D0
        je      L_066E                          ; 74 3D
        ror     si, 1                           ; D1 CE
        ror     si, 1                           ; D1 CE
        mov     ax, si                          ; 8B C6
        and     ax, 3                           ; 25 03 00
        jne     L_0654                          ; 75 18
        xor     dh, 4                           ; 80 F6 04
        test    dh, 4                           ; F6 C6 04
        je      L_0654                          ; 74 10
        mov     ax, 0xd88a                      ; B8 8A D8
        stosw   word ptr es:[di], ax            ; AB
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        ror     si, 1                           ; D1 CE
        ror     si, 1                           ; D1 CE
        inc     dl                              ; FE C2
        jmp     L_05F7                          ; EB A3
;   [conditional branch target (if/else)] L_0654
L_0654:
        or      bx, ax                          ; 0B D8
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0667                          ; 75 0C
        test    dh, 2                           ; F6 C6 02
        jne     L_0667                          ; 75 07
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        shr     bx, 1                           ; D1 EB
        shr     bx, 1                           ; D1 EB
;   [conditional branch target (if/else)] L_0667
L_0667:
        add     bx, bx                          ; 03 DB
        mov     ax, word ptr cs:[bx + 0x244]    ; 2E 8B 87 44 02
;   [branch target] L_066E
L_066E:
        or      dh, 1                           ; 80 CE 01
;   [unconditional branch target] L_0671
L_0671:
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0672
L_0672:
        dec     dl                              ; FE CA
        jge     L_0622                          ; 7D AC
;   [unconditional branch target] L_0676
L_0676:
        mov     word ptr [bp - 0x38], di        ; 89 7E C8
        test    dh, 2                           ; F6 C6 02
        jne     L_0685                          ; 75 07
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x258a                      ; B8 8A 25
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0685
L_0685:
        mov     si, 0x21e                       ; BE 1E 02
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        xchg    al, ah                          ; 86 E0
        mov     word ptr es:[di - 5], ax        ; 26 89 45 FB
        mov     word ptr [bp - 0x3a], di        ; 89 7E C6
        mov     ax, es                          ; 8C C0
        mov     ds, ax                          ; 8E D8
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        or      dx, dx                          ; 0B D2
        je      L_0709                          ; 74 67
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        test    bx, 0x1c                        ; F7 C3 1C 00
        jne     L_070B                          ; 75 60
        test    bl, 3                           ; F6 C3 03
        je      L_06CF                          ; 74 1F
        mov     ax, 0xffb0                      ; B8 B0 FF
        test    bl, 1                           ; F6 C3 01
        je      L_06BB                          ; 74 03
        mov     ax, 0xc68a                      ; B8 8A C6
;   [conditional branch target (if/else)] L_06BB
L_06BB:
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xe08a                      ; B8 8A E0
        stosw   word ptr es:[di], ax            ; AB
        mov     si, 0xaa                        ; BE AA 00
        test    bx, 0x20                        ; F7 C3 20 00
        jne     L_06D8                          ; 75 0F
        mov     ax, 0xd0f7                      ; B8 F7 D0
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_06D8                          ; EB 09
;   [conditional branch target (if/else)] L_06CF
L_06CF:
        test    byte ptr [bp - 7], 0xff         ; F6 46 F9 FF
        jne     L_070B                          ; 75 36
        mov     si, 0xa4                        ; BE A4 00
;   [branch target] L_06D8
L_06D8:
        shr     dx, 1                           ; D1 EA
        jae     L_06DF                          ; 73 03
        mov     ax, si                          ; 8B C6
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_06DF
L_06DF:
        je      L_0709                          ; 74 28
        xor     bx, bx                          ; 33 DB
        cmp     bl, byte ptr [bp - 0xb]         ; 3A 5E F5
        jne     L_06EF                          ; 75 07
        mov     ax, 0x4f4e                      ; B8 4E 4F
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, 0x4746                      ; BB 46 47
;   [conditional branch target (if/else)] L_06EF
L_06EF:
        cmp     dx, 1                           ; 83 FA 01
        je      L_06FE                          ; 74 0A
        mov     al, 0xb9                        ; B0 B9
        mov     ah, dl                          ; 8A E2
        stosw   word ptr es:[di], ax            ; AB
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        mov     ah, 0xf3                        ; B4 F3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_06FE
L_06FE:
        mov     ax, si                          ; 8B C6
        inc     ax                              ; 40
        stosb   byte ptr es:[di], al            ; AA
        or      bx, bx                          ; 0B DB
        je      L_0709                          ; 74 03
        mov     ax, bx                          ; 8B C3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0709
L_0709:
        jmp     L_0784                          ; EB 79
;   [conditional branch target (if/else)] L_070B
L_070B:
        cmp     dx, 5                           ; 83 FA 05
        jb      L_0728                          ; 72 18
        mov     al, 0xb9                        ; B0 B9
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, dx                          ; 8B C2
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        and     al, 3                           ; 24 03
        je      L_0728                          ; 74 08
        mov     al, 0xe9                        ; B0 E9
        stosb   byte ptr es:[di], al            ; AA
        stosw   word ptr es:[di], ax            ; AB
        inc     word ptr es:[di - 5]            ; 26 FF 45 FB
;   [conditional branch target (if/else)] L_0728
L_0728:
        push    di                              ; 57
        mov     bx, dx                          ; 8B DA
        cmp     bx, 5                           ; 83 FB 05
        jb      L_0732                          ; 72 02
        mov     bl, 4                           ; B3 04
;   [conditional branch target (if/else)] L_0732
L_0732:
        mov     cx, word ptr [bp - 0x38]        ; 8B 4E C8
        mov     si, word ptr [bp - 0x36]        ; 8B 76 CA
        sub     cx, si                          ; 2B CE
        mov     bh, cl                          ; 8A F9
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     al, 0xaa                        ; B0 AA
        stosb   byte ptr es:[di], al            ; AA
        pop     si                              ; 5E
        inc     bh                              ; FE C7
        dec     bl                              ; FE CB
        je      L_0754                          ; 74 0C
        mov     al, bh                          ; 8A C7
        mul     bl                              ; F6 E3
        mov     cx, ax                          ; 8B C8
        mov     ax, si                          ; 8B C6
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, ax                          ; 8B F0
;   [conditional branch target (if/else)] L_0754
L_0754:
        cmp     dx, 5                           ; 83 FA 05
        jb      L_0784                          ; 72 2B
        mov     ax, dx                          ; 8B C2
        neg     ax                              ; F7 D8
        and     al, 3                           ; 24 03
        je      L_0767                          ; 74 06
        mul     bh                              ; F6 E7
        mov     word ptr es:[si - 2], ax        ; 26 89 44 FE
;   [conditional branch target (if/else)] L_0767
L_0767:
        mov     ax, si                          ; 8B C6
        sub     ax, di                          ; 2B C7
        cmp     ax, 0xff83                      ; 3D 83 FF
        jb      L_0779                          ; 72 09
        sub     al, 2                           ; 2C 02
        mov     ah, al                          ; 8A E0
        mov     al, 0xe2                        ; B0 E2
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0784                          ; EB 0B
;   [conditional branch target (if/else)] L_0779
L_0779:
        mov     si, 0x212                       ; BE 12 02
        movsw   word ptr es:[di], word ptr cs:[si] ; 2E A5
        movsw   word ptr es:[di], word ptr cs:[si] ; 2E A5
        sub     ax, 6                           ; 2D 06 00
        stosw   word ptr es:[di], ax            ; AB
;   [branch target] L_0784
L_0784:
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        or      dh, dh                          ; 0A F6
        je      L_079A                          ; 74 0F
        mov     cx, word ptr [bp - 0x3a]        ; 8B 4E C6
        mov     si, word ptr [bp - 0x36]        ; 8B 76 CA
        sub     cx, si                          ; 2B CE
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        xchg    dl, dh                          ; 86 F2
        mov     word ptr [di - 5], dx           ; 89 55 FB
;   [conditional branch target (if/else)] L_079A
L_079A:
        mov     cl, byte ptr [bp - 5]           ; 8A 4E FB
        or      cl, cl                          ; 0A C9
        je      L_07C0                          ; 74 1F
        mov     al, 0x5e                        ; B0 5E
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     dx, di                          ; 8B D7
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        or      bx, bx                          ; 0B DB
        je      L_07C0                          ; 74 0B
        mov     ax, 0x479                       ; B8 79 04
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, bx                          ; 8B C3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_07C0
L_07C0:
        mov     ax, 0x595f                      ; B8 5F 59
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc781                      ; B8 81 C7
        stosw   word ptr es:[di], ax            ; AB
        mov     dx, di                          ; 8B D7
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, word ptr [bp - 0x2a]        ; 8B 5E D6
        or      bx, bx                          ; 0B DB
        je      L_07E0                          ; 74 0B
        mov     ax, 0x479                       ; B8 79 04
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc781                      ; B8 81 C7
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, bx                          ; 8B C3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_07E0
L_07E0:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, di                          ; 2B C7
        cmp     ax, 0xff83                      ; 3D 83 FF
        jb      L_07F7                          ; 72 09
        sub     al, 2                           ; 2C 02
        mov     ah, al                          ; 8A E0
        mov     al, 0xe2                        ; B0 E2
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0800                          ; EB 09
;   [conditional branch target (if/else)] L_07F7
L_07F7:
        mov     si, 0x212                       ; BE 12 02
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        sub     ax, 6                           ; 2D 06 00
        stosw   word ptr es:[di], ax            ; AB
;   [unconditional branch target] L_0800
L_0800:
        mov     al, 0xcb                        ; B0 CB
        stosb   byte ptr es:[di], al            ; AA
        or      cl, cl                          ; 0A C9
        je      L_080A                          ; 74 03
        lds     si, ptr [bp - 0x16]             ; C5 76 EA
;   [conditional branch target (if/else)] L_080A
L_080A:
        les     di, ptr [bp - 0x1a]             ; C4 7E E6
        mov     cx, word ptr [bp + 0x12]        ; 8B 4E 12
        cld                                     ; FC
        cmp     byte ptr [bp - 0xb], 1          ; 80 7E F5 01
        je      L_0818                          ; 74 01
        std                                     ; FD
;   [conditional branch target (if/else)] L_0818
L_0818:
        push    bp                              ; 55
        lcall   [bp - 0x1e]                     ; FF 5E E2
        pop     bp                              ; 5D
        add     sp, 0x15e                       ; 81 C4 5E 01
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0824
L_0824:
        cld                                     ; FC
        call    L_1ADF                          ; E8 B7 12
;   [unconditional branch target] L_0828
L_0828:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x20                            ; CA 20 00

;-----------------------------------------------------------------------
; STRBLT  (offset 0x0835, size 1235 bytes)
;-----------------------------------------------------------------------
STRBLT PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x2e                        ; B8 2E 00
        call    L_1E2F                          ; E8 EA 15
        push    si                              ; 56
        push    di                              ; 57
        jb      L_085D                          ; 72 14
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x20                        ; 05 20 00
        mov     cx, ax                          ; 8B C8
        call    L_1E2F                          ; E8 D4 15
        jae     L_0860                          ; 73 03
;   [conditional branch target (if/else)] L_085D
L_085D:
        jmp     L_0D01                          ; E9 A1 04
;   [conditional branch target (if/else)] L_0860
L_0860:
        add     sp, cx                          ; 03 E1
        mov     word ptr [bp - 8], sp           ; 89 66 F8
        lds     si, ptr [bp + 0x18]             ; C5 76 18
        les     di, ptr [bp + 0xe]              ; C4 7E 0E
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, ax                          ; 0B C0
        je      L_08C5                          ; 74 53
        jg      L_087B                          ; 7F 07
        neg     ax                              ; F7 D8
        xor     bx, bx                          ; 33 DB
        mov     word ptr [bp + 0x18], bx        ; 89 5E 18
;   [conditional branch target (if/else)] L_087B
L_087B:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     cx, word ptr es:[di + 0x21]     ; 26 8B 4D 21
        mov     word ptr [bp - 0x18], cx        ; 89 4E E8
        mov     ax, word ptr es:[di + 0x14]     ; 26 8B 45 14
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        or      si, si                          ; 0B F6
        je      L_08C8                          ; 74 38
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     dx, ax                          ; 8B D0
        sub     ax, word ptr [bp + 0x1c]        ; 2B 46 1C
        mov     bx, ax                          ; 8B D8
        jge     L_08A0                          ; 7D 04
        sub     dx, bx                          ; 2B D3
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_08A0
L_08A0:
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        mov     dx, word ptr es:[di + 0x16]     ; 26 8B 55 16
        cmp     bx, dx                          ; 3B DA
        jge     L_08C5                          ; 7D 17
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [bp + 0x1c]        ; 2B 46 1C
        cmp     ax, dx                          ; 3B C2
        jl      L_08BA                          ; 7C 02
        mov     ax, dx                          ; 8B C2
;   [conditional branch target (if/else)] L_08BA
L_08BA:
        or      ax, ax                          ; 0B C0
        jle     L_08C5                          ; 7E 07
        cmp     ax, bx                          ; 3B C3
        jle     L_08C5                          ; 7E 03
        jmp     L_08D7                          ; EB 13
        nop                                     ; 90
;   [conditional branch target (if/else)] L_08C5
L_08C5:
        jmp     L_0CFB                          ; E9 33 04
;   [conditional branch target (if/else)] L_08C8
L_08C8:
        mov     bx, word ptr [bp + 0x1c]        ; 8B 5E 1C
        mov     word ptr [bp - 0x20], bx        ; 89 5E E0
        mov     word ptr [bp - 0x22], bx        ; 89 5E DE
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr es:[di + 0x16]     ; 26 8B 45 16
;   [unconditional branch target] L_08D7
L_08D7:
        sub     ax, bx                          ; 2B C3
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        add     word ptr [bp - 0x22], ax        ; 01 46 DE
        add     ax, bx                          ; 03 C3
        mul     cx                              ; F7 E1
        mov     dx, word ptr es:[di + 0x2b]     ; 26 8B 55 2B
        add     ax, dx                          ; 03 C2
        dec     ax                              ; 48
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, bx                          ; 8B C3
        mov     si, bx                          ; 8B F3
        mov     bx, dx                          ; 8B DA
        mul     cx                              ; F7 E1
        add     ax, bx                          ; 03 C3
        dec     ax                              ; 48
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, si                          ; 8B C6
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        mov     word ptr [bp - 0x2a], 0         ; C7 46 D6 00 00
        cmp     word ptr es:[di + 0x14], 0      ; 26 83 7D 14 00
        je      L_0953                          ; 74 47
        mov     dx, 0xd37                       ; BA 37 0D
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     word ptr [si + 0xc], 0          ; 83 7C 0C 00
        je      L_093B                          ; 74 23
        mov     dx, 0xd5d                       ; BA 5D 0D
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     dx, word ptr [si + 0xe]         ; 8B 54 0E
        mov     word ptr [bp - 0x28], dx        ; 89 56 D8
        mov     dx, word ptr [si + 0x12]        ; 8B 54 12
        mov     word ptr [bp - 0x2c], dx        ; 89 56 D4
        mov     dx, word ptr [si + 0x10]        ; 8B 54 10
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        mov     dx, word ptr [si + 0x14]        ; 8B 54 14
        mov     word ptr [bp - 0x2e], dx        ; 89 56 D2
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
;   [conditional branch target (if/else)] L_093B
L_093B:
        mov     dx, word ptr [si + 0x16]        ; 8B 54 16
        mov     si, 0xd1b                       ; BE 1B 0D
        or      dx, dx                          ; 0B D2
        je      L_0997                          ; 74 52
        mov     si, 0xd15                       ; BE 15 0D
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        jmp     L_0997                          ; EB 45
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0953
L_0953:
        mov     dx, 0xd99                       ; BA 99 0D
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     word ptr [si + 0xc], 0          ; 83 7C 0C 00
        je      L_0982                          ; 74 23
        mov     dx, 0xd49                       ; BA 49 0D
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     dx, word ptr [si + 0xe]         ; 8B 54 0E
        mov     word ptr [bp - 0x28], dx        ; 89 56 D8
        mov     dx, word ptr [si + 0x12]        ; 8B 54 12
        mov     word ptr [bp - 0x2c], dx        ; 89 56 D4
        mov     dx, word ptr [si + 0x10]        ; 8B 54 10
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        mov     dx, word ptr [si + 0x14]        ; 8B 54 14
        mov     word ptr [bp - 0x2e], dx        ; 89 56 D2
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
;   [conditional branch target (if/else)] L_0982
L_0982:
        mov     dx, word ptr [si + 0x16]        ; 8B 54 16
        mov     si, 0xd81                       ; BE 81 0D
        or      dx, dx                          ; 0B D2
        je      L_0997                          ; 74 0B
        mov     si, 0xd7b                       ; BE 7B 0D
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
;   [branch target] L_0997
L_0997:
        mov     word ptr [bp - 0x10], si        ; 89 76 F0
        xor     si, 0xdba                       ; 81 F6 BA 0D
        mov     word ptr [bp - 0x14], si        ; 89 76 EC
        lds     si, ptr [bp + 0x20]             ; C5 76 20
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        add     ax, word ptr [bp + 0x1c]        ; 03 46 1C
        xor     cx, cx                          ; 33 C9
        mov     bx, dx                          ; 8B DA
        xor     di, di                          ; 33 FF
        cmp     word ptr [si], cx               ; 39 0C
        je      L_09CA                          ; 74 16
        mov     bx, 0x2000                      ; BB 00 20
        mov     cx, 0x7fa6                      ; B9 A6 7F
        shr     ax, 1                           ; D1 E8
        jae     L_09C2                          ; 73 04
        add     di, 0x2000                      ; 81 C7 00 20
;   [conditional branch target (if/else)] L_09C2
L_09C2:
        shr     ax, 1                           ; D1 E8
        jae     L_09CA                          ; 73 04
        add     di, 0x4000                      ; 81 C7 00 40
;   [conditional branch target (if/else)] L_09CA
L_09CA:
        mul     dx                              ; F7 E2
        add     ax, di                          ; 03 C7
        mov     word ptr [bp - 0xc], bx         ; 89 5E F4
        mov     word ptr [bp - 0xe], cx         ; 89 4E F2
        lds     si, ptr [bp + 0x18]             ; C5 76 18
        mov     bx, word ptr [bp + 0x1e]        ; 8B 5E 1E
        or      si, si                          ; 0B F6
        je      L_0A51                          ; 74 73
        mov     cx, word ptr [si]               ; 8B 0C
        mov     word ptr [bp - 0x1c], cx        ; 89 4E E4
        mov     di, bx                          ; 8B FB
        mov     dx, word ptr [si + 4]           ; 8B 54 04
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        sub     dx, cx                          ; 2B D1
        sub     bx, cx                          ; 2B D9
        jl      L_09FA                          ; 7C 09
        mov     word ptr [bp - 0x1c], di        ; 89 7E E4
        mov     cx, di                          ; 8B CF
        sub     dx, bx                          ; 2B D3
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_09FA
L_09FA:
        mov     di, cx                          ; 8B F9
        and     di, 7                           ; 81 E7 07 00
        sub     di, 8                           ; 83 EF 08
        neg     di                              ; F7 DF
        mov     word ptr [bp - 4], di           ; 89 7E FC
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     bx, dx                          ; 3B DA
        jge     L_0A8E                          ; 7D 77
        lds     si, ptr [bp + 0x14]             ; C5 76 14
        les     di, ptr [bp + 0xe]              ; C4 7E 0E
;   [loop start] L_0A1D
L_0A1D:
        call    word ptr [bp - 0x10]            ; FF 56 F0
        jle     L_0A1D                          ; 7E FB
        or      ax, ax                          ; 0B C0
        je      L_0A44                          ; 74 1E
        add     ax, cx                          ; 03 C1
        sub     ax, bx                          ; 2B C3
        mov     cx, bx                          ; 8B CB
        sub     bx, dx                          ; 2B DA
;   [loop start] L_0A2E
L_0A2E:
        jge     L_0A9D                          ; 7D 6D
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
        call    word ptr [bp - 0x10]            ; FF 56 F0
        jmp     L_0A2E                          ; EB EA
;   [conditional branch target (if/else)] L_0A44
L_0A44:
        add     ax, cx                          ; 03 C1
        sub     ax, bx                          ; 2B C3
        and     ax, 7                           ; 25 07 00
        mov     cx, bx                          ; 8B CB
        sub     bx, dx                          ; 2B DA
        jmp     L_0A2E                          ; EB DD
;   [conditional branch target (if/else)] L_0A51
L_0A51:
        mov     word ptr [bp - 0x1c], bx        ; 89 5E E4
        mov     word ptr [bp - 0x1e], bx        ; 89 5E E2
        mov     cx, bx                          ; 8B CB
        mov     di, cx                          ; 8B F9
        and     di, 7                           ; 81 E7 07 00
        sub     di, 8                           ; 83 EF 08
        neg     di                              ; F7 DF
        mov     word ptr [bp - 4], di           ; 89 7E FC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     ax, bx                          ; 03 C3
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        lds     si, ptr [bp + 0x14]             ; C5 76 14
        les     di, ptr [bp + 0xe]              ; C4 7E 0E
        xor     bx, bx                          ; 33 DB
;   [loop start] L_0A7A
L_0A7A:
        call    word ptr [bp - 0x10]            ; FF 56 F0
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
        jmp     L_0A7A                          ; EB EC
;   [loop start (also forward branch)] L_0A8E
L_0A8E:
        jmp     L_0CFB                          ; E9 6A 02
;   [loop start] L_0A91
L_0A91:
        pop     dx                              ; 5A
        pop     si                              ; 5E
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        dec     ax                              ; 48
        push    ax                              ; 50
        push    si                              ; 56
        push    dx                              ; 52
        jmp     L_0ABB                          ; EB 1F
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0A9D
L_0A9D:
        sub     cx, bx                          ; 2B CB
        jle     L_0AB0                          ; 7E 0F
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
;   [loop start (also forward branch)] L_0AB0
L_0AB0:
        cmp     sp, word ptr [bp - 8]           ; 3B 66 F8
        je      L_0A8E                          ; 74 D9
        cmp     word ptr [bp - 0x26], 8         ; 83 7E DA 08
        je      L_0A91                          ; 74 D6
;   [unconditional branch target] L_0ABB
L_0ABB:
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        dec     ax                              ; 48
        push    ax                              ; 50
        lds     si, ptr [bp + 0x20]             ; C5 76 20
        cmp     word ptr [si], 0                ; 83 3C 00
        je      L_0ADE                          ; 74 16
        mov     cx, word ptr [bp + 0x12]        ; 8B 4E 12
        or      cx, cx                          ; 0B C9
        jl      L_0ADE                          ; 7C 0F
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        mov     si, word ptr [bp - 0x1e]        ; 8B 76 E2
        mov     di, word ptr [bp - 0x22]        ; 8B 7E DE
        call    L_1A53                          ; E8 75 0F
;   [conditional branch target (if/else)] L_0ADE
L_0ADE:
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, ax                          ; 0B C0
        jg      L_0B01                          ; 7F 19
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        or      ax, ax                          ; 0B C0
        je      L_0AF2                          ; 74 03
        mov     word ptr [si + 0x10], ax        ; 89 44 10
;   [conditional branch target (if/else)] L_0AF2
L_0AF2:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        mov     dx, word ptr [bp - 0x22]        ; 8B 56 DE
        sub     dx, word ptr [bp - 0x20]        ; 2B 56 E0
        jmp     L_0CFB                          ; E9 FA 01
;   [conditional branch target (if/else)] L_0B01
L_0B01:
        cmp     word ptr [si + 2], 1            ; 83 7C 02 01
        jne     L_0B0A                          ; 75 03
        jmp     L_0BA7                          ; E9 9D 00
;   [conditional branch target (if/else)] L_0B0A
L_0B0A:
        mov     al, byte ptr [si + 4]           ; 8A 44 04
        xor     ah, ah                          ; 32 E4
        mov     si, ax                          ; 8B F0
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        mov     ax, cx                          ; 8B C1
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        mov     dl, 0xff                        ; B2 FF
        and     cx, 7                           ; 81 E1 07 00
        shr     dl, cl                          ; D2 EA
        mov     cx, word ptr [bp - 0x1e]        ; 8B 4E E2
        dec     cx                              ; 49
        mov     bx, cx                          ; 8B D9
        shr     bx, 1                           ; D1 EB
        shr     bx, 1                           ; D1 EB
        shr     bx, 1                           ; D1 EB
        mov     dh, 0xff                        ; B6 FF
        and     cx, 7                           ; 81 E1 07 00
        sub     cx, 7                           ; 83 E9 07
        neg     cx                              ; F7 D9
        shl     dh, cl                          ; D2 E6
        inc     ax                              ; 40
        sub     bx, ax                          ; 2B D8
        jge     L_0B44                          ; 7D 02
        and     dl, dh                          ; 22 D6
;   [conditional branch target (if/else)] L_0B44
L_0B44:
        mov     cx, bx                          ; 8B CB
        mov     word ptr [bp - 0x1c], cx        ; 89 4E E4
        les     di, ptr [bp + 0x20]             ; C4 7E 20
        les     di, ptr es:[di + 0xa]           ; 26 C4 7D 0A
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     al, 0xff                        ; B0 FF
        or      si, si                          ; 0B F6
        jne     L_0B85                          ; 75 29
        not     al                              ; F6 D0
        not     dx                              ; F7 D2
;   [loop start] L_0B60
L_0B60:
        mov     si, di                          ; 8B F7
        and     byte ptr es:[di], dl            ; 26 20 15
        inc     di                              ; 47
        or      cx, cx                          ; 0B C9
        jl      L_0B71                          ; 7C 07
        je      L_0B6E                          ; 74 02
        rep stosb byte ptr es:[di], al          ; F3 AA
;   [conditional branch target (if/else)] L_0B6E
L_0B6E:
        and     byte ptr es:[di], dh            ; 26 20 35
;   [conditional branch target (if/else)] L_0B71
L_0B71:
        mov     di, si                          ; 8B FE
        add     di, bx                          ; 03 FB
        jns     L_0B7A                          ; 79 03
        sub     di, word ptr [bp - 0xe]         ; 2B 7E F2
;   [conditional branch target (if/else)] L_0B7A
L_0B7A:
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        dec     word ptr [bp - 0x24]            ; FF 4E DC
        jg      L_0B60                          ; 7F DE
        jmp     L_0BA7                          ; EB 23
        nop                                     ; 90
;   [loop start (also forward branch)] L_0B85
L_0B85:
        mov     si, di                          ; 8B F7
        or      byte ptr es:[di], dl            ; 26 08 15
        inc     di                              ; 47
        or      cx, cx                          ; 0B C9
        jl      L_0B96                          ; 7C 07
        je      L_0B93                          ; 74 02
        rep stosb byte ptr es:[di], al          ; F3 AA
;   [conditional branch target (if/else)] L_0B93
L_0B93:
        or      byte ptr es:[di], dh            ; 26 08 35
;   [conditional branch target (if/else)] L_0B96
L_0B96:
        mov     di, si                          ; 8B FE
        add     di, bx                          ; 03 FB
        jns     L_0B9F                          ; 79 03
        sub     di, word ptr [bp - 0xe]         ; 2B 7E F2
;   [conditional branch target (if/else)] L_0B9F
L_0B9F:
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        dec     word ptr [bp - 0x24]            ; FF 4E DC
        jg      L_0B85                          ; 7F DE
;   [unconditional branch target] L_0BA7
L_0BA7:
        xor     dx, dx                          ; 33 D2
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        cmp     byte ptr [si + 8], 1            ; 80 7C 08 01
        sbb     dl, dl                          ; 1A D2
        lds     si, ptr [bp + 0xe]              ; C5 76 0E
        lds     si, ptr [si + 0x2b]             ; C5 74 2B
        les     di, ptr [bp + 0x20]             ; C4 7E 20
        les     di, ptr es:[di + 0xa]           ; 26 C4 7D 0A
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
        mov     word ptr [bp - 0xa], di         ; 89 7E F6
        jmp     L_0C66                          ; E9 9E 00
;   [loop start] L_0BC8
L_0BC8:
        add     cl, dh                          ; 02 CE
        shl     ax, cl                          ; D3 E0
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        mov     dh, byte ptr es:[di]            ; 26 8A 35
        xor     dh, dl                          ; 32 F2
        or      ah, dh                          ; 0A E6
        xor     ah, dl                          ; 32 E2
        xchg    al, ah                          ; 86 E0
        stosb   byte ptr es:[di], al            ; AA
        xchg    al, ah                          ; 86 E0
        mov     dh, 8                           ; B6 08
        neg     cl                              ; F6 D9
        je      L_0BE8                          ; 74 06
;   [loop start] L_0BE2
L_0BE2:
        sub     dh, cl                          ; 2A F1
        jle     L_0BC8                          ; 7E E2
        shl     ax, cl                          ; D3 E0
;   [conditional branch target (if/else)] L_0BE8
L_0BE8:
        cmp     ch, 8                           ; 80 FD 08
        ja      L_0BFE                          ; 77 11
        or      ch, ch                          ; 0A ED
        je      L_0C0B                          ; 74 1A
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_0BF8                          ; 74 01
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_0BF8
L_0BF8:
        ; constant WM_SETTEXT
        mov     cl, ch                          ; 8A CD
        xor     ch, ch                          ; 32 ED
        jmp     L_0BE2                          ; EB E4
;   [conditional branch target (if/else)] L_0BFE
L_0BFE:
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_0C05                          ; 74 01
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_0C05
L_0C05:
        mov     cl, 8                           ; B1 08
        sub     ch, cl                          ; 2A E9
        jmp     L_0BE2                          ; EB D7
;   [loop start (also forward branch)] L_0C0B
L_0C0B:
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     cx, word ptr ss:[bx]            ; 36 8B 0F
        or      cl, cl                          ; 0A C9
        js      L_0C34                          ; 78 1B
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_0C23                          ; 74 04
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_0C23
L_0C23:
        shl     al, cl                          ; D2 E0
        sub     cl, 8                           ; 80 E9 08
        neg     cl                              ; F6 D9
        sub     ch, cl                          ; 2A E9
        jae     L_0BE2                          ; 73 B4
        add     cl, ch                          ; 02 CD
        xor     ch, ch                          ; 32 ED
        jmp     L_0BE2                          ; EB AE
;   [conditional branch target (if/else)] L_0C34
L_0C34:
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        shl     ah, cl                          ; D2 E4
        mov     al, byte ptr es:[di]            ; 26 8A 05
        xor     al, dl                          ; 32 C2
        or      al, ah                          ; 0A C4
        xor     al, dl                          ; 32 C2
        stosb   byte ptr es:[di], al            ; AA
        mov     si, word ptr [bp - 0x16]        ; 8B 76 EA
        add     si, word ptr [bp - 0x18]        ; 03 76 E8
        cmp     si, word ptr [bp - 0x1a]        ; 3B 76 E6
        jae     L_0C76                          ; 73 26
        mov     word ptr [bp - 0x16], si        ; 89 76 EA
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     di, bx                          ; 8B FB
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
        jns     L_0C60                          ; 79 03
        sub     di, word ptr [bp - 0xe]         ; 2B 7E F2
;   [conditional branch target (if/else)] L_0C60
L_0C60:
        mov     word ptr [bp - 0xa], di         ; 89 7E F6
        mov     word ptr [bp - 0xc], bx         ; 89 5E F4
;   [unconditional branch target] L_0C66
L_0C66:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        xor     ax, ax                          ; 33 C0
        mov     dh, byte ptr [bp - 4]           ; 8A 76 FC
        cmp     word ptr [bp - 0x26], 8         ; 83 7E DA 08
        je      L_0C79                          ; 74 05
        jmp     L_0C0B                          ; EB 95
;   [conditional branch target (if/else)] L_0C76
L_0C76:
        jmp     L_0CFB                          ; E9 82 00
;   [conditional branch target (if/else)] L_0C79
L_0C79:
        xor     cx, cx                          ; 33 C9
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        je      L_0CF2                          ; 74 6C
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        mov     cx, word ptr ss:[bx - 2]        ; 36 8B 4F FE
        lodsb   al, byte ptr [si]               ; AC
        xchg    al, ah                          ; 86 E0
        shl     ah, cl                          ; D2 E4
        sub     cl, 8                           ; 80 E9 08
        neg     cl                              ; F6 D9
        cmp     dh, cl                          ; 3A F1
        jg      L_0CA8                          ; 7F 0D
        xchg    dh, cl                          ; 86 CE
        rol     ax, cl                          ; D3 C0
        sub     cl, dh                          ; 2A CE
        jne     L_0CD0                          ; 75 2D
        mov     cl, 8                           ; B1 08
        jmp     L_0CB0                          ; EB 09
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0CA8
L_0CA8:
        rol     ax, cl                          ; D3 C0
        sub     cl, dh                          ; 2A CE
        jmp     L_0CE1                          ; EB 33
        nop                                     ; 90
;   [loop start] L_0CAF
L_0CAF:
        lodsb   al, byte ptr [si]               ; AC
;   [unconditional branch target] L_0CB0
L_0CB0:
        mov     dh, byte ptr es:[di]            ; 26 8A 35
        xor     dh, dl                          ; 32 F2
        or      al, dh                          ; 0A C6
        xor     al, dl                          ; 32 C2
        stosb   byte ptr es:[di], al            ; AA
        sub     bx, 4                           ; 83 EB 04
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        je      L_0CF2                          ; 74 2E
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        jmp     L_0CAF                          ; EB E6
;   [loop start] L_0CC9
L_0CC9:
        mov     ah, byte ptr [si]               ; 8A 24
        rol     ax, cl                          ; D3 C0
        sub     cl, 8                           ; 80 E9 08
;   [conditional branch target (if/else)] L_0CD0
L_0CD0:
        neg     cl                              ; F6 D9
        mov     dh, byte ptr es:[di]            ; 26 8A 35
        xor     dh, dl                          ; 32 F2
        or      al, dh                          ; 0A C6
        xor     al, dl                          ; 32 C2
        stosb   byte ptr es:[di], al            ; AA
        rol     ax, cl                          ; D3 C0
        sub     cl, 8                           ; 80 E9 08
;   [unconditional branch target] L_0CE1
L_0CE1:
        neg     cl                              ; F6 D9
        sub     bx, 4                           ; 83 EB 04
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        je      L_0CF2                          ; 74 05
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        jmp     L_0CC9                          ; EB D7
;   [conditional branch target (if/else)] L_0CF2
L_0CF2:
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     ah, al                          ; 8A E0
        mov     dh, cl                          ; 8A F1
        jmp     L_0C0B                          ; E9 10 FF
;   [unconditional branch target] L_0CFB
L_0CFB:
        mov     sp, word ptr [bp - 8]           ; 8B 66 F8
        call    L_1ADF                          ; E8 DE 0D
;   [unconditional branch target] L_0D01
L_0D01:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
STRBLT ENDP

        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
;   [loop start] L_0D0E
L_0D0E:
        mov     al, byte ptr es:[di + 0x1f]     ; 26 8A 45 1F
        jmp     L_0D2D                          ; EB 19
        nop                                     ; 90
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
        lodsb   al, byte ptr [si]               ; AC
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_0D3F                          ; 7C 1E
        cmp     al, byte ptr es:[di + 0x1e]     ; 26 3A 45 1E
        ja      L_0D0E                          ; 77 E7
        sub     al, byte ptr es:[di + 0x1d]     ; 26 2A 45 1D
        jb      L_0D0E                          ; 72 E1
;   [unconditional branch target] L_0D2D
L_0D2D:
        mov     cx, word ptr es:[di + 0x14]     ; 26 8B 4D 14
        cmp     al, byte ptr es:[di + 0x20]     ; 26 3A 45 20
        je      L_0D46                          ; 74 0F
        mul     cl                              ; F6 E1
        add     ax, 8                           ; 05 08 00
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0D3F
L_0D3F:
        add     word ptr [bp - 0x1e], bx        ; 01 5E E2
        pop     ax                              ; 58
        jmp     L_0AB0                          ; E9 6A FD
;   [loop start (also forward branch)] L_0D46
L_0D46:
        jmp     word ptr [bp - 0x12]            ; FF 66 EE
        xor     ah, ah                          ; 32 E4
        shl     ax, 1                           ; D1 E0
        push    bx                              ; 53
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr es:[bx + di + 0x33] ; 26 8B 41 33
        mov     cx, word ptr es:[bx + di + 0x35] ; 26 8B 49 35
        sub     cx, ax                          ; 2B C8
        pop     bx                              ; 5B
        je      L_0D81                          ; 74 24
        add     cx, word ptr [bp - 0x28]        ; 03 4E D8
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        sub     ax, word ptr [bp - 0x2c]        ; 2B 46 D4
        jg      L_0D6C                          ; 7F 04
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_0D6C
L_0D6C:
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        xor     ax, ax                          ; 33 C0
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [loop start] L_0D74
L_0D74:
        mov     al, byte ptr es:[di + 0x1f]     ; 26 8A 45 1F
        jmp     L_0D93                          ; EB 19
        nop                                     ; 90
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
;   [loop start (also forward branch)] L_0D81
L_0D81:
        lodsb   al, byte ptr [si]               ; AC
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_0DB3                          ; 7C 2C
        cmp     al, byte ptr es:[di + 0x1e]     ; 26 3A 45 1E
        ja      L_0D74                          ; 77 E7
        sub     al, byte ptr es:[di + 0x1d]     ; 26 2A 45 1D
        jb      L_0D74                          ; 72 E1
;   [unconditional branch target] L_0D93
L_0D93:
        cmp     al, byte ptr es:[di + 0x20]     ; 26 3A 45 20
        je      L_0D46                          ; 74 AD
        xor     ah, ah                          ; 32 E4
        shl     ax, 1                           ; D1 E0
        push    bx                              ; 53
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr es:[bx + di + 0x33] ; 26 8B 41 33
        mov     cx, word ptr es:[bx + di + 0x35] ; 26 8B 49 35
        sub     cx, ax                          ; 2B C8
        add     ax, 8                           ; 05 08 00
        pop     bx                              ; 5B
        je      L_0D81                          ; 74 D1
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0DB3
L_0DB3:
        add     word ptr [bp - 0x1e], bx        ; 01 5E E2
        pop     ax                              ; 58
        jmp     L_0AB0                          ; E9 F6 FC
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
        mov     cx, word ptr [bp - 0x30]        ; 8B 4E D0
        xor     ax, ax                          ; 33 C0
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0DC8   offset=0x0DC8  size=22 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0E06
;-------------------------------------------------------------------------
;   [sub-routine] L_0DC8
L_0DC8:
        cld                                     ; FC
        mov     dx, word ptr es:[8]             ; 26 8B 16 08 00
        mov     di, 0x5e                        ; BF 5E 00
        mov     al, 0xff                        ; B0 FF
        call    L_0E06                          ; E8 30 00
        mov     di, 0xfe                        ; BF FE 00
        xor     al, al                          ; 32 C0
        mov     byte ptr es:[0x10], al          ; 26 A2 10 00
        call    L_0E06                          ; E8 24 00
        cmp     dl, byte ptr es:[0x26]          ; 26 3A 16 26 00
        je      L_0E05                          ; 74 1C
        mov     word ptr es:[0x26], dx          ; 26 89 16 26 00
        mov     si, 0x3a                        ; BE 3A 00
        cmp     dl, 2                           ; 80 FA 02
        je      L_0DF9                          ; 74 03
        mov     si, 0x4c                        ; BE 4C 00
;   [conditional branch target (if/else)] L_0DF9
L_0DF9:
        mov     cx, 9                           ; B9 09 00
        mov     di, 0x28                        ; BF 28 00
        mov     ax, es                          ; 8C C0
        mov     ds, ax                          ; 8E D8
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
;   [error/early exit] L_0E05
L_0E05:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (17 instructions).

;-------------------------------------------------------------------------
; sub_0E06   offset=0x0E06  size=17 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0E06
L_0E06:
        ; constant VK_SHIFT
        mov     cx, 0x10                        ; B9 10 00
        cmp     dl, 4                           ; 80 FA 04
        je      L_0E15                          ; 74 07
;   [loop iteration target] L_0E0E
L_0E0E:
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        loop    L_0E0E                          ; E2 FA
        ret                                     ; C3
;   [loop iteration target] L_0E15
L_0E15:
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        loop    L_0E15                          ; E2 F8
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (11 instructions).

;-------------------------------------------------------------------------
; sub_0E1E   offset=0x0E1E  size=11 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0E73, L_0EC4, L_0F8D, L_1022, L_10BE
;-------------------------------------------------------------------------
;   [sub-routine] L_0E1E
L_0E1E:
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        push    bp                              ; 55
        cld                                     ; FC
        call    L_10BE                          ; E8 97 02
        call    L_0F8D                          ; E8 63 01
        call    L_0EC4                          ; E8 97 00
        call    L_0E73                          ; E8 43 00
        call    L_1022                          ; E8 EF 01
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_0E35   offset=0x0E35  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0E4C
;-------------------------------------------------------------------------
;   [sub-routine] L_0E35
L_0E35:
        cmp     byte ptr [0x11], 1              ; 80 3E 11 00 01
        jne     L_0E4B                          ; 75 0F
        mov     byte ptr [0x11], 0              ; C6 06 11 00 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        cld                                     ; FC
        push    bp                              ; 55
        call    L_0E4C                          ; E8 02 00
        pop     bp                              ; 5D
;   [error/early exit] L_0E4B
L_0E4B:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0E4C   offset=0x0E4C  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_11CC, L_1200
;-------------------------------------------------------------------------
;   [sub-routine] L_0E4C
L_0E4C:
        mov     di, 0x19e                       ; BF 9E 01
        mov     ax, word ptr [0x12]             ; A1 12 00
        mov     si, word ptr [0x14]             ; 8B 36 14 00
        push    si                              ; 56
        push    ax                              ; 50
        call    L_11CC                          ; E8 71 03
        mov     cx, word ptr [0x14]             ; 8B 0E 14 00
        call    L_1200                          ; E8 9E 03
        xchg    di, si                          ; 87 F7
        mov     cx, word ptr [0x26]             ; 8B 0E 26 00
        add     ax, cx                          ; 03 C1
        add     bx, cx                          ; 03 D9
        inc     cx                              ; 41
        mov     bp, 0x20                        ; BD 20 00
        jmp     L_103F                          ; E9 CC 01
; Description (heuristic):
;   Pure computation / dispatcher (39 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0E73   offset=0x0E73  size=39 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0FF9
;-------------------------------------------------------------------------
;   [sub-routine] L_0E73
L_0E73:
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     si, word ptr [0x18]             ; 8B 36 18 00
        call    L_0FF9                          ; E8 7C 01
        mov     di, si                          ; 8B FE
        mov     si, 0x5e                        ; BE 5E 00
        mov     bx, 0xfe                        ; BB FE 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        jmp     word ptr [0x2c]                 ; FF 26 2C 00
        ; constant WM_MOVE
        mov     dx, 3                           ; BA 03 00
;   [loop iteration target] L_0E90
L_0E90:
        lodsw   ax, word ptr [si]               ; AD
        and     ax, word ptr [di]               ; 23 05
        xor     ax, word ptr [bx]               ; 33 07
        stosw   word ptr es:[di], ax            ; AB
        lodsb   al, byte ptr [si]               ; AC
        and     al, byte ptr [di]               ; 22 05
        xor     al, byte ptr [bx + 2]           ; 32 47 02
        mov     byte ptr [di], al               ; 88 05
        add     di, dx                          ; 03 FA
        add     bx, dx                          ; 03 DA
        loop    L_0E90                          ; E2 EC
        ret                                     ; C3
        ; constant WM_SIZE
        mov     dx, 5                           ; BA 05 00
;   [loop iteration target] L_0EA8
L_0EA8:
        lodsw   ax, word ptr [si]               ; AD
        and     ax, word ptr [di]               ; 23 05
        xor     ax, word ptr [bx]               ; 33 07
        stosw   word ptr es:[di], ax            ; AB
        lodsw   ax, word ptr [si]               ; AD
        and     ax, word ptr [di]               ; 23 05
        xor     ax, word ptr [bx + 2]           ; 33 47 02
        stosw   word ptr es:[di], ax            ; AB
        lodsb   al, byte ptr [si]               ; AC
        and     al, byte ptr [di]               ; 22 05
        xor     al, byte ptr [bx + 4]           ; 32 47 04
        mov     byte ptr [di], al               ; 88 05
        add     di, dx                          ; 03 FA
        add     bx, dx                          ; 03 DA
        loop    L_0EA8                          ; E2 E5
;   [loop start] L_0EC3
L_0EC3:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (15 instructions).

;-------------------------------------------------------------------------
; sub_0EC4   offset=0x0EC4  size=15 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: unknown
;
; Near calls (internal): L_0EE9
;-------------------------------------------------------------------------
;   [sub-routine] L_0EC4
L_0EC4:
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     bl, 7                           ; B3 07
        mov     al, byte ptr [0x16]             ; A0 16 00
        and     al, bl                          ; 22 C3
        and     bl, byte ptr [0x10]             ; 22 1E 10 00
        mov     byte ptr [0x10], al             ; A2 10 00
        sub     al, bl                          ; 2A C3
        je      L_0EC3                          ; 74 E9
        jl      L_0F2C                          ; 7C 50
        mov     bh, al                          ; 8A F8
        mov     si, 0x5e                        ; BE 5E 00
        call    L_0EE9                          ; E8 05 00
        mov     al, bh                          ; 8A C7
        mov     si, 0xfe                        ; BE FE 00
; Description (heuristic):
;   Pure computation / dispatcher (40 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0EE9   offset=0x0EE9  size=40 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=5)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0F3B
;-------------------------------------------------------------------------
;   [sub-routine] L_0EE9
L_0EE9:
        cmp     al, 3                           ; 3C 03
        jae     L_0F0F                          ; 73 22
        mov     bl, al                          ; 8A D8
;   [loop start] L_0EEF
L_0EEF:
        mov     di, si                          ; 8B FE
        mov     cx, word ptr [0x34]             ; 8B 0E 34 00
        shr     cx, 1                           ; D1 E9
;   [loop iteration target] L_0EF7
L_0EF7:
        mov     ax, word ptr [di]               ; 8B 05
        xchg    al, ah                          ; 86 E0
        rcr     ax, 1                           ; D1 D8
        xchg    al, ah                          ; 86 E0
        stosw   word ptr es:[di], ax            ; AB
        loop    L_0EF7                          ; E2 F5
        mov     al, byte ptr [si]               ; 8A 04
        rcl     al, 1                           ; D0 D0
        ror     al, 1                           ; D0 C8
        mov     byte ptr [si], al               ; 88 04
        dec     bl                              ; FE CB
        jne     L_0EEF                          ; 75 E1
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0F0F
L_0F0F:
        mov     cl, al                          ; 8A C8
        mov     di, si                          ; 8B FE
        mov     dx, word ptr [0x34]             ; 8B 16 34 00
        xor     bl, bl                          ; 32 DB
;   [loop start] L_0F19
L_0F19:
        xor     ax, ax                          ; 33 C0
        mov     ah, byte ptr [di]               ; 8A 25
        shr     ax, cl                          ; D3 E8
        or      ah, bl                          ; 0A E3
        mov     bl, al                          ; 8A D8
        mov     al, ah                          ; 8A C4
        stosb   byte ptr es:[di], al            ; AA
        dec     dx                              ; 4A
        jne     L_0F19                          ; 75 F0
        or      byte ptr [si], bl               ; 08 1C
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0F2C
L_0F2C:
        neg     al                              ; F6 D8
        mov     bh, al                          ; 8A F8
        mov     si, 0x5e                        ; BE 5E 00
        call    L_0F3B                          ; E8 05 00
        mov     al, bh                          ; 8A C7
        mov     si, 0xfe                        ; BE FE 00
; Description (heuristic):
;   Pure computation / dispatcher (42 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F3B   offset=0x0F3B  size=42 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=3)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0F3B
L_0F3B:
        std                                     ; FD
        cmp     al, 3                           ; 3C 03
        jae     L_0F6E                          ; 73 2E
        mov     bl, al                          ; 8A D8
;   [loop start] L_0F42
L_0F42:
        mov     di, si                          ; 8B FE
        mov     cx, word ptr [0x34]             ; 8B 0E 34 00
        add     di, cx                          ; 03 F9
        sub     di, 2                           ; 83 EF 02
        mov     dx, di                          ; 8B D7
        shr     cx, 1                           ; D1 E9
;   [loop iteration target] L_0F51
L_0F51:
        mov     ax, word ptr [di]               ; 8B 05
        xchg    al, ah                          ; 86 E0
        rcl     ax, 1                           ; D1 D0
        xchg    al, ah                          ; 86 E0
        stosw   word ptr es:[di], ax            ; AB
        loop    L_0F51                          ; E2 F5
        mov     di, dx                          ; 8B FA
        mov     al, byte ptr [di + 1]           ; 8A 45 01
        rcr     al, 1                           ; D0 D8
        rol     al, 1                           ; D0 C0
        mov     byte ptr [di + 1], al           ; 88 45 01
        dec     bl                              ; FE CB
        jne     L_0F42                          ; 75 D6
        cld                                     ; FC
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0F6E
L_0F6E:
        mov     cl, al                          ; 8A C8
        mov     dx, word ptr [0x34]             ; 8B 16 34 00
        add     si, dx                          ; 03 F2
        dec     si                              ; 4E
        mov     di, si                          ; 8B FE
        xor     bl, bl                          ; 32 DB
;   [loop start] L_0F7B
L_0F7B:
        xor     ax, ax                          ; 33 C0
        mov     al, byte ptr [di]               ; 8A 05
        shl     ax, cl                          ; D3 E0
        or      al, bl                          ; 0A C3
        mov     bl, ah                          ; 8A DC
        stosb   byte ptr es:[di], al            ; AA
        dec     dx                              ; 4A
        jne     L_0F7B                          ; 75 F2
        or      byte ptr [si], bl               ; 08 1C
        cld                                     ; FC
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F8D   offset=0x0F8D  size=28 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0FF9
;-------------------------------------------------------------------------
;   [sub-routine] L_0F8D
L_0F8D:
        mov     di, 0x19e                       ; BF 9E 01
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     si, word ptr [0x18]             ; 8B 36 18 00
        mov     word ptr [0x12], ax             ; A3 12 00
        mov     word ptr [0x14], si             ; 89 36 14 00
        mov     byte ptr [0x11], 1              ; C6 06 11 00 01
        call    L_0FF9                          ; E8 53 00
        shr     cx, 1                           ; D1 E9
        mov     dx, word ptr [0x26]             ; 8B 16 26 00
        jmp     word ptr [0x2a]                 ; FF 26 2A 00
;   [loop iteration target] L_0FB0
L_0FB0:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        loop    L_0FB0                          ; E2 F6
        ret                                     ; C3
;   [loop iteration target] L_0FBB
L_0FBB:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        loop    L_0FBB                          ; E2 F4
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (26 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0FC8   offset=0x0FC8  size=26 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0FF9
;-------------------------------------------------------------------------
;   [sub-routine] L_0FC8
L_0FC8:
        mov     di, 0x19e                       ; BF 9E 01
        mov     ax, word ptr [0x12]             ; A1 12 00
        mov     si, word ptr [0x14]             ; 8B 36 14 00
        call    L_0FF9                          ; E8 24 00
        shr     cx, 1                           ; D1 E9
        mov     dx, word ptr [0x26]             ; 8B 16 26 00
        xchg    di, si                          ; 87 F7
        jmp     word ptr [0x28]                 ; FF 26 28 00
;   [loop iteration target] L_0FE1
L_0FE1:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        loop    L_0FE1                          ; E2 F6
        ret                                     ; C3
;   [loop iteration target] L_0FEC
L_0FEC:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        loop    L_0FEC                          ; E2 F4
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_0FF9   offset=0x0FF9  size=16 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0FF9
L_0FF9:
        sub     ax, word ptr [0x1a]             ; 2B 06 1A 00
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        sub     si, word ptr [0x1c]             ; 2B 36 1C 00
        mov     cx, si                          ; 8B CE
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        cmp     word ptr [0x26], 2              ; 83 3E 26 00 02
        je      L_1016                          ; 74 02
        shl     si, 1                           ; D1 E6
;   [error/early exit] L_1016
L_1016:
        add     si, cx                          ; 03 F1
        add     si, ax                          ; 03 F0
        add     si, 0x23e                       ; 81 C6 3E 02
        mov     cx, 0x20                        ; B9 20 00
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (65 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1022   offset=0x1022  size=65 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_11FC
;-------------------------------------------------------------------------
;   [sub-routine] L_1022
L_1022:
        call    L_11FC                          ; E8 D7 01
        mov     si, 0x23e                       ; BE 3E 02
        mov     di, word ptr [0x24]             ; 8B 3E 24 00
        mov     cx, word ptr [0x26]             ; 8B 0E 26 00
        shl     cx, 1                           ; D1 E1
        inc     cx                              ; 41
        mov     bp, word ptr [0x1e]             ; 8B 2E 1E 00
        push    word ptr [0x1c]                 ; FF 36 1C 00
        push    word ptr [0x1a]                 ; FF 36 1A 00
;   [unconditional branch target] L_103F
L_103F:
        mov     dx, cx                          ; 8B D1
        mov     word ptr [0x20], cx             ; 89 0E 20 00
        mov     word ptr [0x22], bp             ; 89 2E 22 00
        xor     bp, bp                          ; 33 ED
        pop     cx                              ; 59
        sar     cx, 1                           ; D1 F9
        sar     cx, 1                           ; D1 F9
        sar     cx, 1                           ; D1 F9
        or      cx, cx                          ; 0B C9
        jge     L_105E                          ; 7D 08
        neg     cx                              ; F7 D9
        add     di, cx                          ; 03 F9
        add     si, cx                          ; 03 F1
        jmp     L_1067                          ; EB 09
;   [conditional branch target (if/else)] L_105E
L_105E:
        add     cx, word ptr [0x20]             ; 03 0E 20 00
        sub     cx, 0x5a                        ; 83 E9 5A
        jle     L_1074                          ; 7E 0D
;   [unconditional branch target] L_1067
L_1067:
        mov     bp, cx                          ; 8B E9
        add     ax, cx                          ; 03 C1
        add     bx, cx                          ; 03 D9
        sub     dx, cx                          ; 2B D1
        jg      L_1074                          ; 7F 03
        jmp     L_10B7                          ; EB 44
        nop                                     ; 90
;   [conditional branch target (if/else)] L_1074
L_1074:
        pop     cx                              ; 59
        or      cx, cx                          ; 0B C9
        jge     L_1085                          ; 7D 0C
        neg     cx                              ; F7 D9
        push    cx                              ; 51
;   [loop iteration target] L_107C
L_107C:
        add     si, word ptr [0x20]             ; 03 36 20 00
        loop    L_107C                          ; E2 FA
        pop     cx                              ; 59
        jmp     L_108F                          ; EB 0A
;   [conditional branch target (if/else)] L_1085
L_1085:
        add     cx, word ptr [0x22]             ; 03 0E 22 00
        sub     cx, 0x15c                       ; 81 E9 5C 01
        jle     L_1095                          ; 7E 06
;   [unconditional branch target] L_108F
L_108F:
        sub     word ptr [0x22], cx             ; 29 0E 22 00
        jle     L_10B8                          ; 7E 23
;   [conditional branch target (if/else)] L_1095
L_1095:
        mov     cx, 0xb800                      ; B9 00 B8
        mov     es, cx                          ; 8E C1
        xor     ch, ch                          ; 32 ED
        mov     dh, byte ptr [0x22]             ; 8A 36 22 00
;   [loop start] L_10A0
L_10A0:
        mov     cl, dl                          ; 8A CA
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        add     di, ax                          ; 03 F8
        jns     L_10AC                          ; 79 04
        add     di, 0x805a                      ; 81 C7 5A 80
;   [conditional branch target (if/else)] L_10AC
L_10AC:
        add     si, bp                          ; 03 F5
        dec     dh                              ; FE CE
        jne     L_10A0                          ; 75 EE
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        ret                                     ; C3
;   [fall-through exit] L_10B7
L_10B7:
        pop     cx                              ; 59
;   [error/early exit] L_10B8
L_10B8:
        mov     byte ptr [0x11], 0              ; C6 06 11 00 00
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_10BE   offset=0x10BE  size=14 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0E4C, L_0FC8, L_10DE, L_116B
;-------------------------------------------------------------------------
;   [sub-routine] L_10BE
L_10BE:
        call    L_116B                          ; E8 AA 00
        xor     ax, ax                          ; 33 C0
        mov     bx, 0x11                        ; BB 11 00
        cmp     byte ptr [bx], al               ; 38 07
        je      L_10D3                          ; 74 09
        mov     byte ptr [bx], al               ; 88 07
        or      bp, bp                          ; 0B ED
        je      L_10D7                          ; 74 07
        call    L_0E4C                          ; E8 79 FD
;   [conditional branch target (if/else)] L_10D3
L_10D3:
        call    L_10DE                          ; E8 08 00
        ret                                     ; C3
;   [conditional branch target (if/else)] L_10D7
L_10D7:
        call    L_10DE                          ; E8 04 00
        call    L_0FC8                          ; E8 EB FE
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (70 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_10DE   offset=0x10DE  size=70 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_11FC
;-------------------------------------------------------------------------
;   [sub-routine] L_10DE
L_10DE:
        call    L_11FC                          ; E8 1B 01
        push    cx                              ; 51
        mov     cx, word ptr [0x1e]             ; 8B 0E 1E 00
        mov     si, word ptr [0x24]             ; 8B 36 24 00
        mov     di, 0xb800                      ; BF 00 B8
        mov     ds, di                          ; 8E DF
        mov     di, 0x23e                       ; BF 3E 02
        jmp     word ptr es:[0x2e]              ; 26 FF 26 2E 00
        pop     dx                              ; 5A
        or      dx, dx                          ; 0B D2
        jns     L_1106                          ; 79 0A
        add     cx, dx                          ; 03 CA
        jle     L_112A                          ; 7E 2A
;   [loop start] L_1100
L_1100:
        add     di, 5                           ; 83 C7 05
        inc     dx                              ; 42
        jne     L_1100                          ; 75 FA
;   [conditional branch target (if/else)] L_1106
L_1106:
        xor     bx, bx                          ; 33 DB
        mov     dx, word ptr es:[0x1a]          ; 26 8B 16 1A 00
        sar     dx, 1                           ; D1 FA
        jns     L_1117                          ; 79 06
        sar     dx, 1                           ; D1 FA
        sar     dx, 1                           ; D1 FA
        sub     bx, dx                          ; 2B DA
;   [loop iteration target] L_1117
L_1117:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     si, ax                          ; 03 F0
        mov     dx, bx                          ; 8B D3
        add     dx, si                          ; 03 D6
        jns     L_1128                          ; 79 04
        add     si, 0x805a                      ; 81 C6 5A 80
;   [conditional branch target (if/else)] L_1128
L_1128:
        loop    L_1117                          ; E2 ED
;   [error/early exit] L_112A
L_112A:
        mov     cx, es                          ; 8C C1
        mov     ds, cx                          ; 8E D9
        ret                                     ; C3
        pop     dx                              ; 5A
        or      dx, dx                          ; 0B D2
        jns     L_113E                          ; 79 0A
        add     cx, dx                          ; 03 CA
        jle     L_1166                          ; 7E 2E
;   [loop start] L_1138
L_1138:
        add     di, 9                           ; 83 C7 09
        inc     dx                              ; 42
        jne     L_1138                          ; 75 FA
;   [conditional branch target (if/else)] L_113E
L_113E:
        xor     bx, bx                          ; 33 DB
        mov     dx, word ptr es:[0x1a]          ; 26 8B 16 1A 00
        sar     dx, 1                           ; D1 FA
        jns     L_114F                          ; 79 06
        sar     dx, 1                           ; D1 FA
        sar     dx, 1                           ; D1 FA
        sub     bx, dx                          ; 2B DA
;   [loop iteration target] L_114F
L_114F:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     si, ax                          ; 03 F0
        mov     dx, bx                          ; 8B D3
        add     dx, si                          ; 03 D6
        jns     L_1164                          ; 79 04
        add     si, 0x805a                      ; 81 C6 5A 80
;   [conditional branch target (if/else)] L_1164
L_1164:
        loop    L_114F                          ; E2 E9
;   [error/early exit] L_1166
L_1166:
        mov     cx, es                          ; 8C C1
        mov     ds, cx                          ; 8E D9
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_116B   offset=0x116B  size=36 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_11CC
;-------------------------------------------------------------------------
;   [sub-routine] L_116B
L_116B:
        xor     bp, bp                          ; 33 ED
        cmp     byte ptr [0x11], 0              ; 80 3E 11 00 00
        je      L_11A5                          ; 74 31
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     bx, word ptr [0x12]             ; 8B 1E 12 00
        cmp     ax, bx                          ; 3B C3
        jge     L_1180                          ; 7D 01
        xchg    bx, ax                          ; 93
;   [conditional branch target (if/else)] L_1180
L_1180:
        and     bl, 0xf8                        ; 80 E3 F8
        sub     ax, bx                          ; 2B C3
        cmp     ax, word ptr [0x36]             ; 3B 06 36 00
        jge     L_11A5                          ; 7D 1A
        mov     word ptr [0x1a], bx             ; 89 1E 1A 00
        mov     ax, word ptr [0x18]             ; A1 18 00
        mov     bx, word ptr [0x14]             ; 8B 1E 14 00
        mov     cx, ax                          ; 8B C8
        sub     ax, bx                          ; 2B C3
        jge     L_11A0                          ; 7D 04
        neg     ax                              ; F7 D8
        mov     bx, cx                          ; 8B D9
;   [conditional branch target (if/else)] L_11A0
L_11A0:
        cmp     ax, 0x20                        ; 3D 20 00
        jle     L_11B5                          ; 7E 10
;   [conditional branch target (if/else)] L_11A5
L_11A5:
        mov     ax, word ptr [0x16]             ; A1 16 00
        and     al, 0xf8                        ; 24 F8
        mov     word ptr [0x1a], ax             ; A3 1A 00
        mov     bx, word ptr [0x18]             ; 8B 1E 18 00
        xor     ax, ax                          ; 33 C0
        not     bp                              ; F7 D5
;   [conditional branch target (if/else)] L_11B5
L_11B5:
        mov     word ptr [0x1c], bx             ; 89 1E 1C 00
        add     ax, 0x20                        ; 05 20 00
        mov     word ptr [0x1e], ax             ; A3 1E 00
        mov     ax, word ptr [0x1a]             ; A1 1A 00
        mov     si, bx                          ; 8B F3
        call    L_11CC                          ; E8 05 00
        mov     word ptr [0x24], si             ; 89 36 24 00
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (23 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_11CC   offset=0x11CC  size=23 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_11CC
L_11CC:
        mov     cx, si                          ; 8B CE
        xchg    si, ax                          ; 96
        sar     si, 1                           ; D1 FE
        sar     si, 1                           ; D1 FE
        sar     si, 1                           ; D1 FE
        sar     ax, 1                           ; D1 F8
        js      L_11FB                          ; 78 22
        jae     L_11DF                          ; 73 04
        add     si, 0x2000                      ; 81 C6 00 20
;   [conditional branch target (if/else)] L_11DF
L_11DF:
        sar     ax, 1                           ; D1 F8
        jae     L_11E7                          ; 73 04
        add     si, 0x4000                      ; 81 C6 00 40
;   [conditional branch target (if/else)] L_11E7
L_11E7:
        add     ax, ax                          ; 03 C0
        add     si, ax                          ; 03 F0
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     si, ax                          ; 03 F0
        add     ax, ax                          ; 03 C0
        add     si, ax                          ; 03 F0
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     si, ax                          ; 03 F0
;   [error/early exit] L_11FB
L_11FB:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (1 instructions).

;-------------------------------------------------------------------------
; sub_11FC   offset=0x11FC  size=1 instr  segment=seg1.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_11FC
L_11FC:
        mov     cx, word ptr [0x1c]             ; 8B 0E 1C 00
; Description (heuristic):
;   Internal helper (2 instructions).

;-------------------------------------------------------------------------
; sub_1200   offset=0x1200  size=2 instr  segment=seg1.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1200
L_1200:
        mov     ax, word ptr [0x30]             ; A1 30 00
        ret                                     ; C3

;-----------------------------------------------------------------------
; SCANLR  (offset 0x1204, size 235 bytes)
;-----------------------------------------------------------------------
SCANLR PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        lds     si, ptr [bp + 0x10]             ; C5 76 10
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_1232                          ; E3 1B
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     di, dx                          ; 8B FA
        mov     si, word ptr [si + 2]           ; 8B 74 02
        dec     si                              ; 4E
        mov     cx, word ptr [bp + 0xe]         ; 8B 4E 0E
        test    byte ptr [bp + 6], 2            ; F6 46 06 02
        je      L_122D                          ; 74 04
        mov     si, cx                          ; 8B F1
        xor     cx, cx                          ; 33 C9
;   [conditional branch target (if/else)] L_122D
L_122D:
        call    L_1A53                          ; E8 23 08
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
;   [conditional branch target (if/else)] L_1232
L_1232:
        les     di, ptr [bp + 0x10]             ; C4 7E 10
        lds     si, ptr es:[di + 0xa]           ; 26 C5 75 0A
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        jcxz    L_124F                          ; E3 11
        mov     bx, ax                          ; 8B D8
        and     bx, 3                           ; 81 E3 03 00
        add     bx, bx                          ; 03 DB
        add     si, word ptr cs:[bx + 0x102]    ; 2E 03 B7 02 01
        mov     cl, 2                           ; B1 02
        shr     ax, cl                          ; D3 E8
;   [conditional branch target (if/else)] L_124F
L_124F:
        mov     di, word ptr es:[di + 6]        ; 26 8B 7D 06
        mul     di                              ; F7 E7
        add     si, ax                          ; 03 F0
        mov     cx, word ptr [bp + 0xe]         ; 8B 4E 0E
        mov     bx, cx                          ; 8B D9
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        add     si, cx                          ; 03 F1
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        inc     cx                              ; 41
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        shr     dx, 1                           ; D1 EA
        jae     L_1275                          ; 73 02
        not     ax                              ; F7 D0
;   [conditional branch target (if/else)] L_1275
L_1275:
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr cs:[bx + 0x172]    ; 2E 8A 9F 72 01
        dec     bl                              ; FE CB
        std                                     ; FD
        shl     dx, 1                           ; D1 E2
        dec     dx                              ; 4A
        jg      L_1292                          ; 7F 0C
        cld                                     ; FC
        shl     bl, 1                           ; D0 E3
        inc     bl                              ; FE C3
        not     bl                              ; F6 D3
        sub     cx, di                          ; 2B CF
        neg     cx                              ; F7 D9
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_1292
L_1292:
        not     bl                              ; F6 D3
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        lodsb   al, byte ptr [si]               ; AC
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        jne     L_12B4                          ; 75 13
        mov     al, ah                          ; 8A C4
        dec     cx                              ; 49
        je      L_12EA                          ; 74 44
        xchg    di, si                          ; 87 F7
        repe scasb al, byte ptr es:[di]         ; F3 AE
        je      L_12EA                          ; 74 3E
        inc     cx                              ; 41
        xchg    di, si                          ; 87 F7
        add     si, dx                          ; 03 F2
        lodsb   al, byte ptr [si]               ; AC
        xor     al, ah                          ; 32 C4
;   [conditional branch target (if/else)] L_12B4
L_12B4:
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        or      dx, dx                          ; 0B D2
        jg      L_12D2                          ; 7F 14
        sub     cx, di                          ; 2B CF
        neg     cx                              ; F7 D9
        dec     cx                              ; 49
;   [loop start] L_12C3
L_12C3:
        inc     cx                              ; 41
        shl     al, 1                           ; D0 E0
        jae     L_12C3                          ; 73 FB
        lds     si, ptr [bp + 0x10]             ; C5 76 10
        cmp     cx, word ptr [si + 2]           ; 3B 4C 02
        jge     L_12EA                          ; 7D 1A
        jmp     L_12D7                          ; EB 05
;   [loop start (also forward branch)] L_12D2
L_12D2:
        dec     cx                              ; 49
        shr     ax, 1                           ; D1 E8
        jae     L_12D2                          ; 73 FB
;   [unconditional branch target] L_12D7
L_12D7:
        mov     ax, cx                          ; 8B C1
;   [loop start] L_12D9
L_12D9:
        cld                                     ; FC
        call    L_1ADF                          ; E8 02 08
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [conditional branch target (if/else)] L_12EA
L_12EA:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_12D9                          ; EB EA
SCANLR ENDP


;-----------------------------------------------------------------------
; PIXEL  (offset 0x12EF, size 172 bytes)
;-----------------------------------------------------------------------
PIXEL PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        call    L_1E2F                          ; E8 2F 0B
        jae     L_1305                          ; 73 03
        jmp     L_138E                          ; E9 89 00
;   [conditional branch target (if/else)] L_1305
L_1305:
        lds     si, ptr [bp + 0x12]             ; C5 76 12
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_131C                          ; E3 10
        mov     cx, word ptr [bp + 0x10]        ; 8B 4E 10
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     si, cx                          ; 8B F1
        mov     di, dx                          ; 8B FA
        call    L_1A53                          ; E8 3A 07
        lds     si, ptr [bp + 0x12]             ; C5 76 12
;   [conditional branch target (if/else)] L_131C
L_131C:
        les     di, ptr [si + 0xa]              ; C4 7C 0A
        mov     ax, word ptr [si]               ; 8B 04
        or      ax, ax                          ; 0B C0
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        je      L_1339                          ; 74 11
        mov     bx, ax                          ; 8B D8
        and     bx, 3                           ; 81 E3 03 00
        add     bx, bx                          ; 03 DB
        add     di, word ptr cs:[bx + 0x102]    ; 2E 03 BF 02 01
        mov     cl, 2                           ; B1 02
        shr     ax, cl                          ; D3 E8
;   [conditional branch target (if/else)] L_1339
L_1339:
        mul     word ptr [si + 6]               ; F7 64 06
        add     di, ax                          ; 03 F8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     bx, ax                          ; 8B D8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        add     di, ax                          ; 03 F8
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr cs:[bx + 0x172]    ; 2E 8A 9F 72 01
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     cx, dx                          ; 8B CA
        or      cx, si                          ; 0B CE
        je      L_137A                          ; 74 1A
        mov     ds, dx                          ; 8E DA
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        mov     si, word ptr [si]               ; 8B 34
        add     si, si                          ; 03 F6
        mov     ah, byte ptr es:[di]            ; 26 8A 25
        call    word ptr cs:[si + 0x1bd7]       ; 2E FF 94 D7 1B
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        xor     al, ah                          ; 32 C4
        stosb   byte ptr es:[di], al            ; AA
        jmp     L_1387                          ; EB 0D
;   [conditional branch target (if/else)] L_137A
L_137A:
        mov     al, byte ptr es:[di]            ; 26 8A 05
        and     al, bl                          ; 22 C3
        mov     dx, 0xff                        ; BA FF 00
        mov     ax, 0xffff                      ; B8 FF FF
        jne     L_138B                          ; 75 04
;   [unconditional branch target] L_1387
L_1387:
        xor     ax, ax                          ; 33 C0
        xor     dx, dx                          ; 33 D2
;   [conditional branch target (if/else)] L_138B
L_138B:
        call    L_1ADF                          ; E8 51 07
;   [unconditional branch target] L_138E
L_138E:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
PIXEL ENDP

        jmp     di                              ; FF E7
        stosb   byte ptr es:[di], al            ; AA
        in      al, 0xea                        ; E4 EA
        add     byte ptr [bp + di + 0x46ee], cl ; 00 8B EE 46
        shr     si, 1                           ; D1 EE
        mov     ah, byte ptr [di]               ; 8A 25
        mov     al, bh                          ; 8A C7
        or      ch, ch                          ; 0A ED
        js      L_13B0                          ; 78 02
        mov     al, 0                           ; B0 00
;   [conditional branch target (if/else)] L_13B0
L_13B0:
        or      ch, ch                          ; 0A ED
        jns     L_13BC                          ; 79 08
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        xor     al, ah                          ; 32 C4
        mov     byte ptr [di], al               ; 88 05
;   [conditional branch target (if/else)] L_13BC
L_13BC:
        xor     ax, ax                          ; 33 C0
        jns     L_13C5                          ; 79 05
        add     cl, 0x26                        ; 80 C1 26
        rol     ch, 1                           ; D0 C5
;   [conditional branch target (if/else)] L_13C5
L_13C5:
        dec     bp                              ; 4D
;   [loop start] L_13C6
L_13C6:
        jg      L_13C6                          ; 7F FE
        retf                                    ; CB
;   [loop start] L_13C9
L_13C9:
        ror     bl, 1                           ; D0 CB
        jb      L_13D1                          ; 72 04
        dec     bp                              ; 4D
        jg      L_13C9                          ; 7F F9
;   [loop start] L_13D0
L_13D0:
        retf                                    ; CB
;   [conditional branch target (if/else)] L_13D1
L_13D1:
        inc     di                              ; 47
        dec     bp                              ; 4D
        jle     L_13D0                          ; 7E FB
;   [loop start] L_13D5
L_13D5:
        cmp     bp, 8                           ; 83 FD 08
        jl      L_13C9                          ; 7C EF
        mov     ah, byte ptr [di]               ; 8A 25
        mov     al, bh                          ; 8A C7
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        sub     bp, 8                           ; 83 ED 08
        jg      L_13D5                          ; 7F EF
        retf                                    ; CB

;-----------------------------------------------------------------------
; OUTPUT  (offset 0x13E7, size 508 bytes)
;-----------------------------------------------------------------------
OUTPUT PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x92                        ; B8 92 00
        call    L_1E2F                          ; E8 38 0A
        push    si                              ; 56
        push    di                              ; 57
        jb      L_1455                          ; 72 5A
        cld                                     ; FC
        mov     byte ptr [bp - 0x1b], 0xff      ; C6 46 E5 FF
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        lds     si, ptr [bp + 0x1e]             ; C5 76 1E
        les     di, ptr [si + 0xa]              ; C4 7C 0A
        mov     cx, word ptr [si]               ; 8B 0C
        mov     word ptr [bp - 0x14], cx        ; 89 4E EC
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        jcxz    L_142D                          ; E3 14
        mov     bx, ax                          ; 8B D8
        and     bx, 3                           ; 81 E3 03 00
        add     bx, bx                          ; 03 DB
        add     di, word ptr cs:[bx + 0x102]    ; 2E 03 BF 02 01
        mov     cl, 2                           ; B1 02
        shr     ax, cl                          ; D3 E8
        mov     cx, 0                           ; B9 00 00
;   [conditional branch target (if/else)] L_142D
L_142D:
        mov     word ptr [bp - 0x18], cx        ; 89 4E E8
        mul     dx                              ; F7 E2
        add     di, ax                          ; 03 F8
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     word ptr [bp - 0xc], es         ; 8C 46 F4
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     ax, 0x12                        ; 3D 12 00
        je      L_1462                          ; 74 20
        cmp     ax, 4                           ; 3D 04 00
        jne     L_1450                          ; 75 09
        jmp     L_16D2                          ; E9 88 02
;   [loop start] L_144A
L_144A:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1452                          ; EB 03
        nop                                     ; 90
;   [loop start (also forward branch)] L_1450
L_1450:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_1452
L_1452:
        call    L_1ADF                          ; E8 8A 06
;   [conditional branch target (if/else)] L_1455
L_1455:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1c                            ; CA 1C 00
;   [conditional branch target (if/else)] L_1462
L_1462:
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_1489                          ; E3 23
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
        mov     di, word ptr [si + 4]           ; 8B 7C 04
        dec     di                              ; 4F
        mov     si, word ptr [si + 2]           ; 8B 74 02
        dec     si                              ; 4E
        lds     bx, ptr [bp + 6]                ; C5 5E 06
        mov     ax, ds                          ; 8C D8
        or      ax, bx                          ; 0B C3
        je      L_1486                          ; 74 0B
        mov     cx, word ptr [bx]               ; 8B 0F
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     si, word ptr [bx + 4]           ; 8B 77 04
        mov     di, word ptr [bx + 6]           ; 8B 7F 06
;   [conditional branch target (if/else)] L_1486
L_1486:
        call    L_1A53                          ; E8 CA 05
;   [conditional branch target (if/else)] L_1489
L_1489:
        lds     si, ptr [bp + 0x12]             ; C5 76 12
        mov     ah, byte ptr [si]               ; 8A 24
        mov     byte ptr [bp - 0x1a], ah        ; 88 66 E6
        mov     bx, word ptr [si + 1]           ; 8B 5C 01
        cmp     bx, 5                           ; 83 FB 05
        jg      L_1450                          ; 7F B7
        je      L_144A                          ; 74 AF
        mov     ah, byte ptr cs:[bx + 0x139b]   ; 2E 8A A7 9B 13
        mov     al, 0x26                        ; B0 26
        dec     al                              ; FE C8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        xor     cx, cx                          ; 33 C9
        call    L_15FB                          ; E8 4F 01
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        lodsw   ax, word ptr [si]               ; AD
        mov     dx, ax                          ; 8B D0
        lodsw   ax, word ptr [si]               ; AD
        mov     cx, ax                          ; 8B C8
        mov     di, dx                          ; 8B FA
        shr     di, 1                           ; D1 EF
        shr     di, 1                           ; D1 EF
        shr     di, 1                           ; D1 EF
        add     di, word ptr [bp - 0xe]         ; 03 7E F2
        mov     bx, dx                          ; 8B DA
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr cs:[bx + 0x172]    ; 2E 8A 9F 72 01
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
;   [loop start] L_14CE
L_14CE:
        dec     ax                              ; 48
        jg      L_14D4                          ; 7F 03
        jmp     L_144A                          ; E9 76 FF
;   [conditional branch target (if/else)] L_14D4
L_14D4:
        push    ax                              ; 50
        push    ds                              ; 1E
        push    si                              ; 56
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     byte ptr [bp - 0x1c], bl        ; 88 5E E4
        mov     ax, word ptr [si]               ; 8B 04
        mov     di, word ptr [si + 2]           ; 8B 7C 02
        xor     bx, bx                          ; 33 DB
        sub     ax, dx                          ; 2B C2
        jae     L_14EC                          ; 73 04
        mov     bl, 2                           ; B3 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_14EC
L_14EC:
        mov     si, word ptr [bp - 0x16]        ; 8B 76 EA
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_1500                          ; 74 0B
        mov     si, 0x2000                      ; BE 00 20
        test    cl, 1                           ; F6 C1 01
        je      L_1500                          ; 74 03
        mov     si, 0x2000                      ; BE 00 20
;   [conditional branch target (if/else)] L_1500
L_1500:
        mov     dx, ax                          ; 8B D0
        mov     ax, di                          ; 8B C7
        mov     byte ptr [bp - 0x19], 0x7d      ; C6 46 E7 7D
        mov     byte ptr [bp - 0x92], 0x90      ; C6 86 6E FF 90
        sub     ax, cx                          ; 2B C1
        jae     L_1524                          ; 73 13
        neg     ax                              ; F7 D8
        or      bl, 1                           ; 80 CB 01
        xor     si, word ptr [bp - 0x18]        ; 33 76 E8
        neg     si                              ; F7 DE
        mov     byte ptr [bp - 0x19], 0x7f      ; C6 46 E7 7F
        mov     byte ptr [bp - 0x92], 0x46      ; C6 86 6E FF 46
;   [conditional branch target (if/else)] L_1524
L_1524:
        mov     cx, ax                          ; 8B C8
        cmp     cx, dx                          ; 3B CA
        jb      L_152F                          ; 72 05
        or      bl, 4                           ; 80 CB 04
        xchg    dx, cx                          ; 87 CA
;   [conditional branch target (if/else)] L_152F
L_152F:
        mov     word ptr [bp - 0x10], si        ; 89 76 F0
        or      dx, dx                          ; 0B D2
        jne     L_153F                          ; 75 09
        mov     di, word ptr [bp - 0xe]         ; 8B 7E F2
        mov     bl, byte ptr [bp - 0x1c]        ; 8A 5E E4
        jmp     L_15EE                          ; E9 AF 00
;   [conditional branch target (if/else)] L_153F
L_153F:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        mov     di, word ptr [bp - 4]           ; 8B 7E FC
        or      cx, cx                          ; 0B C9
        jne     L_1567                          ; 75 1D
        or      bl, 8                           ; 80 CB 08
        test    bl, 4                           ; F6 C3 04
        jne     L_1567                          ; 75 15
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        jne     L_1567                          ; 75 0F
        cmp     byte ptr [bp - 0x1b], bl        ; 38 5E E5
        je      L_15D5                          ; 74 78
        mov     byte ptr [bp - 0x1b], bl        ; 88 5E E5
        push    dx                              ; 52
        call    L_1680                          ; E8 1C 01
        pop     dx                              ; 5A
        jmp     L_15D5                          ; EB 6E
;   [conditional branch target (if/else)] L_1567
L_1567:
        test    bl, 8                           ; F6 C3 08
        jne     L_1586                          ; 75 1A
        mov     ax, 0xee81                      ; B8 81 EE
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, cx                          ; 8B C1
        stosw   word ptr es:[di], ax            ; AB
        mov     ah, byte ptr cs:[bx + 0xba]     ; 2E 8A A7 BA 00
        add     ah, 4                           ; 80 C4 04
        mov     al, byte ptr [bp - 0x19]        ; 8A 46 E7
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_1586
L_1586:
        cmp     byte ptr [bp - 0x1b], bl        ; 38 5E E5
        je      L_15D5                          ; 74 4A
        mov     byte ptr [bp - 0x1b], bl        ; 88 5E E5
        mov     cl, byte ptr cs:[bx + 0xc2]     ; 2E 8A 8F C2 00
        xor     ch, ch                          ; 32 ED
        mov     al, byte ptr cs:[bx + 0xd2]     ; 2E 8A 87 D2 00
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x9a]     ; 2E 8B B7 9A 00
        mov     bx, di                          ; 8B DF
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_15B7                          ; 75 0C
        and     ax, 0xff                        ; 25 FF 00
        je      L_15B7                          ; 74 07
        add     bx, ax                          ; 03 D8
        mov     word ptr ss:[bx], 0             ; 36 C7 07 00 00
;   [conditional branch target (if/else)] L_15B7
L_15B7:
        mov     si, 0x13c5                      ; BE C5 13
        mov     cl, 4                           ; B1 04
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_15C7                          ; 74 05
        mov     si, 0x13be                      ; BE BE 13
        mov     cl, 0xb                         ; B1 0B
;   [conditional branch target (if/else)] L_15C7
L_15C7:
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, di                          ; 2B C7
        add     ax, 6                           ; 05 06 00
        mov     byte ptr es:[di - 2], al        ; 26 88 45 FE
;   [branch target] L_15D5
L_15D5:
        lds     di, ptr [bp - 0xe]              ; C5 7E F2
        mov     si, dx                          ; 8B F2
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        mov     bh, byte ptr [bp - 0x1a]        ; 8A 7E E6
        mov     bl, byte ptr [bp - 0x1c]        ; 8A 5E E4
OUTPUT ENDP

        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        push    bp                              ; 55
        lcall   [bp - 8]                        ; FF 5E F8
        pop     bp                              ; 5D
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
;   [unconditional branch target] L_15EE
L_15EE:
        pop     si                              ; 5E
        pop     ds                              ; 1F
        cld                                     ; FC
        lodsw   ax, word ptr [si]               ; AD
        mov     dx, ax                          ; 8B D0
        lodsw   ax, word ptr [si]               ; AD
        mov     cx, ax                          ; 8B C8
        pop     ax                              ; 58
        jmp     L_14CE                          ; E9 D3 FE
; Description (heuristic):
;   Pure computation / dispatcher (50 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_15FB   offset=0x15FB  size=50 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_15FB
L_15FB:
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     dh, byte ptr [si + 4]           ; 8A 74 04
        mov     bx, word ptr [si]               ; 8B 1C
        dec     bx                              ; 4B
        and     bx, 0xf                         ; 81 E3 0F 00
        jcxz    L_1624                          ; E3 17
        cmp     ax, 2                           ; 3D 02 00
        je      L_1624                          ; 74 12
        or      dh, dh                          ; 0A F6
        je      L_161E                          ; 74 08
        and     bl, 0xfb                        ; 80 E3 FB
        or      bl, 8                           ; 80 CB 08
        jmp     L_1624                          ; EB 06
;   [conditional branch target (if/else)] L_161E
L_161E:
        and     bl, 0xfe                        ; 80 E3 FE
        or      bl, 2                           ; 80 CB 02
;   [branch target] L_1624
L_1624:
        mov     word ptr [bp - 0x12], bx        ; 89 5E EE
        lea     di, [bp - 0x94]                 ; 8D BE 6C FF
        mov     cx, ss                          ; 8C D1
        mov     es, cx                          ; 8E C1
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        mov     cx, cs                          ; 8C C9
        mov     ds, cx                          ; 8E D9
        mov     si, 0x13a1                      ; BE A1 13
        mov     cx, 9                           ; B9 09 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_1657                          ; 74 10
        cmp     ax, 2                           ; 3D 02 00
        jne     L_1657                          ; 75 0B
        mov     si, 0x13aa                      ; BE AA 13
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     byte ptr es:[di - 1], dh        ; 26 88 75 FF
;   [conditional branch target (if/else)] L_1657
L_1657:
        mov     cl, byte ptr cs:[bx + 0x1bf9]   ; 2E 8A 8F F9 1B
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x1bd9]   ; 2E 8B B7 D9 1B
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, 0x13b4                      ; BE B4 13
        ; constant WM_SIZE
        mov     cl, 5                           ; B1 05
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_167A                          ; 74 0A
        cmp     ax, 2                           ; 3D 02 00
        je      L_167A                          ; 74 05
        mov     si, 0x13b0                      ; BE B0 13
        mov     cl, 7                           ; B1 07
;   [conditional branch target (if/else)] L_167A
L_167A:
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     word ptr [bp - 4], di           ; 89 7E FC
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (102 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1680   offset=0x1680  size=102 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_15FB, L_1680, L_1A53
;-------------------------------------------------------------------------
;   [sub-routine] L_1680
L_1680:
        lea     ax, [bp - 0x8f]                 ; 8D 86 71 FF
        sub     ax, di                          ; 2B C7
        mov     si, 0x13c9                      ; BE C9 13
        mov     cx, 0x15                        ; B9 15 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        add     byte ptr es:[di - 0xf], al      ; 26 00 45 F1
        add     byte ptr es:[di - 5], al        ; 26 00 45 FB
        test    bl, 2                           ; F6 C3 02
        je      L_16A5                          ; 74 0A
        mov     byte ptr es:[di - 0x14], 0xc3   ; 26 C6 45 EC C3
        mov     byte ptr es:[di - 0xd], 0x4f    ; 26 C6 45 F3 4F
;   [conditional branch target (if/else)] L_16A5
L_16A5:
        mov     ah, bl                          ; 8A E3
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     cl, byte ptr cs:[bx + 0x1bf9]   ; 2E 8A 8F F9 1B
        mov     al, cl                          ; 8A C1
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x1bd9]   ; 2E 8B B7 D9 1B
        mov     bl, ah                          ; 8A DC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, 0x13de                      ; BE DE 13
        mov     cl, 9                           ; B1 09
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        test    bl, 2                           ; F6 C3 02
        je      L_16CD                          ; 74 05
        mov     byte ptr es:[di - 7], 0x4f      ; 26 C6 45 F9 4F
;   [error/early exit] L_16CD
L_16CD:
        sub     byte ptr es:[di - 2], al        ; 26 28 45 FE
        ret                                     ; C3
;   [unconditional branch target] L_16D2
L_16D2:
        lds     si, ptr [bp + 0x1e]             ; C5 76 1E
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_16F4                          ; E3 1B
        lds     bx, ptr [bp + 0x16]             ; C5 5E 16
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     di, dx                          ; 8B FA
        mov     cx, word ptr [bx + 4]           ; 8B 4F 04
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        dec     si                              ; 4E
        jle     L_171D                          ; 7E 33
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     si, word ptr [bx + si + 2]      ; 8B 70 02
        call    L_1A53                          ; E8 5F 03
;   [conditional branch target (if/else)] L_16F4
L_16F4:
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        mov     dx, bx                          ; 8B D3
        mov     di, word ptr [bp + 0xe]         ; 8B 7E 0E
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     cx, ax                          ; 8B C8
        or      cx, di                          ; 0B CF
        je      L_1720                          ; 74 18
        mov     ds, ax                          ; 8E D8
        mov     cx, word ptr [di + 8]           ; 8B 4D 08
        mov     si, 0xffff                      ; BE FF FF
        cmp     cx, 3                           ; 83 F9 03
        ja      L_171D                          ; 77 08
        cmp     cx, 1                           ; 83 F9 01
        jne     L_172D                          ; 75 13
;   [loop start] L_171A
L_171A:
        jmp     L_144A                          ; E9 2D FD
;   [conditional branch target (if/else)] L_171D
L_171D:
        jmp     L_1450                          ; E9 30 FD
;   [conditional branch target (if/else)] L_1720
L_1720:
        lds     di, ptr [bp + 0x12]             ; C5 7E 12
        cmp     word ptr [di + 1], 5            ; 83 7D 01 05
        je      L_171A                          ; 74 F1
        xor     bx, bx                          ; 33 DB
        xor     si, si                          ; 33 F6
;   [conditional branch target (if/else)] L_172D
L_172D:
        and     bx, 7                           ; 81 E3 07 00
        mov     al, byte ptr [bx + di]          ; 8A 01
        mov     byte ptr [bp - 0x1a], al        ; 88 46 E6
        mov     word ptr [bp - 0xa], 0xffff     ; C7 46 F6 FF FF
        mov     cx, si                          ; 8B CE
        call    L_15FB                          ; E8 BB FE
        mov     bl, 8                           ; B3 08
        call    L_1680                          ; E8 3B FF
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        add     si, 4                           ; 83 C6 04
;   [loop start] L_174E
L_174E:
        dec     ax                              ; 48
        jg      L_1754                          ; 7F 03
        jmp     L_144A                          ; E9 F6 FC
;   [conditional branch target (if/else)] L_1754
L_1754:
        push    ax                              ; 50
        lodsw   ax, word ptr [si]               ; AD
        mov     bx, ax                          ; 8B D8
        mov     cx, bx                          ; 8B CB
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        mov     di, ax                          ; 8B F8
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr cs:[bx + 0x172]    ; 2E 8A 9F 72 01
        mov     bh, byte ptr [bp - 0x1a]        ; 8A 7E E6
        lodsw   ax, word ptr [si]               ; AD
        push    ds                              ; 1E
        push    si                              ; 56
        sub     ax, cx                          ; 2B C1
        mov     si, ax                          ; 8B F0
        push    bp                              ; 55
        mov     ds, word ptr [bp - 0xc]         ; 8E 5E F4
        lcall   [bp - 8]                        ; FF 5E F8
        pop     bp                              ; 5D
        pop     si                              ; 5E
        pop     ds                              ; 1F
        pop     ax                              ; 58
        jmp     L_174E                          ; EB C9

;-----------------------------------------------------------------------
; ENUMDFONTS  (offset 0x1785, size 24 bytes)
;-----------------------------------------------------------------------
ENUMDFONTS PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
ENUMDFONTS ENDP


;-----------------------------------------------------------------------
; ENUMOBJ  (offset 0x179D, size 152 bytes)
;-----------------------------------------------------------------------
ENUMOBJ PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        push    di                              ; 57
        cmp     word ptr [bp + 0xe], 1          ; 83 7E 0E 01
        je      L_17C8                          ; 74 16
        cmp     word ptr [bp + 0xe], 2          ; 83 7E 0E 02
        je      L_17F0                          ; 74 38
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_17BB
L_17BB:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [conditional branch target (if/else)] L_17C8
L_17C8:
        xor     si, si                          ; 33 F6
        mov     word ptr [bp - 0xc], si         ; 89 76 F4
        mov     word ptr [bp - 0xa], si         ; 89 76 F6
;   [loop start] L_17D0
L_17D0:
        mov     word ptr [bp - 0xe], si         ; 89 76 F2
        xor     di, di                          ; 33 FF
;   [loop start] L_17D5
L_17D5:
        mov     ax, di                          ; 8B C7
        xor     ah, ah                          ; 32 E4
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        call    L_1835                          ; E8 53 00
        xor     di, 0xffff                      ; 81 F7 FF FF
        jne     L_17D5                          ; 75 ED
        inc     si                              ; 46
        cmp     si, 5                           ; 83 FE 05
        jb      L_17D0                          ; 72 E2
;   [loop start] L_17EE
L_17EE:
        jmp     L_17BB                          ; EB CB
;   [conditional branch target (if/else)] L_17F0
L_17F0:
        xor     di, di                          ; 33 FF
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     di, 0xa                         ; BF 0A 00
;   [loop start] L_17FB
L_17FB:
        mov     ax, word ptr cs:[di - 2]        ; 2E 8B 85 FE FF
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        xor     ah, ah                          ; 32 E4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        call    L_1835                          ; E8 2A 00
        sub     di, 2                           ; 83 EF 02
        jne     L_17FB                          ; 75 EB
        mov     word ptr [bp - 0xe], 2          ; C7 46 F2 02 00
        ; constant WM_SIZE
        mov     si, 5                           ; BE 05 00
;   [loop start] L_1818
L_1818:
        mov     word ptr [bp - 8], si           ; 89 76 F8
        xor     di, di                          ; 33 FF
;   [loop start] L_181D
L_181D:
        mov     ax, di                          ; 8B C7
        xor     ah, ah                          ; 32 E4
        mov     word ptr [bp - 0xc], di         ; 89 7E F4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        call    L_1835                          ; E8 0B 00
        xor     di, 0xffff                      ; 81 F7 FF FF
        jne     L_181D                          ; 75 ED
        dec     si                              ; 4E
        jns     L_1818                          ; 79 E5
        jmp     L_17EE                          ; EB B9
ENUMOBJ ENDP

; Description (heuristic):
;   Internal helper (10 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1835   offset=0x1835  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_1835
L_1835:
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        pop     bx                              ; 5B
        or      ax, ax                          ; 0B C0
        je      L_17EE                          ; 74 A6
        jmp     bx                              ; FF E3

;-----------------------------------------------------------------------
; REALIZEOBJECT  (offset 0x184A, size 80 bytes)
;-----------------------------------------------------------------------
REALIZEOBJECT PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        push    di                              ; 57
        cld                                     ; FC
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        or      bx, bx                          ; 0B DB
        jns     L_1864                          ; 79 03
        jmp     L_1971                          ; E9 0D 01
;   [conditional branch target (if/else)] L_1864
L_1864:
        lds     si, ptr [bp + 0xe]              ; C5 76 0E
        dec     bx                              ; 4B
        cmp     bx, 2                           ; 83 FB 02
        jg      L_1884                          ; 7F 17
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_187C                          ; 74 05
        jmp     word ptr cs:[bx + 0x19dc]       ; 2E FF A7 DC 19
;   [conditional branch target (if/else)] L_187C
L_187C:
        mov     ax, word ptr cs:[bx + 0x19e2]   ; 2E 8B 87 E2 19
        jmp     L_1978                          ; E9 F4 00
;   [conditional branch target (if/else)] L_1884
L_1884:
        jmp     L_1976                          ; E9 EF 00
        mov     cx, word ptr [si]               ; 8B 0C
        cmp     cx, 5                           ; 83 F9 05
        je      L_189C                          ; 74 0E
        cmp     word ptr [si + 2], 2            ; 83 7C 02 02
        jb      L_1897                          ; 72 03
;   [loop start] L_1894
L_1894:
        mov     cx, 0                           ; B9 00 00
;   [conditional branch target (if/else)] L_1897
L_1897:
        cmp     cx, 5                           ; 83 F9 05
REALIZEOBJECT ENDP

        jg      L_1894                          ; 7F F8
;   [conditional branch target (if/else)] L_189C
L_189C:
        lea     si, [si + 6]                    ; 8D 74 06
        call    L_1985                          ; E8 E3 00
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, cx                          ; 8B C1
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_1971                          ; E9 C5 00
        mov     di, ss                          ; 8C D7
        mov     es, di                          ; 8E C7
        lea     di, [bp - 0xc]                  ; 8D 7E F4
        mov     bx, word ptr [si]               ; 8B 1C
        cmp     bx, 3                           ; 83 FB 03
        jle     L_18BD                          ; 7E 03
        mov     bx, 0                           ; BB 00 00
;   [conditional branch target (if/else)] L_18BD
L_18BD:
        add     bx, bx                          ; 03 DB
        jmp     word ptr cs:[bx + 0x19a4]       ; 2E FF A7 A4 19
        lea     di, [di + 8]                    ; 8D 7D 08
        ; constant WM_CREATE
        mov     bx, 1                           ; BB 01 00
        jmp     L_194C                          ; E9 7F 00
;   [loop start] L_18CD
L_18CD:
        lea     si, [si + 2]                    ; 8D 74 02
        call    L_1985                          ; E8 B2 00
        mov     ax, bx                          ; 8B C3
        cdq                                     ; 99
        ; constant WM_MOVE
        mov     si, 3                           ; BE 03 00
        div     si                              ; F7 F6
        mov     dx, ax                          ; 8B D0
        xor     si, si                          ; 33 F6
        call    L_1DD3                          ; E8 F1 04
        or      si, si                          ; 0B F6
        je      L_18F4                          ; 74 0E
        add     si, si                          ; 03 F6
        mov     ax, word ptr cs:[si + 0x18f7]   ; 2E 8B 84 F7 18
        sub     di, 8                           ; 83 EF 08
;   [loop start] L_18F0
L_18F0:
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_18F4
L_18F4:
        mov     bx, 0                           ; BB 00 00
        jmp     L_194C                          ; EB 53
        mov     byte ptr [bp + si], ah          ; 88 22
        stosb   byte ptr es:[di], al            ; AA
        push    bp                              ; 55
        fnsave  dword ptr [bx - 0x3b]           ; DD 77 C5
        je      L_1904                          ; 74 02
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        dec     dx                              ; 4A
        lds     si, ptr [si + 0xa]              ; C5 74 0A
        mov     cx, 8                           ; B9 08 00
;   [loop iteration target] L_190C
L_190C:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     si, dx                          ; 03 F2
        loop    L_190C                          ; E2 FB
        ; constant WM_MOVE
        mov     bx, 3                           ; BB 03 00
        jmp     L_194C                          ; EB 36
        nop                                     ; 90
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        cmp     cx, 5                           ; 83 F9 05
        jg      L_18CD                          ; 7F AE
        lea     si, [si + 8]                    ; 8D 74 08
        call    L_1985                          ; E8 60 00
        push    ax                              ; 50
        lea     si, [si - 6]                    ; 8D 74 FA
        call    L_1985                          ; E8 59 00
        pop     dx                              ; 5A
        cmp     dx, ax                          ; 3B D0
        je      L_18F0                          ; 74 BF
        mov     dx, ax                          ; 8B D0
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        mov     bx, cx                          ; 8B D9
        lea     si, [bx + 0x19ac]               ; 8D B7 AC 19
        mov     bx, 2                           ; BB 02 00
        mov     cx, 4                           ; B9 04 00
;   [loop iteration target] L_1945
L_1945:
        lodsw   ax, word ptr cs:[si]            ; 2E AD
        xor     ax, dx                          ; 33 C2
        stosw   word ptr es:[di], ax            ; AB
        loop    L_1945                          ; E2 F9
;   [unconditional branch target] L_194C
L_194C:
        mov     dx, 7                           ; BA 07 00
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        and     cl, dl                          ; 22 CA
        mov     ch, dl                          ; 8A EA
        lea     si, [di - 8]                    ; 8D 75 F8
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        mov     word ptr es:[di + 8], bx        ; 26 89 5D 08
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
;   [loop start] L_1963
L_1963:
        lodsb   al, byte ptr ss:[si]            ; 36 AC
        ror     al, cl                          ; D2 C8
        and     bx, dx                          ; 23 DA
        mov     byte ptr es:[bx + di], al       ; 26 88 01
        inc     bx                              ; 43
        dec     ch                              ; FE CD
        jns     L_1963                          ; 79 F2
;   [unconditional branch target] L_1971
L_1971:
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_1978                          ; EB 03
        nop                                     ; 90
;   [unconditional branch target] L_1976
L_1976:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_1978
L_1978:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
; Description (heuristic):
;   Internal helper (2 instructions).

;-------------------------------------------------------------------------
; sub_1985   offset=0x1985  size=2 instr  segment=seg1.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_1985
L_1985:
        mov     ax, word ptr [si]               ; 8B 04
        mov     dl, byte ptr [si + 2]           ; 8A 54 02
; Description (heuristic):
;   Pure computation / dispatcher (70 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_198A   offset=0x198A  size=70 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=3)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_198A
;-------------------------------------------------------------------------
;   [sub-routine] L_198A
L_198A:
        xor     dh, dh                          ; 32 F6
        xor     bx, bx                          ; 33 DB
        xchg    bl, ah                          ; 86 E3
        add     bx, ax                          ; 03 D8
        add     bx, dx                          ; 03 DA
        mov     ax, 0xffff                      ; B8 FF FF
        mov     dl, al                          ; 8A D0
        cmp     bx, 0x17e                       ; 81 FB 7E 01
        jge     L_19A3                          ; 7D 04
        xor     ax, ax                          ; 33 C0
        xor     dx, dx                          ; 33 D2
;   [error/early exit] L_19A3
L_19A3:
        ret                                     ; C3
        int     0x18                            ; CD 18
        les     bx, ptr [bx + si]               ; C4 18
        pop     ss                              ; 17
        sbb     di, di                          ; 19 FF
        sbb     bh, bh                          ; 18 FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        inc     word ptr [bx + si]              ; FF 00
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        push    di                              ; FF F7
        div     di                              ; F7 F7
        div     di                              ; F7 F7
        div     di                              ; F7 F7
        idiv    word ptr [bx - 0x41]            ; F7 7F BF
        fucompi st(7)                           ; DF EF
        idiv    bx                              ; F7 FB
        std                                     ; FD
        db      0feh                            ; FE
        db      0feh                            ; FE
        std                                     ; FD
        sti                                     ; FB
        imul    di                              ; F7 EF
        fistp   qword ptr [bx - 0x881]          ; DF BF 7F F7
        div     di                              ; F7 F7
        test    word ptr [bx + si], 0xf7f7      ; F7 00 F7 F7
        idiv    word ptr [bp - 0x43]            ; F7 7E BD
        db      0dbh                            ; DB
        out     0xe7, ax                        ; E7 E7
        fstp    xword ptr [di - 0x7882]         ; DB BD 7E 87
        sbb     byte ptr [si + 0x7618], ch      ; 18 AC 18 76
        sbb     word ptr [bp + di], ax          ; 19 03
        add     byte ptr [bp + si], cl          ; 00 0A
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [si - 0x6f28], cl      ; 00 8C D8 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dl, byte ptr [bp + 0xc]         ; 8A 56 0C
        call    L_198A                          ; E8 8E FF
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        or      di, word ptr [bp + 8]           ; 0B 7E 08
        je      L_1A0C                          ; 74 08
        les     di, ptr [bp + 6]                ; C4 7E 06
        cld                                     ; FC
        stosw   word ptr es:[di], ax            ; AB
        mov     word ptr es:[di], dx            ; 26 89 15
;   [conditional branch target (if/else)] L_1A0C
L_1A0C:
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00

;-----------------------------------------------------------------------
; CONTROL  (offset 0x1A18, size 59 bytes)
;-----------------------------------------------------------------------
CONTROL PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        cmp     word ptr [bp + 0xe], 4          ; 83 7E 0E 04
        je      L_1A31                          ; 74 06
        cmp     word ptr [bp + 0xe], 5          ; 83 7E 0E 05
        jne     L_1A47                          ; 75 16
;   [conditional branch target (if/else)] L_1A31
L_1A31:
        lds     di, ptr [bp + 0xa]              ; C5 7E 0A
        mov     bx, word ptr [di]               ; 8B 1D
        cmp     bx, 1                           ; 83 FB 01
        ja      L_1A47                          ; 77 0C
        sub     ax, bx                          ; 2B C3
        les     di, ptr [bp + 6]                ; C4 7E 06
        cld                                     ; FC
        stosw   word ptr es:[di], ax            ; AB
        xor     ah, ah                          ; 32 E4
        stosw   word ptr es:[di], ax            ; AB
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
;   [conditional branch target (if/else)] L_1A47
L_1A47:
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
CONTROL ENDP

; Description (heuristic):
;   Pure computation / dispatcher (26 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1A53   offset=0x1A53  size=26 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0E35, L_1AA7
;-------------------------------------------------------------------------
;   [sub-routine] L_1A53
L_1A53:
        mov     ds, word ptr cs:[0x1c22]        ; 2E 8E 1E 22 1C
        and     cl, 0xf8                        ; 80 E1 F8
        or      si, 7                           ; 81 CE 07 00
        mov     word ptr [0x480], cx            ; 89 0E 80 04
        mov     word ptr [0x482], dx            ; 89 16 82 04
        mov     word ptr [0x484], si            ; 89 36 84 04
        mov     word ptr [0x486], di            ; 89 3E 86 04
        mov     byte ptr [0x47f], 1             ; C6 06 7F 04 01
        mov     cl, 0xc0                        ; B1 C0
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     bx, word ptr [0x18]             ; 8B 1E 18 00
        call    L_1AA7                          ; E8 25 00
        jae     L_1A9F                          ; 73 1B
        je      L_1A9F                          ; 74 19
        xor     cx, cx                          ; 33 C9
        xchg    byte ptr [0x490], cl            ; 86 0E 90 04
        push    cx                              ; 51
        mov     byte ptr [0x47e], 0x40          ; C6 06 7E 04 40
        sti                                     ; FB
        call    L_0E35                          ; E8 9F F3
        mov     ds, word ptr cs:[0x1c22]        ; 2E 8E 1E 22 1C
        pop     ax                              ; 58
        mov     byte ptr [0x490], al            ; A2 90 04
;   [conditional branch target (if/else)] L_1A9F
L_1A9F:
        jmp     L_1AA2                          ; EB 01
; Description (heuristic):
;   Internal helper (4 instructions).

;-------------------------------------------------------------------------
; sub_1AA1   offset=0x1AA1  size=4 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_1AA1
;-------------------------------------------------------------------------
;   [sub-routine] L_1AA1
L_1AA1:
        iret                                    ; CF
;   [unconditional branch target] L_1AA2
L_1AA2:
        push    cs                              ; 0E
        call    L_1AA1                          ; E8 FB FF
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (20 instructions).

;-------------------------------------------------------------------------
; sub_1AA7   offset=0x1AA7  size=20 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1AA7
L_1AA7:
        mov     ds, word ptr cs:[0x1c22]        ; 2E 8E 1E 22 1C
        test    byte ptr [0x47e], cl            ; 84 0E 7E 04
        jne     L_1ADE                          ; 75 2C
        xor     cx, cx                          ; 33 C9
        cmp     byte ptr [0x47f], cl            ; 38 0E 7F 04
        je      L_1ADB                          ; 74 21
        cmp     ax, word ptr [0x484]            ; 3B 06 84 04
        jg      L_1ADB                          ; 7F 1B
        add     ax, word ptr [0x38]             ; 03 06 38 00
        cmp     ax, word ptr [0x480]            ; 3B 06 80 04
        jl      L_1ADB                          ; 7C 11
        cmp     bx, word ptr [0x486]            ; 3B 1E 86 04
        jg      L_1ADB                          ; 7F 0B
        add     bx, 0x1f                        ; 81 C3 1F 00
        cmp     bx, word ptr [0x482]            ; 3B 1E 82 04
        jl      L_1ADB                          ; 7C 01
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_1ADB
L_1ADB:
        or      cx, cx                          ; 0B C9
        stc                                     ; F9
;   [error/early exit] L_1ADE
L_1ADE:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (3 instructions).

;-------------------------------------------------------------------------
; sub_1ADF   offset=0x1ADF  size=3 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1ADF
L_1ADF:
        mov     ds, word ptr cs:[0x1c22]        ; 2E 8E 1E 22 1C
        mov     byte ptr [0x47f], 0             ; C6 06 7F 04 00
        ret                                     ; C3

;-----------------------------------------------------------------------
; INQUIRE  (offset 0x1AEA, size 39 bytes)
;-----------------------------------------------------------------------
INQUIRE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        les     di, ptr [bp + 6]                ; C4 7E 06
        ; constant WM_SETTEXT
        mov     si, 0xc                         ; BE 0C 00
        mov     ax, 4                           ; B8 04 00
        mov     cx, ax                          ; 8B C8
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
INQUIRE ENDP


;-----------------------------------------------------------------------
; SETCURSOR  (offset 0x1B11, size 110 bytes)
;-----------------------------------------------------------------------
SETCURSOR PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        xor     cx, cx                          ; 33 C9
        xchg    byte ptr [0x490], cl            ; 86 0E 90 04
        jcxz    L_1B8A                          ; E3 65
        mov     byte ptr [0x47e], 0x80          ; C6 06 7E 04 80
        pushf                                   ; 9C
        cli                                     ; FA
        xor     ax, ax                          ; 33 C0
        xchg    word ptr [0x48c], ax            ; 87 06 8C 04
        add     word ptr [0x488], ax            ; 01 06 88 04
        xor     ax, ax                          ; 33 C0
        xchg    word ptr [0x48e], ax            ; 87 06 8E 04
        add     word ptr [0x48a], ax            ; 01 06 8A 04
        sti                                     ; FB
        call    L_0E35                          ; E8 F1 F2
        cld                                     ; FC
        mov     es, word ptr cs:[0x1c22]        ; 2E 8E 06 22 1C
        lds     si, ptr [bp + 6]                ; C5 76 06
        mov     ax, ds                          ; 8C D8
        or      ax, si                          ; 0B C6
        je      L_1B7D                          ; 74 2A
        mov     di, 0                           ; BF 00 00
        mov     cx, 6                           ; B9 06 00
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        call    L_0DC8                          ; E8 6A F2
        mov     ds, word ptr cs:[0x1c22]        ; 2E 8E 1E 22 1C
        cli                                     ; FA
        mov     ax, word ptr [0]                ; A1 00 00
        mov     word ptr [0x48c], ax            ; A3 8C 04
        sub     word ptr [0x488], ax            ; 29 06 88 04
        mov     ax, word ptr [2]                ; A1 02 00
        mov     word ptr [0x48e], ax            ; A3 8E 04
        sub     word ptr [0x48a], ax            ; 29 06 8A 04
        mov     byte ptr [0x47e], 0x40          ; C6 06 7E 04 40
;   [conditional branch target (if/else)] L_1B7D
L_1B7D:
        jmp     L_1B80                          ; EB 01
SETCURSOR ENDP

; Description (heuristic):
;   Pure computation / dispatcher (72 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1B7F   offset=0x1B7F  size=72 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_1B7F
;-------------------------------------------------------------------------
;   [sub-routine] L_1B7F
L_1B7F:
        iret                                    ; CF
;   [unconditional branch target] L_1B80
L_1B80:
        push    cs                              ; 0E
        call    L_1B7F                          ; E8 FB FF
        mov     byte ptr es:[0x490], 1          ; 26 C6 06 90 04 01
;   [conditional branch target (if/else)] L_1B8A
L_1B8A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        xor     al, al                          ; 32 C0
        ret                                     ; C3
        not     al                              ; F6 D0
        and     al, ah                          ; 22 C4
        ret                                     ; C3
        not     al                              ; F6 D0
        ret                                     ; C3
        not     ah                              ; F6 D4
        and     al, ah                          ; 22 C4
        not     ah                              ; F6 D4
        ret                                     ; C3
        mov     al, ah                          ; 8A C4
        ret                                     ; C3
        mov     al, ah                          ; 8A C4
        not     al                              ; F6 D0
        ret                                     ; C3
        xor     al, ah                          ; 32 C4
        ret                                     ; C3
        xor     al, ah                          ; 32 C4
        not     al                              ; F6 D0
        ret                                     ; C3
        and     al, ah                          ; 22 C4
        ret                                     ; C3
        and     al, ah                          ; 22 C4
        not     al                              ; F6 D0
        ret                                     ; C3
        not     al                              ; F6 D0
        or      al, ah                          ; 0A C4
        ret                                     ; C3
        not     ah                              ; F6 D4
        or      al, ah                          ; 0A C4
        not     ah                              ; F6 D4
        ret                                     ; C3
        or      al, ah                          ; 0A C4
        ret                                     ; C3
        or      al, ah                          ; 0A C4
        not     al                              ; F6 D0
        ret                                     ; C3
        mov     al, 0xff                        ; B0 FF
        ret                                     ; C3
        ret                                     ; C3
        xchg    di, ax                          ; 97
        sbb     dx, ax                          ; 1B D0
        sbb     bx, word ptr [bp + si - 0x60e5] ; 1B 9A 1B 9F
        sbb     sp, word ptr [bp + si - 0x53e5] ; 1B A2 1B AC
        sbb     si, word ptr [bx + di - 0x43e5] ; 1B B1 1B BC
        sbb     di, word ptr [bx + di - 0x4be5] ; 1B B9 1B B4
        sbb     bp, word ptr [bx + di - 0x3ee5] ; 1B A9 1B C1
        sbb     bx, ax                          ; 1B D8
        sbb     ax, si                          ; 1B C6
        sbb     cx, bp                          ; 1B CD
        sbb     dx, bp                          ; 1B D5
        sbb     ax, word ptr [bp + si]          ; 1B 02
        add     al, 4                           ; 04 04
        add     al, byte ptr [0x204]            ; 02 06 04 02
        add     al, 2                           ; 04 02
        add     al, 2                           ; 04 02
        add     al, 0                           ; 04 00
        push    es                              ; 06
        add     al, byte ptr [bp + si]          ; 02 02

;-----------------------------------------------------------------------
; DEVICEMODE  (offset 0x1C09, size 24 bytes)
;-----------------------------------------------------------------------
DEVICEMODE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0xffff                      ; B8 FF FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
DEVICEMODE ENDP


;-----------------------------------------------------------------------
; ENABLE  (offset 0x1C21, size 65 bytes)
;-----------------------------------------------------------------------
ENABLE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        cld                                     ; FC
        les     di, ptr [bp + 0x14]             ; C4 7E 14
        and     word ptr [bp + 0x12], 1         ; 81 66 12 01 00
        jne     L_1C4A                          ; 75 0E
        lea     si, [0xe2]                      ; 8D 36 E2 00
        mov     cx, 0x20                        ; B9 20 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        call    L_0192                          ; E8 4A E5
        jmp     L_1C55                          ; EB 0B
;   [conditional branch target (if/else)] L_1C4A
L_1C4A:
        lea     si, [0x10a]                     ; 8D 36 0A 01
        mov     cx, 0x68                        ; B9 68 00
        mov     ax, cx                          ; 8B C1
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
;   [unconditional branch target] L_1C55
L_1C55:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
ENABLE ENDP


;-----------------------------------------------------------------------
; DISABLE  (offset 0x1C62, size 34 bytes)
;-----------------------------------------------------------------------
DISABLE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        lds     si, ptr [bp + 6]                ; C5 76 06
        call    L_01AF                          ; E8 3B E5
        mov     ax, 0xffff                      ; B8 FF FF
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
DISABLE ENDP


;-----------------------------------------------------------------------
; MOVECURSOR  (offset 0x1C84, size 43 bytes)
;-----------------------------------------------------------------------
MOVECURSOR PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [0x48c]            ; 2B 06 8C 04
        mov     word ptr [0x488], ax            ; A3 88 04
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        sub     bx, word ptr [0x48e]            ; 2B 1E 8E 04
        mov     word ptr [0x48a], bx            ; 89 1E 8A 04
        xor     cx, cx                          ; 33 C9
        xchg    byte ptr [0x490], cl            ; 86 0E 90 04
;   [loop start] L_1CAD
L_1CAD:
        jmp     L_1CB0                          ; EB 01
MOVECURSOR ENDP

; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1CAF   offset=0x1CAF  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0E35, L_1AA7, L_1CAF
;-------------------------------------------------------------------------
;   [sub-routine] L_1CAF
L_1CAF:
        iret                                    ; CF
;   [unconditional branch target] L_1CB0
L_1CB0:
        push    cs                              ; 0E
        call    L_1CAF                          ; E8 FB FF
        jcxz    L_1D16                          ; E3 60
        mov     word ptr [0x16], ax             ; A3 16 00
        mov     word ptr [0x18], bx             ; 89 1E 18 00
        mov     cl, 0xc0                        ; B1 C0
        call    L_1AA7                          ; E8 E5 FD
        jae     L_1CDC                          ; 73 18
        je      L_1CE3                          ; 74 1D
        or      byte ptr [0x47e], 0x40          ; 80 0E 7E 04 40
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0E35                          ; E8 65 F1
        jmp     L_1CD3                          ; EB 01
; Description (heuristic):
;   Internal helper (10 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1CD2   offset=0x1CD2  size=10 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0E1E, L_1CD2
;-------------------------------------------------------------------------
;   [sub-routine] L_1CD2
L_1CD2:
        iret                                    ; CF
;   [unconditional branch target] L_1CD3
L_1CD3:
        push    cs                              ; 0E
        call    L_1CD2                          ; E8 FB FF
        mov     ds, word ptr cs:[0x1c22]        ; 2E 8E 1E 22 1C
;   [conditional branch target (if/else)] L_1CDC
L_1CDC:
        mov     byte ptr [0x490], 1             ; C6 06 90 04 01
        jmp     L_1D16                          ; EB 33
;   [conditional branch target (if/else)] L_1CE3
L_1CE3:
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0E1E                          ; E8 36 F1
        jmp     L_1CEB                          ; EB 01
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1CEA   offset=0x1CEA  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1CEA
;-------------------------------------------------------------------------
;   [sub-routine] L_1CEA
L_1CEA:
        iret                                    ; CF
;   [unconditional branch target] L_1CEB
L_1CEB:
        push    cs                              ; 0E
        call    L_1CEA                          ; E8 FB FF
        mov     ds, word ptr cs:[0x1c22]        ; 2E 8E 1E 22 1C
        pushf                                   ; 9C
        cli                                     ; FA
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        mov     ax, word ptr [0x488]            ; A1 88 04
        mov     bx, word ptr [0x48a]            ; 8B 1E 8A 04
        cmp     ax, word ptr [0x16]             ; 3B 06 16 00
        jne     L_1CAD                          ; 75 A8
        cmp     bx, word ptr [0x18]             ; 3B 1E 18 00
        jne     L_1CAD                          ; 75 A2
        mov     byte ptr [0x490], cl            ; 88 0E 90 04
        jmp     L_1D12                          ; EB 01
; Description (heuristic):
;   Internal helper (11 instructions).

;-------------------------------------------------------------------------
; sub_1D11   offset=0x1D11  size=11 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1D11
;-------------------------------------------------------------------------
;   [sub-routine] L_1D11
L_1D11:
        iret                                    ; CF
;   [unconditional branch target] L_1D12
L_1D12:
        push    cs                              ; 0E
        call    L_1D11                          ; E8 FB FF
;   [branch target] L_1D16
L_1D16:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00

;-----------------------------------------------------------------------
; CHECKCURSOR  (offset 0x1D23, size 41 bytes)
;-----------------------------------------------------------------------
CHECKCURSOR PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        push    es                              ; 06
        xor     cx, cx                          ; 33 C9
        xchg    byte ptr [0x490], cl            ; 86 0E 90 04
        jcxz    L_1D9B                          ; E3 63
        mov     al, byte ptr [0x47e]            ; A0 7E 04
        add     al, al                          ; 02 C0
        jb      L_1DBA                          ; 72 7B
        jns     L_1DBA                          ; 79 79
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [0x488]            ; A1 88 04
        mov     bx, word ptr [0x48a]            ; 8B 1E 8A 04
;   [loop start] L_1D4A
L_1D4A:
        jmp     L_1D4D                          ; EB 01
CHECKCURSOR ENDP

; Description (heuristic):
;   Internal helper (14 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1D4C   offset=0x1D4C  size=14 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0E1E, L_1AA7, L_1D4C
;-------------------------------------------------------------------------
;   [sub-routine] L_1D4C
L_1D4C:
        iret                                    ; CF
;   [unconditional branch target] L_1D4D
L_1D4D:
        push    cs                              ; 0E
        call    L_1D4C                          ; E8 FB FF
        mov     si, ax                          ; 8B F0
        mov     di, bx                          ; 8B FB
        xor     cx, cx                          ; 33 C9
        call    L_1AA7                          ; E8 4D FD
        jne     L_1D9D                          ; 75 41
        mov     word ptr [0x16], si             ; 89 36 16 00
        mov     word ptr [0x18], di             ; 89 3E 18 00
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0E1E                          ; E8 B5 F0
        jmp     L_1D6C                          ; EB 01
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1D6B   offset=0x1D6B  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1D6B
;-------------------------------------------------------------------------
;   [sub-routine] L_1D6B
L_1D6B:
        iret                                    ; CF
;   [unconditional branch target] L_1D6C
L_1D6C:
        push    cs                              ; 0E
        call    L_1D6B                          ; E8 FB FF
        mov     ds, word ptr cs:[0x1c22]        ; 2E 8E 1E 22 1C
        mov     byte ptr [0x47e], 0             ; C6 06 7E 04 00
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [0x488]            ; A1 88 04
        mov     bx, word ptr [0x48a]            ; 8B 1E 8A 04
        cmp     ax, word ptr [0x16]             ; 3B 06 16 00
        jne     L_1D4A                          ; 75 C1
        cmp     bx, word ptr [0x18]             ; 3B 1E 18 00
        jne     L_1D4A                          ; 75 BB
        mov     byte ptr [0x490], 1             ; C6 06 90 04 01
        jmp     L_1D97                          ; EB 01
; Description (heuristic):
;   Internal helper (10 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1D96   offset=0x1D96  size=10 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0E35, L_1D96
;-------------------------------------------------------------------------
;   [sub-routine] L_1D96
L_1D96:
        iret                                    ; CF
;   [unconditional branch target] L_1D97
L_1D97:
        push    cs                              ; 0E
        call    L_1D96                          ; E8 FB FF
;   [conditional branch target (if/else)] L_1D9B
L_1D9B:
        jmp     L_1DBF                          ; EB 22
;   [conditional branch target (if/else)] L_1D9D
L_1D9D:
        test    byte ptr [0x47e], 0x40          ; F6 06 7E 04 40
        jne     L_1DBA                          ; 75 16
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0E35                          ; E8 8C F0
        jmp     L_1DAC                          ; EB 01
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_1DAB   offset=0x1DAB  size=19 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: retf
;
; Near calls (internal): L_1DAB
;-------------------------------------------------------------------------
;   [sub-routine] L_1DAB
L_1DAB:
        iret                                    ; CF
;   [unconditional branch target] L_1DAC
L_1DAC:
        push    cs                              ; 0E
        call    L_1DAB                          ; E8 FB FF
        mov     ds, word ptr cs:[0x1c22]        ; 2E 8E 1E 22 1C
        mov     byte ptr [0x47e], 0x40          ; C6 06 7E 04 40
;   [conditional branch target (if/else)] L_1DBA
L_1DBA:
        mov     byte ptr [0x490], 1             ; C6 06 90 04 01
;   [unconditional branch target] L_1DBF
L_1DBF:
        pop     es                              ; 07
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        add     byte ptr [bx + di], al          ; 00 01
        add     word ptr [bx + si], ax          ; 01 00
        add     byte ptr [bx + di], al          ; 00 01
        add     byte ptr [bx + di], al          ; 00 01
; Description (heuristic):
;   Pure computation / dispatcher (44 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1DD3   offset=0x1DD3  size=44 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=5)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1DD3
L_1DD3:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        sub     di, 8                           ; 83 EF 08
        xor     bh, bh                          ; 32 FF
        shr     dl, 1                           ; D0 EA
        adc     dl, al                          ; 12 D0
        shr     dl, 1                           ; D0 EA
        ; constant WM_MOVE
        mov     dh, 3                           ; B6 03
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        cmp     dl, 0x10                        ; 80 FA 10
        je      L_1DFA                          ; 74 09
        ; constant WM_MOVE
        mov     al, 3                           ; B0 03
        cmp     dl, 0x30                        ; 80 FA 30
        je      L_1DFA                          ; 74 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_1DFA
L_1DFA:
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        or      si, ax                          ; 0B F0
;   [loop start] L_1E00
L_1E00:
        dec     dl                              ; FE CA
        jl      L_1E2B                          ; 7C 27
        xor     ax, ax                          ; 33 C0
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        mov     ch, dl                          ; 8A EA
;   [loop iteration target] L_1E0A
L_1E0A:
        shl     ax, 1                           ; D1 E0
        ; constant WM_SETTEXT
        mov     bl, ch                          ; 8A DD
        and     bl, dh                          ; 22 DE
        add     ah, byte ptr [bx + 0x1dcb]      ; 02 A7 CB 1D
        add     al, byte ptr [bx + 0x1dcf]      ; 02 87 CF 1D
        shr     ch, 1                           ; D0 ED
        shr     ch, 1                           ; D0 ED
        loop    L_1E0A                          ; E2 EC
        mov     bl, al                          ; 8A D8
        mov     cl, ah                          ; 8A CC
        ; constant GMEM_ZEROINIT
        mov     al, 0x80                        ; B0 80
        shr     al, cl                          ; D2 E8
        or      byte ptr es:[bx + di], al       ; 26 08 01
        jmp     L_1E00                          ; EB D5
;   [error/early exit] L_1E2B
L_1E2B:
        add     di, 8                           ; 83 C7 08
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (18 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1E2F   offset=0x1E2F  size=18 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_1E2F
L_1E2F:
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_1E4D                          ; 73 19
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_1E4D                          ; 77 10
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_1E48                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_1E48
L_1E48:
        mov     sp, ax                          ; 8B E0
        clc                                     ; F8
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_1E4D
L_1E4D:
        mov     ax, word ptr ss:[0xa]           ; 36 A1 0A 00
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
        xor     ax, ax                          ; 33 C0
        mov     dx, 0x8000                      ; BA 00 80
        stc                                     ; F9
        jmp     bx                              ; FF E3

HERCULES_TEXT ENDS

        END
