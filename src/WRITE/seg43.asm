; AUTO-GENERATED from original WRITE segment 43
; segment_size=1597 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 359 instr
; Dispatcher: tabla de decisiones cmp+jcc (359 instr).
; tags: dispatcher, far
;----------------------------------------------------------------------

L_0000:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        cmp     word ptr [bp + 0xe], -1         ; 83 7E 0E FF
        jne     L_006D                          ; 75 59
        cmp     word ptr [0x95a], 0x7ffe        ; 81 3E 5A 09 FE 7F
        jne     L_0040                          ; 75 24
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        add     ax, word ptr [0x956]            ; 03 06 56 09
        adc     dx, word ptr [0x958]            ; 13 16 58 09
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xe88]            ; A1 88 0E
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        cmp     bx, dx                          ; 3B DA
        jl      L_0040                          ; 7C 0C
        jg      L_003A                          ; 7F 04
        cmp     cx, ax                          ; 3B C8
        jb      L_0040                          ; 72 06
L_003A:
        mov     ax, word ptr [0x962]            ; A1 62 09
        mov     word ptr [0xe8e], ax            ; A3 8E 0E
L_0040:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        add     word ptr [0x10fa], ax           ; 01 06 FA 10
        adc     word ptr [0x10fc], dx           ; 11 16 FC 10
        or      ax, ax                          ; 0B C0
        jne     L_0059                          ; 75 09
        mov     ax, word ptr [0xe0c]            ; A1 0C 0E
        add     word ptr [0xeda], ax            ; 01 06 DA 0E
        jmp     L_005F                          ; EB 06
L_0059:
        mov     word ptr [0xeda], 0             ; C7 06 DA 0E 00 00
L_005F:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        add     word ptr [0x956], ax            ; 01 06 56 09
        adc     word ptr [0x958], dx            ; 11 16 58 09
        jmp     L_009E                          ; EB 31
L_006D:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [0x10fa], ax           ; A3 FA 10
        mov     word ptr [0x10fc], dx           ; 89 16 FC 10
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0xeda], ax            ; A3 DA 0E
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x1136], ax           ; A3 36 11
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        mov     word ptr [0x952], ax            ; A3 52 09
        mov     word ptr [0x954], dx            ; 89 16 54 09
        mov     word ptr [0x962], ax            ; A3 62 09
        mov     word ptr [0x964], dx            ; 89 16 64 09
        mov     word ptr [0x968], ax            ; A3 68 09
        mov     word ptr [0x96a], dx            ; 89 16 6A 09
L_009E:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x1136]               ; F7 2E 36 11
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [0x10fa]           ; A1 FA 10
        mov     dx, word ptr [0x10fc]           ; 8B 16 FC 10
        cmp     word ptr [bx + si + 4], dx      ; 39 50 04
        jg      L_00FA                          ; 7F 41
        jl      L_00C0                          ; 7C 05
        cmp     word ptr [bx + si + 2], ax      ; 39 40 02
        ja      L_00FA                          ; 77 3A
L_00C0:
        mov     word ptr [0xe8e], 0             ; C7 06 8E 0E 00 00
        mov     word ptr [0xe0c], 1             ; C7 06 0C 0E 01 00
        test    byte ptr [bp + 6], 2            ; F6 46 06 02
        jne     L_00D5                          ; 75 03
        jmp     L_02FE                          ; E9 29 02
L_00D5:
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A F3 00 00 00 [FIXUP]
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        mov     ax, 0xbf8                       ; B8 F8 0B
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FA 01 00 00 [FIXUP]
        jmp     L_02FE                          ; E9 04 02
L_00FA:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        cmp     dx, word ptr [0x964]            ; 3B 16 64 09
        jg      L_011B                          ; 7F 17
        jl      L_010C                          ; 7C 06
        cmp     ax, word ptr [0x962]            ; 3B 06 62 09
        jae     L_011B                          ; 73 0F
L_010C:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        sub     word ptr [0x962], ax            ; 29 06 62 09
        sbb     word ptr [0x964], dx            ; 19 16 64 09
        jmp     L_021B                          ; E9 00 01
L_011B:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x1136]               ; F7 2E 36 11
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0xf92]            ; 8B 36 92 0F
        mov     si, word ptr [si]               ; 8B 34
        mov     bx, word ptr [bx + si]          ; 8B 18
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp + 0xe], -1         ; 83 7E 0E FF
        jne     L_013D                          ; 75 06
        inc     word ptr [0x966]                ; FF 06 66 09
        jmp     L_0150                          ; EB 13
L_013D:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0x10fc]               ; FF 36 FC 10
        push    word ptr [0x10fa]               ; FF 36 FA 10
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03C5                          ; E8 78 02
        mov     word ptr [0x966], ax            ; A3 66 09
L_0150:
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0x966]                ; F7 2E 66 09
        mov     si, ax                          ; 8B F0
        add     si, word ptr [bp - 6]           ; 03 76 FA
        add     si, 4                           ; 83 C6 04
        mov     word ptr [bp - 4], si           ; 89 76 FC
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        mov     dx, word ptr [si + 0xe]         ; 8B 54 0E
        sub     ax, word ptr [0x10fa]           ; 2B 06 FA 10
        sbb     dx, word ptr [0x10fc]           ; 1B 16 FC 10
        mov     word ptr [0x962], ax            ; A3 62 09
        mov     word ptr [0x964], dx            ; 89 16 64 09
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        mov     word ptr [0x952], ax            ; A3 52 09
        mov     word ptr [0x954], dx            ; 89 16 54 09
        mov     word ptr [0x968], ax            ; A3 68 09
        mov     word ptr [0x96a], dx            ; 89 16 6A 09
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     dx, word ptr [si + 8]           ; 8B 54 08
        sub     ax, word ptr [si]               ; 2B 04
        sbb     dx, word ptr [si + 2]           ; 1B 54 02
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        mov     word ptr [0x956], ax            ; A3 56 09
        mov     word ptr [0x958], dx            ; 89 16 58 09
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [0x95a], ax            ; A3 5A 09
        cmp     ax, 0x7ffe                      ; 3D FE 7F
        jne     L_0212                          ; 75 60
        mov     ax, word ptr [0x956]            ; A1 56 09
        add     ax, 0xe9c                       ; 05 9C 0E
        mov     word ptr [0x1022], ax           ; A3 22 10
        mov     si, word ptr [0xe88]            ; 8B 36 88 0E
        sub     si, word ptr [0x956]            ; 2B 36 56 09
        or      si, si                          ; 0B F6
        jge     L_01CB                          ; 7D 04
        sub     ax, ax                          ; 2B C0
        jmp     L_01CD                          ; EB 02
L_01CB:
        mov     ax, si                          ; 8B C6
L_01CD:
        mov     word ptr [0xe8e], ax            ; A3 8E 0E
        cdq                                     ; 99
        mov     word ptr [0x952], ax            ; A3 52 09
        mov     word ptr [0x954], dx            ; 89 16 54 09
        mov     word ptr [0x968], ax            ; A3 68 09
        mov     word ptr [0x96a], dx            ; 89 16 6A 09
        test    byte ptr [bp + 6], 2            ; F6 46 06 02
        jne     L_01E8                          ; 75 03
        jmp     L_02FE                          ; E9 16 01
L_01E8:
        cdq                                     ; 99
        mov     word ptr [0x96a], dx            ; 89 16 6A 09
        mov     ax, 0x102c                      ; B8 2C 10
        push    ax                              ; 50
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 0B 02 00 00 [FIXUP]
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        mov     ax, 0xbf8                       ; B8 F8 0B
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02F8                          ; E9 E6 00
L_0212:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [0x95e], ax            ; A3 5E 09
L_021B:
        test    byte ptr [bp + 6], 1            ; F6 46 06 01
        je      L_0244                          ; 74 23
        push    word ptr [0x95a]                ; FF 36 5A 09
        push    word ptr [0x958]                ; FF 36 58 09
        push    word ptr [0x956]                ; FF 36 56 09
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    far _entry_50                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1022], ax           ; A3 22 10
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        mov     word ptr [0x952], ax            ; A3 52 09
        mov     word ptr [0x954], dx            ; 89 16 54 09
L_0244:
        test    byte ptr [bp + 6], 2            ; F6 46 06 02
        je      L_02A3                          ; 74 59
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        cmp     dx, word ptr [0x96a]            ; 3B 16 6A 09
        jg      L_026A                          ; 7F 16
        jl      L_025C                          ; 7C 06
        cmp     ax, word ptr [0x968]            ; 3B 06 68 09
        jae     L_026A                          ; 73 0E
L_025C:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        sub     word ptr [0x968], ax            ; 29 06 68 09
        sbb     word ptr [0x96a], dx            ; 19 16 6A 09
        jmp     L_02A3                          ; EB 39
L_026A:
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        push    word ptr [0x95a]                ; FF 36 5A 09
        push    word ptr [0x958]                ; FF 36 58 09
        push    word ptr [0x956]                ; FF 36 56 09
        push    word ptr [0x95e]                ; FF 36 5E 09
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_044E                          ; E8 C7 01
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        mov     word ptr [0x968], ax            ; A3 68 09
        mov     word ptr [0x96a], dx            ; 89 16 6A 09
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        mov     ax, 0xbf8                       ; B8 F8 0B
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A AA 04 00 00 [FIXUP]
L_02A3:
        cmp     word ptr [0x964], 0             ; 83 3E 64 09 00
        jl      L_02B9                          ; 7C 0F
        jg      L_02B4                          ; 7F 08
        cmp     word ptr [0x962], 0x7fff        ; 81 3E 62 09 FF 7F
        jb      L_02B9                          ; 72 05
L_02B4:
        mov     ax, 0x7fff                      ; B8 FF 7F
        jmp     L_02BC                          ; EB 03
L_02B9:
        mov     ax, word ptr [0x962]            ; A1 62 09
L_02BC:
        mov     word ptr [0xe8e], ax            ; A3 8E 0E
        test    byte ptr [bp + 6], 1            ; F6 46 06 01
        je      L_02DA                          ; 74 15
        cdq                                     ; 99
        cmp     dx, word ptr [0x954]            ; 3B 16 54 09
        jl      L_02DA                          ; 7C 0E
        jg      L_02D4                          ; 7F 06
        cmp     ax, word ptr [0x952]            ; 3B 06 52 09
        jbe     L_02DA                          ; 76 06
L_02D4:
        mov     ax, word ptr [0x952]            ; A1 52 09
        mov     word ptr [0xe8e], ax            ; A3 8E 0E
L_02DA:
        test    byte ptr [bp + 6], 2            ; F6 46 06 02
        je      L_02F8                          ; 74 18
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        cmp     dx, word ptr [0x96a]            ; 3B 16 6A 09
        jl      L_02F8                          ; 7C 0E
        jg      L_02F2                          ; 7F 06
        cmp     ax, word ptr [0x968]            ; 3B 06 68 09
        jbe     L_02F8                          ; 76 06
L_02F2:
        mov     ax, word ptr [0x968]            ; A1 68 09
        mov     word ptr [0xe8e], ax            ; A3 8E 0E
L_02F8:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        mov     word ptr [0xe0c], ax            ; A3 0C 0E
L_02FE:
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
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        jmp     L_039B                          ; EB 74
L_0327:
        mov     ax, word ptr [0x10fa]           ; A1 FA 10
        mov     dx, word ptr [0x10fc]           ; 8B 16 FC 10
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jl      L_03B2                          ; 7C 7F
        jg      L_033A                          ; 7F 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jbe     L_03B2                          ; 76 78
L_033A:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_034E                          ; 7E 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_034E:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        sub     cx, word ptr [0x10fa]           ; 2B 0E FA 10
        sbb     bx, word ptr [0x10fc]           ; 1B 1E FC 10
        cmp     bx, dx                          ; 3B DA
        jg      L_0374                          ; 7F 10
        jl      L_036A                          ; 7C 04
        cmp     cx, ax                          ; 3B C8
        jae     L_0374                          ; 73 0A
L_036A:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [0x10fa]           ; 2B 06 FA 10
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0374:
        push    word ptr [0x1022]               ; FF 36 22 10
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_45                   ; 9A 63 05 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     word ptr [bp + 0x12], ax        ; 01 46 12
        add     word ptr [bp - 4], ax           ; 01 46 FC
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_03B2                          ; 7C 1E
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
L_039B:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 59 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_03B2                          ; 7D 03
        jmp     L_0327                          ; E9 75 FF
L_03B2:
        mov     bx, word ptr [bp + 0x14]        ; 8B 5E 14
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx], ax               ; 89 07
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03C5 -- offset 0x03C5 -- 58 instr
; Dispatcher: tabla de decisiones cmp+jcc (58 instr).
; tags: dispatcher, far
; callers: sub_0000
;----------------------------------------------------------------------
L_03C5:
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
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, bx                          ; 8B C3
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_03E9:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        inc     ax                              ; 40
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jge     L_0435                          ; 7D 43
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     dx, word ptr [bx + si + 2]      ; 8B 50 02
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        cmp     dx, word ptr [bp + 8]           ; 3B 56 08
        jg      L_043A                          ; 7F 22
        jl      L_041F                          ; 7C 05
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        ja      L_043A                          ; 77 1B
L_041F:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jne     L_03E9                          ; 75 B9
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_03E9                          ; 75 B4
L_0435:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_0442                          ; EB 08
L_043A:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_03E9                          ; EB A7
L_0442:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_044E -- offset 0x044E -- 156 instr
; Dispatcher: tabla de decisiones cmp+jcc (156 instr).
; tags: dispatcher, far
; callers: sub_0000
; calls (intra): sub_05E1
;----------------------------------------------------------------------
L_044E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        push    si                              ; 56
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xc]             ; F7 6E 0C
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        sbb     dx, word ptr [bp + 0xa]         ; 1B 56 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_04B1                          ; 75 26
        mov     ax, word ptr [0x2be]            ; A1 BE 02
        mov     dx, word ptr [0x2c0]            ; 8B 16 C0 02
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jl      L_04B1                          ; 7C 1A
        jg      L_049E                          ; 7F 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jb      L_04B1                          ; 72 13
L_049E:
        mov     ax, 0x102c                      ; B8 2C 10
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A C9 04 00 00 [FIXUP]
        jmp     L_059A                          ; E9 E9 00
L_04B1:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        test    byte ptr [bx + 4], 1            ; F6 47 04 01
        jne     L_04BD                          ; 75 03
        jmp     L_057B                          ; E9 BE 00
L_04BD:
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 87 05 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_04E7                          ; 75 11
        mov     ax, 0x12b8                      ; B8 B8 12
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05E1                          ; E8 FC 00
        jmp     L_0504                          ; EB 1D
L_04E7:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     bx, word ptr [bx + 0x1a]        ; 8B 5F 1A
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_266                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        add     ax, cx                          ; 03 C1
L_0504:
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_212                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        jne     L_057B                          ; 75 60
        mov     si, ax                          ; 8B F0
        add     si, 4                           ; 83 C6 04
L_0520:
        mov     ax, word ptr [si]               ; 8B 04
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jl      L_0536                          ; 7C 0C
        jg      L_0531                          ; 7F 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jb      L_0536                          ; 72 05
L_0531:
        add     si, 6                           ; 83 C6 06
        jmp     L_0520                          ; EB EA
L_0536:
        mov     ax, word ptr [si]               ; 8B 04
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0567                          ; 74 1B
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
L_0567:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        sbb     dx, word ptr [bp + 0xa]         ; 1B 56 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_059A                          ; EB 1F
L_057B:
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A E2 00 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        and     al, 0                           ; 24 00
        or      al, 0x14                        ; 0C 14
        mov     word ptr [bx + 2], ax           ; 89 47 02
L_059A:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_05AE                          ; 74 0E
        push    word ptr [bp + 0x10]            ; FF 76 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_210                  ; 9A FF FF 00 00 [FIXUP]
L_05AE:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jl      L_05C6                          ; 7C 12
        jg      L_05BD                          ; 7F 07
        cmp     word ptr [bp - 6], 0x7fff       ; 81 7E FA FF 7F
        jbe     L_05C6                          ; 76 09
L_05BD:
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     word ptr [bx], 0x7fff           ; C7 07 FF 7F
        jmp     L_05CE                          ; EB 08
L_05C6:
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bx], ax               ; 89 07
L_05CE:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05E1 -- offset 0x05E1 -- 42 instr
; Funcion mediana (42 instr, 0 calls).
; tags: medium
; callers: sub_044E
;----------------------------------------------------------------------
L_05E1:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx + 6]           ; 8B 5F 06
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0602:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        dec     word ptr [bp - 4]               ; FF 4E FC
        or      ax, ax                          ; 0B C0
        je      L_062E                          ; 74 22
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bx + 2], dx           ; 39 57 02
        jl      L_0628                          ; 7C 0E
        jg      L_0620                          ; 7F 04
        cmp     word ptr [bx], ax               ; 39 07
        jbe     L_0628                          ; 76 08
L_0620:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
L_0623:
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        jmp     L_0633                          ; EB 0B
L_0628:
        add     word ptr [bp - 6], 6            ; 83 46 FA 06
        jmp     L_0602                          ; EB D4
L_062E:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        jmp     L_0623                          ; EB F0
L_0633:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

WRITE_TEXT ENDS

        END
