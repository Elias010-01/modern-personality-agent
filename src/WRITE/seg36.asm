; AUTO-GENERATED from original WRITE segment 36
; segment_size=2713 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 323 instr
; Dispatcher: tabla de decisiones cmp+jcc (323 instr).
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
        sub     sp, 0x36                        ; 83 EC 36
        mov     ax, word ptr [0x2d0]            ; A1 D0 02
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_0041                          ; 75 2C
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jl      L_0041                          ; 7C 20
        jg      L_0028                          ; 7F 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jb      L_0041                          ; 72 19
L_0028:
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jg      L_0041                          ; 7F 0D
        jge     L_0039                          ; 7D 03
        jmp     L_036A                          ; E9 31 03
L_0039:
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jae     L_0041                          ; 73 03
        jmp     L_036A                          ; E9 29 03
L_0041:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     cl, 0xa                         ; B1 0A
        shr     ax, cl                          ; D3 E8
        and     ax, 3                           ; 25 03 00
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bx + 4], dx           ; 39 57 04
        jle     L_006D                          ; 7E 03
        jmp     L_00FA                          ; E9 8D 00
L_006D:
        jl      L_0077                          ; 7C 08
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jbe     L_0077                          ; 76 03
        jmp     L_00FA                          ; E9 83 00
L_0077:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jl      L_00CC                          ; 7C 49
        jg      L_008A                          ; 7F 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jbe     L_00CC                          ; 76 42
L_008A:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 60 FF
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jg      L_00CC                          ; 7F 20
        jl      L_00B3                          ; 7C 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jae     L_00CC                          ; 73 19
L_00B3:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     dx, word ptr [bx + 4]           ; 8B 57 04
        add     ax, 2                           ; 05 02 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [0xed2], ax            ; A3 D2 0E
        mov     word ptr [0xed4], dx            ; 89 16 D4 0E
        jmp     L_036A                          ; E9 9E 02
L_00CC:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x2d0], ax            ; A3 D0 02
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     dx, word ptr [bx + 4]           ; 8B 57 04
        mov     word ptr [0x1c00], ax           ; A3 00 1C
        mov     word ptr [0x1c02], dx           ; 89 16 02 1C
        add     ax, 2                           ; 05 02 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [0xed2], ax            ; A3 D2 0E
        mov     word ptr [0xed4], dx            ; 89 16 D4 0E
L_00EF:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0375                          ; E8 7E 02
        jmp     L_036A                          ; E9 70 02
L_00FA:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_211                  ; 9A FF FF 00 00 [FIXUP]
        mov     cx, 0xc                         ; B9 0C 00
        imul    cx                              ; F7 E9
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [0x2d0]            ; A1 D0 02
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_014F                          ; 75 1A
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jne     L_014F                          ; 75 0E
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_014F                          ; 75 09
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        jmp     L_01E9                          ; E9 9A 00
L_014F:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
L_0155:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        test    byte ptr [bx + 4], 1            ; F6 47 04 01
        jne     L_01C0                          ; 75 4C
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     dx, word ptr [bx + 8]           ; 8B 57 08
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        push    word ptr [bp - 0x16]            ; FF 76 EA
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        adc     dx, word ptr [bp - 8]           ; 13 56 F8
        sub     ax, word ptr [bp - 0x1a]        ; 2B 46 E6
        sbb     dx, word ptr [bp - 0x18]        ; 1B 56 E8
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0635                          ; E8 99 04
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        cmp     dx, -1                          ; 83 FA FF
        jne     L_01AC                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_01C0                          ; 74 14
L_01AC:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        adc     dx, word ptr [bp - 0x1c]        ; 13 56 E4
        sub     ax, word ptr [bp - 0x22]        ; 2B 46 DE
        sbb     dx, word ptr [bp - 0x20]        ; 1B 56 E0
        jmp     L_01E9                          ; EB 29
L_01C0:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jne     L_01D0                          ; 75 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_01D7                          ; 74 07
L_01D0:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        or      byte ptr [bx + 4], 1            ; 80 4F 04 01
L_01D7:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        or      ax, word ptr [bp - 0x18]        ; 0B 46 E8
        je      L_01E2                          ; 74 03
        jmp     L_02DD                          ; E9 FB 00
L_01E2:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
L_01E9:
        mov     word ptr [0x1c00], ax           ; A3 00 1C
        mov     word ptr [0x1c02], dx           ; 89 16 02 1C
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x2d0], ax            ; A3 D0 02
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     dx, word ptr [bx + 4]           ; 8B 57 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
L_0217:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     word ptr [bp - 0x2e], dx        ; 89 56 D2
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     dx, word ptr [bx + 0xe]         ; 8B 57 0E
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        test    byte ptr [bx + 4], 1            ; F6 47 04 01
        je      L_0245                          ; 74 03
        jmp     L_02F0                          ; E9 AB 00
L_0245:
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     dx, word ptr [bx + 8]           ; 8B 57 08
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     word ptr [bp - 0x32], dx        ; 89 56 CE
        push    word ptr [bp - 0x24]            ; FF 76 DC
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        adc     dx, word ptr [bp - 8]           ; 13 56 F8
        sub     ax, word ptr [bp - 0x30]        ; 2B 46 D0
        sbb     dx, word ptr [bp - 0x2e]        ; 1B 56 D2
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        mov     dx, word ptr [bp - 0x32]        ; 8B 56 CE
        add     ax, word ptr [bp - 0x2c]        ; 03 46 D4
        adc     dx, word ptr [bp - 0x2a]        ; 13 56 D6
        sub     ax, word ptr [bp - 0x30]        ; 2B 46 D0
        sbb     dx, word ptr [bp - 0x2e]        ; 1B 56 D2
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_07F8                          ; E8 79 05
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        cmp     dx, -1                          ; 83 FA FF
        jne     L_028F                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_02F0                          ; 74 61
L_028F:
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        mov     dx, word ptr [bp - 0x2e]        ; 8B 56 D2
        add     ax, word ptr [bp - 0x28]        ; 03 46 D8
        adc     dx, word ptr [bp - 0x26]        ; 13 56 DA
        sub     ax, word ptr [bp - 0x34]        ; 2B 46 CC
        sbb     dx, word ptr [bp - 0x32]        ; 1B 56 CE
        mov     word ptr [0xed2], ax            ; A3 D2 0E
        mov     word ptr [0xed4], dx            ; 89 16 D4 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0411                          ; E8 61 01
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        or      ax, ax                          ; 0B C0
        je      L_02CC                          ; 74 0F
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        push    word ptr [bp - 0x36]            ; FF 76 CA
        call    far _entry_210                  ; 9A FF FF 00 00 [FIXUP]
L_02CC:
        cmp     word ptr [0xb7c], 0xf0          ; 81 3E 7C 0B F0 00
        ja      L_0341                          ; 77 6D
        mov     word ptr [0xb7c], 0xf0          ; C7 06 7C 0B F0 00
        jmp     L_0363                          ; E9 86 00
L_02DD:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        sub     word ptr [bp - 0xe], 0xc        ; 83 6E F2 0C
        jmp     L_0155                          ; E9 65 FE
L_02F0:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jne     L_0300                          ; 75 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_0307                          ; 74 07
L_0300:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        or      byte ptr [bx + 4], 1            ; 80 4F 04 01
L_0307:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp - 0x2a], dx        ; 39 56 D6
        jne     L_032E                          ; 75 1C
        cmp     word ptr [bp - 0x2c], ax        ; 39 46 D4
        jne     L_032E                          ; 75 17
        add     ax, 2                           ; 05 02 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [0xed2], ax            ; A3 D2 0E
        mov     word ptr [0xed4], dx            ; 89 16 D4 0E
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        jmp     L_00EF                          ; E9 C1 FD
L_032E:
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     dx, word ptr [bp - 0x2a]        ; 8B 56 D6
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        add     word ptr [bp - 0xe], 0xc        ; 83 46 F2 0C
        jmp     L_0217                          ; E9 D6 FE
L_0341:
        cmp     word ptr [0xb7c], 0x1e0         ; 81 3E 7C 0B E0 01
        jb      L_0351                          ; 72 08
        mov     word ptr [0xb7c], 0x1e0         ; C7 06 7C 0B E0 01
        jmp     L_0363                          ; EB 12
L_0351:
        mov     ax, word ptr [0xb7c]            ; A1 7C 0B
        add     ax, 0x3c                        ; 05 3C 00
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x78                        ; B9 78 00
        div     cx                              ; F7 F1
        mul     cx                              ; F7 E1
        mov     word ptr [0xb7c], ax            ; A3 7C 0B
L_0363:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
L_036A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0375 -- offset 0x0375 -- 61 instr
; Funcion mediana (61 instr, 1 calls).
; tags: far, medium
; callers: sub_0000
; calls (intra): sub_0411
;----------------------------------------------------------------------
L_0375:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [0x1c02], dx           ; 39 16 02 1C
        jl      L_03ED                          ; 7C 5E
        jg      L_0397                          ; 7F 06
        cmp     word ptr [0x1c00], ax           ; 39 06 00 1C
        jbe     L_03ED                          ; 76 56
L_0397:
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 39 FC
        and     byte ptr [0xb82], 0xef          ; 80 26 82 0B EF
        and     byte ptr [0xb82], 0xf0          ; 80 26 82 0B F0
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [0xed2], ax            ; A3 D2 0E
        mov     word ptr [0xed4], dx            ; 89 16 D4 0E
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        mov     word ptr [0x1c00], ax           ; A3 00 1C
        mov     word ptr [0x1c02], dx           ; 89 16 02 1C
        jmp     L_0406                          ; EB 19
L_03ED:
        push    word ptr [0x13cc]               ; FF 36 CC 13
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 57 04 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0411                          ; E8 0B 00
L_0406:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0411 -- offset 0x0411 -- 229 instr
; Dispatcher: tabla de decisiones cmp+jcc (229 instr).
; tags: dispatcher, far
; callers: sub_0000, sub_0375
;----------------------------------------------------------------------
L_0411:
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
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x14]   ; 8B 40 14
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0449                          ; 75 12
        mov     ax, 0xb88                       ; B8 88 0B
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_81                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_045B                          ; EB 12
L_0449:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        push    word ptr [bx]                   ; FF 37
        mov     ax, 0xb88                       ; B8 88 0B
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A AD 04 00 00 [FIXUP]
L_045B:
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
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [0x1c04]           ; A1 04 1C
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_04DA                          ; 74 5E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x1c04], ax           ; A3 04 1C
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx + 0xc], 0          ; 83 7F 0C 00
        je      L_04A0                          ; 74 07
        mov     bx, word ptr [bx + 0xc]         ; 8B 5F 0C
        push    word ptr [bx]                   ; FF 37
        jmp     L_04A4                          ; EB 04
L_04A0:
        mov     ax, 0xfa4                       ; B8 A4 0F
        push    ax                              ; 50
L_04A4:
        mov     ax, 0xe18                       ; B8 18 0E
        push    ax                              ; 50
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A D6 04 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x1294], ax           ; A3 94 12
        mov     word ptr [0x1292], ax           ; A3 92 12
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     dx, word ptr [bx + 4]           ; 8B 57 04
        mov     word ptr [0x113c], ax           ; A3 3C 11
        mov     word ptr [0x113e], dx           ; 89 16 3E 11
        mov     ax, 0xe18                       ; B8 18 0E
        push    ax                              ; 50
        mov     ax, 0xf2c                       ; B8 2C 0F
        push    ax                              ; 50
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
L_04DA:
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
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     al, byte ptr [0xf3d]            ; A0 3D 0F
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        lea     ax, [si - 1]                    ; 8D 44 FF
        mul     word ptr [0xf42]                ; F7 26 42 0F
        mov     cx, word ptr [0xf30]            ; 8B 0E 30 0F
        sub     cx, ax                          ; 2B C8
        mov     ax, word ptr [0xf3a]            ; A1 3A 0F
        mul     si                              ; F7 E6
        sub     cx, ax                          ; 2B C8
        sub     cx, word ptr [0xf38]            ; 2B 0E 38 0F
        sub     cx, word ptr [0xf44]            ; 2B 0E 44 0F
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
        mov     ax, word ptr [0x13c2]           ; A1 C2 13
        sub     ax, cx                          ; 2B C1
        sub     ax, word ptr [0xf38]            ; 2B 06 38 0F
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     al, byte ptr [0xe29]            ; A0 29 0E
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     word ptr [bp - 6], si           ; 89 76 FA
        lea     ax, [si - 1]                    ; 8D 44 FF
        mul     word ptr [0xe2e]                ; F7 26 2E 0E
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, cx                          ; 2B C1
        sub     ax, word ptr [0xf44]            ; 2B 06 44 0F
        sub     dx, dx                          ; 2B D2
        mov     cx, si                          ; 8B CE
        div     cx                              ; F7 F1
        mov     di, ax                          ; 8B F8
        cmp     di, 0x2d0                       ; 81 FF D0 02
        jae     L_0555                          ; 73 05
        mov     ax, 0x2d0                       ; B8 D0 02
        jmp     L_0557                          ; EB 02
L_0555:
        mov     ax, di                          ; 8B C7
L_0557:
        mov     word ptr [0xe26], ax            ; A3 26 0E
        mov     ax, word ptr [0x13c2]           ; A1 C2 13
        mov     word ptr [0xe1c], ax            ; A3 1C 0E
        mov     ax, word ptr [0xf2e]            ; A1 2E 0F
        sub     ax, word ptr [0xf34]            ; 2B 06 34 0F
        sub     ax, word ptr [0xf36]            ; 2B 06 36 0F
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x13d2]           ; A1 D2 13
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     si, ax                          ; 8B F0
        sub     si, word ptr [0xf34]            ; 2B 36 34 0F
        cmp     si, 0x5a0                       ; 81 FE A0 05
        jae     L_0585                          ; 73 05
        mov     ax, 0x5a0                       ; B8 A0 05
        jmp     L_0587                          ; EB 02
L_0585:
        mov     ax, si                          ; 8B C6
L_0587:
        mov     word ptr [0xe22], ax            ; A3 22 0E
        mov     ax, word ptr [0x13d2]           ; A1 D2 13
        mov     word ptr [0xe1a], ax            ; A3 1A 0E
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        mov     ax, word ptr [0x33e]            ; A1 3E 03
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_05B3                          ; 75 06
        mov     word ptr [0x33e], 0xffff        ; C7 06 3E 03 FF FF
L_05B3:
        mov     ax, word ptr [0xbd8]            ; A1 D8 0B
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_05C1                          ; 75 06
        mov     word ptr [0xbd8], 0xffff        ; C7 06 D8 0B FF FF
L_05C1:
        mov     ax, word ptr [0x2d0]            ; A1 D0 02
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_05CF                          ; 75 06
        mov     word ptr [0x2d0], 0xffff        ; C7 06 D0 02 FF FF
L_05CF:
        mov     ax, word ptr [0x1c04]           ; A1 04 1C
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_05DD                          ; 75 06
        mov     word ptr [0x1c04], 0xffff       ; C7 06 04 1C FF FF
L_05DD:
        mov     ax, word ptr [0x1bf0]           ; A1 F0 1B
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0603                          ; 75 1E
        mov     ax, word ptr [0xece]            ; A1 CE 0E
        or      ax, word ptr [0xed0]            ; 0B 06 D0 0E
        jne     L_05FD                          ; 75 0F
        cmp     word ptr [0xb70], 0x7fff        ; 81 3E 70 0B FF 7F
        jne     L_05FD                          ; 75 07
        cmp     word ptr [0xb6e], -1            ; 83 3E 6E 0B FF
        je      L_0603                          ; 74 06
L_05FD:
        mov     word ptr [0x1bf0], 0xffff       ; C7 06 F0 1B FF FF
L_0603:
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
        mov     word ptr [0x2d2], 0             ; C7 06 D2 02 00 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x2dc], ax            ; A3 DC 02
        mov     word ptr [0x2da], ax            ; A3 DA 02
        mov     word ptr [0x2d6], ax            ; A3 D6 02
        mov     word ptr [0x2d4], ax            ; A3 D4 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0635 -- offset 0x0635 -- 173 instr
; Dispatcher: tabla de decisiones cmp+jcc (173 instr).
; tags: dispatcher, far
; callers: sub_0000
; calls (intra): sub_09F3, sub_0A5B
;----------------------------------------------------------------------
L_0635:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        cmp     word ptr [bp + 0xe], 0x7ffe     ; 81 7E 0E FE 7F
        je      L_0659                          ; 74 10
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jne     L_0660                          ; 75 0C
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_0660                          ; 75 07
L_0659:
        mov     ax, 0xffff                      ; B8 FF FF
        cdq                                     ; 99
        jmp     L_07ED                          ; E9 8D 01
L_0660:
        cmp     word ptr [bp + 0xe], 0          ; 83 7E 0E 00
        jne     L_0696                          ; 75 30
        mov     ax, word ptr [0x2ba]            ; A1 BA 02
        mov     dx, word ptr [0x2bc]            ; 8B 16 BC 02
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jl      L_0696                          ; 7C 24
        jg      L_0679                          ; 7F 05
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jb      L_0696                          ; 72 1D
L_0679:
        mov     ax, word ptr [0x2ba]            ; A1 BA 02
        mov     dx, word ptr [0x2bc]            ; 8B 16 BC 02
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jg      L_0659                          ; 7F D4
        jl      L_068C                          ; 7C 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        ja      L_0659                          ; 77 CD
L_068C:
        mov     ax, word ptr [0x2ba]            ; A1 BA 02
        mov     dx, word ptr [0x2bc]            ; 8B 16 BC 02
        jmp     L_07ED                          ; E9 57 01
L_0696:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xe]             ; F7 6E 0E
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 4], 1            ; F6 47 04 01
        je      L_06B0                          ; 74 03
        jmp     L_076A                          ; E9 BA 00
L_06B0:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        and     al, 0x80                        ; 24 80
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, 0x80                        ; B8 80 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_157                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_06D8:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jge     L_06E6                          ; 7D 03
        jmp     L_0659                          ; E9 73 FF
L_06E6:
        jg      L_06F0                          ; 7F 08
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        ja      L_06F0                          ; 77 03
        jmp     L_0659                          ; E9 69 FF
L_06F0:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0xa]             ; FF 76 F6
        dec     word ptr [bp - 0xa]             ; FF 4E F6
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_212                  ; 9A AA 07 00 00 [FIXUP]
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        sub     cx, word ptr [bp - 8]           ; 2B 4E F8
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 0xe], cx         ; 89 4E F2
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jl      L_072E                          ; 7C 13
        jg      L_0722                          ; 7F 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jbe     L_072E                          ; 76 0C
L_0722:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
L_072E:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jl      L_075E                          ; 7C 25
        jg      L_0740                          ; 7F 05
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jbe     L_075E                          ; 76 1E
L_0740:
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        cmp     byte ptr [bx], 0xa              ; 80 3F 0A
        jne     L_0754                          ; 75 09
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        jmp     L_07ED                          ; E9 99 00
L_0754:
        sub     word ptr [bp + 0xa], 1          ; 83 6E 0A 01
        sbb     word ptr [bp + 0xc], 0          ; 83 5E 0C 00
        jmp     L_072E                          ; EB D0
L_075E:
        sub     word ptr [bp - 8], 0x80         ; 81 6E F8 80 00
        sbb     word ptr [bp - 6], 0            ; 83 5E FA 00
        jmp     L_06D8                          ; E9 6E FF
L_076A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        cmp     word ptr [bp + 0xe], 0          ; 83 7E 0E 00
        jne     L_0784                          ; 75 11
        mov     ax, 0x121c                      ; B8 1C 12
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_213                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07A1                          ; EB 1D
L_0784:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     bx, word ptr [bx + 0x1c]        ; 8B 5F 1C
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A5B                          ; E8 C4 02
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        add     ax, cx                          ; 03 C1
L_07A1:
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_212                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_07BB                          ; 74 03
        jmp     L_0659                          ; E9 9E FE
L_07BB:
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ax                              ; 50
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09F3                          ; E8 24 02
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jle     L_07DD                          ; 7E 03
        jmp     L_0659                          ; E9 7C FE
L_07DD:
        jl      L_07E7                          ; 7C 08
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jb      L_07E7                          ; 72 03
        jmp     L_0659                          ; E9 72 FE
L_07E7:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
L_07ED:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07F8 -- offset 0x07F8 -- 193 instr
; Dispatcher: tabla de decisiones cmp+jcc (193 instr).
; tags: dispatcher, far
; callers: sub_0000
; calls (intra): sub_0A5B
;----------------------------------------------------------------------
L_07F8:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1c                        ; 83 EC 1C
        push    si                              ; 56
        push    word ptr [0x13cc]               ; FF 36 CC 13
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 5A 09 00 00 [FIXUP]
        cmp     word ptr [bp + 0x10], 0x7ffe    ; 81 7E 10 FE 7F
        je      L_0836                          ; 74 19
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jne     L_083D                          ; 75 1A
        mov     ax, word ptr [0x2ba]            ; A1 BA 02
        mov     dx, word ptr [0x2bc]            ; 8B 16 BC 02
        cmp     word ptr [bp + 0xe], dx         ; 39 56 0E
        jl      L_083D                          ; 7C 0E
        jg      L_0836                          ; 7F 05
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jb      L_083D                          ; 72 07
L_0836:
        mov     ax, 0xffff                      ; B8 FF FF
        cdq                                     ; 99
        jmp     L_09E7                          ; E9 AA 01
L_083D:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0x10]            ; F7 6E 10
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0x1218]           ; 8B 36 18 12
        add     bx, word ptr [si]               ; 03 1C
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        test    byte ptr [bx + 4], 1            ; F6 47 04 01
        je      L_0857                          ; 74 03
        jmp     L_0900                          ; E9 A9 00
L_0857:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        and     al, 0x80                        ; 24 80
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, 0x80                        ; B8 80 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_157                  ; 9A D1 06 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0879:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bp + 0xe], dx         ; 39 56 0E
        jg      L_0836                          ; 7F B2
        jl      L_088B                          ; 7C 05
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jae     L_0836                          ; 73 AB
L_088B:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 0xa]             ; FF 76 F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_212                  ; 9A 40 09 00 00 [FIXUP]
        mov     cx, word ptr [bp + 0xc]         ; 8B 4E 0C
        sub     cx, word ptr [bp - 8]           ; 2B 4E F8
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 0xe], cx         ; 89 4E F2
        add     word ptr [bp - 8], 0x80         ; 81 46 F8 80 00
        adc     word ptr [bp - 6], 0            ; 83 56 FA 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        jl      L_08D2                          ; 7C 13
        jg      L_08C6                          ; 7F 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jbe     L_08D2                          ; 76 0C
L_08C6:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
L_08D2:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        cmp     word ptr [bp + 0xe], dx         ; 39 56 0E
        jg      L_0879                          ; 7F 9C
        jl      L_08E4                          ; 7C 05
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jae     L_0879                          ; 73 95
L_08E4:
        add     word ptr [bp + 0xc], 1          ; 83 46 0C 01
        adc     word ptr [bp + 0xe], 0          ; 83 56 0E 00
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        cmp     byte ptr [bx], 0xa              ; 80 3F 0A
        jne     L_08D2                          ; 75 DB
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        jmp     L_09E7                          ; E9 E7 00
L_0900:
        push    word ptr [bp + 0x10]            ; FF 76 10
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jne     L_091A                          ; 75 11
        mov     ax, 0x121c                      ; B8 1C 12
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_213                  ; 9A 7E 07 00 00 [FIXUP]
        jmp     L_0937                          ; EB 1D
L_091A:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     bx, word ptr [bx + 0x1c]        ; 8B 5F 1C
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A5B                          ; E8 2E 01
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        add     ax, cx                          ; 03 C1
L_0937:
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_212                  ; 9A 01 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_0978                          ; 74 2A
        push    word ptr [0x13cc]               ; FF 36 CC 13
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FA 03 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bx + 2], dx           ; 39 57 02
        je      L_096F                          ; 74 03
        jmp     L_0836                          ; E9 C7 FE
L_096F:
        cmp     word ptr [bx], ax               ; 39 07
        je      L_0976                          ; 74 03
        jmp     L_0836                          ; E9 C0 FE
L_0976:
        jmp     L_09E7                          ; EB 6F
L_0978:
        mov     si, word ptr [bp - 0x14]        ; 8B 76 EC
        add     si, 4                           ; 83 C6 04
L_097E:
        mov     ax, word ptr [si]               ; 8B 04
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        cmp     word ptr [bp + 0xe], dx         ; 39 56 0E
        jl      L_0994                          ; 7C 0C
        jg      L_098F                          ; 7F 05
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jb      L_0994                          ; 72 05
L_098F:
        add     si, 6                           ; 83 C6 06
        jmp     L_097E                          ; EB EA
L_0994:
        mov     ax, word ptr [si]               ; 8B 04
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bp - 0x16], dx        ; 39 56 EA
        jle     L_09B3                          ; 7E 03
        jmp     L_0836                          ; E9 83 FE
L_09B3:
        jl      L_09BD                          ; 7C 08
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jbe     L_09BD                          ; 76 03
        jmp     L_0836                          ; E9 79 FE
L_09BD:
        cmp     word ptr [bp - 0x12], -1        ; 83 7E EE FF
        je      L_09E1                          ; 74 1E
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, word ptr [bp - 0x14]        ; 03 46 EC
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
L_09E1:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     dx, word ptr [bp - 0x16]        ; 8B 56 EA
L_09E7:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_09F3 -- offset 0x09F3 -- 47 instr
; Funcion mediana (47 instr, 0 calls).
; tags: far, medium
; callers: sub_0635
;----------------------------------------------------------------------
L_09F3:
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
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        add     si, 4                           ; 83 C6 04
L_0A07:
        mov     ax, word ptr [si]               ; 8B 04
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jl      L_0A1D                          ; 7C 0C
        jg      L_0A18                          ; 7F 05
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jb      L_0A1D                          ; 72 05
L_0A18:
        add     si, 6                           ; 83 C6 06
        jmp     L_0A07                          ; EB EA
L_0A1D:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        add     ax, 4                           ; 05 04 00
        cmp     ax, si                          ; 3B C6
        jne     L_0A31                          ; 75 0A
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        jmp     L_0A37                          ; EB 06
L_0A31:
        mov     ax, word ptr [si - 6]           ; 8B 44 FA
        mov     dx, word ptr [si - 4]           ; 8B 54 FC
L_0A37:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [si]               ; 8B 04
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A5B -- offset 0x0A5B -- 31 instr
; Funcion mediana (31 instr, 0 calls).
; tags: medium
; callers: sub_0635, sub_07F8
;----------------------------------------------------------------------
L_0A5B:
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
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0A71:
        add     si, 4                           ; 83 C6 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [si - 2], dx           ; 39 54 FE
        jg      L_0A8B                          ; 7F 0C
        jl      L_0A86                          ; 7C 05
        cmp     word ptr [si - 4], ax           ; 39 44 FC
        ja      L_0A8B                          ; 77 05
L_0A86:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_0A71                          ; EB E6
L_0A8B:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

WRITE_TEXT ENDS

        END
