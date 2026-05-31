; ======================================================================
; ATTDEB / seg1.asm   (segment 1 of ATTDEB)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        39
; Total instructions:                 4060
; 
; Classification (pass8):
;   C-origin (high+medium):              0
;   ASM-origin (high+medium):           22
;   Unclear:                            15
;   Tiny / unclassified:                 2
; 
; Far API calls in this segment:     1 (1 unique)
;   Top:
;        1  GETPROFILEINT
; ======================================================================
; AUTO-GENERATED from original ATTDEB segment 1
; segment_size=9728 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

ATTDEB_TEXT SEGMENT BYTE PUBLIC 'CODE'

        add     al, 0                           ; 04 00
        or      al, 0xa                         ; 0C 0A
        push    cs                              ; 0E
        or      word ptr [di], cx               ; 09 0D
        or      cx, word ptr [bx]               ; 0B 0F
        or      byte ptr [bp + di], cl          ; 08 0B
        or      ax, 0xe09                       ; 0D 09 0E
        or      cl, byte ptr [si]               ; 0A 0C
        or      byte ptr [bx + si], al          ; 08 00
        add     byte ptr [bx + si], al          ; 00 00
        inc     sp                              ; 44
        inc     bp                              ; 45
        inc     dx                              ; 42
        inc     bx                              ; 43
        jne     L_008C                          ; 75 72
        jae     L_008B                          ; 73 6F
        jb      L_001E                          ; 72 00
;   [conditional branch target (if/else)] L_001E
L_001E:
        add     byte ptr cs:[0x3c00], dh        ; 2E 00 36 00 3C
        add     byte ptr [si], al               ; 00 44 00
        dec     bp                              ; 4D
        add     byte ptr [si], dl               ; 00 54 00
        pop     si                              ; 5E
        add     byte ptr [di], ah               ; 00 65 00
        inc     bx                              ; 43
        inc     bx                              ; 43
        inc     dx                              ; 42
        insb    byte ptr es:[di], dx            ; 6C
        popaw                                   ; 61
        arpl    word ptr [bp + di], bp          ; 63 6B 00
        inc     bx                              ; 43
        inc     bx                              ; 43
        push    dx                              ; 52
        add     byte ptr fs:[bp + di + 0x43], al ; 65 64 00 43 43
        inc     di                              ; 47
        jb      L_00A6                          ; 72 65
        outsb   dx, byte ptr gs:[si]            ; 65 6E
        add     byte ptr [bp + di + 0x43], al   ; 00 43 43
        pop     cx                              ; 59
        insb    byte ptr es:[di], dx            ; 65 6C
        insb    byte ptr es:[di], dx            ; 6C
        outsw   dx, word ptr [si]               ; 6F
        ja      L_004D                          ; 77 00
;   [conditional branch target (if/else)] L_004D
L_004D:
        inc     bx                              ; 43
        inc     bx                              ; 43
        inc     dx                              ; 42
        insb    byte ptr es:[di], dx            ; 6C
        jne     L_00B8                          ; 75 65
        add     byte ptr [bp + di + 0x43], al   ; 00 43 43
        dec     bp                              ; 4D
        popaw                                   ; 61
        outsb   dx, byte ptr gs:[esi]           ; 67 65 6E
        je      L_00BE                          ; 74 61
        add     byte ptr [bp + di + 0x43], al   ; 00 43 43
        inc     bx                              ; 43
        jns     L_00C4                          ; 79 61
        outsb   dx, byte ptr [si]               ; 6E
        add     byte ptr [bp + di + 0x43], al   ; 00 43 43
        push    di                              ; 57
        push    0x7469                          ; 68 69 74
        add     byte ptr gs:[si + 0x45], al     ; 65 00 44 45
        inc     dx                              ; 42
        inc     bx                              ; 43
        outsw   dx, word ptr [si]               ; 6F
        insb    byte ptr es:[di], dx            ; 6C
        outsw   dx, word ptr [si]               ; 6F
        jb      L_00BF                          ; 72 49
        outsb   dx, byte ptr [si]               ; 6E
        je      L_00DE                          ; 74 65
        outsb   dx, byte ptr [si]               ; 6E
        jae     L_00E5                          ; 73 69
        je      L_00F7                          ; 74 79
        add     byte ptr [bp + di - 0x7600], al ; 00 83 00 8A
        add     byte ptr [bx + di + 0x42], cl   ; 00 49 42
        insb    byte ptr es:[di], dx            ; 6C
        popaw                                   ; 61
        arpl    word ptr [bp + di], bp          ; 63 6B 00
        dec     cx                              ; 49
;   [conditional branch target (if/else)] L_008B
L_008B:
        push    dx                              ; 52
;   [conditional branch target (if/else)] L_008C
L_008C:
        add     byte ptr fs:[bx + si], al       ; 65 64 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     bh, bh                          ; 00 FF
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        inc     word ptr [bx + si]              ; FF 00
        add     bh, bh                          ; 00 FF
        inc     word ptr [bx + si]              ; FF 00
        add     byte ptr [bx + si], al          ; 00 00
        add     bh, bh                          ; 00 FF
        add     bh, bh                          ; 00 FF
        add     bh, bh                          ; 00 FF
;   [conditional branch target (if/else)] L_00A6
L_00A6:
        add     byte ptr [bx + si], al          ; 00 00
        db      0ffh                            ; FF
        inc     word ptr [bx + si]              ; FF 00
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        inc     word ptr [bx + si]              ; FF 00
        add     byte ptr [bx + si], al          ; 00 00
        inc     ax                              ; 40
        inc     ax                              ; 40
        add     byte ptr [bx + si - 0x3f40], 0xff ; 80 80 C0 C0 FF
;   [conditional branch target (if/else)] L_00B8
L_00B8:
        inc     word ptr [bp + di]              ; FF 03
        cli                                     ; FA
        jns     L_00C1                          ; 79 04
        sub     di, 0x7fb0                      ; 81 EF B0 7F
;   [conditional branch target (if/else)] L_00C1
L_00C1:
        sub     cl, 0x1c                        ; 80 E9 1C
;   [conditional branch target (if/else)] L_00C4
L_00C4:
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 0x32                        ; 80 E9 32
        add     di, dx                          ; 03 FA
        jns     L_00D3                          ; 79 04
        add     di, 0x7fb0                      ; 81 C7 B0 7F
;   [conditional branch target (if/else)] L_00D3
L_00D3:
        sub     cl, 0x1c                        ; 80 E9 1C
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 0x32                        ; 80 E9 32
        add     di, dx                          ; 03 FA
        jns     L_00E5                          ; 79 04
        sub     di, 0x7fb0                      ; 81 EF B0 7F
;   [conditional branch target (if/else)] L_00E5
L_00E5:
        sub     cl, 0x1c                        ; 80 E9 1C
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 0x32                        ; 80 E9 32
        add     di, dx                          ; 03 FA
        jns     L_00F7                          ; 79 04
        add     di, 0x7fb0                      ; 81 C7 B0 7F
;   [conditional branch target (if/else)] L_00F7
L_00F7:
        sub     cl, 0x1c                        ; 80 E9 1C
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 0x32                        ; 80 E9 32
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 0x12                        ; 80 E9 12
        add     di, dx                          ; 03 FA
        jns     L_0110                          ; 79 04
        sub     di, 0x7fb0                      ; 81 EF B0 7F
;   [conditional branch target (if/else)] L_0110
L_0110:
        sub     cl, 0x3c                        ; 80 E9 3C
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 0x12                        ; 80 E9 12
        add     di, dx                          ; 03 FA
        jns     L_0122                          ; 79 04
        add     di, 0x7fb0                      ; 81 C7 B0 7F
;   [conditional branch target (if/else)] L_0122
L_0122:
        sub     cl, 0x3c                        ; 80 E9 3C
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 0x12                        ; 80 E9 12
        add     di, dx                          ; 03 FA
        jns     L_0134                          ; 79 04
        sub     di, 0x7fb0                      ; 81 EF B0 7F
;   [conditional branch target (if/else)] L_0134
L_0134:
        sub     cl, 0x3c                        ; 80 E9 3C
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 0x12                        ; 80 E9 12
        add     di, dx                          ; 03 FA
        jns     L_0146                          ; 79 04
        add     di, 0x7fb0                      ; 81 C7 B0 7F
;   [conditional branch target (if/else)] L_0146
L_0146:
        sub     cl, 0x3c                        ; 80 E9 3C
        mov     cx, 0xcb00                      ; B9 00 CB
        add     ch, bl                          ; 00 DD
        add     bh, ch                          ; 00 EF
        add     byte ptr [bx + di], al          ; 00 01
        add     word ptr [bp + di], dx          ; 01 13
        add     word ptr [di], sp               ; 01 25
        add     word ptr [bx], si               ; 01 37
        add     si, dx                          ; 01 D6
        add     dh, dl                          ; 00 D6
        add     al, ch                          ; 00 E8
        add     al, ch                          ; 00 E8
        add     byte ptr [si], ch               ; 00 2C
        add     word ptr [0x2c01], di           ; 01 3E 01 2C
        add     word ptr [0xb01], di            ; 01 3E 01 0B
        or      cx, word ptr [bp + di]          ; 0B 0B
        or      ax, word ptr [bx]               ; 0B 07
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
        add     byte ptr [bx + si], cl          ; 00 08
        add     byte ptr [bp + si], 0x90        ; 80 02 90
        add     word ptr [bx + si], dx          ; 01 50 00
        add     ax, word ptr [bx + di]          ; 03 01
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], ah          ; 00 A0 00 00
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
        add     byte ptr [bp + di], al          ; 00 03
        add     bh, bh                          ; 00 FF
        ljmp    [bx + si]                       ; FF 28
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], cl          ; 00 08
        add     byte ptr [bp + si], ah          ; 00 22
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bp + si], ah          ; 00 22
        add     byte ptr [bx + si], cl          ; 00 08
        add     byte ptr [si], al               ; 00 04
        and     byte ptr [bx + si], al          ; 20 00
        add     byte ptr [bx + di], al          ; 00 01
        add     byte ptr [bp + si], dh          ; 00 32
        add     byte ptr [si], bh               ; 00 3C
        add     byte ptr [bp], cl               ; 00 4E 00
        pushf                                   ; 9C
        add     byte ptr [bp + 8], ah           ; 00 66 08
        dec     bp                              ; 4D
        push    es                              ; 06
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
; sub_0229   offset=0x0229  size=63 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=2, ASM=7)
; Prologue: saves_regs     Epilogue: ret
;
; Far API calls:
;   GETPROFILEINT
;-------------------------------------------------------------------------
;   [sub-routine] L_0229
L_0229:
        push    es                              ; 06
        push    di                              ; 57
        ; constant WM_PAINT
        mov     ah, 0xf                         ; B4 0F
        int     0x10                            ; CD 10
        pop     di                              ; 5F
        pop     es                              ; 07
        stosb   byte ptr es:[di], al            ; AA
        cmp     word ptr cs:[0x12], 0           ; 2E 83 3E 12 00 00
        jne     L_0277                          ; 75 3D
        dec     word ptr cs:[0x12]              ; 2E FF 0E 12 00
        push    di                              ; 57
        lea     di, [0]                         ; 8D 3E 00 00
        add     di, 9                           ; 83 C7 09
        mov     dx, 0x14                        ; BA 14 00
        lea     bx, [0x1e]                      ; 8D 1E 1E 00
        mov     cx, 8                           ; B9 08 00
;   [loop iteration target] L_0251
L_0251:
        push    bx                              ; 53
        push    dx                              ; 52
        push    cx                              ; 51
        mov     si, word ptr cs:[bx]            ; 2E 8B 37
        xor     ah, ah                          ; 32 E4
        mov     al, byte ptr cs:[di]            ; 2E 8A 05
        push    ds                              ; 1E
        push    dx                              ; 52
        push    ds                              ; 1E
        push    si                              ; 56
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        pop     cx                              ; 59
        pop     dx                              ; 5A
        pop     bx                              ; 5B
        cmp     al, 0x10                        ; 3C 10
        ja      L_0270                          ; 77 03
        mov     byte ptr cs:[di], al            ; 2E 88 05
;   [conditional branch target (if/else)] L_0270
L_0270:
        add     bx, 2                           ; 83 C3 02
        inc     di                              ; 47
        loop    L_0251                          ; E2 DB
        pop     di                              ; 5F
;   [conditional branch target (if/else)] L_0277
L_0277:
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        mov     byte ptr cs:[0x11], al          ; 2E A2 11 00
        int     0x10                            ; CD 10
        push    es                              ; 06
        push    cs                              ; 0E
        pop     es                              ; 07
        lea     si, [0]                         ; 8D 36 00 00
        ; constant WM_SIZE
        mov     al, 5                           ; B0 05
        mov     bh, 0                           ; B7 00
        ; constant VK_SHIFT
        mov     bl, 0x10                        ; B3 10
        mov     ah, 0xb                         ; B4 0B
        int     0x10                            ; CD 10
        pop     es                              ; 07
        push    es                              ; 06
        push    di                              ; 57
        ; constant WM_PAINT
        mov     ah, 0xf                         ; B4 0F
        int     0x10                            ; CD 10
        pop     di                              ; 5F
        pop     es                              ; 07
        xor     bx, bx                          ; 33 DB
        cmp     al, byte ptr cs:[0x11]          ; 2E 3A 06 11 00
        jne     L_02A5                          ; 75 02
        not     bx                              ; F7 D3
;   [error/early exit] L_02A5
L_02A5:
        mov     ax, bx                          ; 8B C3
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (1738 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_02A8   offset=0x02A8  size=1738 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=1, ASM=7)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_25D2
;-------------------------------------------------------------------------
;   [sub-routine] L_02A8
L_02A8:
        mov     al, byte ptr [si + 0x20]        ; 8A 44 20
        mov     ah, 0                           ; B4 00
        int     0x10                            ; CD 10
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        ret                                     ; C3
        dec     cx                              ; 49
        je      L_02B8                          ; 74 03
        jmp     0xffffe342                      ; E9 8A E0
;   [conditional branch target (if/else)] L_02B8
L_02B8:
        and     ax, bp                          ; 23 C5
        or      al, bh                          ; 0A C7
        mov     bh, ah                          ; 8A FC
        and     ax, 0xffff                      ; 25 FF FF
        or      al, ah                          ; 0A C4
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        xchg    word ptr [bp + 2], ax           ; 87 46 02
        xchg    word ptr [bp], ax               ; 87 46 00
        mov     word ptr [bp + 4], ax           ; 89 46 04
        L_02CB:
        db      0ffh                            ; FF
        jg      L_0312                          ; 7F 3F
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
        loopne  L_032C                          ; E0 3F
        sar     byte ptr [bx - 0x80], 0xf6      ; C0 7F 80 F6
        sal     byte ptr [bp + si], 1           ; D0 32
        add     ax, 0x50a                       ; 05 0A 05
        and     al, byte ptr [di]               ; 22 05
        xor     al, bl                          ; 32 C3
;   [loop start] L_02FA
L_02FA:
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
        jp      L_02FA                          ; 7A E7
        jns     L_02CB                          ; 79 B6
        insw    word ptr es:[di], dx            ; 6D
        stosb   byte ptr es:[di], al            ; AA
        L_0312:
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
        mov     ax, 0x40                        ; B8 40 00
        call    L_25D2                          ; E8 A2 22
        push    si                              ; 56
        L_032C:
        push    di                              ; 57
        jae     L_0337                          ; 73 03
        jmp     L_0B69                          ; E9 32 08
;   [conditional branch target (if/else)] L_0337
L_0337:
        cld                                     ; FC
        mov     cx, 0x100                       ; B9 00 01
        mov     word ptr [bp - 0x3a], cx        ; 89 4E C6
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_03B4                          ; 74 69
        mov     byte ptr [bp - 0x39], cl        ; 88 4E C7
        mov     dx, 0xc0                        ; BA C0 00
        xchg    cl, ch                          ; 86 E9
;   [loop start] L_0353
L_0353:
        inc     ch                              ; FE C5
        test    dx, ax                          ; 85 C2
        je      L_035D                          ; 74 04
        inc     cl                              ; FE C1
        xor     ch, ch                          ; 32 ED
;   [conditional branch target (if/else)] L_035D
L_035D:
        shl     dx, 1                           ; D1 E2
        shl     dx, 1                           ; D1 E2
        jae     L_0353                          ; 73 F0
        ; constant WM_SIZE
        mov     dl, 5                           ; B2 05
        test    ax, 0x20                        ; A9 20 00
        je      L_036E                          ; 74 04
        inc     ch                              ; FE C5
        inc     dl                              ; FE C2
;   [conditional branch target (if/else)] L_036E
L_036E:
        and     ch, 0xfe                        ; 80 E5 FE
        sub     dl, ch                          ; 2A D5
        mov     byte ptr [bp - 0xb], dl         ; 88 56 F5
        mov     bx, ax                          ; 8B D8
        and     bx, 0x1c                        ; 81 E3 1C 00
        shr     bx, 1                           ; D1 EB
        and     al, 3                           ; 24 03
        cmp     bl, 5                           ; 80 FB 05
        jb      L_0388                          ; 72 03
        add     cl, 2                           ; 80 C1 02
;   [conditional branch target (if/else)] L_0388
L_0388:
        mov     dl, cl                          ; 8A D1
        add     cl, al                          ; 02 C8
        add     cl, cl                          ; 02 C9
        mov     bx, word ptr cs:[bx + 0x310]    ; 2E 8B 9F 10 03
        rol     bx, cl                          ; D3 C3
        mov     word ptr [bp - 0x2e], bx        ; 89 5E D2
;   [loop start] L_0398
L_0398:
        mov     si, bx                          ; 8B F3
        and     si, 3                           ; 81 E6 03 00
        ror     bx, 1                           ; D1 CB
        ror     bx, 1                           ; D1 CB
        inc     byte ptr [bp + si - 0x3a]       ; FE 42 C6
        dec     dl                              ; FE CA
        jne     L_0398                          ; 75 EF
        test    byte ptr [bp - 0x3a], 1         ; F6 46 C6 01
        je      L_03B4                          ; 74 05
;   [loop start] L_03AF
L_03AF:
        xor     ax, ax                          ; 33 C0
        jmp     L_0B68                          ; E9 B4 07
;   [conditional branch target (if/else)] L_03B4
L_03B4:
        xor     cx, cx                          ; 33 C9
        ; constant WM_CREATE
        mov     dx, 1                           ; BA 01 00
        cmp     byte ptr [bp - 0x39], cl        ; 38 4E C7
        je      L_03EC                          ; 74 2E
        ; constant WM_CREATE
        mov     ch, 1                           ; B5 01
        lds     si, ptr [bp + 0x1a]             ; C5 76 1A
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        cmp     ax, dx                          ; 3B C2
        cmc                                     ; F5
        rcl     ch, 1                           ; D0 D5
        lodsw   ax, word ptr [si]               ; AD
        lodsw   ax, word ptr [si]               ; AD
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, 0x101                       ; 3D 01 01
        je      L_03DE                          ; 74 06
        cmp     ax, 0x103                       ; 3D 03 01
        jne     L_03AF                          ; 75 D2
        stc                                     ; F9
;   [conditional branch target (if/else)] L_03DE
L_03DE:
        rcl     ch, 1                           ; D0 D5
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp + 0x1a], ax        ; 89 46 1A
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp + 0x1c], ax        ; 89 46 1C
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
;   [conditional branch target (if/else)] L_03EC
L_03EC:
        lds     si, ptr [bp + 0x22]             ; C5 76 22
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        cmp     ax, dx                          ; 3B C2
        cmc                                     ; F5
        rcl     ch, 1                           ; D0 D5
        lodsw   ax, word ptr [si]               ; AD
        lodsw   ax, word ptr [si]               ; AD
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, 0x101                       ; 3D 01 01
        je      L_040D                          ; 74 09
        or      ch, 0x20                        ; 80 CD 20
        cmp     ax, 0x103                       ; 3D 03 01
        jne     L_03AF                          ; 75 A3
        stc                                     ; F9
;   [conditional branch target (if/else)] L_040D
L_040D:
        rcl     ch, 1                           ; D0 D5
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp + 0x22], ax        ; 89 46 22
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp + 0x24], ax        ; 89 46 24
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        test    ch, 0x10                        ; F6 C5 10
        je      L_042D                          ; 74 0D
        ; constant WM_SETTEXT
        mov     al, ch                          ; 8A C5
        and     al, 5                           ; 24 05
        je      L_042D                          ; 74 07
        xor     al, 5                           ; 34 05
        je      L_042D                          ; 74 03
        or      ch, 0x80                        ; 80 CD 80
;   [conditional branch target (if/else)] L_042D
L_042D:
        mov     byte ptr [bp - 9], ch           ; 88 6E F7
        cmp     byte ptr [bp - 0x37], dh        ; 38 76 C9
        je      L_0488                          ; 74 53
        or      byte ptr [bp - 9], 0x20         ; 80 4E F7 20
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        cmp     word ptr [si + 0x20], 1         ; 83 7C 20 01
        je      L_0485                          ; 74 43
        mov     al, byte ptr [si + 0x22]        ; 8A 44 22
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        shl     ch, 1                           ; D0 E5
        js      L_0488                          ; 78 3C
        jae     L_047D                          ; 73 2F
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     bx, word ptr es:[di + 4]        ; 26 8B 5D 04
        mov     dx, word ptr es:[di + 6]        ; 26 8B 55 06
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        lea     di, [bp - 0x42]                 ; 8D 7E BE
        mov     cx, 8                           ; B9 08 00
;   [loop iteration target] L_0463
L_0463:
        lodsb   al, byte ptr [si]               ; AC
        mov     ah, byte ptr [si + 7]           ; 8A 64 07
        xor     ax, dx                          ; 33 C2
        or      ah, al                          ; 0A E0
        mov     al, byte ptr [si + 0xf]         ; 8A 44 0F
        xor     al, bl                          ; 32 C3
        or      al, ah                          ; 0A C4
        not     al                              ; F6 D0
        stosb   byte ptr es:[di], al            ; AA
        loop    L_0463                          ; E2 EC
        mov     word ptr [bp + 0xc], es         ; 8C 46 0C
        lea     si, [di - 0x20]                 ; 8D 75 E0
;   [conditional branch target (if/else)] L_047D
L_047D:
        add     si, 0x18                        ; 83 C6 18
        mov     word ptr [bp + 0xa], si         ; 89 76 0A
        jmp     L_0488                          ; EB 03
;   [loop start (also forward branch)] L_0485
L_0485:
        jmp     L_03AF                          ; E9 27 FF
;   [branch target] L_0488
L_0488:
        mov     si, word ptr [bp + 0x14]        ; 8B 76 14
        or      si, si                          ; 0B F6
        je      L_0485                          ; 74 F6
        mov     di, word ptr [bp + 0x12]        ; 8B 7E 12
        or      di, di                          ; 0B FF
        je      L_0485                          ; 74 EF
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        dec     dx                              ; 4A
        mov     bx, word ptr [bp + 0x20]        ; 8B 5E 20
        mov     di, bx                          ; 8B FB
        and     bx, 7                           ; 81 E3 07 00
        mov     ax, di                          ; 8B C7
        cmp     byte ptr [bp - 0x39], bh        ; 38 7E C7
        je      L_04B1                          ; 74 07
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     byte ptr [bp - 6], 2            ; C6 46 FA 02
;   [conditional branch target (if/else)] L_04B1
L_04B1:
        mov     si, ax                          ; 8B F0
        and     ax, 7                           ; 25 07 00
        cmp     si, di                          ; 3B F7
        jl      L_04E7                          ; 7C 2D
        sub     al, bl                          ; 2A C3
        mov     byte ptr [bp - 7], 1            ; C6 46 F9 01
        mov     ch, byte ptr cs:[bx + 0x2d0]    ; 2E 8A AF D0 02
        ja      L_04CB                          ; 77 04
        mov     byte ptr [bp - 6], 1            ; C6 46 FA 01
;   [conditional branch target (if/else)] L_04CB
L_04CB:
        add     al, 8                           ; 04 08
        and     al, 7                           ; 24 07
        add     bx, dx                          ; 03 DA
        mov     dx, bx                          ; 8B D3
        and     bx, 7                           ; 81 E3 07 00
        mov     cl, byte ptr cs:[bx + 0x2d8]    ; 2E 8A 8F D8 02
        mov     bl, al                          ; 8A D8
        add     bx, bx                          ; 03 DB
        mov     bx, word ptr cs:[bx + 0x2e0]    ; 2E 8B 9F E0 02
        jmp     L_051C                          ; EB 35
;   [conditional branch target (if/else)] L_04E7
L_04E7:
        mov     byte ptr [bp - 7], ah           ; 88 66 F9
        mov     cl, byte ptr cs:[bx + 0x2d0]    ; 2E 8A 8F D0 02
        add     ax, dx                          ; 03 C2
        add     bx, dx                          ; 03 DA
        add     di, dx                          ; 03 FA
        add     si, dx                          ; 03 F2
        mov     dx, bx                          ; 8B D3
        and     ax, 7                           ; 25 07 00
        and     bx, 7                           ; 81 E3 07 00
        mov     ch, byte ptr cs:[bx + 0x2d8]    ; 2E 8A AF D8 02
        sub     al, bl                          ; 2A C3
        jb      L_050D                          ; 72 04
        mov     byte ptr [bp - 6], 1            ; C6 46 FA 01
;   [conditional branch target (if/else)] L_050D
L_050D:
        add     al, 8                           ; 04 08
        and     al, 7                           ; 24 07
        mov     ah, cl                          ; 8A E1
        mov     cl, al                          ; 8A C8
        mov     bx, 0xff                        ; BB FF 00
        shl     bx, cl                          ; D3 E3
        mov     cl, ah                          ; 8A CC
;   [unconditional branch target] L_051C
L_051C:
        mov     byte ptr [bp - 3], al           ; 88 46 FD
        mov     word ptr [bp - 0x12], bx        ; 89 5E EE
        shr     dx, 1                           ; D1 EA
        shr     dx, 1                           ; D1 EA
        shr     dx, 1                           ; D1 EA
        jne     L_052F                          ; 75 05
        and     ch, cl                          ; 22 E9
        xor     cl, cl                          ; 32 C9
        inc     dx                              ; 42
;   [conditional branch target (if/else)] L_052F
L_052F:
        dec     dx                              ; 4A
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
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
        add     word ptr [bp + 0x22], di        ; 01 7E 22
        mov     bx, word ptr [bp + 0x1e]        ; 8B 5E 1E
        mov     cx, bx                          ; 8B CB
        cmp     byte ptr [bp - 0x39], 0         ; 80 7E C7 00
        je      L_0563                          ; 74 0C
        shr     si, 1                           ; D1 EE
        shr     si, 1                           ; D1 EE
        shr     si, 1                           ; D1 EE
        add     word ptr [bp + 0x1a], si        ; 01 76 1A
        mov     cx, word ptr [bp + 0x16]        ; 8B 4E 16
;   [conditional branch target (if/else)] L_0563
L_0563:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        ; constant WM_CREATE
        mov     dh, 1                           ; B6 01
        cmp     cx, bx                          ; 3B CB
        jge     L_0573                          ; 7D 07
        dec     ax                              ; 48
        add     bx, ax                          ; 03 D8
        add     cx, ax                          ; 03 C8
        mov     dh, 0xff                        ; B6 FF
;   [conditional branch target (if/else)] L_0573
L_0573:
        mov     byte ptr [bp - 4], bl           ; 88 5E FC
        mov     byte ptr [bp - 5], dh           ; 88 76 FB
        mov     di, word ptr [bp - 0x28]        ; 8B 7E D8
        mov     ax, di                          ; 8B C7
        mov     si, di                          ; 8B F7
        test    byte ptr [bp - 9], 2            ; F6 46 F7 02
        je      L_05A9                          ; 74 23
        mov     di, 0x2000                      ; BF 00 20
        mov     si, 0xa050                      ; BE 50 A0
        test    byte ptr [bp - 5], 0x80         ; F6 46 FB 80
        je      L_0597                          ; 74 05
        mov     si, 0x6050                      ; BE 50 60
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_0597
L_0597:
        shr     bx, 1                           ; D1 EB
        jae     L_05A0                          ; 73 05
        add     word ptr [bp + 0x22], 0x2000    ; 81 46 22 00 20
;   [conditional branch target (if/else)] L_05A0
L_05A0:
        shr     bx, 1                           ; D1 EB
        jae     L_05A9                          ; 73 05
        add     word ptr [bp + 0x22], 0x4000    ; 81 46 22 00 40
;   [conditional branch target (if/else)] L_05A9
L_05A9:
        mul     bx                              ; F7 E3
        add     word ptr [bp + 0x22], ax        ; 01 46 22
        test    byte ptr [bp - 5], 0x80         ; F6 46 FB 80
        je      L_05BA                          ; 74 06
        neg     di                              ; F7 DF
        neg     si                              ; F7 DE
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_05BA
L_05BA:
        xor     si, di                          ; 33 F7
        mov     word ptr [bp - 0x24], di        ; 89 7E DC
        mov     word ptr [bp - 0x2c], si        ; 89 76 D4
        cmp     byte ptr [bp - 0x39], 0         ; 80 7E C7 00
        je      L_0611                          ; 74 49
        mov     di, word ptr [bp - 0x1e]        ; 8B 7E E2
        mov     ax, di                          ; 8B C7
        mov     si, di                          ; 8B F7
        test    byte ptr [bp - 9], 8            ; F6 46 F7 08
        je      L_05F8                          ; 74 23
        mov     di, 0x2000                      ; BF 00 20
        mov     si, 0xa050                      ; BE 50 A0
        test    byte ptr [bp - 5], 0x80         ; F6 46 FB 80
        je      L_05E6                          ; 74 05
        mov     si, 0x6050                      ; BE 50 60
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_05E6
L_05E6:
        shr     cx, 1                           ; D1 E9
        jae     L_05EF                          ; 73 05
        add     word ptr [bp + 0x1a], 0x2000    ; 81 46 1A 00 20
;   [conditional branch target (if/else)] L_05EF
L_05EF:
        shr     cx, 1                           ; D1 E9
        jae     L_05F8                          ; 73 05
        add     word ptr [bp + 0x1a], 0x4000    ; 81 46 1A 00 40
;   [conditional branch target (if/else)] L_05F8
L_05F8:
        mul     cx                              ; F7 E1
        add     word ptr [bp + 0x1a], ax        ; 01 46 1A
        test    byte ptr [bp - 5], 0x80         ; F6 46 FB 80
        je      L_0609                          ; 74 06
        neg     di                              ; F7 DF
        neg     si                              ; F7 DE
        xchg    di, si                          ; 87 F7
;   [conditional branch target (if/else)] L_0609
L_0609:
        xor     si, di                          ; 33 F7
        mov     word ptr [bp - 0x1a], di        ; 89 7E E6
        mov     word ptr [bp - 0x22], si        ; 89 76 DE
;   [conditional branch target (if/else)] L_0611
L_0611:
        mov     ax, 0x188                       ; B8 88 01
        call    L_25D2                          ; E8 BB 1F
        jae     L_061C                          ; 73 03
        jmp     L_0B68                          ; E9 4C 05
;   [conditional branch target (if/else)] L_061C
L_061C:
        add     sp, 0x20                        ; 83 C4 20
        mov     di, sp                          ; 8B FC
        mov     word ptr [bp - 0x16], di        ; 89 7E EA
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        xor     cx, cx                          ; 33 C9
        mov     bl, byte ptr [bp - 9]           ; 8A 5E F7
        mov     ax, 0x5751                      ; B8 51 57
        stosw   word ptr es:[di], ax            ; AB
        test    bl, 0x10                        ; F6 C3 10
        je      L_0640                          ; 74 03
        mov     al, 0x56                        ; B0 56
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_0640
L_0640:
        test    bl, 1                           ; F6 C3 01
        je      L_0648                          ; 74 03
        mov     al, 0x53                        ; B0 53
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_0648
L_0648:
        test    bl, 0x20                        ; F6 C3 20
        je      L_069A                          ; 74 4D
        mov     al, 0xb8                        ; B0 B8
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 0xbb                        ; B0 BB
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xd98c                      ; B8 8C D9
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xd88e                      ; B8 8E D8
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0x778a                      ; B8 8A 77
        stosw   word ptr es:[di], ax            ; AB
        mov     dx, di                          ; 8B D7
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     bh, 7                           ; B7 07
        and     al, bh                          ; 22 C7
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0xa02e                      ; B8 2E A0
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 4                           ; B0 04
        mov     ah, byte ptr [bp - 5]           ; 8A 66 FB
        test    bl, 0x40                        ; F6 C3 40
        je      L_0689                          ; 74 07
        mov     ah, 8                           ; B4 08
        mov     word ptr [bp - 0x36], dx        ; 89 56 CA
        mov     bh, 0x1f                        ; B7 1F
;   [conditional branch target (if/else)] L_0689
L_0689:
        stosw   word ptr es:[di], ax            ; AB
        mov     ah, bh                          ; 8A E7
        mov     al, 0x24                        ; B0 24
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xa22e                      ; B8 2E A2
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xd98e                      ; B8 8E D9
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_069A
L_069A:
        xor     dx, dx                          ; 33 D2
        or      dh, byte ptr [bp - 3]           ; 0A 76 FD
        je      L_06AC                          ; 74 0B
        mov     al, 0xbd                        ; B0 BD
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xff32                      ; B8 32 FF
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_06AC
L_06AC:
        mov     word ptr [bp - 0x30], di        ; 89 7E D0
        or      dl, byte ptr [bp - 0x39]        ; 0A 56 C7
        jne     L_06B7                          ; 75 03
        jmp     L_07C8                          ; E9 11 01
;   [conditional branch target (if/else)] L_06B7
L_06B7:
        shl     bl, 1                           ; D0 E3
        jb      L_06BE                          ; 72 03
        jmp     L_078D                          ; E9 CF 00
;   [conditional branch target (if/else)] L_06BE
L_06BE:
        mov     byte ptr [bp - 0xa], 0          ; C6 46 F6 00
        lds     si, ptr [bp + 6]                ; C5 76 06
        lea     si, [si + 4]                    ; 8D 74 04
        js      L_0746                          ; 78 7C
        test    bl, 0x10                        ; F6 C3 10
        je      L_0719                          ; 74 4A
        mov     al, 6                           ; B0 06
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0xd88c                      ; B8 8C D8
        stosw   word ptr es:[di], ax            ; AB
        ; constant WM_SIZE
        mov     al, 5                           ; B0 05
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        stosw   word ptr es:[di], ax            ; AB
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        mov     bx, ax                          ; 8B D8
        mov     ax, 0xc08e                      ; B8 8E C0
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x48a                       ; B8 8A 04
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0xa48a                      ; B8 8A A4
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, bx                          ; 8B C3
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 0x35                        ; B0 35
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [si + 1]           ; 8B 44 01
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xe00a                      ; B8 0A E0
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0x34ac                      ; B8 AC 34
        stosw   word ptr es:[di], ax            ; AB
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        mov     ax, 0xc40a                      ; B8 0A C4
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xd0f6                      ; B8 F6 D0
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 7                           ; B0 07
        stosb   byte ptr es:[di], al            ; AA
        jmp     L_0790                          ; EB 77
;   [conditional branch target (if/else)] L_0719
L_0719:
        mov     ax, 0x848a                      ; B8 8A 84
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, ax                          ; 8B D8
        add     bx, bx                          ; 03 DB
        mov     ax, 0xa48a                      ; B8 8A A4
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, bx                          ; 8B C3
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 0x35                        ; B0 35
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [si + 1]           ; 8B 44 01
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xe00a                      ; B8 0A E0
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0x34ac                      ; B8 AC 34
        stosw   word ptr es:[di], ax            ; AB
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        mov     ax, 0xc40a                      ; B8 0A C4
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xd0f6                      ; B8 F6 D0
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0790                          ; EB 4A
;   [conditional branch target (if/else)] L_0746
L_0746:
        mov     ah, byte ptr [si + 3]           ; 8A 64 03
        xor     ah, 0x47                        ; 80 F4 47
        or      ah, byte ptr [si + 7]           ; 0A 64 07
        jne     L_0757                          ; 75 06
        mov     byte ptr [bp - 0xa], 0xc0       ; C6 46 F6 C0
        jmp     L_078D                          ; EB 36
;   [conditional branch target (if/else)] L_0757
L_0757:
        mov     ah, byte ptr [si + 4]           ; 8A 64 04
        lodsb   al, byte ptr [si]               ; AC
        xor     al, ah                          ; 32 C4
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        mov     ah, byte ptr [si + 4]           ; 8A 64 04
        lodsb   al, byte ptr [si]               ; AC
        xor     al, ah                          ; 32 C4
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     ah, byte ptr [si + 4]           ; 8A 64 04
        lodsb   al, byte ptr [si]               ; AC
        xor     al, ah                          ; 32 C4
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, 0x36ac                      ; B8 AC 36
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0x622                       ; B8 22 06
        stosw   word ptr es:[di], ax            ; AB
        lea     ax, [bp - 0x42]                 ; 8D 46 BE
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, ax                          ; 8B D8
        mov     al, 0x36                        ; B0 36
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x632                       ; B8 32 06
        stosw   word ptr es:[di], ax            ; AB
        lea     ax, [bx + 1]                    ; 8D 47 01
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0790                          ; EB 03
;   [unconditional branch target] L_078D
L_078D:
        mov     al, 0xac                        ; B0 AC
        stosb   byte ptr es:[di], al            ; AA
;   [unconditional branch target] L_0790
L_0790:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        xor     cx, cx                          ; 33 C9
        or      dh, dh                          ; 0A F6
        je      L_07B4                          ; 74 1A
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        mov     ax, 0xc0d0                      ; B8 D0 C0
        cmp     cl, 5                           ; 80 F9 05
        jb      L_07AB                          ; 72 07
        neg     cl                              ; F6 D9
        add     cl, 8                           ; 80 C1 08
        mov     ah, 0xc8                        ; B4 C8
;   [conditional branch target (if/else)] L_07AB
L_07AB:
        rep stosw word ptr es:[di], ax          ; F3 AB
        mov     si, 0x2b6                       ; BE B6 02
        mov     cl, 4                           ; B1 04
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
;   [conditional branch target (if/else)] L_07B4
L_07B4:
        dec     byte ptr [bp - 6]               ; FE 4E FA
        je      L_07C8                          ; 74 0F
        mov     si, di                          ; 8B F7
        xchg    word ptr [bp - 0x30], si        ; 87 76 D0
        mov     cx, di                          ; 8B CF
        sub     cx, si                          ; 2B CE
        mov     ax, es                          ; 8C C0
        mov     ds, ax                          ; 8E D8
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
;   [branch target] L_07C8
L_07C8:
        xor     dh, dh                          ; 32 F6
        mov     cx, word ptr [bp + 0xe]         ; 8B 4E 0E
        cmp     cx, 0x20                        ; 83 F9 20
        jne     L_07D5                          ; 75 03
        jmp     L_0882                          ; E9 AD 00
;   [conditional branch target (if/else)] L_07D5
L_07D5:
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        mov     si, word ptr [bp - 0x2e]        ; 8B 76 D2
        mov     dl, byte ptr [bp - 0xb]         ; 8A 56 F5
        cmp     byte ptr [bp - 0x39], 1         ; 80 7E C7 01
        jb      L_07F3                          ; 72 0E
        jne     L_07EF                          ; 75 08
        mov     ax, si                          ; 8B C6
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        je      L_07F3                          ; 74 04
;   [conditional branch target (if/else)] L_07EF
L_07EF:
        mov     ax, 0xd08a                      ; B8 8A D0
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_07F3
L_07F3:
        cmp     byte ptr [bp - 0x38], 2         ; 80 7E C8 02
        jb      L_0803                          ; 72 0A
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x258a                      ; B8 8A 25
        stosw   word ptr es:[di], ax            ; AB
        or      dh, 2                           ; 80 CE 02
;   [loop start (also forward branch)] L_0803
L_0803:
        mov     ax, si                          ; 8B C6
        and     ax, 3                           ; 25 03 00
        dec     ax                              ; 48
        jne     L_0818                          ; 75 0D
        test    dh, 1                           ; F6 C6 01
        je      L_087E                          ; 74 6E
        and     dh, 0xfe                        ; 80 E6 FE
        mov     ax, 0xc28a                      ; B8 8A C2
        jmp     L_087D                          ; EB 65
;   [conditional branch target (if/else)] L_0818
L_0818:
        dec     ax                              ; 48
        mov     ax, 0xc68a                      ; B8 8A C6
        jne     L_087A                          ; 75 5C
        mov     ax, 0xc48a                      ; B8 8A C4
        test    dh, 2                           ; F6 C6 02
        jne     L_087A                          ; 75 54
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x58a                       ; B8 8A 05
        jmp     L_087A                          ; EB 4C
;   [loop start] L_082E
L_082E:
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        mov     bx, cx                          ; 8B D9
        and     bx, 0xc                         ; 81 E3 0C 00
        mov     ax, 0xd0f6                      ; B8 F6 D0
        je      L_087A                          ; 74 3D
        ror     si, 1                           ; D1 CE
        ror     si, 1                           ; D1 CE
        mov     ax, si                          ; 8B C6
        and     ax, 3                           ; 25 03 00
        jne     L_0860                          ; 75 18
        xor     dh, 4                           ; 80 F6 04
        test    dh, 4                           ; F6 C6 04
        je      L_0860                          ; 74 10
        mov     ax, 0xd88a                      ; B8 8A D8
        stosw   word ptr es:[di], ax            ; AB
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        ror     si, 1                           ; D1 CE
        ror     si, 1                           ; D1 CE
        inc     dl                              ; FE C2
        jmp     L_0803                          ; EB A3
;   [conditional branch target (if/else)] L_0860
L_0860:
        or      bx, ax                          ; 0B D8
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0873                          ; 75 0C
        test    dh, 2                           ; F6 C6 02
        jne     L_0873                          ; 75 07
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        shr     bx, 1                           ; D1 EB
        shr     bx, 1                           ; D1 EB
;   [conditional branch target (if/else)] L_0873
L_0873:
        add     bx, bx                          ; 03 DB
        mov     ax, word ptr cs:[bx + 0x2f0]    ; 2E 8B 87 F0 02
;   [branch target] L_087A
L_087A:
        or      dh, 1                           ; 80 CE 01
;   [unconditional branch target] L_087D
L_087D:
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_087E
L_087E:
        dec     dl                              ; FE CA
        jge     L_082E                          ; 7D AC
;   [unconditional branch target] L_0882
L_0882:
        mov     word ptr [bp - 0x32], di        ; 89 7E CE
        test    dh, 2                           ; F6 C6 02
        jne     L_0891                          ; 75 07
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x258a                      ; B8 8A 25
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0891
L_0891:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        mov     si, 0x2be                       ; BE BE 02
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        xchg    al, ah                          ; 86 E0
        mov     word ptr es:[di - 5], ax        ; 26 89 45 FB
        mov     word ptr [bp - 0x34], di        ; 89 7E CC
        mov     ax, es                          ; 8C C0
        mov     ds, ax                          ; 8E D8
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        or      dx, dx                          ; 0B D2
        je      L_0923                          ; 74 71
        mov     bl, byte ptr [bp + 0xe]         ; 8A 5E 0E
        test    bl, 0x1c                        ; F6 C3 1C
        jne     L_0925                          ; 75 6B
        test    bl, 3                           ; F6 C3 03
        je      L_08DD                          ; 74 1E
        mov     ax, 0xffb0                      ; B8 B0 FF
        test    bl, 1                           ; F6 C3 01
        je      L_08CA                          ; 74 03
        mov     ax, 0xc68a                      ; B8 8A C6
;   [conditional branch target (if/else)] L_08CA
L_08CA:
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xe08a                      ; B8 8A E0
        stosw   word ptr es:[di], ax            ; AB
        mov     si, 0xaa                        ; BE AA 00
        test    bl, 0x20                        ; F6 C3 20
        jne     L_08F2                          ; 75 1B
        mov     ax, 0xd0f7                      ; B8 F7 D0
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_08F2                          ; EB 15
;   [conditional branch target (if/else)] L_08DD
L_08DD:
        test    byte ptr [bp - 3], 0xff         ; F6 46 FD FF
        jne     L_0925                          ; 75 42
        mov     si, 0xa4                        ; BE A4 00
        test    byte ptr [bp - 9], 0x80         ; F6 46 F7 80
        je      L_08F2                          ; 74 06
        test    byte ptr [bp - 0xa], 0x80       ; F6 46 F6 80
        je      L_0925                          ; 74 33
;   [branch target] L_08F2
L_08F2:
        shr     dx, 1                           ; D1 EA
        jae     L_08F9                          ; 73 03
        mov     ax, si                          ; 8B C6
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_08F9
L_08F9:
        je      L_0923                          ; 74 28
        xor     bx, bx                          ; 33 DB
        cmp     bl, byte ptr [bp - 7]           ; 3A 5E F9
        jne     L_0909                          ; 75 07
        mov     ax, 0x4f4e                      ; B8 4E 4F
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, 0x4746                      ; BB 46 47
;   [conditional branch target (if/else)] L_0909
L_0909:
        cmp     dx, 1                           ; 83 FA 01
        je      L_0918                          ; 74 0A
        mov     al, 0xb9                        ; B0 B9
        mov     ah, dl                          ; 8A E2
        stosw   word ptr es:[di], ax            ; AB
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        mov     ah, 0xf3                        ; B4 F3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0918
L_0918:
        mov     ax, si                          ; 8B C6
        inc     ax                              ; 40
        stosb   byte ptr es:[di], al            ; AA
        or      bx, bx                          ; 0B DB
        je      L_0923                          ; 74 03
        mov     ax, bx                          ; 8B C3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0923
L_0923:
        jmp     L_09A2                          ; EB 7D
;   [conditional branch target (if/else)] L_0925
L_0925:
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        sub     bx, word ptr [bp - 0x30]        ; 2B 5E D0
        inc     bx                              ; 43
        mov     si, 4                           ; BE 04 00
        mov     cl, 2                           ; B1 02
        cmp     bx, 0x20                        ; 83 FB 20
        jb      L_0939                          ; 72 03
        shr     si, 1                           ; D1 EE
        dec     cx                              ; 49
;   [conditional branch target (if/else)] L_0939
L_0939:
        cmp     dx, si                          ; 3B D6
        jle     L_095B                          ; 7E 1E
        mov     al, 0xb9                        ; B0 B9
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, dx                          ; 8B C2
        shr     ax, cl                          ; D3 E8
        stosw   word ptr es:[di], ax            ; AB
        shl     ax, cl                          ; D3 E0
        sub     ax, dx                          ; 2B C2
        je      L_095B                          ; 74 10
        inc     word ptr es:[di - 2]            ; 26 FF 45 FE
        add     ax, si                          ; 03 C6
        mul     bl                              ; F6 E3
        mov     cx, ax                          ; 8B C8
        mov     al, 0xe9                        ; B0 E9
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, cx                          ; 8B C1
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_095B
L_095B:
        mov     cx, bx                          ; 8B CB
        mov     bx, dx                          ; 8B DA
        cmp     bx, si                          ; 3B DE
        jle     L_0965                          ; 7E 02
        mov     bx, si                          ; 8B DE
;   [conditional branch target (if/else)] L_0965
L_0965:
        sub     dx, si                          ; 2B D6
        mov     si, word ptr [bp - 0x30]        ; 8B 76 D0
        mov     ax, cx                          ; 8B C1
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, di                          ; 8B F7
        sub     si, ax                          ; 2B F0
        mov     byte ptr es:[di - 1], 0xaa      ; 26 C6 45 FF AA
        dec     bl                              ; FE CB
        mul     bl                              ; F6 E3
        mov     cx, ax                          ; 8B C8
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        sub     si, ax                          ; 2B F0
        or      dx, dx                          ; 0B D2
        jle     L_09A2                          ; 7E 1D
        mov     ax, si                          ; 8B C6
        sub     ax, di                          ; 2B C7
        cmp     ax, 0xff83                      ; 3D 83 FF
        jb      L_0997                          ; 72 09
        sub     al, 2                           ; 2C 02
        mov     ah, al                          ; 8A E0
        mov     al, 0xe2                        ; B0 E2
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_09A2                          ; EB 0B
;   [conditional branch target (if/else)] L_0997
L_0997:
        mov     si, 0x2b2                       ; BE B2 02
        movsw   word ptr es:[di], word ptr cs:[si] ; 2E A5
        movsw   word ptr es:[di], word ptr cs:[si] ; 2E A5
        sub     ax, 6                           ; 2D 06 00
        stosw   word ptr es:[di], ax            ; AB
;   [branch target] L_09A2
L_09A2:
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        or      dh, dh                          ; 0A F6
        je      L_09B8                          ; 74 0F
        mov     cx, word ptr [bp - 0x34]        ; 8B 4E CC
        mov     si, word ptr [bp - 0x30]        ; 8B 76 D0
        sub     cx, si                          ; 2B CE
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        xchg    dl, dh                          ; 86 F2
        mov     word ptr [di - 5], dx           ; 89 55 FB
;   [conditional branch target (if/else)] L_09B8
L_09B8:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        mov     bh, byte ptr [bp - 9]           ; 8A 7E F7
        test    bh, 1                           ; F6 C7 01
        je      L_09C7                          ; 74 03
        mov     al, 0x5b                        ; B0 5B
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_09C7
L_09C7:
        test    bh, 0x10                        ; F6 C7 10
        je      L_09CF                          ; 74 03
        mov     al, 0x5e                        ; B0 5E
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_09CF
L_09CF:
        mov     ax, 0x595f                      ; B8 5F 59
        stosw   word ptr es:[di], ax            ; AB
        test    bh, 1                           ; F6 C7 01
        jne     L_09DB                          ; 75 03
        jmp     L_0A84                          ; E9 A9 00
;   [conditional branch target (if/else)] L_09DB
L_09DB:
        or      bh, bh                          ; 0A FF
        jns     L_09F7                          ; 79 18
        test    byte ptr [bp - 0xa], 0x40       ; F6 46 F6 40
        jne     L_0A1A                          ; 75 35
        mov     al, 0xbd                        ; B0 BD
        stosb   byte ptr es:[di], al            ; AA
        lea     ax, [bp - 0x42]                 ; 8D 46 BE
        stosw   word ptr es:[di], ax            ; AB
        lea     si, [0x2c4]                     ; 8D 36 C4 02
        mov     cx, 6                           ; B9 06 00
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        jmp     L_0A1A                          ; EB 23
;   [conditional branch target (if/else)] L_09F7
L_09F7:
        test    bh, 0x10                        ; F6 C7 10
        je      L_0A1A                          ; 74 1E
        test    bh, 8                           ; F6 C7 08
        jne     L_0A0B                          ; 75 0A
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0A1A                          ; EB 0F
;   [conditional branch target (if/else)] L_0A0B
L_0A0B:
        mov     ax, 0xd88c                      ; B8 8C D8
        stosw   word ptr es:[di], ax            ; AB
        ; constant WM_SIZE
        mov     al, 5                           ; B0 05
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xd88e                      ; B8 8E D8
        stosw   word ptr es:[di], ax            ; AB
;   [branch target] L_0A1A
L_0A1A:
        test    bh, 2                           ; F6 C7 02
        jne     L_0A29                          ; 75 0A
        mov     ax, 0xc781                      ; B8 81 C7
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0A38                          ; EB 0F
;   [conditional branch target (if/else)] L_0A29
L_0A29:
        mov     ax, 0xc08c                      ; B8 8C C0
        stosw   word ptr es:[di], ax            ; AB
        ; constant WM_SIZE
        mov     al, 5                           ; B0 05
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc08e                      ; B8 8E C0
        stosw   word ptr es:[di], ax            ; AB
;   [unconditional branch target] L_0A38
L_0A38:
        mov     ax, 0xe3d0                      ; B8 D0 E3
        stosw   word ptr es:[di], ax            ; AB
        mov     dx, word ptr [bp - 0x16]        ; 8B 56 EA
        sub     dx, di                          ; 2B D7
        cmp     dx, -0x7d                       ; 83 FA 83
        jb      L_0A50                          ; 72 0A
        sub     dl, 2                           ; 80 EA 02
        mov     ah, dl                          ; 8A E2
        mov     al, 0x73                        ; B0 73
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0A5D                          ; EB 0D
;   [conditional branch target (if/else)] L_0A50
L_0A50:
        mov     ax, 0x372                       ; B8 72 03
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 0xe9                        ; B0 E9
        stosb   byte ptr es:[di], al            ; AA
        sub     dx, 5                           ; 83 EA 05
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
;   [unconditional branch target] L_0A5D
L_0A5D:
        mov     ax, 0x21b3                      ; B8 B3 21
        stosw   word ptr es:[di], ax            ; AB
        test    bh, 0x20                        ; F6 C7 20
        je      L_0A84                          ; 74 1E
        mov     ax, 0xa02e                      ; B8 2E A0
        stosw   word ptr es:[di], ax            ; AB
        mov     dx, word ptr [bp - 0x36]        ; 8B 56 CA
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 4                           ; B0 04
        mov     ah, byte ptr [bp - 5]           ; 8A 66 FB
        sub     ah, 0x18                        ; 80 EC 18
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0x724                       ; B8 24 07
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xa22e                      ; B8 2E A2
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
;   [branch target] L_0A84
L_0A84:
        test    bh, 0x10                        ; F6 C7 10
        je      L_0AD7                          ; 74 4E
        test    bh, 4                           ; F6 C7 04
        je      L_0ABD                          ; 74 2F
        test    bh, 1                           ; F6 C7 01
        je      L_0ABD                          ; 74 2A
        test    bh, 8                           ; F6 C7 08
        jne     L_0AA8                          ; 75 10
        mov     ax, 0xee81                      ; B8 81 EE
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     dx, ax                          ; 8B D0
        add     ax, ax                          ; 03 C0
        add     ax, dx                          ; 03 C2
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0ABD                          ; EB 15
;   [conditional branch target (if/else)] L_0AA8
L_0AA8:
        mov     ax, 0xd88c                      ; B8 8C D8
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 0x2d                        ; B0 2D
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     dx, ax                          ; 8B D0
        add     ax, ax                          ; 03 C0
        add     ax, dx                          ; 03 C2
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xd88e                      ; B8 8E D8
        stosw   word ptr es:[di], ax            ; AB
;   [branch target] L_0ABD
L_0ABD:
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        stosw   word ptr es:[di], ax            ; AB
        mov     dx, word ptr [bp - 0x22]        ; 8B 56 DE
        or      dx, dx                          ; 0B D2
        je      L_0AD7                          ; 74 0B
        mov     ax, 0x479                       ; B8 79 04
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0AD7
L_0AD7:
        test    bh, 1                           ; F6 C7 01
        je      L_0B06                          ; 74 2A
        test    bh, 2                           ; F6 C7 02
        jne     L_0AF1                          ; 75 10
        mov     ax, 0xef81                      ; B8 81 EF
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     dx, ax                          ; 8B D0
        add     ax, ax                          ; 03 C0
        add     ax, dx                          ; 03 C2
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0B06                          ; EB 15
;   [conditional branch target (if/else)] L_0AF1
L_0AF1:
        mov     ax, 0xc08c                      ; B8 8C C0
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 0x2d                        ; B0 2D
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        mov     dx, ax                          ; 8B D0
        add     ax, ax                          ; 03 C0
        add     ax, dx                          ; 03 C2
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc08e                      ; B8 8E C0
        stosw   word ptr es:[di], ax            ; AB
;   [branch target] L_0B06
L_0B06:
        mov     ax, 0xc781                      ; B8 81 C7
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        stosw   word ptr es:[di], ax            ; AB
        mov     dx, word ptr [bp - 0x2c]        ; 8B 56 D4
        or      dx, dx                          ; 0B D2
        je      L_0B20                          ; 74 0B
        mov     ax, 0x479                       ; B8 79 04
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc781                      ; B8 81 C7
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0B20
L_0B20:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, di                          ; 2B C7
        cmp     ax, 0xff83                      ; 3D 83 FF
        jb      L_0B33                          ; 72 09
        sub     al, 2                           ; 2C 02
        mov     ah, al                          ; 8A E0
        mov     al, 0xe2                        ; B0 E2
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0B3C                          ; EB 09
;   [conditional branch target (if/else)] L_0B33
L_0B33:
        mov     si, 0x2b2                       ; BE B2 02
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        sub     ax, 6                           ; 2D 06 00
        stosw   word ptr es:[di], ax            ; AB
;   [unconditional branch target] L_0B3C
L_0B3C:
        mov     al, 0xcb                        ; B0 CB
        stosb   byte ptr es:[di], al            ; AA
        sub     di, word ptr [bp - 0x16]        ; 2B 7E EA
        push    di                              ; 57
        test    bh, 0x10                        ; F6 C7 10
        je      L_0B4B                          ; 74 03
        lds     si, ptr [bp + 0x1a]             ; C5 76 1A
;   [conditional branch target (if/else)] L_0B4B
L_0B4B:
        les     di, ptr [bp + 0x22]             ; C4 7E 22
        mov     cx, word ptr [bp + 0x12]        ; 8B 4E 12
        cld                                     ; FC
        cmp     byte ptr [bp - 7], 1            ; 80 7E F9 01
        je      L_0B59                          ; 74 01
        std                                     ; FD
;   [conditional branch target (if/else)] L_0B59
L_0B59:
        mov     bl, 0x21                        ; B3 21
        push    bp                              ; 55
        lcall   [bp - 0x16]                     ; FF 5E EA
        pop     bp                              ; 5D
        pop     bx                              ; 5B
        add     sp, 0x168                       ; 81 C4 68 01
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0B68
L_0B68:
        cld                                     ; FC
;   [unconditional branch target] L_0B69
L_0B69:
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
        mov     ax, 0x3e                        ; B8 3E 00
        call    L_25D2                          ; E8 4C 1A
        push    si                              ; 56
        push    di                              ; 57
        jb      L_0B9E                          ; 72 14
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x20                        ; 05 20 00
        mov     cx, ax                          ; 8B C8
        call    L_25D2                          ; E8 36 1A
        jae     L_0BA1                          ; 73 03
;   [conditional branch target (if/else)] L_0B9E
L_0B9E:
        jmp     L_10EF                          ; E9 4E 05
;   [conditional branch target (if/else)] L_0BA1
L_0BA1:
        add     sp, cx                          ; 03 E1
        mov     word ptr [bp - 8], sp           ; 89 66 F8
        lds     si, ptr [bp + 0x18]             ; C5 76 18
        les     di, ptr [bp + 0xe]              ; C4 7E 0E
        xor     dx, dx                          ; 33 D2
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, ax                          ; 0B C0
        je      L_0C07                          ; 74 52
        jg      L_0BBE                          ; 7F 07
        neg     ax                              ; F7 D8
        xor     bx, bx                          ; 33 DB
        mov     word ptr [bp + 0x18], bx        ; 89 5E 18
;   [conditional branch target (if/else)] L_0BBE
L_0BBE:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     cx, word ptr es:[di + 0x21]     ; 26 8B 4D 21
        mov     word ptr [bp - 0x18], cx        ; 89 4E E8
        mov     ax, word ptr es:[di + 0x14]     ; 26 8B 45 14
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        or      si, si                          ; 0B F6
        je      L_0C0A                          ; 74 37
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     dx, ax                          ; 8B D0
        sub     ax, word ptr [bp + 0x1c]        ; 2B 46 1C
        mov     bx, ax                          ; 8B D8
        jge     L_0BE3                          ; 7D 04
        sub     dx, bx                          ; 2B D3
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_0BE3
L_0BE3:
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        mov     dx, word ptr es:[di + 0x16]     ; 26 8B 55 16
        cmp     bx, dx                          ; 3B DA
        jge     L_0C07                          ; 7D 16
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [bp + 0x1c]        ; 2B 46 1C
        cmp     ax, dx                          ; 3B C2
        jl      L_0BFD                          ; 7C 02
        mov     ax, dx                          ; 8B C2
;   [conditional branch target (if/else)] L_0BFD
L_0BFD:
        or      ax, ax                          ; 0B C0
        jle     L_0C07                          ; 7E 06
        cmp     ax, bx                          ; 3B C3
        jle     L_0C07                          ; 7E 02
        jmp     L_0C19                          ; EB 12
;   [conditional branch target (if/else)] L_0C07
L_0C07:
        jmp     L_10EC                          ; E9 E2 04
;   [conditional branch target (if/else)] L_0C0A
L_0C0A:
        mov     bx, word ptr [bp + 0x1c]        ; 8B 5E 1C
        mov     word ptr [bp - 0x20], bx        ; 89 5E E0
        mov     word ptr [bp - 0x22], bx        ; 89 5E DE
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr es:[di + 0x16]     ; 26 8B 45 16
;   [unconditional branch target] L_0C19
L_0C19:
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
        je      L_0C94                          ; 74 46
        mov     dx, 0x1124                      ; BA 24 11
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     word ptr [si + 0xc], 0          ; 83 7C 0C 00
        je      L_0C7D                          ; 74 23
        mov     dx, 0x114a                      ; BA 4A 11
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
;   [conditional branch target (if/else)] L_0C7D
L_0C7D:
        mov     dx, word ptr [si + 0x16]        ; 8B 54 16
        mov     si, 0x1108                      ; BE 08 11
        or      dx, dx                          ; 0B D2
        je      L_0CD8                          ; 74 51
        mov     si, 0x1102                      ; BE 02 11
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        jmp     L_0CD8                          ; EB 44
;   [conditional branch target (if/else)] L_0C94
L_0C94:
        mov     dx, 0x1185                      ; BA 85 11
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     word ptr [si + 0xc], 0          ; 83 7C 0C 00
        je      L_0CC3                          ; 74 23
        mov     dx, 0x1136                      ; BA 36 11
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
;   [conditional branch target (if/else)] L_0CC3
L_0CC3:
        mov     dx, word ptr [si + 0x16]        ; 8B 54 16
        mov     si, 0x116d                      ; BE 6D 11
        or      dx, dx                          ; 0B D2
        je      L_0CD8                          ; 74 0B
        mov     si, 0x1167                      ; BE 67 11
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
;   [branch target] L_0CD8
L_0CD8:
        mov     word ptr [bp - 0x10], si        ; 89 76 F0
        xor     si, 0x11a6                      ; 81 F6 A6 11
        mov     word ptr [bp - 0x14], si        ; 89 76 EC
        lds     si, ptr [bp + 0x20]             ; C5 76 20
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        add     ax, word ptr [bp + 0x1c]        ; 03 46 1C
        xor     cx, cx                          ; 33 C9
        mov     bx, dx                          ; 8B DA
        xor     di, di                          ; 33 FF
        cmp     word ptr [si], cx               ; 39 0C
        je      L_0D0B                          ; 74 16
        mov     bx, 0x2000                      ; BB 00 20
        mov     cx, 0x7fb0                      ; B9 B0 7F
        shr     ax, 1                           ; D1 E8
        jae     L_0D03                          ; 73 04
        add     di, 0x2000                      ; 81 C7 00 20
;   [conditional branch target (if/else)] L_0D03
L_0D03:
        shr     ax, 1                           ; D1 E8
        jae     L_0D0B                          ; 73 04
        add     di, 0x4000                      ; 81 C7 00 40
;   [conditional branch target (if/else)] L_0D0B
L_0D0B:
        mul     dx                              ; F7 E2
        add     ax, di                          ; 03 C7
        mov     word ptr [bp - 0xc], bx         ; 89 5E F4
        mov     word ptr [bp - 0xe], cx         ; 89 4E F2
        lds     si, ptr [bp + 0x18]             ; C5 76 18
        mov     bx, word ptr [bp + 0x1e]        ; 8B 5E 1E
        or      si, si                          ; 0B F6
        je      L_0D92                          ; 74 73
        mov     cx, word ptr [si]               ; 8B 0C
        mov     word ptr [bp - 0x1c], cx        ; 89 4E E4
        mov     di, bx                          ; 8B FB
        mov     dx, word ptr [si + 4]           ; 8B 54 04
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        sub     dx, cx                          ; 2B D1
        sub     bx, cx                          ; 2B D9
        jl      L_0D3B                          ; 7C 09
        mov     word ptr [bp - 0x1c], di        ; 89 7E E4
        mov     cx, di                          ; 8B CF
        sub     dx, bx                          ; 2B D3
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_0D3B
L_0D3B:
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
        jge     L_0DCF                          ; 7D 77
        lds     si, ptr [bp + 0x14]             ; C5 76 14
        les     di, ptr [bp + 0xe]              ; C4 7E 0E
;   [loop start] L_0D5E
L_0D5E:
        call    word ptr [bp - 0x10]            ; FF 56 F0
        jle     L_0D5E                          ; 7E FB
        or      ax, ax                          ; 0B C0
        je      L_0D85                          ; 74 1E
        add     ax, cx                          ; 03 C1
        sub     ax, bx                          ; 2B C3
        mov     cx, bx                          ; 8B CB
        sub     bx, dx                          ; 2B DA
;   [loop start] L_0D6F
L_0D6F:
        jge     L_0DE0                          ; 7D 6F
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
        call    word ptr [bp - 0x10]            ; FF 56 F0
        jmp     L_0D6F                          ; EB EA
;   [conditional branch target (if/else)] L_0D85
L_0D85:
        add     ax, cx                          ; 03 C1
        sub     ax, bx                          ; 2B C3
        and     ax, 7                           ; 25 07 00
        mov     cx, bx                          ; 8B CB
        sub     bx, dx                          ; 2B DA
        jmp     L_0D6F                          ; EB DD
;   [conditional branch target (if/else)] L_0D92
L_0D92:
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
;   [loop start] L_0DBB
L_0DBB:
        call    word ptr [bp - 0x10]            ; FF 56 F0
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
        jmp     L_0DBB                          ; EB EC
;   [loop start (also forward branch)] L_0DCF
L_0DCF:
        jmp     L_10EC                          ; E9 1A 03
        jmp     L_0FBF                          ; E9 EA 01
;   [loop start] L_0DD5
L_0DD5:
        pop     dx                              ; 5A
        pop     si                              ; 5E
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        dec     ax                              ; 48
        push    ax                              ; 50
        push    si                              ; 56
        push    dx                              ; 52
        jmp     L_0DFE                          ; EB 1E
;   [conditional branch target (if/else)] L_0DE0
L_0DE0:
        sub     cx, bx                          ; 2B CB
        jle     L_0DF3                          ; 7E 0F
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
;   [loop start (also forward branch)] L_0DF3
L_0DF3:
        cmp     sp, word ptr [bp - 8]           ; 3B 66 F8
        je      L_0DCF                          ; 74 D7
        cmp     word ptr [bp - 0x26], 8         ; 83 7E DA 08
        je      L_0DD5                          ; 74 D7
;   [unconditional branch target] L_0DFE
L_0DFE:
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     cx, word ptr [bp + 0x12]        ; 8B 4E 12
        or      cx, cx                          ; 0B C9
        jg      L_0E24                          ; 7F 1A
        mov     cx, word ptr [bp - 0x2a]        ; 8B 4E D6
        jcxz    L_0E15                          ; E3 06
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        mov     word ptr [si + 0x10], ax        ; 89 44 10
;   [conditional branch target (if/else)] L_0E15
L_0E15:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        mov     dx, word ptr [bp - 0x22]        ; 8B 56 DE
        sub     dx, word ptr [bp - 0x20]        ; 2B 56 E0
        jmp     L_10EC                          ; E9 C8 02
;   [conditional branch target (if/else)] L_0E24
L_0E24:
        lds     si, ptr [bp + 0x20]             ; C5 76 20
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_0E5A                          ; E3 2F
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     al, byte ptr [si + 0xa]         ; 8A 44 0A
        mov     byte ptr [bp - 0x3c], al        ; 88 46 C4
        mov     dx, 0x11eb                      ; BA EB 11
        cmp     word ptr [si + 2], 1            ; 83 7C 02 01
        je      L_0E54                          ; 74 11
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr [bp - 0x38], al        ; 88 46 C8
        mov     cx, 0xeff                       ; B9 FF 0E
        jmp     L_0EBA                          ; EB 66
;   [loop start (also forward branch)] L_0E54
L_0E54:
        mov     word ptr [bp - 0x32], dx        ; 89 56 CE
        jmp     L_0FBF                          ; E9 65 01
;   [conditional branch target (if/else)] L_0E5A
L_0E5A:
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        cmp     word ptr [si + 8], 0x103        ; 81 7C 08 03 01
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        je      L_0E87                          ; 74 20
        mov     al, byte ptr [si + 0xb]         ; 8A 44 0B
        shl     al, 1                           ; D0 E0
        cwde                                    ; 98
        mov     byte ptr [bp - 0x3e], ah        ; 88 66 C2
        mov     dx, 0x11b4                      ; BA B4 11
        cmp     word ptr [si + 2], 1            ; 83 7C 02 01
        je      L_0E54                          ; 74 DB
        mov     al, byte ptr [si + 7]           ; 8A 44 07
        shl     al, 1                           ; D0 E0
        cwde                                    ; 98
        mov     byte ptr [bp - 0x3a], ah        ; 88 66 C6
        mov     cx, 0xf48                       ; B9 48 0F
        jmp     L_0EBA                          ; EB 33
;   [conditional branch target (if/else)] L_0E87
L_0E87:
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     bx, ax                          ; 8B D8
        add     ax, ax                          ; 03 C0
        add     ax, bx                          ; 03 C3
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     al, byte ptr [si + 0xa]         ; 8A 44 0A
        mov     byte ptr [bp - 0x3c], al        ; 88 46 C4
        mov     dx, 0x11c1                      ; BA C1 11
        cmp     word ptr [si + 2], 1            ; 83 7C 02 01
        je      L_0E54                          ; 74 A9
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr [bp - 0x38], al        ; 88 46 C8
        mov     cx, 0xf80                       ; B9 80 0F
;   [unconditional branch target] L_0EBA
L_0EBA:
        mov     word ptr [bp - 0x32], dx        ; 89 56 CE
        push    cx                              ; 51
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
        jge     L_0EF1                          ; 7D 02
        and     dl, dh                          ; 22 D6
;   [conditional branch target (if/else)] L_0EF1
L_0EF1:
        mov     word ptr [bp - 0x1c], bx        ; 89 5E E4
        les     di, ptr [bp + 0x20]             ; C4 7E 20
        les     di, ptr es:[di + 0xa]           ; 26 C4 7D 0A
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
        ret                                     ; C3
;   [loop start] L_0EFF
L_0EFF:
        mov     si, 2                           ; BE 02 00
        mov     ax, 0xb000                      ; B8 00 B0
        mov     es, ax                          ; 8E C0
;   [loop start] L_0F07
L_0F07:
        mov     bx, di                          ; 8B DF
        mov     ah, byte ptr [bp + si - 0x3a]   ; 8A 62 C6
        mov     al, byte ptr es:[di]            ; 26 8A 05
        xor     al, ah                          ; 32 C4
        and     al, dl                          ; 22 C2
        xor     byte ptr es:[di], al            ; 26 30 05
        inc     di                              ; 47
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        or      cx, cx                          ; 0B C9
        jl      L_0F2C                          ; 7C 0E
        mov     al, ah                          ; 8A C4
        rep stosb byte ptr es:[di], al          ; F3 AA
        mov     al, byte ptr es:[di]            ; 26 8A 05
        xor     al, ah                          ; 32 C4
        and     al, dh                          ; 22 C6
        xor     byte ptr es:[di], al            ; 26 30 05
;   [conditional branch target (if/else)] L_0F2C
L_0F2C:
        mov     di, bx                          ; 8B FB
        mov     ax, es                          ; 8C C0
        sub     ax, 0x800                       ; 2D 00 08
        mov     es, ax                          ; 8E C0
        dec     si                              ; 4E
        jns     L_0F07                          ; 79 CF
        add     di, word ptr [bp - 0xc]         ; 03 7E F4
        jns     L_0F40                          ; 79 03
        sub     di, word ptr [bp - 0xe]         ; 2B 7E F2
;   [conditional branch target (if/else)] L_0F40
L_0F40:
        dec     word ptr [bp - 0x24]            ; FF 4E DC
        jg      L_0EFF                          ; 7F BA
        jmp     L_0FBF                          ; EB 78
        nop                                     ; 90
        mov     ah, byte ptr [bp - 0x3a]        ; 8A 66 C6
        mov     si, word ptr [bp - 0xc]         ; 8B 76 F4
        sub     si, bx                          ; 2B F3
        dec     si                              ; 4E
        mov     bx, word ptr [bp - 0x24]        ; 8B 5E DC
;   [loop start] L_0F54
L_0F54:
        mov     al, byte ptr es:[di]            ; 26 8A 05
        xor     al, ah                          ; 32 C4
        and     al, dl                          ; 22 C2
        xor     byte ptr es:[di], al            ; 26 30 05
        inc     di                              ; 47
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        or      cx, cx                          ; 0B C9
        jl      L_0F74                          ; 7C 0E
        mov     al, ah                          ; 8A C4
        rep stosb byte ptr es:[di], al          ; F3 AA
        mov     al, byte ptr es:[di]            ; 26 8A 05
        xor     al, ah                          ; 32 C4
        and     al, dh                          ; 22 C6
        xor     byte ptr es:[di], al            ; 26 30 05
;   [conditional branch target (if/else)] L_0F74
L_0F74:
        add     di, si                          ; 03 FE
        jns     L_0F7B                          ; 79 03
        sub     di, word ptr [bp - 0xe]         ; 2B 7E F2
;   [conditional branch target (if/else)] L_0F7B
L_0F7B:
        dec     bx                              ; 4B
        jg      L_0F54                          ; 7F D6
        jmp     L_0FBF                          ; EB 3F
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        add     ax, ax                          ; 03 C0
        add     di, ax                          ; 03 F8
;   [loop start] L_0F87
L_0F87:
        mov     si, 2                           ; BE 02 00
;   [loop start] L_0F8A
L_0F8A:
        mov     bx, di                          ; 8B DF
        mov     ah, byte ptr [bp + si - 0x3a]   ; 8A 62 C6
        mov     al, byte ptr es:[di]            ; 26 8A 05
        xor     al, ah                          ; 32 C4
        and     al, dl                          ; 22 C2
        xor     byte ptr es:[di], al            ; 26 30 05
        inc     di                              ; 47
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        or      cx, cx                          ; 0B C9
        jl      L_0FAF                          ; 7C 0E
        mov     al, ah                          ; 8A C4
        rep stosb byte ptr es:[di], al          ; F3 AA
        mov     al, byte ptr es:[di]            ; 26 8A 05
        xor     al, ah                          ; 32 C4
        and     al, dh                          ; 22 C6
        xor     byte ptr es:[di], al            ; 26 30 05
;   [conditional branch target (if/else)] L_0FAF
L_0FAF:
        mov     di, bx                          ; 8B FB
        sub     di, word ptr [bp - 0x34]        ; 2B 7E CC
        dec     si                              ; 4E
        jns     L_0F8A                          ; 79 D3
        add     di, word ptr [bp - 0x36]        ; 03 7E CA
        dec     word ptr [bp - 0x24]            ; FF 4E DC
        jg      L_0F87                          ; 7F C8
;   [unconditional branch target] L_0FBF
L_0FBF:
        lds     si, ptr [bp + 0xe]              ; C5 76 0E
        lds     si, ptr [si + 0x2b]             ; C5 74 2B
        les     di, ptr [bp + 0x20]             ; C4 7E 20
        les     di, ptr es:[di + 0xa]           ; 26 C4 7D 0A
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
        mov     word ptr [bp - 0xa], di         ; 89 7E F6
        jmp     L_1061                          ; E9 8C 00
;   [loop start] L_0FD5
L_0FD5:
        add     cl, dh                          ; 02 CE
        shl     ax, cl                          ; D3 E0
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        call    word ptr [bp - 0x32]            ; FF 56 CE
        mov     dh, 8                           ; B6 08
        neg     cl                              ; F6 D9
        je      L_0FEA                          ; 74 06
;   [loop start] L_0FE4
L_0FE4:
        sub     dh, cl                          ; 2A F1
        jle     L_0FD5                          ; 7E ED
        shl     ax, cl                          ; D3 E0
;   [conditional branch target (if/else)] L_0FEA
L_0FEA:
        cmp     ch, 8                           ; 80 FD 08
        ja      L_1000                          ; 77 11
        or      ch, ch                          ; 0A ED
        je      L_100D                          ; 74 1A
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_0FFA                          ; 74 01
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_0FFA
L_0FFA:
        ; constant WM_SETTEXT
        mov     cl, ch                          ; 8A CD
        xor     ch, ch                          ; 32 ED
        jmp     L_0FE4                          ; EB E4
;   [conditional branch target (if/else)] L_1000
L_1000:
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_1007                          ; 74 01
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_1007
L_1007:
        mov     cl, 8                           ; B1 08
        sub     ch, cl                          ; 2A E9
        jmp     L_0FE4                          ; EB D7
;   [loop start (also forward branch)] L_100D
L_100D:
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     cx, word ptr ss:[bx]            ; 36 8B 0F
        or      cl, cl                          ; 0A C9
        js      L_1036                          ; 78 1B
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_1025                          ; 74 04
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_1025
L_1025:
        shl     al, cl                          ; D2 E0
        sub     cl, 8                           ; 80 E9 08
        neg     cl                              ; F6 D9
        sub     ch, cl                          ; 2A E9
        jae     L_0FE4                          ; 73 B4
        add     cl, ch                          ; 02 CD
        xor     ch, ch                          ; 32 ED
        jmp     L_0FE4                          ; EB AE
;   [conditional branch target (if/else)] L_1036
L_1036:
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        shl     ah, cl                          ; D2 E4
        call    word ptr [bp - 0x32]            ; FF 56 CE
        mov     si, word ptr [bp - 0x16]        ; 8B 76 EA
        add     si, word ptr [bp - 0x18]        ; 03 76 E8
        cmp     si, word ptr [bp - 0x1a]        ; 3B 76 E6
        jae     L_1071                          ; 73 26
        mov     word ptr [bp - 0x16], si        ; 89 76 EA
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     di, bx                          ; 8B FB
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
        jns     L_105B                          ; 79 03
        sub     di, word ptr [bp - 0xe]         ; 2B 7E F2
;   [conditional branch target (if/else)] L_105B
L_105B:
        mov     word ptr [bp - 0xa], di         ; 89 7E F6
        mov     word ptr [bp - 0xc], bx         ; 89 5E F4
;   [unconditional branch target] L_1061
L_1061:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        xor     ax, ax                          ; 33 C0
        mov     dh, byte ptr [bp - 4]           ; 8A 76 FC
        cmp     word ptr [bp - 0x26], 8         ; 83 7E DA 08
        je      L_1074                          ; 74 05
        jmp     L_100D                          ; EB 9C
;   [conditional branch target (if/else)] L_1071
L_1071:
        jmp     L_10EC                          ; EB 79
        nop                                     ; 90
;   [conditional branch target (if/else)] L_1074
L_1074:
        xor     cx, cx                          ; 33 C9
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        je      L_10E3                          ; 74 62
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        mov     cx, word ptr ss:[bx - 2]        ; 36 8B 4F FE
        lodsb   al, byte ptr [si]               ; AC
        xchg    al, ah                          ; 86 E0
        shl     ah, cl                          ; D2 E4
        sub     cl, 8                           ; 80 E9 08
        neg     cl                              ; F6 D9
        cmp     dh, cl                          ; 3A F1
        jg      L_10A2                          ; 7F 0C
        xchg    dh, cl                          ; 86 CE
        rol     ax, cl                          ; D3 C0
        sub     cl, dh                          ; 2A CE
        jne     L_10C9                          ; 75 2B
        mov     cl, 8                           ; B1 08
        jmp     L_10AC                          ; EB 0A
;   [conditional branch target (if/else)] L_10A2
L_10A2:
        rol     ax, cl                          ; D3 C0
        sub     cl, dh                          ; 2A CE
        jmp     L_10D7                          ; EB 2F
;   [loop start] L_10A8
L_10A8:
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        lodsb   al, byte ptr [si]               ; AC
;   [unconditional branch target] L_10AC
L_10AC:
        xchg    ah, al                          ; 86 C4
        call    word ptr [bp - 0x32]            ; FF 56 CE
        xchg    ah, al                          ; 86 C4
        sub     bx, 4                           ; 83 EB 04
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        jne     L_10A8                          ; 75 EB
        jmp     L_10E3                          ; EB 24
;   [loop start] L_10BF
L_10BF:
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        mov     ah, byte ptr [si]               ; 8A 24
        rol     ax, cl                          ; D3 C0
        sub     cl, 8                           ; 80 E9 08
;   [conditional branch target (if/else)] L_10C9
L_10C9:
        neg     cl                              ; F6 D9
        xchg    ah, al                          ; 86 C4
        call    word ptr [bp - 0x32]            ; FF 56 CE
        xchg    ah, al                          ; 86 C4
        rol     ax, cl                          ; D3 C0
        sub     cl, 8                           ; 80 E9 08
;   [unconditional branch target] L_10D7
L_10D7:
        neg     cl                              ; F6 D9
        sub     bx, 4                           ; 83 EB 04
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        jne     L_10BF                          ; 75 DC
;   [branch target] L_10E3
L_10E3:
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     ah, al                          ; 8A E0
        mov     dh, cl                          ; 8A F1
        jmp     L_100D                          ; E9 21 FF
;   [unconditional branch target] L_10EC
L_10EC:
        mov     sp, word ptr [bp - 8]           ; 8B 66 F8
;   [unconditional branch target] L_10EF
L_10EF:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
;   [loop start] L_10FC
L_10FC:
        mov     al, byte ptr es:[di + 0x1f]     ; 26 8A 45 1F
        jmp     L_111A                          ; EB 18
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
        lodsb   al, byte ptr [si]               ; AC
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_112C                          ; 7C 1E
        cmp     al, byte ptr es:[di + 0x1e]     ; 26 3A 45 1E
        ja      L_10FC                          ; 77 E8
        sub     al, byte ptr es:[di + 0x1d]     ; 26 2A 45 1D
        jb      L_10FC                          ; 72 E2
;   [unconditional branch target] L_111A
L_111A:
        mov     cx, word ptr es:[di + 0x14]     ; 26 8B 4D 14
        cmp     al, byte ptr es:[di + 0x20]     ; 26 3A 45 20
        je      L_1133                          ; 74 0F
        mul     cl                              ; F6 E1
        add     ax, 8                           ; 05 08 00
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [conditional branch target (if/else)] L_112C
L_112C:
        add     word ptr [bp - 0x1e], bx        ; 01 5E E2
        pop     ax                              ; 58
        jmp     L_0DF3                          ; E9 C0 FC
;   [loop start (also forward branch)] L_1133
L_1133:
        jmp     word ptr [bp - 0x12]            ; FF 66 EE
        xor     ah, ah                          ; 32 E4
        shl     ax, 1                           ; D1 E0
        push    bx                              ; 53
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr es:[bx + di + 0x33] ; 26 8B 41 33
        mov     cx, word ptr es:[bx + di + 0x35] ; 26 8B 49 35
        sub     cx, ax                          ; 2B C8
        pop     bx                              ; 5B
        je      L_116D                          ; 74 23
        add     cx, word ptr [bp - 0x28]        ; 03 4E D8
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        sub     ax, word ptr [bp - 0x2c]        ; 2B 46 D4
        jg      L_1159                          ; 7F 04
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_1159
L_1159:
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        xor     ax, ax                          ; 33 C0
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [loop start] L_1161
L_1161:
        mov     al, byte ptr es:[di + 0x1f]     ; 26 8A 45 1F
        jmp     L_117F                          ; EB 18
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
;   [loop start (also forward branch)] L_116D
L_116D:
        lodsb   al, byte ptr [si]               ; AC
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_119F                          ; 7C 2C
        cmp     al, byte ptr es:[di + 0x1e]     ; 26 3A 45 1E
        ja      L_1161                          ; 77 E8
        sub     al, byte ptr es:[di + 0x1d]     ; 26 2A 45 1D
        jb      L_1161                          ; 72 E2
;   [unconditional branch target] L_117F
L_117F:
        cmp     al, byte ptr es:[di + 0x20]     ; 26 3A 45 20
        je      L_1133                          ; 74 AE
        xor     ah, ah                          ; 32 E4
        shl     ax, 1                           ; D1 E0
        push    bx                              ; 53
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr es:[bx + di + 0x33] ; 26 8B 41 33
        mov     cx, word ptr es:[bx + di + 0x35] ; 26 8B 49 35
        sub     cx, ax                          ; 2B C8
        add     ax, 8                           ; 05 08 00
        pop     bx                              ; 5B
        je      L_116D                          ; 74 D1
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [conditional branch target (if/else)] L_119F
L_119F:
        add     word ptr [bp - 0x1e], bx        ; 01 5E E2
        pop     ax                              ; 58
        jmp     L_0DF3                          ; E9 4D FC
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
        mov     cx, word ptr [bp - 0x30]        ; 8B 4E D0
        xor     ax, ax                          ; 33 C0
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
        mov     dl, byte ptr es:[di]            ; 26 8A 15
        xor     dl, byte ptr [bp - 0x3e]        ; 32 56 C2
        and     dl, ah                          ; 22 D4
        xor     byte ptr es:[di], dl            ; 26 30 15
        inc     di                              ; 47
        ret                                     ; C3
        push    bx                              ; 53
        mov     bx, word ptr [bp - 0x34]        ; 8B 5E CC
        mov     dl, byte ptr es:[di]            ; 26 8A 15
        xor     dl, byte ptr [bp - 0x3e]        ; 32 56 C2
        and     dl, ah                          ; 22 D4
        xor     byte ptr es:[di], dl            ; 26 30 15
        mov     dl, byte ptr es:[bx + di]       ; 26 8A 11
        xor     dl, byte ptr [bp - 0x3d]        ; 32 56 C3
        and     dl, ah                          ; 22 D4
        xor     byte ptr es:[bx + di], dl       ; 26 30 11
        add     bx, bx                          ; 03 DB
        mov     dl, byte ptr es:[bx + di]       ; 26 8A 11
        xor     dl, byte ptr [bp - 0x3c]        ; 32 56 C4
        and     dl, ah                          ; 22 D4
        xor     byte ptr es:[bx + di], dl       ; 26 30 11
        inc     di                              ; 47
        pop     bx                              ; 5B
        ret                                     ; C3
        mov     dl, byte ptr es:[di]            ; 26 8A 15
        xor     dl, byte ptr [bp - 0x3e]        ; 32 56 C2
        and     dl, ah                          ; 22 D4
        xor     byte ptr es:[di], dl            ; 26 30 15
        push    ds                              ; 1E
        mov     dx, 0xa800                      ; BA 00 A8
        mov     ds, dx                          ; 8E DA
        mov     dl, byte ptr [di]               ; 8A 15
        xor     dl, byte ptr [bp - 0x3d]        ; 32 56 C3
        and     dl, ah                          ; 22 D4
        xor     byte ptr [di], dl               ; 30 15
        mov     dl, byte ptr [di - 0x8000]      ; 8A 95 00 80
        xor     dl, byte ptr [bp - 0x3c]        ; 32 56 C4
        and     dl, ah                          ; 22 D4
        xor     byte ptr [di - 0x8000], dl      ; 30 95 00 80
        inc     di                              ; 47
        pop     ds                              ; 1F
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1215   offset=0x1215  size=22 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_1253
;-------------------------------------------------------------------------
;   [sub-routine] L_1215
L_1215:
        cld                                     ; FC
        mov     dx, word ptr es:[8]             ; 26 8B 16 08 00
        mov     di, 0x5e                        ; BF 5E 00
        mov     al, 0xff                        ; B0 FF
        call    L_1253                          ; E8 30 00
        mov     di, 0xfe                        ; BF FE 00
        xor     al, al                          ; 32 C0
        mov     byte ptr es:[0x10], al          ; 26 A2 10 00
        call    L_1253                          ; E8 24 00
        cmp     dl, byte ptr es:[0x26]          ; 26 3A 16 26 00
        je      L_1252                          ; 74 1C
        mov     word ptr es:[0x26], dx          ; 26 89 16 26 00
        mov     si, 0x3a                        ; BE 3A 00
        cmp     dl, 2                           ; 80 FA 02
        je      L_1246                          ; 74 03
        mov     si, 0x4c                        ; BE 4C 00
;   [conditional branch target (if/else)] L_1246
L_1246:
        mov     cx, 9                           ; B9 09 00
        mov     di, 0x28                        ; BF 28 00
        mov     ax, es                          ; 8C C0
        mov     ds, ax                          ; 8E D8
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
;   [error/early exit] L_1252
L_1252:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (17 instructions).

;-------------------------------------------------------------------------
; sub_1253   offset=0x1253  size=17 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1253
L_1253:
        ; constant VK_SHIFT
        mov     cx, 0x10                        ; B9 10 00
        cmp     dl, 4                           ; 80 FA 04
        je      L_1262                          ; 74 07
;   [loop iteration target] L_125B
L_125B:
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        loop    L_125B                          ; E2 FA
        ret                                     ; C3
;   [loop iteration target] L_1262
L_1262:
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        loop    L_1262                          ; E2 F8
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (11 instructions).

;-------------------------------------------------------------------------
; sub_126B   offset=0x126B  size=11 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_12C0, L_12FD, L_13B2, L_1447, L_14E3
;-------------------------------------------------------------------------
;   [sub-routine] L_126B
L_126B:
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        push    bp                              ; 55
        cld                                     ; FC
        call    L_14E3                          ; E8 6F 02
        call    L_13B2                          ; E8 3B 01
        call    L_12FD                          ; E8 83 00
        call    L_12C0                          ; E8 43 00
        call    L_1447                          ; E8 C7 01
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_1282   offset=0x1282  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_1299
;-------------------------------------------------------------------------
;   [sub-routine] L_1282
L_1282:
        cmp     byte ptr [0x11], 1              ; 80 3E 11 00 01
        jne     L_1298                          ; 75 0F
        mov     byte ptr [0x11], 0              ; C6 06 11 00 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        cld                                     ; FC
        push    bp                              ; 55
        call    L_1299                          ; E8 02 00
        pop     bp                              ; 5D
;   [error/early exit] L_1298
L_1298:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1299   offset=0x1299  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_15F1, L_1621
;-------------------------------------------------------------------------
;   [sub-routine] L_1299
L_1299:
        mov     di, 0x19e                       ; BF 9E 01
        mov     ax, word ptr [0x12]             ; A1 12 00
        mov     si, word ptr [0x14]             ; 8B 36 14 00
        push    si                              ; 56
        push    ax                              ; 50
        call    L_15F1                          ; E8 49 03
        mov     cx, word ptr [0x14]             ; 8B 0E 14 00
        call    L_1621                          ; E8 72 03
        xchg    di, si                          ; 87 F7
        mov     cx, word ptr [0x26]             ; 8B 0E 26 00
        add     ax, cx                          ; 03 C1
        add     bx, cx                          ; 03 D9
        inc     cx                              ; 41
        mov     bp, 0x20                        ; BD 20 00
        jmp     L_1464                          ; E9 A4 01
; Description (heuristic):
;   Pure computation / dispatcher (31 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_12C0   offset=0x12C0  size=31 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_141E
;-------------------------------------------------------------------------
;   [sub-routine] L_12C0
L_12C0:
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     si, word ptr [0x18]             ; 8B 36 18 00
        call    L_141E                          ; E8 54 01
        mov     di, si                          ; 8B FE
        mov     si, 0xfe                        ; BE FE 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        jmp     word ptr [0x2c]                 ; FF 26 2C 00
        ; constant WM_MOVE
        mov     dx, 3                           ; BA 03 00
;   [loop iteration target] L_12DA
L_12DA:
        lodsw   ax, word ptr [si]               ; AD
        xor     ax, word ptr [di]               ; 33 05
        stosw   word ptr es:[di], ax            ; AB
        lodsb   al, byte ptr [si]               ; AC
        xor     al, byte ptr [di]               ; 32 05
        mov     byte ptr [di], al               ; 88 05
        add     di, dx                          ; 03 FA
        loop    L_12DA                          ; E2 F3
        ret                                     ; C3
        ; constant WM_SIZE
        mov     dx, 5                           ; BA 05 00
;   [loop iteration target] L_12EB
L_12EB:
        lodsw   ax, word ptr [si]               ; AD
        xor     ax, word ptr [di]               ; 33 05
        stosw   word ptr es:[di], ax            ; AB
        lodsw   ax, word ptr [si]               ; AD
        xor     ax, word ptr [di]               ; 33 05
        stosw   word ptr es:[di], ax            ; AB
        lodsb   al, byte ptr [si]               ; AC
        xor     al, byte ptr [di]               ; 32 05
        mov     byte ptr [di], al               ; 88 05
        add     di, dx                          ; 03 FA
        loop    L_12EB                          ; E2 EF
;   [loop start] L_12FC
L_12FC:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (89 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_12FD   offset=0x12FD  size=89 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_12FD
L_12FD:
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     bl, 7                           ; B3 07
        mov     al, byte ptr [0x16]             ; A0 16 00
        and     al, bl                          ; 22 C3
        and     bl, byte ptr [0x10]             ; 22 1E 10 00
        mov     byte ptr [0x10], al             ; A2 10 00
        sub     al, bl                          ; 2A C3
        je      L_12FC                          ; 74 E9
        jl      L_135B                          ; 7C 46
        mov     si, 0xfe                        ; BE FE 00
        cmp     al, 3                           ; 3C 03
        jae     L_133E                          ; 73 22
        mov     bl, al                          ; 8A D8
;   [loop start] L_131E
L_131E:
        mov     di, si                          ; 8B FE
        mov     cx, word ptr [0x34]             ; 8B 0E 34 00
        shr     cx, 1                           ; D1 E9
;   [loop iteration target] L_1326
L_1326:
        mov     ax, word ptr [di]               ; 8B 05
        xchg    al, ah                          ; 86 E0
        rcr     ax, 1                           ; D1 D8
        xchg    al, ah                          ; 86 E0
        stosw   word ptr es:[di], ax            ; AB
        loop    L_1326                          ; E2 F5
        mov     al, byte ptr [si]               ; 8A 04
        rcl     al, 1                           ; D0 D0
        ror     al, 1                           ; D0 C8
        mov     byte ptr [si], al               ; 88 04
        dec     bl                              ; FE CB
        jne     L_131E                          ; 75 E1
        ret                                     ; C3
;   [conditional branch target (if/else)] L_133E
L_133E:
        mov     cl, al                          ; 8A C8
        mov     di, si                          ; 8B FE
        mov     dx, word ptr [0x34]             ; 8B 16 34 00
        xor     bl, bl                          ; 32 DB
;   [loop start] L_1348
L_1348:
        xor     ax, ax                          ; 33 C0
        mov     ah, byte ptr [di]               ; 8A 25
        shr     ax, cl                          ; D3 E8
        or      ah, bl                          ; 0A E3
        mov     bl, al                          ; 8A D8
        mov     al, ah                          ; 8A C4
        stosb   byte ptr es:[di], al            ; AA
        dec     dx                              ; 4A
        jne     L_1348                          ; 75 F0
        or      byte ptr [si], bl               ; 08 1C
        ret                                     ; C3
;   [conditional branch target (if/else)] L_135B
L_135B:
        neg     al                              ; F6 D8
        mov     si, 0xfe                        ; BE FE 00
        std                                     ; FD
        cmp     al, 3                           ; 3C 03
        jae     L_1393                          ; 73 2E
        mov     bl, al                          ; 8A D8
;   [loop start] L_1367
L_1367:
        mov     di, si                          ; 8B FE
        mov     cx, word ptr [0x34]             ; 8B 0E 34 00
        add     di, cx                          ; 03 F9
        sub     di, 2                           ; 83 EF 02
        mov     dx, di                          ; 8B D7
        shr     cx, 1                           ; D1 E9
;   [loop iteration target] L_1376
L_1376:
        mov     ax, word ptr [di]               ; 8B 05
        xchg    al, ah                          ; 86 E0
        rcl     ax, 1                           ; D1 D0
        xchg    al, ah                          ; 86 E0
        stosw   word ptr es:[di], ax            ; AB
        loop    L_1376                          ; E2 F5
        mov     di, dx                          ; 8B FA
        mov     al, byte ptr [di + 1]           ; 8A 45 01
        rcr     al, 1                           ; D0 D8
        rol     al, 1                           ; D0 C0
        mov     byte ptr [di + 1], al           ; 88 45 01
        dec     bl                              ; FE CB
        jne     L_1367                          ; 75 D6
        cld                                     ; FC
        ret                                     ; C3
;   [conditional branch target (if/else)] L_1393
L_1393:
        mov     cl, al                          ; 8A C8
        mov     dx, word ptr [0x34]             ; 8B 16 34 00
        add     si, dx                          ; 03 F2
        dec     si                              ; 4E
        mov     di, si                          ; 8B FE
        xor     bl, bl                          ; 32 DB
;   [loop start] L_13A0
L_13A0:
        xor     ax, ax                          ; 33 C0
        mov     al, byte ptr [di]               ; 8A 05
        shl     ax, cl                          ; D3 E0
        or      al, bl                          ; 0A C3
        mov     bl, ah                          ; 8A DC
        stosb   byte ptr es:[di], al            ; AA
        dec     dx                              ; 4A
        jne     L_13A0                          ; 75 F2
        or      byte ptr [si], bl               ; 08 1C
        cld                                     ; FC
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_13B2   offset=0x13B2  size=28 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_141E
;-------------------------------------------------------------------------
;   [sub-routine] L_13B2
L_13B2:
        mov     di, 0x19e                       ; BF 9E 01
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     si, word ptr [0x18]             ; 8B 36 18 00
        mov     word ptr [0x12], ax             ; A3 12 00
        mov     word ptr [0x14], si             ; 89 36 14 00
        mov     byte ptr [0x11], 1              ; C6 06 11 00 01
        call    L_141E                          ; E8 53 00
        shr     cx, 1                           ; D1 E9
        mov     dx, word ptr [0x26]             ; 8B 16 26 00
        jmp     word ptr [0x2a]                 ; FF 26 2A 00
;   [loop iteration target] L_13D5
L_13D5:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        loop    L_13D5                          ; E2 F6
        ret                                     ; C3
;   [loop iteration target] L_13E0
L_13E0:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, dx                          ; 03 F2
        loop    L_13E0                          ; E2 F4
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (26 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_13ED   offset=0x13ED  size=26 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_141E
;-------------------------------------------------------------------------
;   [sub-routine] L_13ED
L_13ED:
        mov     di, 0x19e                       ; BF 9E 01
        mov     ax, word ptr [0x12]             ; A1 12 00
        mov     si, word ptr [0x14]             ; 8B 36 14 00
        call    L_141E                          ; E8 24 00
        shr     cx, 1                           ; D1 E9
        mov     dx, word ptr [0x26]             ; 8B 16 26 00
        xchg    di, si                          ; 87 F7
        jmp     word ptr [0x28]                 ; FF 26 28 00
;   [loop iteration target] L_1406
L_1406:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        loop    L_1406                          ; E2 F6
        ret                                     ; C3
;   [loop iteration target] L_1411
L_1411:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, dx                          ; 03 FA
        loop    L_1411                          ; E2 F4
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_141E   offset=0x141E  size=16 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_141E
L_141E:
        sub     ax, word ptr [0x1a]             ; 2B 06 1A 00
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        sub     si, word ptr [0x1c]             ; 2B 36 1C 00
        mov     cx, si                          ; 8B CE
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        cmp     word ptr [0x26], 2              ; 83 3E 26 00 02
        je      L_143B                          ; 74 02
        shl     si, 1                           ; D1 E6
;   [error/early exit] L_143B
L_143B:
        add     si, cx                          ; 03 F1
        add     si, ax                          ; 03 F0
        add     si, 0x23e                       ; 81 C6 3E 02
        mov     cx, 0x20                        ; B9 20 00
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (65 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1447   offset=0x1447  size=65 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_161D
;-------------------------------------------------------------------------
;   [sub-routine] L_1447
L_1447:
        call    L_161D                          ; E8 D3 01
        mov     si, 0x23e                       ; BE 3E 02
        mov     di, word ptr [0x24]             ; 8B 3E 24 00
        mov     cx, word ptr [0x26]             ; 8B 0E 26 00
        shl     cx, 1                           ; D1 E1
        inc     cx                              ; 41
        mov     bp, word ptr [0x1e]             ; 8B 2E 1E 00
        push    word ptr [0x1c]                 ; FF 36 1C 00
        push    word ptr [0x1a]                 ; FF 36 1A 00
;   [unconditional branch target] L_1464
L_1464:
        mov     dx, cx                          ; 8B D1
        mov     word ptr [0x20], cx             ; 89 0E 20 00
        mov     word ptr [0x22], bp             ; 89 2E 22 00
        xor     bp, bp                          ; 33 ED
        pop     cx                              ; 59
        sar     cx, 1                           ; D1 F9
        sar     cx, 1                           ; D1 F9
        sar     cx, 1                           ; D1 F9
        or      cx, cx                          ; 0B C9
        jge     L_1483                          ; 7D 08
        neg     cx                              ; F7 D9
        add     di, cx                          ; 03 F9
        add     si, cx                          ; 03 F1
        jmp     L_148C                          ; EB 09
;   [conditional branch target (if/else)] L_1483
L_1483:
        add     cx, word ptr [0x20]             ; 03 0E 20 00
        sub     cx, 0x50                        ; 83 E9 50
        jle     L_1499                          ; 7E 0D
;   [unconditional branch target] L_148C
L_148C:
        mov     bp, cx                          ; 8B E9
        add     ax, cx                          ; 03 C1
        add     bx, cx                          ; 03 D9
        sub     dx, cx                          ; 2B D1
        jg      L_1499                          ; 7F 03
        jmp     L_14DC                          ; EB 44
        nop                                     ; 90
;   [conditional branch target (if/else)] L_1499
L_1499:
        pop     cx                              ; 59
        or      cx, cx                          ; 0B C9
        jge     L_14AA                          ; 7D 0C
        neg     cx                              ; F7 D9
        push    cx                              ; 51
;   [loop iteration target] L_14A1
L_14A1:
        add     si, word ptr [0x20]             ; 03 36 20 00
        loop    L_14A1                          ; E2 FA
        pop     cx                              ; 59
        jmp     L_14B4                          ; EB 0A
;   [conditional branch target (if/else)] L_14AA
L_14AA:
        add     cx, word ptr [0x22]             ; 03 0E 22 00
        sub     cx, 0x190                       ; 81 E9 90 01
        jle     L_14BA                          ; 7E 06
;   [unconditional branch target] L_14B4
L_14B4:
        sub     word ptr [0x22], cx             ; 29 0E 22 00
        jle     L_14DD                          ; 7E 23
;   [conditional branch target (if/else)] L_14BA
L_14BA:
        mov     cx, 0xb800                      ; B9 00 B8
        mov     es, cx                          ; 8E C1
        xor     ch, ch                          ; 32 ED
        mov     dh, byte ptr [0x22]             ; 8A 36 22 00
;   [loop start] L_14C5
L_14C5:
        mov     cl, dl                          ; 8A CA
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        add     di, ax                          ; 03 F8
        jns     L_14D1                          ; 79 04
        add     di, 0x8050                      ; 81 C7 50 80
;   [conditional branch target (if/else)] L_14D1
L_14D1:
        add     si, bp                          ; 03 F5
        dec     dh                              ; FE CE
        jne     L_14C5                          ; 75 EE
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        ret                                     ; C3
;   [fall-through exit] L_14DC
L_14DC:
        pop     cx                              ; 59
;   [error/early exit] L_14DD
L_14DD:
        mov     byte ptr [0x11], 0              ; C6 06 11 00 00
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_14E3   offset=0x14E3  size=14 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_1299, L_13ED, L_1503, L_1590
;-------------------------------------------------------------------------
;   [sub-routine] L_14E3
L_14E3:
        call    L_1590                          ; E8 AA 00
        xor     ax, ax                          ; 33 C0
        mov     bx, 0x11                        ; BB 11 00
        cmp     byte ptr [bx], al               ; 38 07
        je      L_14F8                          ; 74 09
        mov     byte ptr [bx], al               ; 88 07
        or      bp, bp                          ; 0B ED
        je      L_14FC                          ; 74 07
        call    L_1299                          ; E8 A1 FD
;   [conditional branch target (if/else)] L_14F8
L_14F8:
        call    L_1503                          ; E8 08 00
        ret                                     ; C3
;   [conditional branch target (if/else)] L_14FC
L_14FC:
        call    L_1503                          ; E8 04 00
        call    L_13ED                          ; E8 EB FE
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (70 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1503   offset=0x1503  size=70 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_161D
;-------------------------------------------------------------------------
;   [sub-routine] L_1503
L_1503:
        call    L_161D                          ; E8 17 01
        push    cx                              ; 51
        mov     cx, word ptr [0x1e]             ; 8B 0E 1E 00
        mov     si, word ptr [0x24]             ; 8B 36 24 00
        mov     di, 0xb800                      ; BF 00 B8
        mov     ds, di                          ; 8E DF
        mov     di, 0x23e                       ; BF 3E 02
        jmp     word ptr es:[0x2e]              ; 26 FF 26 2E 00
        pop     dx                              ; 5A
        or      dx, dx                          ; 0B D2
        jns     L_152B                          ; 79 0A
        add     cx, dx                          ; 03 CA
        jle     L_154F                          ; 7E 2A
;   [loop start] L_1525
L_1525:
        add     di, 5                           ; 83 C7 05
        inc     dx                              ; 42
        jne     L_1525                          ; 75 FA
;   [conditional branch target (if/else)] L_152B
L_152B:
        xor     bx, bx                          ; 33 DB
        mov     dx, word ptr es:[0x1a]          ; 26 8B 16 1A 00
        sar     dx, 1                           ; D1 FA
        jns     L_153C                          ; 79 06
        sar     dx, 1                           ; D1 FA
        sar     dx, 1                           ; D1 FA
        sub     bx, dx                          ; 2B DA
;   [loop iteration target] L_153C
L_153C:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     si, ax                          ; 03 F0
        mov     dx, bx                          ; 8B D3
        add     dx, si                          ; 03 D6
        jns     L_154D                          ; 79 04
        add     si, 0x8050                      ; 81 C6 50 80
;   [conditional branch target (if/else)] L_154D
L_154D:
        loop    L_153C                          ; E2 ED
;   [error/early exit] L_154F
L_154F:
        mov     cx, es                          ; 8C C1
        mov     ds, cx                          ; 8E D9
        ret                                     ; C3
        pop     dx                              ; 5A
        or      dx, dx                          ; 0B D2
        jns     L_1563                          ; 79 0A
        add     cx, dx                          ; 03 CA
        jle     L_158B                          ; 7E 2E
;   [loop start] L_155D
L_155D:
        add     di, 9                           ; 83 C7 09
        inc     dx                              ; 42
        jne     L_155D                          ; 75 FA
;   [conditional branch target (if/else)] L_1563
L_1563:
        xor     bx, bx                          ; 33 DB
        mov     dx, word ptr es:[0x1a]          ; 26 8B 16 1A 00
        sar     dx, 1                           ; D1 FA
        jns     L_1574                          ; 79 06
        sar     dx, 1                           ; D1 FA
        sar     dx, 1                           ; D1 FA
        sub     bx, dx                          ; 2B DA
;   [loop iteration target] L_1574
L_1574:
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
        jns     L_1589                          ; 79 04
        add     si, 0x8050                      ; 81 C6 50 80
;   [conditional branch target (if/else)] L_1589
L_1589:
        loop    L_1574                          ; E2 E9
;   [error/early exit] L_158B
L_158B:
        mov     cx, es                          ; 8C C1
        mov     ds, cx                          ; 8E D9
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1590   offset=0x1590  size=36 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_15F1
;-------------------------------------------------------------------------
;   [sub-routine] L_1590
L_1590:
        xor     bp, bp                          ; 33 ED
        cmp     byte ptr [0x11], 0              ; 80 3E 11 00 00
        je      L_15CA                          ; 74 31
        mov     ax, word ptr [0x16]             ; A1 16 00
        mov     bx, word ptr [0x12]             ; 8B 1E 12 00
        cmp     ax, bx                          ; 3B C3
        jge     L_15A5                          ; 7D 01
        xchg    bx, ax                          ; 93
;   [conditional branch target (if/else)] L_15A5
L_15A5:
        and     bl, 0xf8                        ; 80 E3 F8
        sub     ax, bx                          ; 2B C3
        cmp     ax, word ptr [0x36]             ; 3B 06 36 00
        jge     L_15CA                          ; 7D 1A
        mov     word ptr [0x1a], bx             ; 89 1E 1A 00
        mov     ax, word ptr [0x18]             ; A1 18 00
        mov     bx, word ptr [0x14]             ; 8B 1E 14 00
        mov     cx, ax                          ; 8B C8
        sub     ax, bx                          ; 2B C3
        jge     L_15C5                          ; 7D 04
        neg     ax                              ; F7 D8
        mov     bx, cx                          ; 8B D9
;   [conditional branch target (if/else)] L_15C5
L_15C5:
        cmp     ax, 0x20                        ; 3D 20 00
        jle     L_15DA                          ; 7E 10
;   [conditional branch target (if/else)] L_15CA
L_15CA:
        mov     ax, word ptr [0x16]             ; A1 16 00
        and     al, 0xf8                        ; 24 F8
        mov     word ptr [0x1a], ax             ; A3 1A 00
        mov     bx, word ptr [0x18]             ; 8B 1E 18 00
        xor     ax, ax                          ; 33 C0
        not     bp                              ; F7 D5
;   [conditional branch target (if/else)] L_15DA
L_15DA:
        mov     word ptr [0x1c], bx             ; 89 1E 1C 00
        add     ax, 0x20                        ; 05 20 00
        mov     word ptr [0x1e], ax             ; A3 1E 00
        mov     ax, word ptr [0x1a]             ; A1 1A 00
        mov     si, bx                          ; 8B F3
        call    L_15F1                          ; E8 05 00
        mov     word ptr [0x24], si             ; 89 36 24 00
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_15F1   offset=0x15F1  size=21 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_15F1
L_15F1:
        mov     cx, si                          ; 8B CE
        xchg    si, ax                          ; 96
        sar     si, 1                           ; D1 FE
        sar     si, 1                           ; D1 FE
        sar     si, 1                           ; D1 FE
        sar     ax, 1                           ; D1 F8
        js      L_161C                          ; 78 1E
        jae     L_1604                          ; 73 04
        add     si, 0x2000                      ; 81 C6 00 20
;   [conditional branch target (if/else)] L_1604
L_1604:
        sar     ax, 1                           ; D1 F8
        jae     L_160C                          ; 73 04
        add     si, 0x4000                      ; 81 C6 00 40
;   [conditional branch target (if/else)] L_160C
L_160C:
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     si, ax                          ; 03 F0
        add     ax, ax                          ; 03 C0
        add     ax, ax                          ; 03 C0
        add     si, ax                          ; 03 F0
;   [error/early exit] L_161C
L_161C:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (1 instructions).

;-------------------------------------------------------------------------
; sub_161D   offset=0x161D  size=1 instr  segment=seg1.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_161D
L_161D:
        mov     cx, word ptr [0x1c]             ; 8B 0E 1C 00
; Description (heuristic):
;   Pure computation / dispatcher (579 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1621   offset=0x1621  size=579 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1B5C, L_1BBC, L_20F7, L_25D2
;-------------------------------------------------------------------------
;   [sub-routine] L_1621
L_1621:
        mov     ax, word ptr [0x30]             ; A1 30 00
        ret                                     ; C3
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        push    di                              ; 57
        lds     si, ptr [bp + 0x10]             ; C5 76 10
        mov     al, byte ptr [si + 8]           ; 8A 44 08
        mov     ah, byte ptr [bp + 0xb]         ; 8A 66 0B
        mov     cx, word ptr [si]               ; 8B 0C
        mov     si, word ptr [si + 2]           ; 8B 74 02
        mov     word ptr [bp - 6], si           ; 89 76 FA
        mov     byte ptr [bp - 3], al           ; 88 46 FD
        cmp     al, 3                           ; 3C 03
        je      L_1652                          ; 74 06
        add     ax, ax                          ; 03 C0
        cdq                                     ; 99
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_1652
L_1652:
        les     di, ptr [bp + 0x10]             ; C4 7E 10
        lds     si, ptr es:[di + 0xa]           ; 26 C5 75 0A
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 8], cx           ; 89 4E F8
        jcxz    L_167A                          ; E3 19
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        mov     bx, ax                          ; 8B D8
        and     bx, 3                           ; 81 E3 03 00
        add     bx, bx                          ; 03 DB
        add     si, word ptr cs:[bx + 0x1b1]    ; 2E 03 B7 B1 01
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
;   [conditional branch target (if/else)] L_167A
L_167A:
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
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
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr cs:[bx + 0x221]    ; 2E 8A 9F 21 02
        dec     bl                              ; FE CB
        std                                     ; FD
        ; constant WM_CREATE
        mov     dx, 1                           ; BA 01 00
        test    byte ptr [bp + 6], 2            ; F6 46 06 02
        jne     L_16BA                          ; 75 0E
        cld                                     ; FC
        shl     bl, 1                           ; D0 E3
        inc     bl                              ; FE C3
        not     bl                              ; F6 D3
        sub     cx, di                          ; 2B CF
        neg     cx                              ; F7 D9
        inc     cx                              ; 41
        neg     dx                              ; F7 DA
;   [conditional branch target (if/else)] L_16BA
L_16BA:
        not     bl                              ; F6 D3
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        cmp     byte ptr [bp - 3], 3            ; 80 7E FD 03
        jne     L_172D                          ; 75 65
        push    di                              ; 57
        mov     dx, bx                          ; 8B D3
        les     di, ptr [bp + 0x10]             ; C4 7E 10
        mov     bx, word ptr es:[di + 0xe]      ; 26 8B 5D 0E
        mov     dh, byte ptr [bp + 8]           ; 8A 76 08
        mov     di, word ptr [bp + 9]           ; 8B 7E 09
        mov     ax, ds                          ; 8C D8
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     es, ax                          ; 8E C0
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        add     bx, bx                          ; 03 DB
        add     bx, word ptr [bp - 0xa]         ; 03 5E F6
        mov     ah, byte ptr es:[bx + si]       ; 26 8A 20
        xor     ax, di                          ; 33 C7
        or      ah, al                          ; 0A E0
        lodsb   al, byte ptr [si]               ; AC
        xor     al, dh                          ; 32 C6
        or      al, ah                          ; 0A C4
        xor     ah, ah                          ; 32 E4
        test    byte ptr [bp + 6], 1            ; F6 46 06 01
        je      L_16FD                          ; 74 02
        dec     ah                              ; FE CC
;   [conditional branch target (if/else)] L_16FD
L_16FD:
        xor     al, ah                          ; 32 C4
        and     al, dl                          ; 22 C2
        jne     L_1728                          ; 75 25
        dec     cx                              ; 49
        je      L_1728                          ; 74 22
        mov     dl, ah                          ; 8A D4
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        push    bp                              ; 55
        mov     bp, bx                          ; 8B EB
        sub     bx, ax                          ; 2B D8
        shr     bx, 1                           ; D1 EB
;   [loop iteration target] L_1712
L_1712:
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        mov     ah, byte ptr es:[bp + si]       ; 26 8A 22
        xor     ax, di                          ; 33 C7
        or      ah, al                          ; 0A E0
        lodsb   al, byte ptr [si]               ; AC
        xor     al, dh                          ; 32 C6
        or      al, ah                          ; 0A C4
        xor     al, dl                          ; 32 C2
        jne     L_1727                          ; 75 02
        loop    L_1712                          ; E2 EB
;   [conditional branch target (if/else)] L_1727
L_1727:
        pop     bp                              ; 5D
;   [conditional branch target (if/else)] L_1728
L_1728:
        pop     di                              ; 5F
        jne     L_1754                          ; 75 29
        jmp     L_1786                          ; EB 59
;   [conditional branch target (if/else)] L_172D
L_172D:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        test    byte ptr [bp + 6], 1            ; F6 46 06 01
        je      L_173A                          ; 74 04
        not     ax                              ; F7 D0
        not     bh                              ; F6 D7
;   [conditional branch target (if/else)] L_173A
L_173A:
        lodsb   al, byte ptr [si]               ; AC
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        jne     L_1754                          ; 75 13
        mov     al, ah                          ; 8A C4
        dec     cx                              ; 49
        je      L_1786                          ; 74 40
        xchg    di, si                          ; 87 F7
        repe scasb al, byte ptr es:[di]         ; F3 AE
        je      L_1786                          ; 74 3A
        inc     cx                              ; 41
        xchg    di, si                          ; 87 F7
        add     si, dx                          ; 03 F2
        lodsb   al, byte ptr [si]               ; AC
        xor     al, ah                          ; 32 C4
;   [conditional branch target (if/else)] L_1754
L_1754:
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        test    byte ptr [bp + 6], 2            ; F6 46 06 02
        jne     L_1771                          ; 75 11
        sub     cx, di                          ; 2B CF
        neg     cx                              ; F7 D9
        dec     cx                              ; 49
;   [loop start] L_1765
L_1765:
        inc     cx                              ; 41
        shl     al, 1                           ; D0 E0
        jae     L_1765                          ; 73 FB
        cmp     cx, word ptr [bp - 6]           ; 3B 4E FA
        jge     L_1786                          ; 7D 17
        jmp     L_1776                          ; EB 05
;   [loop start (also forward branch)] L_1771
L_1771:
        dec     cx                              ; 49
        shr     ax, 1                           ; D1 E8
        jae     L_1771                          ; 73 FB
;   [unconditional branch target] L_1776
L_1776:
        mov     ax, cx                          ; 8B C1
;   [loop start] L_1778
L_1778:
        cld                                     ; FC
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [branch target] L_1786
L_1786:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1778                          ; EB ED
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 2                           ; B8 02 00
        call    L_25D2                          ; E8 37 0E
        push    si                              ; 56
        push    di                              ; 57
        jae     L_17A2                          ; 73 03
        jmp     L_187D                          ; E9 DB 00
;   [conditional branch target (if/else)] L_17A2
L_17A2:
        les     di, ptr [bp + 0x12]             ; C4 7E 12
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        cmp     word ptr es:[di + 8], 0x103     ; 26 81 7D 08 03 01
        je      L_17BA                          ; 74 0B
        mov     al, byte ptr [bp + 0xd]         ; 8A 46 0D
        rol     al, 1                           ; D0 C0
        cwde                                    ; 98
        mov     byte ptr [bp + 0xa], ah         ; 88 66 0A
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
;   [conditional branch target (if/else)] L_17BA
L_17BA:
        lds     si, ptr es:[di + 0xa]           ; 26 C5 75 0A
        mov     ax, word ptr es:[di]            ; 26 8B 05
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        je      L_17DC                          ; 74 11
        mov     bx, ax                          ; 8B D8
        and     bx, 3                           ; 81 E3 03 00
        add     bx, bx                          ; 03 DB
        add     si, word ptr cs:[bx + 0x1b1]    ; 2E 03 B7 B1 01
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
;   [conditional branch target (if/else)] L_17DC
L_17DC:
        mul     word ptr es:[di + 6]            ; 26 F7 65 06
        add     si, ax                          ; 03 F0
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     bx, ax                          ; 8B D8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        add     si, ax                          ; 03 F0
        and     bx, 7                           ; 81 E3 07 00
        mov     ch, byte ptr cs:[bx + 0x221]    ; 2E 8A AF 21 02
        mov     dx, word ptr es:[di + 0xe]      ; 26 8B 55 0E
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, bx                          ; 8B C3
        or      ax, di                          ; 0B C7
        je      L_1849                          ; 74 41
        mov     es, bx                          ; 8E C3
        mov     bx, word ptr es:[di]            ; 26 8B 1D
        dec     bx                              ; 4B
        and     bx, 0xf                         ; 81 E3 0F 00
        mov     es, word ptr [bp - 4]           ; 8E 46 FC
        lea     di, [bp + 0xa]                  ; 8D 7E 0A
        push    bp                              ; 55
        shl     bx, 1                           ; D1 E3
        mov     bp, word ptr cs:[bx + 0x237c]   ; 2E 8B AF 7C 23
;   [loop start] L_1820
L_1820:
        mov     al, byte ptr ss:[di]            ; 36 8A 05
        mov     bh, al                          ; 8A F8
        mov     ah, byte ptr [si]               ; 8A 24
        call    bp                              ; FF D5
        xor     al, ah                          ; 32 C4
        and     al, ch                          ; 22 C5
        xor     al, ah                          ; 32 C4
        mov     byte ptr [si], al               ; 88 04
        dec     cl                              ; FE C9
        je      L_1842                          ; 74 0D
        inc     di                              ; 47
        add     si, dx                          ; 03 F2
        mov     bx, es                          ; 8C C3
        mov     ax, ds                          ; 8C D8
        add     ax, bx                          ; 03 C3
        mov     ds, ax                          ; 8E D8
        jmp     L_1820                          ; EB DE
;   [conditional branch target (if/else)] L_1842
L_1842:
        pop     bp                              ; 5D
        xor     ax, ax                          ; 33 C0
        xor     dx, dx                          ; 33 D2
        jmp     L_187D                          ; EB 34
;   [conditional branch target (if/else)] L_1849
L_1849:
        cmp     cl, 1                           ; 80 F9 01
        jne     L_185C                          ; 75 0E
        xor     dx, dx                          ; 33 D2
        xor     ax, ax                          ; 33 C0
        test    byte ptr [si], ch               ; 84 2C
        je      L_187D                          ; 74 27
        dec     ax                              ; 48
        mov     dx, 0x47ff                      ; BA FF 47
        jmp     L_187D                          ; EB 21
;   [loop start (also forward branch)] L_185C
L_185C:
        mov     bl, bh                          ; 8A DF
        mov     bh, al                          ; 8A F8
        xor     ax, ax                          ; 33 C0
        test    byte ptr [si], ch               ; 84 2C
        je      L_1867                          ; 74 01
        dec     ax                              ; 48
;   [conditional branch target (if/else)] L_1867
L_1867:
        dec     cl                              ; FE C9
        je      L_1876                          ; 74 0B
        add     si, dx                          ; 03 F2
        mov     di, ds                          ; 8C DF
        add     di, word ptr [bp - 4]           ; 03 7E FC
        mov     ds, di                          ; 8E DF
        jmp     L_185C                          ; EB E6
;   [conditional branch target (if/else)] L_1876
L_1876:
        mov     dx, ax                          ; 8B D0
        mov     ax, bx                          ; 8B C3
        call    L_20F7                          ; E8 7A 08
;   [branch target] L_187D
L_187D:
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
        js      L_18A1                          ; 78 04
        mov     al, byte ptr ss:[0x1234]        ; 36 A0 34 12
;   [conditional branch target (if/else)] L_18A1
L_18A1:
        or      ch, ch                          ; 0A ED
        jns     L_18AD                          ; 79 08
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        xor     al, ah                          ; 32 C4
        mov     byte ptr [di], al               ; 88 05
;   [conditional branch target (if/else)] L_18AD
L_18AD:
        xor     ax, ax                          ; 33 C0
        jns     L_18B6                          ; 79 05
        add     cl, 0x9c                        ; 80 C1 9C
        rol     ch, 1                           ; D0 C5
;   [conditional branch target (if/else)] L_18B6
L_18B6:
        dec     bp                              ; 4D
;   [loop start] L_18B7
L_18B7:
        jg      L_18B7                          ; 7F FE
        retf                                    ; CB
;   [loop start] L_18BA
L_18BA:
        ror     bl, 1                           ; D0 CB
        jb      L_18C2                          ; 72 04
        dec     bp                              ; 4D
        jg      L_18BA                          ; 7F F9
;   [loop start] L_18C1
L_18C1:
        retf                                    ; CB
;   [conditional branch target (if/else)] L_18C2
L_18C2:
        inc     di                              ; 47
        dec     bp                              ; 4D
        jle     L_18C1                          ; 7E FB
;   [loop start] L_18C6
L_18C6:
        cmp     bp, 8                           ; 83 FD 08
        jl      L_18BA                          ; 7C EF
        mov     ah, byte ptr [di]               ; 8A 25
        mov     al, bh                          ; 8A C7
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        sub     bp, 8                           ; 83 ED 08
        jg      L_18C6                          ; 7F EF
        retf                                    ; CB
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0xc0                        ; B8 C0 00
        call    L_25D2                          ; E8 EA 0C
        push    si                              ; 56
        push    di                              ; 57
        jae     L_18EF                          ; 73 03
        jmp     L_198B                          ; E9 9C 00
;   [conditional branch target (if/else)] L_18EF
L_18EF:
        cld                                     ; FC
        mov     byte ptr [bp - 0x19], 0xff      ; C6 46 E7 FF
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     byte ptr [bp - 0x1f], al        ; 88 46 E1
        mov     bx, word ptr [si]               ; 8B 1C
        dec     bx                              ; 4B
        and     bx, 0xf                         ; 81 E3 0F 00
        mov     word ptr [bp - 0x12], bx        ; 89 5E EE
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        lds     si, ptr [bp + 0x1e]             ; C5 76 1E
        les     di, ptr [si + 0xa]              ; C4 7C 0A
        mov     cx, word ptr [si]               ; 8B 0C
        mov     word ptr [bp - 0x14], cx        ; 89 4E EC
        mov     word ptr [bp - 0x16], cx        ; 89 4E EA
        add     cx, cx                          ; 03 C9
        add     word ptr [bp - 0x16], cx        ; 01 4E EA
        mov     cx, word ptr [si + 8]           ; 8B 4C 08
        cmp     cx, 0x101                       ; 81 F9 01 01
        je      L_193E                          ; 74 09
        cmp     cx, 0x103                       ; 81 F9 03 01
        jne     L_1989                          ; 75 4E
        or      bh, 2                           ; 80 CF 02
;   [conditional branch target (if/else)] L_193E
L_193E:
        mov     cx, word ptr [si + 0xe]         ; 8B 4C 0E
        mov     word ptr [bp - 0x22], cx        ; 89 4E DE
        cmp     cx, 1                           ; 83 F9 01
        rcr     bh, 1                           ; D0 DF
        mov     byte ptr [bp - 0x1c], bh        ; 88 7E E4
        or      cx, cx                          ; 0B C9
        jne     L_1964                          ; 75 14
        mov     bx, ax                          ; 8B D8
        and     bx, 3                           ; 81 E3 03 00
        add     bx, bx                          ; 03 DB
        add     di, word ptr cs:[bx + 0x1b1]    ; 2E 03 BF B1 01
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        mov     bh, byte ptr [bp - 0x1c]        ; 8A 7E E4
;   [conditional branch target (if/else)] L_1964
L_1964:
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        mul     dx                              ; F7 E2
        add     di, ax                          ; 03 F8
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     word ptr [bp - 0xc], es         ; 8C 46 F4
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     ax, 0x12                        ; 3D 12 00
        je      L_1998                          ; 74 1C
        cmp     ax, 4                           ; 3D 04 00
        jne     L_1989                          ; 75 08
        jmp     L_1C35                          ; E9 B1 02
;   [loop start] L_1984
L_1984:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_198B                          ; EB 02
;   [loop start (also forward branch)] L_1989
L_1989:
        xor     ax, ax                          ; 33 C0
;   [loop start (also forward branch)] L_198B
L_198B:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1c                            ; CA 1C 00
;   [conditional branch target (if/else)] L_1998
L_1998:
        lds     si, ptr [bp + 0x12]             ; C5 76 12
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     bx, word ptr [si + 4]           ; 8B 5C 04
        cmp     bx, 5                           ; 83 FB 05
        jg      L_1989                          ; 7F DB
        je      L_1984                          ; 74 D4
        test    byte ptr [bp - 0x1c], 1         ; F6 46 E4 01
        jne     L_19C7                          ; 75 11
        mov     al, ah                          ; 8A C4
        shl     al, 1                           ; D0 E0
        cwde                                    ; 98
        mov     byte ptr [bp - 0x2c], ah        ; 88 66 D4
        mov     al, byte ptr [bp - 0x25]        ; 8A 46 DB
        shl     al, 1                           ; D0 E0
        cwde                                    ; 98
        mov     byte ptr [bp - 0x28], ah        ; 88 66 D8
;   [conditional branch target (if/else)] L_19C7
L_19C7:
        mov     ah, byte ptr cs:[bx + 0x188a]   ; 2E 8A A7 8A 18
        mov     al, 0x9c                        ; B0 9C
        dec     al                              ; FE C8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        call    L_1B5C                          ; E8 86 01
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
        mov     bl, byte ptr cs:[bx + 0x221]    ; 2E 8A 9F 21 02
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
;   [loop start] L_19F8
L_19F8:
        dec     ax                              ; 48
        jg      L_19FD                          ; 7F 02
        jmp     L_1984                          ; EB 87
;   [conditional branch target (if/else)] L_19FD
L_19FD:
        push    ax                              ; 50
        push    ds                              ; 1E
        push    si                              ; 56
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     byte ptr [bp - 0x1a], bl        ; 88 5E E6
        mov     ax, word ptr [si]               ; 8B 04
        mov     di, word ptr [si + 2]           ; 8B 7C 02
        xor     bx, bx                          ; 33 DB
        sub     ax, dx                          ; 2B C2
        jae     L_1A15                          ; 73 04
        mov     bl, 2                           ; B3 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_1A15
L_1A15:
        mov     dx, ax                          ; 8B D0
        mov     ax, di                          ; 8B C7
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        test    byte ptr [bp - 0x1c], 0x80      ; F6 46 E4 80
        je      L_1A2D                          ; 74 0B
        mov     si, 0x2000                      ; BE 00 20
        test    cl, 1                           ; F6 C1 01
        je      L_1A2D                          ; 74 03
        mov     si, 0x2000                      ; BE 00 20
;   [conditional branch target (if/else)] L_1A2D
L_1A2D:
        mov     byte ptr [bp - 0x1b], 0x7d      ; C6 46 E5 7D
        mov     byte ptr [bp - 0xc0], 0x90      ; C6 86 40 FF 90
        sub     ax, cx                          ; 2B C1
        jae     L_1A4A                          ; 73 10
        neg     ax                              ; F7 D8
        or      bl, 1                           ; 80 CB 01
        neg     si                              ; F7 DE
        mov     byte ptr [bp - 0x1b], 0x7f      ; C6 46 E5 7F
        mov     byte ptr [bp - 0xc0], 0x46      ; C6 86 40 FF 46
;   [conditional branch target (if/else)] L_1A4A
L_1A4A:
        mov     cx, ax                          ; 8B C8
        cmp     cx, dx                          ; 3B CA
        jb      L_1A55                          ; 72 05
        or      bl, 4                           ; 80 CB 04
        xchg    dx, cx                          ; 87 CA
;   [conditional branch target (if/else)] L_1A55
L_1A55:
        mov     word ptr [bp - 0x10], si        ; 89 76 F0
        or      dx, dx                          ; 0B D2
        jne     L_1A65                          ; 75 09
        mov     di, word ptr [bp - 0xe]         ; 8B 7E F2
        mov     bl, byte ptr [bp - 0x1a]        ; 8A 5E E6
        jmp     L_1B4F                          ; E9 EA 00
;   [conditional branch target (if/else)] L_1A65
L_1A65:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        mov     di, word ptr [bp - 4]           ; 8B 7E FC
        or      cx, cx                          ; 0B C9
        jne     L_1A8D                          ; 75 1D
        or      bl, 8                           ; 80 CB 08
        test    bl, 4                           ; F6 C3 04
        jne     L_1A8D                          ; 75 15
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        jne     L_1A8D                          ; 75 0F
        cmp     byte ptr [bp - 0x19], bl        ; 38 5E E7
        je      L_1AFB                          ; 74 78
        mov     byte ptr [bp - 0x19], bl        ; 88 5E E7
        push    dx                              ; 52
        call    L_1BBC                          ; E8 32 01
        pop     dx                              ; 5A
        jmp     L_1AFB                          ; EB 6E
;   [conditional branch target (if/else)] L_1A8D
L_1A8D:
        test    bl, 8                           ; F6 C3 08
        jne     L_1AAC                          ; 75 1A
        mov     ax, 0xee81                      ; B8 81 EE
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, cx                          ; 8B C1
        stosw   word ptr es:[di], ax            ; AB
        mov     ah, byte ptr cs:[bx + 0x169]    ; 2E 8A A7 69 01
        add     ah, 4                           ; 80 C4 04
        mov     al, byte ptr [bp - 0x1b]        ; 8A 46 E5
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_1AAC
L_1AAC:
        cmp     byte ptr [bp - 0x19], bl        ; 38 5E E7
        je      L_1AFB                          ; 74 4A
        mov     byte ptr [bp - 0x19], bl        ; 88 5E E7
        mov     cl, byte ptr cs:[bx + 0x171]    ; 2E 8A 8F 71 01
        xor     ch, ch                          ; 32 ED
        mov     al, byte ptr cs:[bx + 0x181]    ; 2E 8A 87 81 01
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x149]    ; 2E 8B B7 49 01
        mov     bx, di                          ; 8B DF
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        test    byte ptr [bp - 0x1c], 0x80      ; F6 46 E4 80
        jne     L_1ADD                          ; 75 0C
        and     ax, 0xff                        ; 25 FF 00
        je      L_1ADD                          ; 74 07
        add     bx, ax                          ; 03 D8
        mov     word ptr ss:[bx], 0             ; 36 C7 07 00 00
;   [conditional branch target (if/else)] L_1ADD
L_1ADD:
        mov     si, 0x18b6                      ; BE B6 18
        mov     cl, 4                           ; B1 04
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_1AED                          ; 74 05
        mov     si, 0x18af                      ; BE AF 18
        mov     cl, 0xb                         ; B1 0B
;   [conditional branch target (if/else)] L_1AED
L_1AED:
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, di                          ; 2B C7
        add     ax, 6                           ; 05 06 00
        mov     byte ptr es:[di - 2], al        ; 26 88 45 FE
;   [branch target] L_1AFB
L_1AFB:
        mov     word ptr [bp - 0x24], dx        ; 89 56 DC
        mov     byte ptr [bp - 0x1d], 0x21      ; C6 46 E3 21
;   [loop start] L_1B02
L_1B02:
        lds     di, ptr [bp - 0xe]              ; C5 7E F2
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        mov     bl, byte ptr [bp - 0x1a]        ; 8A 5E E6
        mov     bh, byte ptr [bp - 0x2c]        ; 8A 7E D4
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        mov     si, word ptr [bp - 0x24]        ; 8B 76 DC
        push    bp                              ; 55
        lcall   [bp - 8]                        ; FF 5E F8
        pop     bp                              ; 5D
        test    byte ptr [bp - 0x1c], 1         ; F6 46 E4 01
        je      L_1B4C                          ; 74 2D
        mov     ax, word ptr [bp - 0x27]        ; 8B 46 D9
        xchg    word ptr [bp - 0x28], ax        ; 87 46 D8
        mov     byte ptr [bp - 0x26], al        ; 88 46 DA
        mov     ax, word ptr [bp - 0x2b]        ; 8B 46 D5
        xchg    word ptr [bp - 0x2c], ax        ; 87 46 D4
        mov     byte ptr [bp - 0x2a], al        ; 88 46 D6
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        add     word ptr [bp - 0xc], dx         ; 01 56 F4
        mov     dx, word ptr [bp - 0x22]        ; 8B 56 DE
        add     word ptr [bp - 0xe], dx         ; 01 56 F2
        rol     byte ptr [bp - 0x1d], 1         ; D0 46 E3
        jae     L_1B02                          ; 73 C0
        shl     dx, 1                           ; D1 E2
        sub     di, dx                          ; 2B FA
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     word ptr [bp - 0xc], ax         ; 29 46 F4
;   [conditional branch target (if/else)] L_1B4C
L_1B4C:
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
;   [unconditional branch target] L_1B4F
L_1B4F:
        pop     si                              ; 5E
        pop     ds                              ; 1F
        cld                                     ; FC
        lodsw   ax, word ptr [si]               ; AD
        mov     dx, ax                          ; 8B D0
        lodsw   ax, word ptr [si]               ; AD
        mov     cx, ax                          ; 8B C8
        pop     ax                              ; 58
        jmp     L_19F8                          ; E9 9C FE
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1B5C   offset=0x1B5C  size=36 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1B5C
L_1B5C:
        lea     di, [bp - 0xc2]                 ; 8D BE 3E FF
        mov     cx, ss                          ; 8C D1
        mov     es, cx                          ; 8E C1
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        mov     cx, cs                          ; 8C C9
        mov     ds, cx                          ; 8E D9
        mov     si, 0x1890                      ; BE 90 18
        mov     cx, 9                           ; B9 09 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_1B91                          ; 74 15
        mov     al, byte ptr [bp - 0x1f]        ; 8A 46 E1
        cmp     al, 2                           ; 3C 02
        jne     L_1B91                          ; 75 0E
        mov     si, 0x1899                      ; BE 99 18
        mov     cl, 4                           ; B1 04
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        lea     si, [bp - 0x28]                 ; 8D 76 D8
        mov     word ptr es:[di - 2], si        ; 26 89 75 FE
;   [conditional branch target (if/else)] L_1B91
L_1B91:
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     cl, byte ptr cs:[bx + 0x239c]   ; 2E 8A 8F 9C 23
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x237c]   ; 2E 8B B7 7C 23
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, 0x18a5                      ; BE A5 18
        ; constant WM_SIZE
        mov     cl, 5                           ; B1 05
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_1BB6                          ; 74 09
        cmp     al, 2                           ; 3C 02
        je      L_1BB6                          ; 74 05
        mov     si, 0x18a1                      ; BE A1 18
        mov     cl, 7                           ; B1 07
;   [conditional branch target (if/else)] L_1BB6
L_1BB6:
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     word ptr [bp - 4], di           ; 89 7E FC
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (251 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1BBC   offset=0x1BBC  size=251 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1BBC
L_1BBC:
        lea     ax, [bp - 0xbd]                 ; 8D 86 43 FF
        sub     ax, di                          ; 2B C7
        mov     si, 0x18ba                      ; BE BA 18
        mov     cx, 0x15                        ; B9 15 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        add     byte ptr es:[di - 0xf], al      ; 26 00 45 F1
        add     byte ptr es:[di - 5], al        ; 26 00 45 FB
        test    bl, 2                           ; F6 C3 02
        je      L_1BE1                          ; 74 0A
        mov     byte ptr es:[di - 0x14], 0xc3   ; 26 C6 45 EC C3
        mov     byte ptr es:[di - 0xd], 0x4f    ; 26 C6 45 F3 4F
;   [conditional branch target (if/else)] L_1BE1
L_1BE1:
        mov     ah, bl                          ; 8A E3
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     cl, byte ptr cs:[bx + 0x239c]   ; 2E 8A 8F 9C 23
        mov     al, cl                          ; 8A C1
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x237c]   ; 2E 8B B7 7C 23
        mov     bl, ah                          ; 8A DC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, 0x18cf                      ; BE CF 18
        mov     cl, 9                           ; B1 09
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        test    bl, 2                           ; F6 C3 02
        je      L_1C09                          ; 74 05
        mov     byte ptr es:[di - 7], 0x4f      ; 26 C6 45 F9 4F
;   [error/early exit] L_1C09
L_1C09:
        sub     byte ptr es:[di - 2], al        ; 26 28 45 FE
        ret                                     ; C3
        mov     dh, ah                          ; 8A F4
        ; constant WM_CREATE
        mov     dl, 1                           ; B2 01
;   [loop start] L_1C12
L_1C12:
        mov     ah, byte ptr [di]               ; 8A 25
        mov     al, bh                          ; 8A C7
        xor     al, ah                          ; 32 C4
        and     al, dh                          ; 22 C6
        xor     al, ah                          ; 32 C4
        stosb   byte ptr es:[di], al            ; AA
        or      dl, dl                          ; 0A D2
        jne     L_1C22                          ; 75 01
        retf                                    ; CB
;   [loop start (also forward branch)] L_1C22
L_1C22:
        mov     dx, si                          ; 8B D6
        jcxz    L_1C12                          ; E3 EC
;   [loop iteration target] L_1C26
L_1C26:
        mov     ah, byte ptr [di]               ; 8A 25
        mov     al, bh                          ; 8A C7
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        xor     al, ah                          ; 32 C4
        stosb   byte ptr es:[di], al            ; AA
        loop    L_1C26                          ; E2 F3
        jmp     L_1C22                          ; EB ED
;   [unconditional branch target] L_1C35
L_1C35:
        mov     di, word ptr [bp + 0xe]         ; 8B 7E 0E
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     cx, ax                          ; 8B C8
        or      cx, di                          ; 0B CF
        mov     cl, 8                           ; B1 08
        jne     L_1C62                          ; 75 1F
        lds     di, ptr [bp + 0x12]             ; C5 7E 12
        cmp     word ptr [di + 4], 5            ; 83 7D 04 05
        je      L_1C5F                          ; 74 13
        mov     ax, word ptr [di]               ; 8B 05
        mov     dx, word ptr [di + 2]           ; 8B 55 02
        ; constant VK_RETURN
        mov     ch, dh                          ; 8A EE
        or      ch, 0x80                        ; 80 CD 80
        shl     dh, 1                           ; D0 E6
        sar     dh, cl                          ; D2 FE
        jmp     L_1C89                          ; EB 2D
;   [loop start] L_1C5C
L_1C5C:
        jmp     L_1989                          ; E9 2A FD
;   [loop start (also forward branch)] L_1C5F
L_1C5F:
        jmp     L_198B                          ; E9 29 FD
;   [conditional branch target (if/else)] L_1C62
L_1C62:
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        and     bx, 7                           ; 81 E3 07 00
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [di + 0x20]        ; 8B 45 20
        cmp     ax, 3                           ; 3D 03 00
        ja      L_1C5C                          ; 77 E6
        cmp     ax, 1                           ; 3D 01 00
        je      L_1C5F                          ; 74 E4
        mov     ch, byte ptr [di + 0x22]        ; 8A 6D 22
        mov     al, byte ptr [bx + di]          ; 8A 01
        mov     ah, byte ptr [bx + di + 8]      ; 8A 61 08
        mov     dl, byte ptr [bx + di + 0x10]   ; 8A 51 10
        mov     dh, byte ptr [bx + di + 0x18]   ; 8A 71 18
;   [unconditional branch target] L_1C89
L_1C89:
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        mov     byte ptr [bp - 0x20], ch        ; 88 6E E0
        mov     al, 0xff                        ; B0 FF
        cmp     byte ptr [bp - 0x1f], 2         ; 80 7E E1 02
        je      L_1CBF                          ; 74 25
        test    byte ptr [bp - 0x1c], 1         ; F6 46 E4 01
        je      L_1CB4                          ; 74 14
        mov     al, byte ptr [bp - 0x2c]        ; 8A 46 D4
        xor     al, byte ptr [bp - 0x28]        ; 32 46 D8
        xor     ah, byte ptr [bp - 0x27]        ; 32 66 D9
        xor     dl, byte ptr [bp - 0x26]        ; 32 56 DA
        or      al, ah                          ; 0A C4
        or      al, dl                          ; 0A C2
        je      L_1C5F                          ; 74 AD
        jmp     L_1CBF                          ; EB 0B
;   [conditional branch target (if/else)] L_1CB4
L_1CB4:
        mov     al, byte ptr [bp - 0x25]        ; 8A 46 DB
        shl     al, 1                           ; D0 E0
        sar     al, cl                          ; D2 F8
        xor     al, dh                          ; 32 C6
        je      L_1C5F                          ; 74 A0
;   [branch target] L_1CBF
L_1CBF:
        mov     byte ptr [bp - 0x1e], al        ; 88 46 E2
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        lea     di, [bp - 0xc2]                 ; 8D BE 3E FF
        mov     cx, ss                          ; 8C D1
        mov     es, cx                          ; 8E C1
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        mov     cx, cs                          ; 8C C9
        mov     ds, cx                          ; 8E D9
        mov     cx, 8                           ; B9 08 00
        mov     si, 0x1c0e                      ; BE 0E 1C
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     cl, byte ptr cs:[bx + 0x239c]   ; 2E 8A 8F 9C 23
        mov     ax, cx                          ; 8B C1
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x237c]   ; 2E 8B B7 7C 23
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     cx, 0x14                        ; B9 14 00
        mov     si, 0x1c16                      ; BE 16 1C
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        sub     byte ptr es:[di - 5], al        ; 26 28 45 FB
        mov     cx, ax                          ; 8B C8
        mov     si, word ptr cs:[bx + 0x237c]   ; 2E 8B B7 7C 23
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     cx, 0xb                         ; B9 0B 00
        mov     si, 0x1c2a                      ; BE 2A 1C
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        sub     byte ptr es:[di - 3], al        ; 26 28 45 FD
        sub     byte ptr es:[di - 1], al        ; 26 28 45 FF
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        add     si, 4                           ; 83 C6 04
;   [loop start] L_1D1D
L_1D1D:
        dec     ax                              ; 48
        jg      L_1D23                          ; 7F 03
        jmp     L_1984                          ; E9 61 FC
;   [conditional branch target (if/else)] L_1D23
L_1D23:
        push    ax                              ; 50
        lodsw   ax, word ptr [si]               ; AD
        mov     bx, ax                          ; 8B D8
        lodsw   ax, word ptr [si]               ; AD
        push    ds                              ; 1E
        push    si                              ; 56
        mov     dx, ax                          ; 8B D0
        sub     dx, bx                          ; 2B D3
        jne     L_1D33                          ; 75 03
        jmp     L_1DB7                          ; E9 84 00
;   [conditional branch target (if/else)] L_1D33
L_1D33:
        dec     dx                              ; 4A
        mov     di, bx                          ; 8B FB
        shr     di, 1                           ; D1 EF
        shr     di, 1                           ; D1 EF
        shr     di, 1                           ; D1 EF
        add     di, word ptr [bp - 0xe]         ; 03 7E F2
        mov     ds, word ptr [bp - 0xc]         ; 8E 5E F4
        mov     es, word ptr [bp - 0xc]         ; 8E 46 F4
        and     bx, 7                           ; 81 E3 07 00
        mov     ch, byte ptr cs:[bx + 0x2d0]    ; 2E 8A AF D0 02
        add     bx, dx                          ; 03 DA
        mov     dx, bx                          ; 8B D3
        and     bx, 7                           ; 81 E3 07 00
        mov     cl, byte ptr cs:[bx + 0x2d8]    ; 2E 8A 8F D8 02
        shr     dx, 1                           ; D1 EA
        shr     dx, 1                           ; D1 EA
        shr     dx, 1                           ; D1 EA
        jne     L_1D68                          ; 75 05
        and     ch, cl                          ; 22 E9
        xor     cl, cl                          ; 32 C9
        inc     dx                              ; 42
;   [conditional branch target (if/else)] L_1D68
L_1D68:
        dec     dx                              ; 4A
        mov     bl, byte ptr [bp - 0x1e]        ; 8A 5E E2
        and     ch, bl                          ; 22 EB
        and     cl, bl                          ; 22 CB
        ; constant WM_SETTEXT
        mov     ah, ch                          ; 8A E5
        mov     ch, cl                          ; 8A E9
        xor     cl, cl                          ; 32 C9
        mov     si, cx                          ; 8B F1
        mov     bh, byte ptr [bp - 0x29]        ; 8A 7E D7
        mov     cx, dx                          ; 8B CA
        mov     al, 0x21                        ; B0 21
        test    byte ptr [bp - 0x1c], 1         ; F6 46 E4 01
        jne     L_1D8A                          ; 75 05
        lcall   [bp - 8]                        ; FF 5E F8
        jmp     L_1DB7                          ; EB 2D
;   [loop start (also forward branch)] L_1D8A
L_1D8A:
        push    di                              ; 57
        push    si                              ; 56
        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        push    ax                              ; 50
        mov     dx, word ptr [bp - 0x22]        ; 8B 56 DE
        shr     al, 1                           ; D0 E8
        and     ax, 3                           ; 25 03 00
        xchg    si, ax                          ; 96
        mov     bh, byte ptr [bp + si - 0x2c]   ; 8A 7A D4
        mov     si, ax                          ; 8B F0
        pop     ax                              ; 58
        lcall   [bp - 8]                        ; FF 5E F8
        mov     ax, es                          ; 8C C0
        add     ax, word ptr [bp - 0x14]        ; 03 46 EC
        mov     es, ax                          ; 8E C0
        mov     ds, ax                          ; 8E D8
        pop     cx                              ; 59
        pop     bx                              ; 5B
        pop     ax                              ; 58
        pop     si                              ; 5E
        pop     di                              ; 5F
        add     di, word ptr [bp - 0x22]        ; 03 7E DE
        rol     al, 1                           ; D0 C0
        jae     L_1D8A                          ; 73 D3
;   [unconditional branch target] L_1DB7
L_1DB7:
        pop     si                              ; 5E
        pop     ds                              ; 1F
        pop     ax                              ; 58
        jmp     L_1D1D                          ; E9 60 FF
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
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        push    di                              ; 57
        mov     word ptr [bp - 4], sp           ; 89 66 FC
        cmp     word ptr [bp + 0xe], 1          ; 83 7E 0E 01
        je      L_1E19                          ; 74 2C
        cmp     word ptr [bp + 0xe], 2          ; 83 7E 0E 02
        je      L_1E32                          ; 74 3F
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_1DF6
L_1DF6:
        mov     sp, word ptr [bp - 4]           ; 8B 66 FC
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; Description (heuristic):
;   Pure computation / dispatcher (49 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1E06   offset=0x1E06  size=49 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1E06, L_1E84
;-------------------------------------------------------------------------
;   [sub-routine] L_1E06
L_1E06:
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        or      ax, ax                          ; 0B C0
        je      L_1DF6                          ; 74 DE
        ret                                     ; C3
;   [conditional branch target (if/else)] L_1E19
L_1E19:
        xor     si, si                          ; 33 F6
        mov     word ptr [bp - 0xe], si         ; 89 76 F2
        mov     word ptr [bp - 0xc], si         ; 89 76 F4
;   [loop start] L_1E21
L_1E21:
        mov     word ptr [bp - 0x10], si        ; 89 76 F0
        lea     di, [bp - 0xa]                  ; 8D 7E F6
        call    L_1E84                          ; E8 5A 00
        inc     si                              ; 46
        cmp     si, 5                           ; 83 FE 05
        jb      L_1E21                          ; 72 F1
;   [loop start] L_1E30
L_1E30:
        jmp     L_1DF6                          ; EB C4
;   [conditional branch target (if/else)] L_1E32
L_1E32:
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     si, 0xa                         ; BE 0A 00
;   [loop start] L_1E3D
L_1E3D:
        mov     di, 0xa                         ; BF 0A 00
;   [loop start] L_1E40
L_1E40:
        mov     bx, 0xa                         ; BB 0A 00
;   [loop start] L_1E43
L_1E43:
        mov     al, byte ptr cs:[si + 0xad]     ; 2E 8A 84 AD 00
        mov     ah, byte ptr cs:[di + 0xad]     ; 2E 8A A5 AD 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     al, byte ptr cs:[bx + 0xad]     ; 2E 8A 87 AD 00
        xor     ah, ah                          ; 32 E4
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    bx                              ; 53
        call    L_1E06                          ; E8 A8 FF
        pop     bx                              ; 5B
        mov     dx, 2                           ; BA 02 00
        sub     bx, dx                          ; 2B DA
        jne     L_1E43                          ; 75 DD
        sub     di, dx                          ; 2B FA
        jne     L_1E40                          ; 75 D6
        sub     si, dx                          ; 2B F2
        jne     L_1E3D                          ; 75 CF
        mov     word ptr [bp - 0x10], 2         ; C7 46 F0 02 00
        ; constant WM_SIZE
        mov     si, 5                           ; BE 05 00
;   [loop start] L_1E76
L_1E76:
        mov     word ptr [bp - 0xa], si         ; 89 76 F6
        lea     di, [bp - 0xe]                  ; 8D 7E F2
        call    L_1E84                          ; E8 05 00
        dec     si                              ; 4E
        jns     L_1E76                          ; 79 F4
        jmp     L_1E30                          ; EB AC
; Description (heuristic):
;   Pure computation / dispatcher (177 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1E84   offset=0x1E84  size=177 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Near calls (internal): L_1E06, L_202F, L_20F2, L_2576
;-------------------------------------------------------------------------
;   [sub-routine] L_1E84
L_1E84:
        push    si                              ; 56
        mov     si, 0x1c                        ; BE 1C 00
;   [loop start] L_1E88
L_1E88:
        mov     ax, word ptr cs:[si + 0x8f]     ; 2E 8B 84 8F 00
        mov     word ptr es:[di], ax            ; 26 89 05
        mov     ax, word ptr cs:[si + 0x91]     ; 2E 8B 84 91 00
        mov     word ptr es:[di + 2], ax        ; 26 89 45 02
        call    L_1E06                          ; E8 6A FF
        sub     si, 4                           ; 83 EE 04
        jge     L_1E88                          ; 7D E7
        pop     si                              ; 5E
        ret                                     ; C3
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2a                        ; 83 EC 2A
        push    si                              ; 56
        push    di                              ; 57
        cld                                     ; FC
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        or      bx, bx                          ; 0B DB
        jns     L_1EBD                          ; 79 03
        jmp     L_20DF                          ; E9 22 02
;   [conditional branch target (if/else)] L_1EBD
L_1EBD:
        lds     si, ptr [bp + 0xe]              ; C5 76 0E
        dec     bx                              ; 4B
        cmp     bx, 2                           ; 83 FB 02
        jg      L_1EDD                          ; 7F 17
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_1ED5                          ; 74 05
        jmp     word ptr cs:[bx + 0x2161]       ; 2E FF A7 61 21
;   [conditional branch target (if/else)] L_1ED5
L_1ED5:
        mov     ax, word ptr cs:[bx + 0x2167]   ; 2E 8B 87 67 21
        jmp     L_20E5                          ; E9 08 02
;   [conditional branch target (if/else)] L_1EDD
L_1EDD:
        jmp     L_20E3                          ; E9 03 02
        mov     cx, word ptr [si]               ; 8B 0C
        cmp     cx, 5                           ; 83 F9 05
        je      L_1EF5                          ; 74 0E
        cmp     word ptr [si + 2], 2            ; 83 7C 02 02
        jb      L_1EF0                          ; 72 03
;   [loop start] L_1EED
L_1EED:
        mov     cx, 0                           ; B9 00 00
;   [conditional branch target (if/else)] L_1EF0
L_1EF0:
        cmp     cx, 5                           ; 83 F9 05
        jg      L_1EED                          ; 7F F8
;   [conditional branch target (if/else)] L_1EF5
L_1EF5:
        lea     si, [si + 6]                    ; 8D 74 06
        call    L_20F2                          ; E8 F7 01
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, cx                          ; 8B C1
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_20DF                          ; E9 D7 01
        mov     di, ss                          ; 8C D7
        mov     es, di                          ; 8E C7
        lea     di, [bp - 0x2c]                 ; 8D 7E D4
        mov     bx, word ptr [si]               ; 8B 1C
        cmp     bx, 3                           ; 83 FB 03
        jle     L_1F19                          ; 7E 03
        mov     bx, 0                           ; BB 00 00
;   [conditional branch target (if/else)] L_1F19
L_1F19:
        add     bx, bx                          ; 03 DB
        jmp     word ptr cs:[bx + 0x2121]       ; 2E FF A7 21 21
        lea     di, [di + 0x20]                 ; 8D 7D 20
        ; constant WM_CREATE
        mov     bx, 1                           ; BB 01 00
        jmp     L_204A                          ; E9 21 01
;   [loop start] L_1F29
L_1F29:
        lea     si, [si + 2]                    ; 8D 74 02
        xor     cx, cx                          ; 33 C9
        mov     cl, byte ptr [si + 2]           ; 8A 4C 02
        push    cx                              ; 51
        mov     cl, byte ptr [si + 1]           ; 8A 4C 01
        push    cx                              ; 51
        mov     cl, byte ptr [si]               ; 8A 0C
        call    L_20F2                          ; E8 B7 01
        mov     word ptr [bp - 8], bx           ; 89 5E F8
        lea     di, [bp - 0x2c]                 ; 8D 7E D4
        mov     si, ss                          ; 8C D6
        mov     es, si                          ; 8E C6
        xor     si, si                          ; 33 F6
        mov     dx, cx                          ; 8B D1
        call    L_2576                          ; E8 2A 06
        pop     dx                              ; 5A
        call    L_2576                          ; E8 26 06
        pop     dx                              ; 5A
        call    L_2576                          ; E8 22 06
        or      si, si                          ; 0B F6
        je      L_1F7B                          ; 74 23
        cmp     si, 0x15                        ; 83 FE 15
        je      L_1F67                          ; 74 0A
        cmp     si, 0x2a                        ; 83 FE 2A
        je      L_1F67                          ; 74 05
        cmp     si, 0x3f                        ; 83 FE 3F
        jne     L_1F7B                          ; 75 14
;   [conditional branch target (if/else)] L_1F67
L_1F67:
        add     si, si                          ; 03 F6
        and     si, 7                           ; 81 E6 07 00
        mov     ax, word ptr cs:[si + 0x1fa1]   ; 2E 8B 84 A1 1F
        mov     cx, 0x18                        ; B9 18 00
        sub     di, cx                          ; 2B F9
        shr     cx, 1                           ; D1 E9
        rep stosw word ptr es:[di], ax          ; F3 AB
;   [conditional branch target (if/else)] L_1F7B
L_1F7B:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        ; constant WM_MOVE
        mov     si, 3                           ; BE 03 00
        div     si                              ; F7 F6
        mov     dx, ax                          ; 8B D0
        xor     si, si                          ; 33 F6
        call    L_2576                          ; E8 EB 05
        or      si, si                          ; 0B F6
        je      L_1F9D                          ; 74 0E
        add     si, si                          ; 03 F6
        mov     ax, word ptr cs:[si + 0x1fa1]   ; 2E 8B 84 A1 1F
        sub     di, 8                           ; 83 EF 08
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_1F9D
L_1F9D:
        mov     bx, 0                           ; BB 00 00
        jmp     L_204A                          ; E9 A7 00
        mov     byte ptr [bp + si], ah          ; 88 22
        stosb   byte ptr es:[di], al            ; AA
        push    bp                              ; 55
        fnsave  dword ptr [bx - 0x3b]           ; DD 77 C5
        je      L_1FAE                          ; 74 02
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        dec     dx                              ; 4A
        mov     bx, word ptr [si + 0xe]         ; 8B 5C 0E
        ; constant WM_MOVE
        L_1FAE:
        mov     ah, 3                           ; B4 03
        cmp     byte ptr [si + 8], 3            ; 80 7C 08 03
        lds     si, ptr [si + 0xa]              ; C5 74 0A
        je      L_1FC0                          ; 74 02
        xor     bx, bx                          ; 33 DB
;   [loop start (also forward branch)] L_1FC0
L_1FC0:
        mov     word ptr [bp - 4], si           ; 89 76 FC
        mov     cx, 8                           ; B9 08 00
;   [loop iteration target] L_1FC6
L_1FC6:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     si, dx                          ; 03 F2
        loop    L_1FC6                          ; E2 FB
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        add     si, bx                          ; 03 F3
        sub     ah, 1                           ; 80 EC 01
        ja      L_1FC0                          ; 77 EB
        jb      L_1FEC                          ; 72 15
        or      bx, bx                          ; 0B DB
        je      L_1FC0                          ; 74 E5
        mov     cl, 8                           ; B1 08
;   [loop iteration target] L_1FDD
L_1FDD:
        mov     al, byte ptr es:[di - 8]        ; 26 8A 45 F8
        and     al, byte ptr es:[di - 0x10]     ; 26 22 45 F0
        and     al, byte ptr es:[di - 0x18]     ; 26 22 45 E8
        stosb   byte ptr es:[di], al            ; AA
        loop    L_1FDD                          ; E2 F1
;   [conditional branch target (if/else)] L_1FEC
L_1FEC:
        ; constant WM_MOVE
        mov     bx, 3                           ; BB 03 00
        jmp     L_204A                          ; EB 59
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        cmp     cx, 5                           ; 83 F9 05
        jle     L_1FFC                          ; 7E 03
        jmp     L_1F29                          ; E9 2D FF
;   [conditional branch target (if/else)] L_1FFC
L_1FFC:
        lea     si, [si + 8]                    ; 8D 74 08
        call    L_20F2                          ; E8 F0 00
        push    dx                              ; 52
        lea     si, [si - 6]                    ; 8D 74 FA
        call    L_20F2                          ; E8 E9 00
        pop     ax                              ; 58
        mov     dl, ah                          ; 8A D4
        mov     bx, cx                          ; 8B D9
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        lea     bx, [bx + 0x2131]               ; 8D 9F 31 21
        call    L_202F                          ; E8 14 00
        call    L_202F                          ; E8 11 00
        call    L_202F                          ; E8 0E 00
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        ror     dh, cl                          ; D2 CE
        ror     dl, cl                          ; D2 CA
        call    L_202F                          ; E8 05 00
        mov     bx, 2                           ; BB 02 00
        jmp     L_204A                          ; EB 1B
; Description (heuristic):
;   Pure computation / dispatcher (90 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_202F   offset=0x202F  size=90 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=5)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_202F
L_202F:
        mov     si, bx                          ; 8B F3
        mov     cx, 8                           ; B9 08 00
        ror     dh, 1                           ; D0 CE
        ror     dl, 1                           ; D0 CA
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        cwde                                    ; 98
        xor     al, dl                          ; 32 C2
        js      L_2042                          ; 78 03
        mov     si, 0x2129                      ; BE 29 21
;   [loop iteration target] L_2042
L_2042:
        lodsb   al, byte ptr cs:[si]            ; 2E AC
        xor     al, ah                          ; 32 C4
        stosb   byte ptr es:[di], al            ; AA
        loop    L_2042                          ; E2 F9
        ret                                     ; C3
;   [unconditional branch target] L_204A
L_204A:
        lea     si, [di - 0x20]                 ; 8D 75 E0
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        mov     dx, 7                           ; BA 07 00
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        and     cl, dl                          ; 22 CA
        mov     word ptr es:[di + 0x20], bx     ; 26 89 5D 20
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ah, 4                           ; B4 04
;   [loop start] L_2061
L_2061:
        mov     ch, 8                           ; B5 08
;   [loop start] L_2063
L_2063:
        lodsb   al, byte ptr ss:[si]            ; 36 AC
        ror     al, cl                          ; D2 C8
        and     bx, dx                          ; 23 DA
        mov     byte ptr es:[bx + di], al       ; 26 88 01
        inc     bx                              ; 43
        dec     ch                              ; FE CD
        jne     L_2063                          ; 75 F2
        add     di, 8                           ; 83 C7 08
        dec     ah                              ; FE CC
        jne     L_2061                          ; 75 E9
        lea     si, [si - 0x20]                 ; 8D 74 E0
        mov     ax, ss                          ; 8C D0
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        xor     bx, bx                          ; 33 DB
        xor     dx, dx                          ; 33 D2
        xor     di, di                          ; 33 FF
        mov     cx, 0x4008                      ; B9 08 40
;   [loop start] L_2089
L_2089:
        xor     ax, ax                          ; 33 C0
        mov     al, byte ptr [si + 0x10]        ; 8A 44 10
        add     bx, ax                          ; 03 D8
        mov     al, byte ptr [si + 8]           ; 8A 44 08
        add     dx, ax                          ; 03 D0
        lodsb   al, byte ptr [si]               ; AC
        add     di, ax                          ; 03 F8
        mov     ah, 0xbf                        ; B4 BF
        cmp     al, byte ptr [si + 7]           ; 3A 44 07
        jne     L_20A6                          ; 75 07
        cmp     al, byte ptr [si + 0xf]         ; 3A 44 0F
        jne     L_20A6                          ; 75 02
        not     ah                              ; F6 D4
;   [conditional branch target (if/else)] L_20A6
L_20A6:
        and     ch, ah                          ; 22 EC
        dec     cl                              ; FE C9
        jne     L_2089                          ; 75 DD
        mov     ax, 0x7f8                       ; B8 F8 07
        or      bx, bx                          ; 0B DB
        je      L_20B7                          ; 74 04
        cmp     bx, ax                          ; 3B D8
        jne     L_20DA                          ; 75 23
;   [conditional branch target (if/else)] L_20B7
L_20B7:
        or      dx, dx                          ; 0B D2
        je      L_20BF                          ; 74 04
        cmp     dx, ax                          ; 3B D0
        jne     L_20DA                          ; 75 1B
;   [conditional branch target (if/else)] L_20BF
L_20BF:
        or      di, di                          ; 0B FF
        je      L_20C7                          ; 74 04
        cmp     di, ax                          ; 3B F8
        jne     L_20DA                          ; 75 13
;   [conditional branch target (if/else)] L_20C7
L_20C7:
        and     di, 0x100                       ; 81 E7 00 01
        or      cx, di                          ; 0B CF
        and     dh, 2                           ; 80 E6 02
        or      ch, dh                          ; 0A EE
        and     bh, 4                           ; 80 E7 04
        or      ch, bh                          ; 0A EF
        or      ch, 0x80                        ; 80 CD 80
;   [conditional branch target (if/else)] L_20DA
L_20DA:
        pop     di                              ; 5F
        mov     byte ptr es:[di + 2], ch        ; 26 88 6D 02
;   [unconditional branch target] L_20DF
L_20DF:
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_20E5                          ; EB 02
;   [unconditional branch target] L_20E3
L_20E3:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_20E5
L_20E5:
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
; sub_20F2   offset=0x20F2  size=2 instr  segment=seg1.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_20F2
L_20F2:
        mov     ax, word ptr [si]               ; 8B 04
        mov     dl, byte ptr [si + 2]           ; 8A 54 02
; Description (heuristic):
;   Pure computation / dispatcher (156 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_20F7   offset=0x20F7  size=156 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=3)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Near calls (internal): L_1282, L_20F7, L_224A
;-------------------------------------------------------------------------
;   [sub-routine] L_20F7
L_20F7:
        push    cx                              ; 51
        xor     dh, dh                          ; 32 F6
        xor     bx, bx                          ; 33 DB
        xor     cx, cx                          ; 33 C9
        xchg    cl, ah                          ; 86 E1
        add     bx, ax                          ; 03 D8
        add     bx, dx                          ; 03 DA
        add     bx, cx                          ; 03 D9
        mov     ah, cl                          ; 8A E1
        mov     cl, 8                           ; B1 08
        sar     dl, cl                          ; D2 FA
        rcl     dh, 1                           ; D0 D6
        sar     ah, cl                          ; D2 FC
        rcl     dh, 1                           ; D0 D6
        sar     al, cl                          ; D2 F8
        rcl     dh, 1                           ; D0 D6
        cmp     bx, 0x17e                       ; 81 FB 7E 01
        jl      L_211F                          ; 7C 03
        or      dh, 0x40                        ; 80 CE 40
;   [error/early exit] L_211F
L_211F:
        pop     cx                              ; 59
        ret                                     ; C3
        sub     word ptr [bx], bx               ; 29 1F
        and     byte ptr [bx], bl               ; 20 1F
        int1                                    ; F1
        pop     ds                              ; 1F
        test    ax, 0x1f                        ; A9 1F 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     bh, bh                          ; 00 FF
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
        fstp    xword ptr [di - 0x1f82]         ; DB BD 7E E0
        push    ds                              ; 1E
        or      byte ptr [bx], bl               ; 08 1F
        jcxz    L_2187                          ; E3 20
        push    es                              ; 06
        add     byte ptr [bp + di], ah          ; 00 23
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [si - 0x6f28], cl      ; 00 8C D8 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        or      bx, word ptr [bp + 8]           ; 0B 5E 08
        je      L_2191                          ; 74 0B
        call    L_20F7                          ; E8 6E FF
        les     di, ptr [bp + 6]                ; C4 7E 06
        L_2187:
        cld                                     ; FC
        stosw   word ptr es:[di], ax            ; AB
        mov     word ptr es:[di], dx            ; 26 89 15
;   [conditional branch target (if/else)] L_2191
L_2191:
        les     di, ptr [bp + 0xe]              ; C4 7E 0E
        cmp     byte ptr es:[di + 8], 3         ; 26 80 7D 08 03
        je      L_21A3                          ; 74 08
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        shl     al, 1                           ; D0 E0
        cwde                                    ; 98
        cdq                                     ; 99
        mov     ax, dx                          ; 8B C2
;   [conditional branch target (if/else)] L_21A3
L_21A3:
        xor     dh, dh                          ; 32 F6
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
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        cmp     word ptr [bp + 0xe], 4          ; 83 7E 0E 04
        je      L_21CB                          ; 74 06
        cmp     word ptr [bp + 0xe], 5          ; 83 7E 0E 05
        jne     L_21E9                          ; 75 1E
;   [conditional branch target (if/else)] L_21CB
L_21CB:
        lds     di, ptr [bp + 0xa]              ; C5 7E 0A
        mov     si, word ptr [di]               ; 8B 35
        cmp     si, 7                           ; 83 FE 07
        ja      L_21E9                          ; 77 14
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        add     si, 0x8f                        ; 81 C6 8F 00
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        les     di, ptr [bp + 6]                ; C4 7E 06
        cld                                     ; FC
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
;   [conditional branch target (if/else)] L_21E9
L_21E9:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        mov     ds, word ptr cs:[0x23c5]        ; 2E 8E 1E C5 23
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
        call    L_224A                          ; E8 25 00
        jae     L_2242                          ; 73 1B
        je      L_2242                          ; 74 19
        xor     cx, cx                          ; 33 C9
        xchg    byte ptr [0x490], cl            ; 86 0E 90 04
        push    cx                              ; 51
        mov     byte ptr [0x47e], 0x40          ; C6 06 7E 04 40
        sti                                     ; FB
        call    L_1282                          ; E8 49 F0
        mov     ds, word ptr cs:[0x23c5]        ; 2E 8E 1E C5 23
        pop     ax                              ; 58
        mov     byte ptr [0x490], al            ; A2 90 04
;   [conditional branch target (if/else)] L_2242
L_2242:
        jmp     L_2245                          ; EB 01
; Description (heuristic):
;   Internal helper (4 instructions).

;-------------------------------------------------------------------------
; sub_2244   offset=0x2244  size=4 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_2244
;-------------------------------------------------------------------------
;   [sub-routine] L_2244
L_2244:
        iret                                    ; CF
;   [unconditional branch target] L_2245
L_2245:
        push    cs                              ; 0E
        call    L_2244                          ; E8 FB FF
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (89 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_224A   offset=0x224A  size=89 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1215, L_1282
;-------------------------------------------------------------------------
;   [sub-routine] L_224A
L_224A:
        mov     ds, word ptr cs:[0x23c5]        ; 2E 8E 1E C5 23
        test    byte ptr [0x47e], cl            ; 84 0E 7E 04
        jne     L_2281                          ; 75 2C
        xor     cx, cx                          ; 33 C9
        cmp     byte ptr [0x47f], cl            ; 38 0E 7F 04
        je      L_227E                          ; 74 21
        cmp     ax, word ptr [0x484]            ; 3B 06 84 04
        jg      L_227E                          ; 7F 1B
        add     ax, word ptr [0x38]             ; 03 06 38 00
        cmp     ax, word ptr [0x480]            ; 3B 06 80 04
        jl      L_227E                          ; 7C 11
        cmp     bx, word ptr [0x486]            ; 3B 1E 86 04
        jg      L_227E                          ; 7F 0B
        add     bx, 0x1f                        ; 81 C3 1F 00
        cmp     bx, word ptr [0x482]            ; 3B 1E 82 04
        jl      L_227E                          ; 7C 01
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_227E
L_227E:
        or      cx, cx                          ; 0B C9
        stc                                     ; F9
;   [error/early exit] L_2281
L_2281:
        ret                                     ; C3
        mov     ds, word ptr cs:[0x23c5]        ; 2E 8E 1E C5 23
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
        jcxz    L_232D                          ; E3 65
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
        call    L_1282                          ; E8 9B EF
        cld                                     ; FC
        mov     es, word ptr cs:[0x23c5]        ; 2E 8E 06 C5 23
        lds     si, ptr [bp + 6]                ; C5 76 06
        mov     ax, ds                          ; 8C D8
        or      ax, si                          ; 0B C6
        je      L_2320                          ; 74 2A
        mov     di, 0                           ; BF 00 00
        mov     cx, 6                           ; B9 06 00
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        call    L_1215                          ; E8 14 EF
        mov     ds, word ptr cs:[0x23c5]        ; 2E 8E 1E C5 23
        cli                                     ; FA
        mov     ax, word ptr [0]                ; A1 00 00
        mov     word ptr [0x48c], ax            ; A3 8C 04
        sub     word ptr [0x488], ax            ; 29 06 88 04
        mov     ax, word ptr [2]                ; A1 02 00
        mov     word ptr [0x48e], ax            ; A3 8E 04
        sub     word ptr [0x48a], ax            ; 29 06 8A 04
        mov     byte ptr [0x47e], 0x40          ; C6 06 7E 04 40
;   [conditional branch target (if/else)] L_2320
L_2320:
        jmp     L_2323                          ; EB 01
; Description (heuristic):
;   Pure computation / dispatcher (161 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2322   offset=0x2322  size=161 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0229, L_02A8, L_2322
;-------------------------------------------------------------------------
;   [sub-routine] L_2322
L_2322:
        iret                                    ; CF
;   [unconditional branch target] L_2323
L_2323:
        push    cs                              ; 0E
        call    L_2322                          ; E8 FB FF
        mov     byte ptr es:[0x490], 1          ; 26 C6 06 90 04 01
;   [conditional branch target (if/else)] L_232D
L_232D:
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
        cmp     ah, byte ptr [bp + di]          ; 3A 23
        jae     L_23A3                          ; 73 23
        cmp     ax, 0x4223                      ; 3D 23 42
        and     ax, word ptr [di + 0x23]        ; 23 45 23
        dec     di                              ; 4F
        and     dx, word ptr [si + 0x23]        ; 23 54 23
        pop     di                              ; 5F
        and     bx, word ptr [si + 0x23]        ; 23 5C 23
        push    di                              ; 57
        and     cx, word ptr [si + 0x23]        ; 23 4C 23
        and     di, word ptr fs:[bp + di + 0x23] ; 64 23 7B 23
        imul    sp, word ptr [bp + di], 0x2370  ; 69 23 70 23
        js      L_23BF                          ; 78 23
        add     al, byte ptr [si]               ; 02 04
        add     al, 2                           ; 04 02
        push    es                              ; 06
        add     al, 2                           ; 04 02
;   [conditional branch target (if/else)] L_23A3
L_23A3:
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
;   [conditional branch target (if/else)] L_23BF
L_23BF:
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
        jne     L_23ED                          ; 75 0E
        lea     si, [0x191]                     ; 8D 36 91 01
        mov     cx, 0x20                        ; B9 20 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        call    L_0229                          ; E8 3E DE
        jmp     L_23F8                          ; EB 0B
;   [conditional branch target (if/else)] L_23ED
L_23ED:
        lea     si, [0x1b9]                     ; 8D 36 B9 01
        mov     cx, 0x68                        ; B9 68 00
        mov     ax, cx                          ; 8B C1
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
;   [unconditional branch target] L_23F8
L_23F8:
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
        call    L_02A8                          ; E8 91 DE
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
;   [loop start] L_2450
L_2450:
        jmp     L_2453                          ; EB 01
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2452   offset=0x2452  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1282, L_224A, L_2452
;-------------------------------------------------------------------------
;   [sub-routine] L_2452
L_2452:
        iret                                    ; CF
;   [unconditional branch target] L_2453
L_2453:
        push    cs                              ; 0E
        call    L_2452                          ; E8 FB FF
        jcxz    L_24B9                          ; E3 60
        mov     word ptr [0x16], ax             ; A3 16 00
        mov     word ptr [0x18], bx             ; 89 1E 18 00
        mov     cl, 0xc0                        ; B1 C0
        call    L_224A                          ; E8 E5 FD
        jae     L_247F                          ; 73 18
        je      L_2486                          ; 74 1D
        or      byte ptr [0x47e], 0x40          ; 80 0E 7E 04 40
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_1282                          ; E8 0F EE
        jmp     L_2476                          ; EB 01
; Description (heuristic):
;   Internal helper (10 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2475   offset=0x2475  size=10 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_126B, L_2475
;-------------------------------------------------------------------------
;   [sub-routine] L_2475
L_2475:
        iret                                    ; CF
;   [unconditional branch target] L_2476
L_2476:
        push    cs                              ; 0E
        call    L_2475                          ; E8 FB FF
        mov     ds, word ptr cs:[0x23c5]        ; 2E 8E 1E C5 23
;   [conditional branch target (if/else)] L_247F
L_247F:
        mov     byte ptr [0x490], 1             ; C6 06 90 04 01
        jmp     L_24B9                          ; EB 33
;   [conditional branch target (if/else)] L_2486
L_2486:
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_126B                          ; E8 E0 ED
        jmp     L_248E                          ; EB 01
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_248D   offset=0x248D  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_248D
;-------------------------------------------------------------------------
;   [sub-routine] L_248D
L_248D:
        iret                                    ; CF
;   [unconditional branch target] L_248E
L_248E:
        push    cs                              ; 0E
        call    L_248D                          ; E8 FB FF
        mov     ds, word ptr cs:[0x23c5]        ; 2E 8E 1E C5 23
        pushf                                   ; 9C
        cli                                     ; FA
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        mov     ax, word ptr [0x488]            ; A1 88 04
        mov     bx, word ptr [0x48a]            ; 8B 1E 8A 04
        cmp     ax, word ptr [0x16]             ; 3B 06 16 00
        jne     L_2450                          ; 75 A8
        cmp     bx, word ptr [0x18]             ; 3B 1E 18 00
        jne     L_2450                          ; 75 A2
        mov     byte ptr [0x490], cl            ; 88 0E 90 04
        jmp     L_24B5                          ; EB 01
; Description (heuristic):
;   Pure computation / dispatcher (33 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_24B4   offset=0x24B4  size=33 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_24B4
;-------------------------------------------------------------------------
;   [sub-routine] L_24B4
L_24B4:
        iret                                    ; CF
;   [unconditional branch target] L_24B5
L_24B5:
        push    cs                              ; 0E
        call    L_24B4                          ; E8 FB FF
;   [branch target] L_24B9
L_24B9:
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
        jcxz    L_253E                          ; E3 63
        mov     al, byte ptr [0x47e]            ; A0 7E 04
        add     al, al                          ; 02 C0
        jb      L_255D                          ; 72 7B
        jns     L_255D                          ; 79 79
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [0x488]            ; A1 88 04
        mov     bx, word ptr [0x48a]            ; 8B 1E 8A 04
;   [loop start] L_24ED
L_24ED:
        jmp     L_24F0                          ; EB 01
; Description (heuristic):
;   Internal helper (14 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_24EF   offset=0x24EF  size=14 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_126B, L_224A, L_24EF
;-------------------------------------------------------------------------
;   [sub-routine] L_24EF
L_24EF:
        iret                                    ; CF
;   [unconditional branch target] L_24F0
L_24F0:
        push    cs                              ; 0E
        call    L_24EF                          ; E8 FB FF
        mov     si, ax                          ; 8B F0
        mov     di, bx                          ; 8B FB
        xor     cx, cx                          ; 33 C9
        call    L_224A                          ; E8 4D FD
        jne     L_2540                          ; 75 41
        mov     word ptr [0x16], si             ; 89 36 16 00
        mov     word ptr [0x18], di             ; 89 3E 18 00
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_126B                          ; E8 5F ED
        jmp     L_250F                          ; EB 01
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_250E   offset=0x250E  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_250E
;-------------------------------------------------------------------------
;   [sub-routine] L_250E
L_250E:
        iret                                    ; CF
;   [unconditional branch target] L_250F
L_250F:
        push    cs                              ; 0E
        call    L_250E                          ; E8 FB FF
        mov     ds, word ptr cs:[0x23c5]        ; 2E 8E 1E C5 23
        mov     byte ptr [0x47e], 0             ; C6 06 7E 04 00
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [0x488]            ; A1 88 04
        mov     bx, word ptr [0x48a]            ; 8B 1E 8A 04
        cmp     ax, word ptr [0x16]             ; 3B 06 16 00
        jne     L_24ED                          ; 75 C1
        cmp     bx, word ptr [0x18]             ; 3B 1E 18 00
        jne     L_24ED                          ; 75 BB
        mov     byte ptr [0x490], 1             ; C6 06 90 04 01
        jmp     L_253A                          ; EB 01
; Description (heuristic):
;   Internal helper (10 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2539   offset=0x2539  size=10 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1282, L_2539
;-------------------------------------------------------------------------
;   [sub-routine] L_2539
L_2539:
        iret                                    ; CF
;   [unconditional branch target] L_253A
L_253A:
        push    cs                              ; 0E
        call    L_2539                          ; E8 FB FF
;   [conditional branch target (if/else)] L_253E
L_253E:
        jmp     L_2562                          ; EB 22
;   [conditional branch target (if/else)] L_2540
L_2540:
        test    byte ptr [0x47e], 0x40          ; F6 06 7E 04 40
        jne     L_255D                          ; 75 16
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_1282                          ; E8 36 ED
        jmp     L_254F                          ; EB 01
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_254E   offset=0x254E  size=19 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: retf
;
; Near calls (internal): L_254E
;-------------------------------------------------------------------------
;   [sub-routine] L_254E
L_254E:
        iret                                    ; CF
;   [unconditional branch target] L_254F
L_254F:
        push    cs                              ; 0E
        call    L_254E                          ; E8 FB FF
        mov     ds, word ptr cs:[0x23c5]        ; 2E 8E 1E C5 23
        mov     byte ptr [0x47e], 0x40          ; C6 06 7E 04 40
;   [conditional branch target (if/else)] L_255D
L_255D:
        mov     byte ptr [0x490], 1             ; C6 06 90 04 01
;   [unconditional branch target] L_2562
L_2562:
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
; sub_2576   offset=0x2576  size=44 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=5)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_2576
L_2576:
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
        je      L_259D                          ; 74 09
        ; constant WM_MOVE
        mov     al, 3                           ; B0 03
        cmp     dl, 0x30                        ; 80 FA 30
        je      L_259D                          ; 74 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_259D
L_259D:
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        or      si, ax                          ; 0B F0
;   [loop start] L_25A3
L_25A3:
        dec     dl                              ; FE CA
        jl      L_25CE                          ; 7C 27
        xor     ax, ax                          ; 33 C0
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        mov     ch, dl                          ; 8A EA
;   [loop iteration target] L_25AD
L_25AD:
        shl     ax, 1                           ; D1 E0
        ; constant WM_SETTEXT
        mov     bl, ch                          ; 8A DD
        and     bl, dh                          ; 22 DE
        add     ah, byte ptr [bx + 0x256e]      ; 02 A7 6E 25
        add     al, byte ptr [bx + 0x2572]      ; 02 87 72 25
        shr     ch, 1                           ; D0 ED
        shr     ch, 1                           ; D0 ED
        loop    L_25AD                          ; E2 EC
        mov     bl, al                          ; 8A D8
        mov     cl, ah                          ; 8A CC
        ; constant GMEM_ZEROINIT
        mov     al, 0x80                        ; B0 80
        shr     al, cl                          ; D2 E8
        or      byte ptr es:[bx + di], al       ; 26 08 01
        jmp     L_25A3                          ; EB D5
;   [error/early exit] L_25CE
L_25CE:
        add     di, 8                           ; 83 C7 08
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (18 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_25D2   offset=0x25D2  size=18 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_25D2
L_25D2:
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_25F0                          ; 73 19
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_25F0                          ; 77 10
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_25EB                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_25EB
L_25EB:
        mov     sp, ax                          ; 8B E0
        clc                                     ; F8
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_25F0
L_25F0:
        mov     ax, word ptr ss:[0xa]           ; 36 A1 0A 00
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
        xor     ax, ax                          ; 33 C0
        mov     dx, 0x8000                      ; BA 00 80
        stc                                     ; F9
        jmp     bx                              ; FF E3

ATTDEB_TEXT ENDS

        END
