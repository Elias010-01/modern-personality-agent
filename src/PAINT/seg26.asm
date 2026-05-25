; AUTO-GENERATED from original PAINT segment 26
; segment_size=2859 bytes, flags=0xf130
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
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_0069                          ; 74 58
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0053                          ; 74 3C
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0035                          ; 74 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0083                          ; E8 50 00
        jmp     L_0078                          ; EB 43
L_0035:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far USER.GETPARENT              ; 9A 3F 02 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_125                  ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_74                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x564], 0             ; C7 06 64 05 00 00
        jmp     L_0069                          ; EB 16
L_0053:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0061                          ; 74 08
        mov     word ptr [0x56a], 0xffff        ; C7 06 6A 05 FF FF
        jmp     L_0078                          ; EB 17
L_0061:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_03D5                          ; E8 6E 03
        jmp     L_0078                          ; EB 0F
L_0069:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0166                          ; E8 EE 00
L_0078:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0083 -- offset 0x0083 -- 76 instr
; Funcion mediana (76 instr, 5 calls).
; tags: calls_gdi, calls_user, medium
; calls (intra): sub_0A3E
; calls (inter): GDI.BITBLT, GDI.DELETEDC, USER.GETKEYSTATE, USER.SETRECT
;----------------------------------------------------------------------
L_0083:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A3E                          ; E8 B0 09
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        mov     word ptr [0xa08], ax            ; A3 08 0A
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        mov     word ptr [0xa0a], ax            ; A3 0A 0A
        mov     ax, 0xa00                       ; B8 00 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xa08]                ; FF 36 08 0A
        push    word ptr [0xa0a]                ; FF 36 0A 0A
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        sub     ax, word ptr [0xdba]            ; 2B 06 BA 0D
        add     ax, word ptr [0xbf0]            ; 03 06 F0 0B
        push    ax                              ; 50
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        sub     ax, word ptr [0xdbc]            ; 2B 06 BC 0D
        add     ax, word ptr [0xbf2]            ; 03 06 F2 0B
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A CA 01 00 00 [FIXUP]
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        mov     word ptr [0x9fc], ax            ; A3 FC 09
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        mov     word ptr [0x9fe], ax            ; A3 FE 09
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A F2 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_00ED                          ; 7D 08
        mov     word ptr [0x56a], 2             ; C7 06 6A 05 02 00
        jmp     L_0160                          ; EB 73
L_00ED:
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_015A                          ; 7D 60
        mov     word ptr [0x56a], 1             ; C7 06 6A 05 01 00
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 11 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 4E 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        push    ax                              ; 50
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.DELETEDC                ; 9A 54 01 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0160                          ; EB 06
L_015A:
        mov     word ptr [0x56a], 0             ; C7 06 6A 05 00 00
L_0160:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0166 -- offset 0x0166 -- 142 instr
; Dispatcher: tabla de decisiones cmp+jcc (142 instr).
; tags: calls_gdi, calls_user, dispatcher
; calls (intra): sub_02D8
; calls (inter): GDI.BITBLT, GDI.CREATEBITMAP, GDI.DELETEDC, GDI.GETSTOCKOBJECT, GDI.PATBLT, GDI.SELECTOBJECT (+3 mas)
;----------------------------------------------------------------------
L_0166:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_017A                          ; 75 08
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 5E 01
L_017A:
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jge     L_018D                          ; 7D 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_0190                          ; EB 03
L_018D:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
L_0190:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jge     L_019F                          ; 7D 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_01A2                          ; EB 03
L_019F:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
L_01A2:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jle     L_01B1                          ; 7E 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_01B4                          ; EB 03
L_01B1:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
L_01B4:
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jle     L_01C4                          ; 7E 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_01C7                          ; EB 03
L_01C4:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
L_01C7:
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 02 01
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_01DF                          ; 75 03
        jmp     L_02D2                          ; E9 F3 00
L_01DF:
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        mov     word ptr [0xbc8], ax            ; A3 C8 0B
        mov     ax, 0xc96                       ; B8 96 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A 0D 02 00 00 [FIXUP]
        mov     ax, 0x10e8                      ; B8 E8 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xbc6]            ; A1 C6 0B
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1170], ax           ; A3 70 11
        or      ax, ax                          ; 0B C0
        jne     L_0235                          ; 75 03
        jmp     L_02CA                          ; E9 95 00
L_0235:
        mov     word ptr [0x56a], 0xffff        ; C7 06 6A 05 FF FF
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_143                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 5A 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A B3 04 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A ED 02 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 47 03 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.DELETEDC                ; 9A C4 02 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A 4C 01 00 00 [FIXUP]
        jmp     L_02D2                          ; EB 08
L_02CA:
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 06 00
L_02D2:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02D8 -- offset 0x02D8 -- 105 instr
; Funcion compleja: 105 instrucciones, 2 llamadas, 2 branches.
; tags: calls_gdi, complex, far
; callers: sub_0166, sub_03D5
; calls (inter): GDI.PATBLT, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_02D8:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xacc]                ; FF 36 CC 0A
        call    far GDI.SELECTOBJECT            ; 9A C6 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        inc     ax                              ; 40
        inc     ax                              ; 40
        cmp     ax, word ptr [0xdba]            ; 3B 06 BA 0D
        jg      L_030A                          ; 7F 0B
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        inc     ax                              ; 40
        inc     ax                              ; 40
        cmp     ax, word ptr [0xdbc]            ; 3B 06 BC 0D
        jle     L_0327                          ; 7E 1D
L_030A:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        push    ax                              ; 50
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        jmp     L_03B1                          ; E9 8A 00
L_0327:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 6E 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 96 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A BB 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
L_03B1:
        push    ax                              ; 50
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03D5 -- offset 0x03D5 -- 636 instr
; Dispatcher: tabla de decisiones cmp+jcc (636 instr).
; tags: calls_gdi, calls_user, dispatcher, far
; calls (intra): sub_02D8, sub_0A3E
; calls (inter): GDI.BITBLT, GDI.CREATEBITMAP, GDI.DELETEDC, USER.COPYRECT, USER.INVERTRECT, USER.SETRECT
;----------------------------------------------------------------------
L_03D5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x20                        ; 83 EC 20
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0xa00]            ; A1 00 0A
        cmp     word ptr [0xc8a], ax            ; 39 06 8A 0C
        jle     L_03EB                          ; 7E 05
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        jmp     L_03EE                          ; EB 03
L_03EB:
        mov     ax, word ptr [0xa00]            ; A1 00 0A
L_03EE:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_03FE                          ; 7D 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_0401                          ; EB 03
L_03FE:
        mov     ax, word ptr [0xa04]            ; A1 04 0A
L_0401:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0xa02]            ; A1 02 0A
        cmp     word ptr [0xc8c], ax            ; 39 06 8C 0C
        jle     L_0412                          ; 7E 05
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        jmp     L_0415                          ; EB 03
L_0412:
        mov     ax, word ptr [0xa02]            ; A1 02 0A
L_0415:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0xa06]            ; A1 06 0A
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_0425                          ; 7D 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_0428                          ; EB 03
L_0425:
        mov     ax, word ptr [0xa06]            ; A1 06 0A
L_0428:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0xa08]            ; A1 08 0A
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        mov     ax, word ptr [0xa0a]            ; A1 0A 0A
        sub     word ptr [bp - 8], ax           ; 29 46 F8
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [0x9fc]            ; 2B 06 FC 09
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [0x9fe]            ; 2B 06 FE 09
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0xbc6]            ; 03 06 C6 0B
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xbc8]            ; 03 06 C8 0B
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A C8 00 00 00 [FIXUP]
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 7C 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 05 01 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 4D FE
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [bp - 0x12]        ; 2B 46 EE
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 8A 05 00 00 [FIXUP]
        cmp     word ptr [0x56a], 2             ; 83 3E 6A 05 02
        je      L_04D8                          ; 74 1A
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        jmp     L_04EE                          ; EB 16
L_04D8:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x1c], 1         ; C7 46 E4 01 00
        mov     word ptr [bp - 0x1e], 1         ; C7 46 E2 01 00
L_04EE:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_04F9                          ; 7C 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_04FE                          ; EB 05
L_04F9:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
L_04FE:
        cmp     ax, word ptr [0xbc6]            ; 3B 06 C6 0B
        jl      L_0507                          ; 7C 03
        jmp     L_0657                          ; E9 50 01
L_0507:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_0519                          ; 7C 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_051B                          ; EB 02
L_0519:
        mov     ax, si                          ; 8B C6
L_051B:
        cmp     ax, word ptr [0xbc8]            ; 3B 06 C8 0B
        jl      L_0524                          ; 7C 03
        jmp     L_0657                          ; E9 33 01
L_0524:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_058E                          ; 74 64
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jle     L_0534                          ; 7E 04
        sub     ax, ax                          ; 2B C0
        jmp     L_053B                          ; EB 07
L_0534:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0xbc8]            ; 03 06 C8 0B
L_053B:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        add     ax, word ptr [0xdb8]            ; 03 06 B8 0D
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_0559                          ; 7C 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_055B                          ; EB 02
L_0559:
        mov     ax, si                          ; 8B C6
L_055B:
        cmp     ax, word ptr [0xbc8]            ; 3B 06 C8 0B
        jge     L_0570                          ; 7D 0F
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_056C                          ; 7C 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_0573                          ; EB 07
L_056C:
        mov     ax, si                          ; 8B C6
        jmp     L_0573                          ; EB 03
L_0570:
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
L_0573:
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 44 01 00 00 [FIXUP]
L_058E:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0597                          ; 75 03
        jmp     L_0680                          ; E9 E9 00
L_0597:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_05A9                          ; 7C 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_05AB                          ; EB 02
L_05A9:
        mov     ax, si                          ; 8B C6
L_05AB:
        cmp     ax, word ptr [0xbc8]            ; 3B 06 C8 0B
        jne     L_05B4                          ; 75 03
        jmp     L_0680                          ; E9 CC 00
L_05B4:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jle     L_05BE                          ; 7E 04
        sub     ax, ax                          ; 2B C0
        jmp     L_05C5                          ; EB 07
L_05BE:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xbc6]            ; 03 06 C6 0B
L_05C5:
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jle     L_05D3                          ; 7E 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_05D5                          ; EB 02
L_05D3:
        sub     ax, ax                          ; 2B C0
L_05D5:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        mov     di, ax                          ; 8B F8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        add     ax, word ptr [0xdb6]            ; 03 06 B6 0D
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0xdb8]            ; 03 06 B8 0D
        push    ax                              ; 50
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_05FD                          ; 7C 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_05FF                          ; EB 02
L_05FD:
        mov     ax, di                          ; 8B C7
L_05FF:
        cmp     ax, word ptr [0xbc6]            ; 3B 06 C6 0B
        jge     L_0614                          ; 7D 0F
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_0610                          ; 7C 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_0617                          ; EB 07
L_0610:
        mov     ax, di                          ; 8B C7
        jmp     L_0617                          ; EB 03
L_0614:
        mov     ax, word ptr [0xbc6]            ; A1 C6 0B
L_0617:
        push    ax                              ; 50
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_0623                          ; 7C 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_0625                          ; EB 02
L_0623:
        mov     ax, si                          ; 8B C6
L_0625:
        cmp     word ptr [0xbc8], ax            ; 39 06 C8 0B
        jle     L_0641                          ; 7E 16
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_0636                          ; 7C 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_0638                          ; EB 02
L_0636:
        mov     ax, si                          ; 8B C6
L_0638:
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
        sub     ax, cx                          ; 2B C1
        jmp     L_0643                          ; EB 02
L_0641:
        sub     ax, ax                          ; 2B C0
L_0643:
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        push    ax                              ; 50
        jmp     L_0673                          ; EB 1C
L_0657:
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
L_0673:
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 48 07 00 00 [FIXUP]
L_0680:
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A FE 01 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 41 FC
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.DELETEDC                ; 9A A3 06 00 00 [FIXUP]
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.DELETEDC                ; 9A 08 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [0x9fc], ax            ; A3 FC 09
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [0x9fe], ax            ; A3 FE 09
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
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
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        jne     L_06D3                          ; 75 03
        jmp     L_0854                          ; E9 81 01
L_06D3:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A3E                          ; E8 66 03
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 27 07 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A 27 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        je      L_074C                          ; 74 27
        push    ax                              ; 50
        call    far _entry_27                   ; 9A E1 08 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 6D 07 00 00 [FIXUP]
L_074C:
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        dec     si                              ; 4E
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    si                              ; 56
        push    word ptr [bp - 8]               ; FF 76 F8
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 91 07 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    si                              ; 56
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A B9 07 00 00 [FIXUP]
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        dec     si                              ; 4E
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    si                              ; 56
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A DA 07 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    si                              ; 56
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 00 08 00 00 [FIXUP]
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_0814                          ; 74 30
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x226                       ; B8 26 02
        mov     dx, 0xbb                        ; BA BB 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 40 08 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far GDI.DELETEDC                ; 9A 50 08 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
L_0814:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 BC FA
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 0C 09 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 8C FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.DELETEDC                ; 9A B6 09 00 00 [FIXUP]
L_0854:
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
        sub     sp, 0x12                        ; 83 EC 12
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        jne     L_0877                          ; 75 03
        jmp     L_09BA                          ; E9 43 01
L_0877:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A3E                          ; E8 C2 01
        cmp     word ptr [bp + 6], 0x33         ; 83 7E 06 33
        jne     L_08AC                          ; 75 2A
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_08D4                          ; EB 28
L_08AC:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x10], 1         ; C7 46 F0 01 00
L_08D4:
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A F9 09 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_096E                          ; E9 83 00
L_08EB:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 31 09 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 56 09 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A A6 09 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0x33         ; 83 7E 06 33
        jne     L_0968                          ; 75 08
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        jmp     L_096E                          ; EB 06
L_0968:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        dec     word ptr [bp - 0xc]             ; FF 4E F4
L_096E:
        dec     word ptr [bp - 0x12]            ; FF 4E EE
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jl      L_097A                          ; 7C 03
        jmp     L_08EB                          ; E9 71 FF
L_097A:
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 56 F9
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 27 0A 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 26 F9
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A 2F 0A 00 00 [FIXUP]
L_09BA:
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
        sub     sp, 4                           ; 83 EC 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A3E                          ; E8 67 00
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 F9 F8
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 E4 F8
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 70 04 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        push    ax                              ; 50
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 83 02 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A BC 02 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A3E -- offset 0x0A3E -- 87 instr
; Funcion compleja: 87 instrucciones, 6 llamadas, 1 branches.
; tags: calls_gdi, calls_user, complex, far
; callers: sub_0083, sub_03D5
; calls (inter): GDI.BITBLT, GDI.DELETEDC, GDI.GETSTOCKOBJECT, GDI.PATBLT, GDI.SELECTOBJECT, USER.COPYRECT
;----------------------------------------------------------------------
L_0A3E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        cmp     word ptr [0x56c], 0             ; 83 3E 6C 05 00
        jl      L_0A55                          ; 7C 03
        jmp     L_0B22                          ; E9 CD 00
L_0A55:
        mov     ax, word ptr [0x56c]            ; A1 6C 05
        neg     ax                              ; F7 D8
        mov     word ptr [0x56c], ax            ; A3 6C 05
        mov     ax, 0x10e8                      ; B8 E8 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A 8B 06 00 00 [FIXUP]
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 7D 0A 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_27                   ; 9A 89 0A 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A FD 06 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xda8]                ; FF 36 A8 0D
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        push    word ptr [bp - 8]               ; FF 76 F8
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A D5 0A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 7C 06 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 8E 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 94 02 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A B4 02 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A 16 0B 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A 1E 0B 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.DELETEDC                ; 9A 9B 06 00 00 [FIXUP]
L_0B22:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

PAINT_TEXT ENDS

        END
