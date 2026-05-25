; AUTO-GENERATED from original PAINT segment 9
; segment_size=4463 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

PAINT_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [0xca4]                ; FF 36 A4 0C
        call    far _entry_19                   ; 9A 1B 00 00 00 [FIXUP]
        push    word ptr [0xe96]                ; FF 36 96 0E
        call    far _entry_19                   ; 9A 24 00 00 00 [FIXUP]
        push    word ptr [0xdb0]                ; FF 36 B0 0D
        call    far _entry_19                   ; 9A 2D 00 00 00 [FIXUP]
        push    word ptr [0xe04]                ; FF 36 04 0E
        call    far _entry_19                   ; 9A 36 00 00 00 [FIXUP]
        push    word ptr [0xacc]                ; FF 36 CC 0A
        call    far _entry_19                   ; 9A 3F 00 00 00 [FIXUP]
        push    word ptr [0xc7e]                ; FF 36 7E 0C
        call    far _entry_19                   ; 9A 48 00 00 00 [FIXUP]
        push    word ptr [0xe62]                ; FF 36 62 0E
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
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
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_38                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02A1                          ; E8 20 02
        mov     word ptr [bp - 4], 0xc02        ; C7 46 FC 02 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0xc14], ax            ; A3 14 0C
        cdq                                     ; 99
        mov     cx, word ptr [0xc0a]            ; 8B 0E 0A 0C
        idiv    cx                              ; F7 F9
        mov     word ptr [0xc10], dx            ; 89 16 10 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [0xc12], ax            ; A3 12 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02A1                          ; E8 F6 01
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F61                          ; E8 A8 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
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
        mov     ax, word ptr [0xc14]            ; A1 14 0C
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
        mov     ax, word ptr [0x874]            ; A1 74 08
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
        mov     ax, word ptr [0xca0]            ; A1 A0 0C
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
        mov     ax, word ptr [0xaca]            ; A1 CA 0A
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
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0139:
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        add     ax, 0xc02                       ; 05 02 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        call    far USER.PTINRECT               ; 9A 9A 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_015C                          ; 74 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0168                          ; EB 0C
L_015C:
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 4            ; 83 7E FC 04
        jl      L_0139                          ; 7C D4
        mov     ax, 0xffff                      ; B8 FF FF
L_0168:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0173 -- offset 0x0173 -- 56 instr
; Funcion mediana (56 instr, 1 calls).
; tags: calls_user, far, medium
; callers: sub_01F6
; calls (inter): USER.PTINRECT
;----------------------------------------------------------------------
L_0173:
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
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        add     ax, 0xc02                       ; 05 02 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_01A7                          ; 75 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_01EA                          ; EB 43
L_01A7:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     si, word ptr [bx]               ; 8B 37
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        sub     ax, si                          ; 2B C6
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        imul    word ptr [bx + 0xa]             ; F7 6F 0A
        cdq                                     ; 99
        mov     cx, word ptr [bx + 4]           ; 8B 4F 04
        sub     cx, si                          ; 2B CE
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        sub     ax, word ptr [bx + 2]           ; 2B 47 02
        imul    word ptr [bx + 8]               ; F7 6F 08
        cdq                                     ; 99
        mov     cx, word ptr [bx + 6]           ; 8B 4F 06
        sub     cx, word ptr [bx + 2]           ; 2B 4F 02
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        imul    word ptr [bp - 6]               ; F7 6E FA
        add     ax, word ptr [bp - 8]           ; 03 46 F8
L_01EA:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01F6 -- offset 0x01F6 -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: far, small
; callers: sub_0659
; calls (intra): sub_0173, sub_0231
;----------------------------------------------------------------------
L_01F6:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x876], -1            ; 83 3E 76 08 FF
        jle     L_0226                          ; 7E 1F
        cmp     word ptr [0x876], 4             ; 83 3E 76 08 04
        jge     L_0226                          ; 7D 18
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x876]                ; FF 36 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0173                          ; E8 53 FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0231                          ; E8 0B 00
L_0226:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0231 -- offset 0x0231 -- 50 instr
; Funcion mediana (50 instr, 1 calls).
; tags: far, medium
; callers: sub_01F6, sub_0659
; calls (intra): sub_02A1
;----------------------------------------------------------------------
L_0231:
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
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        mov     si, ax                          ; 8B F0
        add     si, 0xc02                       ; 81 C6 02 0C
        mov     word ptr [bp - 4], si           ; 89 76 FC
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_0295                          ; 7C 40
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [si + 0xc], ax         ; 39 44 0C
        jle     L_0295                          ; 7E 38
        cmp     word ptr [si + 0x12], ax        ; 39 44 12
        je      L_0295                          ; 74 33
        push    word ptr [0x876]                ; FF 36 76 08
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02A1                          ; E8 33 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        mov     cx, word ptr [si + 8]           ; 8B 4C 08
        idiv    cx                              ; F7 F9
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [si + 0xe], dx         ; 89 54 0E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        push    word ptr [0x876]                ; FF 36 76 08
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02A1                          ; E8 0C 00
L_0295:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02A1 -- offset 0x02A1 -- 135 instr
; Dispatcher: tabla de decisiones cmp+jcc (135 instr).
; tags: calls_gdi, dispatcher, far
; callers: sub_0231, sub_048E, sub_0659, sub_0A66
; calls (inter): GDI.PATBLT
;----------------------------------------------------------------------
L_02A1:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x22                        ; 83 EC 22
        push    si                              ; 56
        cmp     word ptr [bp + 8], -1           ; 83 7E 08 FF
        jg      L_02B8                          ; 7F 03
        jmp     L_03D6                          ; E9 1E 01
L_02B8:
        cmp     word ptr [bp + 8], 4            ; 83 7E 08 04
        jl      L_02C1                          ; 7C 03
        jmp     L_03D6                          ; E9 15 01
L_02C1:
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     si, ax                          ; 8B F0
        add     si, 0xc02                       ; 81 C6 02 0C
        mov     word ptr [bp - 0x14], si        ; 89 76 EC
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 0xe], si         ; 89 76 F2
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        sub     ax, word ptr [bp - 0x20]        ; 2B 46 E0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr [bp - 0x22]        ; 2B 46 DE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        imul    word ptr [bp - 6]               ; F7 6E FA
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x1e]        ; 8B 4E E2
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        imul    word ptr [bp - 0x1a]            ; F7 6E E6
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp - 0x22]        ; 03 46 DE
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        imul    word ptr [bp - 4]               ; F7 6E FC
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x1e]        ; 8B 4E E2
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        inc     ax                              ; 40
        imul    word ptr [bp - 8]               ; F7 6E F8
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp - 0x22]        ; 03 46 DE
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_0367                          ; 75 06
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        inc     word ptr [bp - 0x18]            ; FF 46 E8
L_0367:
        cmp     word ptr [bp + 8], 3            ; 83 7E 08 03
        jne     L_03B2                          ; 75 45
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [0x116c]           ; A1 6C 11
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     ax, word ptr [bp - 0x10]        ; 03 46 F0
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0xa44]            ; A1 44 0A
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     ax, word ptr [bp - 0x18]        ; 03 46 E8
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0x116c]           ; A1 6C 11
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xa44]            ; A1 44 0A
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A D2 03 00 00 [FIXUP]
L_03B2:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x18]            ; FF 76 E8
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     ax, word ptr [bp - 0x18]        ; 2B 46 E8
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
L_03D6:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03E2 -- offset 0x03E2 -- 35 instr
; Funcion mediana (35 instr, 2 calls).
; tags: calls_gdi, far, medium
; callers: sub_0659
; calls (inter): GDI.CREATEPEN, GDI.GETSTOCKOBJECT
;----------------------------------------------------------------------
L_03E2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [0xaca]                ; FF 36 CA 0A
        call    far _entry_19                   ; 9A 73 04 00 00 [FIXUP]
        mov     ax, word ptr [0xc28]            ; A1 28 0C
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        sub     ax, 3                           ; 2D 03 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jl      L_0418                          ; 7C 0F
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEPEN               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0421                          ; EB 09
L_0418:
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
L_0421:
        mov     word ptr [0xaca], ax            ; A3 CA 0A
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_042D -- offset 0x042D -- 43 instr
; Funcion mediana (43 instr, 2 calls).
; tags: calls_gdi, far, medium
; callers: sub_0659
; calls (inter): GDI.CREATEBITMAP, GDI.CREATEPATTERNBRUSH
;----------------------------------------------------------------------
L_042D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 6], 0xc3e        ; C7 46 FA 3E 0C
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0xc50]            ; A1 50 0C
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     ax, 0xd8                        ; 05 D8 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0485                          ; 74 24
        push    ax                              ; 50
        call    far GDI.CREATEPATTERNBRUSH      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_047D                          ; 74 0F
        push    word ptr [0x874]                ; FF 36 74 08
        call    far _entry_19                   ; 9A 81 04 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [0x874], ax            ; A3 74 08
L_047D:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_19                   ; 9A 12 00 00 00 [FIXUP]
L_0485:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_048E -- offset 0x048E -- 146 instr
; Funcion compleja: 146 instrucciones, 8 llamadas, 1 branches.
; tags: calls_user, complex, far
; callers: sub_0659
; calls (intra): sub_02A1, sub_0EC7
; calls (inter): USER.CREATEWINDOW, USER.ENABLEWINDOW, USER.GETDC, USER.GETSYSTEMMETRICS, USER.RELEASEDC, USER.SETACTIVEWINDOW
;----------------------------------------------------------------------
L_048E:
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
        mov     word ptr [bp - 4], 0xc2a        ; C7 46 FC 2A 0C
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0xc38]                ; F7 2E 38 0C
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0xc3a]            ; 8B 1E 3A 0C
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si + 0x7b0]  ; 8B 80 B0 07
        mov     word ptr [0xca0], ax            ; A3 A0 0C
        pop     si                              ; 5E
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
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x876], ax            ; A3 76 08
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        mov     si, ax                          ; 8B F0
        add     si, 0xc02                       ; 81 C6 02 0C
        mov     word ptr [bp - 8], si           ; 89 76 F8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_053B                          ; 75 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETDC                  ; 9A 16 07 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02A1                          ; E8 A0 FD
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far USER.RELEASEDC              ; 9A 43 07 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0EC7                          ; E8 AF 09
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si]               ; 2B 04
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [si + 2]           ; 2B 44 02
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_38                   ; 9A 67 00 00 00 [FIXUP]
        call    far _entry_74                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_054F                          ; EB 14
L_053B:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, word ptr [bx]               ; 2B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        sub     ax, word ptr [bx + 2]           ; 2B 47 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_054F:
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 62 05 00 00 [FIXUP]
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 4], ax           ; 01 46 FC
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_129                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7e2                       ; B8 E2 07
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x9040                      ; BA 40 90
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, word ptr [bp - 0xe]         ; 8B 4E F2
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, word ptr [bp - 0xc]         ; 8B 4E F4
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x111c]               ; FF 36 1C 11
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FE 06 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far USER.SETACTIVEWINDOW        ; 9A 06 07 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05E4 -- offset 0x05E4 -- 47 instr
; Funcion mediana (47 instr, 2 calls).
; tags: calls_user, medium
; callers: sub_0D01
; calls (inter): USER.CLIENTTOSCREEN, USER.SETCURSORPOS
;----------------------------------------------------------------------
L_05E4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        mov     si, ax                          ; 8B F0
        add     si, 0xc02                       ; 81 C6 02 0C
        mov     word ptr [bp - 0xa], si         ; 89 76 F6
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si]               ; 2B 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        imul    word ptr [bp - 2]               ; F7 6E FE
        cdq                                     ; 99
        mov     cx, word ptr [si + 0xa]         ; 8B 4C 0A
        shl     cx, 1                           ; D1 E1
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        imul    word ptr [bp - 4]               ; F7 6E FC
        cdq                                     ; 99
        mov     cx, word ptr [si + 8]           ; 8B 4C 08
        shl     cx, 1                           ; D1 E1
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far USER.SETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
        mov     word ptr [0xba4], ax            ; A3 A4 0B
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0659 -- offset 0x0659 -- 147 instr
; Dispatcher: tabla de decisiones cmp+jcc (147 instr).
; tags: calls_user, dispatcher
; callers: sub_0B09, sub_0D01
; calls (intra): sub_01F6, sub_0231, sub_02A1, sub_03E2, sub_042D, sub_048E (+2 mas)
; calls (inter): USER.DESTROYWINDOW, USER.ENABLEWINDOW, USER.GETDC, USER.GETPARENT, USER.PTINRECT, USER.RELEASECAPTURE (+4 mas)
;----------------------------------------------------------------------
L_0659:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x200                       ; 3D 00 02
        jne     L_066A                          ; 75 03
        jmp     L_07C2                          ; E9 58 01
L_066A:
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_0672                          ; 75 03
        jmp     L_078B                          ; E9 19 01
L_0672:
        cmp     ax, 0x202                       ; 3D 02 02
        je      L_067A                          ; 74 03
        jmp     L_07EB                          ; E9 71 01
L_067A:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_0684                          ; 7F 03
        jmp     L_07EB                          ; E9 67 01
L_0684:
        dec     word ptr [0x878]                ; FF 0E 78 08
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        je      L_0692                          ; 74 03
        jmp     L_07EB                          ; E9 59 01
L_0692:
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        add     ax, 0xc02                       ; 05 02 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        call    far USER.PTINRECT               ; 9A 4F 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_06B4                          ; 75 03
        jmp     L_0764                          ; E9 B0 00
L_06B4:
        mov     ax, word ptr [0x876]            ; A1 76 08
        or      ax, ax                          ; 0B C0
        je      L_06D2                          ; 74 17
        cmp     ax, 1                           ; 3D 01 00
        jne     L_06C3                          ; 75 03
        jmp     L_0756                          ; E9 93 00
L_06C3:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_06CB                          ; 75 03
        jmp     L_075D                          ; E9 92 00
L_06CB:
        cmp     ax, 3                           ; 3D 03 00
        je      L_074F                          ; 74 7F
        jmp     L_06ED                          ; EB 1B
L_06D2:
        push    word ptr [0xbac]                ; FF 36 AC 0B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0EC7                          ; E8 E9 07
        mov     bx, word ptr [0xc14]            ; 8B 1E 14 0C
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0xe08]           ; FF B7 08 0E
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
L_06ED:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.SETACTIVEWINDOW        ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.GETDC                  ; 9A 68 07 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        push    ax                              ; 50
        push    word ptr [0x876]                ; FF 36 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F61                          ; E8 37 08
        cmp     word ptr [0x876], 0             ; 83 3E 76 08 00
        jne     L_073C                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02A1                          ; E8 65 FB
L_073C:
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.RELEASEDC              ; 9A 80 07 00 00 [FIXUP]
        mov     word ptr [0x876], 0xffff        ; C7 06 76 08 FF FF
        jmp     L_0784                          ; EB 35
L_074F:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_042D                          ; E8 D9 FC
        jmp     L_06ED                          ; EB 97
L_0756:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03E2                          ; E8 87 FC
        jmp     L_06ED                          ; EB 90
L_075D:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_048E                          ; E8 2C FD
        jmp     L_06ED                          ; EB 89
L_0764:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A 9E 07 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        push    word ptr [0xba4]                ; FF 36 A4 0B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0231                          ; E8 B8 FA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.RELEASEDC              ; 9A B8 07 00 00 [FIXUP]
L_0784:
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07EB                          ; EB 60
L_078B:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_07BC                          ; 75 2A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A 6F 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01F6                          ; E8 45 FA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.RELEASEDC              ; 9A C0 00 00 00 [FIXUP]
L_07BC:
        inc     word ptr [0x878]                ; FF 06 78 08
        jmp     L_07EB                          ; EB 29
L_07C2:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jle     L_07EB                          ; 7E 22
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A EF 04 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01F6                          ; E8 16 FA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.RELEASEDC              ; 9A 08 05 00 00 [FIXUP]
L_07EB:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07F1 -- offset 0x07F1 -- 60 instr
; Funcion mediana (60 instr, 4 calls).
; tags: calls_gdi, medium
; callers: sub_0A66
; calls (inter): GDI.CREATEBITMAP, GDI.GETSTOCKOBJECT, GDI.PATBLT, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_07F1:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        mov     word ptr [bp - 0x10], 4         ; C7 46 F0 04 00
        mov     word ptr [bp - 8], 9            ; C7 46 F8 09 00
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 48 08 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 4E 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x1b                        ; B8 1B 00
        imul    word ptr [0x116c]               ; F7 2E 6C 11
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0xa44]                ; F7 2E 44 0A
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A AE 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 6B 09 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A B7 08 00 00 [FIXUP]
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A 56 04 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
L_0872:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_087D                          ; 7C 03
        jmp     L_095C                          ; E9 DF 00
L_087D:
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
L_0882:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jl      L_088D                          ; 7C 03
        jmp     L_0950                          ; E9 C3 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_088D -- offset 0x088D -- 91 instr
; Funcion compleja: 91 instrucciones, 5 llamadas, 1 branches.
; tags: calls_gdi, complex
; calls (inter): GDI.CREATEPATTERNBRUSH, GDI.GETSTOCKOBJECT, GDI.RECTANGLE, GDI.SELECTOBJECT, GDI.SETBITMAPBITS
;----------------------------------------------------------------------
L_088D:
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x10                        ; B8 10 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     ax, 0xd8                        ; 05 D8 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.SETBITMAPBITS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.CREATEPATTERNBRUSH      ; 9A 63 04 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 3B 09 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x116c]               ; F7 2E 6C 11
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, word ptr [0x116c]           ; 2B 06 6C 11
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, 3                           ; B9 03 00
        mov     dx, ax                          ; 8B D0
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     bx, dx                          ; 8B DA
        imul    word ptr [0x116c]               ; F7 2E 6C 11
        imul    cx                              ; F7 E9
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, bx                          ; 03 C3
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, cx                          ; 8B C1
        imul    word ptr [0xa44]                ; F7 2E 44 0A
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, word ptr [0xa44]            ; 2B 06 44 0A
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     dx, ax                          ; 8B D0
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     bx, dx                          ; 8B DA
        imul    word ptr [0xa44]                ; F7 2E 44 0A
        imul    cx                              ; F7 E9
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, bx                          ; 03 C3
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, word ptr [0x116c]           ; 03 06 6C 11
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0xa44]            ; 03 06 44 0A
        push    ax                              ; 50
        call    far GDI.RECTANGLE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.SELECTOBJECT            ; 9A 71 09 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_19                   ; 9A 60 09 00 00 [FIXUP]
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        cmp     word ptr [bp - 0xa], 0x24       ; 83 7E F6 24
        jl      L_0956                          ; 7C 06
L_0950:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        jmp     L_0872                          ; E9 1C FF
L_0956:
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        jmp     L_0882                          ; E9 26 FF
L_095C:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_19                   ; 9A F4 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 8A 09 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 90 09 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_097B -- offset 0x097B -- 69 instr
; Funcion mediana (69 instr, 4 calls).
; tags: calls_gdi, medium
; callers: sub_0A66
; calls (intra): sub_0A40
; calls (inter): GDI.GETSTOCKOBJECT, GDI.POLYGON, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_097B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 9C 09 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A A2 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 1D 04 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], 4            ; C7 46 FE 04 00
        mov     word ptr [bp - 6], 6            ; C7 46 FA 06 00
        mov     word ptr [bp - 8], 0x14         ; C7 46 F8 14 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0A31                          ; EB 75
L_09BC:
        mov     word ptr [bp - 0xa], 0xa        ; C7 46 F6 0A 00
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_0A22                          ; EB 5A
L_09C8:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 0xe]             ; F7 6E F2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + si + 0x7b0]  ; 8B 80 B0 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    ax                              ; 50
        push    word ptr [si + 0x584]           ; FF B4 84 05
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_0A40                          ; E8 56 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x584]           ; FF B7 84 05
        call    far GDI.POLYGON                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x584]           ; FF B7 84 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    L_0A40                          ; E8 25 00
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        add     word ptr [bp - 0xa], 0x14       ; 83 46 F6 14
L_0A22:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_09C8                          ; 7C 9E
        inc     word ptr [bp - 4]               ; FF 46 FC
        add     word ptr [bp - 8], 0x28         ; 83 46 F8 28
L_0A31:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_09BC                          ; 7C 83
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A40 -- offset 0x0A40 -- 15 instr
; Funcion hoja (no llama a otras, 15 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_097B
;----------------------------------------------------------------------
L_0A40:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        jmp     L_0A57                          ; EB 12
L_0A45:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr [bx], ax               ; 01 07
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [bx + 2], ax           ; 01 47 02
        add     word ptr [bp + 0xa], 4          ; 83 46 0A 04
L_0A57:
        dec     word ptr [bp + 8]               ; FF 4E 08
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_0A45                          ; 7D E5
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A66 -- offset 0x0A66 -- 64 instr
; Funcion mediana (64 instr, 5 calls).
; tags: calls_gdi, medium
; callers: sub_0D01
; calls (intra): sub_02A1, sub_07F1, sub_097B
; calls (inter): GDI.BITBLT, GDI.DELETEDC
;----------------------------------------------------------------------
L_0A66:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [0x876]            ; A1 76 08
        or      ax, ax                          ; 0B C0
        je      L_0A84                          ; 74 11
        cmp     ax, 1                           ; 3D 01 00
        je      L_0AD1                          ; 74 59
        cmp     ax, 2                           ; 3D 02 00
        je      L_0AF1                          ; 74 74
        cmp     ax, 3                           ; 3D 03 00
        je      L_0AC9                          ; 74 47
        jmp     L_0AF7                          ; EB 73
L_0A84:
        push    word ptr [0xca4]                ; FF 36 A4 0C
        call    far _entry_27                   ; 9A D6 0A 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0xe06]                ; F7 2E 06 0E
        add     ax, 0xd                         ; 05 0D 00
        push    ax                              ; 50
        mov     ax, word ptr [0xe5c]            ; A1 5C 0E
        shl     ax, 1                           ; D1 E0
        add     ax, 3                           ; 05 03 00
L_0AAA:
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0AF7                          ; EB 2E
L_0AC9:
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_07F1                          ; E8 22 FD
        jmp     L_0AF7                          ; EB 26
L_0AD1:
        push    word ptr [0xe96]                ; FF 36 96 0E
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xe06]                ; FF 36 06 0E
        mov     ax, 5                           ; B8 05 00
        imul    word ptr [0xe5c]                ; F7 2E 5C 0E
        jmp     L_0AAA                          ; EB B9
L_0AF1:
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_097B                          ; E8 84 FE
L_0AF7:
        push    word ptr [0x876]                ; FF 36 76 08
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02A1                          ; E8 9E F7
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B09 -- offset 0x0B09 -- 175 instr
; Dispatcher: tabla de decisiones cmp+jcc (175 instr).
; tags: calls_user, dispatcher
; callers: sub_0D01
; calls (intra): sub_0659
; calls (inter): USER.CLIENTTOSCREEN, USER.GETCURSORPOS, USER.SCREENTOCLIENT, USER.SETCURSORPOS
;----------------------------------------------------------------------
L_0B09:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1e                        ; 83 EC 1E
        push    si                              ; 56
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        mov     si, ax                          ; 8B F0
        add     si, 0xc02                       ; 81 C6 02 0C
        mov     word ptr [bp - 0x14], si        ; 89 76 EC
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_0B83                          ; 74 27
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_0B83                          ; 74 22
        cmp     ax, 0x25                        ; 3D 25 00
        jne     L_0B69                          ; 75 03
        jmp     L_0C81                          ; E9 18 01
L_0B69:
        cmp     ax, 0x26                        ; 3D 26 00
        jne     L_0B71                          ; 75 03
        jmp     L_0C23                          ; E9 B2 00
L_0B71:
        cmp     ax, 0x27                        ; 3D 27 00
        jne     L_0B79                          ; 75 03
        jmp     L_0CB0                          ; E9 37 01
L_0B79:
        cmp     ax, 0x28                        ; 3D 28 00
        jne     L_0B81                          ; 75 03
        jmp     L_0C52                          ; E9 D1 00
L_0B81:
        jmp     L_0B99                          ; EB 16
L_0B83:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_0B99                          ; 7C 10
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_0B94                          ; 75 04
        inc     word ptr [0x878]                ; FF 06 78 08
L_0B94:
        mov     word ptr [bp - 0x12], 0x202     ; C7 46 EE 02 02
L_0B99:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jne     L_0BA2                          ; 75 03
        jmp     L_0CED                          ; E9 4B 01
L_0BA2:
        cmp     word ptr [bp - 0x12], 0x200     ; 81 7E EE 00 02
        je      L_0BAC                          ; 74 03
        jmp     L_0CDF                          ; E9 33 01
L_0BAC:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        sub     ax, word ptr [bp - 0x1e]        ; 2B 46 E2
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        imul    word ptr [bp - 2]               ; F7 6E FE
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x16]        ; 8B 4E EA
        shl     cx, 1                           ; D1 E1
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        imul    word ptr [bp - 8]               ; F7 6E F8
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        shl     cx, 1                           ; D1 E1
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A 99 0D 00 00 [FIXUP]
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far USER.SETCURSORPOS           ; 9A A4 0D 00 00 [FIXUP]
        jmp     L_0CED                          ; E9 CA 00
L_0C23:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0C2C                          ; 7D 03
        jmp     L_0B99                          ; E9 6D FF
L_0C2C:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_0C37                          ; 75 04
        inc     word ptr [0x878]                ; FF 06 78 08
L_0C37:
        mov     word ptr [bp - 0x12], 0x200     ; C7 46 EE 00 02
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jl      L_0C48                          ; 7C 03
        jmp     L_0B99                          ; E9 51 FF
L_0C48:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        dec     ax                              ; 48
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_0B99                          ; E9 47 FF
L_0C52:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0C5B                          ; 7D 03
        jmp     L_0B99                          ; E9 3E FF
L_0C5B:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_0C66                          ; 75 04
        inc     word ptr [0x878]                ; FF 06 78 08
L_0C66:
        mov     word ptr [bp - 0x12], 0x200     ; C7 46 EE 00 02
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_0C79                          ; 7D 03
        jmp     L_0B99                          ; E9 20 FF
L_0C79:
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        jmp     L_0B99                          ; E9 18 FF
L_0C81:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0C8A                          ; 7D 03
        jmp     L_0B99                          ; E9 0F FF
L_0C8A:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_0C95                          ; 75 04
        inc     word ptr [0x878]                ; FF 06 78 08
L_0C95:
        mov     word ptr [bp - 0x12], 0x200     ; C7 46 EE 00 02
        dec     word ptr [bp - 4]               ; FF 4E FC
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jl      L_0CA6                          ; 7C 03
        jmp     L_0B99                          ; E9 F3 FE
L_0CA6:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0B99                          ; E9 E9 FE
L_0CB0:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0CB9                          ; 7D 03
        jmp     L_0B99                          ; E9 E0 FE
L_0CB9:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_0CC4                          ; 75 04
        inc     word ptr [0x878]                ; FF 06 78 08
L_0CC4:
        mov     word ptr [bp - 0x12], 0x200     ; C7 46 EE 00 02
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_0CD7                          ; 7D 03
        jmp     L_0B99                          ; E9 C2 FE
L_0CD7:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0B99                          ; E9 BA FE
L_0CDF:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x12]            ; FF 76 EE
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0659                          ; E8 6C F9
L_0CED:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jne     L_0CF8                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0CFA                          ; EB 02
L_0CF8:
        sub     ax, ax                          ; 2B C0
L_0CFA:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D01 -- offset 0x0D01 -- 177 instr
; Dispatcher: tabla de decisiones cmp+jcc (177 instr).
; tags: calls_user, dispatcher, far
; calls (intra): sub_05E4, sub_0659, sub_0A66, sub_0B09
; calls (inter): USER.BEGINPAINT, USER.CLIENTTOSCREEN, USER.DEFWINDOWPROC, USER.ENDPAINT, USER.GETCURSORPOS, USER.GETSYSTEMMETRICS (+4 mas)
;----------------------------------------------------------------------
L_0D01:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        cmp     word ptr [bp + 4], 7            ; 83 7E 04 07
        je      L_0D11                          ; 74 03
        jmp     L_0DA8                          ; E9 97 00
L_0D11:
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        mov     si, ax                          ; 8B F0
        add     si, 0xc02                       ; 81 C6 02 0C
        mov     word ptr [bp - 6], si           ; 89 76 FA
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si]               ; 2B 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [si + 2]           ; 2B 44 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCURSORPOS           ; 9A 16 0B 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A 23 0B 00 00 [FIXUP]
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_0D65                          ; 7C 16
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_0D65                          ; 7D 0E
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jl      L_0D65                          ; 7C 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_0DA8                          ; 7C 43
L_0D65:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        imul    word ptr [bp - 2]               ; F7 6E FE
        cdq                                     ; 99
        mov     cx, word ptr [bx + 0xa]         ; 8B 4F 0A
        shl     cx, 1                           ; D1 E1
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        imul    word ptr [bp - 4]               ; F7 6E FC
        cdq                                     ; 99
        mov     cx, word ptr [bx + 8]           ; 8B 4F 08
        shl     cx, 1                           ; D1 E1
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A 3A 06 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.SETCURSORPOS           ; 9A 45 06 00 00 [FIXUP]
L_0DA8:
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 54 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0DC8                          ; 75 13
        cmp     word ptr [bp + 4], 7            ; 83 7E 04 07
        jne     L_0DC0                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0DC2                          ; EB 02
L_0DC0:
        sub     ax, ax                          ; 2B C0
L_0DC2:
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
L_0DC8:
        pop     si                              ; 5E
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
        sub     sp, 0x26                        ; 83 EC 26
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 8                           ; 3D 08 00
        jbe     L_0DEF                          ; 76 03
        jmp     L_0E9E                          ; E9 AF 00
L_0DEF:
        cmp     ax, 7                           ; 3D 07 00
        jb      L_0DF7                          ; 72 03
        jmp     L_0E79                          ; E9 82 00
L_0DF7:
        cmp     ax, 1                           ; 3D 01 00
        je      L_0E06                          ; 74 0A
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0E04                          ; 75 03
        jmp     L_0E84                          ; E9 80 00
L_0E04:
        jmp     L_0E5D                          ; EB 57
L_0E06:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_05E4                          ; E8 D8 F7
L_0E0C:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        jmp     L_0EBC                          ; E9 A7 00
L_0E15:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0659                          ; E8 36 F8
        jmp     L_0E0C                          ; EB E7
L_0E25:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x26]            ; FF 76 DA
        call    L_0A66                          ; E8 2B FC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0E0C                          ; EB C2
L_0E4A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0B09                          ; E8 B0 FC
        or      ax, ax                          ; 0B C0
        je      L_0E0C                          ; 74 AF
L_0E5D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_0E0C                          ; EB 93
L_0E79:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_0D01                          ; E8 7F FE
        jmp     L_0E0C                          ; EB 88
L_0E84:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0E0C                          ; 74 82
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0E93                          ; 74 03
        jmp     L_0E0C                          ; E9 79 FF
L_0E93:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0E0C                          ; E9 6E FF
L_0E9E:
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_0E25                          ; 74 82
        cmp     ax, 0x100                       ; 3D 00 01
        jb      L_0E5D                          ; 72 B5
        cmp     ax, 0x101                       ; 3D 01 01
        jbe     L_0E4A                          ; 76 9D
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_0E5D                          ; 72 AB
        cmp     ax, 0x202                       ; 3D 02 02
        ja      L_0EBA                          ; 77 03
        jmp     L_0E15                          ; E9 5B FF
L_0EBA:
        jmp     L_0E5D                          ; EB A1
L_0EBC:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0EC7 -- offset 0x0EC7 -- 65 instr
; Funcion mediana (65 instr, 0 calls).
; tags: far, medium
; callers: sub_048E, sub_0659
;----------------------------------------------------------------------
L_0EC7:
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
        mov     word ptr [bp - 4], 0xc02        ; C7 46 FC 02 0C
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0EEF                          ; 74 0E
        mov     word ptr [0xc02], 0             ; C7 06 02 0C 00 00
        mov     word ptr [0xc04], 0             ; C7 06 04 0C 00 00
        jmp     L_0F2E                          ; EB 3F
L_0EEF:
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0xe06]                ; F7 2E 06 0E
        mov     si, ax                          ; 8B F0
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0xe06]                ; F7 2E 06 0E
        sub     di, ax                          ; 2B F8
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sub     di, ax                          ; 2B F8
        sub     di, 0xd                         ; 83 EF 0D
        cmp     di, si                          ; 3B FE
        jge     L_0F22                          ; 7D 04
        mov     ax, si                          ; 8B C6
        jmp     L_0F24                          ; EB 02
L_0F22:
        mov     ax, di                          ; 8B C7
L_0F24:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], 1            ; C7 47 02 01 00
L_0F2E:
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0xe06]                ; F7 2E 06 0E
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     cx, word ptr [bx]               ; 8B 0F
        add     cx, ax                          ; 03 C8
        add     cx, 0xc                         ; 83 C1 0C
        mov     word ptr [bx + 4], cx           ; 89 4F 04
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     cx, word ptr [0xe5c]            ; 8B 0E 5C 0E
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bx + 6], ax           ; 89 47 06
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F61 -- offset 0x0F61 -- 225 instr
; Funcion compleja: 225 instrucciones, 7 llamadas, 4 branches.
; tags: calls_gdi, complex
; callers: sub_0659
; calls (inter): GDI.BITBLT, GDI.DELETEDC, GDI.GETSTOCKOBJECT, GDI.PATBLT, GDI.RECTANGLE, GDI.SELECTOBJECT (+1 mas)
;----------------------------------------------------------------------
L_0F61:
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
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        add     ax, 0xc02                       ; 05 02 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        je      L_0FBD                          ; 74 17
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0FAE                          ; 75 03
        jmp     L_111B                          ; E9 6D 01
L_0FAE:
        cmp     ax, cx                          ; 3B C1
        jne     L_0FB5                          ; 75 03
        jmp     L_109F                          ; E9 EA 00
L_0FB5:
        cmp     ax, 3                           ; 3D 03 00
        je      L_1015                          ; 74 5B
        jmp     L_1163                          ; E9 A6 01
L_0FBD:
        push    word ptr [0xca4]                ; FF 36 A4 0C
        call    far _entry_27                   ; 9A 20 11 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [0xe06]                ; FF 36 06 0E
        mov     ax, word ptr [0xe5c]            ; A1 5C 0E
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        mov     cx, word ptr [0xe06]            ; 8B 0E 06 0E
        inc     cx                              ; 41
        imul    cx                              ; F7 E9
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     cx, word ptr [0xe5c]            ; 8B 0E 5C 0E
        inc     cx                              ; 41
        imul    cx                              ; F7 E9
L_0FFB:
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A BB 0A 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.DELETEDC                ; 9A C3 0A 00 00 [FIXUP]
        jmp     L_1163                          ; E9 4E 01
L_1015:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_131                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A A6 10 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A AC 10 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        add     ax, word ptr [0xe06]            ; 03 06 06 0E
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0xe5c]            ; A1 5C 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        imul    word ptr [0xe06]                ; F7 2E 06 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        add     ax, word ptr [0xe06]            ; 03 06 06 0E
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        imul    word ptr [0xe5c]                ; F7 2E 5C 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        push    ax                              ; 50
        call    far GDI.RECTANGLE               ; 9A 30 09 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_130                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1163                          ; E9 C4 00
L_109F:
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A E5 10 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A EB 10 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xe5c]            ; 03 06 5C 0E
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        mov     ax, word ptr [0xe5c]            ; A1 5C 0E
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 3C 08 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 08 08 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 0E 08 00 00 [FIXUP]
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0xe5c]                ; F7 2E 5C 0E
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     si, ax                          ; 8B F0
        add     si, word ptr [bp - 6]           ; 03 76 FA
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     di, ax                          ; 8B F8
        add     di, word ptr [bp - 4]           ; 03 7E FC
        push    word ptr [bp + 8]               ; FF 76 08
        push    di                              ; 57
        push    si                              ; 56
        push    di                              ; 57
        push    si                              ; 56
        call    far _entry_68                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1163                          ; EB 48
L_111B:
        push    word ptr [0xe96]                ; FF 36 96 0E
        call    far _entry_27                   ; 9A 89 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0xe06]            ; 03 06 06 0E
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xe5c]            ; 03 06 5C 0E
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xe5c]            ; A1 5C 0E
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        imul    word ptr [0xe06]                ; F7 2E 06 0E
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        imul    word ptr [0xe5c]                ; F7 2E 5C 0E
        jmp     L_0FFB                          ; E9 98 FE
L_1163:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

PAINT_TEXT ENDS

        END
