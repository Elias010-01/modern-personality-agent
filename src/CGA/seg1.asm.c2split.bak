; ======================================================================
; CGA / seg1.asm   (segment 1 of CGA)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        55
; Total instructions:                 2976
; 
; Classification (pass8):
;   C-origin (high+medium):              0
;   ASM-origin (high+medium):           27
;   Unclear:                            26
;   Tiny / unclassified:                 2
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original CGA segment 1
; segment_size=7600 bytes, flags=0x0040
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CGA_TEXT SEGMENT BYTE PUBLIC 'CODE'

        add     byte ptr [bx + si], al          ; 00 00
        inc     ax                              ; 40
        inc     ax                              ; 40
        add     byte ptr [bx + si - 0x3f40], 0xff ; 80 80 C0 C0 FF
        inc     word ptr [bp + di]              ; FF 03
        cli                                     ; FA
        xor     dx, 0xc050                      ; 81 F2 50 C0
        sub     cl, 8                           ; 80 E9 08
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 5                           ; 80 E9 05
        add     di, dx                          ; 03 FA
        xor     dx, 0xffb0                      ; 81 F2 B0 FF
        sub     cl, 8                           ; 80 E9 08
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 5                           ; 80 E9 05
        add     di, dx                          ; 03 FA
        xor     dx, 0xc050                      ; 81 F2 50 C0
        sub     cl, 8                           ; 80 E9 08
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 5                           ; 80 E9 05
        add     di, dx                          ; 03 FA
        xor     dx, 0xffb0                      ; 81 F2 B0 FF
        sub     cl, 8                           ; 80 E9 08
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 5                           ; 80 E9 05
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 1                           ; 80 E9 01
        add     di, dx                          ; 03 FA
        xor     dx, 0xc050                      ; 81 F2 50 C0
        sub     cl, 0xc                         ; 80 E9 0C
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 1                           ; 80 E9 01
        add     di, dx                          ; 03 FA
        xor     dx, 0xffb0                      ; 81 F2 B0 FF
        sub     cl, 0xc                         ; 80 E9 0C
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 1                           ; 80 E9 01
        add     di, dx                          ; 03 FA
        xor     dx, 0xc050                      ; 81 F2 50 C0
        sub     cl, 0xc                         ; 80 E9 0C
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 1                           ; 80 E9 01
        add     di, dx                          ; 03 FA
        xor     dx, 0xffb0                      ; 81 F2 B0 FF
        sub     cl, 0xc                         ; 80 E9 0C
        or      al, byte ptr [bx + si]          ; 0A 00
        sbb     al, byte ptr [bx + si]          ; 1A 00
        sub     al, byte ptr [bx + si]          ; 2A 00
        cmp     al, byte ptr [bx + si]          ; 3A 00
        dec     dx                              ; 4A
        add     byte ptr [bp + si], bl          ; 00 5A 00
        push    0                               ; 6A 00
        jp      L_009A                          ; 7A 00
;   [conditional branch target (if/else)] L_009A
L_009A:
        and     ax, word ptr [bx + si]          ; 23 00
        and     ax, word ptr [bx + si]          ; 23 00
        xor     ax, word ptr [bx + si]          ; 33 00
        xor     ax, word ptr [bx + si]          ; 33 00
        jno     L_00A4                          ; 71 00
;   [conditional branch target (if/else)] L_00A4
L_00A4:
        add     word ptr [bx + si], 0x71        ; 81 00 71 00
        add     word ptr [bx + si], 0x909       ; 81 00 09 09
        or      word ptr [bx + di], cx          ; 09 09
        pop     es                              ; 07
        pop     es                              ; 07
        pop     es                              ; 07
        pop     es                              ; 07
        adc     byte ptr [bx + si], dl          ; 10 10
        adc     byte ptr [bx + si], dl          ; 10 10
        adc     byte ptr [bx + si], dl          ; 10 10
        adc     byte ptr [bx + si], dl          ; 10 10
        pop     es                              ; 07
        pop     es                              ; 07
        pop     es                              ; 07
        pop     es                              ; 07
        or      word ptr [bx + di], cx          ; 09 09
        or      word ptr [bx + di], cx          ; 09 09
        add     al, 4                           ; 04 04
        add     al, 4                           ; 04 04
        or      cx, word ptr [bp + di]          ; 0B 0B
        or      cx, word ptr [bp + di]          ; 0B 0B
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     al, 4                           ; 04 04
        add     al, 4                           ; 04 04
        add     byte ptr [bx + si], ah          ; 00 20
        add     byte ptr [bp + si], 0xc8        ; 80 02 C8
        add     byte ptr [bx + si], dl          ; 00 50 00
        add     word ptr [bx + di], ax          ; 01 01
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si + 0x3e80], bh ; 00 B8 80 3E
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
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], ah          ; 00 20
        add     byte ptr [bx + di], al          ; 00 01
        add     word ptr [bx + si], ax          ; 01 00
        lock add byte ptr [si - 0x8000], dh     ; F0 00 B4 00 80
        add     cl, al                          ; 02 C8
        add     byte ptr [bx + di], al          ; 00 01
        add     byte ptr [bx + di], al          ; 00 01
        add     byte ptr [di], cl               ; 00 4D 00
        or      byte ptr [bx + si], al          ; 08 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     al, byte ptr [bx + si]          ; 02 00
        and     al, byte ptr [bx + si]          ; 22 00
        add     byte ptr [bx + si], al          ; 00 00
        and     al, byte ptr [bx + si]          ; 22 00
        or      byte ptr [bx + si], al          ; 08 00
        add     al, 0x20                        ; 04 20
        add     byte ptr [bx + si], al          ; 00 00
        add     word ptr [bx + si], ax          ; 01 00
        add     ax, 0xc00                       ; 05 00 0C
        add     byte ptr [di], cl               ; 00 0D
        add     byte ptr [bp + si], bl          ; 00 1A
        add     byte ptr [bx + si + 9], ah      ; 00 60 09
        or      byte ptr [bx], al               ; 08 07
        add     byte ptr [bp + si], 0x38        ; 80 02 38
        inc     ax                              ; FF C0
        pop     bp                              ; 5D
        push    ax                              ; 50
        inc     si                              ; 46
        add     byte ptr [bp + si], 0x38        ; 80 02 38
        push    word ptr [bx + 1]               ; FF 77 01
        test    byte ptr [bp + di], al          ; 84 03
        inc     byte ptr [bx + si]              ; FE 00
        add     bh, bh                          ; 02 FF
        cmpsb   byte ptr [si], byte ptr es:[di] ; A6
        push    cs                              ; 0E
        sub     byte ptr [bp + di], ah          ; 28 23
        inc     byte ptr [bx + si]              ; FE 00
        add     bh, bh                          ; 02 FF
        sbb     byte ptr [di], dl               ; 18 15
        push    ax                              ; 50
        sbb     si, di                          ; 19 FE
        add     byte ptr [bx + di + 0x60ff], al ; 00 81 FF 60
        add     byte ptr [bx + si], dh          ; 00 30
        add     byte ptr [si], al               ; 00 04
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si + 0x2040], al ; 00 80 40 20
        adc     byte ptr [bx + si], cl          ; 10 08
        add     al, 2                           ; 04 02
        add     word ptr [si - 0x32f1], si      ; 01 B4 0F CD
        adc     byte ptr [bp + si + 0xb4], ch   ; 10 AA B4 00
        mov     al, 6                           ; B0 06
        int     0x10                            ; CD 10
        ; constant WM_PAINT
        mov     ah, 0xf                         ; B4 0F
        int     0x10                            ; CD 10
        xor     bx, bx                          ; 33 DB
        cmp     al, 6                           ; 3C 06
        jne     L_0181                          ; 75 02
        not     bx                              ; F7 D3
;   [error/early exit] L_0181
L_0181:
        mov     ax, bx                          ; 8B C3
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (705 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0184   offset=0x0184  size=705 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=3, ASM=7)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_197C, L_1A08, L_1D82
;-------------------------------------------------------------------------
;   [sub-routine] L_0184
L_0184:
        mov     al, byte ptr [si + 0x20]        ; 8A 44 20
        mov     ah, 0                           ; B4 00
        int     0x10                            ; CD 10
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
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
        jmp     0xffffe236                      ; E9 8A E0
        and     ax, bp                          ; 23 C5
        or      al, bh                          ; 0A C7
        mov     bh, ah                          ; 8A FC
        and     ax, 0xffff                      ; 25 FF FF
        or      al, ah                          ; 0A C4
        stosb   byte ptr es:[di], al            ; AA
        db      0ffh                            ; FF
        jg      L_01FA                          ; 7F 3F
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
        loopne  L_0214                          ; E0 3F
        sar     byte ptr [bx - 0x80], 0xf6      ; C0 7F 80 F6
        sal     byte ptr [bp + si], 1           ; D0 32
        add     ax, 0x50a                       ; 05 0A 05
        and     al, byte ptr [di]               ; 22 05
        xor     al, bl                          ; 32 C3
;   [loop start] L_01E2
L_01E2:
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
        jp      L_01E2                          ; 7A E7
        jns     L_01B3                          ; 79 B6
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
        call    L_1D82                          ; E8 6A 1B
        push    si                              ; 56
        push    di                              ; 57
        jae     L_021F                          ; 73 03
        jmp     L_079A                          ; E9 7B 05
;   [conditional branch target (if/else)] L_021F
L_021F:
        cld                                     ; FC
        mov     cx, 0x100                       ; B9 00 01
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_02A3                          ; 74 70
        mov     byte ptr [bp - 5], cl           ; 88 4E FB
        mov     dx, 0xc0                        ; BA C0 00
        xchg    cl, ch                          ; 86 E9
;   [loop start] L_023B
L_023B:
        inc     ch                              ; FE C5
        test    dx, ax                          ; 85 C2
        je      L_0245                          ; 74 04
        inc     cl                              ; FE C1
        xor     ch, ch                          ; 32 ED
;   [conditional branch target (if/else)] L_0245
L_0245:
        shl     dx, 1                           ; D1 E2
        shl     dx, 1                           ; D1 E2
        jae     L_023B                          ; 73 F0
        ; constant WM_SIZE
        mov     dl, 5                           ; B2 05
        test    ax, 0x20                        ; A9 20 00
        je      L_0256                          ; 74 04
        inc     ch                              ; FE C5
        inc     dl                              ; FE C2
;   [conditional branch target (if/else)] L_0256
L_0256:
        and     ch, 0xfe                        ; 80 E5 FE
        sub     dl, ch                          ; 2A D5
        mov     byte ptr [bp - 0x33], dl        ; 88 56 CD
        mov     bx, ax                          ; 8B D8
        and     bx, 0x1c                        ; 81 E3 1C 00
        shr     bx, 1                           ; D1 EB
        and     al, 3                           ; 24 03
        cmp     bl, 5                           ; 80 FB 05
        jb      L_0270                          ; 72 03
        add     cl, 2                           ; 80 C1 02
;   [conditional branch target (if/else)] L_0270
L_0270:
        mov     dl, cl                          ; 8A D1
        add     cl, al                          ; 02 C8
        add     cl, cl                          ; 02 C9
        mov     bx, word ptr cs:[bx + 0x1f8]    ; 2E 8B 9F F8 01
        rol     bx, cl                          ; D3 C3
        mov     word ptr [bp - 0x32], bx        ; 89 5E CE
;   [loop start] L_0280
L_0280:
        mov     si, bx                          ; 8B F3
        and     si, 3                           ; 81 E6 03 00
        ror     bx, 1                           ; D1 CB
        ror     bx, 1                           ; D1 CB
        inc     byte ptr [bp + si - 6]          ; FE 42 FA
        dec     dl                              ; FE CA
        jne     L_0280                          ; 75 EF
        test    byte ptr [bp - 6], 1            ; F6 46 FA 01
        je      L_029C                          ; 74 05
;   [loop start] L_0297
L_0297:
        xor     ax, ax                          ; 33 C0
        jmp     L_0796                          ; E9 FA 04
;   [conditional branch target (if/else)] L_029C
L_029C:
        xor     cx, cx                          ; 33 C9
        mov     cl, byte ptr [bp - 5]           ; 8A 4E FB
        jcxz    L_02BE                          ; E3 1B
;   [conditional branch target (if/else)] L_02A3
L_02A3:
        lds     si, ptr [bp + 0x1a]             ; C5 76 1A
        lodsw   ax, word ptr [si]               ; AD
        mov     cx, ax                          ; 8B C8
        add     si, 4                           ; 83 C6 04
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, 0x101                       ; 3D 01 01
        jne     L_0297                          ; 75 E1
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
;   [conditional branch target (if/else)] L_02BE
L_02BE:
        mov     word ptr [bp - 0x26], cx        ; 89 4E DA
        cmp     byte ptr [bp - 3], 0            ; 80 7E FD 00
        je      L_02D0                          ; 74 09
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        cmp     word ptr [si + 8], 1            ; 83 7C 08 01
        je      L_0297                          ; 74 C7
;   [conditional branch target (if/else)] L_02D0
L_02D0:
        lds     si, ptr [bp + 0x22]             ; C5 76 22
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        add     si, 4                           ; 83 C6 04
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, 0x101                       ; 3D 01 01
        jne     L_0297                          ; 75 B3
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     si, word ptr [bp + 0x14]        ; 8B 76 14
        or      si, si                          ; 0B F6
        je      L_0297                          ; 74 A4
        mov     di, word ptr [bp + 0x12]        ; 8B 7E 12
        or      di, di                          ; 0B FF
        je      L_0297                          ; 74 9D
        dec     si                              ; 4E
        dec     di                              ; 4F
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        or      ax, word ptr [bp - 0x2e]        ; 0B 46 D2
        je      L_0338                          ; 74 34
        mov     cx, word ptr [bp + 0x20]        ; 8B 4E 20
        mov     dx, word ptr [bp + 0x1e]        ; 8B 56 1E
        cmp     word ptr [bp - 0x26], 0         ; 83 7E DA 00
        je      L_0331                          ; 74 21
        mov     ax, cx                          ; 8B C1
        mov     bx, dx                          ; 8B DA
        mov     cx, word ptr [bp + 0x18]        ; 8B 4E 18
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        je      L_0331                          ; 74 11
        cmp     cx, ax                          ; 3B C8
        jle     L_0325                          ; 7E 01
        xchg    cx, ax                          ; 91
;   [conditional branch target (if/else)] L_0325
L_0325:
        cmp     dx, bx                          ; 3B D3
        jle     L_032B                          ; 7E 02
        xchg    bx, dx                          ; 87 D3
;   [conditional branch target (if/else)] L_032B
L_032B:
        add     si, ax                          ; 03 F0
        add     di, bx                          ; 03 FB
        jmp     L_0335                          ; EB 04
;   [conditional branch target (if/else)] L_0331
L_0331:
        add     si, cx                          ; 03 F1
        add     di, dx                          ; 03 FA
;   [unconditional branch target] L_0335
L_0335:
        call    L_197C                          ; E8 44 16
;   [conditional branch target (if/else)] L_0338
L_0338:
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        dec     dx                              ; 4A
        mov     bx, word ptr [bp + 0x20]        ; 8B 5E 20
        mov     di, bx                          ; 8B FB
        and     bx, 7                           ; 81 E3 07 00
        mov     ax, di                          ; 8B C7
        cmp     byte ptr [bp - 5], 0            ; 80 7E FB 00
        je      L_0354                          ; 74 07
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     byte ptr [bp - 0xa], 2          ; C6 46 F6 02
;   [conditional branch target (if/else)] L_0354
L_0354:
        mov     si, ax                          ; 8B F0
        and     ax, 7                           ; 25 07 00
        cmp     si, di                          ; 3B F7
        jl      L_038B                          ; 7C 2E
        sub     al, bl                          ; 2A C3
        mov     byte ptr [bp - 0xb], 1          ; C6 46 F5 01
        mov     ch, byte ptr cs:[bx + 0x1b8]    ; 2E 8A AF B8 01
        ja      L_036E                          ; 77 04
        mov     byte ptr [bp - 0xa], 1          ; C6 46 F6 01
;   [conditional branch target (if/else)] L_036E
L_036E:
        add     al, 8                           ; 04 08
        and     al, 7                           ; 24 07
        add     bx, dx                          ; 03 DA
        mov     dx, bx                          ; 8B D3
        and     bx, 7                           ; 81 E3 07 00
        mov     cl, byte ptr cs:[bx + 0x1c0]    ; 2E 8A 8F C0 01
        mov     bl, al                          ; 8A D8
        add     bx, bx                          ; 03 DB
        mov     bx, word ptr cs:[bx + 0x1c8]    ; 2E 8B 9F C8 01
        jmp     L_03C1                          ; EB 37
        nop                                     ; 90
;   [conditional branch target (if/else)] L_038B
L_038B:
        mov     byte ptr [bp - 0xb], 0          ; C6 46 F5 00
        mov     cl, byte ptr cs:[bx + 0x1b8]    ; 2E 8A 8F B8 01
        add     ax, dx                          ; 03 C2
        add     bx, dx                          ; 03 DA
        add     di, dx                          ; 03 FA
        add     si, dx                          ; 03 F2
        mov     dx, bx                          ; 8B D3
        and     ax, 7                           ; 25 07 00
        and     bx, 7                           ; 81 E3 07 00
        mov     ch, byte ptr cs:[bx + 0x1c0]    ; 2E 8A AF C0 01
        sub     al, bl                          ; 2A C3
        jb      L_03B2                          ; 72 04
        mov     byte ptr [bp - 0xa], 1          ; C6 46 F6 01
;   [conditional branch target (if/else)] L_03B2
L_03B2:
        add     al, 8                           ; 04 08
        and     al, 7                           ; 24 07
        mov     ah, cl                          ; 8A E1
        mov     cl, al                          ; 8A C8
        mov     bx, 0xff                        ; BB FF 00
        shl     bx, cl                          ; D3 E3
        mov     cl, ah                          ; 8A CC
;   [unconditional branch target] L_03C1
L_03C1:
        mov     byte ptr [bp - 7], al           ; 88 46 F9
        mov     word ptr [bp - 0x12], bx        ; 89 5E EE
        shr     dx, 1                           ; D1 EA
        shr     dx, 1                           ; D1 EA
        shr     dx, 1                           ; D1 EA
        jne     L_03D4                          ; 75 05
        and     ch, cl                          ; 22 E9
        xor     cl, cl                          ; 32 C9
        inc     dx                              ; 42
;   [conditional branch target (if/else)] L_03D4
L_03D4:
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
        je      L_0408                          ; 74 0C
        shr     si, 1                           ; D1 EE
        shr     si, 1                           ; D1 EE
        shr     si, 1                           ; D1 EE
        add     word ptr [bp - 0x16], si        ; 01 76 EA
        mov     cx, word ptr [bp + 0x16]        ; 8B 4E 16
;   [conditional branch target (if/else)] L_0408
L_0408:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        ; constant WM_CREATE
        mov     dh, 1                           ; B6 01
        cmp     cx, bx                          ; 3B CB
        jge     L_0418                          ; 7D 07
        dec     ax                              ; 48
        add     bx, ax                          ; 03 D8
        add     cx, ax                          ; 03 C8
        mov     dh, 0xff                        ; B6 FF
;   [conditional branch target (if/else)] L_0418
L_0418:
        mov     byte ptr [bp - 8], bl           ; 88 5E F8
        mov     byte ptr [bp - 9], dh           ; 88 76 F7
        mov     di, word ptr [bp - 0x30]        ; 8B 7E D0
        mov     si, di                          ; 8B F7
        mov     ax, di                          ; 8B C7
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        je      L_043B                          ; 74 10
        mov     si, 0x2000                      ; BE 00 20
        sub     di, si                          ; 2B FE
        xchg    si, di                          ; 87 FE
        shr     bx, 1                           ; D1 EB
        jae     L_043B                          ; 73 05
        add     word ptr [bp - 0x1a], di        ; 01 7E E6
        xchg    si, di                          ; 87 FE
;   [conditional branch target (if/else)] L_043B
L_043B:
        mul     bx                              ; F7 E3
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        test    byte ptr [bp - 9], 0x80         ; F6 46 F7 80
        je      L_044C                          ; 74 06
        neg     di                              ; F7 DF
        neg     si                              ; F7 DE
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_044C
L_044C:
        xor     si, di                          ; 33 F7
        mov     word ptr [bp - 0x2c], di        ; 89 7E D4
        mov     word ptr [bp - 0x2a], si        ; 89 76 D6
        cmp     byte ptr [bp - 5], 0            ; 80 7E FB 00
        je      L_0490                          ; 74 36
        mov     di, word ptr [bp - 0x28]        ; 8B 7E D8
        mov     si, di                          ; 8B F7
        mov     ax, di                          ; 8B C7
        cmp     word ptr [bp - 0x26], 0         ; 83 7E DA 00
        je      L_0477                          ; 74 10
        mov     si, 0x2000                      ; BE 00 20
        sub     di, si                          ; 2B FE
        xchg    si, di                          ; 87 FE
        shr     cx, 1                           ; D1 E9
        jae     L_0477                          ; 73 05
        add     word ptr [bp - 0x16], di        ; 01 7E EA
        xchg    si, di                          ; 87 FE
;   [conditional branch target (if/else)] L_0477
L_0477:
        mul     cx                              ; F7 E1
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
        test    byte ptr [bp - 9], 0x80         ; F6 46 F7 80
        je      L_0488                          ; 74 06
        neg     di                              ; F7 DF
        neg     si                              ; F7 DE
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_0488
L_0488:
        xor     si, di                          ; 33 F7
        mov     word ptr [bp - 0x24], di        ; 89 7E DC
        mov     word ptr [bp - 0x22], si        ; 89 76 DE
;   [conditional branch target (if/else)] L_0490
L_0490:
        mov     ax, 0x17e                       ; B8 7E 01
        call    L_1D82                          ; E8 EC 18
        jae     L_049B                          ; 73 03
        jmp     L_0796                          ; E9 FB 02
;   [conditional branch target (if/else)] L_049B
L_049B:
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
        je      L_04BD                          ; 74 03
        mov     al, 0x56                        ; B0 56
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_04BD
L_04BD:
        cmp     byte ptr [bp - 3], 0            ; 80 7E FD 00
        je      L_04E5                          ; 74 22
        mov     si, 0x18e                       ; BE 8E 01
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
;   [conditional branch target (if/else)] L_04E5
L_04E5:
        mov     bx, di                          ; 8B DF
        xor     dx, dx                          ; 33 D2
        or      dl, byte ptr [bp - 5]           ; 0A 56 FB
        je      L_0527                          ; 74 39
        or      dh, byte ptr [bp - 7]           ; 0A 76 F9
        je      L_04FE                          ; 74 0B
        mov     al, 0xbd                        ; B0 BD
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xff32                      ; B8 32 FF
        stosw   word ptr es:[di], ax            ; AB
;   [loop start (also forward branch)] L_04FE
L_04FE:
        mov     bx, di                          ; 8B DF
        mov     al, 0xac                        ; B0 AC
        stosb   byte ptr es:[di], al            ; AA
        or      dh, dh                          ; 0A F6
        je      L_0522                          ; 74 1B
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        mov     ax, 0xc0d0                      ; B8 D0 C0
        cmp     cl, 5                           ; 80 F9 05
        jb      L_0519                          ; 72 08
        neg     cl                              ; F6 D9
        add     cl, 8                           ; 80 C1 08
        mov     ax, 0xc8d0                      ; B8 D0 C8
;   [conditional branch target (if/else)] L_0519
L_0519:
        rep stosw word ptr es:[di], ax          ; F3 AB
        mov     si, 0x1aa                       ; BE AA 01
        mov     cl, 4                           ; B1 04
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
;   [conditional branch target (if/else)] L_0522
L_0522:
        dec     byte ptr [bp - 0xa]             ; FE 4E F6
        jne     L_04FE                          ; 75 D7
;   [conditional branch target (if/else)] L_0527
L_0527:
        mov     word ptr [bp - 0x36], bx        ; 89 5E CA
        xor     dh, dh                          ; 32 F6
        mov     cx, word ptr [bp + 0xe]         ; 8B 4E 0E
        cmp     cx, 0x20                        ; 83 F9 20
        jne     L_0537                          ; 75 03
        jmp     L_05E4                          ; E9 AD 00
;   [conditional branch target (if/else)] L_0537
L_0537:
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        mov     si, word ptr [bp - 0x32]        ; 8B 76 CE
        mov     dl, byte ptr [bp - 0x33]        ; 8A 56 CD
        cmp     byte ptr [bp - 5], 1            ; 80 7E FB 01
        jb      L_0555                          ; 72 0E
        jne     L_0551                          ; 75 08
        mov     ax, si                          ; 8B C6
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        je      L_0555                          ; 74 04
;   [conditional branch target (if/else)] L_0551
L_0551:
        mov     ax, 0xd08a                      ; B8 8A D0
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0555
L_0555:
        cmp     byte ptr [bp - 4], 2            ; 80 7E FC 02
        jb      L_0565                          ; 72 0A
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x258a                      ; B8 8A 25
        stosw   word ptr es:[di], ax            ; AB
        or      dh, 2                           ; 80 CE 02
;   [loop start (also forward branch)] L_0565
L_0565:
        mov     ax, si                          ; 8B C6
        and     ax, 3                           ; 25 03 00
        dec     ax                              ; 48
        jne     L_057A                          ; 75 0D
        test    dh, 1                           ; F6 C6 01
        je      L_05E0                          ; 74 6E
        and     dh, 0xfe                        ; 80 E6 FE
        mov     ax, 0xc28a                      ; B8 8A C2
        jmp     L_05DF                          ; EB 65
;   [conditional branch target (if/else)] L_057A
L_057A:
        dec     ax                              ; 48
        mov     ax, 0xc68a                      ; B8 8A C6
        jne     L_05DC                          ; 75 5C
        mov     ax, 0xc48a                      ; B8 8A C4
        test    dh, 2                           ; F6 C6 02
        jne     L_05DC                          ; 75 54
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x58a                       ; B8 8A 05
        jmp     L_05DC                          ; EB 4C
;   [loop start] L_0590
L_0590:
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        mov     bx, cx                          ; 8B D9
        and     bx, 0xc                         ; 81 E3 0C 00
        mov     ax, 0xd0f6                      ; B8 F6 D0
        je      L_05DC                          ; 74 3D
        ror     si, 1                           ; D1 CE
        ror     si, 1                           ; D1 CE
        mov     ax, si                          ; 8B C6
        and     ax, 3                           ; 25 03 00
        jne     L_05C2                          ; 75 18
        xor     dh, 4                           ; 80 F6 04
        test    dh, 4                           ; F6 C6 04
        je      L_05C2                          ; 74 10
        mov     ax, 0xd88a                      ; B8 8A D8
        stosw   word ptr es:[di], ax            ; AB
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        ror     si, 1                           ; D1 CE
        ror     si, 1                           ; D1 CE
        inc     dl                              ; FE C2
        jmp     L_0565                          ; EB A3
;   [conditional branch target (if/else)] L_05C2
L_05C2:
        or      bx, ax                          ; 0B D8
        cmp     ax, 2                           ; 3D 02 00
        jne     L_05D5                          ; 75 0C
        test    dh, 2                           ; F6 C6 02
        jne     L_05D5                          ; 75 07
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        shr     bx, 1                           ; D1 EB
        shr     bx, 1                           ; D1 EB
;   [conditional branch target (if/else)] L_05D5
L_05D5:
        add     bx, bx                          ; 03 DB
        mov     ax, word ptr cs:[bx + 0x1d8]    ; 2E 8B 87 D8 01
;   [branch target] L_05DC
L_05DC:
        or      dh, 1                           ; 80 CE 01
;   [unconditional branch target] L_05DF
L_05DF:
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_05E0
L_05E0:
        dec     dl                              ; FE CA
        jge     L_0590                          ; 7D AC
;   [unconditional branch target] L_05E4
L_05E4:
        mov     word ptr [bp - 0x38], di        ; 89 7E C8
        test    dh, 2                           ; F6 C6 02
        jne     L_05F3                          ; 75 07
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x258a                      ; B8 8A 25
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_05F3
L_05F3:
        mov     si, 0x1b2                       ; BE B2 01
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
        je      L_0677                          ; 74 67
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        test    bx, 0x1c                        ; F7 C3 1C 00
        jne     L_0679                          ; 75 60
        test    bl, 3                           ; F6 C3 03
        je      L_063D                          ; 74 1F
        mov     ax, 0xffb0                      ; B8 B0 FF
        test    bl, 1                           ; F6 C3 01
        je      L_0629                          ; 74 03
        mov     ax, 0xc68a                      ; B8 8A C6
;   [conditional branch target (if/else)] L_0629
L_0629:
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xe08a                      ; B8 8A E0
        stosw   word ptr es:[di], ax            ; AB
        mov     si, 0xaa                        ; BE AA 00
        test    bx, 0x20                        ; F7 C3 20 00
        jne     L_0646                          ; 75 0F
        mov     ax, 0xd0f7                      ; B8 F7 D0
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0646                          ; EB 09
;   [conditional branch target (if/else)] L_063D
L_063D:
        test    byte ptr [bp - 7], 0xff         ; F6 46 F9 FF
        jne     L_0679                          ; 75 36
        mov     si, 0xa4                        ; BE A4 00
;   [branch target] L_0646
L_0646:
        shr     dx, 1                           ; D1 EA
        jae     L_064D                          ; 73 03
        mov     ax, si                          ; 8B C6
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_064D
L_064D:
        je      L_0677                          ; 74 28
        xor     bx, bx                          ; 33 DB
        cmp     bl, byte ptr [bp - 0xb]         ; 3A 5E F5
        jne     L_065D                          ; 75 07
        mov     ax, 0x4f4e                      ; B8 4E 4F
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, 0x4746                      ; BB 46 47
;   [conditional branch target (if/else)] L_065D
L_065D:
        cmp     dx, 1                           ; 83 FA 01
        je      L_066C                          ; 74 0A
        mov     al, 0xb9                        ; B0 B9
        mov     ah, dl                          ; 8A E2
        stosw   word ptr es:[di], ax            ; AB
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        mov     ah, 0xf3                        ; B4 F3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_066C
L_066C:
        mov     ax, si                          ; 8B C6
        inc     ax                              ; 40
        stosb   byte ptr es:[di], al            ; AA
        or      bx, bx                          ; 0B DB
        je      L_0677                          ; 74 03
        mov     ax, bx                          ; 8B C3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0677
L_0677:
        jmp     L_06F2                          ; EB 79
;   [conditional branch target (if/else)] L_0679
L_0679:
        cmp     dx, 5                           ; 83 FA 05
        jb      L_0696                          ; 72 18
        mov     al, 0xb9                        ; B0 B9
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, dx                          ; 8B C2
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        and     al, 3                           ; 24 03
        je      L_0696                          ; 74 08
        mov     al, 0xe9                        ; B0 E9
        stosb   byte ptr es:[di], al            ; AA
        stosw   word ptr es:[di], ax            ; AB
        inc     word ptr es:[di - 5]            ; 26 FF 45 FB
;   [conditional branch target (if/else)] L_0696
L_0696:
        push    di                              ; 57
        mov     bx, dx                          ; 8B DA
        cmp     bx, 5                           ; 83 FB 05
        jb      L_06A0                          ; 72 02
        mov     bl, 4                           ; B3 04
;   [conditional branch target (if/else)] L_06A0
L_06A0:
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
        je      L_06C2                          ; 74 0C
        mov     al, bh                          ; 8A C7
        mul     bl                              ; F6 E3
        mov     cx, ax                          ; 8B C8
        mov     ax, si                          ; 8B C6
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, ax                          ; 8B F0
;   [conditional branch target (if/else)] L_06C2
L_06C2:
        cmp     dx, 5                           ; 83 FA 05
        jb      L_06F2                          ; 72 2B
        mov     ax, dx                          ; 8B C2
        neg     ax                              ; F7 D8
        and     al, 3                           ; 24 03
        je      L_06D5                          ; 74 06
        mul     bh                              ; F6 E7
        mov     word ptr es:[si - 2], ax        ; 26 89 44 FE
;   [conditional branch target (if/else)] L_06D5
L_06D5:
        mov     ax, si                          ; 8B C6
        sub     ax, di                          ; 2B C7
        cmp     ax, 0xff83                      ; 3D 83 FF
        jb      L_06E7                          ; 72 09
        sub     al, 2                           ; 2C 02
        mov     ah, al                          ; 8A E0
        mov     al, 0xe2                        ; B0 E2
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_06F2                          ; EB 0B
;   [conditional branch target (if/else)] L_06E7
L_06E7:
        mov     si, 0x1a6                       ; BE A6 01
        movsw   word ptr es:[di], word ptr cs:[si] ; 2E A5
        movsw   word ptr es:[di], word ptr cs:[si] ; 2E A5
        sub     ax, 6                           ; 2D 06 00
        stosw   word ptr es:[di], ax            ; AB
;   [branch target] L_06F2
L_06F2:
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        or      dh, dh                          ; 0A F6
        je      L_0708                          ; 74 0F
        mov     cx, word ptr [bp - 0x3a]        ; 8B 4E C6
        mov     si, word ptr [bp - 0x36]        ; 8B 76 CA
        sub     cx, si                          ; 2B CE
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        xchg    dl, dh                          ; 86 F2
        mov     word ptr [di - 5], dx           ; 89 55 FB
;   [conditional branch target (if/else)] L_0708
L_0708:
        mov     cl, byte ptr [bp - 5]           ; 8A 4E FB
        or      cl, cl                          ; 0A C9
        je      L_0730                          ; 74 21
        mov     al, 0x5e                        ; B0 5E
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     dx, di                          ; 8B D7
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        or      bx, bx                          ; 0B DB
        je      L_0730                          ; 74 0D
        mov     al, 0x2e                        ; B0 2E
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x3681                      ; B8 81 36
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, bx                          ; 8B C3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0730
L_0730:
        mov     ax, 0x595f                      ; B8 5F 59
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc781                      ; B8 81 C7
        stosw   word ptr es:[di], ax            ; AB
        mov     dx, di                          ; 8B D7
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, word ptr [bp - 0x2a]        ; 8B 5E D6
        or      bx, bx                          ; 0B DB
        je      L_0752                          ; 74 0D
        mov     al, 0x2e                        ; B0 2E
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x3681                      ; B8 81 36
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, bx                          ; 8B C3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0752
L_0752:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, di                          ; 2B C7
        cmp     ax, 0xff83                      ; 3D 83 FF
        jb      L_0769                          ; 72 09
        sub     al, 2                           ; 2C 02
        mov     ah, al                          ; 8A E0
        mov     al, 0xe2                        ; B0 E2
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0772                          ; EB 09
;   [conditional branch target (if/else)] L_0769
L_0769:
        mov     si, 0x1a6                       ; BE A6 01
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        sub     ax, 6                           ; 2D 06 00
        stosw   word ptr es:[di], ax            ; AB
;   [unconditional branch target] L_0772
L_0772:
        mov     al, 0xcb                        ; B0 CB
        stosb   byte ptr es:[di], al            ; AA
        or      cl, cl                          ; 0A C9
        je      L_077C                          ; 74 03
        lds     si, ptr [bp - 0x16]             ; C5 76 EA
;   [conditional branch target (if/else)] L_077C
L_077C:
        les     di, ptr [bp - 0x1a]             ; C4 7E E6
        mov     cx, word ptr [bp + 0x12]        ; 8B 4E 12
        cld                                     ; FC
        cmp     byte ptr [bp - 0xb], 1          ; 80 7E F5 01
        je      L_078A                          ; 74 01
        std                                     ; FD
;   [conditional branch target (if/else)] L_078A
L_078A:
        push    bp                              ; 55
        lcall   [bp - 0x1e]                     ; FF 5E E2
        pop     bp                              ; 5D
        add     sp, 0x15e                       ; 81 C4 5E 01
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0796
L_0796:
        cld                                     ; FC
        call    L_1A08                          ; E8 6E 12
;   [unconditional branch target] L_079A
L_079A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x20                            ; CA 20 00

;-----------------------------------------------------------------------
; STRBLT  (offset 0x07A7, size 1224 bytes)
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
        call    L_1D82                          ; E8 CB 15
        push    si                              ; 56
        push    di                              ; 57
        jb      L_07CF                          ; 72 14
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x20                        ; 05 20 00
        mov     cx, ax                          ; 8B C8
        call    L_1D82                          ; E8 B5 15
        jae     L_07D2                          ; 73 03
;   [conditional branch target (if/else)] L_07CF
L_07CF:
        jmp     L_0C68                          ; E9 96 04
;   [conditional branch target (if/else)] L_07D2
L_07D2:
        add     sp, cx                          ; 03 E1
        mov     word ptr [bp - 8], sp           ; 89 66 F8
        lds     si, ptr [bp + 0x18]             ; C5 76 18
        les     di, ptr [bp + 0xe]              ; C4 7E 0E
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, ax                          ; 0B C0
        je      L_0837                          ; 74 53
        jg      L_07ED                          ; 7F 07
        neg     ax                              ; F7 D8
        xor     bx, bx                          ; 33 DB
        mov     word ptr [bp + 0x18], bx        ; 89 5E 18
;   [conditional branch target (if/else)] L_07ED
L_07ED:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     cx, word ptr es:[di + 0x21]     ; 26 8B 4D 21
        mov     word ptr [bp - 0x18], cx        ; 89 4E E8
        mov     ax, word ptr es:[di + 0x14]     ; 26 8B 45 14
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        or      si, si                          ; 0B F6
        je      L_083A                          ; 74 38
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     dx, ax                          ; 8B D0
        sub     ax, word ptr [bp + 0x1c]        ; 2B 46 1C
        mov     bx, ax                          ; 8B D8
        jge     L_0812                          ; 7D 04
        sub     dx, bx                          ; 2B D3
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_0812
L_0812:
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        mov     dx, word ptr es:[di + 0x16]     ; 26 8B 55 16
        cmp     bx, dx                          ; 3B DA
        jge     L_0837                          ; 7D 17
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [bp + 0x1c]        ; 2B 46 1C
        cmp     ax, dx                          ; 3B C2
        jl      L_082C                          ; 7C 02
        mov     ax, dx                          ; 8B C2
;   [conditional branch target (if/else)] L_082C
L_082C:
        or      ax, ax                          ; 0B C0
        jle     L_0837                          ; 7E 07
        cmp     ax, bx                          ; 3B C3
        jle     L_0837                          ; 7E 03
        jmp     L_0849                          ; EB 13
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0837
L_0837:
        jmp     L_0C62                          ; E9 28 04
;   [conditional branch target (if/else)] L_083A
L_083A:
        mov     bx, word ptr [bp + 0x1c]        ; 8B 5E 1C
        mov     word ptr [bp - 0x20], bx        ; 89 5E E0
        mov     word ptr [bp - 0x22], bx        ; 89 5E DE
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr es:[di + 0x16]     ; 26 8B 45 16
;   [unconditional branch target] L_0849
L_0849:
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
        je      L_08C5                          ; 74 47
        mov     dx, 0xc9e                       ; BA 9E 0C
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     word ptr [si + 0xc], 0          ; 83 7C 0C 00
        je      L_08AD                          ; 74 23
        mov     dx, 0xcc4                       ; BA C4 0C
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
;   [conditional branch target (if/else)] L_08AD
L_08AD:
        mov     dx, word ptr [si + 0x16]        ; 8B 54 16
        mov     si, 0xc82                       ; BE 82 0C
        or      dx, dx                          ; 0B D2
        je      L_0909                          ; 74 52
        mov     si, 0xc7c                       ; BE 7C 0C
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        jmp     L_0909                          ; EB 45
        nop                                     ; 90
;   [conditional branch target (if/else)] L_08C5
L_08C5:
        mov     dx, 0xd00                       ; BA 00 0D
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     word ptr [si + 0xc], 0          ; 83 7C 0C 00
        je      L_08F4                          ; 74 23
        mov     dx, 0xcb0                       ; BA B0 0C
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
;   [conditional branch target (if/else)] L_08F4
L_08F4:
        mov     dx, word ptr [si + 0x16]        ; 8B 54 16
        mov     si, 0xce8                       ; BE E8 0C
        or      dx, dx                          ; 0B D2
        je      L_0909                          ; 74 0B
        mov     si, 0xce2                       ; BE E2 0C
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
;   [branch target] L_0909
L_0909:
        mov     word ptr [bp - 0x10], si        ; 89 76 F0
        xor     si, 0xd21                       ; 81 F6 21 0D
        mov     word ptr [bp - 0x14], si        ; 89 76 EC
        lds     si, ptr [bp + 0x20]             ; C5 76 20
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        add     ax, word ptr [bp + 0x1c]        ; 03 46 1C
        xor     cx, cx                          ; 33 C9
        mov     bx, dx                          ; 8B DA
        xor     di, di                          ; 33 FF
        cmp     word ptr [si], cx               ; 39 0C
        je      L_0937                          ; 74 11
        mov     bx, 0x2000                      ; BB 00 20
        mov     cx, dx                          ; 8B CA
        sub     cx, bx                          ; 2B CB
        xor     cx, bx                          ; 33 CB
        shr     ax, 1                           ; D1 E8
        jae     L_0937                          ; 73 04
        mov     di, bx                          ; 8B FB
        xor     bx, cx                          ; 33 D9
;   [conditional branch target (if/else)] L_0937
L_0937:
        mul     dx                              ; F7 E2
        add     ax, di                          ; 03 C7
        mov     word ptr [bp - 0xc], bx         ; 89 5E F4
        mov     word ptr [bp - 0xe], cx         ; 89 4E F2
        lds     si, ptr [bp + 0x18]             ; C5 76 18
        mov     bx, word ptr [bp + 0x1e]        ; 8B 5E 1E
        or      si, si                          ; 0B F6
        je      L_09BE                          ; 74 73
        mov     cx, word ptr [si]               ; 8B 0C
        mov     word ptr [bp - 0x1c], cx        ; 89 4E E4
        mov     di, bx                          ; 8B FB
        mov     dx, word ptr [si + 4]           ; 8B 54 04
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        sub     dx, cx                          ; 2B D1
        sub     bx, cx                          ; 2B D9
        jl      L_0967                          ; 7C 09
        mov     word ptr [bp - 0x1c], di        ; 89 7E E4
        mov     cx, di                          ; 8B CF
        sub     dx, bx                          ; 2B D3
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_0967
L_0967:
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
        jge     L_09FB                          ; 7D 77
        lds     si, ptr [bp + 0x14]             ; C5 76 14
        les     di, ptr [bp + 0xe]              ; C4 7E 0E
;   [loop start] L_098A
L_098A:
        call    word ptr [bp - 0x10]            ; FF 56 F0
        jle     L_098A                          ; 7E FB
        or      ax, ax                          ; 0B C0
        je      L_09B1                          ; 74 1E
        add     ax, cx                          ; 03 C1
        sub     ax, bx                          ; 2B C3
        mov     cx, bx                          ; 8B CB
        sub     bx, dx                          ; 2B DA
;   [loop start] L_099B
L_099B:
        jge     L_0A0A                          ; 7D 6D
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
        call    word ptr [bp - 0x10]            ; FF 56 F0
        jmp     L_099B                          ; EB EA
;   [conditional branch target (if/else)] L_09B1
L_09B1:
        add     ax, cx                          ; 03 C1
        sub     ax, bx                          ; 2B C3
        and     ax, 7                           ; 25 07 00
        mov     cx, bx                          ; 8B CB
        sub     bx, dx                          ; 2B DA
        jmp     L_099B                          ; EB DD
;   [conditional branch target (if/else)] L_09BE
L_09BE:
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
;   [loop start] L_09E7
L_09E7:
        call    word ptr [bp - 0x10]            ; FF 56 F0
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
        jmp     L_09E7                          ; EB EC
;   [loop start (also forward branch)] L_09FB
L_09FB:
        jmp     L_0C62                          ; E9 64 02
;   [loop start] L_09FE
L_09FE:
        pop     dx                              ; 5A
        pop     si                              ; 5E
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        dec     ax                              ; 48
        push    ax                              ; 50
        push    si                              ; 56
        push    dx                              ; 52
        jmp     L_0A28                          ; EB 1F
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0A0A
L_0A0A:
        sub     cx, bx                          ; 2B CB
        jle     L_0A1D                          ; 7E 0F
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
;   [loop start (also forward branch)] L_0A1D
L_0A1D:
        cmp     sp, word ptr [bp - 8]           ; 3B 66 F8
        je      L_09FB                          ; 74 D9
        cmp     word ptr [bp - 0x26], 8         ; 83 7E DA 08
        je      L_09FE                          ; 74 D6
;   [unconditional branch target] L_0A28
L_0A28:
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        dec     ax                              ; 48
        push    ax                              ; 50
        lds     si, ptr [bp + 0x20]             ; C5 76 20
        cmp     word ptr [si], 0                ; 83 3C 00
        je      L_0A4B                          ; 74 16
        mov     cx, word ptr [bp + 0x12]        ; 8B 4E 12
        or      cx, cx                          ; 0B C9
        jl      L_0A4B                          ; 7C 0F
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        mov     si, word ptr [bp - 0x1e]        ; 8B 76 E2
        mov     di, word ptr [bp - 0x22]        ; 8B 7E DE
        call    L_197C                          ; E8 31 0F
;   [conditional branch target (if/else)] L_0A4B
L_0A4B:
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, ax                          ; 0B C0
        jg      L_0A6E                          ; 7F 19
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        or      ax, ax                          ; 0B C0
        je      L_0A5F                          ; 74 03
        mov     word ptr [si + 0x10], ax        ; 89 44 10
;   [conditional branch target (if/else)] L_0A5F
L_0A5F:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        mov     dx, word ptr [bp - 0x22]        ; 8B 56 DE
        sub     dx, word ptr [bp - 0x20]        ; 2B 56 E0
        jmp     L_0C62                          ; E9 F4 01
;   [conditional branch target (if/else)] L_0A6E
L_0A6E:
        cmp     word ptr [si + 2], 1            ; 83 7C 02 01
        jne     L_0A77                          ; 75 03
        jmp     L_0B10                          ; E9 99 00
;   [conditional branch target (if/else)] L_0A77
L_0A77:
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
        jge     L_0AB1                          ; 7D 02
        and     dl, dh                          ; 22 D6
;   [conditional branch target (if/else)] L_0AB1
L_0AB1:
        mov     cx, bx                          ; 8B CB
        mov     word ptr [bp - 0x1c], cx        ; 89 4E E4
        les     di, ptr [bp + 0x20]             ; C4 7E 20
        les     di, ptr es:[di + 0xa]           ; 26 C4 7D 0A
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     al, 0xff                        ; B0 FF
        or      si, si                          ; 0B F6
        jne     L_0AF0                          ; 75 27
        not     al                              ; F6 D0
        not     dx                              ; F7 D2
;   [loop start] L_0ACD
L_0ACD:
        mov     si, di                          ; 8B F7
        and     byte ptr es:[di], dl            ; 26 20 15
        inc     di                              ; 47
        or      cx, cx                          ; 0B C9
        jl      L_0ADE                          ; 7C 07
        je      L_0ADB                          ; 74 02
        rep stosb byte ptr es:[di], al          ; F3 AA
;   [conditional branch target (if/else)] L_0ADB
L_0ADB:
        and     byte ptr es:[di], dh            ; 26 20 35
;   [conditional branch target (if/else)] L_0ADE
L_0ADE:
        mov     di, si                          ; 8B FE
        add     di, bx                          ; 03 FB
        xor     bx, word ptr [bp - 0xe]         ; 33 5E F2
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        dec     word ptr [bp - 0x24]            ; FF 4E DC
        jg      L_0ACD                          ; 7F E0
        jmp     L_0B10                          ; EB 21
        nop                                     ; 90
;   [loop start (also forward branch)] L_0AF0
L_0AF0:
        mov     si, di                          ; 8B F7
        or      byte ptr es:[di], dl            ; 26 08 15
        inc     di                              ; 47
        or      cx, cx                          ; 0B C9
        jl      L_0B01                          ; 7C 07
        je      L_0AFE                          ; 74 02
        rep stosb byte ptr es:[di], al          ; F3 AA
;   [conditional branch target (if/else)] L_0AFE
L_0AFE:
        or      byte ptr es:[di], dh            ; 26 08 35
;   [conditional branch target (if/else)] L_0B01
L_0B01:
        mov     di, si                          ; 8B FE
        add     di, bx                          ; 03 FB
        xor     bx, word ptr [bp - 0xe]         ; 33 5E F2
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        dec     word ptr [bp - 0x24]            ; FF 4E DC
        jg      L_0AF0                          ; 7F E0
;   [unconditional branch target] L_0B10
L_0B10:
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
        jmp     L_0BCD                          ; E9 9C 00
;   [loop start] L_0B31
L_0B31:
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
        je      L_0B51                          ; 74 06
;   [loop start] L_0B4B
L_0B4B:
        sub     dh, cl                          ; 2A F1
        jle     L_0B31                          ; 7E E2
        shl     ax, cl                          ; D3 E0
;   [conditional branch target (if/else)] L_0B51
L_0B51:
        cmp     ch, 8                           ; 80 FD 08
        ja      L_0B67                          ; 77 11
        or      ch, ch                          ; 0A ED
        je      L_0B74                          ; 74 1A
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_0B61                          ; 74 01
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_0B61
L_0B61:
        ; constant WM_SETTEXT
        mov     cl, ch                          ; 8A CD
        xor     ch, ch                          ; 32 ED
        jmp     L_0B4B                          ; EB E4
;   [conditional branch target (if/else)] L_0B67
L_0B67:
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_0B6E                          ; 74 01
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_0B6E
L_0B6E:
        mov     cl, 8                           ; B1 08
        sub     ch, cl                          ; 2A E9
        jmp     L_0B4B                          ; EB D7
;   [loop start (also forward branch)] L_0B74
L_0B74:
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     cx, word ptr ss:[bx]            ; 36 8B 0F
        or      cl, cl                          ; 0A C9
        js      L_0B9D                          ; 78 1B
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_0B8C                          ; 74 04
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_0B8C
L_0B8C:
        shl     al, cl                          ; D2 E0
        sub     cl, 8                           ; 80 E9 08
        neg     cl                              ; F6 D9
        sub     ch, cl                          ; 2A E9
        jae     L_0B4B                          ; 73 B4
        add     cl, ch                          ; 02 CD
        xor     ch, ch                          ; 32 ED
        jmp     L_0B4B                          ; EB AE
;   [conditional branch target (if/else)] L_0B9D
L_0B9D:
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
        jae     L_0BDD                          ; 73 24
        mov     word ptr [bp - 0x16], si        ; 89 76 EA
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     di, bx                          ; 8B FB
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
        xor     bx, word ptr [bp - 0xe]         ; 33 5E F2
        mov     word ptr [bp - 0xa], di         ; 89 7E F6
        mov     word ptr [bp - 0xc], bx         ; 89 5E F4
;   [unconditional branch target] L_0BCD
L_0BCD:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        xor     ax, ax                          ; 33 C0
        mov     dh, byte ptr [bp - 4]           ; 8A 76 FC
        cmp     word ptr [bp - 0x26], 8         ; 83 7E DA 08
        je      L_0BE0                          ; 74 05
        jmp     L_0B74                          ; EB 97
;   [conditional branch target (if/else)] L_0BDD
L_0BDD:
        jmp     L_0C62                          ; E9 82 00
;   [conditional branch target (if/else)] L_0BE0
L_0BE0:
        xor     cx, cx                          ; 33 C9
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        je      L_0C59                          ; 74 6C
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        mov     cx, word ptr ss:[bx - 2]        ; 36 8B 4F FE
        lodsb   al, byte ptr [si]               ; AC
        xchg    al, ah                          ; 86 E0
        shl     ah, cl                          ; D2 E4
        sub     cl, 8                           ; 80 E9 08
        neg     cl                              ; F6 D9
        cmp     dh, cl                          ; 3A F1
        jg      L_0C0F                          ; 7F 0D
        xchg    dh, cl                          ; 86 CE
        rol     ax, cl                          ; D3 C0
        sub     cl, dh                          ; 2A CE
        jne     L_0C37                          ; 75 2D
        mov     cl, 8                           ; B1 08
        jmp     L_0C17                          ; EB 09
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0C0F
L_0C0F:
        rol     ax, cl                          ; D3 C0
        sub     cl, dh                          ; 2A CE
        jmp     L_0C48                          ; EB 33
        nop                                     ; 90
;   [loop start] L_0C16
L_0C16:
        lodsb   al, byte ptr [si]               ; AC
;   [unconditional branch target] L_0C17
L_0C17:
        mov     dh, byte ptr es:[di]            ; 26 8A 35
        xor     dh, dl                          ; 32 F2
        or      al, dh                          ; 0A C6
        xor     al, dl                          ; 32 C2
        stosb   byte ptr es:[di], al            ; AA
        sub     bx, 4                           ; 83 EB 04
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        je      L_0C59                          ; 74 2E
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        jmp     L_0C16                          ; EB E6
;   [loop start] L_0C30
L_0C30:
        mov     ah, byte ptr [si]               ; 8A 24
        rol     ax, cl                          ; D3 C0
        sub     cl, 8                           ; 80 E9 08
;   [conditional branch target (if/else)] L_0C37
L_0C37:
        neg     cl                              ; F6 D9
        mov     dh, byte ptr es:[di]            ; 26 8A 35
        xor     dh, dl                          ; 32 F2
        or      al, dh                          ; 0A C6
        xor     al, dl                          ; 32 C2
        stosb   byte ptr es:[di], al            ; AA
        rol     ax, cl                          ; D3 C0
        sub     cl, 8                           ; 80 E9 08
;   [unconditional branch target] L_0C48
L_0C48:
        neg     cl                              ; F6 D9
        sub     bx, 4                           ; 83 EB 04
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        je      L_0C59                          ; 74 05
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        jmp     L_0C30                          ; EB D7
;   [conditional branch target (if/else)] L_0C59
L_0C59:
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     ah, al                          ; 8A E0
        mov     dh, cl                          ; 8A F1
        jmp     L_0B74                          ; E9 12 FF
;   [unconditional branch target] L_0C62
L_0C62:
        mov     sp, word ptr [bp - 8]           ; 8B 66 F8
        call    L_1A08                          ; E8 A0 0D
;   [unconditional branch target] L_0C68
L_0C68:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
STRBLT ENDP

        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
;   [loop start] L_0C75
L_0C75:
        mov     al, byte ptr es:[di + 0x1f]     ; 26 8A 45 1F
        jmp     L_0C94                          ; EB 19
        nop                                     ; 90
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
        lodsb   al, byte ptr [si]               ; AC
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_0CA6                          ; 7C 1E
        cmp     al, byte ptr es:[di + 0x1e]     ; 26 3A 45 1E
        ja      L_0C75                          ; 77 E7
        sub     al, byte ptr es:[di + 0x1d]     ; 26 2A 45 1D
        jb      L_0C75                          ; 72 E1
;   [unconditional branch target] L_0C94
L_0C94:
        mov     cx, word ptr es:[di + 0x14]     ; 26 8B 4D 14
        cmp     al, byte ptr es:[di + 0x20]     ; 26 3A 45 20
        je      L_0CAD                          ; 74 0F
        mul     cl                              ; F6 E1
        add     ax, 8                           ; 05 08 00
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0CA6
L_0CA6:
        add     word ptr [bp - 0x1e], bx        ; 01 5E E2
        pop     ax                              ; 58
        jmp     L_0A1D                          ; E9 70 FD
;   [loop start (also forward branch)] L_0CAD
L_0CAD:
        jmp     word ptr [bp - 0x12]            ; FF 66 EE
        xor     ah, ah                          ; 32 E4
        shl     ax, 1                           ; D1 E0
        push    bx                              ; 53
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr es:[bx + di + 0x33] ; 26 8B 41 33
        mov     cx, word ptr es:[bx + di + 0x35] ; 26 8B 49 35
        sub     cx, ax                          ; 2B C8
        pop     bx                              ; 5B
        je      L_0CE8                          ; 74 24
        add     cx, word ptr [bp - 0x28]        ; 03 4E D8
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        sub     ax, word ptr [bp - 0x2c]        ; 2B 46 D4
        jg      L_0CD3                          ; 7F 04
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_0CD3
L_0CD3:
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        xor     ax, ax                          ; 33 C0
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [loop start] L_0CDB
L_0CDB:
        mov     al, byte ptr es:[di + 0x1f]     ; 26 8A 45 1F
        jmp     L_0CFA                          ; EB 19
        nop                                     ; 90
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
;   [loop start (also forward branch)] L_0CE8
L_0CE8:
        lodsb   al, byte ptr [si]               ; AC
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_0D1A                          ; 7C 2C
        cmp     al, byte ptr es:[di + 0x1e]     ; 26 3A 45 1E
        ja      L_0CDB                          ; 77 E7
        sub     al, byte ptr es:[di + 0x1d]     ; 26 2A 45 1D
        jb      L_0CDB                          ; 72 E1
;   [unconditional branch target] L_0CFA
L_0CFA:
        cmp     al, byte ptr es:[di + 0x20]     ; 26 3A 45 20
        je      L_0CAD                          ; 74 AD
        xor     ah, ah                          ; 32 E4
        shl     ax, 1                           ; D1 E0
        push    bx                              ; 53
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr es:[bx + di + 0x33] ; 26 8B 41 33
        mov     cx, word ptr es:[bx + di + 0x35] ; 26 8B 49 35
        sub     cx, ax                          ; 2B C8
        add     ax, 8                           ; 05 08 00
        pop     bx                              ; 5B
        je      L_0CE8                          ; 74 D1
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0D1A
L_0D1A:
        add     word ptr [bp - 0x1e], bx        ; 01 5E E2
        pop     ax                              ; 58
        jmp     L_0A1D                          ; E9 FC FC
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
        mov     cx, word ptr [bp - 0x30]        ; 8B 4E D0
        xor     ax, ax                          ; 33 C0
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0D2F   offset=0x0D2F  size=22 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0D6D
;-------------------------------------------------------------------------
;   [sub-routine] L_0D2F
L_0D2F:
        cld                                     ; FC
        mov     dx, word ptr es:[8]             ; 26 8B 16 08 00
        mov     di, 0x5e                        ; BF 5E 00
        mov     al, 0xff                        ; B0 FF
        call    L_0D6D                          ; E8 30 00
        mov     di, 0xae                        ; BF AE 00
        xor     al, al                          ; 32 C0
        mov     byte ptr es:[0x10], al          ; 26 A2 10 00
        call    L_0D6D                          ; E8 24 00
        cmp     dl, byte ptr es:[0x26]          ; 26 3A 16 26 00
        je      L_0D6C                          ; 74 1C
        mov     word ptr es:[0x26], dx          ; 26 89 16 26 00
        mov     si, 0x3a                        ; BE 3A 00
        cmp     dl, 2                           ; 80 FA 02
        je      L_0D60                          ; 74 03
        mov     si, 0x4c                        ; BE 4C 00
;   [conditional branch target (if/else)] L_0D60
L_0D60:
        mov     cx, 9                           ; B9 09 00
        mov     di, 0x28                        ; BF 28 00
        mov     ax, es                          ; 8C C0
        mov     ds, ax                          ; 8E D8
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
;   [error/early exit] L_0D6C
L_0D6C:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (17 instructions).

;-------------------------------------------------------------------------
; sub_0D6D   offset=0x0D6D  size=17 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0D6D
L_0D6D:
        mov     cx, 8                           ; B9 08 00
        cmp     dl, 4                           ; 80 FA 04
        je      L_0D7C                          ; 74 07
;   [loop iteration target] L_0D75
L_0D75:
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        loop    L_0D75                          ; E2 FA
        ret                                     ; C3
;   [loop iteration target] L_0D7C
L_0D7C:
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        loop    L_0D7C                          ; E2 F8
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (11 instructions).

;-------------------------------------------------------------------------
; sub_0D85   offset=0x0D85  size=11 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0DDA, L_0E2B, L_0EF4, L_0F89, L_1025
;-------------------------------------------------------------------------
;   [sub-routine] L_0D85
L_0D85:
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        push    bp                              ; 55
        cld                                     ; FC
        call    L_1025                          ; E8 97 02
        call    L_0EF4                          ; E8 63 01
        call    L_0E2B                          ; E8 97 00
        call    L_0DDA                          ; E8 43 00
        call    L_0F89                          ; E8 EF 01
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_0D9C   offset=0x0D9C  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0DB3
;-------------------------------------------------------------------------
;   [sub-routine] L_0D9C
L_0D9C:
        cmp     byte ptr [0x11], 1              ; 80 3E 11 00 01
        jne     L_0DB2                          ; 75 0F
        mov     byte ptr [0x11], 0              ; C6 06 11 00 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        cld                                     ; FC
        push    bp                              ; 55
        call    L_0DB3                          ; E8 02 00
        pop     bp                              ; 5D
;   [error/early exit] L_0DB2
L_0DB2:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0DB3   offset=0x0DB3  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_10F9, L_111F
;-------------------------------------------------------------------------
;   [sub-routine] L_0DB3
L_0DB3:
        mov     di, 0xfe                        ; BF FE 00
        mov     ax, word ptr [0x12]             ; A1 12 00
        mov     si, word ptr [0x14]             ; 8B 36 14 00
        push    si                              ; 56
        push    ax                              ; 50
        call    L_10F9                          ; E8 37 03
        mov     cx, word ptr [0x14]             ; 8B 0E 14 00
        call    L_111F                          ; E8 56 03
        xchg    di, si                          ; 87 F7
        mov     cx, word ptr [0x26]             ; 8B 0E 26 00
        add     ax, cx                          ; 03 C1
        add     bx, cx                          ; 03 D9
        inc     cx                              ; 41
        mov     bp, 0x10                        ; BD 10 00
        jmp     L_0FA6                          ; E9 CC 01
; Description (heuristic):
;   Pure computation / dispatcher (39 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0DDA   offset=0x0DDA  size=39 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0F60
;-------------------------------------------------------------------------
;   [sub-routine] L_0DDA
L_0DDA:
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     si, word ptr [0x18]             ; 8B 36 18 00
        call    L_0F60                          ; E8 7C 01
        mov     di, si                          ; 8B FE
        mov     si, 0x5e                        ; BE 5E 00
        mov     bx, 0xae                        ; BB AE 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        jmp     word ptr [0x2c]                 ; FF 26 2C 00
        ; constant WM_MOVE
        mov     dx, 3                           ; BA 03 00
;   [loop iteration target] L_0DF7
L_0DF7:
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
        loop    L_0DF7                          ; E2 EC
        ret                                     ; C3
        ; constant WM_SIZE
        mov     dx, 5                           ; BA 05 00
;   [loop iteration target] L_0E0F
L_0E0F:
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
        loop    L_0E0F                          ; E2 E5
;   [loop start] L_0E2A
L_0E2A:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (15 instructions).

;-------------------------------------------------------------------------
; sub_0E2B   offset=0x0E2B  size=15 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: unknown
;
; Near calls (internal): L_0E50
;-------------------------------------------------------------------------
;   [sub-routine] L_0E2B
L_0E2B:
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     bl, 7                           ; B3 07
        mov     al, byte ptr [0x16]             ; A0 16 00
        and     al, bl                          ; 22 C3
        and     bl, byte ptr [0x10]             ; 22 1E 10 00
        mov     byte ptr [0x10], al             ; A2 10 00
        sub     al, bl                          ; 2A C3
        je      L_0E2A                          ; 74 E9
        jl      L_0E93                          ; 7C 50
        mov     bh, al                          ; 8A F8
        mov     si, 0x5e                        ; BE 5E 00
        call    L_0E50                          ; E8 05 00
        mov     al, bh                          ; 8A C7
        mov     si, 0xae                        ; BE AE 00
; Description (heuristic):
;   Pure computation / dispatcher (40 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0E50   offset=0x0E50  size=40 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=5)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0EA2
;-------------------------------------------------------------------------
;   [sub-routine] L_0E50
L_0E50:
        cmp     al, 3                           ; 3C 03
        jae     L_0E76                          ; 73 22
        mov     bl, al                          ; 8A D8
;   [loop start] L_0E56
L_0E56:
        mov     di, si                          ; 8B FE
        mov     cx, word ptr [0x34]             ; 8B 0E 34 00
        shr     cx, 1                           ; D1 E9
;   [loop iteration target] L_0E5E
L_0E5E:
        mov     ax, word ptr [di]               ; 8B 05
        xchg    al, ah                          ; 86 E0
        rcr     ax, 1                           ; D1 D8
        xchg    al, ah                          ; 86 E0
        stosw   word ptr es:[di], ax            ; AB
        loop    L_0E5E                          ; E2 F5
        mov     al, byte ptr [si]               ; 8A 04
        rcl     al, 1                           ; D0 D0
        ror     al, 1                           ; D0 C8
        mov     byte ptr [si], al               ; 88 04
        dec     bl                              ; FE CB
        jne     L_0E56                          ; 75 E1
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0E76
L_0E76:
        mov     cl, al                          ; 8A C8
        mov     di, si                          ; 8B FE
        mov     dx, word ptr [0x34]             ; 8B 16 34 00
        xor     bl, bl                          ; 32 DB
;   [loop start] L_0E80
L_0E80:
        xor     ax, ax                          ; 33 C0
        mov     ah, byte ptr [di]               ; 8A 25
        shr     ax, cl                          ; D3 E8
        or      ah, bl                          ; 0A E3
        mov     bl, al                          ; 8A D8
        mov     al, ah                          ; 8A C4
        stosb   byte ptr es:[di], al            ; AA
        dec     dx                              ; 4A
        jne     L_0E80                          ; 75 F0
        or      byte ptr [si], bl               ; 08 1C
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0E93
L_0E93:
        neg     al                              ; F6 D8
        mov     bh, al                          ; 8A F8
        mov     si, 0x5e                        ; BE 5E 00
        call    L_0EA2                          ; E8 05 00
        mov     al, bh                          ; 8A C7
        mov     si, 0xae                        ; BE AE 00
; Description (heuristic):
;   Pure computation / dispatcher (42 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0EA2   offset=0x0EA2  size=42 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=3)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0EA2
L_0EA2:
        std                                     ; FD
        cmp     al, 3                           ; 3C 03
        jae     L_0ED5                          ; 73 2E
        mov     bl, al                          ; 8A D8
;   [loop start] L_0EA9
L_0EA9:
        mov     di, si                          ; 8B FE
        mov     cx, word ptr [0x34]             ; 8B 0E 34 00
        add     di, cx                          ; 03 F9
        sub     di, 2                           ; 83 EF 02
        mov     dx, di                          ; 8B D7
        shr     cx, 1                           ; D1 E9
;   [loop iteration target] L_0EB8
L_0EB8:
        mov     ax, word ptr [di]               ; 8B 05
        xchg    al, ah                          ; 86 E0
        rcl     ax, 1                           ; D1 D0
        xchg    al, ah                          ; 86 E0
        stosw   word ptr es:[di], ax            ; AB
        loop    L_0EB8                          ; E2 F5
        mov     di, dx                          ; 8B FA
        mov     al, byte ptr [di + 1]           ; 8A 45 01
        rcr     al, 1                           ; D0 D8
        rol     al, 1                           ; D0 C0
        mov     byte ptr [di + 1], al           ; 88 45 01
        dec     bl                              ; FE CB
        jne     L_0EA9                          ; 75 D6
        cld                                     ; FC
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0ED5
L_0ED5:
        mov     cl, al                          ; 8A C8
        mov     dx, word ptr [0x34]             ; 8B 16 34 00
        add     si, dx                          ; 03 F2
        dec     si                              ; 4E
        mov     di, si                          ; 8B FE
        xor     bl, bl                          ; 32 DB
;   [loop start] L_0EE2
L_0EE2:
        xor     ax, ax                          ; 33 C0
        mov     al, byte ptr [di]               ; 8A 05
        shl     ax, cl                          ; D3 E0
        or      al, bl                          ; 0A C3
        mov     bl, ah                          ; 8A DC
        stosb   byte ptr es:[di], al            ; AA
        dec     dx                              ; 4A
        jne     L_0EE2                          ; 75 F2
        or      byte ptr [si], bl               ; 08 1C
        cld                                     ; FC
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0EF4   offset=0x0EF4  size=28 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0F60
;-------------------------------------------------------------------------
;   [sub-routine] L_0EF4
L_0EF4:
        mov     di, 0xfe                        ; BF FE 00
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     si, word ptr [0x18]             ; 8B 36 18 00
        mov     word ptr [0x12], ax             ; A3 12 00
        mov     word ptr [0x14], si             ; 89 36 14 00
        mov     byte ptr [0x11], 1              ; C6 06 11 00 01
        call    L_0F60                          ; E8 53 00
        shr     cx, 1                           ; D1 E9
        mov     dx, word ptr [0x26]             ; 8B 16 26 00
        jmp     word ptr [0x2a]                 ; FF 26 2A 00
;   [loop iteration target] L_0F17
L_0F17:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        loop    L_0F17                          ; E2 F6
        ret                                     ; C3
;   [loop iteration target] L_0F22
L_0F22:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        loop    L_0F22                          ; E2 F4
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (26 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F2F   offset=0x0F2F  size=26 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0F60
;-------------------------------------------------------------------------
;   [sub-routine] L_0F2F
L_0F2F:
        mov     di, 0xfe                        ; BF FE 00
        mov     ax, word ptr [0x12]             ; A1 12 00
        mov     si, word ptr [0x14]             ; 8B 36 14 00
        call    L_0F60                          ; E8 24 00
        shr     cx, 1                           ; D1 E9
        mov     dx, word ptr [0x26]             ; 8B 16 26 00
        xchg    di, si                          ; 87 F7
        jmp     word ptr [0x28]                 ; FF 26 28 00
;   [loop iteration target] L_0F48
L_0F48:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        loop    L_0F48                          ; E2 F6
        ret                                     ; C3
;   [loop iteration target] L_0F53
L_0F53:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        loop    L_0F53                          ; E2 F4
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_0F60   offset=0x0F60  size=16 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0F60
L_0F60:
        sub     ax, word ptr [0x1a]             ; 2B 06 1A 00
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        sub     si, word ptr [0x1c]             ; 2B 36 1C 00
        mov     cx, si                          ; 8B CE
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        cmp     word ptr [0x26], 2              ; 83 3E 26 00 02
        je      L_0F7D                          ; 74 02
        shl     si, 1                           ; D1 E6
;   [conditional branch target (if/else)] L_0F7D
L_0F7D:
        add     si, cx                          ; 03 F1
        add     si, ax                          ; 03 F0
        add     si, 0x14e                       ; 81 C6 4E 01
        ; constant VK_SHIFT
        mov     cx, 0x10                        ; B9 10 00
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (67 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F89   offset=0x0F89  size=67 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_111B
;-------------------------------------------------------------------------
;   [sub-routine] L_0F89
L_0F89:
        call    L_111B                          ; E8 8F 01
        mov     si, 0x14e                       ; BE 4E 01
        mov     di, word ptr [0x24]             ; 8B 3E 24 00
        mov     cx, word ptr [0x26]             ; 8B 0E 26 00
        shl     cx, 1                           ; D1 E1
        inc     cx                              ; 41
        mov     bp, word ptr [0x1e]             ; 8B 2E 1E 00
        push    word ptr [0x1c]                 ; FF 36 1C 00
        push    word ptr [0x1a]                 ; FF 36 1A 00
;   [unconditional branch target] L_0FA6
L_0FA6:
        mov     dx, cx                          ; 8B D1
        mov     word ptr [0x20], cx             ; 89 0E 20 00
        mov     word ptr [0x22], bp             ; 89 2E 22 00
        xor     bp, bp                          ; 33 ED
        pop     cx                              ; 59
        sar     cx, 1                           ; D1 F9
        sar     cx, 1                           ; D1 F9
        sar     cx, 1                           ; D1 F9
        or      cx, cx                          ; 0B C9
        jge     L_0FC5                          ; 7D 08
        neg     cx                              ; F7 D9
        add     di, cx                          ; 03 F9
        add     si, cx                          ; 03 F1
        jmp     L_0FCE                          ; EB 09
;   [conditional branch target (if/else)] L_0FC5
L_0FC5:
        add     cx, word ptr [0x20]             ; 03 0E 20 00
        sub     cx, 0x50                        ; 83 E9 50
        jle     L_0FDB                          ; 7E 0D
;   [unconditional branch target] L_0FCE
L_0FCE:
        mov     bp, cx                          ; 8B E9
        add     ax, cx                          ; 03 C1
        add     bx, cx                          ; 03 D9
        sub     dx, cx                          ; 2B D1
        jg      L_0FDB                          ; 7F 03
        jmp     L_101E                          ; EB 44
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0FDB
L_0FDB:
        pop     cx                              ; 59
        or      cx, cx                          ; 0B C9
        jge     L_0FF1                          ; 7D 11
        neg     cx                              ; F7 D9
        push    cx                              ; 51
;   [loop iteration target] L_0FE3
L_0FE3:
        add     si, word ptr [0x20]             ; 03 36 20 00
        add     di, ax                          ; 03 F8
        add     di, dx                          ; 03 FA
        xchg    bx, ax                          ; 93
        loop    L_0FE3                          ; E2 F5
        pop     cx                              ; 59
        jmp     L_0FFB                          ; EB 0A
;   [conditional branch target (if/else)] L_0FF1
L_0FF1:
        add     cx, word ptr [0x22]             ; 03 0E 22 00
        sub     cx, 0xc8                        ; 81 E9 C8 00
        jle     L_1001                          ; 7E 06
;   [unconditional branch target] L_0FFB
L_0FFB:
        sub     word ptr [0x22], cx             ; 29 0E 22 00
        jle     L_101F                          ; 7E 1E
;   [conditional branch target (if/else)] L_1001
L_1001:
        mov     cx, 0xb800                      ; B9 00 B8
        mov     es, cx                          ; 8E C1
        xor     ch, ch                          ; 32 ED
        mov     dh, byte ptr [0x22]             ; 8A 36 22 00
;   [loop start] L_100C
L_100C:
        mov     cl, dl                          ; 8A CA
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        add     di, ax                          ; 03 F8
        add     si, bp                          ; 03 F5
        xchg    bx, ax                          ; 93
        dec     dh                              ; FE CE
        jne     L_100C                          ; 75 F3
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        ret                                     ; C3
;   [fall-through exit] L_101E
L_101E:
        pop     cx                              ; 59
;   [error/early exit] L_101F
L_101F:
        mov     byte ptr [0x11], 0              ; C6 06 11 00 00
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_1025   offset=0x1025  size=14 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0DB3, L_0F2F, L_1045, L_1098
;-------------------------------------------------------------------------
;   [sub-routine] L_1025
L_1025:
        call    L_1098                          ; E8 70 00
        xor     ax, ax                          ; 33 C0
        mov     bx, 0x11                        ; BB 11 00
        cmp     byte ptr [bx], al               ; 38 07
        je      L_103A                          ; 74 09
        mov     byte ptr [bx], al               ; 88 07
        or      bp, bp                          ; 0B ED
        je      L_103E                          ; 74 07
        call    L_0DB3                          ; E8 79 FD
;   [conditional branch target (if/else)] L_103A
L_103A:
        call    L_1045                          ; E8 08 00
        ret                                     ; C3
;   [conditional branch target (if/else)] L_103E
L_103E:
        call    L_1045                          ; E8 04 00
        call    L_0F2F                          ; E8 EB FE
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (54 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1045   offset=0x1045  size=54 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_111B
;-------------------------------------------------------------------------
;   [sub-routine] L_1045
L_1045:
        call    L_111B                          ; E8 D3 00
        push    cx                              ; 51
        mov     cx, word ptr [0x1e]             ; 8B 0E 1E 00
        mov     si, word ptr [0x24]             ; 8B 36 24 00
        mov     di, 0xb800                      ; BF 00 B8
        mov     ds, di                          ; 8E DF
        mov     di, 0x14e                       ; BF 4E 01
        jmp     word ptr es:[0x2e]              ; 26 FF 26 2E 00
        inc     cx                              ; 41
        sar     cx, 1                           ; D1 F9
;   [loop iteration target] L_1061
L_1061:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     si, ax                          ; 03 F0
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     si, bx                          ; 03 F3
        loop    L_1061                          ; E2 F0
        mov     cx, es                          ; 8C C1
        mov     ds, cx                          ; 8E D9
        pop     cx                              ; 59
        ret                                     ; C3
        inc     cx                              ; 41
        sar     cx, 1                           ; D1 F9
;   [loop iteration target] L_107A
L_107A:
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
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     si, bx                          ; 03 F3
        loop    L_107A                          ; E2 E8
        mov     cx, es                          ; 8C C1
        mov     ds, cx                          ; 8E D9
        pop     cx                              ; 59
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1098   offset=0x1098  size=36 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_10F9
;-------------------------------------------------------------------------
;   [sub-routine] L_1098
L_1098:
        xor     bp, bp                          ; 33 ED
        cmp     byte ptr [0x11], 0              ; 80 3E 11 00 00
        je      L_10D2                          ; 74 31
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     bx, word ptr [0x12]             ; 8B 1E 12 00
        cmp     ax, bx                          ; 3B C3
        jge     L_10AD                          ; 7D 01
        xchg    bx, ax                          ; 93
;   [conditional branch target (if/else)] L_10AD
L_10AD:
        and     bl, 0xf8                        ; 80 E3 F8
        sub     ax, bx                          ; 2B C3
        cmp     ax, word ptr [0x36]             ; 3B 06 36 00
        jge     L_10D2                          ; 7D 1A
        mov     word ptr [0x1a], bx             ; 89 1E 1A 00
        mov     ax, word ptr [0x18]             ; A1 18 00
        mov     bx, word ptr [0x14]             ; 8B 1E 14 00
        mov     cx, ax                          ; 8B C8
        sub     ax, bx                          ; 2B C3
        jge     L_10CD                          ; 7D 04
        neg     ax                              ; F7 D8
        mov     bx, cx                          ; 8B D9
;   [conditional branch target (if/else)] L_10CD
L_10CD:
        cmp     ax, 0x10                        ; 3D 10 00
        jle     L_10E2                          ; 7E 10
;   [conditional branch target (if/else)] L_10D2
L_10D2:
        mov     ax, word ptr [0x16]             ; A1 16 00
        and     al, 0xf8                        ; 24 F8
        mov     word ptr [0x1a], ax             ; A3 1A 00
        mov     bx, word ptr [0x18]             ; 8B 1E 18 00
        xor     ax, ax                          ; 33 C0
        not     bp                              ; F7 D5
;   [conditional branch target (if/else)] L_10E2
L_10E2:
        mov     word ptr [0x1c], bx             ; 89 1E 1C 00
        add     ax, 0x10                        ; 05 10 00
        mov     word ptr [0x1e], ax             ; A3 1E 00
        mov     ax, word ptr [0x1a]             ; A1 1A 00
        mov     si, bx                          ; 8B F3
        call    L_10F9                          ; E8 05 00
        mov     word ptr [0x24], si             ; 89 36 24 00
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (17 instructions).

;-------------------------------------------------------------------------
; sub_10F9   offset=0x10F9  size=17 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_10F9
L_10F9:
        mov     cx, si                          ; 8B CE
        xchg    si, ax                          ; 96
        sar     si, 1                           ; D1 FE
        sar     si, 1                           ; D1 FE
        sar     si, 1                           ; D1 FE
        shr     ax, 1                           ; D1 E8
        jae     L_110A                          ; 73 04
        add     si, 0x2000                      ; 81 C6 00 20
;   [conditional branch target (if/else)] L_110A
L_110A:
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     si, ax                          ; 03 F0
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     si, ax                          ; 03 F0
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (1 instructions).

;-------------------------------------------------------------------------
; sub_111B   offset=0x111B  size=1 instr  segment=seg1.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_111B
L_111B:
        mov     cx, word ptr [0x1c]             ; 8B 0E 1C 00
; Description (heuristic):
;   Internal helper (6 instructions).

;-------------------------------------------------------------------------
; sub_111F   offset=0x111F  size=6 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_111F
L_111F:
        mov     ax, word ptr [0x30]             ; A1 30 00
        mov     bx, word ptr [0x32]             ; 8B 1E 32 00
        test    cl, 1                           ; F6 C1 01
        je      L_112C                          ; 74 01
        xchg    bx, ax                          ; 93
;   [error/early exit] L_112C
L_112C:
        ret                                     ; C3

;-----------------------------------------------------------------------
; SCANLR  (offset 0x112D, size 235 bytes)
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
        jcxz    L_115B                          ; E3 1B
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     di, dx                          ; 8B FA
        mov     si, word ptr [si + 2]           ; 8B 74 02
        dec     si                              ; 4E
        mov     cx, word ptr [bp + 0xe]         ; 8B 4E 0E
        test    byte ptr [bp + 6], 2            ; F6 46 06 02
        je      L_1156                          ; 74 04
        mov     si, cx                          ; 8B F1
        xor     cx, cx                          ; 33 C9
;   [conditional branch target (if/else)] L_1156
L_1156:
        call    L_197C                          ; E8 23 08
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
;   [conditional branch target (if/else)] L_115B
L_115B:
        les     di, ptr [bp + 0x10]             ; C4 7E 10
        lds     si, ptr es:[di + 0xa]           ; 26 C5 75 0A
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        jcxz    L_1178                          ; E3 11
        mov     bx, ax                          ; 8B D8
        and     bx, 3                           ; 81 E3 03 00
        add     bx, bx                          ; 03 DB
        add     si, word ptr cs:[bx + 0xf2]     ; 2E 03 B7 F2 00
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        shr     ax, cl                          ; D3 E8
;   [conditional branch target (if/else)] L_1178
L_1178:
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
        jae     L_119E                          ; 73 02
        not     ax                              ; F7 D0
;   [conditional branch target (if/else)] L_119E
L_119E:
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr cs:[bx + 0x162]    ; 2E 8A 9F 62 01
        dec     bl                              ; FE CB
        std                                     ; FD
        shl     dx, 1                           ; D1 E2
        dec     dx                              ; 4A
        jg      L_11BB                          ; 7F 0C
        cld                                     ; FC
        shl     bl, 1                           ; D0 E3
        inc     bl                              ; FE C3
        not     bl                              ; F6 D3
        sub     cx, di                          ; 2B CF
        neg     cx                              ; F7 D9
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_11BB
L_11BB:
        not     bl                              ; F6 D3
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        lodsb   al, byte ptr [si]               ; AC
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        jne     L_11DD                          ; 75 13
        mov     al, ah                          ; 8A C4
        dec     cx                              ; 49
        je      L_1213                          ; 74 44
        xchg    di, si                          ; 87 F7
        repe scasb al, byte ptr es:[di]         ; F3 AE
        je      L_1213                          ; 74 3E
        inc     cx                              ; 41
        xchg    di, si                          ; 87 F7
        add     si, dx                          ; 03 F2
        lodsb   al, byte ptr [si]               ; AC
        xor     al, ah                          ; 32 C4
;   [conditional branch target (if/else)] L_11DD
L_11DD:
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        or      dx, dx                          ; 0B D2
        jg      L_11FB                          ; 7F 14
        sub     cx, di                          ; 2B CF
        neg     cx                              ; F7 D9
        dec     cx                              ; 49
;   [loop start] L_11EC
L_11EC:
        inc     cx                              ; 41
        shl     al, 1                           ; D0 E0
        jae     L_11EC                          ; 73 FB
        lds     si, ptr [bp + 0x10]             ; C5 76 10
        cmp     cx, word ptr [si + 2]           ; 3B 4C 02
        jge     L_1213                          ; 7D 1A
        jmp     L_1200                          ; EB 05
;   [loop start (also forward branch)] L_11FB
L_11FB:
        dec     cx                              ; 49
        shr     ax, 1                           ; D1 E8
        jae     L_11FB                          ; 73 FB
;   [unconditional branch target] L_1200
L_1200:
        mov     ax, cx                          ; 8B C1
;   [loop start] L_1202
L_1202:
        cld                                     ; FC
        call    L_1A08                          ; E8 02 08
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [conditional branch target (if/else)] L_1213
L_1213:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1202                          ; EB EA
SCANLR ENDP


;-----------------------------------------------------------------------
; PIXEL  (offset 0x1218, size 172 bytes)
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
        call    L_1D82                          ; E8 59 0B
        jae     L_122E                          ; 73 03
        jmp     L_12B7                          ; E9 89 00
;   [conditional branch target (if/else)] L_122E
L_122E:
        lds     si, ptr [bp + 0x12]             ; C5 76 12
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_1245                          ; E3 10
        mov     cx, word ptr [bp + 0x10]        ; 8B 4E 10
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     si, cx                          ; 8B F1
        mov     di, dx                          ; 8B FA
        call    L_197C                          ; E8 3A 07
        lds     si, ptr [bp + 0x12]             ; C5 76 12
;   [conditional branch target (if/else)] L_1245
L_1245:
        les     di, ptr [si + 0xa]              ; C4 7C 0A
        mov     ax, word ptr [si]               ; 8B 04
        or      ax, ax                          ; 0B C0
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        je      L_1262                          ; 74 11
        mov     bx, ax                          ; 8B D8
        and     bx, 3                           ; 81 E3 03 00
        add     bx, bx                          ; 03 DB
        add     di, word ptr cs:[bx + 0xf2]     ; 2E 03 BF F2 00
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        shr     ax, cl                          ; D3 E8
;   [conditional branch target (if/else)] L_1262
L_1262:
        mul     word ptr [si + 6]               ; F7 64 06
        add     di, ax                          ; 03 F8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     bx, ax                          ; 8B D8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        add     di, ax                          ; 03 F8
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr cs:[bx + 0x162]    ; 2E 8A 9F 62 01
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     cx, dx                          ; 8B CA
        or      cx, si                          ; 0B CE
        je      L_12A3                          ; 74 1A
        mov     ds, dx                          ; 8E DA
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        mov     si, word ptr [si]               ; 8B 34
        add     si, si                          ; 03 F6
        mov     ah, byte ptr es:[di]            ; 26 8A 25
        call    word ptr cs:[si + 0x1b00]       ; 2E FF 94 00 1B
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        xor     al, ah                          ; 32 C4
        stosb   byte ptr es:[di], al            ; AA
        jmp     L_12B0                          ; EB 0D
;   [conditional branch target (if/else)] L_12A3
L_12A3:
        mov     al, byte ptr es:[di]            ; 26 8A 05
        and     al, bl                          ; 22 C3
        mov     dx, 0xff                        ; BA FF 00
        mov     ax, 0xffff                      ; B8 FF FF
        jne     L_12B4                          ; 75 04
;   [unconditional branch target] L_12B0
L_12B0:
        xor     ax, ax                          ; 33 C0
        xor     dx, dx                          ; 33 D2
;   [conditional branch target (if/else)] L_12B4
L_12B4:
        call    L_1A08                          ; E8 51 07
;   [unconditional branch target] L_12B7
L_12B7:
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
        js      L_12D9                          ; 78 02
        mov     al, 0                           ; B0 00
;   [conditional branch target (if/else)] L_12D9
L_12D9:
        or      ch, ch                          ; 0A ED
        jns     L_12E5                          ; 79 08
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        xor     al, ah                          ; 32 C4
        mov     byte ptr [di], al               ; 88 05
;   [conditional branch target (if/else)] L_12E5
L_12E5:
        xor     ax, ax                          ; 33 C0
        jns     L_12EE                          ; 79 05
        add     cl, 0x1a                        ; 80 C1 1A
        rol     ch, 1                           ; D0 C5
;   [conditional branch target (if/else)] L_12EE
L_12EE:
        dec     bp                              ; 4D
;   [loop start] L_12EF
L_12EF:
        jg      L_12EF                          ; 7F FE
        retf                                    ; CB
;   [loop start] L_12F2
L_12F2:
        ror     bl, 1                           ; D0 CB
        jb      L_12FA                          ; 72 04
        dec     bp                              ; 4D
        jg      L_12F2                          ; 7F F9
;   [loop start] L_12F9
L_12F9:
        retf                                    ; CB
;   [conditional branch target (if/else)] L_12FA
L_12FA:
        inc     di                              ; 47
        dec     bp                              ; 4D
        jle     L_12F9                          ; 7E FB
;   [loop start] L_12FE
L_12FE:
        cmp     bp, 8                           ; 83 FD 08
        jl      L_12F2                          ; 7C EF
        mov     ah, byte ptr [di]               ; 8A 25
        mov     al, bh                          ; 8A C7
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        sub     bp, 8                           ; 83 ED 08
        jg      L_12FE                          ; 7F EF
        retf                                    ; CB

;-----------------------------------------------------------------------
; OUTPUT  (offset 0x1310, size 508 bytes)
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
        call    L_1D82                          ; E8 62 0A
        push    si                              ; 56
        push    di                              ; 57
        jb      L_137E                          ; 72 5A
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
        jcxz    L_1356                          ; E3 14
        mov     bx, ax                          ; 8B D8
        and     bx, 3                           ; 81 E3 03 00
        add     bx, bx                          ; 03 DB
        add     di, word ptr cs:[bx + 0xf2]     ; 2E 03 BF F2 00
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        shr     ax, cl                          ; D3 E8
        mov     cx, 0xc050                      ; B9 50 C0
;   [conditional branch target (if/else)] L_1356
L_1356:
        mov     word ptr [bp - 0x18], cx        ; 89 4E E8
        mul     dx                              ; F7 E2
        add     di, ax                          ; 03 F8
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     word ptr [bp - 0xc], es         ; 8C 46 F4
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     ax, 0x12                        ; 3D 12 00
        je      L_138B                          ; 74 20
        cmp     ax, 4                           ; 3D 04 00
        jne     L_1379                          ; 75 09
        jmp     L_15FB                          ; E9 88 02
;   [loop start] L_1373
L_1373:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_137B                          ; EB 03
        nop                                     ; 90
;   [loop start (also forward branch)] L_1379
L_1379:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_137B
L_137B:
        call    L_1A08                          ; E8 8A 06
;   [conditional branch target (if/else)] L_137E
L_137E:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1c                            ; CA 1C 00
;   [conditional branch target (if/else)] L_138B
L_138B:
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_13B2                          ; E3 23
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
        mov     di, word ptr [si + 4]           ; 8B 7C 04
        dec     di                              ; 4F
        mov     si, word ptr [si + 2]           ; 8B 74 02
        dec     si                              ; 4E
        lds     bx, ptr [bp + 6]                ; C5 5E 06
        mov     ax, ds                          ; 8C D8
        or      ax, bx                          ; 0B C3
        je      L_13AF                          ; 74 0B
        mov     cx, word ptr [bx]               ; 8B 0F
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     si, word ptr [bx + 4]           ; 8B 77 04
        mov     di, word ptr [bx + 6]           ; 8B 7F 06
;   [conditional branch target (if/else)] L_13AF
L_13AF:
        call    L_197C                          ; E8 CA 05
;   [conditional branch target (if/else)] L_13B2
L_13B2:
        lds     si, ptr [bp + 0x12]             ; C5 76 12
        mov     ah, byte ptr [si]               ; 8A 24
        mov     byte ptr [bp - 0x1a], ah        ; 88 66 E6
        mov     bx, word ptr [si + 1]           ; 8B 5C 01
        cmp     bx, 5                           ; 83 FB 05
        jg      L_1379                          ; 7F B7
        je      L_1373                          ; 74 AF
        mov     ah, byte ptr cs:[bx + 0x12c4]   ; 2E 8A A7 C4 12
        mov     al, 0x1a                        ; B0 1A
        dec     al                              ; FE C8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        xor     cx, cx                          ; 33 C9
        call    L_1524                          ; E8 4F 01
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
        mov     bl, byte ptr cs:[bx + 0x162]    ; 2E 8A 9F 62 01
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
;   [loop start] L_13F7
L_13F7:
        dec     ax                              ; 48
        jg      L_13FD                          ; 7F 03
        jmp     L_1373                          ; E9 76 FF
;   [conditional branch target (if/else)] L_13FD
L_13FD:
        push    ax                              ; 50
        push    ds                              ; 1E
        push    si                              ; 56
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     byte ptr [bp - 0x1c], bl        ; 88 5E E4
        mov     ax, word ptr [si]               ; 8B 04
        mov     di, word ptr [si + 2]           ; 8B 7C 02
        xor     bx, bx                          ; 33 DB
        sub     ax, dx                          ; 2B C2
        jae     L_1415                          ; 73 04
        mov     bl, 2                           ; B3 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_1415
L_1415:
        mov     si, word ptr [bp - 0x16]        ; 8B 76 EA
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_1429                          ; 74 0B
        mov     si, 0x2000                      ; BE 00 20
        test    cl, 1                           ; F6 C1 01
        je      L_1429                          ; 74 03
        mov     si, 0xe050                      ; BE 50 E0
;   [conditional branch target (if/else)] L_1429
L_1429:
        mov     dx, ax                          ; 8B D0
        mov     ax, di                          ; 8B C7
        mov     byte ptr [bp - 0x19], 0x7d      ; C6 46 E7 7D
        mov     byte ptr [bp - 0x92], 0x90      ; C6 86 6E FF 90
        sub     ax, cx                          ; 2B C1
        jae     L_144D                          ; 73 13
        neg     ax                              ; F7 D8
        or      bl, 1                           ; 80 CB 01
        xor     si, word ptr [bp - 0x18]        ; 33 76 E8
        neg     si                              ; F7 DE
        mov     byte ptr [bp - 0x19], 0x7f      ; C6 46 E7 7F
        mov     byte ptr [bp - 0x92], 0x46      ; C6 86 6E FF 46
;   [conditional branch target (if/else)] L_144D
L_144D:
        mov     cx, ax                          ; 8B C8
        cmp     cx, dx                          ; 3B CA
        jb      L_1458                          ; 72 05
        or      bl, 4                           ; 80 CB 04
        xchg    dx, cx                          ; 87 CA
;   [conditional branch target (if/else)] L_1458
L_1458:
        mov     word ptr [bp - 0x10], si        ; 89 76 F0
        or      dx, dx                          ; 0B D2
        jne     L_1468                          ; 75 09
        mov     di, word ptr [bp - 0xe]         ; 8B 7E F2
        mov     bl, byte ptr [bp - 0x1c]        ; 8A 5E E4
        jmp     L_1517                          ; E9 AF 00
;   [conditional branch target (if/else)] L_1468
L_1468:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        mov     di, word ptr [bp - 4]           ; 8B 7E FC
        or      cx, cx                          ; 0B C9
        jne     L_1490                          ; 75 1D
        or      bl, 8                           ; 80 CB 08
        test    bl, 4                           ; F6 C3 04
        jne     L_1490                          ; 75 15
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        jne     L_1490                          ; 75 0F
        cmp     byte ptr [bp - 0x1b], bl        ; 38 5E E5
        je      L_14FE                          ; 74 78
        mov     byte ptr [bp - 0x1b], bl        ; 88 5E E5
        push    dx                              ; 52
        call    L_15A9                          ; E8 1C 01
        pop     dx                              ; 5A
        jmp     L_14FE                          ; EB 6E
;   [conditional branch target (if/else)] L_1490
L_1490:
        test    bl, 8                           ; F6 C3 08
        jne     L_14AF                          ; 75 1A
        mov     ax, 0xee81                      ; B8 81 EE
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, cx                          ; 8B C1
        stosw   word ptr es:[di], ax            ; AB
        mov     ah, byte ptr cs:[bx + 0xaa]     ; 2E 8A A7 AA 00
        add     ah, 4                           ; 80 C4 04
        mov     al, byte ptr [bp - 0x19]        ; 8A 46 E7
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_14AF
L_14AF:
        cmp     byte ptr [bp - 0x1b], bl        ; 38 5E E5
        je      L_14FE                          ; 74 4A
        mov     byte ptr [bp - 0x1b], bl        ; 88 5E E5
        mov     cl, byte ptr cs:[bx + 0xb2]     ; 2E 8A 8F B2 00
        xor     ch, ch                          ; 32 ED
        mov     al, byte ptr cs:[bx + 0xc2]     ; 2E 8A 87 C2 00
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x8a]     ; 2E 8B B7 8A 00
        mov     bx, di                          ; 8B DF
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_14E0                          ; 75 0C
        and     ax, 0xff                        ; 25 FF 00
        je      L_14E0                          ; 74 07
        add     bx, ax                          ; 03 D8
        mov     word ptr ss:[bx], 0             ; 36 C7 07 00 00
;   [conditional branch target (if/else)] L_14E0
L_14E0:
        mov     si, 0x12ee                      ; BE EE 12
        mov     cl, 4                           ; B1 04
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_14F0                          ; 74 05
        mov     si, 0x12e7                      ; BE E7 12
        mov     cl, 0xb                         ; B1 0B
;   [conditional branch target (if/else)] L_14F0
L_14F0:
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, di                          ; 2B C7
        add     ax, 6                           ; 05 06 00
        mov     byte ptr es:[di - 2], al        ; 26 88 45 FE
;   [branch target] L_14FE
L_14FE:
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
;   [unconditional branch target] L_1517
L_1517:
        pop     si                              ; 5E
        pop     ds                              ; 1F
        cld                                     ; FC
        lodsw   ax, word ptr [si]               ; AD
        mov     dx, ax                          ; 8B D0
        lodsw   ax, word ptr [si]               ; AD
        mov     cx, ax                          ; 8B C8
        pop     ax                              ; 58
        jmp     L_13F7                          ; E9 D3 FE
; Description (heuristic):
;   Pure computation / dispatcher (50 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1524   offset=0x1524  size=50 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1524
L_1524:
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     dh, byte ptr [si + 4]           ; 8A 74 04
        mov     bx, word ptr [si]               ; 8B 1C
        dec     bx                              ; 4B
        and     bx, 0xf                         ; 81 E3 0F 00
        jcxz    L_154D                          ; E3 17
        cmp     ax, 2                           ; 3D 02 00
        je      L_154D                          ; 74 12
        or      dh, dh                          ; 0A F6
        je      L_1547                          ; 74 08
        and     bl, 0xfb                        ; 80 E3 FB
        or      bl, 8                           ; 80 CB 08
        jmp     L_154D                          ; EB 06
;   [conditional branch target (if/else)] L_1547
L_1547:
        and     bl, 0xfe                        ; 80 E3 FE
        or      bl, 2                           ; 80 CB 02
;   [branch target] L_154D
L_154D:
        mov     word ptr [bp - 0x12], bx        ; 89 5E EE
        lea     di, [bp - 0x94]                 ; 8D BE 6C FF
        mov     cx, ss                          ; 8C D1
        mov     es, cx                          ; 8E C1
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        mov     cx, cs                          ; 8C C9
        mov     ds, cx                          ; 8E D9
        mov     si, 0x12ca                      ; BE CA 12
        mov     cx, 9                           ; B9 09 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_1580                          ; 74 10
        cmp     ax, 2                           ; 3D 02 00
        jne     L_1580                          ; 75 0B
        mov     si, 0x12d3                      ; BE D3 12
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     byte ptr es:[di - 1], dh        ; 26 88 75 FF
;   [conditional branch target (if/else)] L_1580
L_1580:
        mov     cl, byte ptr cs:[bx + 0x1b22]   ; 2E 8A 8F 22 1B
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x1b02]   ; 2E 8B B7 02 1B
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, 0x12dd                      ; BE DD 12
        ; constant WM_SIZE
        mov     cl, 5                           ; B1 05
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_15A3                          ; 74 0A
        cmp     ax, 2                           ; 3D 02 00
        je      L_15A3                          ; 74 05
        mov     si, 0x12d9                      ; BE D9 12
        mov     cl, 7                           ; B1 07
;   [conditional branch target (if/else)] L_15A3
L_15A3:
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     word ptr [bp - 4], di           ; 89 7E FC
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (102 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_15A9   offset=0x15A9  size=102 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1524, L_15A9, L_197C
;-------------------------------------------------------------------------
;   [sub-routine] L_15A9
L_15A9:
        lea     ax, [bp - 0x8f]                 ; 8D 86 71 FF
        sub     ax, di                          ; 2B C7
        mov     si, 0x12f2                      ; BE F2 12
        mov     cx, 0x15                        ; B9 15 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        add     byte ptr es:[di - 0xf], al      ; 26 00 45 F1
        add     byte ptr es:[di - 5], al        ; 26 00 45 FB
        test    bl, 2                           ; F6 C3 02
        je      L_15CE                          ; 74 0A
        mov     byte ptr es:[di - 0x14], 0xc3   ; 26 C6 45 EC C3
        mov     byte ptr es:[di - 0xd], 0x4f    ; 26 C6 45 F3 4F
;   [conditional branch target (if/else)] L_15CE
L_15CE:
        mov     ah, bl                          ; 8A E3
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     cl, byte ptr cs:[bx + 0x1b22]   ; 2E 8A 8F 22 1B
        mov     al, cl                          ; 8A C1
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x1b02]   ; 2E 8B B7 02 1B
        mov     bl, ah                          ; 8A DC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, 0x1307                      ; BE 07 13
        mov     cl, 9                           ; B1 09
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        test    bl, 2                           ; F6 C3 02
        je      L_15F6                          ; 74 05
        mov     byte ptr es:[di - 7], 0x4f      ; 26 C6 45 F9 4F
;   [error/early exit] L_15F6
L_15F6:
        sub     byte ptr es:[di - 2], al        ; 26 28 45 FE
        ret                                     ; C3
;   [unconditional branch target] L_15FB
L_15FB:
        lds     si, ptr [bp + 0x1e]             ; C5 76 1E
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_161D                          ; E3 1B
        lds     bx, ptr [bp + 0x16]             ; C5 5E 16
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     di, dx                          ; 8B FA
        mov     cx, word ptr [bx + 4]           ; 8B 4F 04
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        dec     si                              ; 4E
        jle     L_1646                          ; 7E 33
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     si, word ptr [bx + si + 2]      ; 8B 70 02
        call    L_197C                          ; E8 5F 03
;   [conditional branch target (if/else)] L_161D
L_161D:
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        mov     dx, bx                          ; 8B D3
        mov     di, word ptr [bp + 0xe]         ; 8B 7E 0E
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     cx, ax                          ; 8B C8
        or      cx, di                          ; 0B CF
        je      L_1649                          ; 74 18
        mov     ds, ax                          ; 8E D8
        mov     cx, word ptr [di + 8]           ; 8B 4D 08
        mov     si, 0xffff                      ; BE FF FF
        cmp     cx, 3                           ; 83 F9 03
        ja      L_1646                          ; 77 08
        cmp     cx, 1                           ; 83 F9 01
        jne     L_1656                          ; 75 13
;   [loop start] L_1643
L_1643:
        jmp     L_1373                          ; E9 2D FD
;   [conditional branch target (if/else)] L_1646
L_1646:
        jmp     L_1379                          ; E9 30 FD
;   [conditional branch target (if/else)] L_1649
L_1649:
        lds     di, ptr [bp + 0x12]             ; C5 7E 12
        cmp     word ptr [di + 1], 5            ; 83 7D 01 05
        je      L_1643                          ; 74 F1
        xor     bx, bx                          ; 33 DB
        xor     si, si                          ; 33 F6
;   [conditional branch target (if/else)] L_1656
L_1656:
        and     bx, 7                           ; 81 E3 07 00
        mov     al, byte ptr [bx + di]          ; 8A 01
        mov     byte ptr [bp - 0x1a], al        ; 88 46 E6
        mov     word ptr [bp - 0xa], 0xffff     ; C7 46 F6 FF FF
        mov     cx, si                          ; 8B CE
        call    L_1524                          ; E8 BB FE
        mov     bl, 8                           ; B3 08
        call    L_15A9                          ; E8 3B FF
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        add     si, 4                           ; 83 C6 04
;   [loop start] L_1677
L_1677:
        dec     ax                              ; 48
        jg      L_167D                          ; 7F 03
        jmp     L_1373                          ; E9 F6 FC
;   [conditional branch target (if/else)] L_167D
L_167D:
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
        mov     bl, byte ptr cs:[bx + 0x162]    ; 2E 8A 9F 62 01
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
        jmp     L_1677                          ; EB C9

;-----------------------------------------------------------------------
; ENUMDFONTS  (offset 0x16AE, size 24 bytes)
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
; ENUMOBJ  (offset 0x16C6, size 152 bytes)
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
        je      L_16F1                          ; 74 16
        cmp     word ptr [bp + 0xe], 2          ; 83 7E 0E 02
        je      L_1719                          ; 74 38
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_16E4
L_16E4:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [conditional branch target (if/else)] L_16F1
L_16F1:
        xor     si, si                          ; 33 F6
        mov     word ptr [bp - 0xc], si         ; 89 76 F4
        mov     word ptr [bp - 0xa], si         ; 89 76 F6
;   [loop start] L_16F9
L_16F9:
        mov     word ptr [bp - 0xe], si         ; 89 76 F2
        xor     di, di                          ; 33 FF
;   [loop start] L_16FE
L_16FE:
        mov     ax, di                          ; 8B C7
        xor     ah, ah                          ; 32 E4
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        call    L_175E                          ; E8 53 00
        xor     di, 0xffff                      ; 81 F7 FF FF
        jne     L_16FE                          ; 75 ED
        inc     si                              ; 46
        cmp     si, 5                           ; 83 FE 05
        jb      L_16F9                          ; 72 E2
;   [loop start] L_1717
L_1717:
        jmp     L_16E4                          ; EB CB
;   [conditional branch target (if/else)] L_1719
L_1719:
        xor     di, di                          ; 33 FF
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     di, 0xa                         ; BF 0A 00
;   [loop start] L_1724
L_1724:
        mov     ax, word ptr cs:[di - 2]        ; 2E 8B 85 FE FF
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        xor     ah, ah                          ; 32 E4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        call    L_175E                          ; E8 2A 00
        sub     di, 2                           ; 83 EF 02
        jne     L_1724                          ; 75 EB
        mov     word ptr [bp - 0xe], 2          ; C7 46 F2 02 00
        ; constant WM_SIZE
        mov     si, 5                           ; BE 05 00
;   [loop start] L_1741
L_1741:
        mov     word ptr [bp - 8], si           ; 89 76 F8
        xor     di, di                          ; 33 FF
;   [loop start] L_1746
L_1746:
        mov     ax, di                          ; 8B C7
        xor     ah, ah                          ; 32 E4
        mov     word ptr [bp - 0xc], di         ; 89 7E F4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        call    L_175E                          ; E8 0B 00
        xor     di, 0xffff                      ; 81 F7 FF FF
        jne     L_1746                          ; 75 ED
        dec     si                              ; 4E
        jns     L_1741                          ; 79 E5
        jmp     L_1717                          ; EB B9
ENUMOBJ ENDP

; Description (heuristic):
;   Internal helper (10 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_175E   offset=0x175E  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_175E
L_175E:
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        pop     bx                              ; 5B
        or      ax, ax                          ; 0B C0
        je      L_1717                          ; 74 A6
        jmp     bx                              ; FF E3

;-----------------------------------------------------------------------
; REALIZEOBJECT  (offset 0x1773, size 80 bytes)
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
        jns     L_178D                          ; 79 03
        jmp     L_189A                          ; E9 0D 01
;   [conditional branch target (if/else)] L_178D
L_178D:
        lds     si, ptr [bp + 0xe]              ; C5 76 0E
        dec     bx                              ; 4B
        cmp     bx, 2                           ; 83 FB 02
        jg      L_17AD                          ; 7F 17
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_17A5                          ; 74 05
        jmp     word ptr cs:[bx + 0x1905]       ; 2E FF A7 05 19
;   [conditional branch target (if/else)] L_17A5
L_17A5:
        mov     ax, word ptr cs:[bx + 0x190b]   ; 2E 8B 87 0B 19
        jmp     L_18A1                          ; E9 F4 00
;   [conditional branch target (if/else)] L_17AD
L_17AD:
        jmp     L_189F                          ; E9 EF 00
        mov     cx, word ptr [si]               ; 8B 0C
        cmp     cx, 5                           ; 83 F9 05
        je      L_17C5                          ; 74 0E
        cmp     word ptr [si + 2], 2            ; 83 7C 02 02
        jb      L_17C0                          ; 72 03
;   [loop start] L_17BD
L_17BD:
        mov     cx, 0                           ; B9 00 00
;   [conditional branch target (if/else)] L_17C0
L_17C0:
        cmp     cx, 5                           ; 83 F9 05
REALIZEOBJECT ENDP

        jg      L_17BD                          ; 7F F8
;   [conditional branch target (if/else)] L_17C5
L_17C5:
        lea     si, [si + 6]                    ; 8D 74 06
        call    L_18AE                          ; E8 E3 00
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, cx                          ; 8B C1
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_189A                          ; E9 C5 00
        mov     di, ss                          ; 8C D7
        mov     es, di                          ; 8E C7
        lea     di, [bp - 0xc]                  ; 8D 7E F4
        mov     bx, word ptr [si]               ; 8B 1C
        cmp     bx, 3                           ; 83 FB 03
        jle     L_17E6                          ; 7E 03
        mov     bx, 0                           ; BB 00 00
;   [conditional branch target (if/else)] L_17E6
L_17E6:
        add     bx, bx                          ; 03 DB
        jmp     word ptr cs:[bx + 0x18cd]       ; 2E FF A7 CD 18
        lea     di, [di + 8]                    ; 8D 7D 08
        ; constant WM_CREATE
        mov     bx, 1                           ; BB 01 00
        jmp     L_1875                          ; E9 7F 00
;   [loop start] L_17F6
L_17F6:
        lea     si, [si + 2]                    ; 8D 74 02
        call    L_18AE                          ; E8 B2 00
        mov     ax, bx                          ; 8B C3
        cdq                                     ; 99
        ; constant WM_MOVE
        mov     si, 3                           ; BE 03 00
        div     si                              ; F7 F6
        mov     dx, ax                          ; 8B D0
        xor     si, si                          ; 33 F6
        call    L_1D44                          ; E8 39 05
        or      si, si                          ; 0B F6
        je      L_181D                          ; 74 0E
        add     si, si                          ; 03 F6
        mov     ax, word ptr cs:[si + 0x1820]   ; 2E 8B 84 20 18
        sub     di, 8                           ; 83 EF 08
;   [loop start] L_1819
L_1819:
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_181D
L_181D:
        mov     bx, 0                           ; BB 00 00
        jmp     L_1875                          ; EB 53
        mov     byte ptr [bp + si], ah          ; 88 22
        stosb   byte ptr es:[di], al            ; AA
        push    bp                              ; 55
        fnsave  dword ptr [bx - 0x3b]           ; DD 77 C5
        je      L_182D                          ; 74 02
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        dec     dx                              ; 4A
        lds     si, ptr [si + 0xa]              ; C5 74 0A
        mov     cx, 8                           ; B9 08 00
;   [loop iteration target] L_1835
L_1835:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     si, dx                          ; 03 F2
        loop    L_1835                          ; E2 FB
        ; constant WM_MOVE
        mov     bx, 3                           ; BB 03 00
        jmp     L_1875                          ; EB 36
        nop                                     ; 90
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        cmp     cx, 5                           ; 83 F9 05
        jg      L_17F6                          ; 7F AE
        lea     si, [si + 8]                    ; 8D 74 08
        call    L_18AE                          ; E8 60 00
        push    ax                              ; 50
        lea     si, [si - 6]                    ; 8D 74 FA
        call    L_18AE                          ; E8 59 00
        pop     dx                              ; 5A
        cmp     dx, ax                          ; 3B D0
        je      L_1819                          ; 74 BF
        mov     dx, ax                          ; 8B D0
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        mov     bx, cx                          ; 8B D9
        lea     si, [bx + 0x18d5]               ; 8D B7 D5 18
        mov     bx, 2                           ; BB 02 00
        mov     cx, 4                           ; B9 04 00
;   [loop iteration target] L_186E
L_186E:
        lodsw   ax, word ptr cs:[si]            ; 2E AD
        xor     ax, dx                          ; 33 C2
        stosw   word ptr es:[di], ax            ; AB
        loop    L_186E                          ; E2 F9
;   [unconditional branch target] L_1875
L_1875:
        mov     dx, 7                           ; BA 07 00
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        and     cl, dl                          ; 22 CA
        mov     ch, dl                          ; 8A EA
        lea     si, [di - 8]                    ; 8D 75 F8
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        mov     word ptr es:[di + 8], bx        ; 26 89 5D 08
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
;   [loop start] L_188C
L_188C:
        lodsb   al, byte ptr ss:[si]            ; 36 AC
        ror     al, cl                          ; D2 C8
        and     bx, dx                          ; 23 DA
        mov     byte ptr es:[bx + di], al       ; 26 88 01
        inc     bx                              ; 43
        dec     ch                              ; FE CD
        jns     L_188C                          ; 79 F2
;   [unconditional branch target] L_189A
L_189A:
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_18A1                          ; EB 03
        nop                                     ; 90
;   [unconditional branch target] L_189F
L_189F:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_18A1
L_18A1:
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
; sub_18AE   offset=0x18AE  size=2 instr  segment=seg1.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_18AE
L_18AE:
        mov     ax, word ptr [si]               ; 8B 04
        mov     dl, byte ptr [si + 2]           ; 8A 54 02
; Description (heuristic):
;   Pure computation / dispatcher (73 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_18B3   offset=0x18B3  size=73 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_18B3
;-------------------------------------------------------------------------
;   [sub-routine] L_18B3
L_18B3:
        xor     dh, dh                          ; 32 F6
        xor     bx, bx                          ; 33 DB
        xchg    bl, ah                          ; 86 E3
        add     bx, ax                          ; 03 D8
        add     bx, dx                          ; 03 DA
        mov     ax, 0xffff                      ; B8 FF FF
        mov     dl, al                          ; 8A D0
        cmp     bx, 0x17e                       ; 81 FB 7E 01
        jge     L_18CC                          ; 7D 04
        xor     ax, ax                          ; 33 C0
        xor     dx, dx                          ; 33 D2
;   [error/early exit] L_18CC
L_18CC:
        ret                                     ; C3
        not     byte ptr [bx]                   ; F6 17
        in      ax, dx                          ; ED
        pop     ss                              ; 17
        inc     ax                              ; 40
        sbb     byte ptr [bx + si], ch          ; 18 28
        sbb     byte ptr [bx + si], al          ; 18 00
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
        fistp   qword ptr [bx + 0x7f]           ; DF BF 7F 00
        div     di                              ; F7 F7
        test    word ptr [bx + si], 0xf7f7      ; F7 00 F7 F7
        idiv    word ptr [bp - 0x43]            ; F7 7E BD
        db      0dbh                            ; DB
        out     0xe7, ax                        ; E7 E7
        fstp    xword ptr [di - 0x4f82]         ; DB BD 7E B0
        pop     ss                              ; 17
        aad     0x17                            ; D5 17
        lahf                                    ; 9F
        sbb     byte ptr [bp + di], al          ; 18 03
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
        call    L_18B3                          ; E8 8E FF
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        or      di, word ptr [bp + 8]           ; 0B 7E 08
        je      L_1935                          ; 74 08
        les     di, ptr [bp + 6]                ; C4 7E 06
        cld                                     ; FC
        stosw   word ptr es:[di], ax            ; AB
        mov     word ptr es:[di], dx            ; 26 89 15
;   [conditional branch target (if/else)] L_1935
L_1935:
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00

;-----------------------------------------------------------------------
; CONTROL  (offset 0x1941, size 59 bytes)
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
        je      L_195A                          ; 74 06
        cmp     word ptr [bp + 0xe], 5          ; 83 7E 0E 05
        jne     L_1970                          ; 75 16
;   [conditional branch target (if/else)] L_195A
L_195A:
        lds     di, ptr [bp + 0xa]              ; C5 7E 0A
        mov     bx, word ptr [di]               ; 8B 1D
        cmp     bx, 1                           ; 83 FB 01
        ja      L_1970                          ; 77 0C
        sub     ax, bx                          ; 2B C3
        les     di, ptr [bp + 6]                ; C4 7E 06
        cld                                     ; FC
        stosw   word ptr es:[di], ax            ; AB
        xor     ah, ah                          ; 32 E4
        stosw   word ptr es:[di], ax            ; AB
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
;   [conditional branch target (if/else)] L_1970
L_1970:
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
; sub_197C   offset=0x197C  size=26 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0D9C, L_19D0
;-------------------------------------------------------------------------
;   [sub-routine] L_197C
L_197C:
        mov     ds, word ptr cs:[0x1b4b]        ; 2E 8E 1E 4B 1B
        and     cl, 0xf8                        ; 80 E1 F8
        or      si, 7                           ; 81 CE 07 00
        mov     word ptr [0x270], cx            ; 89 0E 70 02
        mov     word ptr [0x272], dx            ; 89 16 72 02
        mov     word ptr [0x274], si            ; 89 36 74 02
        mov     word ptr [0x276], di            ; 89 3E 76 02
        mov     byte ptr [0x26f], 1             ; C6 06 6F 02 01
        mov     cl, 0xc0                        ; B1 C0
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     bx, word ptr [0x18]             ; 8B 1E 18 00
        call    L_19D0                          ; E8 25 00
        jae     L_19C8                          ; 73 1B
        je      L_19C8                          ; 74 19
        xor     cx, cx                          ; 33 C9
        xchg    byte ptr [0x280], cl            ; 86 0E 80 02
        push    cx                              ; 51
        mov     byte ptr [0x26e], 0x40          ; C6 06 6E 02 40
        sti                                     ; FB
        call    L_0D9C                          ; E8 DD F3
        mov     ds, word ptr cs:[0x1b4b]        ; 2E 8E 1E 4B 1B
        pop     ax                              ; 58
        mov     byte ptr [0x280], al            ; A2 80 02
;   [conditional branch target (if/else)] L_19C8
L_19C8:
        jmp     L_19CB                          ; EB 01
; Description (heuristic):
;   Internal helper (4 instructions).

;-------------------------------------------------------------------------
; sub_19CA   offset=0x19CA  size=4 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_19CA
;-------------------------------------------------------------------------
;   [sub-routine] L_19CA
L_19CA:
        iret                                    ; CF
;   [unconditional branch target] L_19CB
L_19CB:
        push    cs                              ; 0E
        call    L_19CA                          ; E8 FB FF
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (20 instructions).

;-------------------------------------------------------------------------
; sub_19D0   offset=0x19D0  size=20 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_19D0
L_19D0:
        mov     ds, word ptr cs:[0x1b4b]        ; 2E 8E 1E 4B 1B
        test    byte ptr [0x26e], cl            ; 84 0E 6E 02
        jne     L_1A07                          ; 75 2C
        xor     cx, cx                          ; 33 C9
        cmp     byte ptr [0x26f], cl            ; 38 0E 6F 02
        je      L_1A04                          ; 74 21
        cmp     ax, word ptr [0x274]            ; 3B 06 74 02
        jg      L_1A04                          ; 7F 1B
        add     ax, word ptr [0x38]             ; 03 06 38 00
        cmp     ax, word ptr [0x270]            ; 3B 06 70 02
        jl      L_1A04                          ; 7C 11
        cmp     bx, word ptr [0x276]            ; 3B 1E 76 02
        jg      L_1A04                          ; 7F 0B
        add     bx, 0xf                         ; 81 C3 0F 00
        cmp     bx, word ptr [0x272]            ; 3B 1E 72 02
        jl      L_1A04                          ; 7C 01
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_1A04
L_1A04:
        or      cx, cx                          ; 0B C9
        stc                                     ; F9
;   [error/early exit] L_1A07
L_1A07:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (3 instructions).

;-------------------------------------------------------------------------
; sub_1A08   offset=0x1A08  size=3 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1A08
L_1A08:
        mov     ds, word ptr cs:[0x1b4b]        ; 2E 8E 1E 4B 1B
        mov     byte ptr [0x26f], 0             ; C6 06 6F 02 00
        ret                                     ; C3

;-----------------------------------------------------------------------
; INQUIRE  (offset 0x1A13, size 39 bytes)
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
; SETCURSOR  (offset 0x1A3A, size 110 bytes)
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
        xchg    byte ptr [0x280], cl            ; 86 0E 80 02
        jcxz    L_1AB3                          ; E3 65
        mov     byte ptr [0x26e], 0x80          ; C6 06 6E 02 80
        pushf                                   ; 9C
        cli                                     ; FA
        xor     ax, ax                          ; 33 C0
        xchg    word ptr [0x27c], ax            ; 87 06 7C 02
        add     word ptr [0x278], ax            ; 01 06 78 02
        xor     ax, ax                          ; 33 C0
        xchg    word ptr [0x27e], ax            ; 87 06 7E 02
        add     word ptr [0x27a], ax            ; 01 06 7A 02
        sti                                     ; FB
        call    L_0D9C                          ; E8 2F F3
        cld                                     ; FC
        mov     es, word ptr cs:[0x1b4b]        ; 2E 8E 06 4B 1B
        lds     si, ptr [bp + 6]                ; C5 76 06
        mov     ax, ds                          ; 8C D8
        or      ax, si                          ; 0B C6
        je      L_1AA6                          ; 74 2A
        mov     di, 0                           ; BF 00 00
        mov     cx, 6                           ; B9 06 00
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        call    L_0D2F                          ; E8 A8 F2
        mov     ds, word ptr cs:[0x1b4b]        ; 2E 8E 1E 4B 1B
        cli                                     ; FA
        mov     ax, word ptr [0]                ; A1 00 00
        mov     word ptr [0x27c], ax            ; A3 7C 02
        sub     word ptr [0x278], ax            ; 29 06 78 02
        mov     ax, word ptr [2]                ; A1 02 00
        mov     word ptr [0x27e], ax            ; A3 7E 02
        sub     word ptr [0x27a], ax            ; 29 06 7A 02
        mov     byte ptr [0x26e], 0x40          ; C6 06 6E 02 40
;   [conditional branch target (if/else)] L_1AA6
L_1AA6:
        jmp     L_1AA9                          ; EB 01
SETCURSOR ENDP

; Description (heuristic):
;   Pure computation / dispatcher (76 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1AA8   offset=0x1AA8  size=76 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_1AA8
;-------------------------------------------------------------------------
;   [sub-routine] L_1AA8
L_1AA8:
        iret                                    ; CF
;   [unconditional branch target] L_1AA9
L_1AA9:
        push    cs                              ; 0E
        call    L_1AA8                          ; E8 FB FF
        mov     byte ptr es:[0x280], 1          ; 26 C6 06 80 02 01
;   [conditional branch target (if/else)] L_1AB3
L_1AB3:
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
        rcr     byte ptr [bp + si], 0xf9        ; C0 1A F9
        sbb     al, bl                          ; 1A C3
        sbb     cl, al                          ; 1A C8
        sbb     cl, bl                          ; 1A CB
        sbb     dl, ch                          ; 1A D5
        sbb     bl, dl                          ; 1A DA
        sbb     ah, ch                          ; 1A E5
        sbb     ah, dl                          ; 1A E2
        sbb     bl, ch                          ; 1A DD
        sbb     dl, dl                          ; 1A D2
        sbb     ch, dl                          ; 1A EA
        sbb     al, byte ptr [bx + di]          ; 1A 01
        sbb     bp, di                          ; 1B EF
        sbb     dh, dh                          ; 1A F6
        sbb     bh, dh                          ; 1A FE
        sbb     al, byte ptr [bp + si]          ; 1A 02
        add     al, 4                           ; 04 04
        add     al, byte ptr [0x204]            ; 02 06 04 02
        add     al, 2                           ; 04 02
        add     al, 2                           ; 04 02
        add     al, 0                           ; 04 00
        push    es                              ; 06
        add     al, byte ptr [bp + si]          ; 02 02

;-----------------------------------------------------------------------
; DEVICEMODE  (offset 0x1B32, size 24 bytes)
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
; ENABLE  (offset 0x1B4A, size 65 bytes)
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
        jne     L_1B73                          ; 75 0E
        lea     si, [0xd2]                      ; 8D 36 D2 00
        mov     cx, 0x20                        ; B9 20 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        call    L_016A                          ; E8 F9 E5
        jmp     L_1B7E                          ; EB 0B
;   [conditional branch target (if/else)] L_1B73
L_1B73:
        lea     si, [0xfa]                      ; 8D 36 FA 00
        mov     cx, 0x68                        ; B9 68 00
        mov     ax, cx                          ; 8B C1
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
;   [unconditional branch target] L_1B7E
L_1B7E:
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
; DISABLE  (offset 0x1B8B, size 34 bytes)
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
        call    L_0184                          ; E8 E7 E5
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
; MOVECURSOR  (offset 0x1BAD, size 43 bytes)
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
        sub     ax, word ptr [0x27c]            ; 2B 06 7C 02
        mov     word ptr [0x278], ax            ; A3 78 02
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        sub     bx, word ptr [0x27e]            ; 2B 1E 7E 02
        mov     word ptr [0x27a], bx            ; 89 1E 7A 02
        xor     cx, cx                          ; 33 C9
        xchg    byte ptr [0x280], cl            ; 86 0E 80 02
;   [loop start] L_1BD6
L_1BD6:
        jmp     L_1BD9                          ; EB 01
MOVECURSOR ENDP

; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1BD8   offset=0x1BD8  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0D9C, L_19D0, L_1BD8
;-------------------------------------------------------------------------
;   [sub-routine] L_1BD8
L_1BD8:
        iret                                    ; CF
;   [unconditional branch target] L_1BD9
L_1BD9:
        push    cs                              ; 0E
        call    L_1BD8                          ; E8 FB FF
        jcxz    L_1C3F                          ; E3 60
        mov     word ptr [0x16], ax             ; A3 16 00
        mov     word ptr [0x18], bx             ; 89 1E 18 00
        mov     cl, 0xc0                        ; B1 C0
        call    L_19D0                          ; E8 E5 FD
        jae     L_1C05                          ; 73 18
        je      L_1C0C                          ; 74 1D
        or      byte ptr [0x26e], 0x40          ; 80 0E 6E 02 40
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0D9C                          ; E8 A3 F1
        jmp     L_1BFC                          ; EB 01
; Description (heuristic):
;   Internal helper (10 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1BFB   offset=0x1BFB  size=10 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0D85, L_1BFB
;-------------------------------------------------------------------------
;   [sub-routine] L_1BFB
L_1BFB:
        iret                                    ; CF
;   [unconditional branch target] L_1BFC
L_1BFC:
        push    cs                              ; 0E
        call    L_1BFB                          ; E8 FB FF
        mov     ds, word ptr cs:[0x1b4b]        ; 2E 8E 1E 4B 1B
;   [conditional branch target (if/else)] L_1C05
L_1C05:
        mov     byte ptr [0x280], 1             ; C6 06 80 02 01
        jmp     L_1C3F                          ; EB 33
;   [conditional branch target (if/else)] L_1C0C
L_1C0C:
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0D85                          ; E8 74 F1
        jmp     L_1C14                          ; EB 01
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1C13   offset=0x1C13  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1C13
;-------------------------------------------------------------------------
;   [sub-routine] L_1C13
L_1C13:
        iret                                    ; CF
;   [unconditional branch target] L_1C14
L_1C14:
        push    cs                              ; 0E
        call    L_1C13                          ; E8 FB FF
        mov     ds, word ptr cs:[0x1b4b]        ; 2E 8E 1E 4B 1B
        pushf                                   ; 9C
        cli                                     ; FA
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        mov     ax, word ptr [0x278]            ; A1 78 02
        mov     bx, word ptr [0x27a]            ; 8B 1E 7A 02
        cmp     ax, word ptr [0x16]             ; 3B 06 16 00
        jne     L_1BD6                          ; 75 A8
        cmp     bx, word ptr [0x18]             ; 3B 1E 18 00
        jne     L_1BD6                          ; 75 A2
        mov     byte ptr [0x280], cl            ; 88 0E 80 02
        jmp     L_1C3B                          ; EB 01
; Description (heuristic):
;   Internal helper (11 instructions).

;-------------------------------------------------------------------------
; sub_1C3A   offset=0x1C3A  size=11 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1C3A
;-------------------------------------------------------------------------
;   [sub-routine] L_1C3A
L_1C3A:
        iret                                    ; CF
;   [unconditional branch target] L_1C3B
L_1C3B:
        push    cs                              ; 0E
        call    L_1C3A                          ; E8 FB FF
;   [branch target] L_1C3F
L_1C3F:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00

;-----------------------------------------------------------------------
; CHECKCURSOR  (offset 0x1C4C, size 41 bytes)
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
        xchg    byte ptr [0x280], cl            ; 86 0E 80 02
        jcxz    L_1CC4                          ; E3 63
        mov     al, byte ptr [0x26e]            ; A0 6E 02
        add     al, al                          ; 02 C0
        jb      L_1CE3                          ; 72 7B
        jns     L_1CE3                          ; 79 79
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [0x278]            ; A1 78 02
        mov     bx, word ptr [0x27a]            ; 8B 1E 7A 02
;   [loop start] L_1C73
L_1C73:
        jmp     L_1C76                          ; EB 01
CHECKCURSOR ENDP

; Description (heuristic):
;   Internal helper (14 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1C75   offset=0x1C75  size=14 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0D85, L_19D0, L_1C75
;-------------------------------------------------------------------------
;   [sub-routine] L_1C75
L_1C75:
        iret                                    ; CF
;   [unconditional branch target] L_1C76
L_1C76:
        push    cs                              ; 0E
        call    L_1C75                          ; E8 FB FF
        mov     si, ax                          ; 8B F0
        mov     di, bx                          ; 8B FB
        xor     cx, cx                          ; 33 C9
        call    L_19D0                          ; E8 4D FD
        jne     L_1CC6                          ; 75 41
        mov     word ptr [0x16], si             ; 89 36 16 00
        mov     word ptr [0x18], di             ; 89 3E 18 00
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0D85                          ; E8 F3 F0
        jmp     L_1C95                          ; EB 01
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1C94   offset=0x1C94  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1C94
;-------------------------------------------------------------------------
;   [sub-routine] L_1C94
L_1C94:
        iret                                    ; CF
;   [unconditional branch target] L_1C95
L_1C95:
        push    cs                              ; 0E
        call    L_1C94                          ; E8 FB FF
        mov     ds, word ptr cs:[0x1b4b]        ; 2E 8E 1E 4B 1B
        mov     byte ptr [0x26e], 0             ; C6 06 6E 02 00
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [0x278]            ; A1 78 02
        mov     bx, word ptr [0x27a]            ; 8B 1E 7A 02
        cmp     ax, word ptr [0x16]             ; 3B 06 16 00
        jne     L_1C73                          ; 75 C1
        cmp     bx, word ptr [0x18]             ; 3B 1E 18 00
        jne     L_1C73                          ; 75 BB
        mov     byte ptr [0x280], 1             ; C6 06 80 02 01
        jmp     L_1CC0                          ; EB 01
; Description (heuristic):
;   Internal helper (10 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1CBF   offset=0x1CBF  size=10 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0D9C, L_1CBF
;-------------------------------------------------------------------------
;   [sub-routine] L_1CBF
L_1CBF:
        iret                                    ; CF
;   [unconditional branch target] L_1CC0
L_1CC0:
        push    cs                              ; 0E
        call    L_1CBF                          ; E8 FB FF
;   [conditional branch target (if/else)] L_1CC4
L_1CC4:
        jmp     L_1CE8                          ; EB 22
;   [conditional branch target (if/else)] L_1CC6
L_1CC6:
        test    byte ptr [0x26e], 0x40          ; F6 06 6E 02 40
        jne     L_1CE3                          ; 75 16
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0D9C                          ; E8 CA F0
        jmp     L_1CD5                          ; EB 01
; Description (heuristic):
;   Pure computation / dispatcher (54 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1CD4   offset=0x1CD4  size=54 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: retf
;
; Near calls (internal): L_1CD4
;-------------------------------------------------------------------------
;   [sub-routine] L_1CD4
L_1CD4:
        iret                                    ; CF
;   [unconditional branch target] L_1CD5
L_1CD5:
        push    cs                              ; 0E
        call    L_1CD4                          ; E8 FB FF
        mov     ds, word ptr cs:[0x1b4b]        ; 2E 8E 1E 4B 1B
        mov     byte ptr [0x26e], 0x40          ; C6 06 6E 02 40
;   [conditional branch target (if/else)] L_1CE3
L_1CE3:
        mov     byte ptr [0x280], 1             ; C6 06 80 02 01
;   [unconditional branch target] L_1CE8
L_1CE8:
        pop     es                              ; 07
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        or      byte ptr [bx + si], 8           ; 80 08 08
        add     byte ptr [bx + si + 0x808], 0x80 ; 80 80 08 08 80
        and     byte ptr [bp + si], al          ; 20 02
        add     ah, byte ptr [bx + si]          ; 02 20
        and     byte ptr [bp + si], al          ; 20 02
        add     ah, byte ptr [bx + si]          ; 02 20
        and     byte ptr [bp + si], al          ; 20 02
        add     ah, byte ptr [bx + si]          ; 02 20
        and     byte ptr [bp + si], al          ; 20 02
        add     ah, byte ptr [bx + si]          ; 02 20
        or      byte ptr [bx + si], 8           ; 80 08 08
        add     byte ptr [bx + si + 0x808], 0x80 ; 80 80 08 08 80
        inc     ax                              ; 40
        add     al, 4                           ; 04 04
        inc     ax                              ; 40
        inc     ax                              ; 40
        add     al, 4                           ; 04 04
        inc     ax                              ; 40
        adc     byte ptr [bx + di], al          ; 10 01
        add     word ptr [bx + si], dx          ; 01 10
        adc     byte ptr [bx + di], al          ; 10 01
        add     word ptr [bx + si], dx          ; 01 10
        adc     byte ptr [bx + di], al          ; 10 01
        add     word ptr [bx + si], dx          ; 01 10
        adc     byte ptr [bx + di], al          ; 10 01
        add     word ptr [bx + si], dx          ; 01 10
        inc     ax                              ; 40
        add     al, 4                           ; 04 04
        inc     ax                              ; 40
        inc     ax                              ; 40
        add     al, 4                           ; 04 04
        inc     ax                              ; 40
        add     byte ptr [si], al               ; 00 04
        add     byte ptr [si], al               ; 00 04
        add     al, byte ptr [0x602]            ; 02 06 02 06
        add     word ptr [di], ax               ; 01 05
        add     word ptr [di], ax               ; 01 05
        add     ax, word ptr [bx]               ; 03 07
        add     ax, word ptr [bx]               ; 03 07
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1D44   offset=0x1D44  size=28 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1D44
L_1D44:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        sub     di, 8                           ; 83 EF 08
        shr     dl, 1                           ; D0 EA
        adc     dl, al                          ; 12 D0
        shr     dl, 1                           ; D0 EA
        xor     dh, dh                          ; 32 F6
        cmp     dl, 0x20                        ; 80 FA 20
        jne     L_1D66                          ; 75 08
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        or      si, 2                           ; 81 CE 02 00
;   [conditional branch target (if/else)] L_1D66
L_1D66:
        dec     dl                              ; FE CA
        jl      L_1D7E                          ; 7C 14
;   [loop start] L_1D6A
L_1D6A:
        mov     bx, dx                          ; 8B DA
        mov     al, byte ptr [bx + 0x1cf4]      ; 8A 87 F4 1C
        and     bl, 0xf                         ; 80 E3 0F
        mov     bl, byte ptr [bx + 0x1d34]      ; 8A 9F 34 1D
        or      byte ptr es:[bx + di], al       ; 26 08 01
        dec     dl                              ; FE CA
        jge     L_1D6A                          ; 7D EC
;   [error/early exit] L_1D7E
L_1D7E:
        add     di, 8                           ; 83 C7 08
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (18 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1D82   offset=0x1D82  size=18 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_1D82
L_1D82:
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_1DA0                          ; 73 19
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_1DA0                          ; 77 10
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_1D9B                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_1D9B
L_1D9B:
        mov     sp, ax                          ; 8B E0
        clc                                     ; F8
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_1DA0
L_1DA0:
        mov     ax, word ptr ss:[0xa]           ; 36 A1 0A 00
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
        xor     ax, ax                          ; 33 C0
        mov     dx, 0x8000                      ; BA 00 80
        stc                                     ; F9
        jmp     bx                              ; FF E3

CGA_TEXT ENDS

        END
