; AUTO-GENERATED from original PAINT segment 18
; segment_size=864 bytes, flags=0xf130
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
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_004F                          ; E8 33 00
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
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_004F                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_004F -- offset 0x004F -- 59 instr
; Funcion mediana (59 instr, 2 calls).
; tags: calls_gdi, medium
; calls (inter): GDI.GETSTOCKOBJECT, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_004F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 6F 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 75 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x1172]           ; A1 72 11
        sub     ax, word ptr [0xbf0]            ; 2B 06 F0 0B
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x1174]           ; A1 74 11
        sub     ax, word ptr [0xbf2]            ; 2B 06 F2 0B
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [0xe8e]                ; FF 36 8E 0E
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        call    far GDI.MULDIV                  ; 9A AC 00 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0x10be]               ; FF 36 BE 10
        push    word ptr [0xc76]                ; FF 36 76 0C
        call    far GDI.MULDIV                  ; 9A BD 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        push    word ptr [0xda6]                ; FF 36 A6 0D
        push    word ptr [0xca2]                ; FF 36 A2 0C
        call    far GDI.MULDIV                  ; 9A DD 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        push    ax                              ; 50
        call    far _entry_140                  ; 9A A1 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        push    word ptr [0xca2]                ; FF 36 A2 0C
        push    word ptr [0xda6]                ; FF 36 A6 0D
        call    far GDI.MULDIV                  ; 9A F0 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        push    word ptr [0xe8e]                ; FF 36 8E 0E
        call    far GDI.MULDIV                  ; 9A 03 01 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xc76]                ; FF 36 76 0C
        push    word ptr [0x10be]               ; FF 36 BE 10
        call    far GDI.MULDIV                  ; 9A 71 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0113                          ; 75 03
        jmp     L_0269                          ; E9 56 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0113 -- offset 0x0113 -- 109 instr
; Funcion compleja: 109 instrucciones, 6 llamadas, 4 branches.
; tags: calls_gdi, calls_user, complex
; calls (inter): GDI.ELLIPSE, GDI.GETBKMODE, GDI.MULDIV, GDI.SETBKMODE, GDI.SETROP2, USER.GETKEYSTATE
;----------------------------------------------------------------------
L_0113:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A 4D 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0xbf0]            ; 03 06 F0 0B
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xbf2]            ; 03 06 F2 0B
        push    ax                              ; 50
        call    far GDI.ELLIPSE                 ; 9A 3E 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A 7A 02 00 00 [FIXUP]
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        sub     ax, word ptr [0xbf0]            ; 2B 06 F0 0B
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        sub     ax, word ptr [0xbf2]            ; 2B 06 F2 0B
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [0xe8e]                ; FF 36 8E 0E
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        call    far GDI.MULDIV                  ; 9A 84 01 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0x10be]               ; FF 36 BE 10
        push    word ptr [0xc76]                ; FF 36 76 0C
        call    far GDI.MULDIV                  ; 9A 95 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        push    word ptr [0xda6]                ; FF 36 A6 0D
        push    word ptr [0xca2]                ; FF 36 A2 0C
        call    far GDI.MULDIV                  ; 9A B5 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        push    ax                              ; 50
        call    far _entry_140                  ; 9A F4 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        push    word ptr [0xca2]                ; FF 36 A2 0C
        push    word ptr [0xda6]                ; FF 36 A6 0D
        call    far GDI.MULDIV                  ; 9A C8 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        push    word ptr [0xe8e]                ; FF 36 8E 0E
        call    far GDI.MULDIV                  ; 9A DB 01 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xc76]                ; FF 36 76 0C
        push    word ptr [0x10be]               ; FF 36 BE 10
        call    far GDI.MULDIV                  ; 9A C4 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0214                          ; 74 2C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_131                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far GDI.GETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0214                          ; 7D 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A 5A 02 00 00 [FIXUP]
L_0214:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_134                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0xbf0]            ; 03 06 F0 0B
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xbf2]            ; 03 06 F2 0B
        push    ax                              ; 50
        call    far GDI.ELLIPSE                 ; 9A A0 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_133                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_0253                          ; 75 03
        jmp     L_035B                          ; E9 08 01
L_0253:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_130                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_035B                          ; E9 F2 00
L_0269:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0272                          ; 74 03
        jmp     L_035B                          ; E9 E9 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0272 -- offset 0x0272 -- 77 instr
; Funcion mediana (77 instr, 3 calls).
; tags: calls_gdi, medium
; calls (inter): GDI.ELLIPSE, GDI.MULDIV, GDI.SETROP2
;----------------------------------------------------------------------
L_0272:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0xbf0]            ; 03 06 F0 0B
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xbf2]            ; 03 06 F2 0B
        push    ax                              ; 50
        call    far GDI.ELLIPSE                 ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        sub     ax, word ptr [0xbf0]            ; 2B 06 F0 0B
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        sub     ax, word ptr [0xbf2]            ; 2B 06 F2 0B
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [0xe8e]                ; FF 36 8E 0E
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        call    far GDI.MULDIV                  ; 9A D7 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0x10be]               ; FF 36 BE 10
        push    word ptr [0xc76]                ; FF 36 76 0C
        call    far GDI.MULDIV                  ; 9A E8 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        push    word ptr [0xda6]                ; FF 36 A6 0D
        push    word ptr [0xca2]                ; FF 36 A2 0C
        call    far GDI.MULDIV                  ; 9A 08 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        push    ax                              ; 50
        call    far _entry_140                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        push    word ptr [0xca2]                ; FF 36 A2 0C
        push    word ptr [0xda6]                ; FF 36 A6 0D
        call    far GDI.MULDIV                  ; 9A 1B 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        push    word ptr [0xe8e]                ; FF 36 8E 0E
        call    far GDI.MULDIV                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xc76]                ; FF 36 76 0C
        push    word ptr [0x10be]               ; FF 36 BE 10
        call    far GDI.MULDIV                  ; 9A 99 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0xbf0]            ; 03 06 F0 0B
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xbf2]            ; 03 06 F2 0B
        push    ax                              ; 50
        call    far GDI.ELLIPSE                 ; 9A 41 01 00 00 [FIXUP]
L_035B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      00ah                            ; 0A

PAINT_TEXT ENDS

        END
