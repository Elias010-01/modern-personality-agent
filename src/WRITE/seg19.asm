; AUTO-GENERATED from original WRITE segment 19
; segment_size=2144 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 371 instr
; Dispatcher: tabla de decisiones cmp+jcc (371 instr).
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
        sub     sp, 0x20                        ; 83 EC 20
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0023                          ; 75 03
        jmp     L_0240                          ; E9 1D 02
L_0023:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bl, byte ptr [bx]               ; 8A 1F
        sub     bh, bh                          ; 2A FF
        test    byte ptr [bx + 0x2e2], 0xc      ; F6 87 E2 02 0C
        jne     L_0034                          ; 75 03
        jmp     L_0199                          ; E9 65 01
L_0034:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _entry_35                   ; 9A 75 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_34                   ; 9A 9C 02 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A B1 00 00 00 [FIXUP]
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        sbb     dx, word ptr [bp - 8]           ; 1B 56 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jg      L_00C8                          ; 7F 29
        jl      L_00A6                          ; 7C 05
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jae     L_00C8                          ; 73 22
L_00A6:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far _entry_32                   ; 9A A3 02 00 00 [FIXUP]
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        sbb     dx, word ptr [bp - 0xe]         ; 1B 56 F2
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
L_00C8:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        adc     dx, word ptr [bp - 4]           ; 13 56 FC
        add     ax, word ptr [bp - 0x16]        ; 03 46 EA
        adc     dx, word ptr [bp - 0x14]        ; 13 56 EC
        cmp     dx, word ptr [0x13a8]           ; 3B 16 A8 13
        jl      L_015B                          ; 7C 7B
        jg      L_00E8                          ; 7F 06
        cmp     ax, word ptr [0x13a6]           ; 3B 06 A6 13
        jbe     L_015B                          ; 76 73
L_00E8:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        add     word ptr [bp - 6], ax           ; 01 46 FA
        adc     word ptr [bp - 4], dx           ; 11 56 FC
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0130                          ; 74 36
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        sub     ax, 2                           ; 2D 02 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_37                   ; 9A 86 01 00 00 [FIXUP]
        mov     word ptr [bp + 6], 0            ; C7 46 06 00 00
L_0130:
        lea     di, [bp - 0x20]                 ; 8D 7E E0
        mov     si, 0x1be2                      ; BE E2 1B
        push    ss                              ; 16
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        call    far _entry_40                   ; 9A FF FF 00 00 [FIXUP]
        mov     di, 0x1be2                      ; BF E2 1B
        lea     si, [bp - 0x20]                 ; 8D 76 E0
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
L_015B:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_018A                          ; 74 29
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_37                   ; 9A EF 01 00 00 [FIXUP]
L_018A:
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_020D                          ; 74 7C
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0240                          ; E9 A7 00
L_0199:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        call    far _entry_38                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        sbb     dx, word ptr [bp - 8]           ; 1B 56 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        jne     L_015B                          ; 75 90
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_01F3                          ; 74 22
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
L_01F3:
        mov     ax, 0xa5e                       ; B8 5E 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_36                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0240                          ; EB 33
L_020D:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03BB                          ; E8 96 01
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_31                   ; 9A 6A 03 00 00 [FIXUP]
L_0240:
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
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     di, bx                          ; 8B FB
        mov     si, 0x1be2                      ; BE E2 1B
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A 21 03 00 00 [FIXUP]
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
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
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     cx, word ptr [0x1be2]           ; 8B 0E E2 1B
        mov     bx, word ptr [0x1be4]           ; 8B 1E E4 1B
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
        mov     word ptr [bp - 8], bx           ; 89 5E F8
        sub     ax, cx                          ; 2B C1
        sbb     dx, bx                          ; 1B D3
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0353                          ; 74 57
        call    far _entry_33                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 0xc], dx         ; 39 56 F4
        jg      L_0353                          ; 7F 46
        jl      L_0314                          ; 7C 05
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        ja      L_0353                          ; 77 3F
L_0314:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [0xed4], dx            ; 39 16 D4 0E
        jl      L_0353                          ; 7C 21
        jg      L_033A                          ; 7F 06
        cmp     word ptr [0xed2], ax            ; 39 06 D2 0E
        jbe     L_0353                          ; 76 19
L_033A:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        sbb     dx, word ptr [bp - 8]           ; 1B 56 F8
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
L_0353:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     di, 0x1be2                      ; BF E2 1B
        mov     si, ax                          ; 8B F0
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
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
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03BB                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03BB -- offset 0x03BB -- 64 instr
; Funcion mediana (64 instr, 15 calls).
; tags: calls_gdi, calls_user, far, medium
; callers: sub_0000
; calls (intra): sub_062B, sub_06CB
; calls (inter): GDI.ESCAPE, GDI.GETDEVICECAPS, GDI.GETSTOCKOBJECT, GDI.GETTEXTMETRICS, GDI.SELECTOBJECT, USER.GETDC (+7 mas)
;----------------------------------------------------------------------
L_03BB:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xe]             ; F7 6E 0E
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      byte ptr [bx + 6], 1            ; 80 4F 06 01
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_51                   ; 9A FD 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_51                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        jne     L_045C                          ; 75 51
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        add     ax, word ptr [bx]               ; 03 07
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_044D                          ; EB 22
L_042B:
        cmp     word ptr [0x3c], 0              ; 83 3E 3C 00 00
        jne     L_0455                          ; 75 23
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        push    word ptr [bx + 0xa]             ; FF 77 0A
        push    word ptr [bp + 0x10]            ; FF 76 10
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0467                          ; E8 27 00
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        add     word ptr [bp - 0xa], 0xc        ; 83 46 F6 0C
L_044D:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jl      L_042B                          ; 7C D6
L_0455:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
L_045C:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0467 -- offset 0x0467 -- 348 instr
; Dispatcher: tabla de decisiones cmp+jcc (348 instr).
; tags: dispatcher, far
; callers: sub_03BB
; calls (intra): sub_0801
;----------------------------------------------------------------------
L_0467:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xac                        ; 81 EC AC 00
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xa6], ax        ; 89 86 5A FF
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx + 0x2e2]       ; 8A 87 E2 02
        mov     si, ax                          ; 8B F0
        and     ax, 3                           ; 25 03 00
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, si                          ; 8B C6
        and     ax, 0xc                         ; 25 0C 00
        mov     word ptr [bp - 0xa4], ax        ; 89 86 5C FF
        mov     ax, si                          ; 8B C6
        and     ax, 0x20                        ; 25 20 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, si                          ; 8B C6
        and     ax, 0x80                        ; 25 80 00
        mov     word ptr [bp - 0xa2], ax        ; 89 86 5E FF
        mov     ax, si                          ; 8B C6
        and     ax, 0x40                        ; 25 40 00
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        jne     L_04C8                          ; 75 0B
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_49                   ; 9A 2F 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
L_04C8:
        lea     ax, [bp - 0x9f]                 ; 8D 86 61 FF
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        test    byte ptr [bp + 8], 1            ; F6 46 08 01
        jne     L_04D8                          ; 75 03
        jmp     L_05AE                          ; E9 D6 00
L_04D8:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        shl     ax, 1                           ; D1 E0
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        call    far _entry_50                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0506:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_050F                          ; 75 03
        jmp     L_064B                          ; E9 3C 01
L_050F:
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx + 0x2e2]       ; 8A 87 E2 02
        mov     di, ax                          ; 8B F8
        and     ax, 3                           ; 25 03 00
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        jne     L_0536                          ; 75 0B
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _entry_49                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
L_0536:
        mov     ax, word ptr [bp - 0xa6]        ; 8B 86 5A FF
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_0546                          ; 75 07
        cmp     word ptr [bp - 0xa2], 0         ; 83 BE 5E FF 00
        jne     L_0561                          ; 75 1B
L_0546:
        mov     ax, di                          ; 8B C7
        and     ax, 0xc                         ; 25 0C 00
        cmp     word ptr [bp - 0xa4], ax        ; 39 86 5C FF
        jne     L_0584                          ; 75 33
        mov     ax, di                          ; 8B C7
        and     ax, 0x20                        ; 25 20 00
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0584                          ; 7C 29
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_0584                          ; 74 23
L_0561:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xa6], ax        ; 39 86 5A FF
        jne     L_057C                          ; 75 12
        cmp     word ptr [bp - 0xa6], 0x1c      ; 83 BE 5A FF 1C
        jne     L_057C                          ; 75 0B
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        sub     ah, ah                          ; 2A E4
        add     word ptr [bp - 0x14], ax        ; 01 46 EC
L_057C:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     word ptr [bp - 0x12], ax        ; 29 46 EE
        jmp     L_05A2                          ; EB 1E
L_0584:
        cmp     word ptr [bp - 6], 0x1c         ; 83 7E FA 1C
        jne     L_0591                          ; 75 07
        cmp     word ptr [bp - 0xa6], 0x19      ; 83 BE 5A FF 19
        je      L_057C                          ; 74 EB
L_0591:
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far _entry_45                   ; 9A 62 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
L_05A2:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
        sub     word ptr [bp - 0xa], ax         ; 29 46 F6
        jmp     L_0506                          ; E9 58 FF
L_05AE:
        mov     al, byte ptr [bp + 9]           ; 8A 46 09
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xa8], ax        ; 89 86 58 FF
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        shr     ax, 1                           ; D1 E8
        and     ax, 0x7f                        ; 25 7F 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx + 0x2e2]       ; 8A 87 E2 02
        sub     ah, ah                          ; 2A E4
        mov     di, ax                          ; 8B F8
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_05FC                          ; 74 2A
        mov     ax, word ptr [bp - 0xa6]        ; 8B 86 5A FF
        cmp     bx, ax                          ; 3B D8
        jne     L_05E1                          ; 75 07
        cmp     word ptr [bp - 0xa2], 0         ; 83 BE 5E FF 00
        jne     L_05FC                          ; 75 1B
L_05E1:
        mov     ax, di                          ; 8B C7
        and     ax, 0xc                         ; 25 0C 00
        cmp     word ptr [bp - 0xa4], ax        ; 39 86 5C FF
        jne     L_061A                          ; 75 2E
        mov     ax, di                          ; 8B C7
        and     ax, 0x20                        ; 25 20 00
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_061A                          ; 7C 24
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_061A                          ; 74 1E
L_05FC:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xa6], ax        ; 39 86 5A FF
        jne     L_0613                          ; 75 0E
        cmp     word ptr [bp - 0xa6], 0x1c      ; 83 BE 5A FF 1C
        jne     L_0613                          ; 75 07
        mov     ax, word ptr [bp - 0xa8]        ; 8B 86 58 FF
        add     word ptr [bp - 0x14], ax        ; 01 46 EC
L_0613:
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        jmp     L_064B                          ; EB 31
L_061A:
        cmp     word ptr [bp - 6], 0x1c         ; 83 7E FA 1C
        jne     L_0627                          ; 75 07
        cmp     word ptr [bp - 0xa6], 0x19      ; 83 BE 5A FF 19
        je      L_0613                          ; 74 EC
L_0627:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        mov     byte ptr [bx], al               ; 88 07
        mov     ax, di                          ; 8B C7
        and     ax, 3                           ; 25 03 00
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        cmp     ax, 2                           ; 3D 02 00
        jne     L_064B                          ; 75 0C
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     al, byte ptr [bp - 0xa8]        ; 8A 86 58 FF
        mov     byte ptr [bx], al               ; 88 07
L_064B:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, 0x80                        ; B8 80 00
        sub     ax, word ptr [bp - 0x12]        ; 2B 46 EE
        push    ax                              ; 50
        call    far _entry_48                   ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 87 06 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        add     byte ptr [bx + 1], al           ; 00 47 01
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jne     L_06AD                          ; 75 38
        cmp     word ptr [bp - 0x1a], 2         ; 83 7E E6 02
        jg      L_06AD                          ; 7F 32
        push    word ptr [bp - 0x10]            ; FF 76 F0
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far _entry_45                   ; 9A 10 07 00 00 [FIXUP]
        and     byte ptr [bp - 0xaa], 0xfe      ; 80 A6 56 FF FE
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     al, byte ptr [bx]               ; 8A 07
        and     al, 0x7f                        ; 24 7F
        shl     al, 1                           ; D0 E0
        mov     cl, byte ptr [bp - 0xaa]        ; 8A 8E 56 FF
        and     cl, 1                           ; 80 E1 01
        or      al, cl                          ; 0A C1
        mov     byte ptr [bp - 0xaa], al        ; 88 86 56 FF
        mov     ax, word ptr [bp - 0xaa]        ; 8B 86 56 FF
        jmp     L_0757                          ; E9 AA 00
L_06AD:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     word ptr [bp - 0x12], ax        ; 01 46 EE
        cmp     word ptr [bp - 0x12], 0x80      ; 81 7E EE 80 00
        jle     L_06D7                          ; 7E 1D
        mov     ax, word ptr [0xbda]            ; A1 DA 0B
        mov     word ptr [bp - 0xac], ax        ; 89 86 54 FF
        mov     ax, 0x200f                      ; B8 0F 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xac]        ; 8B 86 54 FF
        mov     word ptr [0xbda], ax            ; A3 DA 0B
L_06D1:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_0757                          ; E9 80 00
L_06D7:
        cmp     word ptr [0x3c], 0              ; 83 3E 3C 00 00
        jne     L_06D1                          ; 75 F3
        mov     al, byte ptr [bp - 0x12]        ; 8A 46 EE
        mov     byte ptr [bp - 0xa0], al        ; 88 86 60 FF
        mov     ax, 0x662                       ; B8 62 06
        push    ax                              ; 50
        lea     ax, [bp - 0xa0]                 ; 8D 86 60 FF
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_46                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0701                          ; 75 05
        mov     ax, word ptr [0x6e6]            ; A1 E6 06
        jmp     L_0757                          ; EB 56
L_0701:
        lea     ax, [bp - 0xa0]                 ; 8D 86 60 FF
        push    ax                              ; 50
        mov     ax, 0x662                       ; B8 62 06
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        and     al, 0xfe                        ; 24 FE
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_44                   ; 9A FF FF 00 00 [FIXUP]
        or      byte ptr [bp + 8], 1            ; 80 4E 08 01
        lea     ax, [bp - 0xa0]                 ; 8D 86 60 FF
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        sar     dx, 1                           ; D1 FA
        rcr     ax, 1                           ; D1 D8
        and     ah, 0x7f                        ; 80 E4 7F
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        and     cx, 1                           ; 81 E1 01 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [0x6e6], ax            ; A3 E6 06
        jmp     L_06D1                          ; E9 7A FF
L_0757:
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
        sub     sp, 8                           ; 83 EC 08
        lea     ax, [bp - 8]                    ; 8D 46 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        mov     byte ptr [bx], al               ; 88 07
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     byte ptr [bx], al               ; 88 07
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_07AD                          ; 75 1E
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 64 F8
        mov     word ptr [0xcac], 0x14          ; C7 06 AC 0C 14 00
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07BE                          ; EB 11
L_07AD:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_36                   ; 9A 07 02 00 00 [FIXUP]
L_07BE:
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
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        lea     ax, [bp - 4]                    ; 8D 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     byte ptr [bx], al               ; 88 07
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0801                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0801 -- offset 0x0801 -- 44 instr
; Funcion mediana (44 instr, 0 calls).
; tags: medium
; callers: sub_0467
;----------------------------------------------------------------------
L_0801:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_41                   ; 9A 18 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0856                          ; 74 3C
        lea     ax, [bp - 8]                    ; 8D 46 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        mov     byte ptr [bx], al               ; 88 07
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 9B 05 00 00 [FIXUP]
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 B9 F7
        mov     word ptr [0xcac], 0x14          ; C7 06 AC 0C 14 00
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A A7 07 00 00 [FIXUP]
L_0856:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

WRITE_TEXT ENDS

        END
