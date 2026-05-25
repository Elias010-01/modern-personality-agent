; AUTO-GENERATED from original PAINT segment 13
; segment_size=1641 bytes, flags=0xf130
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
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A 82 00 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0031                          ; 75 03
        jmp     L_00B9                          ; E9 88 00
L_0031:
        cmp     word ptr [0x554], 0             ; 83 3E 54 05 00
        jne     L_007A                          ; 75 42
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A C7 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A CD 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        call    far GDI.MOVETO                  ; 9A 9A 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xc80]                ; FF 36 80 0C
        push    word ptr [0xc82]                ; FF 36 82 0C
        call    far GDI.LINETO                  ; 9A AA 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xc80                       ; B8 80 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0273                          ; E8 F9 01
L_007A:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_134                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        call    far GDI.MOVETO                  ; 9A DD 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xa46]                ; FF 36 46 0A
        push    word ptr [0xa48]                ; FF 36 48 0A
        call    far GDI.LINETO                  ; 9A ED 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_133                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0266                          ; E9 AD 01
L_00B9:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_0101                          ; 75 42
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 2C 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 32 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        call    far GDI.MOVETO                  ; 9A 42 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xc80]                ; FF 36 80 0C
        push    word ptr [0xc82]                ; FF 36 82 0C
        call    far GDI.LINETO                  ; 9A 52 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xc80                       ; B8 80 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0273                          ; E8 72 01
L_0101:
        mov     si, word ptr [0xc8a]            ; 8B 36 8A 0C
        sub     si, word ptr [0xbf0]            ; 2B 36 F0 0B
        mov     word ptr [bp - 4], si           ; 89 76 FC
        mov     di, word ptr [0xc8c]            ; 8B 3E 8C 0C
        sub     di, word ptr [0xbf2]            ; 2B 3E F2 0B
        mov     word ptr [bp - 6], di           ; 89 7E FA
        or      di, di                          ; 0B FF
        jle     L_018F                          ; 7E 74
        or      si, si                          ; 0B F6
        jl      L_0123                          ; 7C 04
        mov     ax, si                          ; 8B C6
        jmp     L_0127                          ; EB 04
L_0123:
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
L_0127:
        cmp     ax, di                          ; 3B C7
        jg      L_012E                          ; 7F 03
        jmp     L_01FF                          ; E9 D1 00
L_012E:
        mov     word ptr [bp - 0x10], si        ; 89 76 F0
        or      si, si                          ; 0B F6
        jl      L_0139                          ; 7C 04
        mov     ax, di                          ; 8B C7
        jmp     L_013D                          ; EB 04
L_0139:
        mov     ax, di                          ; 8B C7
        neg     ax                              ; F7 D8
L_013D:
        push    ax                              ; 50
        push    word ptr [0xe60]                ; FF 36 60 0E
        push    word ptr [0xc92]                ; FF 36 92 0C
        call    far GDI.MULDIV                  ; 9A 86 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      si, si                          ; 0B F6
        jl      L_0156                          ; 7C 04
        mov     ax, si                          ; 8B C6
        jmp     L_015A                          ; EB 04
L_0156:
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
L_015A:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jl      L_0168                          ; 7C 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_016D                          ; EB 05
L_0168:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        neg     ax                              ; F7 D8
L_016D:
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        jl      L_0175                          ; 7C 03
        jmp     L_0204                          ; E9 8F 00
L_0175:
        mov     word ptr [bp - 4], si           ; 89 76 FC
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        push    ax                              ; 50
L_017D:
        push    word ptr [0xc92]                ; FF 36 92 0C
        push    word ptr [0xe60]                ; FF 36 60 0E
        call    far GDI.MULDIV                  ; 9A C9 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_0204                          ; EB 75
L_018F:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        mov     di, ax                          ; 8B F8
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jl      L_01A8                          ; 7C 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_01AA                          ; EB 02
L_01A8:
        mov     ax, si                          ; 8B C6
L_01AA:
        cmp     ax, di                          ; 3B C7
        jle     L_01FF                          ; 7E 51
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jg      L_01BD                          ; 7F 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_01BF                          ; EB 02
L_01BD:
        mov     ax, di                          ; 8B C7
L_01BF:
        push    ax                              ; 50
        push    word ptr [0xe60]                ; FF 36 60 0E
        push    word ptr [0xc92]                ; FF 36 92 0C
        call    far GDI.MULDIV                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jl      L_01DB                          ; 7C 05
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        jmp     L_01DD                          ; EB 02
L_01DB:
        mov     ax, si                          ; 8B C6
L_01DD:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jl      L_01EB                          ; 7C 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_01F0                          ; EB 05
L_01EB:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        neg     ax                              ; F7 D8
L_01F0:
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        jge     L_0204                          ; 7D 0F
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        jmp     L_017D                          ; E9 7E FF
L_01FF:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0204:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0xbf0]            ; 03 06 F0 0B
        mov     word ptr [0xa46], ax            ; A3 46 0A
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xbf2]            ; 03 06 F2 0B
        mov     word ptr [0xa48], ax            ; A3 48 0A
        mov     ax, word ptr [0xa46]            ; A1 46 0A
        mov     word ptr [0xc80], ax            ; A3 80 0C
        mov     ax, word ptr [0xa48]            ; A1 48 0A
        mov     word ptr [0xc82], ax            ; A3 82 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 81 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        call    far GDI.MOVETO                  ; 9A AA 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xa46]                ; FF 36 46 0A
        push    word ptr [0xa48]                ; FF 36 48 0A
        call    far GDI.LINETO                  ; 9A B8 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xa46                       ; B8 46 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0273                          ; E8 0D 00
L_0266:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0273 -- offset 0x0273 -- 115 instr
; Funcion compleja: 115 instrucciones, 9 llamadas, 0 branches.
; tags: calls_gdi, complex
; calls (intra): sub_03D1, sub_0463, sub_04F6, sub_058E, sub_0627, sub_0649
; calls (inter): GDI.LINETO, GDI.MOVETO, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_0273:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [0xc7e]                ; FF 36 7E 0C
        call    far GDI.SELECTOBJECT            ; 9A C7 03 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_03D1                          ; E8 35 01
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        call    far GDI.MOVETO                  ; 9A DE 02 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.LINETO                  ; 9A EC 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0463                          ; E8 93 01
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        call    far GDI.MOVETO                  ; 9A 12 03 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.LINETO                  ; 9A 20 03 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_04F6                          ; E8 F2 01
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        call    far GDI.MOVETO                  ; 9A 46 03 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.LINETO                  ; 9A 54 03 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_058E                          ; E8 56 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        call    far GDI.MOVETO                  ; 9A 7A 03 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.LINETO                  ; 9A 88 03 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0627                          ; E8 BB 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        call    far GDI.MOVETO                  ; 9A AE 03 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.LINETO                  ; 9A BC 03 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0649                          ; E8 A9 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03D1 -- offset 0x03D1 -- 54 instr
; Funcion mediana (54 instr, 1 calls).
; tags: calls_gdi, medium
; callers: sub_0273
; calls (inter): GDI.MULDIV
;----------------------------------------------------------------------
L_03D1:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     si, word ptr es:[bx]            ; 26 8B 37
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        push    ax                              ; 50
        push    word ptr [0xe60]                ; FF 36 60 0E
        push    word ptr [0xc92]                ; FF 36 92 0C
        call    far GDI.MULDIV                  ; 9A 44 04 00 00 [FIXUP]
        add     si, ax                          ; 03 F0
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx], si            ; 26 89 37
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        cmp     si, di                          ; 3B F7
        jge     L_045B                          ; 7D 40
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, si                          ; 3B C6
        je      L_045B                          ; 74 33
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        call    far GDI.MULDIV                  ; 9A 98 04 00 00 [FIXUP]
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     cx, word ptr es:[bx + 2]        ; 26 8B 4F 02
        add     cx, ax                          ; 03 C8
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 2], cx        ; 26 89 4F 02
        mov     word ptr es:[bx], di            ; 26 89 3F
L_045B:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0463 -- offset 0x0463 -- 55 instr
; Funcion mediana (55 instr, 1 calls).
; tags: calls_gdi, medium
; callers: sub_0273
; calls (inter): GDI.MULDIV
;----------------------------------------------------------------------
L_0463:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        dec     ax                              ; 48
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     si, word ptr es:[bx]            ; 26 8B 37
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        push    ax                              ; 50
        push    word ptr [0xe60]                ; FF 36 60 0E
        push    word ptr [0xc92]                ; FF 36 92 0C
        call    far GDI.MULDIV                  ; 9A D7 04 00 00 [FIXUP]
        sub     si, ax                          ; 2B F0
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx], si            ; 26 89 37
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        cmp     si, di                          ; 3B F7
        jge     L_04EE                          ; 7D 40
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, si                          ; 3B C6
        je      L_04EE                          ; 74 33
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        call    far GDI.MULDIV                  ; 9A 27 05 00 00 [FIXUP]
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     cx, word ptr es:[bx + 2]        ; 26 8B 4F 02
        add     cx, ax                          ; 03 C8
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 2], cx        ; 26 89 4F 02
        mov     word ptr es:[bx], di            ; 26 89 3F
L_04EE:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04F6 -- offset 0x04F6 -- 55 instr
; Funcion mediana (55 instr, 1 calls).
; tags: calls_gdi, medium
; callers: sub_0273
; calls (inter): GDI.MULDIV
;----------------------------------------------------------------------
L_04F6:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     si, word ptr es:[bx]            ; 26 8B 37
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        push    ax                              ; 50
        push    word ptr [0xe60]                ; FF 36 60 0E
        push    word ptr [0xc92]                ; FF 36 92 0C
        call    far GDI.MULDIV                  ; 9A 65 05 00 00 [FIXUP]
        sub     si, ax                          ; 2B F0
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx], si            ; 26 89 37
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 4], si        ; 26 39 77 04
        jge     L_0586                          ; 7D 4A
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        cmp     si, di                          ; 3B F7
        je      L_0586                          ; 74 40
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        call    far GDI.MULDIV                  ; 9A C0 05 00 00 [FIXUP]
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     cx, word ptr es:[bx + 2]        ; 26 8B 4F 02
        add     cx, ax                          ; 03 C8
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 2], cx        ; 26 89 4F 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx], ax            ; 26 89 07
L_0586:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_058E -- offset 0x058E -- 56 instr
; Funcion mediana (56 instr, 1 calls).
; tags: calls_gdi, medium
; callers: sub_0273
; calls (inter): GDI.MULDIV
;----------------------------------------------------------------------
L_058E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        dec     ax                              ; 48
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     si, word ptr es:[bx]            ; 26 8B 37
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        push    ax                              ; 50
        push    word ptr [0xe60]                ; FF 36 60 0E
        push    word ptr [0xc92]                ; FF 36 92 0C
        call    far GDI.MULDIV                  ; 9A FE 05 00 00 [FIXUP]
        add     si, ax                          ; 03 F0
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx], si            ; 26 89 37
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 4], si        ; 26 39 77 04
        jge     L_061F                          ; 7D 4A
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        cmp     si, di                          ; 3B F7
        je      L_061F                          ; 74 40
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        call    far GDI.MULDIV                  ; 9A 47 01 00 00 [FIXUP]
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     cx, word ptr es:[bx + 2]        ; 26 8B 4F 02
        add     cx, ax                          ; 03 C8
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 2], cx        ; 26 89 4F 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx], ax            ; 26 89 07
L_061F:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0627 -- offset 0x0627 -- 13 instr
; Funcion hoja (no llama a otras, 13 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0273
;----------------------------------------------------------------------
L_0627:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        dec     ax                              ; 48
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx], ax            ; 26 89 07
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0649 -- offset 0x0649 -- 13 instr
; Funcion hoja (no llama a otras, 13 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0273
;----------------------------------------------------------------------
L_0649:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx], ax            ; 26 89 07
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      00ch                            ; 0C

PAINT_TEXT ENDS

        END
