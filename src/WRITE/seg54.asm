; AUTO-GENERATED from original WRITE segment 54
; segment_size=5538 bytes, flags=0xf130
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
        call    far _entry_69                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        test    byte ptr [bx], 0x80             ; F6 07 80
        je      L_0020                          ; 74 08
        call    L_034A                          ; E8 2F 03
        mov     ax, 1                           ; B8 01 00
        jmp     L_0029                          ; EB 09
L_0020:
        call    L_0041                          ; E8 1E 00
        or      ax, ax                          ; 0B C0
        je      L_002F                          ; 74 08
        sub     ax, ax                          ; 2B C0
L_0029:
        push    ax                              ; 50
        call    far _entry_336                  ; 9A FF FF 00 00 [FIXUP]
L_002F:
        push    word ptr [0x1bc6]               ; FF 36 C6 1B
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0041 -- offset 0x0041 -- 277 instr
; Dispatcher: tabla de decisiones cmp+jcc (277 instr).
; tags: calls_gdi, calls_user, dispatcher
; calls (inter): GDI.CREATEBITMAP, GDI.CREATECOMPATIBLEDC, GDI.CREATEFONTINDIRECT, GDI.CREATEPEN, GDI.DELETEOBJECT, GDI.GETOBJECT (+14 mas)
;----------------------------------------------------------------------
L_0041:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x76                        ; 83 EC 76
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 0x15a                       ; B8 5A 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     dx, 0x4400                      ; BA 00 44
        push    dx                              ; 52
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    ax                              ; 50
        push    word ptr [0x782]                ; FF 36 82 07
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7a6], ax            ; A3 A6 07
        or      ax, ax                          ; 0B C0
        je      L_00B9                          ; 74 39
        push    ax                              ; 50
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7ba], ax            ; A3 BA 07
        or      ax, ax                          ; 0B C0
        je      L_00AA                          ; 74 1D
        push    ax                              ; 50
        call    far GDI.CREATECOMPATIBLEDC      ; 9A 9F 00 00 00 [FIXUP]
        mov     word ptr [0x7bc], ax            ; A3 BC 07
        or      ax, ax                          ; 0B C0
        je      L_00AA                          ; 74 10
        push    word ptr [0x7ba]                ; FF 36 BA 07
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7be], ax            ; A3 BE 07
        or      ax, ax                          ; 0B C0
        jne     L_00C3                          ; 75 19
L_00AA:
        push    word ptr [0x7a6]                ; FF 36 A6 07
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7a6], 0             ; C7 06 A6 07 00 00
L_00B9:
        call    far _entry_254                  ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        jmp     L_0346                          ; E9 83 02
L_00C3:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7c4], ax            ; A3 C4 07
        or      ax, ax                          ; 0B C0
        je      L_00AA                          ; 74 D0
        cmp     word ptr [0x7c0], 0             ; 83 3E C0 07 00
        je      L_00F2                          ; 74 11
        push    word ptr [0x7bc]                ; FF 36 BC 07
        push    word ptr [0x7c0]                ; FF 36 C0 07
        call    far GDI.SELECTOBJECT            ; 9A 17 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0107                          ; 75 15
L_00F2:
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0x210                       ; B8 10 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADBITMAP             ; 9A 29 01 00 00 [FIXUP]
        mov     word ptr [0x7c0], ax            ; A3 C0 07
        or      ax, ax                          ; 0B C0
        je      L_00AA                          ; 74 A3
L_0107:
        cmp     word ptr [0x7c2], 0             ; 83 3E C2 07 00
        je      L_011F                          ; 74 11
        push    word ptr [0x7bc]                ; FF 36 BC 07
        push    word ptr [0x7c2]                ; FF 36 C2 07
        call    far GDI.SELECTOBJECT            ; 9A 74 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0137                          ; 75 18
L_011F:
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0x218                       ; B8 18 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADBITMAP             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7c2], ax            ; A3 C2 07
        or      ax, ax                          ; 0B C0
        jne     L_0137                          ; 75 03
        jmp     L_00AA                          ; E9 73 FF
L_0137:
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xa0                        ; B8 A0 00
        push    ax                              ; 50
        push    word ptr [0xe16]                ; FF 36 16 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A FF FF 00 00 [FIXUP]
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.CREATEFONTINDIRECT      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        or      ax, ax                          ; 0B C0
        je      L_0184                          ; 74 16
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A F9 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0184                          ; 75 08
        push    word ptr [bp - 0x38]            ; FF 76 C8
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
L_0184:
        cmp     word ptr [0x658], 0             ; 83 3E 58 06 00
        je      L_018E                          ; 74 03
        jmp     L_0271                          ; E9 E3 00
L_018E:
        mov     ax, word ptr [0xe0e]            ; A1 0E 0E
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0x40]        ; 03 46 C0
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        push    word ptr [0x7c0]                ; FF 36 C0 07
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x76]                 ; 8D 46 8A
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A 3C 02 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x74]        ; 8B 46 8C
        cdq                                     ; 99
        mov     cx, 9                           ; B9 09 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x68], ax        ; 89 46 98
        mov     ax, word ptr [bp - 0x72]        ; 8B 46 8E
        mov     word ptr [0x658], ax            ; A3 58 06
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x9bc                       ; 05 BC 09
        mov     word ptr [bp - 0x66], ax        ; 89 46 9A
        jmp     L_0228                          ; EB 47
L_01E1:
        mov     bx, word ptr [bp - 0x66]        ; 8B 5E 9A
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x66]        ; 8B 5E 9A
        mov     word ptr [bx + 2], 1            ; C7 47 02 01 00
        mov     bx, word ptr [bp - 0x66]        ; 8B 5E 9A
        mov     ax, word ptr [bp - 0x68]        ; 8B 46 98
        add     word ptr [bp - 0x3e], ax        ; 01 46 C2
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     bx, word ptr [bp - 0x66]        ; 8B 5E 9A
        mov     ax, word ptr [bp - 0x72]        ; 8B 46 8E
        inc     ax                              ; 40
        mov     word ptr [bx + 6], ax           ; 89 47 06
        cmp     word ptr [bp - 0x64], 1         ; 83 7E 9C 01
        je      L_0216                          ; 74 06
        cmp     word ptr [bp - 0x64], 4         ; 83 7E 9C 04
        jne     L_021B                          ; 75 05
L_0216:
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        jmp     L_021E                          ; EB 03
L_021B:
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
L_021E:
        add     word ptr [bp - 0x3e], ax        ; 01 46 C2
        inc     word ptr [bp - 0x64]            ; FF 46 9C
        add     word ptr [bp - 0x66], 8         ; 83 46 9A 08
L_0228:
        cmp     word ptr [bp - 0x64], 9         ; 83 7E 9C 09
        jl      L_01E1                          ; 7C B3
        push    word ptr [0x7c2]                ; FF 36 C2 07
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x76]                 ; 8D 46 8A
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x74]        ; 8B 46 8C
        cdq                                     ; 99
        mov     cx, 5                           ; B9 05 00
        idiv    cx                              ; F7 F9
        mov     word ptr [0x9ba], ax            ; A3 BA 09
        mov     ax, word ptr [bp - 0x72]        ; 8B 46 8E
        mov     word ptr [0xa04], ax            ; A3 04 0A
        push    word ptr [0x7ba]                ; FF 36 BA 07
        lea     ax, [bp - 0x62]                 ; 8D 46 9E
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x60]        ; 8B 46 A0
        sub     ax, word ptr [bp - 0x5c]        ; 2B 46 A4
        add     ax, word ptr [0xa04]            ; 03 06 04 0A
        add     ax, 4                           ; 05 04 00
        add     word ptr [0x658], ax            ; 01 06 58 06
L_0271:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        or      byte ptr [bx], 0x80             ; 80 0F 80
        mov     ax, word ptr [0x658]            ; A1 58 06
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        sub     ax, word ptr [bx + 0xe]         ; 2B 47 0E
        inc     ax                              ; 40
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        push    word ptr [0x10aa]               ; FF 36 AA 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x36]            ; FF 76 CA
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [bp - 0x36]        ; 2B 46 CA
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.MOVEWINDOW             ; 9A B4 02 00 00 [FIXUP]
        push    word ptr [0x7a6]                ; FF 36 A6 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        push    word ptr [0x658]                ; FF 36 58 06
        push    ax                              ; 50
        call    far USER.MOVEWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x7a6]                ; FF 36 A6 07
        call    far USER.BRINGWINDOWTOTOP       ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [0x786]                ; FF 36 86 07
        push    word ptr [0x784]                ; FF 36 84 07
        call    far GDI.SETBKCOLOR              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [0x78a]                ; FF 36 8A 07
        push    word ptr [0x788]                ; FF 36 88 07
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [0x78c]                ; FF 36 8C 07
        call    far GDI.SELECTOBJECT            ; 9A 29 03 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x78a]                ; FF 36 8A 07
        push    word ptr [0x788]                ; FF 36 88 07
        call    far GDI.CREATEPEN               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        or      ax, ax                          ; 0B C0
        jne     L_0321                          ; 75 0C
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
L_0321:
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x7a6]                ; FF 36 A6 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x7a6]                ; FF 36 A6 07
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_0346:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_034A -- offset 0x034A -- 96 instr
; Funcion compleja: 96 instrucciones, 7 llamadas, 2 branches.
; tags: calls_gdi, calls_user, complex, far
; calls (intra): sub_042D, sub_04D3
; calls (inter): GDI.PATBLT, USER.DESTROYWINDOW, USER.INVALIDATERECT, USER.MOVEWINDOW, USER.VALIDATERECT
;----------------------------------------------------------------------
L_034A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [0x7ba]                ; FF 36 BA 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x13c4]               ; FF 36 C4 13
        push    word ptr [0x658]                ; FF 36 58 06
        push    word ptr [0x790]                ; FF 36 90 07
        push    word ptr [0x78e]                ; FF 36 8E 07
        call    far GDI.PATBLT                  ; 9A CC 03 00 00 [FIXUP]
        push    word ptr [0x7a6]                ; FF 36 A6 07
        call    far USER.DESTROYWINDOW          ; 9A AF 00 00 00 [FIXUP]
        mov     word ptr [0x7a6], 0             ; C7 06 A6 07 00 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_042D                          ; E8 AF 00
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        and     byte ptr [bx], 0x7f             ; 80 27 7F
        mov     word ptr [0x704], 1             ; C7 06 04 07 01 00
        push    word ptr [0x10aa]               ; FF 36 AA 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x13c4]               ; FF 36 C4 13
        mov     ax, word ptr [0x108a]           ; A1 8A 10
        sub     ax, word ptr [0x108c]           ; 2B 06 8C 10
        add     ax, word ptr [0x658]            ; 03 06 58 06
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.MOVEWINDOW             ; 9A 9F 02 00 00 [FIXUP]
        mov     word ptr [0x704], 0             ; C7 06 04 07 00 00
        push    word ptr [0x10b0]               ; FF 36 B0 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x13c4]               ; FF 36 C4 13
        push    word ptr [0x108c]               ; FF 36 8C 10
        push    word ptr [0x790]                ; FF 36 90 07
        push    word ptr [0x78e]                ; FF 36 8E 07
        call    far GDI.PATBLT                  ; 9A DA 05 00 00 [FIXUP]
        push    word ptr [0x780]                ; FF 36 80 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.VALIDATERECT           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x7a6], 0             ; 83 3E A6 07 00
        je      L_03FC                          ; 74 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04D3                          ; E8 D7 00
L_03FC:
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
        cmp     word ptr [0x7a6], 0             ; 83 3E A6 07 00
        je      L_0424                          ; 74 0E
        push    word ptr [0x7a6]                ; FF 36 A6 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
L_0424:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_042D -- offset 0x042D -- 86 instr
; Funcion compleja: 86 instrucciones, 1 llamadas, 3 branches.
; tags: complex, far
; callers: sub_034A
; calls (intra): sub_11BF
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
        mov     ax, word ptr [0x7c6]            ; A1 C6 07
        mov     word ptr [0x7cc], ax            ; A3 CC 07
        inc     ax                              ; 40
        jne     L_0446                          ; 75 06
        mov     word ptr [0x7cc], 0             ; C7 06 CC 07 00 00
L_0446:
        cmp     word ptr [0x708], 0             ; 83 3E 08 07 00
        je      L_0460                          ; 74 13
        mov     ax, 0x7c6                       ; B8 C6 07
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_81                   ; 9A 93 04 00 00 [FIXUP]
        jmp     L_0486                          ; EB 26
L_0460:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11BF                          ; E8 53 0D
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11BF                          ; E8 46 0D
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11BF                          ; E8 39 0D
L_0486:
        mov     ax, 0xc26                       ; B8 26 0C
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_81                   ; 9A A3 04 00 00 [FIXUP]
        mov     ax, 0x986                       ; B8 86 09
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_81                   ; 9A FF FF 00 00 [FIXUP]
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
        cmp     word ptr [0x7c6], 0             ; 83 3E C6 07 00
        je      L_04CA                          ; 74 09
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11BF                          ; E8 F5 0C
L_04CA:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04D3 -- offset 0x04D3 -- 1127 instr
; Dispatcher: tabla de decisiones cmp+jcc (1127 instr).
; tags: calls_gdi, calls_user, dispatcher, far
; callers: sub_034A, sub_1492
; calls (intra): sub_1105, sub_11BF, sub_1265, sub_12BC, sub_138A, sub_13C7 (+4 mas)
; calls (inter): GDI.BITBLT, GDI.CREATEBITMAP, GDI.DELETEOBJECT, GDI.GETTEXTEXTENT, GDI.GETTEXTMETRICS, GDI.INTERSECTCLIPRECT (+11 mas)
;----------------------------------------------------------------------
L_04D3:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x7c                        ; 83 EC 7C
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_04F5                          ; 74 03
        jmp     L_0812                          ; E9 1D 03
L_04F5:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0506                          ; 75 0B
        mov     ax, word ptr [0xa06]            ; A1 06 0A
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_0506                          ; 75 03
        jmp     L_076B                          ; E9 65 02
L_0506:
        push    word ptr [0x7ba]                ; FF 36 BA 07
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A 5C 02 00 00 [FIXUP]
        mov     ax, word ptr [0x658]            ; A1 58 06
        sub     ax, word ptr [0xa04]            ; 2B 06 04 0A
        dec     ax                              ; 48
        dec     ax                              ; 48
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     cx, word ptr [bp - 0x36]        ; 8B 4E CA
        sub     cx, word ptr [bp - 0x32]        ; 2B 4E CE
        mov     word ptr [bp - 0x10], cx        ; 89 4E F0
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
        cmp     word ptr [0x30e], 0             ; 83 3E 0E 03 00
        jne     L_058D                          ; 75 55
        mov     ax, word ptr [0xe0e]            ; A1 0E 0E
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0xa], 8          ; C7 46 F6 08 00
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x3a]        ; 8B 56 C6
        shl     dx, cl                          ; D3 E2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     di, word ptr [bp - 0x10]        ; 8B 7E F0
        mov     cl, 2                           ; B1 02
        sar     di, cl                          ; D3 FF
        add     word ptr [bp - 0x3c], di        ; 01 7E C4
        mov     ax, word ptr [bp - 0x3c]        ; 8B 46 C4
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        add     word ptr [bp - 0x3c], di        ; 01 7E C4
        mov     ax, word ptr [bp - 0x3c]        ; 8B 46 C4
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        add     word ptr [bp - 0x3c], di        ; 01 7E C4
        mov     ax, word ptr [bp - 0x3c]        ; 8B 46 C4
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        jmp     L_05B8                          ; EB 2B
L_058D:
        mov     ax, word ptr [0x1212]           ; A1 12 12
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0xa], 2          ; C7 46 F6 02 00
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     cx, word ptr [bp - 0x3a]        ; 8B 4E C6
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
L_05B8:
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0624                          ; 74 63
        push    word ptr [0x7ba]                ; FF 36 BA 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x13c4]               ; FF 36 C4 13
        push    word ptr [0x658]                ; FF 36 58 06
        push    word ptr [0x790]                ; FF 36 90 07
        push    word ptr [0x78e]                ; FF 36 8E 07
        call    far GDI.PATBLT                  ; 9A 42 06 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [0x1112]               ; FF 36 12 11
        mov     ax, word ptr [0x658]            ; A1 58 06
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far GDI.MOVETO                  ; 9A 0E 06 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [0x13c4]               ; FF 36 C4 13
        mov     ax, word ptr [0x658]            ; A1 58 06
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A 1E 06 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [0x1112]               ; FF 36 12 11
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.MOVETO                  ; 9A 8A 06 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [0x13c4]               ; FF 36 C4 13
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.LINETO                  ; 9A 97 06 00 00 [FIXUP]
        jmp     L_0646                          ; EB 22
L_0624:
        push    word ptr [0x7ba]                ; FF 36 BA 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x50]            ; FF 76 B0
        push    word ptr [0x13c4]               ; FF 36 C4 13
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 0x50]        ; 2B 46 B0
        push    ax                              ; 50
        push    word ptr [0x790]                ; FF 36 90 07
        push    word ptr [0x78e]                ; FF 36 8E 07
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
L_0646:
        push    word ptr [0x7ba]                ; FF 36 BA 07
        call    far GDI.SAVEDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [0x1112]               ; FF 36 12 11
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x13c4]               ; FF 36 C4 13
        push    word ptr [0x658]                ; FF 36 58 06
        call    far GDI.INTERSECTCLIPRECT       ; 9A FF FF 00 00 [FIXUP]
        sub     di, di                          ; 2B FF
        mov     si, word ptr [0x1112]           ; 8B 36 12 11
        sub     si, word ptr [bp - 6]           ; 2B 76 FA
        jmp     L_06A6                          ; EB 31
L_0675:
        cmp     word ptr [bp - 8], di           ; 39 7E F8
        jle     L_067B                          ; 7E 01
        inc     si                              ; 46
L_067B:
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    si                              ; 56
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        add     bx, bp                          ; 03 DD
        push    word ptr [bx - 0x4c]            ; FF 77 B4
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    si                              ; 56
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        inc     di                              ; 47
        cmp     word ptr [bp - 0xa], di         ; 39 7E F6
        jne     L_06A3                          ; 75 02
        sub     di, di                          ; 2B FF
L_06A3:
        add     si, word ptr [bp - 0x3a]        ; 03 76 C6
L_06A6:
        cmp     word ptr [0x13c4], si           ; 39 36 C4 13
        jg      L_0675                          ; 7F C9
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        mov     si, word ptr [0x1112]           ; 8B 36 12 11
        sub     si, word ptr [bp - 6]           ; 2B 76 FA
        mov     al, 0x30                        ; B0 30
        mov     byte ptr [bp - 0x11], al        ; 88 46 EF
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        jmp     L_0756                          ; E9 8C 00
L_06CA:
        cmp     byte ptr [bp - 0x11], 0x39      ; 80 7E EF 39
        jbe     L_06D7                          ; 76 07
        inc     byte ptr [bp - 0x12]            ; FE 46 EE
        mov     byte ptr [bp - 0x11], 0x30      ; C6 46 EF 30
L_06D7:
        cmp     byte ptr [bp - 0x12], 0x30      ; 80 7E EE 30
        jne     L_06E2                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_06E4                          ; EB 02
L_06E2:
        sub     ax, ax                          ; 2B C0
L_06E4:
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        push    word ptr [0x7ba]                ; FF 36 BA 07
        mov     di, ax                          ; 8B F8
        lea     ax, [bp + di - 0x12]            ; 8D 43 EE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        add     ax, word ptr [bp - 0x4e]        ; 03 46 B2
        cmp     ax, word ptr [bp - 0x3a]        ; 3B 46 C6
        jl      L_072C                          ; 7C 24
        push    word ptr [0x7ba]                ; FF 36 BA 07
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        add     ax, si                          ; 03 C6
        push    ax                              ; 50
        push    word ptr [bp - 0x50]            ; FF 76 B0
        push    word ptr [bp - 0x56]            ; FF 76 AA
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 0x50]        ; 2B 46 B0
        push    ax                              ; 50
        push    word ptr [0x790]                ; FF 36 90 07
        push    word ptr [0x78e]                ; FF 36 8E 07
        call    far GDI.PATBLT                  ; 9A 8F 09 00 00 [FIXUP]
L_072C:
        push    word ptr [0x7ba]                ; FF 36 BA 07
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        add     ax, si                          ; 03 C6
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x50]        ; 8B 46 B0
        sub     ax, word ptr [bp - 0x32]        ; 2B 46 CE
        push    ax                              ; 50
        mov     di, word ptr [bp - 0x54]        ; 8B 7E AC
        lea     ax, [bp + di - 0x12]            ; 8D 43 EE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        add     si, word ptr [bp - 0x14]        ; 03 76 EC
        inc     byte ptr [bp - 0x11]            ; FE 46 EF
L_0756:
        cmp     word ptr [0x13c4], si           ; 39 36 C4 13
        jle     L_075F                          ; 7E 03
        jmp     L_06CA                          ; E9 6B FF
L_075F:
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far GDI.RESTOREDC               ; 9A FF FF 00 00 [FIXUP]
L_076B:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0774                          ; 75 03
        jmp     L_0812                          ; E9 9E 00
L_0774:
        mov     si, 0x9bc                       ; BE BC 09
        push    word ptr [0x7bc]                ; FF 36 BC 07
        push    word ptr [0x7c0]                ; FF 36 C0 07
        call    far GDI.SELECTOBJECT            ; 9A A3 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_07B2                          ; 75 2A
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0x210                       ; B8 10 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADBITMAP             ; 9A FC 00 00 00 [FIXUP]
        mov     word ptr [0x7c0], ax            ; A3 C0 07
        or      ax, ax                          ; 0B C0
        je      L_07AB                          ; 74 0E
        push    word ptr [0x7bc]                ; FF 36 BC 07
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 0E 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_07B2                          ; 75 07
L_07AB:
        call    far _entry_254                  ; 9A 41 09 00 00 [FIXUP]
        jmp     L_0812                          ; EB 60
L_07B2:
        mov     word ptr [bp - 0x58], 0         ; C7 46 A8 00 00
L_07B7:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si]               ; 2B 04
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [si]                   ; FF 34
        push    word ptr [si + 2]               ; FF 74 02
        push    ax                              ; 50
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [si + 2]           ; 2B 44 02
        push    ax                              ; 50
        push    word ptr [0x7bc]                ; FF 36 BC 07
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        imul    word ptr [bp - 0x5c]            ; F7 6E A4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        cmp     word ptr [0x792], ax            ; 39 06 92 07
        je      L_07EC                          ; 74 08
        mov     ax, 0x66                        ; B8 66 00
        mov     dx, 0x99                        ; BA 99 00
        jmp     L_07F2                          ; EB 06
L_07EC:
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
L_07F2:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        add     si, 8                           ; 83 C6 08
        inc     word ptr [bp - 0x58]            ; FF 46 A8
        cmp     word ptr [bp - 0x58], 9         ; 83 7E A8 09
        jl      L_07B7                          ; 7C B2
        push    word ptr [0x7bc]                ; FF 36 BC 07
        push    word ptr [0x7c4]                ; FF 36 C4 07
        call    far GDI.SELECTOBJECT            ; 9A 58 09 00 00 [FIXUP]
L_0812:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_081B                          ; 74 03
        jmp     L_0A7B                          ; E9 60 02
L_081B:
        mov     di, word ptr [0x9ba]            ; 8B 3E BA 09
        sar     di, 1                           ; D1 FF
        mov     ax, word ptr [0x1112]           ; A1 12 11
        sub     ax, di                          ; 2B C7
        mov     word ptr [bp - 0x72], ax        ; 89 46 8E
        mov     ax, word ptr [0x13c4]           ; A1 C4 13
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        sub     ax, di                          ; 2B C7
        mov     word ptr [bp - 0x76], ax        ; 89 46 8A
        cmp     word ptr [0x7c6], -1            ; 83 3E C6 07 FF
        jne     L_0848                          ; 75 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x7cc]                ; FF 36 CC 07
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11BF                          ; E8 77 09
L_0848:
        lea     ax, [bp - 0x70]                 ; 8D 46 90
        push    ax                              ; 50
        call    far _entry_74                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        cmp     byte ptr [bp - 0x6b], 0         ; 80 7E 95 00
        je      L_0860                          ; 74 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_086F                          ; EB 0F
L_0860:
        mov     ax, word ptr [bp - 0x6d]        ; 8B 46 93
        sub     ax, 0xf0                        ; 2D F0 00
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x78                        ; B9 78 00
        div     cx                              ; F7 F1
        inc     ax                              ; 40
        inc     ax                              ; 40
L_086F:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11BF                          ; E8 4A 09
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        cmp     byte ptr [bp - 0x6e], 0         ; 80 7E 92 00
        je      L_0884                          ; 74 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_088A                          ; EB 06
L_0884:
        mov     ax, word ptr [bp - 0x70]        ; 8B 46 90
        add     ax, 5                           ; 05 05 00
L_088A:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11BF                          ; E8 2F 09
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_88                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0919                          ; 75 61
        mov     ax, word ptr [0xa06]            ; A1 06 0A
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_0919                          ; 75 59
        mov     ax, word ptr [0xb78]            ; A1 78 0B
        add     ax, word ptr [0xb7a]            ; 03 06 7A 0B
        cmp     ax, word ptr [0xc26]            ; 3B 06 26 0C
        jne     L_0919                          ; 75 4C
        mov     ax, word ptr [0xb78]            ; A1 78 0B
        cmp     word ptr [0xc28], ax            ; 39 06 28 0C
        jne     L_0919                          ; 75 43
        mov     ax, word ptr [0xe26]            ; A1 26 0E
        sub     ax, word ptr [0xb76]            ; 2B 06 76 0B
        cmp     ax, word ptr [0xc2a]            ; 3B 06 2A 0C
        jne     L_0919                          ; 75 36
        mov     si, 0x986                       ; BE 86 09
        mov     di, 0xb88                       ; BF 88 0B
L_08E9:
        mov     ax, word ptr [di]               ; 8B 05
        cmp     word ptr [si], ax               ; 39 04
        jne     L_0919                          ; 75 2A
        cmp     word ptr [si], 0                ; 83 3C 00
        jne     L_08F7                          ; 75 03
        jmp     L_0A7B                          ; E9 84 01
L_08F7:
        mov     al, byte ptr [di + 2]           ; 8A 45 02
        and     al, 7                           ; 24 07
        mov     byte ptr [bp - 0x7a], al        ; 88 46 86
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        and     al, 7                           ; 24 07
        mov     byte ptr [bp - 0x7c], al        ; 88 46 84
        mov     al, byte ptr [bp - 0x7a]        ; 8A 46 86
        cmp     byte ptr [bp - 0x7c], al        ; 38 46 84
        je      L_0948                          ; 74 39
        cmp     byte ptr [bp - 0x7c], 3         ; 80 7E 84 03
        je      L_0919                          ; 74 04
        cmp     al, 3                           ; 3C 03
        jne     L_0948                          ; 75 2F
L_0919:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0xa06], ax            ; A3 06 0A
        mov     ax, word ptr [0x13c4]           ; A1 C4 13
        add     ax, word ptr [0x9ba]            ; 03 06 BA 09
        push    ax                              ; 50
        push    word ptr [0xa04]                ; FF 36 04 0A
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A CF 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0950                          ; 75 10
        call    far _entry_254                  ; 9A BA 00 00 00 [FIXUP]
        jmp     L_0A7B                          ; E9 33 01
L_0948:
        add     si, 4                           ; 83 C6 04
        add     di, 4                           ; 83 C7 04
        jmp     L_08E9                          ; EB 99
L_0950:
        push    word ptr [0x7be]                ; FF 36 BE 07
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.SELECTOBJECT            ; 9A EA 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.DELETEOBJECT            ; 9A 80 01 00 00 [FIXUP]
        push    word ptr [0x7be]                ; FF 36 BE 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0x13c4]           ; A1 C4 13
        add     ax, word ptr [0x9ba]            ; 03 06 BA 09
        push    ax                              ; 50
        push    word ptr [0xa04]                ; FF 36 04 0A
        cmp     word ptr [0x792], 0             ; 83 3E 92 07 00
        je      L_0986                          ; 74 09
        mov     ax, word ptr [0x78e]            ; A1 8E 07
        mov     dx, word ptr [0x790]            ; 8B 16 90 07
        jmp     L_098C                          ; EB 06
L_0986:
        mov     ax, 0x62                        ; B8 62 00
        mov     dx, 0xff                        ; BA FF 00
L_098C:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A B8 09 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0x658]            ; A1 58 06
        sub     ax, word ptr [0xa04]            ; 2B 06 04 0A
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0x13c4]           ; A1 C4 13
        add     ax, word ptr [0x9ba]            ; 03 06 BA 09
        push    ax                              ; 50
        push    word ptr [0xa04]                ; FF 36 04 0A
        push    word ptr [0x790]                ; FF 36 90 07
        push    word ptr [0x78e]                ; FF 36 8E 07
        call    far GDI.PATBLT                  ; 9A 66 03 00 00 [FIXUP]
        mov     ax, word ptr [0xb78]            ; A1 78 0B
        add     ax, word ptr [0xb7a]            ; 03 06 7A 0B
        mov     word ptr [0xc26], ax            ; A3 26 0C
        mov     ax, word ptr [0xb78]            ; A1 78 0B
        mov     word ptr [0xc28], ax            ; A3 28 0C
        mov     ax, word ptr [0xe26]            ; A1 26 0E
        mov     word ptr [0x12c4], ax           ; A3 C4 12
        sub     ax, word ptr [0xb76]            ; 2B 06 76 0B
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        mov     word ptr [bp - 0x5e], 0         ; C7 46 A2 00 00
L_09DE:
        mov     bx, word ptr [bp - 0x5e]        ; 8B 5E A2
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0xc26]           ; FF B7 26 0C
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 3F 0A 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        sub     di, word ptr [bp - 6]           ; 2B 7E FA
        or      di, di                          ; 0B FF
        jl      L_0A11                          ; 7C 14
        cmp     word ptr [bp - 0x76], di        ; 39 7E 8A
        jle     L_0A11                          ; 7E 0F
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     ax, word ptr [bp - 0x72]        ; 8B 46 8E
        add     ax, di                          ; 03 C7
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_12BC                          ; E8 AB 08
L_0A11:
        inc     word ptr [bp - 0x5e]            ; FF 46 A2
        cmp     word ptr [bp - 0x5e], 3         ; 83 7E A2 03
        jl      L_09DE                          ; 7C C4
        mov     si, 0x986                       ; BE 86 09
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0A72                          ; 75 4F
        mov     ax, 0xb88                       ; B8 88 0B
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0A72                          ; EB 3F
L_0A33:
        push    word ptr [bp - 0x74]            ; FF 76 8C
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 54 01 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        sub     di, word ptr [bp - 6]           ; 2B 7E FA
        or      di, di                          ; 0B FF
        jl      L_0A6F                          ; 7C 23
        cmp     word ptr [bp - 0x76], di        ; 39 7E 8A
        jle     L_0A6F                          ; 7E 1E
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        and     al, 7                           ; 24 07
        cmp     al, 3                           ; 3C 03
        jne     L_0A5F                          ; 75 05
        mov     ax, 4                           ; B8 04 00
        jmp     L_0A62                          ; EB 03
L_0A5F:
        mov     ax, 3                           ; B8 03 00
L_0A62:
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x72]        ; 8B 46 8E
        add     ax, di                          ; 03 C7
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_12BC                          ; E8 4D 08
L_0A6F:
        add     si, 4                           ; 83 C6 04
L_0A72:
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 0x74], ax        ; 89 46 8C
        or      ax, ax                          ; 0B C0
        jne     L_0A33                          ; 75 B8
L_0A7B:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0xa06], ax            ; A3 06 0A
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0x46                        ; 83 EC 46
        push    si                              ; 56
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0ABA                          ; 75 03
        jmp     L_10F9                          ; E9 3F 06
L_0ABA:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        call    L_1105                          ; E8 3A 06
        cmp     word ptr [bp - 0x10], 3         ; 83 7E F0 03
        je      L_0AD4                          ; 74 03
        jmp     L_0C4B                          ; E9 77 01
L_0AD4:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        add     ax, word ptr [0xa06]            ; 03 06 06 0A
        push    ax                              ; 50
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        call    far _entry_94                   ; 9A 25 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x1e], 0         ; C7 46 E2 00 00
L_0AF5:
        cmp     word ptr [bp - 0x1e], 3         ; 83 7E E2 03
        jge     L_0B73                          ; 7D 78
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0xc26]           ; FF B7 26 0C
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    L_138A                          ; E8 80 08
        or      ax, ax                          ; 0B C0
        je      L_0B6E                          ; 74 60
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0xc26]           ; FF B7 26 0C
L_0B1C:
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 25 0C 00 00 [FIXUP]
        mov     cx, word ptr [0x9ba]            ; 8B 0E BA 09
        sar     cx, 1                           ; D1 F9
        sub     ax, cx                          ; 2B C1
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        sub     ax, word ptr [0xa06]            ; 2B 06 06 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1265                          ; E8 23 07
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    ax                              ; 50
        mov     ax, word ptr [0x658]            ; A1 58 06
        sub     ax, word ptr [0xa04]            ; 2B 06 04 0A
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [0x9ba]                ; FF 36 BA 09
        push    word ptr [0xa04]                ; FF 36 04 0A
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 28 07 00 00 [FIXUP]
        jmp     L_0C5F                          ; E9 F1 00
L_0B6E:
        inc     word ptr [bp - 0x1e]            ; FF 46 E2
        jmp     L_0AF5                          ; EB 82
L_0B73:
        mov     word ptr [bp - 0x20], 0         ; C7 46 E0 00 00
        mov     word ptr [bp - 0x18], 0x986     ; C7 46 E8 86 09
L_0B7D:
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        cmp     word ptr [bx], 0                ; 83 3F 00
        jne     L_0B93                          ; 75 0E
        cmp     word ptr [bp - 0x20], 0xc       ; 83 7E E0 0C
        jl      L_0BDA                          ; 7C 4F
        call    far _entry_174                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_10F9                          ; E9 66 05
L_0B93:
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    L_138A                          ; E8 EC 07
        or      ax, ax                          ; 0B C0
        je      L_0BD1                          ; 74 2F
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        sub     ah, ah                          ; 2A E4
        and     ax, 7                           ; 25 07 00
        add     ax, 4                           ; 05 04 00
        cmp     ax, 7                           ; 3D 07 00
        jne     L_0BC5                          ; 75 05
        mov     ax, 4                           ; B8 04 00
        jmp     L_0BC8                          ; EB 03
L_0BC5:
        mov     ax, 3                           ; B8 03 00
L_0BC8:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 0x16]            ; FF 76 EA
        jmp     L_0B1C                          ; E9 4B FF
L_0BD1:
        inc     word ptr [bp - 0x20]            ; FF 46 E0
        add     word ptr [bp - 0x18], 4         ; 83 46 E8 04
        jmp     L_0B7D                          ; EB A3
L_0BDA:
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_81                   ; 9A 5A 04 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_13C7                          ; E8 D7 07
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        cmp     word ptr [0x7c6], 0             ; 83 3E C6 07 00
        jne     L_0BFE                          ; 75 04
        mov     al, 4                           ; B0 04
        jmp     L_0C00                          ; EB 02
L_0BFE:
        mov     al, 7                           ; B0 07
L_0C00:
        sub     al, 4                           ; 2C 04
        and     al, 7                           ; 24 07
        mov     cl, byte ptr [bp - 0x14]        ; 8A 4E EC
        and     cl, 0xf8                        ; 80 E1 F8
        or      al, cl                          ; 0A C1
        mov     byte ptr [bp - 0x14], al        ; 88 46 EC
        mov     ax, word ptr [0x7c6]            ; A1 C6 07
        add     ax, 3                           ; 05 03 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 16 0D 00 00 [FIXUP]
        mov     cx, word ptr [0x9ba]            ; 8B 0E BA 09
        sar     cx, 1                           ; D1 F9
        sub     ax, cx                          ; 2B C1
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        sub     ax, word ptr [0xa06]            ; 2B 06 06 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_12BC                          ; E8 78 06
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        jmp     L_0C5F                          ; EB 14
L_0C4B:
        cmp     word ptr [bp - 0x10], -1        ; 83 7E F0 FF
        jne     L_0C54                          ; 75 03
        jmp     L_10F9                          ; E9 A5 04
L_0C54:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11BF                          ; E8 60 05
L_0C5F:
        push    word ptr [0x7a6]                ; FF 36 A6 07
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0D79                          ; E9 0E 01
L_0C6B:
        cmp     word ptr [bp - 0x10], 3         ; 83 7E F0 03
        je      L_0C74                          ; 74 03
        jmp     L_0D55                          ; E9 E1 00
L_0C74:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, word ptr [0x13c4]           ; 3B 06 C4 13
        jle     L_0C85                          ; 7E 05
        mov     ax, word ptr [0x13c4]           ; A1 C4 13
        jmp     L_0C8D                          ; EB 08
L_0C85:
        mov     ax, word ptr [0x1112]           ; A1 12 11
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_0C90                          ; 7D 03
L_0C8D:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0C90:
        push    word ptr [0x12c4]               ; FF 36 C4 12
        call    L_13F3                          ; E8 5C 07
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     si, ax                          ; 8B F0
        call    L_13C7                          ; E8 25 07
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        cmp     ax, si                          ; 3B C6
        jbe     L_0CB5                          ; 76 0C
        cmp     word ptr [bp - 6], 3            ; 83 7E FA 03
        jge     L_0CB5                          ; 7D 06
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
L_0CB5:
        cmp     word ptr [bp - 6], 3            ; 83 7E FA 03
        jl      L_0CD3                          ; 7C 18
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_0D3C                          ; 7C 7B
        mov     ax, word ptr [0x658]            ; A1 58 06
        add     ax, word ptr [0xa04]            ; 03 06 04 0A
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jle     L_0D3C                          ; 7E 6F
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        je      L_0D3C                          ; 74 69
L_0CD3:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jne     L_0CF0                          ; 75 17
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     cx, word ptr [0x9ba]            ; 8B 0E BA 09
        sar     cx, 1                           ; D1 F9
        add     ax, cx                          ; 03 C1
        push    ax                              ; 50
        call    L_13C7                          ; E8 DF 06
        cmp     ax, word ptr [bp - 0x1a]        ; 3B 46 E6
        jne     L_0CF0                          ; 75 03
        jmp     L_0D79                          ; E9 89 00
L_0CF0:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jne     L_0D07                          ; 75 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_12BC                          ; E8 B5 05
L_0D07:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 29 0E 00 00 [FIXUP]
        mov     cx, word ptr [0x9ba]            ; 8B 0E BA 09
        sar     cx, 1                           ; D1 F9
        sub     ax, cx                          ; 2B C1
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        sub     ax, word ptr [0xa06]            ; 2B 06 06 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_12BC                          ; E8 87 05
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_0D79                          ; EB 3D
L_0D3C:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jne     L_0D4E                          ; 75 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_12BC                          ; E8 6E 05
L_0D4E:
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
        jmp     L_0D79                          ; EB 24
L_0D55:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        call    L_1105                          ; E8 9F 03
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jne     L_0D79                          ; 75 0B
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0x12]            ; FF 76 EE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11BF                          ; E8 46 04
L_0D79:
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ax                              ; 50
        call    far _entry_337                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0D89                          ; 74 03
        jmp     L_0C6B                          ; E9 E2 FE
L_0D89:
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x10], 3         ; 83 7E F0 03
        je      L_0D97                          ; 74 03
        jmp     L_0EAE                          ; E9 17 01
L_0D97:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jne     L_0DA9                          ; 75 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_12BC                          ; E8 13 05
L_0DA9:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_0DCA                          ; 74 1B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, word ptr [0x13c4]           ; 3B 06 C4 13
        jle     L_0DC0                          ; 7E 05
        mov     ax, word ptr [0x13c4]           ; A1 C4 13
        jmp     L_0DD5                          ; EB 15
L_0DC0:
        mov     ax, word ptr [0x1112]           ; A1 12 11
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_0DD8                          ; 7D 10
        jmp     L_0DD5                          ; EB 0B
L_0DCA:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     cx, word ptr [0x9ba]            ; 8B 0E BA 09
        sar     cx, 1                           ; D1 F9
        add     ax, cx                          ; 03 C1
L_0DD5:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0DD8:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_13C7                          ; E8 E9 05
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        cmp     ax, word ptr [0x12c4]           ; 3B 06 C4 12
        jbe     L_0DF3                          ; 76 0C
        cmp     word ptr [bp - 6], 3            ; 83 7E FA 03
        jge     L_0DF3                          ; 7D 06
        mov     ax, word ptr [0x12c4]           ; A1 C4 12
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
L_0DF3:
        cmp     word ptr [bp - 6], 3            ; 83 7E FA 03
        jl      L_0E1A                          ; 7C 21
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_0E02                          ; 7D 03
        jmp     L_0EA0                          ; E9 9E 00
L_0E02:
        mov     ax, word ptr [0x658]            ; A1 58 06
        add     ax, word ptr [0xa04]            ; 03 06 04 0A
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jg      L_0E11                          ; 7F 03
        jmp     L_0EA0                          ; E9 8F 00
L_0E11:
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        jne     L_0E1A                          ; 75 03
        jmp     L_0EA0                          ; E9 86 00
L_0E1A:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A F0 09 00 00 [FIXUP]
        mov     cx, word ptr [0x9ba]            ; 8B 0E BA 09
        sar     cx, 1                           ; D1 F9
        sub     ax, cx                          ; 2B C1
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        sub     ax, word ptr [0xa06]            ; 2B 06 06 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_12BC                          ; E8 78 04
        cmp     word ptr [bp - 6], 3            ; 83 7E FA 03
        jge     L_0E72                          ; 7D 28
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        shl     si, 1                           ; D1 E6
        add     si, 0xc26                       ; 81 C6 26 0C
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cmp     word ptr [si], ax               ; 39 04
        je      L_0E5F                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0E61                          ; EB 02
L_0E5F:
        sub     ax, ax                          ; 2B C0
L_0E61:
        mov     word ptr [0x65e], ax            ; A3 5E 06
        or      ax, ax                          ; 0B C0
        jne     L_0E6B                          ; 75 03
        jmp     L_0EEE                          ; E9 83 00
L_0E6B:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [si], ax               ; 89 04
        jmp     L_0EEE                          ; EB 7C
L_0E72:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        cmp     word ptr [bx], 0                ; 83 3F 00
        jne     L_0E89                          ; 75 09
L_0E80:
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ax                              ; 50
        call    L_1492                          ; E8 0B 06
        jmp     L_0EEE                          ; EB 65
L_0E89:
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_1557                          ; E8 C3 06
        or      ax, ax                          ; 0B C0
        jne     L_0EEE                          ; 75 56
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    L_1465                          ; E8 C7 05
        jmp     L_0E80                          ; EB E0
L_0EA0:
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        cmp     word ptr [bx], 0                ; 83 3F 00
        je      L_0EEE                          ; 74 46
        push    bx                              ; 53
        call    L_1465                          ; E8 B9 05
        jmp     L_0EEE                          ; EB 40
L_0EAE:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ax                              ; 50
        call    L_1105                          ; E8 46 02
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jne     L_0ED6                          ; 75 0F
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11BF                          ; E8 E9 02
L_0ED6:
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bx + 0x7c6], ax       ; 39 87 C6 07
        je      L_0EE9                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0EEB                          ; EB 02
L_0EE9:
        sub     ax, ax                          ; 2B C0
L_0EEB:
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
L_0EEE:
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_0EFA                          ; 74 06
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jne     L_0F0B                          ; 75 11
L_0EFA:
        cmp     word ptr [0x65e], 0             ; 83 3E 5E 06 00
        jne     L_0F0B                          ; 75 0A
        cmp     word ptr [0x65c], 0             ; 83 3E 5C 06 00
        jne     L_0F0B                          ; 75 03
        jmp     L_10F9                          ; E9 EE 01
L_0F0B:
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        push    ax                              ; 50
        call    far _entry_77                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [0x1be8], dx           ; 39 16 E8 1B
        jl      L_0F2E                          ; 7C 0D
        jg      L_0F29                          ; 7F 06
        cmp     word ptr [0x1be6], ax           ; 39 06 E6 1B
        jbe     L_0F2E                          ; 76 05
L_0F29:
        mov     ax, 2                           ; B8 02 00
        jmp     L_0F30                          ; EB 02
L_0F2E:
        sub     ax, ax                          ; 2B C0
L_0F30:
        sub     dx, dx                          ; 2B D2
        mov     cx, word ptr [0x1be6]           ; 8B 0E E6 1B
        mov     bx, word ptr [0x1be8]           ; 8B 1E E8 1B
        sub     cx, word ptr [0x1be2]           ; 2B 0E E2 1B
        sbb     bx, word ptr [0x1be4]           ; 1B 1E E4 1B
        mov     word ptr [bp - 0x2c], cx        ; 89 4E D4
        mov     word ptr [bp - 0x2a], bx        ; 89 5E D6
        sub     cx, ax                          ; 2B C8
        sbb     bx, dx                          ; 1B DA
        mov     word ptr [bp - 0x44], cx        ; 89 4E BC
        mov     word ptr [bp - 0x42], bx        ; 89 5E BE
        mov     ax, 0x29                        ; B8 29 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        cmp     word ptr [bp - 0x10], 3         ; 83 7E F0 03
        jne     L_0F6E                          ; 75 06
        cmp     word ptr [bp - 6], 3            ; 83 7E FA 03
        jge     L_0F76                          ; 7D 08
L_0F6E:
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     dx, word ptr [bp - 0x2a]        ; 8B 56 D6
        jmp     L_0F7C                          ; EB 06
L_0F76:
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        mov     dx, word ptr [bp - 0x42]        ; 8B 56 BE
L_0F7C:
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x42]            ; FF 76 BE
        push    word ptr [bp - 0x44]            ; FF 76 BC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     ax, 1                           ; 3D 01 00
        je      L_0FA8                          ; 74 0D
        cmp     ax, 2                           ; 3D 02 00
        je      L_0FBA                          ; 74 1A
        cmp     ax, 3                           ; 3D 03 00
        je      L_0FC7                          ; 74 22
        jmp     L_10C0                          ; E9 18 01
L_0FA8:
        mov     word ptr [bp - 0x46], 0xb       ; C7 46 BA 0B 00
        mov     ax, 0x78                        ; B8 78 00
        imul    word ptr [0x7c8]                ; F7 2E C8 07
L_0FB4:
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        jmp     L_10C0                          ; E9 06 01
L_0FBA:
        mov     word ptr [bp - 0x46], 4         ; C7 46 BA 04 00
        mov     ax, word ptr [0x7ca]            ; A1 CA 07
        sub     ax, 5                           ; 2D 05 00
        jmp     L_0FB4                          ; EB ED
L_0FC7:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     ax, 4                           ; 3D 04 00
        jbe     L_0FD2                          ; 76 03
        jmp     L_10BA                          ; E9 E8 00
L_0FD2:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x10b0]       ; 2E FF A7 B0 10
        mov     word ptr [bp - 0x46], 3         ; C7 46 BA 03 00
        mov     ax, word ptr [0xc26]            ; A1 26 0C
        sub     ax, word ptr [0xc28]            ; 2B 06 28 0C
L_0FE6:
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        jmp     L_10BA                          ; E9 CE 00
        mov     ax, word ptr [0xc26]            ; A1 26 0C
        sub     ax, word ptr [0xc28]            ; 2B 06 28 0C
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 0x32]            ; FF 46 CE
        mov     byte ptr [bx], 3                ; C6 07 03
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ax                              ; 50
        push    word ptr [bp - 0x32]            ; FF 76 CE
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A DC 10 00 00 [FIXUP]
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_107                  ; 9A E8 10 00 00 [FIXUP]
        mov     word ptr [bp - 0x46], 1         ; C7 46 BA 01 00
        mov     ax, word ptr [0xc28]            ; A1 28 0C
        jmp     L_0FE6                          ; EB BC
        mov     word ptr [bp - 0x46], 2         ; C7 46 BA 02 00
        mov     ax, word ptr [0x12c4]           ; A1 C4 12
        sub     ax, word ptr [0xc2a]            ; 2B 06 2A 0C
        jmp     L_0FE6                          ; EB AE
        mov     word ptr [0x65c], 0             ; C7 06 5C 06 00 00
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x14]   ; 8B 40 14
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        or      ax, ax                          ; 0B C0
        jne     L_107E                          ; 75 27
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        inc     ax                              ; 40
        jne     L_1069                          ; 75 03
        jmp     L_10F9                          ; E9 90 00
L_1069:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        mov     word ptr [bx + si + 0x14], ax   ; 89 40 14
L_107E:
        mov     ax, 0x986                       ; B8 86 09
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x2e]        ; 8B 5E D2
        push    word ptr [bx]                   ; FF 37
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 2D 0A 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        or      byte ptr [bx + si + 6], 2       ; 80 48 06 02
        mov     word ptr [0x2d0], 0xffff        ; C7 06 D0 02 FF FF
        call    far _entry_79                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_10EC                          ; EB 3C
        fimul   dword ptr [bx]                  ; DA 0F
        in      al, dx                          ; EC
        cvtpi2ps xmm2, qword ptr [bx + si]      ; 0F 2A 10
        cmp     byte ptr [bx + si], dl          ; 38 10
        cmp     byte ptr [bx + si], dl          ; 38 10
L_10BA:
        mov     word ptr [0x65e], 0             ; C7 06 5E 06 00 00
L_10C0:
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 0x32]            ; FF 46 CE
        mov     al, byte ptr [bp - 0x46]        ; 8A 46 BA
        mov     byte ptr [bx], al               ; 88 07
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ax                              ; 50
        push    word ptr [bp - 0x32]            ; FF 76 CE
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_107                  ; 9A FF FF 00 00 [FIXUP]
L_10EC:
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_75                   ; 9A FF FF 00 00 [FIXUP]
L_10F9:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1105 -- offset 0x1105 -- 71 instr
; Dispatcher: tabla de decisiones cmp+jcc (71 instr).
; tags: calls_user, dispatcher
; callers: sub_04D3
; calls (inter): USER.PTINRECT
;----------------------------------------------------------------------
L_1105:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_1110:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x9bc                       ; 05 BC 09
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_114D                          ; 74 22
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        or      ax, ax                          ; 0B C0
        jl      L_11B1                          ; 7C 7F
        cmp     ax, 1                           ; 3D 01 00
        jle     L_1198                          ; 7E 61
        cmp     ax, 2                           ; 3D 02 00
        jl      L_11B1                          ; 7C 75
        cmp     ax, 4                           ; 3D 04 00
        jle     L_11A1                          ; 7E 60
        cmp     ax, 5                           ; 3D 05 00
        jl      L_11B1                          ; 7C 6B
        cmp     ax, 8                           ; 3D 08 00
        jle     L_11AA                          ; 7E 5F
        jmp     L_11B1                          ; EB 64
L_114D:
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 9            ; 83 7E FE 09
        jl      L_1110                          ; 7C BA
        mov     ax, word ptr [0x658]            ; A1 58 06
        sub     ax, word ptr [0xa04]            ; 2B 06 04 0A
        dec     ax                              ; 48
        dec     ax                              ; 48
        cmp     ax, word ptr [bp + 0xa]         ; 3B 46 0A
        jg      L_1187                          ; 7F 23
        mov     ax, word ptr [0x1112]           ; A1 12 11
        mov     cx, word ptr [0x9ba]            ; 8B 0E BA 09
        sar     cx, 1                           ; D1 F9
        sub     ax, cx                          ; 2B C1
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jge     L_1187                          ; 7D 13
        mov     ax, word ptr [0x9ba]            ; A1 BA 09
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0x13c4]           ; 03 06 C4 13
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jle     L_1187                          ; 7E 05
        mov     ax, 3                           ; B8 03 00
        jmp     L_118A                          ; EB 03
L_1187:
        mov     ax, 0xffff                      ; B8 FF FF
L_118A:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], 0xffff           ; C7 07 FF FF
        jmp     L_11B9                          ; EB 21
L_1198:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], 0                ; C7 07 00 00
        jmp     L_11B1                          ; EB 10
L_11A1:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], 1                ; C7 07 01 00
        jmp     L_11B1                          ; EB 07
L_11AA:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], 2                ; C7 07 02 00
L_11B1:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bx], ax               ; 89 07
L_11B9:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_11BF -- offset 0x11BF -- 71 instr
; Dispatcher: tabla de decisiones cmp+jcc (71 instr).
; tags: calls_gdi, dispatcher, far
; callers: sub_042D, sub_04D3
; calls (inter): GDI.PATBLT
;----------------------------------------------------------------------
L_11BF:
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
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        shl     ax, 1                           ; D1 E0
        add     ax, 0x7c6                       ; 05 C6 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_1259                          ; 74 75
        cmp     word ptr [0x7ba], 0             ; 83 3E BA 07 00
        je      L_1251                          ; 74 66
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_121D                          ; 74 2D
        mov     si, ax                          ; 8B F0
        mov     cl, 3                           ; B1 03
        shl     si, cl                          ; D3 E6
        add     si, 0x9bc                       ; 81 C6 BC 09
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [si]                   ; FF 34
        push    word ptr [si + 2]               ; FF 74 02
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si]               ; 2B 04
        push    ax                              ; 50
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [si + 2]           ; 2B 44 02
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 67 0B 00 00 [FIXUP]
L_121D:
        cmp     word ptr [bp + 6], -1           ; 83 7E 06 FF
        je      L_1251                          ; 74 2E
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     cl, 3                           ; B1 03
        shl     si, cl                          ; D3 E6
        add     si, 0x9bc                       ; 81 C6 BC 09
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [si]                   ; FF 34
        push    word ptr [si + 2]               ; FF 74 02
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si]               ; 2B 04
        push    ax                              ; 50
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [si + 2]           ; 2B 44 02
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 19 12 00 00 [FIXUP]
L_1251:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx], ax               ; 89 07
L_1259:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1265 -- offset 0x1265 -- 38 instr
; Funcion mediana (38 instr, 0 calls).
; tags: far, medium
; callers: sub_04D3, sub_12BC
;----------------------------------------------------------------------
L_1265:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [0x30e]            ; A1 0E 03
        or      ax, ax                          ; 0B C0
        je      L_127E                          ; 74 05
        cmp     ax, 1                           ; 3D 01 00
        je      L_1282                          ; 74 04
L_127E:
        sub     ax, ax                          ; 2B C0
        jmp     L_12B1                          ; EB 2F
L_1282:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     cx, word ptr [0x9ba]            ; 8B 0E BA 09
        sar     cx, 1                           ; D1 F9
        add     ax, cx                          ; 03 C1
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        add     ax, word ptr [0xa06]            ; 03 06 06 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x1212]           ; 8B 0E 12 12
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        imul    word ptr [0x1020]               ; F7 2E 20 10
        push    ax                              ; 50
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A AF 13 00 00 [FIXUP]
L_12B1:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_12BC -- offset 0x12BC -- 74 instr
; Funcion mediana (74 instr, 4 calls).
; tags: calls_gdi, calls_user, medium
; callers: sub_04D3
; calls (intra): sub_1265
; calls (inter): GDI.BITBLT, GDI.SELECTOBJECT, USER.LOADBITMAP
;----------------------------------------------------------------------
L_12BC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [0x658]            ; A1 58 06
        sub     ax, word ptr [0xa04]            ; 2B 06 04 0A
        dec     ax                              ; 48
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [0x7bc]                ; FF 36 BC 07
        push    word ptr [0x7c2]                ; FF 36 C2 07
        call    far GDI.SELECTOBJECT            ; 9A F9 12 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1308                          ; 75 2A
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0x218                       ; B8 18 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADBITMAP             ; 9A 92 07 00 00 [FIXUP]
        mov     word ptr [0x7c2], ax            ; A3 C2 07
        or      ax, ax                          ; 0B C0
        je      L_1301                          ; 74 0E
        push    word ptr [0x7bc]                ; FF 36 BC 07
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 80 13 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1308                          ; 75 07
L_1301:
        call    far _entry_254                  ; 9A AC 07 00 00 [FIXUP]
        jmp     L_1384                          ; EB 7C
L_1308:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1265                          ; E8 55 FF
        add     word ptr [bp + 6], ax           ; 01 46 06
        push    word ptr [0x7be]                ; FF 36 BE 07
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x9ba]                ; FF 36 BA 09
        push    word ptr [0xa04]                ; FF 36 04 0A
        push    word ptr [0x7bc]                ; FF 36 BC 07
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        imul    word ptr [0x9ba]                ; F7 2E BA 09
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x66                        ; B8 66 00
        mov     dx, 0x99                        ; BA 99 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 73 13 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [0x9ba]                ; FF 36 BA 09
        push    word ptr [0xa04]                ; FF 36 04 0A
        push    word ptr [0x7be]                ; FF 36 BE 07
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        je      L_136A                          ; 74 08
        mov     ax, 8                           ; B8 08 00
        mov     dx, 0x33                        ; BA 33 00
        jmp     L_1370                          ; EB 06
L_136A:
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
L_1370:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A F5 07 00 00 [FIXUP]
        push    word ptr [0x7bc]                ; FF 36 BC 07
        push    word ptr [0x7c4]                ; FF 36 C4 07
        call    far GDI.SELECTOBJECT            ; 9A 80 07 00 00 [FIXUP]
L_1384:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_138A -- offset 0x138A -- 24 instr
; Funcion sin clasificar definitiva (24 instr).
; tags: small
; callers: sub_04D3
;----------------------------------------------------------------------
L_138A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jge     L_13A2                          ; 7D 05
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_13A2:
        push    word ptr [0x9ba]                ; FF 36 BA 09
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        call    far _entry_94                   ; 9A E2 13 00 00 [FIXUP]
        sar     ax, 1                           ; D1 F8
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        jle     L_13BF                          ; 7E 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_13C1                          ; EB 02
L_13BF:
        sub     ax, ax                          ; 2B C0
L_13C1:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_13C7 -- offset 0x13C7 -- 17 instr
; Funcion sin clasificar definitiva (17 instr).
; tags: small
; callers: sub_04D3
; calls (intra): sub_13F3
;----------------------------------------------------------------------
L_13C7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        add     ax, word ptr [0xa06]            ; 03 06 06 0A
        push    ax                              ; 50
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        call    far _entry_94                   ; 9A E9 0A 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        call    L_13F3                          ; E8 06 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_13F3 -- offset 0x13F3 -- 48 instr
; Funcion mediana (48 instr, 0 calls).
; tags: medium
; callers: sub_04D3, sub_13C7
;----------------------------------------------------------------------
L_13F3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [0x30e]            ; A1 0E 03
        or      ax, ax                          ; 0B C0
        je      L_140A                          ; 74 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_141D                          ; 74 18
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        jmp     L_145F                          ; EB 55
L_140A:
        mov     cx, 0x5a                        ; B9 5A 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 0x2d                        ; 05 2D 00
        sub     dx, dx                          ; 2B D2
        mov     bx, cx                          ; 8B D9
        div     bx                              ; F7 F3
        mul     cx                              ; F7 E1
        jmp     L_145F                          ; EB 42
L_141D:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     dx, dx                          ; 2B D2
        mov     cl, 4                           ; B1 04
        call    far _entry_268                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, 0x46e                       ; B8 6E 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, 0x237                       ; 05 37 02
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_157                  ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_115                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     cl, 4                           ; B1 04
        call    far _entry_338                  ; 9A FF FF 00 00 [FIXUP]
L_145F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1465 -- offset 0x1465 -- 18 instr
; Funcion hoja (no llama a otras, 18 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_04D3
;----------------------------------------------------------------------
L_1465:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     word ptr [0x65c], 1             ; C7 06 5C 06 01 00
L_146F:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        add     word ptr [bp + 4], 4            ; 83 46 04 04
        cmp     word ptr [bx], 0                ; 83 3F 00
        jne     L_146F                          ; 75 E4
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1492 -- offset 0x1492 -- 81 instr
; Dispatcher: tabla de decisiones cmp+jcc (81 instr).
; tags: dispatcher
; callers: sub_04D3
; calls (intra): sub_04D3, sub_1557
;----------------------------------------------------------------------
L_1492:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     si, 0x986                       ; BE 86 09
        jmp     L_14E9                          ; EB 43
L_14A6:
        push    word ptr [si]                   ; FF 34
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_1557                          ; E8 A9 00
        or      ax, ax                          ; 0B C0
        je      L_14E6                          ; 74 34
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        and     al, 7                           ; 24 07
        mov     cl, byte ptr [si + 2]           ; 8A 4C 02
        and     cl, 7                           ; 80 E1 07
        cmp     al, cl                          ; 3A C1
        je      L_14D4                          ; 74 10
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 2], dx           ; 89 54 02
        mov     word ptr [0x65c], 1             ; C7 06 5C 06 01 00
L_14D4:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04D3                          ; E8 EF EF
        jmp     L_1550                          ; EB 6A
L_14E6:
        add     si, 4                           ; 83 C6 04
L_14E9:
        cmp     word ptr [si], 0                ; 83 3C 00
        jne     L_14A6                          ; 75 B8
        mov     word ptr [0x65c], 1             ; C7 06 5C 06 01 00
        mov     si, 0x986                       ; BE 86 09
        jmp     L_1527                          ; EB 2E
L_14F9:
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        ja      L_1524                          ; 77 26
        push    si                              ; 56
        lea     ax, [si + 4]                    ; 8D 44 04
        push    ax                              ; 50
        mov     ax, 0x986                       ; B8 86 09
        sub     ax, si                          ; 2B C6
        sar     ax, 1                           ; D1 F8
        and     al, 0xfe                        ; 24 FE
        add     ax, 0x16                        ; 05 16 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 8C 10 00 00 [FIXUP]
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 2], dx           ; 89 54 02
        jmp     L_1550                          ; EB 2C
L_1524:
        add     si, 4                           ; 83 C6 04
L_1527:
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_14F9                          ; 75 C9
        mov     ax, si                          ; 8B C6
        sub     ax, 0x986                       ; 2D 86 09
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        cmp     ax, 0xc                         ; 3D 0C 00
        jge     L_1550                          ; 7D 12
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 2], dx           ; 89 54 02
        mov     word ptr [si + 4], 0            ; C7 44 04 00 00
L_1550:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1557 -- offset 0x1557 -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: small
; callers: sub_04D3, sub_1492
;----------------------------------------------------------------------
L_1557:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_156F                          ; 7D 05
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_156F:
        mov     ax, word ptr [0x30e]            ; A1 0E 03
        or      ax, ax                          ; 0B C0
        je      L_1582                          ; 74 0C
        cmp     ax, 1                           ; 3D 01 00
        je      L_1594                          ; 74 19
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_1587                          ; EB 05
L_1582:
        mov     word ptr [bp - 2], 0x5a         ; C7 46 FE 5A 00
L_1587:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_159B                          ; 7D 0C
        mov     ax, 1                           ; B8 01 00
        jmp     L_159D                          ; EB 09
L_1594:
        mov     word ptr [bp - 2], 0x46         ; C7 46 FE 46 00
        jmp     L_1587                          ; EB EC
L_159B:
        sub     ax, ax                          ; 2B C0
L_159D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      004h                            ; 04

WRITE_TEXT ENDS

        END
