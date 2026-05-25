; AUTO-GENERATED from original PAINT segment 29
; segment_size=912 bytes, flags=0xf130
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
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A AA 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 5C 03 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 62 03 00 00 [FIXUP]
        cmp     word ptr [0x894], 0             ; 83 3E 94 08 00
        jg      L_0035                          ; 7F 03
        jmp     L_013E                          ; E9 09 01
L_0035:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_008B                          ; 74 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xb98]                ; FF 36 98 0B
        push    word ptr [0xb9a]                ; FF 36 9A 0B
        call    far GDI.MOVETO                  ; 9A 50 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xb9e]                ; FF 36 9E 0B
        push    word ptr [0xba0]                ; FF 36 A0 0B
        call    far GDI.LINETO                  ; 9A 60 01 00 00 [FIXUP]
        mov     ax, 2                           ; B8 02 00
        imul    word ptr [0xb98]                ; F7 2E 98 0B
        mov     word ptr [0xb98], ax            ; A3 98 0B
        mov     ax, 2                           ; B8 02 00
        imul    word ptr [0xb9a]                ; F7 2E 9A 0B
        mov     word ptr [0xb9a], ax            ; A3 9A 0B
        mov     ax, 2                           ; B8 02 00
        imul    word ptr [0xb9e]                ; F7 2E 9E 0B
        mov     word ptr [0xb9e], ax            ; A3 9E 0B
        mov     ax, 2                           ; B8 02 00
        imul    word ptr [0xba0]                ; F7 2E A0 0B
        mov     word ptr [0xba0], ax            ; A3 A0 0B
        mov     word ptr [0xc94], 0             ; C7 06 94 0C 00 00
        jmp     L_009C                          ; EB 11
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_008B -- offset 0x008B -- 105 instr
; Dispatcher: tabla de decisiones cmp+jcc (105 instr).
; tags: calls_gdi, dispatcher, far
; calls (intra): sub_01C8, sub_0293
; calls (inter): GDI.LINETO, GDI.MOVETO, GDI.POLYLINE, GDI.SETROP2
;----------------------------------------------------------------------
L_008B:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xeba                       ; B8 BA 0E
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xc94]                ; FF 36 94 0C
        call    far GDI.POLYLINE                ; 9A 2A 01 00 00 [FIXUP]
L_009C:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_00B6                          ; 74 14
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A 50 03 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_134                  ; 9A 01 03 00 00 [FIXUP]
L_00B6:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0xb98]            ; A1 98 0B
        add     ax, word ptr [0xb9e]            ; 03 06 9E 0B
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp - 4], cx           ; 89 4E FC
        mov     ax, word ptr [0xb9a]            ; A1 9A 0B
        add     ax, word ptr [0xba0]            ; 03 06 A0 0B
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, word ptr [bp - 8]           ; 8B 4E F8
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        mov     ax, cx                          ; 8B C1
        add     word ptr [bp - 8], ax           ; 01 46 F8
        mov     word ptr [0xc94], 0             ; C7 06 94 0C 00 00
        push    word ptr [0xb98]                ; FF 36 98 0B
        push    word ptr [0xb9a]                ; FF 36 9A 0B
        call    L_0293                          ; E8 89 01
        mov     ax, 0xb98                       ; B8 98 0B
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        mov     ax, 0xb9e                       ; B8 9E 0B
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    L_01C8                          ; E8 AB 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xeba                       ; B8 BA 0E
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xc94]                ; FF 36 94 0C
        call    far GDI.POLYLINE                ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_01A2                          ; 74 6E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_133                  ; 9A 29 03 00 00 [FIXUP]
        jmp     L_01A2                          ; EB 64
L_013E:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_0164                          ; 75 20
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        call    far GDI.MOVETO                  ; 9A 70 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x1172]               ; FF 36 72 11
        push    word ptr [0x1174]               ; FF 36 74 11
        call    far GDI.LINETO                  ; 9A 80 01 00 00 [FIXUP]
L_0164:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        call    far GDI.MOVETO                  ; 9A 11 03 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far GDI.LINETO                  ; 9A 21 03 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_01A2                          ; 74 18
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        mov     word ptr [0xb98], ax            ; A3 98 0B
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        mov     word ptr [0xb9a], ax            ; A3 9A 0B
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     word ptr [0xb9e], ax            ; A3 9E 0B
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        mov     word ptr [0xba0], ax            ; A3 A0 0B
L_01A2:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_01BD                          ; 74 15
        cmp     word ptr [0x894], 0             ; 83 3E 94 08 00
        jle     L_01B7                          ; 7E 08
        mov     word ptr [0x894], 0             ; C7 06 94 08 00 00
        jmp     L_01BD                          ; EB 06
L_01B7:
        mov     word ptr [0x894], 1             ; C7 06 94 08 01 00
L_01BD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01C8 -- offset 0x01C8 -- 90 instr
; Funcion compleja: 90 instrucciones, 1 llamadas, 1 branches.
; tags: complex
; callers: sub_008B
; calls (intra): sub_0293
;----------------------------------------------------------------------
L_01C8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x16                        ; 83 EC 16
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_01EF                          ; 75 19
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bx + 2]               ; FF 77 02
        call    L_0293                          ; E8 B2 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bx + 2]               ; FF 77 02
        call    L_0293                          ; E8 A7 00
        jmp     L_028B                          ; E9 9C 00
L_01EF:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     di, word ptr [bx]               ; 8B 3F
        mov     ax, di                          ; 8B C7
        add     ax, si                          ; 03 C6
        inc     ax                              ; 40
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        add     ax, word ptr [bx + 2]           ; 03 47 02
        inc     ax                              ; 40
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        add     ax, si                          ; 03 C6
        inc     ax                              ; 40
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     ax, word ptr [bx + 2]           ; 03 47 02
        inc     ax                              ; 40
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     cx, si                          ; 8B CE
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        add     ax, di                          ; 03 C7
        inc     ax                              ; 40
        inc     ax                              ; 40
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        shl     ax, 1                           ; D1 E0
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        add     ax, word ptr [bx + 2]           ; 03 47 02
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     ax, word ptr [bx + 2]           ; 03 47 02
        inc     ax                              ; 40
        inc     ax                              ; 40
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     ax                              ; 48
        push    ax                              ; 50
        call    L_01C8                          ; E8 50 FF
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     ax                              ; 48
        push    ax                              ; 50
        call    L_01C8                          ; E8 3D FF
L_028B:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0293 -- offset 0x0293 -- 96 instr
; Dispatcher: tabla de decisiones cmp+jcc (96 instr).
; tags: calls_gdi, dispatcher, far
; callers: sub_008B, sub_01C8
; calls (inter): GDI.GETSTOCKOBJECT, GDI.LINETO, GDI.MOVETO, GDI.SELECTOBJECT, GDI.SETROP2
;----------------------------------------------------------------------
L_0293:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        inc     ax                              ; 40
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp + 4], ax           ; 89 46 04
        cmp     word ptr [0xc94], 0             ; 83 3E 94 0C 00
        je      L_02CA                          ; 74 1A
        mov     si, word ptr [0xc94]            ; 8B 36 94 0C
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [si + 0xeb6], ax       ; 39 84 B6 0E
        jne     L_02CA                          ; 75 09
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [si + 0xeb8], ax       ; 39 84 B8 0E
        je      L_02EC                          ; 74 22
L_02CA:
        cmp     word ptr [0xc94], 0x81          ; 81 3E 94 0C 81 00
        jge     L_02D6                          ; 7D 04
        inc     word ptr [0xc94]                ; FF 06 94 0C
L_02D6:
        mov     si, word ptr [0xc94]            ; 8B 36 94 0C
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [si + 0xeb6], ax       ; 89 84 B6 0E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [si + 0xeb8], ax       ; 89 84 B8 0E
L_02EC:
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
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_134                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xb98]                ; FF 36 98 0B
        push    word ptr [0xb9a]                ; FF 36 9A 0B
        call    far GDI.MOVETO                  ; 9A 72 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xb9e]                ; FF 36 9E 0B
        push    word ptr [0xba0]                ; FF 36 A0 0B
        call    far GDI.LINETO                  ; 9A 82 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_133                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x894], 0             ; C7 06 94 08 00 00
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
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xb98]                ; FF 36 98 0B
        push    word ptr [0xb9a]                ; FF 36 9A 0B
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xb9e]                ; FF 36 9E 0B
        push    word ptr [0xba0]                ; FF 36 A0 0B
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

PAINT_TEXT ENDS

        END
