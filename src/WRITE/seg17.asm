; AUTO-GENERATED from original WRITE segment 17
; segment_size=879 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     ax, 0x80                        ; B8 80 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_275                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0x80                        ; B8 80 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_157                  ; 9A 58 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00EC                          ; E8 AD 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 8]               ; F7 6E F8
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        add     ax, word ptr [0xa58]            ; 03 06 58 0A
        pop     si                              ; 5E
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
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00EC                          ; E8 58 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        add     bx, 6                           ; 83 C3 06
        mov     word ptr [bp - 8], bx           ; 89 5E F8
        mov     ax, word ptr [bx]               ; 8B 07
        and     ax, 1                           ; 25 01 00
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        and     byte ptr [bx], 0xfe             ; 80 27 FE
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        or      word ptr [bx], ax               ; 09 07
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xa58]            ; 03 06 58 0A
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00EC -- offset 0x00EC -- 141 instr
; Dispatcher: tabla de decisiones cmp+jcc (141 instr).
; tags: dispatcher, far
; callers: sub_022C
; calls (intra): sub_022C, sub_031B
;----------------------------------------------------------------------
L_00EC:
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
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        inc     cx                              ; 41
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        inc     ax                              ; 40
        mul     cx                              ; F7 E1
        and     ah, 0x7f                        ; 80 E4 7F
        sub     dx, dx                          ; 2B D2
        div     word ptr [0x1070]               ; F7 36 70 10
        mov     bx, dx                          ; 8B DA
        mov     di, word ptr [0x1bfe]           ; 8B 3E FE 1B
        mov     al, byte ptr [bx + di]          ; 8A 01
        jmp     L_0145                          ; EB 2D
L_0118:
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     si, ax                          ; 8B F0
        add     si, word ptr [0x123e]           ; 03 36 3E 12
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [si + 2], ax           ; 39 44 02
        jne     L_0142                          ; 75 16
        mov     ax, word ptr [si]               ; 8B 04
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0142                          ; 75 0F
        inc     word ptr [0x1bf4]               ; FF 06 F4 1B
        mov     ax, word ptr [0x1bf4]           ; A1 F4 1B
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_015A                          ; EB 18
L_0142:
        mov     al, byte ptr [si + 8]           ; 8A 44 08
L_0145:
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xff                        ; 3D FF 00
        jne     L_0118                          ; 75 C9
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_274                  ; 9A FF FF 00 00 [FIXUP]
L_015A:
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
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_01B5                          ; EB 39
L_017C:
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0xeee]       ; 8B 87 EE 0E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0x7fff                      ; 3D FF 7F
        je      L_01B2                          ; 74 22
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_01AA                          ; 75 14
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     si, ax                          ; 8B F0
        cmp     byte ptr [bx + si + 0x23], 0    ; 80 78 23 00
        jne     L_01B2                          ; 75 08
L_01AA:
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_031B                          ; E8 69 01
L_01B2:
        inc     word ptr [bp - 4]               ; FF 46 FC
L_01B5:
        mov     ax, word ptr [0x128a]           ; A1 8A 12
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_017C                          ; 7C BF
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
        sub     sp, 6                           ; 83 EC 06
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        adc     dx, word ptr [bp - 4]           ; 13 56 FC
        cmp     dx, 1                           ; 83 FA 01
        jl      L_020D                          ; 7C 17
        jg      L_01FC                          ; 7F 04
        or      ax, ax                          ; 0B C0
        jbe     L_020D                          ; 76 11
L_01FC:
        mov     ax, 0x4003                      ; B8 03 40
        push    ax                              ; 50
        call    far _entry_271                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x3c], 1              ; C7 06 3C 00 01 00
        jmp     L_021B                          ; EB 0E
L_020D:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_022C                          ; E8 11 00
L_021B:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_022C -- offset 0x022C -- 94 instr
; Funcion compleja: 94 instrucciones, 1 llamadas, 2 branches.
; tags: complex, far
; callers: sub_00EC
; calls (intra): sub_00EC
;----------------------------------------------------------------------
L_022C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0x80                        ; B8 80 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx]                   ; FF 37
        call    far _entry_157                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0306                          ; E9 A4 00
L_0262:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00EC                          ; E8 7C FE
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, 0x80                        ; B8 80 00
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp + 6], si           ; 39 76 06
        jg      L_029D                          ; 7F 03
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
L_029D:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        add     ax, word ptr [0xa58]            ; 03 06 58 0A
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        add     bx, 6                           ; 83 C3 06
        mov     word ptr [bp - 0x10], bx        ; 89 5E F0
        mov     ax, word ptr [bx]               ; 8B 07
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        and     word ptr [bx], 1                ; 81 27 01 00
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        shl     ax, 1                           ; D1 E0
        or      word ptr [bx], ax               ; 09 07
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        or      byte ptr [bx + 6], 1            ; 80 4F 06 01
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cdq                                     ; 99
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        add     word ptr [bx], ax               ; 01 07
        adc     word ptr [bx + 2], dx           ; 11 57 02
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + 0x18], ax        ; 89 47 18
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     word ptr [bp + 8], ax           ; 01 46 08
        sub     word ptr [bp + 6], ax           ; 29 46 06
L_0306:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_030F                          ; 7E 03
        jmp     L_0262                          ; E9 53 FF
L_030F:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_031B -- offset 0x031B -- 38 instr
; Funcion mediana (38 instr, 0 calls).
; tags: medium
; callers: sub_00EC
;----------------------------------------------------------------------
L_031B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        add     ax, 0xeec                       ; 05 EC 0E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bx]                   ; FF 37
        call    far _entry_273                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        mov     al, byte ptr [si + 5]           ; 8A 44 05
        and     al, 0x80                        ; 24 80
        or      al, 0xa                         ; 0C 0A
        mov     byte ptr [si + 5], al           ; 88 44 05
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], 0x7fff       ; C7 47 02 FF 7F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
