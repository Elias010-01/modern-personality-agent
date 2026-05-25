; AUTO-GENERATED from original PAINT segment 8
; segment_size=3184 bytes, flags=0xf130
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
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [0x572]                ; FF 36 72 05
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x572], 0             ; C7 06 72 05 00 00
        push    word ptr [0x574]                ; FF 36 74 05
        call    far USER.SETFOCUS               ; 9A 64 01 00 00 [FIXUP]
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     word ptr [0xc8a], ax            ; 01 06 8A 0C
        mov     ax, word ptr [0x1116]           ; A1 16 11
        add     word ptr [0xc8c], ax            ; 01 06 8C 0C
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     word ptr [0x1172], ax           ; 01 06 72 11
        mov     ax, word ptr [0x1116]           ; A1 16 11
        add     word ptr [0x1174], ax           ; 01 06 74 11
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     word ptr [0xbf0], ax            ; 01 06 F0 0B
        mov     ax, word ptr [0x1116]           ; A1 16 11
        add     word ptr [0xbf2], ax            ; 01 06 F2 0B
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
        push    si                              ; 56
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     dx, word ptr [0xda8]            ; 8B 16 A8 0D
        mov     cl, 4                           ; B1 04
        sar     dx, cl                          ; D3 FA
        sub     ax, dx                          ; 2B C2
        mov     word ptr [0x1114], ax           ; A3 14 11
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        mov     dx, word ptr [0xdb4]            ; 8B 16 B4 0D
        sar     dx, cl                          ; D3 FA
        sub     ax, dx                          ; 2B C2
        mov     word ptr [0x1116], ax           ; A3 16 11
        mov     si, word ptr [0xda8]            ; 8B 36 A8 0D
        add     si, 7                           ; 83 C6 07
        mov     cl, 3                           ; B1 03
        sar     si, cl                          ; D3 FE
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     ax, si                          ; 03 C6
        mov     word ptr [0x1118], ax           ; A3 18 11
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        sar     ax, cl                          ; D3 F8
        add     ax, word ptr [0x1116]           ; 03 06 16 11
        mov     word ptr [0x111a], ax           ; A3 1A 11
        cmp     word ptr [0x1114], 0            ; 83 3E 14 11 00
        jge     L_00BB                          ; 7D 0C
        mov     word ptr [0x1114], 0            ; C7 06 14 11 00 00
        mov     word ptr [0x1118], si           ; 89 36 18 11
        jmp     L_00D5                          ; EB 1A
L_00BB:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [0x1118], ax           ; 39 06 18 11
        jle     L_00D5                          ; 7E 11
        mov     word ptr [0x1118], ax           ; A3 18 11
        mov     dx, ax                          ; 8B D0
        add     dx, 7                           ; 83 C2 07
        mov     cl, 3                           ; B1 03
        sar     dx, cl                          ; D3 FA
        sub     ax, dx                          ; 2B C2
        mov     word ptr [0x1114], ax           ; A3 14 11
L_00D5:
        cmp     word ptr [0x1116], 0            ; 83 3E 16 11 00
        jge     L_00F1                          ; 7D 15
        mov     word ptr [0x1116], 0            ; C7 06 16 11 00 00
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        mov     word ptr [0x111a], ax           ; A3 1A 11
        jmp     L_010B                          ; EB 1A
L_00F1:
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [0x111a], ax           ; 39 06 1A 11
        jle     L_010B                          ; 7E 11
        mov     word ptr [0x111a], ax           ; A3 1A 11
        mov     dx, ax                          ; 8B D0
        add     dx, 7                           ; 83 C2 07
        mov     cl, 3                           ; B1 03
        sar     dx, cl                          ; D3 FA
        sub     ax, dx                          ; 2B C2
        mov     word ptr [0x1116], ax           ; A3 16 11
L_010B:
        mov     ax, word ptr [0x1114]           ; A1 14 11
        sub     word ptr [0xc8a], ax            ; 29 06 8A 0C
        mov     ax, word ptr [0x1116]           ; A1 16 11
        sub     word ptr [0xc8c], ax            ; 29 06 8C 0C
        mov     ax, word ptr [0x1114]           ; A1 14 11
        sub     word ptr [0x1172], ax           ; 29 06 72 11
        mov     ax, word ptr [0x1116]           ; A1 16 11
        sub     word ptr [0x1174], ax           ; 29 06 74 11
        mov     ax, word ptr [0x1114]           ; A1 14 11
        sub     word ptr [0xbf0], ax            ; 29 06 F0 0B
        mov     ax, word ptr [0x1116]           ; A1 16 11
        sub     word ptr [0xbf2], ax            ; 29 06 F2 0B
        mov     ax, 0x832                       ; B8 32 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7e2                       ; B8 E2 07
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x5000                      ; BA 00 50
        push    dx                              ; 52
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xda8]                ; FF 36 A8 0D
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        push    word ptr [0x111c]               ; FF 36 1C 11
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x572], ax            ; A3 72 05
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0174 -- offset 0x0174 -- 37 instr
; Funcion mediana (37 instr, 0 calls).
; tags: medium
; callers: sub_0926
;----------------------------------------------------------------------
L_0174:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        add     si, 7                           ; 83 C6 07
        mov     cl, 3                           ; B1 03
        sar     si, cl                          ; D3 FE
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     ax, si                          ; 03 C6
        mov     word ptr [0x1118], ax           ; A3 18 11
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 7                           ; 05 07 00
        sar     ax, cl                          ; D3 F8
        add     ax, word ptr [0x1116]           ; 03 06 16 11
        mov     word ptr [0x111a], ax           ; A3 1A 11
        mov     ax, word ptr [0x1118]           ; A1 18 11
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jg      L_01AC                          ; 7F 0B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x1118], ax           ; A3 18 11
        sub     ax, si                          ; 2B C6
        mov     word ptr [0x1114], ax           ; A3 14 11
L_01AC:
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jg      L_01C8                          ; 7F 14
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x111a], ax           ; A3 1A 11
        mov     dx, ax                          ; 8B D0
        add     dx, 7                           ; 83 C2 07
        mov     cl, 3                           ; B1 03
        sar     dx, cl                          ; D3 FA
        sub     ax, dx                          ; 2B C2
        mov     word ptr [0x1116], ax           ; A3 16 11
L_01C8:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01CF -- offset 0x01CF -- 106 instr
; Funcion compleja: 106 instrucciones, 7 llamadas, 0 branches.
; tags: calls_gdi, complex
; callers: sub_03D8, sub_0926
; calls (inter): GDI.BITBLT, GDI.DELETEDC, GDI.GETSTOCKOBJECT, GDI.LINETO, GDI.MOVETO, GDI.SELECTOBJECT (+1 mas)
;----------------------------------------------------------------------
L_01CF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     si, word ptr [0x111a]           ; 8B 36 1A 11
        sub     si, word ptr [0x1116]           ; 2B 36 16 11
        mov     di, word ptr [0x1118]           ; 8B 3E 18 11
        sub     di, word ptr [0x1114]           ; 2B 3E 14 11
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [0x1114]               ; FF 36 14 11
        push    word ptr [0x1116]               ; FF 36 16 11
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.STRETCHBLT              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [0x1114]               ; FF 36 14 11
        push    word ptr [0x1116]               ; FF 36 16 11
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        push    ax                              ; 50
        call    far GDI.MOVETO                  ; 9A A6 02 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        add     ax, 7                           ; 05 07 00
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        sar     ax, cl                          ; D3 F8
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        add     ax, 7                           ; 05 07 00
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        add     ax, 7                           ; 05 07 00
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        push    ax                              ; 50
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        sar     ax, cl                          ; D3 F8
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A 90 02 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.DELETEDC                ; 9A 5D 03 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02D7 -- offset 0x02D7 -- 96 instr
; Funcion compleja: 96 instrucciones, 5 llamadas, 4 branches.
; tags: calls_gdi, complex
; callers: sub_051F
; calls (inter): GDI.DELETEDC, GDI.GETPIXEL, GDI.GETSTOCKOBJECT, GDI.PATBLT, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_02D7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [0x552], 1             ; C7 06 52 05 01 00
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 7B 04 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0312                          ; 74 1D
        push    ax                              ; 50
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     ax, word ptr [0xc8a]            ; 03 06 8A 0C
        push    ax                              ; 50
        mov     ax, word ptr [0x1116]           ; A1 16 11
        add     ax, word ptr [0xc8c]            ; 03 06 8C 0C
        push    ax                              ; 50
        call    far GDI.GETPIXEL                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xdac], ax            ; A3 AC 0D
        mov     word ptr [0xdae], dx            ; 89 16 AE 0D
L_0312:
        mov     ax, word ptr [0xdac]            ; A1 AC 0D
        or      ax, word ptr [0xdae]            ; 0B 06 AE 0D
        je      L_0320                          ; 74 05
        mov     ax, 4                           ; B8 04 00
        jmp     L_0322                          ; EB 02
L_0320:
        sub     ax, ax                          ; 2B C0
L_0322:
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 57 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 68 03 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     ax, word ptr [0xc8a]            ; 03 06 8A 0C
        push    ax                              ; 50
        mov     ax, word ptr [0x1116]           ; A1 16 11
        add     ax, word ptr [0xc8c]            ; 03 06 8C 0C
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 85 03 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.DELETEDC                ; 9A B5 04 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.SELECTOBJECT            ; 9A 5D 02 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A CE 03 00 00 [FIXUP]
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        add     ax, 7                           ; 05 07 00
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        mov     dx, word ptr [0xc8a]            ; 8B 16 8A 0C
        shl     dx, cl                          ; D3 E2
        cmp     ax, dx                          ; 3B C2
        jl      L_03AF                          ; 7C 12
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        sar     ax, cl                          ; D3 F8
        mov     dx, word ptr [0xc8c]            ; 8B 16 8C 0C
        shl     dx, cl                          ; D3 E2
        cmp     ax, dx                          ; 3B C2
        jge     L_03D2                          ; 7D 23
L_03AF:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
L_03D2:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03D8 -- offset 0x03D8 -- 112 instr
; Dispatcher: tabla de decisiones cmp+jcc (112 instr).
; tags: calls_gdi, dispatcher
; callers: sub_051F
; calls (intra): sub_01CF
; calls (inter): GDI.BITBLT, GDI.DELETEDC
;----------------------------------------------------------------------
L_03D8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [0x1172]           ; A1 72 11
        sub     ax, word ptr [0xc8a]            ; 2B 06 8A 0C
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x1174]           ; A1 74 11
        sub     ax, word ptr [0xc8c]            ; 2B 06 8C 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jl      L_040E                          ; 7C 16
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0x1118]           ; 03 06 18 11
        cmp     ax, word ptr [0xda8]            ; 3B 06 A8 0D
        jle     L_0421                          ; 7E 1C
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        sub     ax, word ptr [0x1118]           ; 2B 06 18 11
        jmp     L_041E                          ; EB 10
L_040E:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0x1114]           ; 03 06 14 11
        or      ax, ax                          ; 0B C0
        jge     L_0421                          ; 7D 08
        mov     ax, word ptr [0x1114]           ; A1 14 11
        neg     ax                              ; F7 D8
L_041E:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_0421:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jl      L_043D                          ; 7C 16
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x111a]           ; 03 06 1A 11
        cmp     ax, word ptr [0xdb4]            ; 3B 06 B4 0D
        jle     L_0450                          ; 7E 1C
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        sub     ax, word ptr [0x111a]           ; 2B 06 1A 11
        jmp     L_044D                          ; EB 10
L_043D:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x1116]           ; 03 06 16 11
        or      ax, ax                          ; 0B C0
        jge     L_0450                          ; 7D 08
        mov     ax, word ptr [0x1116]           ; A1 16 11
        neg     ax                              ; F7 D8
L_044D:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0450:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     word ptr [0x1114], ax           ; 01 06 14 11
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr [0x1116], ax           ; 01 06 16 11
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     word ptr [0x1118], ax           ; 01 06 18 11
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr [0x111a], ax           ; 01 06 1A 11
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0476                          ; 75 04
        or      ax, ax                          ; 0B C0
        je      L_04B9                          ; 74 43
L_0476:
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A DB 04 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0x1114]               ; FF 36 14 11
        push    word ptr [0x1116]               ; FF 36 16 11
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 0D 05 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A 15 05 00 00 [FIXUP]
L_04B9:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_04CA                          ; 74 0B
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_01CF                          ; E8 07 FD
        jmp     L_0519                          ; EB 4F
L_04CA:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_04D6                          ; 75 06
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0519                          ; 74 43
L_04D6:
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A DC 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0x1114]               ; FF 36 14 11
        push    word ptr [0x1116]               ; FF 36 16 11
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 4B 02 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
L_0519:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_051F -- offset 0x051F -- 205 instr
; Dispatcher: tabla de decisiones cmp+jcc (205 instr).
; tags: calls_user, dispatcher
; callers: sub_0762, sub_0926
; calls (intra): sub_02D7, sub_03D8, sub_0BFF
; calls (inter): USER.GETDC, USER.GETKEYSTATE, USER.GETPARENT, USER.RELEASECAPTURE, USER.RELEASEDC, USER.SETCAPTURE (+1 mas)
;----------------------------------------------------------------------
L_051F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jge     L_0535                          ; 7D 07
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        jmp     L_0544                          ; EB 0F
L_0535:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jl      L_0544                          ; 7C 04
        dec     ax                              ; 48
        mov     word ptr es:[bx], ax            ; 26 89 07
L_0544:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 2], 0         ; 26 83 7F 02 00
        jge     L_0556                          ; 7D 08
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        jmp     L_0567                          ; EB 11
L_0556:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        jl      L_0567                          ; 7C 05
        dec     ax                              ; 48
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
L_0567:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jle     L_0590                          ; 7E 22
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     word ptr [0x1172], ax           ; A3 72 11
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        mov     word ptr [0x1174], ax           ; A3 74 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        mov     word ptr [0xc8a], ax            ; A3 8A 0C
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sar     ax, cl                          ; D3 F8
        mov     word ptr [0xc8c], ax            ; A3 8C 0C
L_0590:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_05B3                          ; 74 1B
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_05A0                          ; 75 03
        jmp     L_0636                          ; E9 96 00
L_05A0:
        cmp     ax, 0x202                       ; 3D 02 02
        jne     L_05A8                          ; 75 03
        jmp     L_06C9                          ; E9 21 01
L_05A8:
        cmp     ax, 0x203                       ; 3D 03 02
        jne     L_05B0                          ; 75 03
        jmp     L_0728                          ; E9 78 01
L_05B0:
        jmp     L_075C                          ; E9 A9 01
L_05B3:
        cmp     word ptr [0xaf0], 0             ; 83 3E F0 0A 00
        jne     L_05CE                          ; 75 14
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_05D4                          ; 7F 13
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_05D4                          ; 7D 06
L_05CE:
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        jmp     L_05D8                          ; EB 04
L_05D4:
        push    word ptr [0xe10]                ; FF 36 10 0E
L_05D8:
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_05E7                          ; 7F 03
        jmp     L_075C                          ; E9 75 01
L_05E7:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0x1172], ax           ; 39 06 72 11
        jne     L_05FC                          ; 75 0C
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0x1174], ax           ; 39 06 74 11
        jne     L_05FC                          ; 75 03
        jmp     L_075C                          ; E9 60 01
L_05FC:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0xaf0], 0             ; 83 3E F0 0A 00
        je      L_061B                          ; 74 0D
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_03D8                          ; E8 BF FD
        jmp     L_0628                          ; EB 0D
L_061B:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_02D7                          ; E8 AF FC
L_0628:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.RELEASEDC              ; 9A B6 06 00 00 [FIXUP]
        jmp     L_075C                          ; E9 26 01
L_0636:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        je      L_0640                          ; 74 03
        jmp     L_06C2                          ; E9 82 00
L_0640:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        mov     word ptr [0x1172], ax           ; A3 72 11
        mov     word ptr [0xc8a], ax            ; A3 8A 0C
        mov     word ptr [0xbf0], ax            ; A3 F0 0B
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sar     ax, cl                          ; D3 F8
        mov     word ptr [0x1174], ax           ; A3 74 11
        mov     word ptr [0xc8c], ax            ; A3 8C 0C
        mov     word ptr [0xbf2], ax            ; A3 F2 0B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BFF                          ; E8 98 05
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A E2 06 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A C6 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0684                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0686                          ; EB 02
L_0684:
        sub     ax, ax                          ; 2B C0
L_0686:
        mov     word ptr [0xaf0], ax            ; A3 F0 0A
        or      ax, ax                          ; 0B C0
        je      L_069F                          ; 74 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_03D8                          ; E8 3B FD
        jmp     L_06AF                          ; EB 10
L_069F:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_02D7                          ; E8 28 FC
L_06AF:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.RELEASEDC              ; 9A 17 07 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
L_06C2:
        inc     word ptr [0x878]                ; FF 06 78 08
        jmp     L_075C                          ; E9 93 00
L_06C9:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_06D3                          ; 7F 03
        jmp     L_075C                          ; E9 89 00
L_06D3:
        dec     word ptr [0x878]                ; FF 0E 78 08
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_075C                          ; 75 7E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A 00 06 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0xaf0], 0             ; 83 3E F0 0A 00
        je      L_0700                          ; 74 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_03D8                          ; E8 DA FC
        jmp     L_0710                          ; EB 10
L_0700:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_02D7                          ; E8 C7 FB
L_0710:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xaf0], 0             ; C7 06 F0 0A 00 00
        jmp     L_075C                          ; EB 34
L_0728:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        add     ax, 7                           ; 05 07 00
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        mov     dx, word ptr [0xc8a]            ; 8B 16 8A 0C
        shl     dx, cl                          ; D3 E2
        cmp     ax, dx                          ; 3B C2
        jle     L_075C                          ; 7E 20
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        sar     ax, cl                          ; D3 F8
        mov     dx, word ptr [0xc8c]            ; 8B 16 8C 0C
        shl     dx, cl                          ; D3 E2
        cmp     ax, dx                          ; 3B C2
        jle     L_075C                          ; 7E 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_76                   ; 9A 6D 08 00 00 [FIXUP]
L_075C:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0762 -- offset 0x0762 -- 153 instr
; Dispatcher: tabla de decisiones cmp+jcc (153 instr).
; tags: calls_user, dispatcher
; callers: sub_0926
; calls (intra): sub_051F
; calls (inter): USER.CLIENTTOSCREEN, USER.GETCURSORPOS, USER.SCREENTOCLIENT, USER.SETCURSOR, USER.SETCURSORPOS
;----------------------------------------------------------------------
L_0762:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCURSORPOS           ; 9A 5B 09 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A 68 09 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        and     al, 0xf8                        ; 24 F8
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        and     al, 0xf8                        ; 24 F8
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x10                        ; 3D 10 00
        je      L_07B6                          ; 74 0F
        jbe     L_07AC                          ; 76 03
        jmp     L_0903                          ; E9 57 01
L_07AC:
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_07B4                          ; 75 03
        jmp     L_0841                          ; E9 8D 00
L_07B4:
        jmp     L_07EE                          ; EB 38
L_07B6:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_07EE                          ; 7C 32
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_07EE                          ; 7D 2A
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jl      L_07EE                          ; 7C 24
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_07EE                          ; 7D 1C
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_07EE                          ; 7F 15
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_07E5                          ; 7C 06
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        jmp     L_07E9                          ; EB 04
L_07E5:
        push    word ptr [0xe10]                ; FF 36 10 0E
L_07E9:
        call    far USER.SETCURSOR              ; 9A D9 05 00 00 [FIXUP]
L_07EE:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0802                          ; 74 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_051F                          ; E8 1D FD
L_0802:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_080B                          ; 74 03
        jmp     L_091E                          ; E9 13 01
L_080B:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0814                          ; 74 03
        jmp     L_091E                          ; E9 0A 01
L_0814:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0920                          ; E9 06 01
L_081A:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_082D                          ; 7D 0D
        mov     word ptr [0x556], 0             ; C7 06 56 05 00 00
        mov     word ptr [bp - 6], 0x202        ; C7 46 FA 02 02
        jmp     L_07EE                          ; EB C1
L_082D:
        cmp     word ptr [0x556], 0             ; 83 3E 56 05 00
        jne     L_07EE                          ; 75 BA
        mov     word ptr [0x556], 1             ; C7 06 56 05 01 00
        mov     word ptr [bp - 6], 0x201        ; C7 46 FA 01 02
        jmp     L_07EE                          ; EB AD
L_0841:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_084F                          ; 7D 08
        mov     word ptr [0x558], 0             ; C7 06 58 05 00 00
        jmp     L_07EE                          ; EB 9F
L_084F:
        cmp     word ptr [0x558], 0             ; 83 3E 58 05 00
        jne     L_07EE                          ; 75 98
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     word ptr [0x558], 1             ; C7 06 58 05 01 00
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_07EE                          ; 7F 86
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_76                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07EE                          ; E9 7A FF
L_0874:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_087D                          ; 7D 03
        jmp     L_07EE                          ; E9 71 FF
L_087D:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_08AD                          ; 74 28
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_0896                          ; 74 0C
        cmp     ax, 0x27                        ; 3D 27 00
        je      L_08B3                          ; 74 24
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_08A7                          ; 74 13
        jmp     L_089A                          ; EB 04
L_0896:
        sub     word ptr [bp - 8], 8            ; 83 6E F8 08
L_089A:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jge     L_08B9                          ; 7D 19
        mov     word ptr [bp - 0xa], 4          ; C7 46 F6 04 00
        jmp     L_08CA                          ; EB 23
L_08A7:
        add     word ptr [bp - 8], 8            ; 83 46 F8 08
        jmp     L_089A                          ; EB ED
L_08AD:
        sub     word ptr [bp - 0xa], 8          ; 83 6E F6 08
        jmp     L_089A                          ; EB E7
L_08B3:
        add     word ptr [bp - 0xa], 8          ; 83 46 F6 08
        jmp     L_089A                          ; EB E1
L_08B9:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_08CA                          ; 7C 09
        dec     ax                              ; 48
        and     al, 0xf8                        ; 24 F8
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_08CA:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jge     L_08D7                          ; 7D 07
        mov     word ptr [bp - 8], 4            ; C7 46 F8 04 00
        jmp     L_08E8                          ; EB 11
L_08D7:
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_08E8                          ; 7C 09
        dec     ax                              ; 48
        and     al, 0xf8                        ; 24 F8
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_08E8:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A B1 09 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.SETCURSORPOS           ; 9A BC 09 00 00 [FIXUP]
        jmp     L_07EE                          ; E9 EB FE
L_0903:
        cmp     ax, 0x20                        ; 3D 20 00
        jne     L_090B                          ; 75 03
        jmp     L_081A                          ; E9 0F FF
L_090B:
        cmp     ax, 0x25                        ; 3D 25 00
        jae     L_0913                          ; 73 03
        jmp     L_07EE                          ; E9 DB FE
L_0913:
        cmp     ax, 0x28                        ; 3D 28 00
        ja      L_091B                          ; 77 03
        jmp     L_0874                          ; E9 59 FF
L_091B:
        jmp     L_07EE                          ; E9 D0 FE
L_091E:
        sub     ax, ax                          ; 2B C0
L_0920:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0926 -- offset 0x0926 -- 278 instr
; Dispatcher: tabla de decisiones cmp+jcc (278 instr).
; tags: calls_gdi, calls_user, dispatcher, far
; calls (intra): sub_0174, sub_01CF, sub_051F, sub_0762
; calls (inter): GDI.BITBLT, GDI.DELETEDC, GDI.GETSTOCKOBJECT, GDI.PATBLT, GDI.SELECTOBJECT, USER.BEGINPAINT (+10 mas)
;----------------------------------------------------------------------
L_0926:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_093C                          ; 74 03
        jmp     L_09C0                          ; E9 84 00
L_093C:
        cmp     word ptr [bp + 4], 7            ; 83 7E 04 07
        jne     L_0947                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0949                          ; EB 02
L_0947:
        sub     ax, ax                          ; 2B C0
L_0949:
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 7            ; 83 7E 04 07
        jne     L_09C0                          ; 75 6B
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jl      L_0988                          ; 7C 16
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_0988                          ; 7D 0E
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jl      L_0988                          ; 7C 08
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_09C0                          ; 7C 38
L_0988:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        and     al, 0xf8                        ; 24 F8
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        and     al, 0xf8                        ; 24 F8
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.SETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
L_09C0:
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
        jbe     L_09E6                          ; 76 03
        jmp     L_0A76                          ; E9 90 00
L_09E6:
        cmp     ax, 7                           ; 3D 07 00
        jae     L_0A38                          ; 73 4D
        cmp     ax, 5                           ; 3D 05 00
        je      L_0A43                          ; 74 53
        jmp     L_0A1C                          ; EB 2A
L_09F2:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_051F                          ; E8 1F FB
L_0A00:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        jmp     L_0A94                          ; E9 8B 00
L_0A09:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0762                          ; E8 4A FD
        or      ax, ax                          ; 0B C0
        je      L_0A00                          ; 74 E4
L_0A1C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_0A00                          ; EB C8
L_0A38:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_0926                          ; E8 E5 FE
        jmp     L_0A00                          ; EB BD
L_0A43:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0174                          ; E8 25 F7
        jmp     L_0A00                          ; EB AF
L_0A51:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x26]            ; FF 76 DA
        call    L_01CF                          ; E8 68 F7
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0A00                          ; EB 8A
L_0A76:
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_0A51                          ; 74 D6
        cmp     ax, 0x100                       ; 3D 00 01
        jb      L_0A1C                          ; 72 9C
        cmp     ax, 0x101                       ; 3D 01 01
        jbe     L_0A09                          ; 76 84
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_0A1C                          ; 72 92
        cmp     ax, 0x203                       ; 3D 03 02
        ja      L_0A92                          ; 77 03
        jmp     L_09F2                          ; E9 60 FF
L_0A92:
        jmp     L_0A1C                          ; EB 88
L_0A94:
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
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 1D 0B 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 24 03 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 30 03 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x1114]               ; FF 36 14 11
        push    word ptr [0x1116]               ; FF 36 16 11
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 55 03 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A CB 0B 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_01CF                          ; E8 CF F6
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
        sub     sp, 8                           ; 83 EC 08
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_27                   ; 9A 29 0B 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 11 0C 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        push    word ptr [0x1114]               ; FF 36 14 11
        push    word ptr [0x1116]               ; FF 36 16 11
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x1114]               ; FF 36 14 11
        push    word ptr [0x1116]               ; FF 36 16 11
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 90 0B 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x1114]               ; FF 36 14 11
        push    word ptr [0x1116]               ; FF 36 16 11
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0x1114]               ; FF 36 14 11
        push    word ptr [0x1116]               ; FF 36 16 11
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A C3 0B 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0x1114]               ; FF 36 14 11
        push    word ptr [0x1116]               ; FF 36 16 11
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x1114]               ; FF 36 14 11
        push    word ptr [0x1116]               ; FF 36 16 11
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 53 0C 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.DELETEDC                ; 9A D3 0B 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A 5B 0C 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETDC                  ; 9A 6B 06 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        call    L_01CF                          ; E8 E6 F5
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far USER.RELEASEDC              ; 9A 2F 06 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BFF -- offset 0x0BFF -- 42 instr
; Funcion mediana (42 instr, 2 calls).
; tags: calls_gdi, far, medium
; callers: sub_051F
; calls (inter): GDI.BITBLT, GDI.DELETEDC
;----------------------------------------------------------------------
L_0BFF:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_27                   ; 9A 1D 0C 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A E8 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x1114]               ; FF 36 14 11
        push    word ptr [0x1116]               ; FF 36 16 11
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0x1114]               ; FF 36 14 11
        push    word ptr [0x1116]               ; FF 36 16 11
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A AD 04 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A 63 0C 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A CB 02 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

PAINT_TEXT ENDS

        END
