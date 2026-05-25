; AUTO-GENERATED from original PAINT segment 4
; segment_size=3072 bytes, flags=0xf130
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
        sub     sp, 0x16                        ; 83 EC 16
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A F7 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 0xbca                       ; B8 CA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 56 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A 5C 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [0xbfa], ax            ; A3 FA 0B
        mov     ax, dx                          ; 8B C2
        mov     word ptr [0xc00], ax            ; A3 00 0C
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 0x1148                      ; B8 48 11
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [0xbfa]            ; A1 FA 0B
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jbe     L_0074                          ; 76 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0xbfa], ax            ; A3 FA 0B
L_0074:
        mov     ax, word ptr [0xc00]            ; A1 00 0C
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jbe     L_0082                          ; 76 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0xc00], ax            ; A3 00 0C
L_0082:
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0xc00]                ; F7 2E 00 0C
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     word ptr [0xbfa], ax            ; 01 06 FA 0B
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0xc00]                ; F7 2E 00 0C
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     word ptr [0xc00], ax            ; 01 06 00 0C
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xae6], 0x10          ; C7 06 E6 0A 10 00
        mov     word ptr [0xe90], 0x18          ; C7 06 90 0E 18 00
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        push    word ptr [0xb96]                ; FF 36 96 0B
        push    word ptr [0xba2]                ; FF 36 A2 0B
        call    far GDI.MULDIV                  ; 9A E3 00 00 00 [FIXUP]
        mov     word ptr [0xb14], ax            ; A3 14 0B
        push    word ptr [0xe90]                ; FF 36 90 0E
        push    word ptr [0xb96]                ; FF 36 96 0B
        push    word ptr [0xba2]                ; FF 36 A2 0B
        call    far GDI.MULDIV                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x10e2], ax           ; A3 E2 10
        mov     ax, word ptr [0xe90]            ; A1 90 0E
        mov     word ptr [0xb9c], ax            ; A3 9C 0B
        mov     ax, word ptr [0x10e2]           ; A1 E2 10
        mov     word ptr [0xba6], ax            ; A3 A6 0B
        mov     ax, word ptr [0xae6]            ; A1 E6 0A
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        mov     word ptr [0xe5a], ax            ; A3 5A 0E
        mov     ax, word ptr [0xb14]            ; A1 14 0B
        shl     ax, cl                          ; D3 E0
        mov     word ptr [0xe64], ax            ; A3 64 0E
        mov     ax, word ptr [0xe90]            ; A1 90 0E
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0xe5a]            ; 03 06 5A 0E
        mov     word ptr [0xe6c], ax            ; A3 6C 0E
        mov     ax, word ptr [0x10e2]           ; A1 E2 10
        mov     word ptr [0xe94], ax            ; A3 94 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xbbe], ax            ; A3 BE 0B
        call    L_0BA1                          ; E8 6E 0A
        push    word ptr [0xbbe]                ; FF 36 BE 0B
        mov     ax, 0x10                        ; B8 10 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xbae                       ; B8 AE 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.SETBITMAPBITS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xbbe]                ; FF 36 BE 0B
        call    far GDI.CREATEPATTERNBRUSH      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xbc0], ax            ; A3 C0 0B
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0xe90]                ; F7 2E 90 0E
        mov     cx, word ptr [0xe5a]            ; 8B 0E 5A 0E
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0x10e2]           ; A1 E2 10
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [0xc00]            ; 8B 0E 00 0C
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        add     ax, word ptr [0xe64]            ; 03 06 64 0E
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0xc00]            ; A1 00 0C
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, cx                          ; 2B C1
        sub     ax, word ptr [0xbfa]            ; 2B 06 FA 0B
        mov     word ptr [0xc78], ax            ; A3 78 0C
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr [0x10e2]           ; 2B 06 E2 10
        sub     ax, word ptr [0xc00]            ; 2B 06 00 0C
        mov     word ptr [0xc7c], ax            ; A3 7C 0C
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A B5 01 00 00 [FIXUP]
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_129                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x822                       ; B8 22 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7ec                       ; B8 EC 07
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x9040                      ; BA 40 90
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, word ptr [bp - 0x12]        ; 8B 4E EE
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, word ptr [bp - 0x10]        ; 8B 4E F0
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x111c]               ; FF 36 1C 11
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A 69 02 00 00 [FIXUP]
        mov     word ptr [0x578], ax            ; A3 78 05
        push    ax                              ; 50
        call    far USER.SETACTIVEWINDOW        ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0234 -- offset 0x0234 -- 72 instr
; Funcion mediana (72 instr, 3 calls).
; tags: calls_user, medium
; callers: sub_084D
; calls (inter): USER.CREATEWINDOW, USER.GETWINDOWRECT, USER.SETCURSORPOS
;----------------------------------------------------------------------
L_0234:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        mov     ax, 0x87c                       ; B8 7C 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xbca                       ; B8 CA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        mov     dx, 0x5000                      ; BA 00 50
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0xc78]                ; FF 36 78 0C
        push    word ptr [0xc7c]                ; FF 36 7C 0C
        push    word ptr [0xbfa]                ; FF 36 FA 0B
        push    word ptr [0xc00]                ; FF 36 00 0C
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        push    word ptr [0x111c]               ; FF 36 1C 11
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A A9 02 00 00 [FIXUP]
        mov     word ptr [0x57a], ax            ; A3 7A 05
        mov     ax, 0x883                       ; B8 83 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1148                      ; B8 48 11
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x5000                      ; BA 00 50
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xc78]            ; A1 78 0C
        add     ax, word ptr [0xbfa]            ; 03 06 FA 0B
        add     ax, word ptr [0xc00]            ; 03 06 00 0C
        push    ax                              ; 50
        push    word ptr [0xc7c]                ; FF 36 7C 0C
        push    word ptr [0xbfa]                ; FF 36 FA 0B
        push    word ptr [0xc00]                ; FF 36 00 0C
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0x111c]               ; FF 36 1C 11
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x57c], ax            ; A3 7C 05
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETWINDOWRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        call    far USER.SETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02E0 -- offset 0x02E0 -- 169 instr
; Funcion compleja: 169 instrucciones, 7 llamadas, 3 branches.
; tags: calls_gdi, complex
; callers: sub_084D
; calls (inter): GDI.DELETEDC, GDI.GETPIXEL, GDI.GETSTOCKOBJECT, GDI.LINETO, GDI.MOVETO, GDI.PATBLT (+1 mas)
;----------------------------------------------------------------------
L_02E0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    word ptr [0xbbe]                ; FF 36 BE 0B
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 1E 00 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
L_030E:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0313:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.GETPIXEL                ; 9A FF FF 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        je      L_032D                          ; 74 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_0330                          ; EB 03
L_032D:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_0330:
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 8A 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        imul    word ptr [0xae6]                ; F7 2E E6 0A
        add     ax, word ptr [0xb9c]            ; 03 06 9C 0B
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        imul    word ptr [0xb14]                ; F7 2E 14 0B
        add     ax, word ptr [0xba6]            ; 03 06 A6 0B
        push    ax                              ; 50
        mov     ax, word ptr [0xae6]            ; A1 E6 0A
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xb14]            ; A1 14 0B
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A AD 03 00 00 [FIXUP]
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 8            ; 83 7E FC 08
        jl      L_0313                          ; 7C A2
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        cmp     word ptr [bp - 0xc], 8          ; 83 7E F4 08
        jl      L_030E                          ; 7C 94
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xbc0]                ; FF 36 C0 0B
        call    far GDI.SELECTOBJECT            ; 9A B8 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xe6c]                ; FF 36 6C 0E
        push    word ptr [0xe94]                ; FF 36 94 0E
        push    word ptr [0xe5a]                ; FF 36 5A 0E
        push    word ptr [0xe64]                ; FF 36 64 0E
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.SELECTOBJECT            ; 9A 24 00 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xb9c]            ; A1 9C 0B
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xba6]            ; A1 A6 0B
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far GDI.MOVETO                  ; 9A 44 04 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xb9c]            ; A1 9C 0B
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xb14]            ; A1 14 0B
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xba6]            ; 03 06 A6 0B
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A 04 04 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xae6]            ; A1 E6 0A
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xb9c]            ; 03 06 9C 0B
        push    ax                              ; 50
        mov     ax, word ptr [0xb14]            ; A1 14 0B
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xba6]            ; 03 06 A6 0B
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A 1E 04 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xae6]            ; A1 E6 0A
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xb9c]            ; 03 06 9C 0B
        push    ax                              ; 50
        mov     ax, word ptr [0xba6]            ; A1 A6 0B
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A 32 04 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xb9c]            ; A1 9C 0B
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xba6]            ; A1 A6 0B
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A 59 04 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xe6c]            ; A1 6C 0E
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xe94]            ; A1 94 0E
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xe6c]            ; A1 6C 0E
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xe94]            ; A1 94 0E
        add     ax, word ptr [0xe64]            ; 03 06 64 0E
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A 71 04 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xe6c]            ; A1 6C 0E
        add     ax, word ptr [0xe5a]            ; 03 06 5A 0E
        push    ax                              ; 50
        mov     ax, word ptr [0xe94]            ; A1 94 0E
        add     ax, word ptr [0xe64]            ; 03 06 64 0E
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A 86 04 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xe6c]            ; A1 6C 0E
        add     ax, word ptr [0xe5a]            ; 03 06 5A 0E
        push    ax                              ; 50
        mov     ax, word ptr [0xe94]            ; A1 94 0E
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A 98 04 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xe6c]            ; A1 6C 0E
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xe94]            ; A1 94 0E
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04A2 -- offset 0x04A2 -- 81 instr
; Dispatcher: tabla de decisiones cmp+jcc (81 instr).
; tags: calls_user, dispatcher
; callers: sub_05D9, sub_084D
; calls (intra): sub_0A04, sub_0A4A, sub_0B5E
; calls (inter): USER.GETDC, USER.RELEASECAPTURE, USER.RELEASEDC, USER.SETCAPTURE
;----------------------------------------------------------------------
L_04A2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_04C0                          ; 74 10
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_0523                          ; 74 6E
        cmp     ax, 0x202                       ; 3D 02 02
        jne     L_04BD                          ; 75 03
        jmp     L_0574                          ; E9 B7 00
L_04BD:
        jmp     L_058B                          ; E9 CB 00
L_04C0:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_04CA                          ; 7F 03
        jmp     L_058B                          ; E9 C1 00
L_04CA:
        cmp     word ptr [0xbf6], 0             ; 83 3E F6 0B 00
        jne     L_04D4                          ; 75 03
        jmp     L_058B                          ; E9 B7 00
L_04D4:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0B5E                          ; E8 81 06
        or      ax, ax                          ; 0B C0
        jne     L_04E4                          ; 75 03
        jmp     L_058B                          ; E9 A7 00
L_04E4:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0A04                          ; E8 17 05
        or      ax, ax                          ; 0B C0
        jne     L_04F6                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_04F8                          ; EB 02
L_04F6:
        sub     ax, ax                          ; 2B C0
L_04F8:
        xor     ax, word ptr [0xe66]            ; 33 06 66 0E
        jne     L_0501                          ; 75 03
        jmp     L_058B                          ; E9 8A 00
L_0501:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A 4A 05 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0A4A                          ; E8 34 05
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.RELEASEDC              ; 9A 62 05 00 00 [FIXUP]
        jmp     L_058B                          ; EB 68
L_0523:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_056E                          ; 75 44
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0B5E                          ; E8 2B 06
        mov     word ptr [0xbf6], ax            ; A3 F6 0B
        or      ax, ax                          ; 0B C0
        je      L_0566                          ; 74 2C
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0A04                          ; E8 C1 04
        mov     word ptr [0xe66], ax            ; A3 66 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A 11 00 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0A4A                          ; E8 EF 04
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.RELEASEDC              ; 9A B2 00 00 00 [FIXUP]
L_0566:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
L_056E:
        inc     word ptr [0x878]                ; FF 06 78 08
        jmp     L_058B                          ; EB 17
L_0574:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jle     L_058B                          ; 7E 10
        dec     word ptr [0x878]                ; FF 0E 78 08
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_058B                          ; 75 05
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
L_058B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0591 -- offset 0x0591 -- 26 instr
; Funcion sin clasificar definitiva (26 instr).
; tags: calls_user, small
; callers: sub_084D
; calls (inter): USER.GETCURSORPOS, USER.SCREENTOCLIENT
;----------------------------------------------------------------------
L_0591:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_05C3                          ; 75 03
        jmp     L_0658                          ; E9 95 00
L_05C3:
        jbe     L_05C8                          ; 76 03
        jmp     L_0751                          ; E9 89 01
L_05C8:
        cmp     ax, 9                           ; 3D 09 00
        je      L_05E2                          ; 74 15
        jmp     L_066D                          ; E9 9D 00
L_05D0:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_05D9                          ; 7D 03
        jmp     L_066D                          ; E9 94 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05D9 -- offset 0x05D9 -- 144 instr
; Dispatcher: tabla de decisiones cmp+jcc (144 instr).
; tags: calls_user, dispatcher
; calls (intra): sub_04A2, sub_084D
; calls (inter): USER.CLIENTTOSCREEN, USER.GETFOCUS, USER.SETCURSORPOS, USER.SETFOCUS
;----------------------------------------------------------------------
L_05D9:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 2                           ; B8 02 00
        jmp     L_0664                          ; E9 82 00
L_05E2:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_05EB                          ; 7D 03
        jmp     L_066D                          ; E9 82 00
L_05EB:
        call    far USER.GETFOCUS               ; 9A 02 06 00 00 [FIXUP]
        cmp     ax, word ptr [0x57c]            ; 3B 06 7C 05
        jne     L_0601                          ; 75 0B
        push    word ptr [0x578]                ; FF 36 78 05
L_05FA:
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_066D                          ; EB 6C
L_0601:
        call    far USER.GETFOCUS               ; 9A 19 06 00 00 [FIXUP]
        cmp     ax, word ptr [0x57a]            ; 3B 06 7A 05
        jne     L_0612                          ; 75 06
        push    word ptr [0x57c]                ; FF 36 7C 05
        jmp     L_05FA                          ; EB E8
L_0612:
        push    word ptr [0x57a]                ; FF 36 7A 05
        jmp     L_05FA                          ; EB E2
L_0618:
        call    far USER.GETFOCUS               ; 9A 4B 06 00 00 [FIXUP]
        cmp     ax, word ptr [0x578]            ; 3B 06 78 05
        jne     L_064A                          ; 75 27
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0636                          ; 7D 0D
        mov     word ptr [0x556], 0             ; C7 06 56 05 00 00
        mov     word ptr [bp - 6], 0x202        ; C7 46 FA 02 02
        jmp     L_066D                          ; EB 37
L_0636:
        cmp     word ptr [0x556], 0             ; 83 3E 56 05 00
        jne     L_066D                          ; 75 30
        mov     word ptr [0x556], 1             ; C7 06 56 05 01 00
        mov     word ptr [bp - 6], 0x201        ; C7 46 FA 01 02
        jmp     L_066D                          ; EB 23
L_064A:
        call    far USER.GETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [0x57a]            ; 3B 06 7A 05
        je      L_0658                          ; 74 03
        jmp     L_05D0                          ; E9 78 FF
L_0658:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_066D                          ; 7C 0F
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 1                           ; B8 01 00
L_0664:
        push    ax                              ; 50
        call    L_084D                          ; E8 E5 01
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
L_066D:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0681                          ; 74 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_04A2                          ; E8 21 FE
L_0681:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_068A                          ; 74 03
        jmp     L_0774                          ; E9 EA 00
L_068A:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0693                          ; 74 03
        jmp     L_0774                          ; E9 E1 00
L_0693:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0776                          ; E9 DD 00
L_0699:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_066D                          ; 7C CE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_06D7                          ; 74 30
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_06B8                          ; 74 0C
        cmp     ax, 0x27                        ; 3D 27 00
        je      L_06DF                          ; 74 2E
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_06CF                          ; 74 19
        jmp     L_06BE                          ; EB 06
L_06B8:
        mov     ax, word ptr [0xb14]            ; A1 14 0B
        sub     word ptr [bp - 8], ax           ; 29 46 F8
L_06BE:
        mov     ax, word ptr [0xb9c]            ; A1 9C 0B
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_06E7                          ; 7D 21
        mov     ax, 0xf                         ; B8 0F 00
        imul    word ptr [0xae6]                ; F7 2E E6 0A
        jmp     L_06FA                          ; EB 2B
L_06CF:
        mov     ax, word ptr [0xb14]            ; A1 14 0B
        add     word ptr [bp - 8], ax           ; 01 46 F8
        jmp     L_06BE                          ; EB E7
L_06D7:
        mov     ax, word ptr [0xae6]            ; A1 E6 0A
        sub     word ptr [bp - 0xa], ax         ; 29 46 F6
        jmp     L_06BE                          ; EB DF
L_06DF:
        mov     ax, word ptr [0xae6]            ; A1 E6 0A
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        jmp     L_06BE                          ; EB D7
L_06E7:
        mov     ax, word ptr [0xae6]            ; A1 E6 0A
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xb9c]            ; 03 06 9C 0B
        cmp     ax, word ptr [bp - 0xa]         ; 3B 46 F6
        jg      L_0706                          ; 7F 0F
        mov     ax, word ptr [0xae6]            ; A1 E6 0A
L_06FA:
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xb9c]            ; 03 06 9C 0B
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0706:
        mov     ax, word ptr [0xba6]            ; A1 A6 0B
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_0717                          ; 7D 09
        mov     ax, 0xf                         ; B8 0F 00
        imul    word ptr [0xb14]                ; F7 2E 14 0B
        jmp     L_072A                          ; EB 13
L_0717:
        mov     ax, word ptr [0xb14]            ; A1 14 0B
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xba6]            ; 03 06 A6 0B
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jg      L_0736                          ; 7F 0F
        mov     ax, word ptr [0xb14]            ; A1 14 0B
L_072A:
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xba6]            ; 03 06 A6 0B
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_0736:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A 38 08 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.SETCURSORPOS           ; 9A 43 08 00 00 [FIXUP]
        jmp     L_066D                          ; E9 1C FF
L_0751:
        cmp     ax, 0x1b                        ; 3D 1B 00
        jne     L_0759                          ; 75 03
        jmp     L_05D0                          ; E9 77 FE
L_0759:
        cmp     ax, 0x20                        ; 3D 20 00
        jne     L_0761                          ; 75 03
        jmp     L_0618                          ; E9 B7 FE
L_0761:
        cmp     ax, 0x25                        ; 3D 25 00
        jae     L_0769                          ; 73 03
        jmp     L_066D                          ; E9 04 FF
L_0769:
        cmp     ax, 0x28                        ; 3D 28 00
        ja      L_0771                          ; 77 03
        jmp     L_0699                          ; E9 28 FF
L_0771:
        jmp     L_066D                          ; E9 F9 FE
L_0774:
        sub     ax, ax                          ; 2B C0
L_0776:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_077C -- offset 0x077C -- 81 instr
; Dispatcher: tabla de decisiones cmp+jcc (81 instr).
; tags: calls_user, dispatcher
; callers: sub_084D
; calls (inter): USER.CLIENTTOSCREEN, USER.GETCURSORPOS, USER.GETSYSTEMMETRICS, USER.SCREENTOCLIENT, USER.SETCURSORPOS, USER.SHOWCURSOR
;----------------------------------------------------------------------
L_077C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A A7 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0792                          ; 74 03
        jmp     L_0847                          ; E9 B5 00
L_0792:
        cmp     word ptr [bp + 4], 7            ; 83 7E 04 07
        jne     L_079D                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_079F                          ; EB 02
L_079D:
        sub     ax, ax                          ; 2B C0
L_079F:
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 7            ; 83 7E 04 07
        je      L_07AE                          ; 74 03
        jmp     L_0847                          ; E9 99 00
L_07AE:
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCURSORPOS           ; 9A A7 05 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A B4 05 00 00 [FIXUP]
        mov     ax, word ptr [0xae6]            ; A1 E6 0A
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xb9c]            ; 03 06 9C 0B
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jg      L_0811                          ; 7F 3B
        mov     ax, 0xf                         ; B8 0F 00
        imul    word ptr [0xae6]                ; F7 2E E6 0A
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xb9c]            ; 03 06 9C 0B
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jl      L_0811                          ; 7C 26
        mov     ax, word ptr [0xb14]            ; A1 14 0B
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xba6]            ; 03 06 A6 0B
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        jg      L_0811                          ; 7F 15
        mov     ax, 0xf                         ; B8 0F 00
        imul    word ptr [0xb14]                ; F7 2E 14 0B
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xba6]            ; 03 06 A6 0B
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        jge     L_0847                          ; 7D 36
L_0811:
        mov     ax, word ptr [0xae6]            ; A1 E6 0A
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xb9c]            ; 03 06 9C 0B
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xb14]            ; A1 14 0B
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xba6]            ; 03 06 A6 0B
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.SETCURSORPOS           ; 9A D6 02 00 00 [FIXUP]
L_0847:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_084D -- offset 0x084D -- 158 instr
; Dispatcher: tabla de decisiones cmp+jcc (158 instr).
; tags: calls_user, dispatcher, far
; callers: sub_05D9
; calls (intra): sub_0234, sub_02E0, sub_04A2, sub_0591, sub_077C, sub_0BBA
; calls (inter): USER.BEGINPAINT, USER.DEFWINDOWPROC, USER.DESTROYWINDOW, USER.ENABLEWINDOW, USER.ENDPAINT, USER.GETDC (+4 mas)
;----------------------------------------------------------------------
L_084D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 1                           ; 3D 01 00
        je      L_0863                          ; 74 08
        cmp     ax, 2                           ; 3D 02 00
        je      L_08A4                          ; 74 44
        jmp     L_08E7                          ; E9 84 00
L_0863:
        mov     ax, word ptr [0x874]            ; A1 74 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0xbc0]            ; A1 C0 0B
        mov     word ptr [0x874], ax            ; A3 74 08
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [0xbc0], ax            ; A3 C0 0B
        call    L_0BBA                          ; E8 42 03
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A A8 08 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    far USER.GETDC                  ; 9A 05 05 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.RELEASEDC              ; 9A 1D 05 00 00 [FIXUP]
L_08A4:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A D8 01 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far USER.SETACTIVEWINDOW        ; 9A 25 02 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xbbe]                ; FF 36 BE 0B
        call    far _entry_19                   ; 9A D7 08 00 00 [FIXUP]
        push    word ptr [0xbc0]                ; FF 36 C0 0B
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x57a], 0             ; C7 06 7A 05 00 00
        mov     word ptr [0x57c], 0             ; C7 06 7C 05 00 00
L_08E7:
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
        jbe     L_090D                          ; 76 03
        jmp     L_09D1                          ; E9 C4 00
L_090D:
        cmp     ax, 7                           ; 3D 07 00
        jb      L_0915                          ; 72 03
        jmp     L_0997                          ; E9 82 00
L_0915:
        cmp     ax, 1                           ; 3D 01 00
        je      L_0924                          ; 74 0A
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0922                          ; 75 03
        jmp     L_09B4                          ; E9 92 00
L_0922:
        jmp     L_097B                          ; EB 57
L_0924:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0234                          ; E8 0A F9
L_092A:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        jmp     L_09F9                          ; E9 C6 00
L_0933:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_04A2                          ; E8 61 FB
        jmp     L_092A                          ; EB E7
L_0943:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x26]            ; FF 76 DA
        call    L_02E0                          ; E8 87 F9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_092A                          ; EB C2
L_0968:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0591                          ; E8 1A FC
        or      ax, ax                          ; 0B C0
        je      L_092A                          ; 74 AF
L_097B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_092A                          ; EB 93
L_0997:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_077C                          ; E8 DC FD
        jmp     L_092A                          ; EB 88
L_09A2:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_092A                          ; 75 82
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_084D                          ; E8 9C FE
        jmp     L_092A                          ; E9 76 FF
L_09B4:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_09BD                          ; 75 03
        jmp     L_092A                          ; E9 6D FF
L_09BD:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_09C6                          ; 74 03
        jmp     L_092A                          ; E9 64 FF
L_09C6:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETFOCUS               ; 9A FB 05 00 00 [FIXUP]
        jmp     L_092A                          ; E9 59 FF
L_09D1:
        cmp     ax, 0x101                       ; 3D 01 01
        ja      L_09E5                          ; 77 0F
        cmp     ax, 0x100                       ; 3D 00 01
        jae     L_0968                          ; 73 8D
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_09E3                          ; 75 03
        jmp     L_0943                          ; E9 60 FF
L_09E3:
        jmp     L_097B                          ; EB 96
L_09E5:
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_09A2                          ; 74 B8
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_097B                          ; 72 8C
        cmp     ax, 0x202                       ; 3D 02 02
        ja      L_09F7                          ; 77 03
        jmp     L_0933                          ; E9 3C FF
L_09F7:
        jmp     L_097B                          ; EB 82
L_09F9:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A04 -- offset 0x0A04 -- 27 instr
; Funcion sin clasificar definitiva (27 instr).
; tags: small
; callers: sub_04A2
;----------------------------------------------------------------------
L_0A04:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        sub     ax, word ptr [0xb9c]            ; 2B 06 9C 0B
        cdq                                     ; 99
        mov     cx, word ptr [0xae6]            ; 8B 0E E6 0A
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr [0xba6]            ; 2B 06 A6 0B
        cdq                                     ; 99
        mov     cx, word ptr [0xb14]            ; 8B 0E 14 0B
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0xbae]       ; 8B 87 AE 0B
        mov     dx, 1                           ; BA 01 00
        mov     cl, 7                           ; B1 07
        sub     cl, byte ptr [bp - 4]           ; 2A 4E FC
        shl     dx, cl                          ; D3 E2
        and     ax, dx                          ; 23 C2
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A4A -- offset 0x0A4A -- 98 instr
; Funcion compleja: 98 instrucciones, 5 llamadas, 2 branches.
; tags: calls_gdi, complex
; callers: sub_04A2
; calls (inter): GDI.CREATEPATTERNBRUSH, GDI.GETSTOCKOBJECT, GDI.PATBLT, GDI.SELECTOBJECT, GDI.SETBITMAPBITS
;----------------------------------------------------------------------
L_0A4A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        sub     ax, word ptr [0xb9c]            ; 2B 06 9C 0B
        cdq                                     ; 99
        mov     cx, word ptr [0xae6]            ; 8B 0E E6 0A
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr [0xba6]            ; 2B 06 A6 0B
        cdq                                     ; 99
        mov     cx, word ptr [0xb14]            ; 8B 0E 14 0B
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0xe66], 0             ; 83 3E 66 0E 00
        je      L_0A93                          ; 74 16
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     ax, 1                           ; B8 01 00
        mov     cl, 7                           ; B1 07
        sub     cl, byte ptr [bp - 8]           ; 2A 4E F8
        shl     ax, cl                          ; D3 E0
        not     ax                              ; F7 D0
        and     word ptr [bx + 0xbae], ax       ; 21 87 AE 0B
        jmp     L_0AA6                          ; EB 13
L_0A93:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     ax, 1                           ; B8 01 00
        mov     cl, 7                           ; B1 07
        sub     cl, byte ptr [bp - 8]           ; 2A 4E F8
        shl     ax, cl                          ; D3 E0
        or      word ptr [bx + 0xbae], ax       ; 09 87 AE 0B
L_0AA6:
        push    word ptr [0xbbe]                ; FF 36 BE 0B
        mov     ax, 0x10                        ; B8 10 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xbae                       ; B8 AE 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.SETBITMAPBITS           ; 9A 43 01 00 00 [FIXUP]
        push    word ptr [0xbc0]                ; FF 36 C0 0B
        call    far _entry_19                   ; 9A CE 08 00 00 [FIXUP]
        push    word ptr [0xbbe]                ; FF 36 BE 0B
        call    far GDI.CREATEPATTERNBRUSH      ; 9A 4C 01 00 00 [FIXUP]
        mov     word ptr [0xbc0], ax            ; A3 C0 0B
        push    word ptr [bp + 8]               ; FF 76 08
        cmp     word ptr [0xe66], 0             ; 83 3E 66 0E 00
        je      L_0ADE                          ; 74 05
        mov     ax, 4                           ; B8 04 00
        jmp     L_0AE0                          ; EB 02
L_0ADE:
        sub     ax, ax                          ; 2B C0
L_0AE0:
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 02 03 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 26 0B 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        imul    word ptr [0xae6]                ; F7 2E E6 0A
        add     ax, word ptr [0xb9c]            ; 03 06 9C 0B
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        imul    word ptr [0xb14]                ; F7 2E 14 0B
        add     ax, word ptr [0xba6]            ; 03 06 A6 0B
        push    ax                              ; 50
        mov     ax, word ptr [0xae6]            ; A1 E6 0A
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xb14]            ; A1 14 0B
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 49 0B 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xbc0]                ; FF 36 C0 0B
        call    far GDI.SELECTOBJECT            ; 9A 54 0B 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xe6c]                ; FF 36 6C 0E
        push    word ptr [0xe94]                ; FF 36 94 0E
        push    word ptr [0xe5a]                ; FF 36 5A 0E
        push    word ptr [0xe64]                ; FF 36 64 0E
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 64 03 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.SELECTOBJECT            ; 9A 32 03 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B5E -- offset 0x0B5E -- 26 instr
; Dispatcher: tabla de decisiones cmp+jcc (26 instr).
; tags: dispatcher
; callers: sub_04A2
;----------------------------------------------------------------------
L_0B5E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0xb9c]            ; A1 9C 0B
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jl      L_0B99                          ; 7C 2D
        mov     ax, word ptr [0xae6]            ; A1 E6 0A
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xb9c]            ; 03 06 9C 0B
        cmp     ax, word ptr es:[bx]            ; 26 3B 07
        jle     L_0B99                          ; 7E 1D
        mov     ax, word ptr [0xba6]            ; A1 A6 0B
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        jl      L_0B99                          ; 7C 14
        mov     ax, word ptr [0xb14]            ; A1 14 0B
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xba6]            ; 03 06 A6 0B
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        jge     L_0B99                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B9B                          ; EB 02
L_0B99:
        sub     ax, ax                          ; 2B C0
L_0B9B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BA1 -- offset 0x0BA1 -- 13 instr
; Wrapper que delega en sub_0BD3.
; tags: wrapper
; calls (intra): sub_0BD3
;----------------------------------------------------------------------
L_0BA1:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xbae                       ; B8 AE 0B
        push    ax                              ; 50
        mov     ax, word ptr [0xc50]            ; A1 50 0C
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     ax, 0xd8                        ; 05 D8 00
        push    ax                              ; 50
        call    L_0BD3                          ; E8 1D 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BBA -- offset 0x0BBA -- 13 instr
; Wrapper que delega en sub_0BD3.
; tags: wrapper
; callers: sub_084D
; calls (intra): sub_0BD3
;----------------------------------------------------------------------
L_0BBA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [0xc50]            ; A1 50 0C
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     ax, 0xd8                        ; 05 D8 00
        push    ax                              ; 50
        mov     ax, 0xbae                       ; B8 AE 0B
        push    ax                              ; 50
        call    L_0BD3                          ; E8 04 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BD3 -- offset 0x0BD3 -- 19 instr
; Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0BA1, sub_0BBA
;----------------------------------------------------------------------
L_0BD3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_0BDF:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        add     word ptr [bp + 4], 2            ; 83 46 04 02
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bx], ax               ; 89 07
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 8            ; 83 7E FE 08
        jl      L_0BDF                          ; 7C E5
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      004h                            ; 04

PAINT_TEXT ENDS

        END
