; ======================================================================
; ATTDC / seg1.asm   (segment 1 of ATTDC)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        41
; Total instructions:                 3328
; 
; Classification (pass8):
;   C-origin (high+medium):              0
;   ASM-origin (high+medium):           24
;   Unclear:                            15
;   Tiny / unclassified:                 2
; 
; Far API calls in this segment:     1 (1 unique)
;   Top:
;        1  GETPROFILEINT
; ======================================================================
; AUTO-GENERATED from original ATTDC segment 1
; segment_size=7977 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

ATTDC_TEXT SEGMENT BYTE PUBLIC 'CODE'

        dec     cx                              ; 49
        dec     si                              ; 4E
        inc     sp                              ; 44
        inc     dx                              ; 42
        outsw   dx, word ptr [si]               ; 6F
        popaw                                   ; 61
        jb      L_006C                          ; 72 64
        add     byte ptr [si + 0x45], al        ; 00 44 45
        inc     dx                              ; 42
        inc     dx                              ; 42
        outsw   dx, word ptr [si]               ; 6F
        popaw                                   ; 61
        jb      L_0075                          ; 72 64
        add     byte ptr [bp + 0x6f], ah        ; 00 66 6F
        jb      L_007B                          ; 72 65
        jb      L_0088                          ; 67 72 6F
        jne     L_0089                          ; 75 6E
        add     byte ptr fs:[bp + si + 0x61], ah ; 64 00 62 61
        arpl    word ptr [bp + di + 0x67], bp   ; 63 6B 67
        jb      L_0093                          ; 72 6F
        jne     L_0094                          ; 75 6E
        add     byte ptr fs:[si + 0x44], bl     ; 64 00 5C 44
        inc     bp                              ; 45
        inc     dx                              ; 42
        inc     sp                              ; 44
        push    dx                              ; 52
        dec     cx                              ; 49
        push    si                              ; 56
        inc     bp                              ; 45
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        inc     ax                              ; 40
        inc     ax                              ; 40
        add     byte ptr [bx + si - 0x3f40], 0xff ; 80 80 C0 C0 FF
        inc     word ptr [bp + di]              ; FF 03
        cli                                     ; FA
        jns     L_004B                          ; 79 04
        sub     di, 0x7fb0                      ; 81 EF B0 7F
;   [conditional branch target (if/else)] L_004B
L_004B:
        sub     cl, 0x1c                        ; 80 E9 1C
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 0x32                        ; 80 E9 32
        add     di, dx                          ; 03 FA
        jns     L_005D                          ; 79 04
        add     di, 0x7fb0                      ; 81 C7 B0 7F
;   [conditional branch target (if/else)] L_005D
L_005D:
        sub     cl, 0x1c                        ; 80 E9 1C
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 0x32                        ; 80 E9 32
        add     di, dx                          ; 03 FA
        jns     L_006F                          ; 79 04
        sub     di, 0x7fb0                      ; 81 EF B0 7F
;   [conditional branch target (if/else)] L_006F
L_006F:
        sub     cl, 0x1c                        ; 80 E9 1C
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 0x32                        ; 80 E9 32
        add     di, dx                          ; 03 FA
;   [conditional branch target (if/else)] L_007B
L_007B:
        jns     L_0081                          ; 79 04
        add     di, 0x7fb0                      ; 81 C7 B0 7F
;   [conditional branch target (if/else)] L_0081
L_0081:
        sub     cl, 0x1c                        ; 80 E9 1C
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
;   [conditional branch target (if/else)] L_0088
L_0088:
        sub     cl, 0x32                        ; 80 E9 32
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 0x12                        ; 80 E9 12
        add     di, dx                          ; 03 FA
;   [conditional branch target (if/else)] L_0094
L_0094:
        jns     L_009A                          ; 79 04
        sub     di, 0x7fb0                      ; 81 EF B0 7F
;   [conditional branch target (if/else)] L_009A
L_009A:
        sub     cl, 0x3c                        ; 80 E9 3C
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 0x12                        ; 80 E9 12
        add     di, dx                          ; 03 FA
        jns     L_00AC                          ; 79 04
        add     di, 0x7fb0                      ; 81 C7 B0 7F
;   [conditional branch target (if/else)] L_00AC
L_00AC:
        sub     cl, 0x3c                        ; 80 E9 3C
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 0x12                        ; 80 E9 12
        add     di, dx                          ; 03 FA
        jns     L_00BE                          ; 79 04
        sub     di, 0x7fb0                      ; 81 EF B0 7F
;   [conditional branch target (if/else)] L_00BE
L_00BE:
        sub     cl, 0x3c                        ; 80 E9 3C
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 0x12                        ; 80 E9 12
        add     di, dx                          ; 03 FA
        jns     L_00D0                          ; 79 04
        add     di, 0x7fb0                      ; 81 C7 B0 7F
;   [conditional branch target (if/else)] L_00D0
L_00D0:
        sub     cl, 0x3c                        ; 80 E9 3C
        inc     bx                              ; 43
        add     byte ptr [di], dl               ; 00 55 00
        add     byte ptr [ecx], bh              ; 67 00 79 00
        mov     ax, word ptr [bx + si]          ; 8B 00
        popf                                    ; 9D
        add     byte ptr [bx - 0x3f00], ch      ; 00 AF 00 C1
        add     byte ptr [bx + si], ah          ; 00 60 00
        pushaw                                  ; 60
        add     byte ptr [bp + si], dh          ; 00 72 00
        jb      L_00EB                          ; 72 00
;   [conditional branch target (if/else)] L_00EB
L_00EB:
        mov     dh, 0                           ; B6 00
        enter   -0x4a00, 0                      ; C8 00 B6 00
        enter   0xb00, 0xb                      ; C8 00 0B 0B
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
        add     byte ptr [bx + si + 0x280], bh  ; 00 B8 80 02
        nop                                     ; 90
        add     word ptr [bx + si], dx          ; 01 50 00
        add     word ptr [bx + di], ax          ; 01 01
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si + 0x7d00], bh ; 00 B8 00 7D
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
        xlatb                                   ; D7
        add     byte ptr [bx + di - 0x8000], ah ; 00 A1 00 80
        add     dl, byte ptr [bx + si + 0x101]  ; 02 90 01 01
        add     byte ptr [bx + di], al          ; 00 01
        add     byte ptr [di], cl               ; 00 4D 00
        or      al, byte ptr [bx + si]          ; 0A 00
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
        xor     al, byte ptr [bx + si]          ; 32 00
        cmp     al, 0                           ; 3C 00
        dec     si                              ; 4E
        add     byte ptr [si + 0x6600], bl      ; 00 9C 00 66
        or      byte ptr [di + 6], cl           ; 08 4D 06
        add     byte ptr [bp + si], 0x70        ; 80 02 70
        db      0feh                            ; FE
        cld                                     ; FC
        push    bx                              ; 53
        std                                     ; FD
        add     byte ptr ds:[bp + si], 0x70     ; 3E 80 02 70
        db      0feh                            ; FE
        call    word ptr [si]                   ; FF 14
        cdq                                     ; 99
        or      al, 0xe0                        ; 0C E0
        movups  xmm7, xmm0                      ; 0F 10 F8
        sti                                     ; FB
        push    0x3efd                          ; 68 FD 3E
        db      0f0h                            ; F0
        pop     es                              ; 07
        or      ah, bh                          ; 08 FC
        retf                                    ; CB
        and     ax, 0x5ab4                      ; 25 B4 5A
        cld                                     ; FC
        add     word ptr [bx + si], cx          ; 01 08
        cld                                     ; FC
        pushaw                                  ; 60
        add     byte ptr [bx + si], dl          ; 00 50 00
        add     al, 0                           ; 04 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si + 0x20], 0x10 ; 80 40 20 10
        or      byte ptr [si], al               ; 08 04
        add     al, byte ptr [bx + di]          ; 02 01
; Description (heuristic):
;   Mixed routine using: GETPROFILEINT.

;-------------------------------------------------------------------------
; sub_01B3   offset=0x01B3  size=110 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=3, ASM=6)
; Prologue: saves_regs     Epilogue: ret
;
; Far API calls:
;   GETPROFILEINT
;-------------------------------------------------------------------------
;   [sub-routine] L_01B3
L_01B3:
        push    es                              ; 06
        push    di                              ; 57
        ; constant WM_PAINT
        mov     ah, 0xf                         ; B4 0F
        int     0x10                            ; CD 10
        pop     di                              ; 5F
        pop     es                              ; 07
        stosb   byte ptr es:[di], al            ; AA
        cmp     word ptr cs:[0x35], 0           ; 2E 83 3E 35 00 00
        je      L_01C7                          ; 74 03
        jmp     L_026A                          ; E9 A3 00
;   [conditional branch target (if/else)] L_01C7
L_01C7:
        dec     word ptr cs:[0x35]              ; 2E FF 0E 35 00
        mov     ax, 0x3d00                      ; B8 00 3D
        lea     dx, [0x28]                      ; 8D 16 28 00
        int     0x21                            ; CD 21
        jb      L_0247                          ; 72 70
        mov     bx, ax                          ; 8B D8
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
        jb      L_0247                          ; 72 68
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        mov     dx, 0x3dd                       ; BA DD 03
        out     dx, al                          ; EE
        mov     al, 0                           ; B0 00
        mov     dx, 0x3df                       ; BA DF 03
        out     dx, al                          ; EE
        mov     dx, 0x3da                       ; BA DA 03
        in      al, dx                          ; EC
        test    al, 0x40                        ; A8 40
        jne     L_0247                          ; 75 54
        dec     word ptr cs:[0x37]              ; 2E FF 0E 37 00
        mov     ax, 0                           ; B8 00 00
        mov     bx, 9                           ; BB 09 00
        mov     si, 0x12                        ; BE 12 00
        push    ds                              ; 1E
        push    bx                              ; 53
        push    ds                              ; 1E
        push    si                              ; 56
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x10                        ; 3D 10 00
        jb      L_0213                          ; 72 03
        mov     ax, 0                           ; B8 00 00
;   [conditional branch target (if/else)] L_0213
L_0213:
        mov     byte ptr cs:[0x33], al          ; 2E A2 33 00
        mov     ax, 7                           ; B8 07 00
        mov     bx, 9                           ; BB 09 00
        mov     si, 0x1d                        ; BE 1D 00
        push    ds                              ; 1E
        push    bx                              ; 53
        push    ds                              ; 1E
        push    si                              ; 56
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 07 02 00 00 [FIXUP]
        cmp     ax, 0x10                        ; 3D 10 00
        jb      L_0232                          ; 72 03
        mov     ax, 7                           ; B8 07 00
;   [conditional branch target (if/else)] L_0232
L_0232:
        cmp     byte ptr cs:[0x33], al          ; 2E 38 06 33 00
        jne     L_0241                          ; 75 08
        mov     al, byte ptr cs:[0x33]          ; 2E A0 33 00
        not     al                              ; F6 D0
        and     al, 0xf                         ; 24 0F
;   [conditional branch target (if/else)] L_0241
L_0241:
        mov     byte ptr cs:[0x34], al          ; 2E A2 34 00
        jmp     L_026A                          ; EB 23
;   [conditional branch target (if/else)] L_0247
L_0247:
        mov     ax, 7                           ; B8 07 00
        mov     bx, 0                           ; BB 00 00
        mov     si, 0x1d                        ; BE 1D 00
        push    ds                              ; 1E
        push    bx                              ; 53
        push    ds                              ; 1E
        push    si                              ; 56
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 26 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0263                          ; 74 05
        cmp     ax, 0x10                        ; 3D 10 00
        jb      L_0266                          ; 72 03
;   [conditional branch target (if/else)] L_0263
L_0263:
        mov     ax, 7                           ; B8 07 00
;   [conditional branch target (if/else)] L_0266
L_0266:
        mov     byte ptr cs:[0x34], al          ; 2E A2 34 00
;   [unconditional branch target] L_026A
L_026A:
        cmp     word ptr cs:[0x37], 0           ; 2E 83 3E 37 00 00
        je      L_0295                          ; 74 23
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        mov     byte ptr cs:[0x32], al          ; 2E A2 32 00
        int     0x10                            ; CD 10
        mov     ax, 0xb00                       ; B8 00 0B
        mov     bh, 0                           ; B7 00
        mov     bl, byte ptr cs:[0x33]          ; 2E 8A 1E 33 00
        int     0x10                            ; CD 10
        mov     ax, 0xb00                       ; B8 00 0B
        mov     bh, 8                           ; B7 08
        mov     bl, byte ptr cs:[0x34]          ; 2E 8A 1E 34 00
        int     0x10                            ; CD 10
        jmp     L_02AA                          ; EB 15
;   [conditional branch target (if/else)] L_0295
L_0295:
        mov     ax, 0x40                        ; B8 40 00
        mov     byte ptr cs:[0x32], al          ; 2E A2 32 00
        int     0x10                            ; CD 10
        mov     ax, 0xb00                       ; B8 00 0B
        mov     bh, 0                           ; B7 00
        mov     bl, byte ptr cs:[0x34]          ; 2E 8A 1E 34 00
        int     0x10                            ; CD 10
;   [unconditional branch target] L_02AA
L_02AA:
        push    es                              ; 06
        push    di                              ; 57
        ; constant WM_PAINT
        mov     ah, 0xf                         ; B4 0F
        int     0x10                            ; CD 10
        pop     di                              ; 5F
        pop     es                              ; 07
        xor     bx, bx                          ; 33 DB
        cmp     al, byte ptr cs:[0x32]          ; 2E 3A 06 32 00
        jne     L_02BD                          ; 75 02
        not     bx                              ; F7 D3
;   [error/early exit] L_02BD
L_02BD:
        mov     ax, bx                          ; 8B C3
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (1322 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_02C0   offset=0x02C0  size=1322 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=2, ASM=7)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_1B1F, L_1BAB, L_1EFB
;-------------------------------------------------------------------------
;   [sub-routine] L_02C0
L_02C0:
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
        jmp     0xffffe372                      ; E9 8A E0
        and     ax, bp                          ; 23 C5
        or      al, bh                          ; 0A C7
        mov     bh, ah                          ; 8A FC
        and     ax, 0xffff                      ; 25 FF FF
        or      al, ah                          ; 0A C4
        stosb   byte ptr es:[di], al            ; AA
        db      0ffh                            ; FF
        jg      L_0336                          ; 7F 3F
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
        loopne  L_0350                          ; E0 3F
        sar     byte ptr [bx - 0x80], 0xf6      ; C0 7F 80 F6
        sal     byte ptr [bp + si], 1           ; D0 32
        add     ax, 0x50a                       ; 05 0A 05
        and     al, byte ptr [di]               ; 22 05
        xor     al, bl                          ; 32 C3
;   [loop start] L_031E
L_031E:
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
        jp      L_031E                          ; 7A E7
        jns     L_02EF                          ; 79 B6
        insw    word ptr es:[di], dx            ; 6D
        stosb   byte ptr es:[di], al            ; AA
        stosb   byte ptr es:[di], al            ; AA
        stosb   byte ptr es:[di], al            ; AA
        stosb   byte ptr es:[di], al            ; AA
        and     ax, 0x3947                      ; 25 47 39
        inc     di                              ; 47
        cmp     word ptr [bp - 0x74], ax        ; 39 46 8C
        L_0336:
        fcom    dword ptr [bx + si + 0x5545]    ; D8 90 45 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x38                        ; B8 38 00
        call    L_1EFB                          ; E8 A7 1B
        push    si                              ; 56
        push    di                              ; 57
        jae     L_035B                          ; 73 03
        jmp     L_08F8                          ; E9 9D 05
;   [conditional branch target (if/else)] L_035B
L_035B:
        cld                                     ; FC
        mov     cx, 0x100                       ; B9 00 01
        L_0350:
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_03DF                          ; 74 70
        mov     byte ptr [bp - 5], cl           ; 88 4E FB
        mov     dx, 0xc0                        ; BA C0 00
        xchg    cl, ch                          ; 86 E9
;   [loop start] L_0377
L_0377:
        inc     ch                              ; FE C5
        test    dx, ax                          ; 85 C2
        je      L_0381                          ; 74 04
        inc     cl                              ; FE C1
        xor     ch, ch                          ; 32 ED
;   [conditional branch target (if/else)] L_0381
L_0381:
        shl     dx, 1                           ; D1 E2
        shl     dx, 1                           ; D1 E2
        jae     L_0377                          ; 73 F0
        ; constant WM_SIZE
        mov     dl, 5                           ; B2 05
        test    ax, 0x20                        ; A9 20 00
        je      L_0392                          ; 74 04
        inc     ch                              ; FE C5
        inc     dl                              ; FE C2
;   [conditional branch target (if/else)] L_0392
L_0392:
        and     ch, 0xfe                        ; 80 E5 FE
        sub     dl, ch                          ; 2A D5
        mov     byte ptr [bp - 0x33], dl        ; 88 56 CD
        mov     bx, ax                          ; 8B D8
        and     bx, 0x1c                        ; 81 E3 1C 00
        shr     bx, 1                           ; D1 EB
        and     al, 3                           ; 24 03
        cmp     bl, 5                           ; 80 FB 05
        jb      L_03AC                          ; 72 03
        add     cl, 2                           ; 80 C1 02
;   [conditional branch target (if/else)] L_03AC
L_03AC:
        mov     dl, cl                          ; 8A D1
        add     cl, al                          ; 02 C8
        add     cl, cl                          ; 02 C9
        mov     bx, word ptr cs:[bx + 0x334]    ; 2E 8B 9F 34 03
        rol     bx, cl                          ; D3 C3
        mov     word ptr [bp - 0x32], bx        ; 89 5E CE
;   [loop start] L_03BC
L_03BC:
        mov     si, bx                          ; 8B F3
        and     si, 3                           ; 81 E6 03 00
        ror     bx, 1                           ; D1 CB
        ror     bx, 1                           ; D1 CB
        inc     byte ptr [bp + si - 6]          ; FE 42 FA
        dec     dl                              ; FE CA
        jne     L_03BC                          ; 75 EF
        test    byte ptr [bp - 6], 1            ; F6 46 FA 01
        je      L_03D8                          ; 74 05
;   [loop start] L_03D3
L_03D3:
        xor     ax, ax                          ; 33 C0
        jmp     L_08F4                          ; E9 1C 05
;   [conditional branch target (if/else)] L_03D8
L_03D8:
        xor     cx, cx                          ; 33 C9
        mov     cl, byte ptr [bp - 5]           ; 8A 4E FB
        jcxz    L_03FA                          ; E3 1B
;   [conditional branch target (if/else)] L_03DF
L_03DF:
        lds     si, ptr [bp + 0x1a]             ; C5 76 1A
        lodsw   ax, word ptr [si]               ; AD
        mov     cx, ax                          ; 8B C8
        add     si, 4                           ; 83 C6 04
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, 0x101                       ; 3D 01 01
        jne     L_03D3                          ; 75 E1
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
;   [conditional branch target (if/else)] L_03FA
L_03FA:
        mov     word ptr [bp - 0x26], cx        ; 89 4E DA
        cmp     byte ptr [bp - 3], 0            ; 80 7E FD 00
        je      L_040C                          ; 74 09
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        cmp     word ptr [si + 8], 1            ; 83 7C 08 01
        je      L_03D3                          ; 74 C7
;   [conditional branch target (if/else)] L_040C
L_040C:
        lds     si, ptr [bp + 0x22]             ; C5 76 22
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        add     si, 4                           ; 83 C6 04
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, 0x101                       ; 3D 01 01
        jne     L_03D3                          ; 75 B3
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     si, word ptr [bp + 0x14]        ; 8B 76 14
        or      si, si                          ; 0B F6
        je      L_03D3                          ; 74 A4
        mov     di, word ptr [bp + 0x12]        ; 8B 7E 12
        or      di, di                          ; 0B FF
        je      L_03D3                          ; 74 9D
        dec     si                              ; 4E
        dec     di                              ; 4F
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        or      ax, word ptr [bp - 0x2e]        ; 0B 46 D2
        je      L_0474                          ; 74 34
        mov     cx, word ptr [bp + 0x20]        ; 8B 4E 20
        mov     dx, word ptr [bp + 0x1e]        ; 8B 56 1E
        cmp     word ptr [bp - 0x26], 0         ; 83 7E DA 00
        je      L_046D                          ; 74 21
        mov     ax, cx                          ; 8B C1
        mov     bx, dx                          ; 8B DA
        mov     cx, word ptr [bp + 0x18]        ; 8B 4E 18
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        je      L_046D                          ; 74 11
        cmp     cx, ax                          ; 3B C8
        jle     L_0461                          ; 7E 01
        xchg    cx, ax                          ; 91
;   [conditional branch target (if/else)] L_0461
L_0461:
        cmp     dx, bx                          ; 3B D3
        jle     L_0467                          ; 7E 02
        xchg    bx, dx                          ; 87 D3
;   [conditional branch target (if/else)] L_0467
L_0467:
        add     si, ax                          ; 03 F0
        add     di, bx                          ; 03 FB
        jmp     L_0471                          ; EB 04
;   [conditional branch target (if/else)] L_046D
L_046D:
        add     si, cx                          ; 03 F1
        add     di, dx                          ; 03 FA
;   [unconditional branch target] L_0471
L_0471:
        call    L_1B1F                          ; E8 AB 16
;   [conditional branch target (if/else)] L_0474
L_0474:
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        dec     dx                              ; 4A
        mov     bx, word ptr [bp + 0x20]        ; 8B 5E 20
        mov     di, bx                          ; 8B FB
        and     bx, 7                           ; 81 E3 07 00
        mov     ax, di                          ; 8B C7
        cmp     byte ptr [bp - 5], 0            ; 80 7E FB 00
        je      L_0490                          ; 74 07
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     byte ptr [bp - 0xa], 2          ; C6 46 F6 02
;   [conditional branch target (if/else)] L_0490
L_0490:
        mov     si, ax                          ; 8B F0
        and     ax, 7                           ; 25 07 00
        cmp     si, di                          ; 3B F7
        jl      L_04C7                          ; 7C 2E
        sub     al, bl                          ; 2A C3
        mov     byte ptr [bp - 0xb], 1          ; C6 46 F5 01
        mov     ch, byte ptr cs:[bx + 0x2f4]    ; 2E 8A AF F4 02
        ja      L_04AA                          ; 77 04
        mov     byte ptr [bp - 0xa], 1          ; C6 46 F6 01
;   [conditional branch target (if/else)] L_04AA
L_04AA:
        add     al, 8                           ; 04 08
        and     al, 7                           ; 24 07
        add     bx, dx                          ; 03 DA
        mov     dx, bx                          ; 8B D3
        and     bx, 7                           ; 81 E3 07 00
        mov     cl, byte ptr cs:[bx + 0x2fc]    ; 2E 8A 8F FC 02
        mov     bl, al                          ; 8A D8
        add     bx, bx                          ; 03 DB
        mov     bx, word ptr cs:[bx + 0x304]    ; 2E 8B 9F 04 03
        jmp     L_04FD                          ; EB 37
        nop                                     ; 90
;   [conditional branch target (if/else)] L_04C7
L_04C7:
        mov     byte ptr [bp - 0xb], 0          ; C6 46 F5 00
        mov     cl, byte ptr cs:[bx + 0x2f4]    ; 2E 8A 8F F4 02
        add     ax, dx                          ; 03 C2
        add     bx, dx                          ; 03 DA
        add     di, dx                          ; 03 FA
        add     si, dx                          ; 03 F2
        mov     dx, bx                          ; 8B D3
        and     ax, 7                           ; 25 07 00
        and     bx, 7                           ; 81 E3 07 00
        mov     ch, byte ptr cs:[bx + 0x2fc]    ; 2E 8A AF FC 02
        sub     al, bl                          ; 2A C3
        jb      L_04EE                          ; 72 04
        mov     byte ptr [bp - 0xa], 1          ; C6 46 F6 01
;   [conditional branch target (if/else)] L_04EE
L_04EE:
        add     al, 8                           ; 04 08
        and     al, 7                           ; 24 07
        mov     ah, cl                          ; 8A E1
        mov     cl, al                          ; 8A C8
        mov     bx, 0xff                        ; BB FF 00
        shl     bx, cl                          ; D3 E3
        mov     cl, ah                          ; 8A CC
;   [unconditional branch target] L_04FD
L_04FD:
        mov     byte ptr [bp - 7], al           ; 88 46 F9
        mov     word ptr [bp - 0x12], bx        ; 89 5E EE
        shr     dx, 1                           ; D1 EA
        shr     dx, 1                           ; D1 EA
        shr     dx, 1                           ; D1 EA
        jne     L_0510                          ; 75 05
        and     ch, cl                          ; 22 E9
        xor     cl, cl                          ; 32 C9
        inc     dx                              ; 42
;   [conditional branch target (if/else)] L_0510
L_0510:
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
        je      L_0544                          ; 74 0C
        shr     si, 1                           ; D1 EE
        shr     si, 1                           ; D1 EE
        shr     si, 1                           ; D1 EE
        add     word ptr [bp - 0x16], si        ; 01 76 EA
        mov     cx, word ptr [bp + 0x16]        ; 8B 4E 16
;   [conditional branch target (if/else)] L_0544
L_0544:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        ; constant WM_CREATE
        mov     dh, 1                           ; B6 01
        cmp     cx, bx                          ; 3B CB
        jge     L_0554                          ; 7D 07
        dec     ax                              ; 48
        add     bx, ax                          ; 03 D8
        add     cx, ax                          ; 03 C8
        mov     dh, 0xff                        ; B6 FF
;   [conditional branch target (if/else)] L_0554
L_0554:
        mov     byte ptr [bp - 8], bl           ; 88 5E F8
        mov     byte ptr [bp - 9], dh           ; 88 76 F7
        mov     di, word ptr [bp - 0x30]        ; 8B 7E D0
        mov     si, di                          ; 8B F7
        mov     ax, di                          ; 8B C7
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        je      L_058A                          ; 74 23
        mov     di, 0x2000                      ; BF 00 20
        mov     si, 0xa050                      ; BE 50 A0
        test    byte ptr [bp - 9], 0x80         ; F6 46 F7 80
        je      L_0578                          ; 74 05
        mov     si, 0x6050                      ; BE 50 60
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_0578
L_0578:
        shr     bx, 1                           ; D1 EB
        jae     L_0581                          ; 73 05
        add     word ptr [bp - 0x1a], 0x2000    ; 81 46 E6 00 20
;   [conditional branch target (if/else)] L_0581
L_0581:
        shr     bx, 1                           ; D1 EB
        jae     L_058A                          ; 73 05
        add     word ptr [bp - 0x1a], 0x4000    ; 81 46 E6 00 40
;   [conditional branch target (if/else)] L_058A
L_058A:
        mul     bx                              ; F7 E3
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        test    byte ptr [bp - 9], 0x80         ; F6 46 F7 80
        je      L_059B                          ; 74 06
        neg     di                              ; F7 DF
        neg     si                              ; F7 DE
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_059B
L_059B:
        xor     si, di                          ; 33 F7
        mov     word ptr [bp - 0x2c], di        ; 89 7E D4
        mov     word ptr [bp - 0x2a], si        ; 89 76 D6
        cmp     byte ptr [bp - 5], 0            ; 80 7E FB 00
        je      L_05F2                          ; 74 49
        mov     di, word ptr [bp - 0x28]        ; 8B 7E D8
        mov     si, di                          ; 8B F7
        mov     ax, di                          ; 8B C7
        cmp     word ptr [bp - 0x26], 0         ; 83 7E DA 00
        je      L_05D9                          ; 74 23
        mov     di, 0x2000                      ; BF 00 20
        mov     si, 0xa050                      ; BE 50 A0
        test    byte ptr [bp - 9], 0x80         ; F6 46 F7 80
        je      L_05C7                          ; 74 05
        mov     si, 0x6050                      ; BE 50 60
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_05C7
L_05C7:
        shr     cx, 1                           ; D1 E9
        jae     L_05D0                          ; 73 05
        add     word ptr [bp - 0x16], 0x2000    ; 81 46 EA 00 20
;   [conditional branch target (if/else)] L_05D0
L_05D0:
        shr     cx, 1                           ; D1 E9
        jae     L_05D9                          ; 73 05
        add     word ptr [bp - 0x16], 0x4000    ; 81 46 EA 00 40
;   [conditional branch target (if/else)] L_05D9
L_05D9:
        mul     cx                              ; F7 E1
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
        test    byte ptr [bp - 9], 0x80         ; F6 46 F7 80
        je      L_05EA                          ; 74 06
        neg     di                              ; F7 DF
        neg     si                              ; F7 DE
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_05EA
L_05EA:
        xor     si, di                          ; 33 F7
        mov     word ptr [bp - 0x24], di        ; 89 7E DC
        mov     word ptr [bp - 0x22], si        ; 89 76 DE
;   [conditional branch target (if/else)] L_05F2
L_05F2:
        mov     ax, 0x17e                       ; B8 7E 01
        call    L_1EFB                          ; E8 03 19
        jae     L_05FD                          ; 73 03
        jmp     L_08F4                          ; E9 F7 02
;   [conditional branch target (if/else)] L_05FD
L_05FD:
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
        je      L_061F                          ; 74 03
        mov     al, 0x56                        ; B0 56
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_061F
L_061F:
        cmp     byte ptr [bp - 3], 0            ; 80 7E FD 00
        je      L_0647                          ; 74 22
        mov     si, 0x2ca                       ; BE CA 02
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
;   [conditional branch target (if/else)] L_0647
L_0647:
        mov     bx, di                          ; 8B DF
        xor     dx, dx                          ; 33 D2
        or      dl, byte ptr [bp - 5]           ; 0A 56 FB
        je      L_0689                          ; 74 39
        or      dh, byte ptr [bp - 7]           ; 0A 76 F9
        je      L_0660                          ; 74 0B
        mov     al, 0xbd                        ; B0 BD
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xff32                      ; B8 32 FF
        stosw   word ptr es:[di], ax            ; AB
;   [loop start (also forward branch)] L_0660
L_0660:
        mov     bx, di                          ; 8B DF
        mov     al, 0xac                        ; B0 AC
        stosb   byte ptr es:[di], al            ; AA
        or      dh, dh                          ; 0A F6
        je      L_0684                          ; 74 1B
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        mov     ax, 0xc0d0                      ; B8 D0 C0
        cmp     cl, 5                           ; 80 F9 05
        jb      L_067B                          ; 72 08
        neg     cl                              ; F6 D9
        add     cl, 8                           ; 80 C1 08
        mov     ax, 0xc8d0                      ; B8 D0 C8
;   [conditional branch target (if/else)] L_067B
L_067B:
        rep stosw word ptr es:[di], ax          ; F3 AB
        mov     si, 0x2e6                       ; BE E6 02
        mov     cl, 4                           ; B1 04
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
;   [conditional branch target (if/else)] L_0684
L_0684:
        dec     byte ptr [bp - 0xa]             ; FE 4E F6
        jne     L_0660                          ; 75 D7
;   [conditional branch target (if/else)] L_0689
L_0689:
        mov     word ptr [bp - 0x36], bx        ; 89 5E CA
        xor     dh, dh                          ; 32 F6
        mov     cx, word ptr [bp + 0xe]         ; 8B 4E 0E
        cmp     cx, 0x20                        ; 83 F9 20
        jne     L_0699                          ; 75 03
        jmp     L_0746                          ; E9 AD 00
;   [conditional branch target (if/else)] L_0699
L_0699:
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        mov     si, word ptr [bp - 0x32]        ; 8B 76 CE
        mov     dl, byte ptr [bp - 0x33]        ; 8A 56 CD
        cmp     byte ptr [bp - 5], 1            ; 80 7E FB 01
        jb      L_06B7                          ; 72 0E
        jne     L_06B3                          ; 75 08
        mov     ax, si                          ; 8B C6
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        je      L_06B7                          ; 74 04
;   [conditional branch target (if/else)] L_06B3
L_06B3:
        mov     ax, 0xd08a                      ; B8 8A D0
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_06B7
L_06B7:
        cmp     byte ptr [bp - 4], 2            ; 80 7E FC 02
        jb      L_06C7                          ; 72 0A
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x258a                      ; B8 8A 25
        stosw   word ptr es:[di], ax            ; AB
        or      dh, 2                           ; 80 CE 02
;   [loop start (also forward branch)] L_06C7
L_06C7:
        mov     ax, si                          ; 8B C6
        and     ax, 3                           ; 25 03 00
        dec     ax                              ; 48
        jne     L_06DC                          ; 75 0D
        test    dh, 1                           ; F6 C6 01
        je      L_0742                          ; 74 6E
        and     dh, 0xfe                        ; 80 E6 FE
        mov     ax, 0xc28a                      ; B8 8A C2
        jmp     L_0741                          ; EB 65
;   [conditional branch target (if/else)] L_06DC
L_06DC:
        dec     ax                              ; 48
        mov     ax, 0xc68a                      ; B8 8A C6
        jne     L_073E                          ; 75 5C
        mov     ax, 0xc48a                      ; B8 8A C4
        test    dh, 2                           ; F6 C6 02
        jne     L_073E                          ; 75 54
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x58a                       ; B8 8A 05
        jmp     L_073E                          ; EB 4C
;   [loop start] L_06F2
L_06F2:
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        mov     bx, cx                          ; 8B D9
        and     bx, 0xc                         ; 81 E3 0C 00
        mov     ax, 0xd0f6                      ; B8 F6 D0
        je      L_073E                          ; 74 3D
        ror     si, 1                           ; D1 CE
        ror     si, 1                           ; D1 CE
        mov     ax, si                          ; 8B C6
        and     ax, 3                           ; 25 03 00
        jne     L_0724                          ; 75 18
        xor     dh, 4                           ; 80 F6 04
        test    dh, 4                           ; F6 C6 04
        je      L_0724                          ; 74 10
        mov     ax, 0xd88a                      ; B8 8A D8
        stosw   word ptr es:[di], ax            ; AB
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        ror     si, 1                           ; D1 CE
        ror     si, 1                           ; D1 CE
        inc     dl                              ; FE C2
        jmp     L_06C7                          ; EB A3
;   [conditional branch target (if/else)] L_0724
L_0724:
        or      bx, ax                          ; 0B D8
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0737                          ; 75 0C
        test    dh, 2                           ; F6 C6 02
        jne     L_0737                          ; 75 07
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        shr     bx, 1                           ; D1 EB
        shr     bx, 1                           ; D1 EB
;   [conditional branch target (if/else)] L_0737
L_0737:
        add     bx, bx                          ; 03 DB
        mov     ax, word ptr cs:[bx + 0x314]    ; 2E 8B 87 14 03
;   [branch target] L_073E
L_073E:
        or      dh, 1                           ; 80 CE 01
;   [unconditional branch target] L_0741
L_0741:
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0742
L_0742:
        dec     dl                              ; FE CA
        jge     L_06F2                          ; 7D AC
;   [unconditional branch target] L_0746
L_0746:
        mov     word ptr [bp - 0x38], di        ; 89 7E C8
        test    dh, 2                           ; F6 C6 02
        jne     L_0755                          ; 75 07
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x258a                      ; B8 8A 25
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0755
L_0755:
        mov     si, 0x2ee                       ; BE EE 02
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
        je      L_07D9                          ; 74 67
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        test    bx, 0x1c                        ; F7 C3 1C 00
        jne     L_07DB                          ; 75 60
        test    bl, 3                           ; F6 C3 03
        je      L_079F                          ; 74 1F
        mov     ax, 0xffb0                      ; B8 B0 FF
        test    bl, 1                           ; F6 C3 01
        je      L_078B                          ; 74 03
        mov     ax, 0xc68a                      ; B8 8A C6
;   [conditional branch target (if/else)] L_078B
L_078B:
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xe08a                      ; B8 8A E0
        stosw   word ptr es:[di], ax            ; AB
        mov     si, 0xaa                        ; BE AA 00
        test    bx, 0x20                        ; F7 C3 20 00
        jne     L_07A8                          ; 75 0F
        mov     ax, 0xd0f7                      ; B8 F7 D0
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_07A8                          ; EB 09
;   [conditional branch target (if/else)] L_079F
L_079F:
        test    byte ptr [bp - 7], 0xff         ; F6 46 F9 FF
        jne     L_07DB                          ; 75 36
        mov     si, 0xa4                        ; BE A4 00
;   [branch target] L_07A8
L_07A8:
        shr     dx, 1                           ; D1 EA
        jae     L_07AF                          ; 73 03
        mov     ax, si                          ; 8B C6
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_07AF
L_07AF:
        je      L_07D9                          ; 74 28
        xor     bx, bx                          ; 33 DB
        cmp     bl, byte ptr [bp - 0xb]         ; 3A 5E F5
        jne     L_07BF                          ; 75 07
        mov     ax, 0x4f4e                      ; B8 4E 4F
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, 0x4746                      ; BB 46 47
;   [conditional branch target (if/else)] L_07BF
L_07BF:
        cmp     dx, 1                           ; 83 FA 01
        je      L_07CE                          ; 74 0A
        mov     al, 0xb9                        ; B0 B9
        mov     ah, dl                          ; 8A E2
        stosw   word ptr es:[di], ax            ; AB
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        mov     ah, 0xf3                        ; B4 F3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_07CE
L_07CE:
        mov     ax, si                          ; 8B C6
        inc     ax                              ; 40
        stosb   byte ptr es:[di], al            ; AA
        or      bx, bx                          ; 0B DB
        je      L_07D9                          ; 74 03
        mov     ax, bx                          ; 8B C3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_07D9
L_07D9:
        jmp     L_0854                          ; EB 79
;   [conditional branch target (if/else)] L_07DB
L_07DB:
        cmp     dx, 5                           ; 83 FA 05
        jb      L_07F8                          ; 72 18
        mov     al, 0xb9                        ; B0 B9
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, dx                          ; 8B C2
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        and     al, 3                           ; 24 03
        je      L_07F8                          ; 74 08
        mov     al, 0xe9                        ; B0 E9
        stosb   byte ptr es:[di], al            ; AA
        stosw   word ptr es:[di], ax            ; AB
        inc     word ptr es:[di - 5]            ; 26 FF 45 FB
;   [conditional branch target (if/else)] L_07F8
L_07F8:
        push    di                              ; 57
        mov     bx, dx                          ; 8B DA
        cmp     bx, 5                           ; 83 FB 05
        jb      L_0802                          ; 72 02
        mov     bl, 4                           ; B3 04
;   [conditional branch target (if/else)] L_0802
L_0802:
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
        je      L_0824                          ; 74 0C
        mov     al, bh                          ; 8A C7
        mul     bl                              ; F6 E3
        mov     cx, ax                          ; 8B C8
        mov     ax, si                          ; 8B C6
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, ax                          ; 8B F0
;   [conditional branch target (if/else)] L_0824
L_0824:
        cmp     dx, 5                           ; 83 FA 05
        jb      L_0854                          ; 72 2B
        mov     ax, dx                          ; 8B C2
        neg     ax                              ; F7 D8
        and     al, 3                           ; 24 03
        je      L_0837                          ; 74 06
        mul     bh                              ; F6 E7
        mov     word ptr es:[si - 2], ax        ; 26 89 44 FE
;   [conditional branch target (if/else)] L_0837
L_0837:
        mov     ax, si                          ; 8B C6
        sub     ax, di                          ; 2B C7
        cmp     ax, 0xff83                      ; 3D 83 FF
        jb      L_0849                          ; 72 09
        sub     al, 2                           ; 2C 02
        mov     ah, al                          ; 8A E0
        mov     al, 0xe2                        ; B0 E2
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0854                          ; EB 0B
;   [conditional branch target (if/else)] L_0849
L_0849:
        mov     si, 0x2e2                       ; BE E2 02
        movsw   word ptr es:[di], word ptr cs:[si] ; 2E A5
        movsw   word ptr es:[di], word ptr cs:[si] ; 2E A5
        sub     ax, 6                           ; 2D 06 00
        stosw   word ptr es:[di], ax            ; AB
;   [branch target] L_0854
L_0854:
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        or      dh, dh                          ; 0A F6
        je      L_086A                          ; 74 0F
        mov     cx, word ptr [bp - 0x3a]        ; 8B 4E C6
        mov     si, word ptr [bp - 0x36]        ; 8B 76 CA
        sub     cx, si                          ; 2B CE
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        xchg    dl, dh                          ; 86 F2
        mov     word ptr [di - 5], dx           ; 89 55 FB
;   [conditional branch target (if/else)] L_086A
L_086A:
        mov     cl, byte ptr [bp - 5]           ; 8A 4E FB
        or      cl, cl                          ; 0A C9
        je      L_0890                          ; 74 1F
        mov     al, 0x5e                        ; B0 5E
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     dx, di                          ; 8B D7
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        or      bx, bx                          ; 0B DB
        je      L_0890                          ; 74 0B
        mov     ax, 0x479                       ; B8 79 04
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, bx                          ; 8B C3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0890
L_0890:
        mov     ax, 0x595f                      ; B8 5F 59
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc781                      ; B8 81 C7
        stosw   word ptr es:[di], ax            ; AB
        mov     dx, di                          ; 8B D7
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, word ptr [bp - 0x2a]        ; 8B 5E D6
        or      bx, bx                          ; 0B DB
        je      L_08B0                          ; 74 0B
        mov     ax, 0x479                       ; B8 79 04
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc781                      ; B8 81 C7
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, bx                          ; 8B C3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_08B0
L_08B0:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, di                          ; 2B C7
        cmp     ax, 0xff83                      ; 3D 83 FF
        jb      L_08C7                          ; 72 09
        sub     al, 2                           ; 2C 02
        mov     ah, al                          ; 8A E0
        mov     al, 0xe2                        ; B0 E2
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_08D0                          ; EB 09
;   [conditional branch target (if/else)] L_08C7
L_08C7:
        mov     si, 0x2e2                       ; BE E2 02
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        sub     ax, 6                           ; 2D 06 00
        stosw   word ptr es:[di], ax            ; AB
;   [unconditional branch target] L_08D0
L_08D0:
        mov     al, 0xcb                        ; B0 CB
        stosb   byte ptr es:[di], al            ; AA
        or      cl, cl                          ; 0A C9
        je      L_08DA                          ; 74 03
        lds     si, ptr [bp - 0x16]             ; C5 76 EA
;   [conditional branch target (if/else)] L_08DA
L_08DA:
        les     di, ptr [bp - 0x1a]             ; C4 7E E6
        mov     cx, word ptr [bp + 0x12]        ; 8B 4E 12
        cld                                     ; FC
        cmp     byte ptr [bp - 0xb], 1          ; 80 7E F5 01
        je      L_08E8                          ; 74 01
        std                                     ; FD
;   [conditional branch target (if/else)] L_08E8
L_08E8:
        push    bp                              ; 55
        lcall   [bp - 0x1e]                     ; FF 5E E2
        pop     bp                              ; 5D
        add     sp, 0x15e                       ; 81 C4 5E 01
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_08F4
L_08F4:
        cld                                     ; FC
        call    L_1BAB                          ; E8 B3 12
;   [unconditional branch target] L_08F8
L_08F8:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x20                            ; CA 20 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x2e                        ; B8 2E 00
        call    L_1EFB                          ; E8 E6 15
        push    si                              ; 56
        push    di                              ; 57
        jb      L_092D                          ; 72 14
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x20                        ; 05 20 00
        mov     cx, ax                          ; 8B C8
        call    L_1EFB                          ; E8 D0 15
        jae     L_0930                          ; 73 03
;   [conditional branch target (if/else)] L_092D
L_092D:
        jmp     L_0DD1                          ; E9 A1 04
;   [conditional branch target (if/else)] L_0930
L_0930:
        add     sp, cx                          ; 03 E1
        mov     word ptr [bp - 8], sp           ; 89 66 F8
        lds     si, ptr [bp + 0x18]             ; C5 76 18
        les     di, ptr [bp + 0xe]              ; C4 7E 0E
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, ax                          ; 0B C0
        je      L_0995                          ; 74 53
        jg      L_094B                          ; 7F 07
        neg     ax                              ; F7 D8
        xor     bx, bx                          ; 33 DB
        mov     word ptr [bp + 0x18], bx        ; 89 5E 18
;   [conditional branch target (if/else)] L_094B
L_094B:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     cx, word ptr es:[di + 0x21]     ; 26 8B 4D 21
        mov     word ptr [bp - 0x18], cx        ; 89 4E E8
        mov     ax, word ptr es:[di + 0x14]     ; 26 8B 45 14
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        or      si, si                          ; 0B F6
        je      L_0998                          ; 74 38
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     dx, ax                          ; 8B D0
        sub     ax, word ptr [bp + 0x1c]        ; 2B 46 1C
        mov     bx, ax                          ; 8B D8
        jge     L_0970                          ; 7D 04
        sub     dx, bx                          ; 2B D3
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_0970
L_0970:
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        mov     dx, word ptr es:[di + 0x16]     ; 26 8B 55 16
        cmp     bx, dx                          ; 3B DA
        jge     L_0995                          ; 7D 17
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [bp + 0x1c]        ; 2B 46 1C
        cmp     ax, dx                          ; 3B C2
        jl      L_098A                          ; 7C 02
        mov     ax, dx                          ; 8B C2
;   [conditional branch target (if/else)] L_098A
L_098A:
        or      ax, ax                          ; 0B C0
        jle     L_0995                          ; 7E 07
        cmp     ax, bx                          ; 3B C3
        jle     L_0995                          ; 7E 03
        jmp     L_09A7                          ; EB 13
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0995
L_0995:
        jmp     L_0DCB                          ; E9 33 04
;   [conditional branch target (if/else)] L_0998
L_0998:
        mov     bx, word ptr [bp + 0x1c]        ; 8B 5E 1C
        mov     word ptr [bp - 0x20], bx        ; 89 5E E0
        mov     word ptr [bp - 0x22], bx        ; 89 5E DE
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr es:[di + 0x16]     ; 26 8B 45 16
;   [unconditional branch target] L_09A7
L_09A7:
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
        je      L_0A23                          ; 74 47
        mov     dx, 0xe07                       ; BA 07 0E
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     word ptr [si + 0xc], 0          ; 83 7C 0C 00
        je      L_0A0B                          ; 74 23
        mov     dx, 0xe2d                       ; BA 2D 0E
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
;   [conditional branch target (if/else)] L_0A0B
L_0A0B:
        mov     dx, word ptr [si + 0x16]        ; 8B 54 16
        mov     si, 0xdeb                       ; BE EB 0D
        or      dx, dx                          ; 0B D2
        je      L_0A67                          ; 74 52
        mov     si, 0xde5                       ; BE E5 0D
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        jmp     L_0A67                          ; EB 45
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0A23
L_0A23:
        mov     dx, 0xe69                       ; BA 69 0E
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     word ptr [si + 0xc], 0          ; 83 7C 0C 00
        je      L_0A52                          ; 74 23
        mov     dx, 0xe19                       ; BA 19 0E
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
;   [conditional branch target (if/else)] L_0A52
L_0A52:
        mov     dx, word ptr [si + 0x16]        ; 8B 54 16
        mov     si, 0xe51                       ; BE 51 0E
        or      dx, dx                          ; 0B D2
        je      L_0A67                          ; 74 0B
        mov     si, 0xe4b                       ; BE 4B 0E
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
;   [branch target] L_0A67
L_0A67:
        mov     word ptr [bp - 0x10], si        ; 89 76 F0
        xor     si, 0xe8a                       ; 81 F6 8A 0E
        mov     word ptr [bp - 0x14], si        ; 89 76 EC
        lds     si, ptr [bp + 0x20]             ; C5 76 20
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        add     ax, word ptr [bp + 0x1c]        ; 03 46 1C
        xor     cx, cx                          ; 33 C9
        mov     bx, dx                          ; 8B DA
        xor     di, di                          ; 33 FF
        cmp     word ptr [si], cx               ; 39 0C
        je      L_0A9A                          ; 74 16
        mov     bx, 0x2000                      ; BB 00 20
        mov     cx, 0x7fb0                      ; B9 B0 7F
        shr     ax, 1                           ; D1 E8
        jae     L_0A92                          ; 73 04
        add     di, 0x2000                      ; 81 C7 00 20
;   [conditional branch target (if/else)] L_0A92
L_0A92:
        shr     ax, 1                           ; D1 E8
        jae     L_0A9A                          ; 73 04
        add     di, 0x4000                      ; 81 C7 00 40
;   [conditional branch target (if/else)] L_0A9A
L_0A9A:
        mul     dx                              ; F7 E2
        add     ax, di                          ; 03 C7
        mov     word ptr [bp - 0xc], bx         ; 89 5E F4
        mov     word ptr [bp - 0xe], cx         ; 89 4E F2
        lds     si, ptr [bp + 0x18]             ; C5 76 18
        mov     bx, word ptr [bp + 0x1e]        ; 8B 5E 1E
        or      si, si                          ; 0B F6
        je      L_0B21                          ; 74 73
        mov     cx, word ptr [si]               ; 8B 0C
        mov     word ptr [bp - 0x1c], cx        ; 89 4E E4
        mov     di, bx                          ; 8B FB
        mov     dx, word ptr [si + 4]           ; 8B 54 04
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        sub     dx, cx                          ; 2B D1
        sub     bx, cx                          ; 2B D9
        jl      L_0ACA                          ; 7C 09
        mov     word ptr [bp - 0x1c], di        ; 89 7E E4
        mov     cx, di                          ; 8B CF
        sub     dx, bx                          ; 2B D3
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_0ACA
L_0ACA:
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
        jge     L_0B5E                          ; 7D 77
        lds     si, ptr [bp + 0x14]             ; C5 76 14
        les     di, ptr [bp + 0xe]              ; C4 7E 0E
;   [loop start] L_0AED
L_0AED:
        call    word ptr [bp - 0x10]            ; FF 56 F0
        jle     L_0AED                          ; 7E FB
        or      ax, ax                          ; 0B C0
        je      L_0B14                          ; 74 1E
        add     ax, cx                          ; 03 C1
        sub     ax, bx                          ; 2B C3
        mov     cx, bx                          ; 8B CB
        sub     bx, dx                          ; 2B DA
;   [loop start] L_0AFE
L_0AFE:
        jge     L_0B6D                          ; 7D 6D
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
        call    word ptr [bp - 0x10]            ; FF 56 F0
        jmp     L_0AFE                          ; EB EA
;   [conditional branch target (if/else)] L_0B14
L_0B14:
        add     ax, cx                          ; 03 C1
        sub     ax, bx                          ; 2B C3
        and     ax, 7                           ; 25 07 00
        mov     cx, bx                          ; 8B CB
        sub     bx, dx                          ; 2B DA
        jmp     L_0AFE                          ; EB DD
;   [conditional branch target (if/else)] L_0B21
L_0B21:
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
;   [loop start] L_0B4A
L_0B4A:
        call    word ptr [bp - 0x10]            ; FF 56 F0
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
        jmp     L_0B4A                          ; EB EC
;   [loop start (also forward branch)] L_0B5E
L_0B5E:
        jmp     L_0DCB                          ; E9 6A 02
;   [loop start] L_0B61
L_0B61:
        pop     dx                              ; 5A
        pop     si                              ; 5E
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        dec     ax                              ; 48
        push    ax                              ; 50
        push    si                              ; 56
        push    dx                              ; 52
        jmp     L_0B8B                          ; EB 1F
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0B6D
L_0B6D:
        sub     cx, bx                          ; 2B CB
        jle     L_0B80                          ; 7E 0F
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
;   [loop start (also forward branch)] L_0B80
L_0B80:
        cmp     sp, word ptr [bp - 8]           ; 3B 66 F8
        je      L_0B5E                          ; 74 D9
        cmp     word ptr [bp - 0x26], 8         ; 83 7E DA 08
        je      L_0B61                          ; 74 D6
;   [unconditional branch target] L_0B8B
L_0B8B:
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        dec     ax                              ; 48
        push    ax                              ; 50
        lds     si, ptr [bp + 0x20]             ; C5 76 20
        cmp     word ptr [si], 0                ; 83 3C 00
        je      L_0BAE                          ; 74 16
        mov     cx, word ptr [bp + 0x12]        ; 8B 4E 12
        or      cx, cx                          ; 0B C9
        jl      L_0BAE                          ; 7C 0F
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        mov     si, word ptr [bp - 0x1e]        ; 8B 76 E2
        mov     di, word ptr [bp - 0x22]        ; 8B 7E DE
        call    L_1B1F                          ; E8 71 0F
;   [conditional branch target (if/else)] L_0BAE
L_0BAE:
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, ax                          ; 0B C0
        jg      L_0BD1                          ; 7F 19
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        or      ax, ax                          ; 0B C0
        je      L_0BC2                          ; 74 03
        mov     word ptr [si + 0x10], ax        ; 89 44 10
;   [conditional branch target (if/else)] L_0BC2
L_0BC2:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        mov     dx, word ptr [bp - 0x22]        ; 8B 56 DE
        sub     dx, word ptr [bp - 0x20]        ; 2B 56 E0
        jmp     L_0DCB                          ; E9 FA 01
;   [conditional branch target (if/else)] L_0BD1
L_0BD1:
        cmp     word ptr [si + 2], 1            ; 83 7C 02 01
        jne     L_0BDA                          ; 75 03
        jmp     L_0C77                          ; E9 9D 00
;   [conditional branch target (if/else)] L_0BDA
L_0BDA:
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
        jge     L_0C14                          ; 7D 02
        and     dl, dh                          ; 22 D6
;   [conditional branch target (if/else)] L_0C14
L_0C14:
        mov     cx, bx                          ; 8B CB
        mov     word ptr [bp - 0x1c], cx        ; 89 4E E4
        les     di, ptr [bp + 0x20]             ; C4 7E 20
        les     di, ptr es:[di + 0xa]           ; 26 C4 7D 0A
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     al, 0xff                        ; B0 FF
        or      si, si                          ; 0B F6
        jne     L_0C55                          ; 75 29
        not     al                              ; F6 D0
        not     dx                              ; F7 D2
;   [loop start] L_0C30
L_0C30:
        mov     si, di                          ; 8B F7
        and     byte ptr es:[di], dl            ; 26 20 15
        inc     di                              ; 47
        or      cx, cx                          ; 0B C9
        jl      L_0C41                          ; 7C 07
        je      L_0C3E                          ; 74 02
        rep stosb byte ptr es:[di], al          ; F3 AA
;   [conditional branch target (if/else)] L_0C3E
L_0C3E:
        and     byte ptr es:[di], dh            ; 26 20 35
;   [conditional branch target (if/else)] L_0C41
L_0C41:
        mov     di, si                          ; 8B FE
        add     di, bx                          ; 03 FB
        jns     L_0C4A                          ; 79 03
        sub     di, word ptr [bp - 0xe]         ; 2B 7E F2
;   [conditional branch target (if/else)] L_0C4A
L_0C4A:
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        dec     word ptr [bp - 0x24]            ; FF 4E DC
        jg      L_0C30                          ; 7F DE
        jmp     L_0C77                          ; EB 23
        nop                                     ; 90
;   [loop start (also forward branch)] L_0C55
L_0C55:
        mov     si, di                          ; 8B F7
        or      byte ptr es:[di], dl            ; 26 08 15
        inc     di                              ; 47
        or      cx, cx                          ; 0B C9
        jl      L_0C66                          ; 7C 07
        je      L_0C63                          ; 74 02
        rep stosb byte ptr es:[di], al          ; F3 AA
;   [conditional branch target (if/else)] L_0C63
L_0C63:
        or      byte ptr es:[di], dh            ; 26 08 35
;   [conditional branch target (if/else)] L_0C66
L_0C66:
        mov     di, si                          ; 8B FE
        add     di, bx                          ; 03 FB
        jns     L_0C6F                          ; 79 03
        sub     di, word ptr [bp - 0xe]         ; 2B 7E F2
;   [conditional branch target (if/else)] L_0C6F
L_0C6F:
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        dec     word ptr [bp - 0x24]            ; FF 4E DC
        jg      L_0C55                          ; 7F DE
;   [unconditional branch target] L_0C77
L_0C77:
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
        jmp     L_0D36                          ; E9 9E 00
;   [loop start] L_0C98
L_0C98:
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
        je      L_0CB8                          ; 74 06
;   [loop start] L_0CB2
L_0CB2:
        sub     dh, cl                          ; 2A F1
        jle     L_0C98                          ; 7E E2
        shl     ax, cl                          ; D3 E0
;   [conditional branch target (if/else)] L_0CB8
L_0CB8:
        cmp     ch, 8                           ; 80 FD 08
        ja      L_0CCE                          ; 77 11
        or      ch, ch                          ; 0A ED
        je      L_0CDB                          ; 74 1A
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_0CC8                          ; 74 01
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_0CC8
L_0CC8:
        ; constant WM_SETTEXT
        mov     cl, ch                          ; 8A CD
        xor     ch, ch                          ; 32 ED
        jmp     L_0CB2                          ; EB E4
;   [conditional branch target (if/else)] L_0CCE
L_0CCE:
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_0CD5                          ; 74 01
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_0CD5
L_0CD5:
        mov     cl, 8                           ; B1 08
        sub     ch, cl                          ; 2A E9
        jmp     L_0CB2                          ; EB D7
;   [loop start (also forward branch)] L_0CDB
L_0CDB:
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     cx, word ptr ss:[bx]            ; 36 8B 0F
        or      cl, cl                          ; 0A C9
        js      L_0D04                          ; 78 1B
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_0CF3                          ; 74 04
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_0CF3
L_0CF3:
        shl     al, cl                          ; D2 E0
        sub     cl, 8                           ; 80 E9 08
        neg     cl                              ; F6 D9
        sub     ch, cl                          ; 2A E9
        jae     L_0CB2                          ; 73 B4
        add     cl, ch                          ; 02 CD
        xor     ch, ch                          ; 32 ED
        jmp     L_0CB2                          ; EB AE
;   [conditional branch target (if/else)] L_0D04
L_0D04:
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
        jae     L_0D46                          ; 73 26
        mov     word ptr [bp - 0x16], si        ; 89 76 EA
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     di, bx                          ; 8B FB
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
        jns     L_0D30                          ; 79 03
        sub     di, word ptr [bp - 0xe]         ; 2B 7E F2
;   [conditional branch target (if/else)] L_0D30
L_0D30:
        mov     word ptr [bp - 0xa], di         ; 89 7E F6
        mov     word ptr [bp - 0xc], bx         ; 89 5E F4
;   [unconditional branch target] L_0D36
L_0D36:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        xor     ax, ax                          ; 33 C0
        mov     dh, byte ptr [bp - 4]           ; 8A 76 FC
        cmp     word ptr [bp - 0x26], 8         ; 83 7E DA 08
        je      L_0D49                          ; 74 05
        jmp     L_0CDB                          ; EB 95
;   [conditional branch target (if/else)] L_0D46
L_0D46:
        jmp     L_0DCB                          ; E9 82 00
;   [conditional branch target (if/else)] L_0D49
L_0D49:
        xor     cx, cx                          ; 33 C9
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        je      L_0DC2                          ; 74 6C
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        mov     cx, word ptr ss:[bx - 2]        ; 36 8B 4F FE
        lodsb   al, byte ptr [si]               ; AC
        xchg    al, ah                          ; 86 E0
        shl     ah, cl                          ; D2 E4
        sub     cl, 8                           ; 80 E9 08
        neg     cl                              ; F6 D9
        cmp     dh, cl                          ; 3A F1
        jg      L_0D78                          ; 7F 0D
        xchg    dh, cl                          ; 86 CE
        rol     ax, cl                          ; D3 C0
        sub     cl, dh                          ; 2A CE
        jne     L_0DA0                          ; 75 2D
        mov     cl, 8                           ; B1 08
        jmp     L_0D80                          ; EB 09
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0D78
L_0D78:
        rol     ax, cl                          ; D3 C0
        sub     cl, dh                          ; 2A CE
        jmp     L_0DB1                          ; EB 33
        nop                                     ; 90
;   [loop start] L_0D7F
L_0D7F:
        lodsb   al, byte ptr [si]               ; AC
;   [unconditional branch target] L_0D80
L_0D80:
        mov     dh, byte ptr es:[di]            ; 26 8A 35
        xor     dh, dl                          ; 32 F2
        or      al, dh                          ; 0A C6
        xor     al, dl                          ; 32 C2
        stosb   byte ptr es:[di], al            ; AA
        sub     bx, 4                           ; 83 EB 04
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        je      L_0DC2                          ; 74 2E
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        jmp     L_0D7F                          ; EB E6
;   [loop start] L_0D99
L_0D99:
        mov     ah, byte ptr [si]               ; 8A 24
        rol     ax, cl                          ; D3 C0
        sub     cl, 8                           ; 80 E9 08
;   [conditional branch target (if/else)] L_0DA0
L_0DA0:
        neg     cl                              ; F6 D9
        mov     dh, byte ptr es:[di]            ; 26 8A 35
        xor     dh, dl                          ; 32 F2
        or      al, dh                          ; 0A C6
        xor     al, dl                          ; 32 C2
        stosb   byte ptr es:[di], al            ; AA
        rol     ax, cl                          ; D3 C0
        sub     cl, 8                           ; 80 E9 08
;   [unconditional branch target] L_0DB1
L_0DB1:
        neg     cl                              ; F6 D9
        sub     bx, 4                           ; 83 EB 04
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        je      L_0DC2                          ; 74 05
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        jmp     L_0D99                          ; EB D7
;   [conditional branch target (if/else)] L_0DC2
L_0DC2:
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     ah, al                          ; 8A E0
        mov     dh, cl                          ; 8A F1
        jmp     L_0CDB                          ; E9 10 FF
;   [unconditional branch target] L_0DCB
L_0DCB:
        mov     sp, word ptr [bp - 8]           ; 8B 66 F8
        call    L_1BAB                          ; E8 DA 0D
;   [unconditional branch target] L_0DD1
L_0DD1:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
;   [loop start] L_0DDE
L_0DDE:
        mov     al, byte ptr es:[di + 0x1f]     ; 26 8A 45 1F
        jmp     L_0DFD                          ; EB 19
        nop                                     ; 90
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
        lodsb   al, byte ptr [si]               ; AC
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_0E0F                          ; 7C 1E
        cmp     al, byte ptr es:[di + 0x1e]     ; 26 3A 45 1E
        ja      L_0DDE                          ; 77 E7
        sub     al, byte ptr es:[di + 0x1d]     ; 26 2A 45 1D
        jb      L_0DDE                          ; 72 E1
;   [unconditional branch target] L_0DFD
L_0DFD:
        mov     cx, word ptr es:[di + 0x14]     ; 26 8B 4D 14
        cmp     al, byte ptr es:[di + 0x20]     ; 26 3A 45 20
        je      L_0E16                          ; 74 0F
        mul     cl                              ; F6 E1
        add     ax, 8                           ; 05 08 00
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0E0F
L_0E0F:
        add     word ptr [bp - 0x1e], bx        ; 01 5E E2
        pop     ax                              ; 58
        jmp     L_0B80                          ; E9 6A FD
;   [loop start (also forward branch)] L_0E16
L_0E16:
        jmp     word ptr [bp - 0x12]            ; FF 66 EE
        xor     ah, ah                          ; 32 E4
        shl     ax, 1                           ; D1 E0
        push    bx                              ; 53
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr es:[bx + di + 0x33] ; 26 8B 41 33
        mov     cx, word ptr es:[bx + di + 0x35] ; 26 8B 49 35
        sub     cx, ax                          ; 2B C8
        pop     bx                              ; 5B
        je      L_0E51                          ; 74 24
        add     cx, word ptr [bp - 0x28]        ; 03 4E D8
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        sub     ax, word ptr [bp - 0x2c]        ; 2B 46 D4
        jg      L_0E3C                          ; 7F 04
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_0E3C
L_0E3C:
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        xor     ax, ax                          ; 33 C0
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [loop start] L_0E44
L_0E44:
        mov     al, byte ptr es:[di + 0x1f]     ; 26 8A 45 1F
        jmp     L_0E63                          ; EB 19
        nop                                     ; 90
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
;   [loop start (also forward branch)] L_0E51
L_0E51:
        lodsb   al, byte ptr [si]               ; AC
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_0E83                          ; 7C 2C
        cmp     al, byte ptr es:[di + 0x1e]     ; 26 3A 45 1E
        ja      L_0E44                          ; 77 E7
        sub     al, byte ptr es:[di + 0x1d]     ; 26 2A 45 1D
        jb      L_0E44                          ; 72 E1
;   [unconditional branch target] L_0E63
L_0E63:
        cmp     al, byte ptr es:[di + 0x20]     ; 26 3A 45 20
        je      L_0E16                          ; 74 AD
        xor     ah, ah                          ; 32 E4
        shl     ax, 1                           ; D1 E0
        push    bx                              ; 53
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr es:[bx + di + 0x33] ; 26 8B 41 33
        mov     cx, word ptr es:[bx + di + 0x35] ; 26 8B 49 35
        sub     cx, ax                          ; 2B C8
        add     ax, 8                           ; 05 08 00
        pop     bx                              ; 5B
        je      L_0E51                          ; 74 D1
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0E83
L_0E83:
        add     word ptr [bp - 0x1e], bx        ; 01 5E E2
        pop     ax                              ; 58
        jmp     L_0B80                          ; E9 F6 FC
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
        mov     cx, word ptr [bp - 0x30]        ; 8B 4E D0
        xor     ax, ax                          ; 33 C0
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0E98   offset=0x0E98  size=22 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0ED6
;-------------------------------------------------------------------------
;   [sub-routine] L_0E98
L_0E98:
        cld                                     ; FC
        mov     dx, word ptr es:[8]             ; 26 8B 16 08 00
        mov     di, 0x5e                        ; BF 5E 00
        mov     al, 0xff                        ; B0 FF
        call    L_0ED6                          ; E8 30 00
        mov     di, 0xfe                        ; BF FE 00
        xor     al, al                          ; 32 C0
        mov     byte ptr es:[0x10], al          ; 26 A2 10 00
        call    L_0ED6                          ; E8 24 00
        cmp     dl, byte ptr es:[0x26]          ; 26 3A 16 26 00
        je      L_0ED5                          ; 74 1C
        mov     word ptr es:[0x26], dx          ; 26 89 16 26 00
        mov     si, 0x3a                        ; BE 3A 00
        cmp     dl, 2                           ; 80 FA 02
        je      L_0EC9                          ; 74 03
        mov     si, 0x4c                        ; BE 4C 00
;   [conditional branch target (if/else)] L_0EC9
L_0EC9:
        mov     cx, 9                           ; B9 09 00
        mov     di, 0x28                        ; BF 28 00
        mov     ax, es                          ; 8C C0
        mov     ds, ax                          ; 8E D8
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
;   [error/early exit] L_0ED5
L_0ED5:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (17 instructions).

;-------------------------------------------------------------------------
; sub_0ED6   offset=0x0ED6  size=17 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0ED6
L_0ED6:
        ; constant VK_SHIFT
        mov     cx, 0x10                        ; B9 10 00
        cmp     dl, 4                           ; 80 FA 04
        je      L_0EE5                          ; 74 07
;   [loop iteration target] L_0EDE
L_0EDE:
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        loop    L_0EDE                          ; E2 FA
        ret                                     ; C3
;   [loop iteration target] L_0EE5
L_0EE5:
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        loop    L_0EE5                          ; E2 F8
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (11 instructions).

;-------------------------------------------------------------------------
; sub_0EEE   offset=0x0EEE  size=11 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0F43, L_0F94, L_105D, L_10F2, L_118E
;-------------------------------------------------------------------------
;   [sub-routine] L_0EEE
L_0EEE:
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        push    bp                              ; 55
        cld                                     ; FC
        call    L_118E                          ; E8 97 02
        call    L_105D                          ; E8 63 01
        call    L_0F94                          ; E8 97 00
        call    L_0F43                          ; E8 43 00
        call    L_10F2                          ; E8 EF 01
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_0F05   offset=0x0F05  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0F1C
;-------------------------------------------------------------------------
;   [sub-routine] L_0F05
L_0F05:
        cmp     byte ptr [0x11], 1              ; 80 3E 11 00 01
        jne     L_0F1B                          ; 75 0F
        mov     byte ptr [0x11], 0              ; C6 06 11 00 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        cld                                     ; FC
        push    bp                              ; 55
        call    L_0F1C                          ; E8 02 00
        pop     bp                              ; 5D
;   [error/early exit] L_0F1B
L_0F1B:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0F1C   offset=0x0F1C  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_129C, L_12CC
;-------------------------------------------------------------------------
;   [sub-routine] L_0F1C
L_0F1C:
        mov     di, 0x19e                       ; BF 9E 01
        mov     ax, word ptr [0x12]             ; A1 12 00
        mov     si, word ptr [0x14]             ; 8B 36 14 00
        push    si                              ; 56
        push    ax                              ; 50
        call    L_129C                          ; E8 71 03
        mov     cx, word ptr [0x14]             ; 8B 0E 14 00
        call    L_12CC                          ; E8 9A 03
        xchg    di, si                          ; 87 F7
        mov     cx, word ptr [0x26]             ; 8B 0E 26 00
        add     ax, cx                          ; 03 C1
        add     bx, cx                          ; 03 D9
        inc     cx                              ; 41
        mov     bp, 0x20                        ; BD 20 00
        jmp     L_110F                          ; E9 CC 01
; Description (heuristic):
;   Pure computation / dispatcher (39 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F43   offset=0x0F43  size=39 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_10C9
;-------------------------------------------------------------------------
;   [sub-routine] L_0F43
L_0F43:
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     si, word ptr [0x18]             ; 8B 36 18 00
        call    L_10C9                          ; E8 7C 01
        mov     di, si                          ; 8B FE
        mov     si, 0x5e                        ; BE 5E 00
        mov     bx, 0xfe                        ; BB FE 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        jmp     word ptr [0x2c]                 ; FF 26 2C 00
        ; constant WM_MOVE
        mov     dx, 3                           ; BA 03 00
;   [loop iteration target] L_0F60
L_0F60:
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
        loop    L_0F60                          ; E2 EC
        ret                                     ; C3
        ; constant WM_SIZE
        mov     dx, 5                           ; BA 05 00
;   [loop iteration target] L_0F78
L_0F78:
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
        loop    L_0F78                          ; E2 E5
;   [loop start] L_0F93
L_0F93:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (15 instructions).

;-------------------------------------------------------------------------
; sub_0F94   offset=0x0F94  size=15 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: unknown
;
; Near calls (internal): L_0FB9
;-------------------------------------------------------------------------
;   [sub-routine] L_0F94
L_0F94:
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     bl, 7                           ; B3 07
        mov     al, byte ptr [0x16]             ; A0 16 00
        and     al, bl                          ; 22 C3
        and     bl, byte ptr [0x10]             ; 22 1E 10 00
        mov     byte ptr [0x10], al             ; A2 10 00
        sub     al, bl                          ; 2A C3
        je      L_0F93                          ; 74 E9
        jl      L_0FFC                          ; 7C 50
        mov     bh, al                          ; 8A F8
        mov     si, 0x5e                        ; BE 5E 00
        call    L_0FB9                          ; E8 05 00
        mov     al, bh                          ; 8A C7
        mov     si, 0xfe                        ; BE FE 00
; Description (heuristic):
;   Pure computation / dispatcher (40 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0FB9   offset=0x0FB9  size=40 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=5)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_100B
;-------------------------------------------------------------------------
;   [sub-routine] L_0FB9
L_0FB9:
        cmp     al, 3                           ; 3C 03
        jae     L_0FDF                          ; 73 22
        mov     bl, al                          ; 8A D8
;   [loop start] L_0FBF
L_0FBF:
        mov     di, si                          ; 8B FE
        mov     cx, word ptr [0x34]             ; 8B 0E 34 00
        shr     cx, 1                           ; D1 E9
;   [loop iteration target] L_0FC7
L_0FC7:
        mov     ax, word ptr [di]               ; 8B 05
        xchg    al, ah                          ; 86 E0
        rcr     ax, 1                           ; D1 D8
        xchg    al, ah                          ; 86 E0
        stosw   word ptr es:[di], ax            ; AB
        loop    L_0FC7                          ; E2 F5
        mov     al, byte ptr [si]               ; 8A 04
        rcl     al, 1                           ; D0 D0
        ror     al, 1                           ; D0 C8
        mov     byte ptr [si], al               ; 88 04
        dec     bl                              ; FE CB
        jne     L_0FBF                          ; 75 E1
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0FDF
L_0FDF:
        mov     cl, al                          ; 8A C8
        mov     di, si                          ; 8B FE
        mov     dx, word ptr [0x34]             ; 8B 16 34 00
        xor     bl, bl                          ; 32 DB
;   [loop start] L_0FE9
L_0FE9:
        xor     ax, ax                          ; 33 C0
        mov     ah, byte ptr [di]               ; 8A 25
        shr     ax, cl                          ; D3 E8
        or      ah, bl                          ; 0A E3
        mov     bl, al                          ; 8A D8
        mov     al, ah                          ; 8A C4
        stosb   byte ptr es:[di], al            ; AA
        dec     dx                              ; 4A
        jne     L_0FE9                          ; 75 F0
        or      byte ptr [si], bl               ; 08 1C
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0FFC
L_0FFC:
        neg     al                              ; F6 D8
        mov     bh, al                          ; 8A F8
        mov     si, 0x5e                        ; BE 5E 00
        call    L_100B                          ; E8 05 00
        mov     al, bh                          ; 8A C7
        mov     si, 0xfe                        ; BE FE 00
; Description (heuristic):
;   Pure computation / dispatcher (42 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_100B   offset=0x100B  size=42 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=3)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_100B
L_100B:
        std                                     ; FD
        cmp     al, 3                           ; 3C 03
        jae     L_103E                          ; 73 2E
        mov     bl, al                          ; 8A D8
;   [loop start] L_1012
L_1012:
        mov     di, si                          ; 8B FE
        mov     cx, word ptr [0x34]             ; 8B 0E 34 00
        add     di, cx                          ; 03 F9
        sub     di, 2                           ; 83 EF 02
        mov     dx, di                          ; 8B D7
        shr     cx, 1                           ; D1 E9
;   [loop iteration target] L_1021
L_1021:
        mov     ax, word ptr [di]               ; 8B 05
        xchg    al, ah                          ; 86 E0
        rcl     ax, 1                           ; D1 D0
        xchg    al, ah                          ; 86 E0
        stosw   word ptr es:[di], ax            ; AB
        loop    L_1021                          ; E2 F5
        mov     di, dx                          ; 8B FA
        mov     al, byte ptr [di + 1]           ; 8A 45 01
        rcr     al, 1                           ; D0 D8
        rol     al, 1                           ; D0 C0
        mov     byte ptr [di + 1], al           ; 88 45 01
        dec     bl                              ; FE CB
        jne     L_1012                          ; 75 D6
        cld                                     ; FC
        ret                                     ; C3
;   [conditional branch target (if/else)] L_103E
L_103E:
        mov     cl, al                          ; 8A C8
        mov     dx, word ptr [0x34]             ; 8B 16 34 00
        add     si, dx                          ; 03 F2
        dec     si                              ; 4E
        mov     di, si                          ; 8B FE
        xor     bl, bl                          ; 32 DB
;   [loop start] L_104B
L_104B:
        xor     ax, ax                          ; 33 C0
        mov     al, byte ptr [di]               ; 8A 05
        shl     ax, cl                          ; D3 E0
        or      al, bl                          ; 0A C3
        mov     bl, ah                          ; 8A DC
        stosb   byte ptr es:[di], al            ; AA
        dec     dx                              ; 4A
        jne     L_104B                          ; 75 F2
        or      byte ptr [si], bl               ; 08 1C
        cld                                     ; FC
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_105D   offset=0x105D  size=28 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_10C9
;-------------------------------------------------------------------------
;   [sub-routine] L_105D
L_105D:
        mov     di, 0x19e                       ; BF 9E 01
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     si, word ptr [0x18]             ; 8B 36 18 00
        mov     word ptr [0x12], ax             ; A3 12 00
        mov     word ptr [0x14], si             ; 89 36 14 00
        mov     byte ptr [0x11], 1              ; C6 06 11 00 01
        call    L_10C9                          ; E8 53 00
        shr     cx, 1                           ; D1 E9
        mov     dx, word ptr [0x26]             ; 8B 16 26 00
        jmp     word ptr [0x2a]                 ; FF 26 2A 00
;   [loop iteration target] L_1080
L_1080:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        loop    L_1080                          ; E2 F6
        ret                                     ; C3
;   [loop iteration target] L_108B
L_108B:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        loop    L_108B                          ; E2 F4
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (26 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1098   offset=0x1098  size=26 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_10C9
;-------------------------------------------------------------------------
;   [sub-routine] L_1098
L_1098:
        mov     di, 0x19e                       ; BF 9E 01
        mov     ax, word ptr [0x12]             ; A1 12 00
        mov     si, word ptr [0x14]             ; 8B 36 14 00
        call    L_10C9                          ; E8 24 00
        shr     cx, 1                           ; D1 E9
        mov     dx, word ptr [0x26]             ; 8B 16 26 00
        xchg    di, si                          ; 87 F7
        jmp     word ptr [0x28]                 ; FF 26 28 00
;   [loop iteration target] L_10B1
L_10B1:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        loop    L_10B1                          ; E2 F6
        ret                                     ; C3
;   [loop iteration target] L_10BC
L_10BC:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        loop    L_10BC                          ; E2 F4
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_10C9   offset=0x10C9  size=16 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_10C9
L_10C9:
        sub     ax, word ptr [0x1a]             ; 2B 06 1A 00
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        sub     si, word ptr [0x1c]             ; 2B 36 1C 00
        mov     cx, si                          ; 8B CE
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        cmp     word ptr [0x26], 2              ; 83 3E 26 00 02
        je      L_10E6                          ; 74 02
        shl     si, 1                           ; D1 E6
;   [error/early exit] L_10E6
L_10E6:
        add     si, cx                          ; 03 F1
        add     si, ax                          ; 03 F0
        add     si, 0x23e                       ; 81 C6 3E 02
        mov     cx, 0x20                        ; B9 20 00
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (65 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_10F2   offset=0x10F2  size=65 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_12C8
;-------------------------------------------------------------------------
;   [sub-routine] L_10F2
L_10F2:
        call    L_12C8                          ; E8 D3 01
        mov     si, 0x23e                       ; BE 3E 02
        mov     di, word ptr [0x24]             ; 8B 3E 24 00
        mov     cx, word ptr [0x26]             ; 8B 0E 26 00
        shl     cx, 1                           ; D1 E1
        inc     cx                              ; 41
        mov     bp, word ptr [0x1e]             ; 8B 2E 1E 00
        push    word ptr [0x1c]                 ; FF 36 1C 00
        push    word ptr [0x1a]                 ; FF 36 1A 00
;   [unconditional branch target] L_110F
L_110F:
        mov     dx, cx                          ; 8B D1
        mov     word ptr [0x20], cx             ; 89 0E 20 00
        mov     word ptr [0x22], bp             ; 89 2E 22 00
        xor     bp, bp                          ; 33 ED
        pop     cx                              ; 59
        sar     cx, 1                           ; D1 F9
        sar     cx, 1                           ; D1 F9
        sar     cx, 1                           ; D1 F9
        or      cx, cx                          ; 0B C9
        jge     L_112E                          ; 7D 08
        neg     cx                              ; F7 D9
        add     di, cx                          ; 03 F9
        add     si, cx                          ; 03 F1
        jmp     L_1137                          ; EB 09
;   [conditional branch target (if/else)] L_112E
L_112E:
        add     cx, word ptr [0x20]             ; 03 0E 20 00
        sub     cx, 0x50                        ; 83 E9 50
        jle     L_1144                          ; 7E 0D
;   [unconditional branch target] L_1137
L_1137:
        mov     bp, cx                          ; 8B E9
        add     ax, cx                          ; 03 C1
        add     bx, cx                          ; 03 D9
        sub     dx, cx                          ; 2B D1
        jg      L_1144                          ; 7F 03
        jmp     L_1187                          ; EB 44
        nop                                     ; 90
;   [conditional branch target (if/else)] L_1144
L_1144:
        pop     cx                              ; 59
        or      cx, cx                          ; 0B C9
        jge     L_1155                          ; 7D 0C
        neg     cx                              ; F7 D9
        push    cx                              ; 51
;   [loop iteration target] L_114C
L_114C:
        add     si, word ptr [0x20]             ; 03 36 20 00
        loop    L_114C                          ; E2 FA
        pop     cx                              ; 59
        jmp     L_115F                          ; EB 0A
;   [conditional branch target (if/else)] L_1155
L_1155:
        add     cx, word ptr [0x22]             ; 03 0E 22 00
        sub     cx, 0x190                       ; 81 E9 90 01
        jle     L_1165                          ; 7E 06
;   [unconditional branch target] L_115F
L_115F:
        sub     word ptr [0x22], cx             ; 29 0E 22 00
        jle     L_1188                          ; 7E 23
;   [conditional branch target (if/else)] L_1165
L_1165:
        mov     cx, 0xb800                      ; B9 00 B8
        mov     es, cx                          ; 8E C1
        xor     ch, ch                          ; 32 ED
        mov     dh, byte ptr [0x22]             ; 8A 36 22 00
;   [loop start] L_1170
L_1170:
        mov     cl, dl                          ; 8A CA
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        add     di, ax                          ; 03 F8
        jns     L_117C                          ; 79 04
        add     di, 0x8050                      ; 81 C7 50 80
;   [conditional branch target (if/else)] L_117C
L_117C:
        add     si, bp                          ; 03 F5
        dec     dh                              ; FE CE
        jne     L_1170                          ; 75 EE
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        ret                                     ; C3
;   [fall-through exit] L_1187
L_1187:
        pop     cx                              ; 59
;   [error/early exit] L_1188
L_1188:
        mov     byte ptr [0x11], 0              ; C6 06 11 00 00
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_118E   offset=0x118E  size=14 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0F1C, L_1098, L_11AE, L_123B
;-------------------------------------------------------------------------
;   [sub-routine] L_118E
L_118E:
        call    L_123B                          ; E8 AA 00
        xor     ax, ax                          ; 33 C0
        mov     bx, 0x11                        ; BB 11 00
        cmp     byte ptr [bx], al               ; 38 07
        je      L_11A3                          ; 74 09
        mov     byte ptr [bx], al               ; 88 07
        or      bp, bp                          ; 0B ED
        je      L_11A7                          ; 74 07
        call    L_0F1C                          ; E8 79 FD
;   [conditional branch target (if/else)] L_11A3
L_11A3:
        call    L_11AE                          ; E8 08 00
        ret                                     ; C3
;   [conditional branch target (if/else)] L_11A7
L_11A7:
        call    L_11AE                          ; E8 04 00
        call    L_1098                          ; E8 EB FE
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (70 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_11AE   offset=0x11AE  size=70 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_12C8
;-------------------------------------------------------------------------
;   [sub-routine] L_11AE
L_11AE:
        call    L_12C8                          ; E8 17 01
        push    cx                              ; 51
        mov     cx, word ptr [0x1e]             ; 8B 0E 1E 00
        mov     si, word ptr [0x24]             ; 8B 36 24 00
        mov     di, 0xb800                      ; BF 00 B8
        mov     ds, di                          ; 8E DF
        mov     di, 0x23e                       ; BF 3E 02
        jmp     word ptr es:[0x2e]              ; 26 FF 26 2E 00
        pop     dx                              ; 5A
        or      dx, dx                          ; 0B D2
        jns     L_11D6                          ; 79 0A
        add     cx, dx                          ; 03 CA
        jle     L_11FA                          ; 7E 2A
;   [loop start] L_11D0
L_11D0:
        add     di, 5                           ; 83 C7 05
        inc     dx                              ; 42
        jne     L_11D0                          ; 75 FA
;   [conditional branch target (if/else)] L_11D6
L_11D6:
        xor     bx, bx                          ; 33 DB
        mov     dx, word ptr es:[0x1a]          ; 26 8B 16 1A 00
        sar     dx, 1                           ; D1 FA
        jns     L_11E7                          ; 79 06
        sar     dx, 1                           ; D1 FA
        sar     dx, 1                           ; D1 FA
        sub     bx, dx                          ; 2B DA
;   [loop iteration target] L_11E7
L_11E7:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     si, ax                          ; 03 F0
        mov     dx, bx                          ; 8B D3
        add     dx, si                          ; 03 D6
        jns     L_11F8                          ; 79 04
        add     si, 0x8050                      ; 81 C6 50 80
;   [conditional branch target (if/else)] L_11F8
L_11F8:
        loop    L_11E7                          ; E2 ED
;   [error/early exit] L_11FA
L_11FA:
        mov     cx, es                          ; 8C C1
        mov     ds, cx                          ; 8E D9
        ret                                     ; C3
        pop     dx                              ; 5A
        or      dx, dx                          ; 0B D2
        jns     L_120E                          ; 79 0A
        add     cx, dx                          ; 03 CA
        jle     L_1236                          ; 7E 2E
;   [loop start] L_1208
L_1208:
        add     di, 9                           ; 83 C7 09
        inc     dx                              ; 42
        jne     L_1208                          ; 75 FA
;   [conditional branch target (if/else)] L_120E
L_120E:
        xor     bx, bx                          ; 33 DB
        mov     dx, word ptr es:[0x1a]          ; 26 8B 16 1A 00
        sar     dx, 1                           ; D1 FA
        jns     L_121F                          ; 79 06
        sar     dx, 1                           ; D1 FA
        sar     dx, 1                           ; D1 FA
        sub     bx, dx                          ; 2B DA
;   [loop iteration target] L_121F
L_121F:
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
        jns     L_1234                          ; 79 04
        add     si, 0x8050                      ; 81 C6 50 80
;   [conditional branch target (if/else)] L_1234
L_1234:
        loop    L_121F                          ; E2 E9
;   [error/early exit] L_1236
L_1236:
        mov     cx, es                          ; 8C C1
        mov     ds, cx                          ; 8E D9
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_123B   offset=0x123B  size=36 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_129C
;-------------------------------------------------------------------------
;   [sub-routine] L_123B
L_123B:
        xor     bp, bp                          ; 33 ED
        cmp     byte ptr [0x11], 0              ; 80 3E 11 00 00
        je      L_1275                          ; 74 31
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     bx, word ptr [0x12]             ; 8B 1E 12 00
        cmp     ax, bx                          ; 3B C3
        jge     L_1250                          ; 7D 01
        xchg    bx, ax                          ; 93
;   [conditional branch target (if/else)] L_1250
L_1250:
        and     bl, 0xf8                        ; 80 E3 F8
        sub     ax, bx                          ; 2B C3
        cmp     ax, word ptr [0x36]             ; 3B 06 36 00
        jge     L_1275                          ; 7D 1A
        mov     word ptr [0x1a], bx             ; 89 1E 1A 00
        mov     ax, word ptr [0x18]             ; A1 18 00
        mov     bx, word ptr [0x14]             ; 8B 1E 14 00
        mov     cx, ax                          ; 8B C8
        sub     ax, bx                          ; 2B C3
        jge     L_1270                          ; 7D 04
        neg     ax                              ; F7 D8
        mov     bx, cx                          ; 8B D9
;   [conditional branch target (if/else)] L_1270
L_1270:
        cmp     ax, 0x20                        ; 3D 20 00
        jle     L_1285                          ; 7E 10
;   [conditional branch target (if/else)] L_1275
L_1275:
        mov     ax, word ptr [0x16]             ; A1 16 00
        and     al, 0xf8                        ; 24 F8
        mov     word ptr [0x1a], ax             ; A3 1A 00
        mov     bx, word ptr [0x18]             ; 8B 1E 18 00
        xor     ax, ax                          ; 33 C0
        not     bp                              ; F7 D5
;   [conditional branch target (if/else)] L_1285
L_1285:
        mov     word ptr [0x1c], bx             ; 89 1E 1C 00
        add     ax, 0x20                        ; 05 20 00
        mov     word ptr [0x1e], ax             ; A3 1E 00
        mov     ax, word ptr [0x1a]             ; A1 1A 00
        mov     si, bx                          ; 8B F3
        call    L_129C                          ; E8 05 00
        mov     word ptr [0x24], si             ; 89 36 24 00
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_129C   offset=0x129C  size=21 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_129C
L_129C:
        mov     cx, si                          ; 8B CE
        xchg    si, ax                          ; 96
        sar     si, 1                           ; D1 FE
        sar     si, 1                           ; D1 FE
        sar     si, 1                           ; D1 FE
        sar     ax, 1                           ; D1 F8
        js      L_12C7                          ; 78 1E
        jae     L_12AF                          ; 73 04
        add     si, 0x2000                      ; 81 C6 00 20
;   [conditional branch target (if/else)] L_12AF
L_12AF:
        sar     ax, 1                           ; D1 F8
        jae     L_12B7                          ; 73 04
        add     si, 0x4000                      ; 81 C6 00 40
;   [conditional branch target (if/else)] L_12B7
L_12B7:
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     si, ax                          ; 03 F0
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     si, ax                          ; 03 F0
;   [error/early exit] L_12C7
L_12C7:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (1 instructions).

;-------------------------------------------------------------------------
; sub_12C8   offset=0x12C8  size=1 instr  segment=seg1.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_12C8
L_12C8:
        mov     cx, word ptr [0x1c]             ; 8B 0E 1C 00
; Description (heuristic):
;   Pure computation / dispatcher (451 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_12CC   offset=0x12CC  size=451 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_16C7, L_174C, L_1B1F, L_1BAB, L_1EFB
;-------------------------------------------------------------------------
;   [sub-routine] L_12CC
L_12CC:
        mov     ax, word ptr [0x30]             ; A1 30 00
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
        lds     si, ptr [bp + 0x10]             ; C5 76 10
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_12FE                          ; E3 1B
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     di, dx                          ; 8B FA
        mov     si, word ptr [si + 2]           ; 8B 74 02
        dec     si                              ; 4E
        mov     cx, word ptr [bp + 0xe]         ; 8B 4E 0E
        test    byte ptr [bp + 6], 2            ; F6 46 06 02
        je      L_12F9                          ; 74 04
        mov     si, cx                          ; 8B F1
        xor     cx, cx                          ; 33 C9
;   [conditional branch target (if/else)] L_12F9
L_12F9:
        call    L_1B1F                          ; E8 23 08
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
;   [conditional branch target (if/else)] L_12FE
L_12FE:
        les     di, ptr [bp + 0x10]             ; C4 7E 10
        lds     si, ptr es:[di + 0xa]           ; 26 C5 75 0A
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        jcxz    L_131B                          ; E3 11
        mov     bx, ax                          ; 8B D8
        and     bx, 3                           ; 81 E3 03 00
        add     bx, bx                          ; 03 DB
        add     si, word ptr cs:[bx + 0x13b]    ; 2E 03 B7 3B 01
        mov     cl, 2                           ; B1 02
        shr     ax, cl                          ; D3 E8
;   [conditional branch target (if/else)] L_131B
L_131B:
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
        jae     L_1341                          ; 73 02
        not     ax                              ; F7 D0
;   [conditional branch target (if/else)] L_1341
L_1341:
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr cs:[bx + 0x1ab]    ; 2E 8A 9F AB 01
        dec     bl                              ; FE CB
        std                                     ; FD
        shl     dx, 1                           ; D1 E2
        dec     dx                              ; 4A
        jg      L_135E                          ; 7F 0C
        cld                                     ; FC
        shl     bl, 1                           ; D0 E3
        inc     bl                              ; FE C3
        not     bl                              ; F6 D3
        sub     cx, di                          ; 2B CF
        neg     cx                              ; F7 D9
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_135E
L_135E:
        not     bl                              ; F6 D3
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        lodsb   al, byte ptr [si]               ; AC
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        jne     L_1380                          ; 75 13
        mov     al, ah                          ; 8A C4
        dec     cx                              ; 49
        je      L_13B6                          ; 74 44
        xchg    di, si                          ; 87 F7
        repe scasb al, byte ptr es:[di]         ; F3 AE
        je      L_13B6                          ; 74 3E
        inc     cx                              ; 41
        xchg    di, si                          ; 87 F7
        add     si, dx                          ; 03 F2
        lodsb   al, byte ptr [si]               ; AC
        xor     al, ah                          ; 32 C4
;   [conditional branch target (if/else)] L_1380
L_1380:
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        or      dx, dx                          ; 0B D2
        jg      L_139E                          ; 7F 14
        sub     cx, di                          ; 2B CF
        neg     cx                              ; F7 D9
        dec     cx                              ; 49
;   [loop start] L_138F
L_138F:
        inc     cx                              ; 41
        shl     al, 1                           ; D0 E0
        jae     L_138F                          ; 73 FB
        lds     si, ptr [bp + 0x10]             ; C5 76 10
        cmp     cx, word ptr [si + 2]           ; 3B 4C 02
        jge     L_13B6                          ; 7D 1A
        jmp     L_13A3                          ; EB 05
;   [loop start (also forward branch)] L_139E
L_139E:
        dec     cx                              ; 49
        shr     ax, 1                           ; D1 E8
        jae     L_139E                          ; 73 FB
;   [unconditional branch target] L_13A3
L_13A3:
        mov     ax, cx                          ; 8B C1
;   [loop start] L_13A5
L_13A5:
        cld                                     ; FC
        call    L_1BAB                          ; E8 02 08
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [conditional branch target (if/else)] L_13B6
L_13B6:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_13A5                          ; EB EA
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
        call    L_1EFB                          ; E8 2F 0B
        jae     L_13D1                          ; 73 03
        jmp     L_145A                          ; E9 89 00
;   [conditional branch target (if/else)] L_13D1
L_13D1:
        lds     si, ptr [bp + 0x12]             ; C5 76 12
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_13E8                          ; E3 10
        mov     cx, word ptr [bp + 0x10]        ; 8B 4E 10
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     si, cx                          ; 8B F1
        mov     di, dx                          ; 8B FA
        call    L_1B1F                          ; E8 3A 07
        lds     si, ptr [bp + 0x12]             ; C5 76 12
;   [conditional branch target (if/else)] L_13E8
L_13E8:
        les     di, ptr [si + 0xa]              ; C4 7C 0A
        mov     ax, word ptr [si]               ; 8B 04
        or      ax, ax                          ; 0B C0
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        je      L_1405                          ; 74 11
        mov     bx, ax                          ; 8B D8
        and     bx, 3                           ; 81 E3 03 00
        add     bx, bx                          ; 03 DB
        add     di, word ptr cs:[bx + 0x13b]    ; 2E 03 BF 3B 01
        mov     cl, 2                           ; B1 02
        shr     ax, cl                          ; D3 E8
;   [conditional branch target (if/else)] L_1405
L_1405:
        mul     word ptr [si + 6]               ; F7 64 06
        add     di, ax                          ; 03 F8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     bx, ax                          ; 8B D8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        add     di, ax                          ; 03 F8
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr cs:[bx + 0x1ab]    ; 2E 8A 9F AB 01
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     cx, dx                          ; 8B CA
        or      cx, si                          ; 0B CE
        je      L_1446                          ; 74 1A
        mov     ds, dx                          ; 8E DA
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        mov     si, word ptr [si]               ; 8B 34
        add     si, si                          ; 03 F6
        mov     ah, byte ptr es:[di]            ; 26 8A 25
        call    word ptr cs:[si + 0x1ca3]       ; 2E FF 94 A3 1C
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        xor     al, ah                          ; 32 C4
        stosb   byte ptr es:[di], al            ; AA
        jmp     L_1453                          ; EB 0D
;   [conditional branch target (if/else)] L_1446
L_1446:
        mov     al, byte ptr es:[di]            ; 26 8A 05
        and     al, bl                          ; 22 C3
        mov     dx, 0xff                        ; BA FF 00
        mov     ax, 0xffff                      ; B8 FF FF
        jne     L_1457                          ; 75 04
;   [unconditional branch target] L_1453
L_1453:
        xor     ax, ax                          ; 33 C0
        xor     dx, dx                          ; 33 D2
;   [conditional branch target (if/else)] L_1457
L_1457:
        call    L_1BAB                          ; E8 51 07
;   [unconditional branch target] L_145A
L_145A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
        jmp     di                              ; FF E7
        stosb   byte ptr es:[di], al            ; AA
        in      al, 0xea                        ; E4 EA
        add     byte ptr [bp + di + 0x46ee], cl ; 00 8B EE 46
        shr     si, 1                           ; D1 EE
        mov     ah, byte ptr [di]               ; 8A 25
        mov     al, bh                          ; 8A C7
        or      ch, ch                          ; 0A ED
        js      L_147C                          ; 78 02
        mov     al, 0                           ; B0 00
;   [conditional branch target (if/else)] L_147C
L_147C:
        or      ch, ch                          ; 0A ED
        jns     L_1488                          ; 79 08
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        xor     al, ah                          ; 32 C4
        mov     byte ptr [di], al               ; 88 05
;   [conditional branch target (if/else)] L_1488
L_1488:
        xor     ax, ax                          ; 33 C0
        jns     L_1491                          ; 79 05
        add     cl, 0x9c                        ; 80 C1 9C
        rol     ch, 1                           ; D0 C5
;   [conditional branch target (if/else)] L_1491
L_1491:
        dec     bp                              ; 4D
;   [loop start] L_1492
L_1492:
        jg      L_1492                          ; 7F FE
        retf                                    ; CB
;   [loop start] L_1495
L_1495:
        ror     bl, 1                           ; D0 CB
        jb      L_149D                          ; 72 04
        dec     bp                              ; 4D
        jg      L_1495                          ; 7F F9
;   [loop start] L_149C
L_149C:
        retf                                    ; CB
;   [conditional branch target (if/else)] L_149D
L_149D:
        inc     di                              ; 47
        dec     bp                              ; 4D
        jle     L_149C                          ; 7E FB
;   [loop start] L_14A1
L_14A1:
        cmp     bp, 8                           ; 83 FD 08
        jl      L_1495                          ; 7C EF
        mov     ah, byte ptr [di]               ; 8A 25
        mov     al, bh                          ; 8A C7
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        sub     bp, 8                           ; 83 ED 08
        jg      L_14A1                          ; 7F EF
        retf                                    ; CB
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x92                        ; B8 92 00
        call    L_1EFB                          ; E8 38 0A
        push    si                              ; 56
        push    di                              ; 57
        jb      L_1521                          ; 72 5A
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
        jcxz    L_14F9                          ; E3 14
        mov     bx, ax                          ; 8B D8
        and     bx, 3                           ; 81 E3 03 00
        add     bx, bx                          ; 03 DB
        add     di, word ptr cs:[bx + 0x13b]    ; 2E 03 BF 3B 01
        mov     cl, 2                           ; B1 02
        shr     ax, cl                          ; D3 E8
        mov     cx, 0                           ; B9 00 00
;   [conditional branch target (if/else)] L_14F9
L_14F9:
        mov     word ptr [bp - 0x18], cx        ; 89 4E E8
        mul     dx                              ; F7 E2
        add     di, ax                          ; 03 F8
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     word ptr [bp - 0xc], es         ; 8C 46 F4
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     ax, 0x12                        ; 3D 12 00
        je      L_152E                          ; 74 20
        cmp     ax, 4                           ; 3D 04 00
        jne     L_151C                          ; 75 09
        jmp     L_179E                          ; E9 88 02
;   [loop start] L_1516
L_1516:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_151E                          ; EB 03
        nop                                     ; 90
;   [loop start (also forward branch)] L_151C
L_151C:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_151E
L_151E:
        call    L_1BAB                          ; E8 8A 06
;   [conditional branch target (if/else)] L_1521
L_1521:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1c                            ; CA 1C 00
;   [conditional branch target (if/else)] L_152E
L_152E:
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_1555                          ; E3 23
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
        mov     di, word ptr [si + 4]           ; 8B 7C 04
        dec     di                              ; 4F
        mov     si, word ptr [si + 2]           ; 8B 74 02
        dec     si                              ; 4E
        lds     bx, ptr [bp + 6]                ; C5 5E 06
        mov     ax, ds                          ; 8C D8
        or      ax, bx                          ; 0B C3
        je      L_1552                          ; 74 0B
        mov     cx, word ptr [bx]               ; 8B 0F
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     si, word ptr [bx + 4]           ; 8B 77 04
        mov     di, word ptr [bx + 6]           ; 8B 7F 06
;   [conditional branch target (if/else)] L_1552
L_1552:
        call    L_1B1F                          ; E8 CA 05
;   [conditional branch target (if/else)] L_1555
L_1555:
        lds     si, ptr [bp + 0x12]             ; C5 76 12
        mov     ah, byte ptr [si]               ; 8A 24
        mov     byte ptr [bp - 0x1a], ah        ; 88 66 E6
        mov     bx, word ptr [si + 1]           ; 8B 5C 01
        cmp     bx, 5                           ; 83 FB 05
        jg      L_151C                          ; 7F B7
        je      L_1516                          ; 74 AF
        mov     ah, byte ptr cs:[bx + 0x1467]   ; 2E 8A A7 67 14
        mov     al, 0x9c                        ; B0 9C
        dec     al                              ; FE C8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        xor     cx, cx                          ; 33 C9
        call    L_16C7                          ; E8 4F 01
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
        mov     bl, byte ptr cs:[bx + 0x1ab]    ; 2E 8A 9F AB 01
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
;   [loop start] L_159A
L_159A:
        dec     ax                              ; 48
        jg      L_15A0                          ; 7F 03
        jmp     L_1516                          ; E9 76 FF
;   [conditional branch target (if/else)] L_15A0
L_15A0:
        push    ax                              ; 50
        push    ds                              ; 1E
        push    si                              ; 56
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     byte ptr [bp - 0x1c], bl        ; 88 5E E4
        mov     ax, word ptr [si]               ; 8B 04
        mov     di, word ptr [si + 2]           ; 8B 7C 02
        xor     bx, bx                          ; 33 DB
        sub     ax, dx                          ; 2B C2
        jae     L_15B8                          ; 73 04
        mov     bl, 2                           ; B3 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_15B8
L_15B8:
        mov     si, word ptr [bp - 0x16]        ; 8B 76 EA
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_15CC                          ; 74 0B
        mov     si, 0x2000                      ; BE 00 20
        test    cl, 1                           ; F6 C1 01
        je      L_15CC                          ; 74 03
        mov     si, 0x2000                      ; BE 00 20
;   [conditional branch target (if/else)] L_15CC
L_15CC:
        mov     dx, ax                          ; 8B D0
        mov     ax, di                          ; 8B C7
        mov     byte ptr [bp - 0x19], 0x7d      ; C6 46 E7 7D
        mov     byte ptr [bp - 0x92], 0x90      ; C6 86 6E FF 90
        sub     ax, cx                          ; 2B C1
        jae     L_15F0                          ; 73 13
        neg     ax                              ; F7 D8
        or      bl, 1                           ; 80 CB 01
        xor     si, word ptr [bp - 0x18]        ; 33 76 E8
        neg     si                              ; F7 DE
        mov     byte ptr [bp - 0x19], 0x7f      ; C6 46 E7 7F
        mov     byte ptr [bp - 0x92], 0x46      ; C6 86 6E FF 46
;   [conditional branch target (if/else)] L_15F0
L_15F0:
        mov     cx, ax                          ; 8B C8
        cmp     cx, dx                          ; 3B CA
        jb      L_15FB                          ; 72 05
        or      bl, 4                           ; 80 CB 04
        xchg    dx, cx                          ; 87 CA
;   [conditional branch target (if/else)] L_15FB
L_15FB:
        mov     word ptr [bp - 0x10], si        ; 89 76 F0
        or      dx, dx                          ; 0B D2
        jne     L_160B                          ; 75 09
        mov     di, word ptr [bp - 0xe]         ; 8B 7E F2
        mov     bl, byte ptr [bp - 0x1c]        ; 8A 5E E4
        jmp     L_16BA                          ; E9 AF 00
;   [conditional branch target (if/else)] L_160B
L_160B:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        mov     di, word ptr [bp - 4]           ; 8B 7E FC
        or      cx, cx                          ; 0B C9
        jne     L_1633                          ; 75 1D
        or      bl, 8                           ; 80 CB 08
        test    bl, 4                           ; F6 C3 04
        jne     L_1633                          ; 75 15
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        jne     L_1633                          ; 75 0F
        cmp     byte ptr [bp - 0x1b], bl        ; 38 5E E5
        je      L_16A1                          ; 74 78
        mov     byte ptr [bp - 0x1b], bl        ; 88 5E E5
        push    dx                              ; 52
        call    L_174C                          ; E8 1C 01
        pop     dx                              ; 5A
        jmp     L_16A1                          ; EB 6E
;   [conditional branch target (if/else)] L_1633
L_1633:
        test    bl, 8                           ; F6 C3 08
        jne     L_1652                          ; 75 1A
        mov     ax, 0xee81                      ; B8 81 EE
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, cx                          ; 8B C1
        stosw   word ptr es:[di], ax            ; AB
        mov     ah, byte ptr cs:[bx + 0xf3]     ; 2E 8A A7 F3 00
        add     ah, 4                           ; 80 C4 04
        mov     al, byte ptr [bp - 0x19]        ; 8A 46 E7
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_1652
L_1652:
        cmp     byte ptr [bp - 0x1b], bl        ; 38 5E E5
        je      L_16A1                          ; 74 4A
        mov     byte ptr [bp - 0x1b], bl        ; 88 5E E5
        mov     cl, byte ptr cs:[bx + 0xfb]     ; 2E 8A 8F FB 00
        xor     ch, ch                          ; 32 ED
        mov     al, byte ptr cs:[bx + 0x10b]    ; 2E 8A 87 0B 01
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0xd3]     ; 2E 8B B7 D3 00
        mov     bx, di                          ; 8B DF
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_1683                          ; 75 0C
        and     ax, 0xff                        ; 25 FF 00
        je      L_1683                          ; 74 07
        add     bx, ax                          ; 03 D8
        mov     word ptr ss:[bx], 0             ; 36 C7 07 00 00
;   [conditional branch target (if/else)] L_1683
L_1683:
        mov     si, 0x1491                      ; BE 91 14
        mov     cl, 4                           ; B1 04
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_1693                          ; 74 05
        mov     si, 0x148a                      ; BE 8A 14
        mov     cl, 0xb                         ; B1 0B
;   [conditional branch target (if/else)] L_1693
L_1693:
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, di                          ; 2B C7
        add     ax, 6                           ; 05 06 00
        mov     byte ptr es:[di - 2], al        ; 26 88 45 FE
;   [branch target] L_16A1
L_16A1:
        lds     di, ptr [bp - 0xe]              ; C5 7E F2
        mov     si, dx                          ; 8B F2
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        mov     bh, byte ptr [bp - 0x1a]        ; 8A 7E E6
        mov     bl, byte ptr [bp - 0x1c]        ; 8A 5E E4
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        push    bp                              ; 55
        lcall   [bp - 8]                        ; FF 5E F8
        pop     bp                              ; 5D
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
;   [unconditional branch target] L_16BA
L_16BA:
        pop     si                              ; 5E
        pop     ds                              ; 1F
        cld                                     ; FC
        lodsw   ax, word ptr [si]               ; AD
        mov     dx, ax                          ; 8B D0
        lodsw   ax, word ptr [si]               ; AD
        mov     cx, ax                          ; 8B C8
        pop     ax                              ; 58
        jmp     L_159A                          ; E9 D3 FE
; Description (heuristic):
;   Pure computation / dispatcher (50 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_16C7   offset=0x16C7  size=50 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_16C7
L_16C7:
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     dh, byte ptr [si + 4]           ; 8A 74 04
        mov     bx, word ptr [si]               ; 8B 1C
        dec     bx                              ; 4B
        and     bx, 0xf                         ; 81 E3 0F 00
        jcxz    L_16F0                          ; E3 17
        cmp     ax, 2                           ; 3D 02 00
        je      L_16F0                          ; 74 12
        or      dh, dh                          ; 0A F6
        je      L_16EA                          ; 74 08
        and     bl, 0xfb                        ; 80 E3 FB
        or      bl, 8                           ; 80 CB 08
        jmp     L_16F0                          ; EB 06
;   [conditional branch target (if/else)] L_16EA
L_16EA:
        and     bl, 0xfe                        ; 80 E3 FE
        or      bl, 2                           ; 80 CB 02
;   [branch target] L_16F0
L_16F0:
        mov     word ptr [bp - 0x12], bx        ; 89 5E EE
        lea     di, [bp - 0x94]                 ; 8D BE 6C FF
        mov     cx, ss                          ; 8C D1
        mov     es, cx                          ; 8E C1
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        mov     cx, cs                          ; 8C C9
        mov     ds, cx                          ; 8E D9
        mov     si, 0x146d                      ; BE 6D 14
        mov     cx, 9                           ; B9 09 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_1723                          ; 74 10
        cmp     ax, 2                           ; 3D 02 00
        jne     L_1723                          ; 75 0B
        mov     si, 0x1476                      ; BE 76 14
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     byte ptr es:[di - 1], dh        ; 26 88 75 FF
;   [conditional branch target (if/else)] L_1723
L_1723:
        mov     cl, byte ptr cs:[bx + 0x1cc5]   ; 2E 8A 8F C5 1C
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x1ca5]   ; 2E 8B B7 A5 1C
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, 0x1480                      ; BE 80 14
        ; constant WM_SIZE
        mov     cl, 5                           ; B1 05
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_1746                          ; 74 0A
        cmp     ax, 2                           ; 3D 02 00
        je      L_1746                          ; 74 05
        mov     si, 0x147c                      ; BE 7C 14
        mov     cl, 7                           ; B1 07
;   [conditional branch target (if/else)] L_1746
L_1746:
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     word ptr [bp - 4], di           ; 89 7E FC
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (180 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_174C   offset=0x174C  size=180 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_16C7, L_174C, L_1901, L_1B1F
;-------------------------------------------------------------------------
;   [sub-routine] L_174C
L_174C:
        lea     ax, [bp - 0x8f]                 ; 8D 86 71 FF
        sub     ax, di                          ; 2B C7
        mov     si, 0x1495                      ; BE 95 14
        mov     cx, 0x15                        ; B9 15 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        add     byte ptr es:[di - 0xf], al      ; 26 00 45 F1
        add     byte ptr es:[di - 5], al        ; 26 00 45 FB
        test    bl, 2                           ; F6 C3 02
        je      L_1771                          ; 74 0A
        mov     byte ptr es:[di - 0x14], 0xc3   ; 26 C6 45 EC C3
        mov     byte ptr es:[di - 0xd], 0x4f    ; 26 C6 45 F3 4F
;   [conditional branch target (if/else)] L_1771
L_1771:
        mov     ah, bl                          ; 8A E3
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     cl, byte ptr cs:[bx + 0x1cc5]   ; 2E 8A 8F C5 1C
        mov     al, cl                          ; 8A C1
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x1ca5]   ; 2E 8B B7 A5 1C
        mov     bl, ah                          ; 8A DC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, 0x14aa                      ; BE AA 14
        mov     cl, 9                           ; B1 09
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        test    bl, 2                           ; F6 C3 02
        je      L_1799                          ; 74 05
        mov     byte ptr es:[di - 7], 0x4f      ; 26 C6 45 F9 4F
;   [error/early exit] L_1799
L_1799:
        sub     byte ptr es:[di - 2], al        ; 26 28 45 FE
        ret                                     ; C3
;   [unconditional branch target] L_179E
L_179E:
        lds     si, ptr [bp + 0x1e]             ; C5 76 1E
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_17C0                          ; E3 1B
        lds     bx, ptr [bp + 0x16]             ; C5 5E 16
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     di, dx                          ; 8B FA
        mov     cx, word ptr [bx + 4]           ; 8B 4F 04
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        dec     si                              ; 4E
        jle     L_17E9                          ; 7E 33
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     si, word ptr [bx + si + 2]      ; 8B 70 02
        call    L_1B1F                          ; E8 5F 03
;   [conditional branch target (if/else)] L_17C0
L_17C0:
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        mov     dx, bx                          ; 8B D3
        mov     di, word ptr [bp + 0xe]         ; 8B 7E 0E
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     cx, ax                          ; 8B C8
        or      cx, di                          ; 0B CF
        je      L_17EC                          ; 74 18
        mov     ds, ax                          ; 8E D8
        mov     cx, word ptr [di + 8]           ; 8B 4D 08
        mov     si, 0xffff                      ; BE FF FF
        cmp     cx, 3                           ; 83 F9 03
        ja      L_17E9                          ; 77 08
        cmp     cx, 1                           ; 83 F9 01
        jne     L_17F9                          ; 75 13
;   [loop start] L_17E6
L_17E6:
        jmp     L_1516                          ; E9 2D FD
;   [conditional branch target (if/else)] L_17E9
L_17E9:
        jmp     L_151C                          ; E9 30 FD
;   [conditional branch target (if/else)] L_17EC
L_17EC:
        lds     di, ptr [bp + 0x12]             ; C5 7E 12
        cmp     word ptr [di + 1], 5            ; 83 7D 01 05
        je      L_17E6                          ; 74 F1
        xor     bx, bx                          ; 33 DB
        xor     si, si                          ; 33 F6
;   [conditional branch target (if/else)] L_17F9
L_17F9:
        and     bx, 7                           ; 81 E3 07 00
        mov     al, byte ptr [bx + di]          ; 8A 01
        mov     byte ptr [bp - 0x1a], al        ; 88 46 E6
        mov     word ptr [bp - 0xa], 0xffff     ; C7 46 F6 FF FF
        mov     cx, si                          ; 8B CE
        call    L_16C7                          ; E8 BB FE
        mov     bl, 8                           ; B3 08
        call    L_174C                          ; E8 3B FF
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        add     si, 4                           ; 83 C6 04
;   [loop start] L_181A
L_181A:
        dec     ax                              ; 48
        jg      L_1820                          ; 7F 03
        jmp     L_1516                          ; E9 F6 FC
;   [conditional branch target (if/else)] L_1820
L_1820:
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
        mov     bl, byte ptr cs:[bx + 0x1ab]    ; 2E 8A 9F AB 01
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
        jmp     L_181A                          ; EB C9
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
        je      L_1894                          ; 74 16
        cmp     word ptr [bp + 0xe], 2          ; 83 7E 0E 02
        je      L_18BC                          ; 74 38
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_1887
L_1887:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [conditional branch target (if/else)] L_1894
L_1894:
        xor     si, si                          ; 33 F6
        mov     word ptr [bp - 0xc], si         ; 89 76 F4
        mov     word ptr [bp - 0xa], si         ; 89 76 F6
;   [loop start] L_189C
L_189C:
        mov     word ptr [bp - 0xe], si         ; 89 76 F2
        xor     di, di                          ; 33 FF
;   [loop start] L_18A1
L_18A1:
        mov     ax, di                          ; 8B C7
        xor     ah, ah                          ; 32 E4
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        call    L_1901                          ; E8 53 00
        xor     di, 0xffff                      ; 81 F7 FF FF
        jne     L_18A1                          ; 75 ED
        inc     si                              ; 46
        cmp     si, 5                           ; 83 FE 05
        jb      L_189C                          ; 72 E2
;   [loop start] L_18BA
L_18BA:
        jmp     L_1887                          ; EB CB
;   [conditional branch target (if/else)] L_18BC
L_18BC:
        xor     di, di                          ; 33 FF
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     di, 0xa                         ; BF 0A 00
;   [loop start] L_18C7
L_18C7:
        mov     ax, word ptr cs:[di + 0x37]     ; 2E 8B 85 37 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        xor     ah, ah                          ; 32 E4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        call    L_1901                          ; E8 2A 00
        sub     di, 2                           ; 83 EF 02
        jne     L_18C7                          ; 75 EB
        mov     word ptr [bp - 0xe], 2          ; C7 46 F2 02 00
        ; constant WM_SIZE
        mov     si, 5                           ; BE 05 00
;   [loop start] L_18E4
L_18E4:
        mov     word ptr [bp - 8], si           ; 89 76 F8
        xor     di, di                          ; 33 FF
;   [loop start] L_18E9
L_18E9:
        mov     ax, di                          ; 8B C7
        xor     ah, ah                          ; 32 E4
        mov     word ptr [bp - 0xc], di         ; 89 7E F4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        call    L_1901                          ; E8 0B 00
        xor     di, 0xffff                      ; 81 F7 FF FF
        jne     L_18E9                          ; 75 ED
        dec     si                              ; 4E
        jns     L_18E4                          ; 79 E5
        jmp     L_18BA                          ; EB B9
; Description (heuristic):
;   Pure computation / dispatcher (149 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1901   offset=0x1901  size=149 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=5, ASM=4)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1A51, L_1E9F
;-------------------------------------------------------------------------
;   [sub-routine] L_1901
L_1901:
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        pop     bx                              ; 5B
        or      ax, ax                          ; 0B C0
        je      L_18BA                          ; 74 A6
        jmp     bx                              ; FF E3
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
        jns     L_1930                          ; 79 03
        jmp     L_1A3D                          ; E9 0D 01
;   [conditional branch target (if/else)] L_1930
L_1930:
        lds     si, ptr [bp + 0xe]              ; C5 76 0E
        dec     bx                              ; 4B
        cmp     bx, 2                           ; 83 FB 02
        jg      L_1950                          ; 7F 17
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_1948                          ; 74 05
        jmp     word ptr cs:[bx + 0x1aa8]       ; 2E FF A7 A8 1A
;   [conditional branch target (if/else)] L_1948
L_1948:
        mov     ax, word ptr cs:[bx + 0x1aae]   ; 2E 8B 87 AE 1A
        jmp     L_1A44                          ; E9 F4 00
;   [conditional branch target (if/else)] L_1950
L_1950:
        jmp     L_1A42                          ; E9 EF 00
        mov     cx, word ptr [si]               ; 8B 0C
        cmp     cx, 5                           ; 83 F9 05
        je      L_1968                          ; 74 0E
        cmp     word ptr [si + 2], 2            ; 83 7C 02 02
        jb      L_1963                          ; 72 03
;   [loop start] L_1960
L_1960:
        mov     cx, 0                           ; B9 00 00
;   [conditional branch target (if/else)] L_1963
L_1963:
        cmp     cx, 5                           ; 83 F9 05
        jg      L_1960                          ; 7F F8
;   [conditional branch target (if/else)] L_1968
L_1968:
        lea     si, [si + 6]                    ; 8D 74 06
        call    L_1A51                          ; E8 E3 00
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, cx                          ; 8B C1
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_1A3D                          ; E9 C5 00
        mov     di, ss                          ; 8C D7
        mov     es, di                          ; 8E C7
        lea     di, [bp - 0xc]                  ; 8D 7E F4
        mov     bx, word ptr [si]               ; 8B 1C
        cmp     bx, 3                           ; 83 FB 03
        jle     L_1989                          ; 7E 03
        mov     bx, 0                           ; BB 00 00
;   [conditional branch target (if/else)] L_1989
L_1989:
        add     bx, bx                          ; 03 DB
        jmp     word ptr cs:[bx + 0x1a70]       ; 2E FF A7 70 1A
        lea     di, [di + 8]                    ; 8D 7D 08
        ; constant WM_CREATE
        mov     bx, 1                           ; BB 01 00
        jmp     L_1A18                          ; E9 7F 00
;   [loop start] L_1999
L_1999:
        lea     si, [si + 2]                    ; 8D 74 02
        call    L_1A51                          ; E8 B2 00
;   [loop start] L_199F
L_199F:
        mov     ax, bx                          ; 8B C3
        cdq                                     ; 99
        ; constant WM_MOVE
        mov     si, 3                           ; BE 03 00
        div     si                              ; F7 F6
        mov     dx, ax                          ; 8B D0
        xor     si, si                          ; 33 F6
        call    L_1E9F                          ; E8 F1 04
        or      si, si                          ; 0B F6
        je      L_19C0                          ; 74 0E
        add     si, si                          ; 03 F6
        mov     ax, word ptr cs:[si + 0x19c3]   ; 2E 8B 84 C3 19
        sub     di, 8                           ; 83 EF 08
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_19C0
L_19C0:
        mov     bx, 0                           ; BB 00 00
        jmp     L_1A18                          ; EB 53
        mov     byte ptr [bp + si], ah          ; 88 22
        stosb   byte ptr es:[di], al            ; AA
        push    bp                              ; 55
        fnsave  dword ptr [bx - 0x3b]           ; DD 77 C5
        je      L_19D0                          ; 74 02
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        dec     dx                              ; 4A
        lds     si, ptr [si + 0xa]              ; C5 74 0A
        mov     cx, 8                           ; B9 08 00
;   [loop iteration target] L_19D8
L_19D8:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     si, dx                          ; 03 F2
        loop    L_19D8                          ; E2 FB
        ; constant WM_MOVE
        mov     bx, 3                           ; BB 03 00
        jmp     L_1A18                          ; EB 36
        nop                                     ; 90
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        cmp     cx, 5                           ; 83 F9 05
        jg      L_1999                          ; 7F AE
        lea     si, [si + 8]                    ; 8D 74 08
        call    L_1A51                          ; E8 60 00
        push    ax                              ; 50
        lea     si, [si - 6]                    ; 8D 74 FA
        call    L_1A51                          ; E8 59 00
        pop     dx                              ; 5A
        cmp     dx, ax                          ; 3B D0
        je      L_199F                          ; 74 A2
        mov     dx, ax                          ; 8B D0
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        mov     bx, cx                          ; 8B D9
        lea     si, [bx + 0x1a78]               ; 8D B7 78 1A
        mov     bx, 2                           ; BB 02 00
        mov     cx, 4                           ; B9 04 00
;   [loop iteration target] L_1A11
L_1A11:
        lodsw   ax, word ptr cs:[si]            ; 2E AD
        xor     ax, dx                          ; 33 C2
        stosw   word ptr es:[di], ax            ; AB
        loop    L_1A11                          ; E2 F9
;   [unconditional branch target] L_1A18
L_1A18:
        mov     dx, 7                           ; BA 07 00
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        and     cl, dl                          ; 22 CA
        mov     ch, dl                          ; 8A EA
        lea     si, [di - 8]                    ; 8D 75 F8
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        mov     word ptr es:[di + 8], bx        ; 26 89 5D 08
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
;   [loop start] L_1A2F
L_1A2F:
        lodsb   al, byte ptr ss:[si]            ; 36 AC
        ror     al, cl                          ; D2 C8
        and     bx, dx                          ; 23 DA
        mov     byte ptr es:[bx + di], al       ; 26 88 01
        inc     bx                              ; 43
        dec     ch                              ; FE CD
        jns     L_1A2F                          ; 79 F2
;   [unconditional branch target] L_1A3D
L_1A3D:
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_1A44                          ; EB 03
        nop                                     ; 90
;   [unconditional branch target] L_1A42
L_1A42:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_1A44
L_1A44:
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
; sub_1A51   offset=0x1A51  size=2 instr  segment=seg1.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_1A51
L_1A51:
        mov     ax, word ptr [si]               ; 8B 04
        mov     dl, byte ptr [si + 2]           ; 8A 54 02
; Description (heuristic):
;   Pure computation / dispatcher (101 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1A56   offset=0x1A56  size=101 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=4)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1A56
;-------------------------------------------------------------------------
;   [sub-routine] L_1A56
L_1A56:
        xor     dh, dh                          ; 32 F6
        xor     bx, bx                          ; 33 DB
        xchg    bl, ah                          ; 86 E3
        add     bx, ax                          ; 03 D8
        add     bx, dx                          ; 03 DA
        mov     ax, 0xffff                      ; B8 FF FF
        mov     dl, al                          ; 8A D0
        cmp     bx, 0x17e                       ; 81 FB 7E 01
        jge     L_1A6F                          ; 7D 04
        xor     ax, ax                          ; 33 C0
        xor     dx, dx                          ; 33 D2
;   [error/early exit] L_1A6F
L_1A6F:
        ret                                     ; C3
        cdq                                     ; 99
        sbb     word ptr [bx + si - 0x1ce7], dx ; 19 90 19 E3
        sbb     bx, cx                          ; 19 CB
        sbb     di, di                          ; 19 FF
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
        fstp    xword ptr [di + 0x537e]         ; DB BD 7E 53
        sbb     word ptr [bx + si + 0x19], di   ; 19 78 19
        inc     dx                              ; 42
        sbb     al, byte ptr [bp + di]          ; 1A 03
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
        call    L_1A56                          ; E8 8E FF
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        or      di, word ptr [bp + 8]           ; 0B 7E 08
        je      L_1AD8                          ; 74 08
        les     di, ptr [bp + 6]                ; C4 7E 06
        cld                                     ; FC
        stosw   word ptr es:[di], ax            ; AB
        mov     word ptr es:[di], dx            ; 26 89 15
;   [conditional branch target (if/else)] L_1AD8
L_1AD8:
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
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
        je      L_1AFD                          ; 74 06
        cmp     word ptr [bp + 0xe], 5          ; 83 7E 0E 05
        jne     L_1B13                          ; 75 16
;   [conditional branch target (if/else)] L_1AFD
L_1AFD:
        lds     di, ptr [bp + 0xa]              ; C5 7E 0A
        mov     bx, word ptr [di]               ; 8B 1D
        cmp     bx, 1                           ; 83 FB 01
        ja      L_1B13                          ; 77 0C
        sub     ax, bx                          ; 2B C3
        les     di, ptr [bp + 6]                ; C4 7E 06
        cld                                     ; FC
        stosw   word ptr es:[di], ax            ; AB
        xor     ah, ah                          ; 32 E4
        stosw   word ptr es:[di], ax            ; AB
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
;   [conditional branch target (if/else)] L_1B13
L_1B13:
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; Description (heuristic):
;   Pure computation / dispatcher (26 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1B1F   offset=0x1B1F  size=26 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0F05, L_1B73
;-------------------------------------------------------------------------
;   [sub-routine] L_1B1F
L_1B1F:
        mov     ds, word ptr cs:[0x1cee]        ; 2E 8E 1E EE 1C
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
        call    L_1B73                          ; E8 25 00
        jae     L_1B6B                          ; 73 1B
        je      L_1B6B                          ; 74 19
        xor     cx, cx                          ; 33 C9
        xchg    byte ptr [0x490], cl            ; 86 0E 90 04
        push    cx                              ; 51
        mov     byte ptr [0x47e], 0x40          ; C6 06 7E 04 40
        sti                                     ; FB
        call    L_0F05                          ; E8 A3 F3
        mov     ds, word ptr cs:[0x1cee]        ; 2E 8E 1E EE 1C
        pop     ax                              ; 58
        mov     byte ptr [0x490], al            ; A2 90 04
;   [conditional branch target (if/else)] L_1B6B
L_1B6B:
        jmp     L_1B6E                          ; EB 01
; Description (heuristic):
;   Internal helper (4 instructions).

;-------------------------------------------------------------------------
; sub_1B6D   offset=0x1B6D  size=4 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_1B6D
;-------------------------------------------------------------------------
;   [sub-routine] L_1B6D
L_1B6D:
        iret                                    ; CF
;   [unconditional branch target] L_1B6E
L_1B6E:
        push    cs                              ; 0E
        call    L_1B6D                          ; E8 FB FF
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (20 instructions).

;-------------------------------------------------------------------------
; sub_1B73   offset=0x1B73  size=20 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1B73
L_1B73:
        mov     ds, word ptr cs:[0x1cee]        ; 2E 8E 1E EE 1C
        test    byte ptr [0x47e], cl            ; 84 0E 7E 04
        jne     L_1BAA                          ; 75 2C
        xor     cx, cx                          ; 33 C9
        cmp     byte ptr [0x47f], cl            ; 38 0E 7F 04
        je      L_1BA7                          ; 74 21
        cmp     ax, word ptr [0x484]            ; 3B 06 84 04
        jg      L_1BA7                          ; 7F 1B
        add     ax, word ptr [0x38]             ; 03 06 38 00
        cmp     ax, word ptr [0x480]            ; 3B 06 80 04
        jl      L_1BA7                          ; 7C 11
        cmp     bx, word ptr [0x486]            ; 3B 1E 86 04
        jg      L_1BA7                          ; 7F 0B
        add     bx, 0x1f                        ; 81 C3 1F 00
        cmp     bx, word ptr [0x482]            ; 3B 1E 82 04
        jl      L_1BA7                          ; 7C 01
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_1BA7
L_1BA7:
        or      cx, cx                          ; 0B C9
        stc                                     ; F9
;   [error/early exit] L_1BAA
L_1BAA:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (69 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1BAB   offset=0x1BAB  size=69 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0E98, L_0F05
;-------------------------------------------------------------------------
;   [sub-routine] L_1BAB
L_1BAB:
        mov     ds, word ptr cs:[0x1cee]        ; 2E 8E 1E EE 1C
        mov     byte ptr [0x47f], 0             ; C6 06 7F 04 00
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
        jcxz    L_1C56                          ; E3 65
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
        call    L_0F05                          ; E8 F5 F2
        cld                                     ; FC
        mov     es, word ptr cs:[0x1cee]        ; 2E 8E 06 EE 1C
        lds     si, ptr [bp + 6]                ; C5 76 06
        mov     ax, ds                          ; 8C D8
        or      ax, si                          ; 0B C6
        je      L_1C49                          ; 74 2A
        mov     di, 0                           ; BF 00 00
        mov     cx, 6                           ; B9 06 00
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        call    L_0E98                          ; E8 6E F2
        mov     ds, word ptr cs:[0x1cee]        ; 2E 8E 1E EE 1C
        cli                                     ; FA
        mov     ax, word ptr [0]                ; A1 00 00
        mov     word ptr [0x48c], ax            ; A3 8C 04
        sub     word ptr [0x488], ax            ; 29 06 88 04
        mov     ax, word ptr [2]                ; A1 02 00
        mov     word ptr [0x48e], ax            ; A3 8E 04
        sub     word ptr [0x48a], ax            ; 29 06 8A 04
        mov     byte ptr [0x47e], 0x40          ; C6 06 7E 04 40
;   [conditional branch target (if/else)] L_1C49
L_1C49:
        jmp     L_1C4C                          ; EB 01
; Description (heuristic):
;   Pure computation / dispatcher (163 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1C4B   offset=0x1C4B  size=163 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_01B3, L_02C0, L_1C4B
;-------------------------------------------------------------------------
;   [sub-routine] L_1C4B
L_1C4B:
        iret                                    ; CF
;   [unconditional branch target] L_1C4C
L_1C4C:
        push    cs                              ; 0E
        call    L_1C4B                          ; E8 FB FF
        mov     byte ptr es:[0x490], 1          ; 26 C6 06 90 04 01
;   [conditional branch target (if/else)] L_1C56
L_1C56:
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
        arpl    word ptr [si], bx               ; 63 1C
        pushf                                   ; 9C
        sbb     al, 0x66                        ; 1C 66
        sbb     al, 0x6b                        ; 1C 6B
        sbb     al, 0x6e                        ; 1C 6E
        sbb     al, 0x78                        ; 1C 78
        sbb     al, 0x7d                        ; 1C 7D
        sbb     al, 0x88                        ; 1C 88
        sbb     al, 0x85                        ; 1C 85
        sbb     al, 0x80                        ; 1C 80
        sbb     al, 0x75                        ; 1C 75
        sbb     al, 0x8d                        ; 1C 8D
        sbb     al, 0xa4                        ; 1C A4
        sbb     al, 0x92                        ; 1C 92
        sbb     al, 0x99                        ; 1C 99
        sbb     al, 0xa1                        ; 1C A1
        sbb     al, 2                           ; 1C 02
        add     al, 4                           ; 04 04
        add     al, byte ptr [0x204]            ; 02 06 04 02
        add     al, 2                           ; 04 02
        add     al, 2                           ; 04 02
        add     al, 0                           ; 04 00
        push    es                              ; 06
        add     al, byte ptr [bp + si]          ; 02 02
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
        jne     L_1D16                          ; 75 0E
        lea     si, [0x11b]                     ; 8D 36 1B 01
        mov     cx, 0x20                        ; B9 20 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        call    L_01B3                          ; E8 9F E4
        jmp     L_1D21                          ; EB 0B
;   [conditional branch target (if/else)] L_1D16
L_1D16:
        lea     si, [0x143]                     ; 8D 36 43 01
        mov     cx, 0x68                        ; B9 68 00
        mov     ax, cx                          ; 8B C1
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
;   [unconditional branch target] L_1D21
L_1D21:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
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
        call    L_02C0                          ; E8 80 E5
        mov     ax, 0xffff                      ; B8 FF FF
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
;   [loop start] L_1D79
L_1D79:
        jmp     L_1D7C                          ; EB 01
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1D7B   offset=0x1D7B  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0F05, L_1B73, L_1D7B
;-------------------------------------------------------------------------
;   [sub-routine] L_1D7B
L_1D7B:
        iret                                    ; CF
;   [unconditional branch target] L_1D7C
L_1D7C:
        push    cs                              ; 0E
        call    L_1D7B                          ; E8 FB FF
        jcxz    L_1DE2                          ; E3 60
        mov     word ptr [0x16], ax             ; A3 16 00
        mov     word ptr [0x18], bx             ; 89 1E 18 00
        mov     cl, 0xc0                        ; B1 C0
        call    L_1B73                          ; E8 E5 FD
        jae     L_1DA8                          ; 73 18
        je      L_1DAF                          ; 74 1D
        or      byte ptr [0x47e], 0x40          ; 80 0E 7E 04 40
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0F05                          ; E8 69 F1
        jmp     L_1D9F                          ; EB 01
; Description (heuristic):
;   Internal helper (10 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1D9E   offset=0x1D9E  size=10 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0EEE, L_1D9E
;-------------------------------------------------------------------------
;   [sub-routine] L_1D9E
L_1D9E:
        iret                                    ; CF
;   [unconditional branch target] L_1D9F
L_1D9F:
        push    cs                              ; 0E
        call    L_1D9E                          ; E8 FB FF
        mov     ds, word ptr cs:[0x1cee]        ; 2E 8E 1E EE 1C
;   [conditional branch target (if/else)] L_1DA8
L_1DA8:
        mov     byte ptr [0x490], 1             ; C6 06 90 04 01
        jmp     L_1DE2                          ; EB 33
;   [conditional branch target (if/else)] L_1DAF
L_1DAF:
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0EEE                          ; E8 3A F1
        jmp     L_1DB7                          ; EB 01
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1DB6   offset=0x1DB6  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1DB6
;-------------------------------------------------------------------------
;   [sub-routine] L_1DB6
L_1DB6:
        iret                                    ; CF
;   [unconditional branch target] L_1DB7
L_1DB7:
        push    cs                              ; 0E
        call    L_1DB6                          ; E8 FB FF
        mov     ds, word ptr cs:[0x1cee]        ; 2E 8E 1E EE 1C
        pushf                                   ; 9C
        cli                                     ; FA
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        mov     ax, word ptr [0x488]            ; A1 88 04
        mov     bx, word ptr [0x48a]            ; 8B 1E 8A 04
        cmp     ax, word ptr [0x16]             ; 3B 06 16 00
        jne     L_1D79                          ; 75 A8
        cmp     bx, word ptr [0x18]             ; 3B 1E 18 00
        jne     L_1D79                          ; 75 A2
        mov     byte ptr [0x490], cl            ; 88 0E 90 04
        jmp     L_1DDE                          ; EB 01
; Description (heuristic):
;   Pure computation / dispatcher (33 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1DDD   offset=0x1DDD  size=33 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1DDD
;-------------------------------------------------------------------------
;   [sub-routine] L_1DDD
L_1DDD:
        iret                                    ; CF
;   [unconditional branch target] L_1DDE
L_1DDE:
        push    cs                              ; 0E
        call    L_1DDD                          ; E8 FB FF
;   [branch target] L_1DE2
L_1DE2:
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
        push    es                              ; 06
        xor     cx, cx                          ; 33 C9
        xchg    byte ptr [0x490], cl            ; 86 0E 90 04
        jcxz    L_1E67                          ; E3 63
        mov     al, byte ptr [0x47e]            ; A0 7E 04
        add     al, al                          ; 02 C0
        jb      L_1E86                          ; 72 7B
        jns     L_1E86                          ; 79 79
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [0x488]            ; A1 88 04
        mov     bx, word ptr [0x48a]            ; 8B 1E 8A 04
;   [loop start] L_1E16
L_1E16:
        jmp     L_1E19                          ; EB 01
; Description (heuristic):
;   Internal helper (14 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1E18   offset=0x1E18  size=14 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0EEE, L_1B73, L_1E18
;-------------------------------------------------------------------------
;   [sub-routine] L_1E18
L_1E18:
        iret                                    ; CF
;   [unconditional branch target] L_1E19
L_1E19:
        push    cs                              ; 0E
        call    L_1E18                          ; E8 FB FF
        mov     si, ax                          ; 8B F0
        mov     di, bx                          ; 8B FB
        xor     cx, cx                          ; 33 C9
        call    L_1B73                          ; E8 4D FD
        jne     L_1E69                          ; 75 41
        mov     word ptr [0x16], si             ; 89 36 16 00
        mov     word ptr [0x18], di             ; 89 3E 18 00
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0EEE                          ; E8 B9 F0
        jmp     L_1E38                          ; EB 01
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1E37   offset=0x1E37  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1E37
;-------------------------------------------------------------------------
;   [sub-routine] L_1E37
L_1E37:
        iret                                    ; CF
;   [unconditional branch target] L_1E38
L_1E38:
        push    cs                              ; 0E
        call    L_1E37                          ; E8 FB FF
        mov     ds, word ptr cs:[0x1cee]        ; 2E 8E 1E EE 1C
        mov     byte ptr [0x47e], 0             ; C6 06 7E 04 00
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [0x488]            ; A1 88 04
        mov     bx, word ptr [0x48a]            ; 8B 1E 8A 04
        cmp     ax, word ptr [0x16]             ; 3B 06 16 00
        jne     L_1E16                          ; 75 C1
        cmp     bx, word ptr [0x18]             ; 3B 1E 18 00
        jne     L_1E16                          ; 75 BB
        mov     byte ptr [0x490], 1             ; C6 06 90 04 01
        jmp     L_1E63                          ; EB 01
; Description (heuristic):
;   Internal helper (10 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1E62   offset=0x1E62  size=10 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0F05, L_1E62
;-------------------------------------------------------------------------
;   [sub-routine] L_1E62
L_1E62:
        iret                                    ; CF
;   [unconditional branch target] L_1E63
L_1E63:
        push    cs                              ; 0E
        call    L_1E62                          ; E8 FB FF
;   [conditional branch target (if/else)] L_1E67
L_1E67:
        jmp     L_1E8B                          ; EB 22
;   [conditional branch target (if/else)] L_1E69
L_1E69:
        test    byte ptr [0x47e], 0x40          ; F6 06 7E 04 40
        jne     L_1E86                          ; 75 16
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0F05                          ; E8 90 F0
        jmp     L_1E78                          ; EB 01
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_1E77   offset=0x1E77  size=19 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: retf
;
; Near calls (internal): L_1E77
;-------------------------------------------------------------------------
;   [sub-routine] L_1E77
L_1E77:
        iret                                    ; CF
;   [unconditional branch target] L_1E78
L_1E78:
        push    cs                              ; 0E
        call    L_1E77                          ; E8 FB FF
        mov     ds, word ptr cs:[0x1cee]        ; 2E 8E 1E EE 1C
        mov     byte ptr [0x47e], 0x40          ; C6 06 7E 04 40
;   [conditional branch target (if/else)] L_1E86
L_1E86:
        mov     byte ptr [0x490], 1             ; C6 06 90 04 01
;   [unconditional branch target] L_1E8B
L_1E8B:
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
; sub_1E9F   offset=0x1E9F  size=44 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=5)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1E9F
L_1E9F:
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
        je      L_1EC6                          ; 74 09
        ; constant WM_MOVE
        mov     al, 3                           ; B0 03
        cmp     dl, 0x30                        ; 80 FA 30
        je      L_1EC6                          ; 74 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_1EC6
L_1EC6:
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        or      si, ax                          ; 0B F0
;   [loop start] L_1ECC
L_1ECC:
        dec     dl                              ; FE CA
        jl      L_1EF7                          ; 7C 27
        xor     ax, ax                          ; 33 C0
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        mov     ch, dl                          ; 8A EA
;   [loop iteration target] L_1ED6
L_1ED6:
        shl     ax, 1                           ; D1 E0
        ; constant WM_SETTEXT
        mov     bl, ch                          ; 8A DD
        and     bl, dh                          ; 22 DE
        add     ah, byte ptr [bx + 0x1e97]      ; 02 A7 97 1E
        add     al, byte ptr [bx + 0x1e9b]      ; 02 87 9B 1E
        shr     ch, 1                           ; D0 ED
        shr     ch, 1                           ; D0 ED
        loop    L_1ED6                          ; E2 EC
        mov     bl, al                          ; 8A D8
        mov     cl, ah                          ; 8A CC
        ; constant GMEM_ZEROINIT
        mov     al, 0x80                        ; B0 80
        shr     al, cl                          ; D2 E8
        or      byte ptr es:[bx + di], al       ; 26 08 01
        jmp     L_1ECC                          ; EB D5
;   [error/early exit] L_1EF7
L_1EF7:
        add     di, 8                           ; 83 C7 08
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (18 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1EFB   offset=0x1EFB  size=18 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_1EFB
L_1EFB:
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_1F19                          ; 73 19
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_1F19                          ; 77 10
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_1F14                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_1F14
L_1F14:
        mov     sp, ax                          ; 8B E0
        clc                                     ; F8
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_1F19
L_1F19:
        mov     ax, word ptr ss:[0xa]           ; 36 A1 0A 00
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
        xor     ax, ax                          ; 33 C0
        mov     dx, 0x8000                      ; BA 00 80
        stc                                     ; F9
        jmp     bx                              ; FF E3

ATTDC_TEXT ENDS

        END
