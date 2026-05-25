; AUTO-GENERATED from original PAINT segment 10
; segment_size=8782 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

PAINT_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 340 instr
; Dispatcher: tabla de decisiones cmp+jcc (340 instr).
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
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [0x3c8]                ; FF 36 C8 03
        call    far USER.SETCURSOR              ; 9A 4B 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 8E 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0xc84]                ; FF 36 84 0C
        push    word ptr [0xc8e]                ; FF 36 8E 0C
        push    word ptr [0xda8]                ; FF 36 A8 0D
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_142F                          ; E8 F0 13
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.SETCURSOR              ; 9A 7B 00 00 00 [FIXUP]
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
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_0076                          ; 75 09
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0076                          ; 75 03
        jmp     L_034D                          ; E9 D7 02
L_0076:
        push    word ptr [0x3c8]                ; FF 36 C8 03
        call    far USER.SETCURSOR              ; 9A 49 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_00F0                          ; 74 68
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_0092                          ; 7E 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0099                          ; EB 07
L_0092:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [0xdb4]            ; 03 06 B4 0D
L_0099:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jge     L_00A5                          ; 7D 05
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_00A5:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        push    word ptr [0xc84]                ; FF 36 84 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        push    ax                              ; 50
        push    word ptr [0xda8]                ; FF 36 A8 0D
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_00C7                          ; 7C 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_00C9                          ; EB 02
L_00C7:
        mov     ax, si                          ; 8B C6
L_00C9:
        cmp     ax, word ptr [0xdb4]            ; 3B 06 B4 0D
        jge     L_00DE                          ; 7D 0F
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_00DA                          ; 7C 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_00E1                          ; EB 07
L_00DA:
        mov     ax, si                          ; 8B C6
        jmp     L_00E1                          ; EB 03
L_00DE:
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
L_00E1:
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_142F                          ; E8 3F 13
L_00F0:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_00F9                          ; 75 03
        jmp     L_0184                          ; E9 8B 00
L_00F9:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_0104                          ; 7C 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_0109                          ; EB 05
L_0104:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
L_0109:
        cmp     ax, word ptr [0xdb4]            ; 3B 06 B4 0D
        jge     L_0184                          ; 7D 75
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_0119                          ; 7E 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0120                          ; EB 07
L_0119:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [0xda8]            ; 03 06 A8 0D
L_0120:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_012E                          ; 7E 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_0130                          ; EB 02
L_012E:
        sub     ax, ax                          ; 2B C0
L_0130:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jge     L_013E                          ; 7D 05
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_013E:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xc84]            ; 03 06 84 0C
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        push    ax                              ; 50
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_0159                          ; 7C 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_015E                          ; EB 05
L_0159:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        neg     ax                              ; F7 D8
L_015E:
        push    ax                              ; 50
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_016A                          ; 7C 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_016F                          ; EB 05
L_016A:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
L_016F:
        mov     cx, word ptr [0xdb4]            ; 8B 0E B4 0D
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_142F                          ; E8 AB 12
L_0184:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        neg     ax                              ; F7 D8
        mov     di, ax                          ; 8B F8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_01A0                          ; 7D 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_01A2                          ; EB 02
L_01A0:
        sub     ax, ax                          ; 2B C0
L_01A2:
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_01B0                          ; 7D 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_01B2                          ; EB 02
L_01B0:
        sub     ax, ax                          ; 2B C0
L_01B2:
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_01C0                          ; 7C 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_01C2                          ; EB 02
L_01C0:
        mov     ax, di                          ; 8B C7
L_01C2:
        cmp     word ptr [0xda8], ax            ; 39 06 A8 0D
        jle     L_01DE                          ; 7E 16
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_01D3                          ; 7C 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_01D5                          ; EB 02
L_01D3:
        mov     ax, di                          ; 8B C7
L_01D5:
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        sub     ax, cx                          ; 2B C1
        jmp     L_01E0                          ; EB 02
L_01DE:
        sub     ax, ax                          ; 2B C0
L_01E0:
        push    ax                              ; 50
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_01EC                          ; 7C 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_01EE                          ; EB 02
L_01EC:
        mov     ax, si                          ; 8B C6
L_01EE:
        cmp     word ptr [0xdb4], ax            ; 39 06 B4 0D
        jle     L_020A                          ; 7E 16
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_01FF                          ; 7C 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_0201                          ; EB 02
L_01FF:
        mov     ax, si                          ; 8B C6
L_0201:
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        sub     ax, cx                          ; 2B C1
        jmp     L_020C                          ; EB 02
L_020A:
        sub     ax, ax                          ; 2B C0
L_020C:
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_021B                          ; 7E 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_021D                          ; EB 02
L_021B:
        sub     ax, ax                          ; 2B C0
L_021D:
        push    ax                              ; 50
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_0229                          ; 7E 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_022B                          ; EB 02
L_0229:
        sub     ax, ax                          ; 2B C0
L_022B:
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A DB 03 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     word ptr [0xc84], ax            ; 01 06 84 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr [0xc8e], ax            ; 01 06 8E 0C
        or      ax, ax                          ; 0B C0
        je      L_02AF                          ; 74 64
        or      ax, ax                          ; 0B C0
        jle     L_0257                          ; 7E 08
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        jmp     L_0259                          ; EB 02
L_0257:
        sub     ax, ax                          ; 2B C0
L_0259:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jge     L_0265                          ; 7D 05
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_0265:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xda8]                ; FF 36 A8 0D
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jl      L_0283                          ; 7C 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_0285                          ; EB 02
L_0283:
        mov     ax, si                          ; 8B C6
L_0285:
        cmp     ax, word ptr [0xdb4]            ; 3B 06 B4 0D
        jge     L_029A                          ; 7D 0F
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_0296                          ; 7C 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_029D                          ; EB 07
L_0296:
        mov     ax, si                          ; 8B C6
        jmp     L_029D                          ; EB 03
L_029A:
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
L_029D:
        push    ax                              ; 50
        push    word ptr [0xc84]                ; FF 36 84 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_16DF                          ; E8 30 14
L_02AF:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_02B8                          ; 75 03
        jmp     L_0345                          ; E9 8D 00
L_02B8:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_02CA                          ; 7C 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_02CC                          ; EB 02
L_02CA:
        mov     ax, si                          ; 8B C6
L_02CC:
        cmp     ax, word ptr [0xdb4]            ; 3B 06 B4 0D
        jge     L_0345                          ; 7D 73
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_02E0                          ; 7E 08
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        jmp     L_02E2                          ; EB 02
L_02E0:
        sub     ax, ax                          ; 2B C0
L_02E2:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_02EF                          ; 7E 04
        sub     ax, ax                          ; 2B C0
        jmp     L_02F1                          ; EB 02
L_02EF:
        mov     ax, si                          ; 8B C6
L_02F1:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jge     L_02FF                          ; 7D 05
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_02FF:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_0313                          ; 7C 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_0318                          ; EB 05
L_0313:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        neg     ax                              ; F7 D8
L_0318:
        push    ax                              ; 50
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_0324                          ; 7C 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_0329                          ; EB 05
L_0324:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
L_0329:
        mov     cx, word ptr [0xdb4]            ; 8B 0E B4 0D
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xc84]            ; 03 06 84 0C
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_16DF                          ; E8 9A 13
L_0345:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
L_034D:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_035A -- offset 0x035A -- 318 instr
; Dispatcher: tabla de decisiones cmp+jcc (318 instr).
; tags: calls_gdi, calls_user, dispatcher, far
; callers: sub_1D48
; calls (intra): sub_142F, sub_16DF
; calls (inter): GDI.BITBLT, GDI.CREATEBITMAP, GDI.DELETEDC, USER.GETDC, USER.GETMENU, USER.GETPARENT (+5 mas)
;----------------------------------------------------------------------
L_035A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_0376                          ; 74 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.HIDECARET              ; 9A FF FF 00 00 [FIXUP]
L_0376:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A AB 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        jne     L_03A6                          ; 75 0A
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        jne     L_03A6                          ; 75 03
        jmp     L_044B                          ; E9 A5 00
L_03A6:
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_03E1                          ; 74 28
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0443                          ; EB 62
L_03E1:
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A 20 05 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x326                       ; B8 26 03
        mov     dx, 0x22                        ; BA 22 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 37 04 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x86                        ; B8 86 00
        mov     dx, 0xee                        ; BA EE 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 93 04 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A 47 04 00 00 [FIXUP]
L_0443:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A BB 04 00 00 [FIXUP]
L_044B:
        cmp     word ptr [0x554], 0             ; 83 3E 54 05 00
        jne     L_0460                          ; 75 0E
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        jne     L_0460                          ; 75 07
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        je      L_0474                          ; 74 14
L_0460:
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xda8]                ; FF 36 A8 0D
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        push    word ptr [bp - 0xa]             ; FF 76 F6
        jmp     L_0486                          ; EB 12
L_0474:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xda8]                ; FF 36 A8 0D
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        push    word ptr [bp - 8]               ; FF 76 F8
L_0486:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 61 05 00 00 [FIXUP]
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_04A8                          ; 74 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_72                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04B7                          ; EB 0F
L_04A8:
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        je      L_04B7                          ; 74 08
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_79                   ; 9A FF FF 00 00 [FIXUP]
L_04B7:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.DELETEDC                ; 9A 33 06 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_04D9                          ; 74 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SHOWCARET              ; 9A FF FF 00 00 [FIXUP]
L_04D9:
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
        sub     sp, 0x10                        ; 83 EC 10
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0506                          ; 75 03
        jmp     L_06CD                          ; E9 C7 01
L_0506:
        push    word ptr [0x3c8]                ; FF 36 C8 03
        call    far USER.SETCURSOR              ; 9A C7 06 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_19                   ; 9A D2 06 00 00 [FIXUP]
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 68 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_053C                          ; 7D 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_053F                          ; EB 03
L_053C:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
L_053F:
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_054D                          ; 7D 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_0550                          ; EB 03
L_054D:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
L_0550:
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 94 06 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_0590                          ; 7E 23
        push    word ptr [0xc84]                ; FF 36 84 0C
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_142F                          ; E8 A1 0E
        jmp     L_05BC                          ; EB 2C
L_0590:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_05BC                          ; 7D 24
        push    word ptr [bp - 0xe]             ; FF 76 F2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        push    ax                              ; 50
        push    word ptr [0xc84]                ; FF 36 84 0C
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_16DF                          ; E8 23 11
L_05BC:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_05F5                          ; 7E 31
        add     ax, word ptr [0xc84]            ; 03 06 84 0C
        push    ax                              ; 50
        push    word ptr [0xc8e]                ; FF 36 8E 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_05E1                          ; 7D 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_05E4                          ; EB 03
L_05E1:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
L_05E4:
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_142F                          ; E8 3C 0E
        jmp     L_062F                          ; EB 3A
L_05F5:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_062F                          ; 7D 32
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_061A                          ; 7D 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_061D                          ; EB 03
L_061A:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
L_061D:
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xc84]            ; 03 06 84 0C
        push    ax                              ; 50
        push    word ptr [0xc8e]                ; FF 36 8E 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_16DF                          ; E8 B0 10
L_062F:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far GDI.DELETEDC                ; 9A 9C 06 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far USER.GETPARENT              ; 9A F1 06 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETMENU                ; 9A F7 06 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A E6 06 00 00 [FIXUP]
        mov     word ptr [0xbf4], ax            ; A3 F4 0B
        or      ax, ax                          ; 0B C0
        je      L_06B3                          ; 74 50
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 74 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_27                   ; 9A 1E 00 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 35 02 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far GDI.DELETEDC                ; 9A A4 06 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far GDI.DELETEDC                ; 9A 43 00 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        jmp     L_06BD                          ; EB 0A
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06B3 -- offset 0x06B3 -- 46 instr
; Funcion mediana (46 instr, 5 calls).
; tags: calls_gdi, calls_user, far, medium
; calls (inter): GDI.CREATEBITMAP, USER.ENABLEMENUITEM, USER.GETMENU, USER.GETPARENT, USER.SETCURSOR
;----------------------------------------------------------------------
L_06B3:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
L_06BD:
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 13 07 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.SETCURSOR              ; 9A 12 00 00 00 [FIXUP]
        jmp     L_0717                          ; EB 4A
L_06CD:
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xbf4], ax            ; A3 F4 0B
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        cmp     word ptr [0xbf4], 0             ; 83 3E F4 0B 00
        je      L_070E                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0711                          ; EB 03
L_070E:
        mov     ax, 1                           ; B8 01 00
L_0711:
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
L_0717:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0xda8], ax            ; A3 A8 0D
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0xdb4], ax            ; A3 B4 0D
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_072E -- offset 0x072E -- 145 instr
; Funcion compleja: 145 instrucciones, 5 llamadas, 6 branches.
; tags: calls_kernel, calls_user, complex
; callers: sub_197F
; calls (intra): sub_0899, sub_21D9
; calls (inter): KERNEL.LSTRCPY, KERNEL.OPENFILE, USER.MOVEWINDOW
;----------------------------------------------------------------------
L_072E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x112                       ; 81 EC 12 01
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.MOVEWINDOW             ; 9A 80 08 00 00 [FIXUP]
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 63 07 00 00 [FIXUP]
        lea     ax, [bp - 0x110]                ; 8D 86 F0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 79 07 00 00 [FIXUP]
        mov     ax, word ptr [0x54e]            ; A1 4E 05
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 98 07 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0899                          ; E8 14 01
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_07ED                          ; 74 61
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x110]                ; 8D 86 F0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A A8 07 00 00 [FIXUP]
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A E7 07 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x8e]        ; 8B 86 72 FF
        mov     word ptr [0x54e], ax            ; A3 4E 05
L_07B3:
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0899                          ; E8 DE 00
        or      ax, ax                          ; 0B C0
        jne     L_07B3                          ; 75 F4
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa4a                       ; B8 4A 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2002                      ; B8 02 20
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A D1 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x90], ax        ; 89 86 70 FF
        push    ax                              ; 50
        call    far _entry_43                   ; 9A 06 0A 00 00 [FIXUP]
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa52                       ; B8 52 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A EB 08 00 00 [FIXUP]
        jmp     L_07FE                          ; EB 11
L_07ED:
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        jne     L_07F9                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_07FB                          ; EB 02
L_07F9:
        sub     ax, ax                          ; 2B C0
L_07FB:
        mov     word ptr [0x54e], ax            ; A3 4E 05
L_07FE:
        mov     ax, word ptr [0xbac]            ; A1 AC 0B
        mov     word ptr [bp - 0x86], ax        ; 89 86 7A FF
        mov     ax, word ptr [0xbc2]            ; A1 C2 0B
        sub     ax, word ptr [0xbc4]            ; 2B 06 C4 0B
        dec     ax                              ; 48
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        or      ax, ax                          ; 0B C0
        jge     L_081B                          ; 7D 06
        mov     word ptr [bp - 0x88], 0         ; C7 86 78 FF 00 00
L_081B:
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        cmp     word ptr [bp - 0x86], ax        ; 39 86 7A FF
        jge     L_082A                          ; 7D 06
        mov     ax, word ptr [bp - 0x86]        ; 8B 86 7A FF
        jmp     L_082D                          ; EB 03
L_082A:
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
L_082D:
        mov     word ptr [bp - 0x112], ax       ; 89 86 EE FE
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        cmp     word ptr [bp - 0x88], ax        ; 39 86 78 FF
        jge     L_0840                          ; 7D 06
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        jmp     L_0843                          ; EB 03
L_0840:
        mov     ax, word ptr [0xc76]            ; A1 76 0C
L_0843:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 0x86]        ; 8B 86 7A FF
        sub     ax, word ptr [bp - 0x112]       ; 2B 86 EE FE
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x8c], ax        ; 89 86 74 FF
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        add     ax, word ptr [0xbc4]            ; 03 06 C4 0B
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 0x112]           ; FF B6 EE FE
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.MOVEWINDOW             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x44e                       ; B8 4E 04
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_21D9                          ; E8 49 19
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0899 -- offset 0x0899 -- 297 instr
; Dispatcher: tabla de decisiones cmp+jcc (297 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; callers: sub_072E
; calls (intra): sub_0BF2, sub_12DA, sub_1935, sub_2158
; calls (inter): GDI.GETDEVICECAPS, KERNEL.LSTRCPY, KERNEL.OPENFILE, USER.GETDC, USER.MESSAGEBOX, USER.RELEASEDC (+1 mas)
;----------------------------------------------------------------------
L_0899:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xb2                        ; 81 EC B2 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        push    word ptr [0x3c8]                ; FF 36 C8 03
        call    far USER.SETCURSOR              ; 9A 0B 05 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        jne     L_08C2                          ; 75 03
        jmp     L_0B3A                          ; E9 78 02
L_08C2:
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xb16                       ; B8 16 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2800                      ; B8 00 28
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        or      ax, ax                          ; 0B C0
        jge     L_08E0                          ; 7D 03
        jmp     L_0B0C                          ; E9 2C 02
L_08E0:
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xb1e                       ; B8 1E 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_83                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [0xb96]            ; A1 96 0B
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [0xba2]            ; A1 A2 0B
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [0xca2]            ; A1 A2 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xda6]            ; A1 A6 0D
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [0x10be]           ; A1 BE 10
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [0xad0]            ; A1 D0 0A
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [0xae4]            ; A1 E4 0A
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_1935                          ; E8 F5 0F
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_1935                          ; E8 EB 0F
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_1935                          ; E8 E1 0F
        mov     word ptr [0xbfe], ax            ; A3 FE 0B
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_1935                          ; E8 D7 0F
        mov     word ptr [0xc76], ax            ; A3 76 0C
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_1935                          ; E8 CD 0F
        mov     word ptr [0xb96], ax            ; A3 96 0B
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_1935                          ; E8 C3 0F
        mov     word ptr [0xba2], ax            ; A3 A2 0B
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_1935                          ; E8 B9 0F
        mov     word ptr [0xca2], ax            ; A3 A2 0C
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_1935                          ; E8 AF 0F
        mov     word ptr [0xda6], ax            ; A3 A6 0D
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_1935                          ; E8 A5 0F
        mov     word ptr [0xe8e], ax            ; A3 8E 0E
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_1935                          ; E8 9B 0F
        mov     word ptr [0x10be], ax           ; A3 BE 10
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_1935                          ; E8 91 0F
        mov     word ptr [0xad0], ax            ; A3 D0 0A
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_1935                          ; E8 87 0F
        mov     word ptr [0xae4], ax            ; A3 E4 0A
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_1935                          ; E8 7D 0F
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        xor     ax, word ptr [bp - 0x26]        ; 33 46 DA
        xor     ax, word ptr [bp - 0x1c]        ; 33 46 E4
        xor     ax, word ptr [0xbfe]            ; 33 06 FE 0B
        xor     ax, word ptr [0xc76]            ; 33 06 76 0C
        xor     ax, word ptr [0xb96]            ; 33 06 96 0B
        xor     ax, word ptr [0xba2]            ; 33 06 A2 0B
        xor     ax, word ptr [0xca2]            ; 33 06 A2 0C
        xor     ax, word ptr [0xda6]            ; 33 06 A6 0D
        xor     ax, word ptr [0xe8e]            ; 33 06 8E 0E
        xor     ax, word ptr [0x10be]           ; 33 06 BE 10
        xor     ax, word ptr [0xad0]            ; 33 06 D0 0A
        xor     ax, word ptr [0xae4]            ; 33 06 E4 0A
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     word ptr [bp - 0x22], 0x6144    ; 81 7E DE 44 61
        jne     L_0A01                          ; 75 0B
        cmp     word ptr [bp - 0x26], 0x4d6e    ; 81 7E DA 6E 4D
        jne     L_0A01                          ; 75 04
        or      ax, ax                          ; 0B C0
        je      L_0A74                          ; 74 73
L_0A01:
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xae]                 ; 8D 86 52 FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x44e                       ; B8 4E 04
        push    ax                              ; 50
        call    far _entry_60                   ; 9A FF FF 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x10c2                      ; B8 C2 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [0x44e], 0             ; C6 06 4E 04 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0xbfe], ax            ; A3 FE 0B
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [0xc76], ax            ; A3 76 0C
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [0xb96], ax            ; A3 96 0B
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     word ptr [0xba2], ax            ; A3 A2 0B
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0xca2], ax            ; A3 A2 0C
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [0xda6], ax            ; A3 A6 0D
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     word ptr [0xe8e], ax            ; A3 8E 0E
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [0x10be], ax           ; A3 BE 10
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [0xad0], ax            ; A3 D0 0A
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [0xae4], ax            ; A3 E4 0A
L_0A74:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        mov     word ptr [0xace], ax            ; A3 CE 0A
        mov     ax, word ptr [0x10be]           ; A1 BE 10
        mov     word ptr [0xaea], ax            ; A3 EA 0A
        mov     ax, word ptr [0xca2]            ; A1 A2 0C
        mov     word ptr [0xbf8], ax            ; A3 F8 0B
        mov     ax, word ptr [0xda6]            ; A1 A6 0D
        mov     word ptr [0xbfc], ax            ; A3 FC 0B
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETDC                  ; 9A 08 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     ax, word ptr [0xc86]            ; A1 86 0C
        cmp     word ptr [0xbfe], ax            ; 39 06 FE 0B
        jne     L_0AF9                          ; 75 59
        mov     ax, word ptr [0xc92]            ; A1 92 0C
        cmp     word ptr [0xc76], ax            ; 39 06 76 0C
        jne     L_0AF9                          ; 75 50
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        cmp     word ptr [0xe8e], ax            ; 39 06 8E 0E
        jne     L_0AF9                          ; 75 47
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        cmp     word ptr [0x10be], ax           ; 39 06 BE 10
        jne     L_0AF9                          ; 75 3E
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A D5 0A 00 00 [FIXUP]
        cmp     ax, word ptr [0xb96]            ; 3B 06 96 0B
        jne     L_0AF9                          ; 75 2C
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [0xba2]            ; 3B 06 A2 0B
        jne     L_0AF9                          ; 75 1A
        mov     ax, word ptr [0xb96]            ; A1 96 0B
        cmp     word ptr [0xca2], ax            ; 39 06 A2 0C
        jne     L_0AF9                          ; 75 11
        mov     ax, word ptr [0xba2]            ; A1 A2 0B
        cmp     word ptr [0xda6], ax            ; 39 06 A6 0D
        jne     L_0AF9                          ; 75 08
        mov     word ptr [0x55e], 1             ; C7 06 5E 05 01 00
        jmp     L_0AFF                          ; EB 06
L_0AF9:
        mov     word ptr [0x55e], 0             ; C7 06 5E 05 00 00
L_0AFF:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far USER.RELEASEDC              ; 9A 1C 0C 00 00 [FIXUP]
        jmp     L_0B3A                          ; EB 2E
L_0B0C:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xae]                 ; 8D 86 52 FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        mov     ax, 0x44e                       ; B8 4E 04
        push    ax                              ; 50
        call    far _entry_60                   ; 9A 1F 0A 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x10c2                      ; B8 C2 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 2F 0A 00 00 [FIXUP]
        mov     byte ptr [0x44e], 0             ; C6 06 4E 04 00
L_0B3A:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_0B43                          ; 74 03
        jmp     L_0BD0                          ; E9 8D 00
L_0B43:
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        jne     L_0B4F                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B51                          ; EB 02
L_0B4F:
        sub     ax, ax                          ; 2B C0
L_0B51:
        mov     word ptr [0x54e], ax            ; A3 4E 05
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2158                          ; E8 FB 15
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa4a                       ; B8 4A 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1002                      ; B8 02 10
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A CE 07 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        jne     L_0B8D                          ; 75 13
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BF2                          ; E8 72 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far _entry_43                   ; 9A D8 07 00 00 [FIXUP]
        jmp     L_0B9C                          ; EB 0F
L_0B8D:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12DA                          ; E8 41 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_0B9C:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_0BAC                          ; 74 0A
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
L_0BAC:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        mov     word ptr [0xdc0], ax            ; A3 C0 0D
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        mov     word ptr [0x116e], ax           ; A3 6E 11
        mov     ax, word ptr [0x10be]           ; A1 BE 10
        mov     word ptr [0xe02], ax            ; A3 02 0E
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        mov     word ptr [0xa10], ax            ; A3 10 0A
        mov     word ptr [0xc84], 0             ; C7 06 84 0C 00 00
        mov     word ptr [0xc8e], 0             ; C7 06 8E 0C 00 00
L_0BD0:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far USER.SETCURSOR              ; 9A B1 08 00 00 [FIXUP]
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_0BE4                          ; 75 06
        mov     word ptr [0x552], 0             ; C7 06 52 05 00 00
L_0BE4:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BF2 -- offset 0x0BF2 -- 147 instr
; Dispatcher: tabla de decisiones cmp+jcc (147 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; callers: sub_0899
; calls (intra): sub_0D7D, sub_1102
; calls (inter): GDI.DELETEDC, KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, USER.GETDC (+1 mas)
;----------------------------------------------------------------------
L_0BF2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1e                        ; 83 EC 1E
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDC                  ; 9A 82 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1102                          ; E8 ED 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far USER.RELEASEDC              ; 9A C6 04 00 00 [FIXUP]
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mul     word ptr [0xc76]                ; F7 26 76 0C
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1102                          ; E8 B9 04
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        je      L_0C57                          ; 74 08
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far GDI.DELETEDC                ; 9A 3F 04 00 00 [FIXUP]
L_0C57:
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mul     word ptr [0xc76]                ; F7 26 76 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jbe     L_0C7A                          ; 76 06
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0C7A:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0D7D                          ; E8 FB 00
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x20                        ; B8 20 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_83                   ; 9A 93 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], 1         ; C7 46 E2 01 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0CAE                          ; EB 11
L_0C9D:
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        jne     L_0CCA                          ; 75 27
        inc     word ptr [bp - 0x1e]            ; FF 46 E2
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     dx, dx                          ; 2B D2
        div     word ptr [bp - 0x1e]            ; F7 76 E2
L_0CAE:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        cmp     word ptr [bp - 6], 0x100        ; 81 7E FA 00 01
        ja      L_0C9D                          ; 77 D3
L_0CCA:
        cmp     word ptr [bp - 6], 0x100        ; 81 7E FA 00 01
        jbe     L_0CE1                          ; 76 10
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        jmp     L_0D02                          ; EB 21
L_0CE1:
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        je      L_0CEF                          ; 74 08
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far KERNEL.GLOBALFREE           ; 9A 6B 0D 00 00 [FIXUP]
L_0CEF:
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        mov     ax, 0xca6                       ; B8 A6 0C
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], ds        ; 8C 5E E6
        mov     word ptr [bp - 6], 0x100        ; C7 46 FA 00 01
L_0D02:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     dx, word ptr [bp - 0x1a]        ; 8B 56 E6
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        jmp     L_0D23                          ; EB 0D
L_0D16:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     byte ptr es:[bx], 0xff          ; 26 C6 07 FF
        dec     word ptr [bp - 0x14]            ; FF 4E EC
L_0D23:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_0D16                          ; 75 ED
L_0D29:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0D59                          ; 74 2A
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jbe     L_0D3A                          ; 76 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0D3A:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     word ptr [bp - 4], ax           ; 29 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    ax                              ; 50
        call    far _entry_120                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        je      L_0D29                          ; 74 D5
        mov     word ptr [bp - 0x18], 1         ; C7 46 E8 01 00
L_0D59:
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        je      L_0D6F                          ; 74 10
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_0D6F:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D7D -- offset 0x0D7D -- 74 instr
; Funcion mediana (74 instr, 1 calls).
; tags: far, medium
; callers: sub_0BF2
; calls (intra): sub_197F
;----------------------------------------------------------------------
L_0D7D:
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
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_83                   ; 9A F9 08 00 00 [FIXUP]
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        xor     ax, word ptr [0xc76]            ; 33 06 76 0C
        xor     ax, word ptr [0xb96]            ; 33 06 96 0B
        xor     ax, word ptr [0xba2]            ; 33 06 A2 0B
        xor     ax, word ptr [0xca2]            ; 33 06 A2 0C
        xor     ax, word ptr [0xda6]            ; 33 06 A6 0D
        xor     ax, word ptr [0xe8e]            ; 33 06 8E 0E
        xor     ax, word ptr [0x10be]           ; 33 06 BE 10
        xor     ax, word ptr [0xad0]            ; 33 06 D0 0A
        xor     ax, word ptr [0xae4]            ; 33 06 E4 0A
        xor     ax, 0x2c2a                      ; 35 2A 2C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x6144                      ; B8 44 61
        push    ax                              ; 50
        call    L_197F                          ; E8 B1 0B
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x4d6e                      ; B8 6E 4D
        push    ax                              ; 50
        call    L_197F                          ; E8 A7 0B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        call    L_197F                          ; E8 9D 0B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xc76]                ; FF 36 76 0C
        call    L_197F                          ; E8 93 0B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xb96]                ; FF 36 96 0B
        call    L_197F                          ; E8 89 0B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xba2]                ; FF 36 A2 0B
        call    L_197F                          ; E8 7F 0B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xca2]                ; FF 36 A2 0C
        call    L_197F                          ; E8 75 0B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xda6]                ; FF 36 A6 0D
        call    L_197F                          ; E8 6B 0B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xe8e]                ; FF 36 8E 0E
        call    L_197F                          ; E8 61 0B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x10be]               ; FF 36 BE 10
        call    L_197F                          ; E8 57 0B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xad0]                ; FF 36 D0 0A
        call    L_197F                          ; E8 4D 0B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xae4]                ; FF 36 E4 0A
        call    L_197F                          ; E8 43 0B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_197F                          ; E8 3A 0B
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E50 -- offset 0x0E50 -- 23 instr
; Funcion sin clasificar definitiva (23 instr).
; tags: calls_kernel, far, small
; callers: sub_142F, sub_16DF
; calls (inter): KERNEL.OPENFILE
;----------------------------------------------------------------------
L_0E50:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa4a                       ; B8 4A 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa002                      ; B8 02 A0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 5E 0F 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E76 -- offset 0x0E76 -- 68 instr
; Dispatcher: tabla de decisiones cmp+jcc (68 instr).
; tags: calls_user, dispatcher, far
; callers: sub_197F
; calls (intra): sub_1CDB, sub_1D48
; calls (inter): USER.MESSAGEBOX
;----------------------------------------------------------------------
L_0E76:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x86                        ; 81 EC 86 00
        mov     word ptr [bp - 0x86], 1         ; C7 86 7A FF 01 00
        cmp     word ptr [0x552], 0             ; 83 3E 52 05 00
        jne     L_0E94                          ; 75 03
        jmp     L_0F14                          ; E9 80 00
L_0E94:
        cmp     word ptr [0x574], 0             ; 83 3E 74 05 00
        je      L_0EA4                          ; 74 09
        push    word ptr [0x574]                ; FF 36 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1D48                          ; E8 A4 0E
L_0EA4:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0x16                        ; B8 16 00
        push    ax                              ; 50
        cmp     word ptr [0x54e], 0             ; 83 3E 4E 05 00
        je      L_0EC0                          ; 74 05
        mov     ax, 0xaf4                       ; B8 F4 0A
        jmp     L_0ECF                          ; EB 0F
L_0EC0:
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        je      L_0ECC                          ; 74 05
        mov     ax, 0x44e                       ; B8 4E 04
        jmp     L_0ECF                          ; EB 03
L_0ECC:
        mov     ax, 0x3ce                       ; B8 CE 03
L_0ECF:
        push    ax                              ; 50
        call    far _entry_60                   ; 9A C1 0F 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc56                       ; B8 56 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x23                        ; B8 23 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A D1 0F 00 00 [FIXUP]
        mov     word ptr [bp - 0x86], ax        ; 89 86 7A FF
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0F14                          ; 75 26
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1CDB                          ; E8 E2 0D
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0F0E                          ; 75 0E
        mov     word ptr [bp - 0x86], 1         ; C7 86 7A FF 01 00
        mov     word ptr [0x552], 0             ; C7 06 52 05 00 00
        jmp     L_0F14                          ; EB 06
L_0F0E:
        mov     word ptr [bp - 0x86], 2         ; C7 86 7A FF 02 00
L_0F14:
        mov     ax, word ptr [bp - 0x86]        ; 8B 86 7A FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F23 -- offset 0x0F23 -- 182 instr
; Dispatcher: tabla de decisiones cmp+jcc (182 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; callers: sub_1AF9, sub_1BB2, sub_1CDB
; calls (intra): sub_12DA, sub_2186
; calls (inter): KERNEL.LSTRCPY, KERNEL.OPENFILE, USER.MESSAGEBOX
;----------------------------------------------------------------------
L_0F23:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x8e                        ; 81 EC 8E 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     word ptr [0x552], 0             ; 83 3E 52 05 00
        jne     L_0F40                          ; 75 03
        jmp     L_0FF4                          ; E9 B4 00
L_0F40:
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 BB F0
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        jne     L_0F4F                          ; 75 03
        jmp     L_0FF4                          ; E9 A5 00
L_0F4F:
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xb16                       ; B8 16 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1002                      ; B8 02 10
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 78 0F 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jl      L_0F8B                          ; 7C 22
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa4a                       ; B8 4A 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa002                      ; B8 02 A0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 25 10 00 00 [FIXUP]
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        push    word ptr [bp - 4]               ; FF 76 FC
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12DA                          ; E8 51 03
        jmp     L_0F90                          ; EB 05
L_0F8B:
        mov     ax, word ptr [0xb18]            ; A1 18 0B
        inc     ax                              ; 40
        inc     ax                              ; 40
L_0F90:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jle     L_0FE8                          ; 7E 51
        cmp     ax, 1                           ; 3D 01 00
        je      L_0FA8                          ; 74 0C
        cmp     ax, 2                           ; 3D 02 00
        je      L_0FE1                          ; 74 40
        mov     word ptr [bp - 0xa], 0x10       ; C7 46 F6 10 00
        jmp     L_0FAD                          ; EB 05
L_0FA8:
        mov     word ptr [bp - 0xa], 0x26       ; C7 46 F6 26 00
L_0FAD:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x44e                       ; B8 4E 04
        push    ax                              ; 50
        call    far _entry_60                   ; 9A 21 0B 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x10c2                      ; B8 C2 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 31 0B 00 00 [FIXUP]
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_32                   ; 9A 38 10 00 00 [FIXUP]
        jmp     L_0FF4                          ; EB 13
L_0FE1:
        mov     word ptr [bp - 0xa], 0x1a       ; C7 46 F6 1A 00
        jmp     L_0FAD                          ; EB C5
L_0FE8:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0FF4                          ; 75 06
        mov     word ptr [0x552], 0             ; C7 06 52 05 00 00
L_0FF4:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
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
        sub     sp, 0x84                        ; 81 EC 84 00
        mov     word ptr [0x54e], 0             ; C7 06 4E 05 00 00
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa4a                       ; B8 4A 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa002                      ; B8 02 A0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A AA 10 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far _entry_43                   ; 9A B3 10 00 00 [FIXUP]
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_32                   ; 9A A8 0B 00 00 [FIXUP]
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xa52                       ; B8 52 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 64 10 00 00 [FIXUP]
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2186                          ; E8 30 11
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x44e                       ; B8 4E 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2186                          ; E8 25 11
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 74 10 00 00 [FIXUP]
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 92 10 00 00 [FIXUP]
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_122                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 53 07 00 00 [FIXUP]
        mov     byte ptr [0x44e], 0             ; C6 06 4E 04 00
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa4a                       ; B8 4A 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 6C 0B 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far _entry_43                   ; 9A E4 10 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_10C0 -- offset 0x10C0 -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: far, small
; callers: sub_1AF9
;----------------------------------------------------------------------
L_10C0:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_121                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jl      L_10EF                          ; 7C 0D
        push    ax                              ; 50
        call    far _entry_43                   ; 9A 87 0B 00 00 [FIXUP]
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_10F4                          ; EB 05
L_10EF:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_10F4:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1102 -- offset 0x1102 -- 180 instr
; Dispatcher: tabla de decisiones cmp+jcc (180 instr).
; tags: calls_gdi, dispatcher, far
; callers: sub_0BF2
; calls (inter): GDI.GETDEVICECAPS, GDI.MULDIV
;----------------------------------------------------------------------
L_1102:
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
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_1173                          ; 74 5C
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 2E 11 00 00 [FIXUP]
        mov     word ptr [0xbf8], ax            ; A3 F8 0B
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 3D 11 00 00 [FIXUP]
        mov     word ptr [0xbfc], ax            ; A3 FC 0B
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 4C 11 00 00 [FIXUP]
        mov     word ptr [0xace], ax            ; A3 CE 0A
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 5B 11 00 00 [FIXUP]
        mov     word ptr [0xaea], ax            ; A3 EA 0A
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 6A 11 00 00 [FIXUP]
        mov     word ptr [0xdaa], ax            ; A3 AA 0D
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A C3 0A 00 00 [FIXUP]
        mov     word ptr [0xdbe], ax            ; A3 BE 0D
        jmp     L_1197                          ; EB 24
L_1173:
        mov     word ptr [0xbf8], 5             ; C7 06 F8 0B 05 00
        mov     word ptr [0xbfc], 6             ; C7 06 FC 0B 06 00
        mov     word ptr [0xace], 0x2d0         ; C7 06 CE 0A D0 02
        mov     word ptr [0xaea], 0x1e0         ; C7 06 EA 0A E0 01
        mov     word ptr [0xdaa], 0x117         ; C7 06 AA 0D 17 01
        mov     word ptr [0xdbe], 0xd8          ; C7 06 BE 0D D8 00
L_1197:
        mov     ax, word ptr [0xbf8]            ; A1 F8 0B
        mov     word ptr [0xca2], ax            ; A3 A2 0C
        mov     ax, word ptr [0xbfc]            ; A1 FC 0B
        mov     word ptr [0xda6], ax            ; A3 A6 0D
        mov     ax, word ptr [0xace]            ; A1 CE 0A
        mov     word ptr [0xe8e], ax            ; A3 8E 0E
        mov     ax, word ptr [0xaea]            ; A1 EA 0A
        mov     word ptr [0x10be], ax           ; A3 BE 10
        mov     ax, word ptr [0xda6]            ; A1 A6 0D
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xb96]            ; A1 96 0B
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A D5 11 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xca2]            ; A1 A2 0C
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xba2]            ; A1 A2 0B
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A 93 12 00 00 [FIXUP]
        cmp     dx, di                          ; 3B D7
        jl      L_122C                          ; 7C 4F
        jg      L_11E3                          ; 7F 04
        cmp     ax, si                          ; 3B C6
        jbe     L_122C                          ; 76 49
L_11E3:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        mov     word ptr [0xbfe], ax            ; A3 FE 0B
        push    word ptr [0x10be]               ; FF 36 BE 10
        push    word ptr [0xb96]                ; FF 36 96 0B
        push    word ptr [0xba2]                ; FF 36 A2 0B
        call    far GDI.MULDIV                  ; 9A 04 12 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [0xda6]                ; FF 36 A6 0D
        push    word ptr [0xca2]                ; FF 36 A2 0C
        call    far GDI.MULDIV                  ; 9A 3F 12 00 00 [FIXUP]
        mov     word ptr [0xc76], ax            ; A3 76 0C
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0x10be]           ; 03 06 BE 10
        cdq                                     ; 99
        mov     cx, word ptr [0xc76]            ; 8B 0E 76 0C
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x10be]           ; A1 BE 10
        cdq                                     ; 99
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
L_1225:
        idiv    cx                              ; F7 F9
        mov     word ptr [0xc76], ax            ; A3 76 0C
        jmp     L_1273                          ; EB 47
L_122C:
        mov     ax, word ptr [0x10be]           ; A1 BE 10
        mov     word ptr [0xc76], ax            ; A3 76 0C
        push    word ptr [0xe8e]                ; FF 36 8E 0E
        push    word ptr [0xba2]                ; FF 36 A2 0B
        push    word ptr [0xb96]                ; FF 36 96 0B
        call    far GDI.MULDIV                  ; 9A 4D 12 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [0xca2]                ; FF 36 A2 0C
        push    word ptr [0xda6]                ; FF 36 A6 0D
        call    far GDI.MULDIV                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xbfe], ax            ; A3 FE 0B
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xe8e]            ; 03 06 8E 0E
        cdq                                     ; 99
        mov     cx, word ptr [0xbfe]            ; 8B 0E FE 0B
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        idiv    cx                              ; F7 F9
        mov     word ptr [0xbfe], ax            ; A3 FE 0B
L_1273:
        and     byte ptr [0xbfe], 0xf0          ; 80 26 FE 0B F0
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 4B 13 00 00 [FIXUP]
        or      dx, dx                          ; 0B D2
        jl      L_12B5                          ; 7C 1A
        jg      L_12A2                          ; 7F 05
        cmp     ax, 0xffdf                      ; 3D DF FF
        jbe     L_12B5                          ; 76 13
L_12A2:
        mov     cx, 2                           ; B9 02 00
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [0xbfe], ax            ; A3 FE 0B
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        cdq                                     ; 99
        jmp     L_1225                          ; E9 70 FF
L_12B5:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        mov     word ptr [0xdc0], ax            ; A3 C0 0D
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        mov     word ptr [0x116e], ax           ; A3 6E 11
        mov     ax, word ptr [0x10be]           ; A1 BE 10
        mov     word ptr [0xe02], ax            ; A3 02 0E
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        mov     word ptr [0xa10], ax            ; A3 10 0A
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_12DA -- offset 0x12DA -- 125 instr
; Dispatcher: tabla de decisiones cmp+jcc (125 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; callers: sub_0899, sub_0F23
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, USER.SETCURSOR
;----------------------------------------------------------------------
L_12DA:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x18                        ; 83 EC 18
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_12F8                          ; 7D 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1424                          ; E9 2C 01
L_12F8:
        push    word ptr [0x3c8]                ; FF 36 C8 03
        call    far USER.SETCURSOR              ; 9A 1D 14 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x14], 1         ; C7 46 EC 01 00
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        add     ax, 7                           ; 05 07 00
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        jmp     L_1337                          ; EB 12
L_1325:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jne     L_135F                          ; 75 34
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        idiv    cx                              ; F7 F9
L_1337:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A CB 14 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A D2 14 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jne     L_1325                          ; 75 C6
L_135F:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mul     word ptr [bp - 0x12]            ; F7 66 EE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_137C                          ; 74 10
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALLOCK           ; 9A F8 14 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        jmp     L_139D                          ; EB 21
L_137C:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_138A                          ; 74 08
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALFREE           ; 9A 05 14 00 00 [FIXUP]
L_138A:
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     ax, 0xca6                       ; B8 A6 0C
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], ds        ; 8C 5E EA
        mov     word ptr [bp - 8], 0x100        ; C7 46 F8 00 01
L_139D:
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_83                   ; 9A B3 13 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_83                   ; 9A 8F 0C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
L_13BD:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jne     L_13F3                          ; 75 2E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    ax                              ; 50
        call    far _entry_82                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    ax                              ; 50
        call    far _entry_120                  ; 9A 4B 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        je      L_13BD                          ; 74 CF
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
L_13F3:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_1409                          ; 74 10
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALUNLOCK         ; 9A 63 0D 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALFREE           ; 9A 14 15 00 00 [FIXUP]
L_1409:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_43                   ; 9A 15 14 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_43                   ; 9A 2E 10 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.SETCURSOR              ; 9A D4 0B 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_1424:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_142F -- offset 0x142F -- 262 instr
; Dispatcher: tabla de decisiones cmp+jcc (262 instr).
; tags: calls_gdi, calls_kernel, dispatcher, far
; callers: sub_0000, sub_035A
; calls (intra): sub_0E50
; calls (inter): GDI.BITBLT, GDI.DELETEDC, GDI.GETBITMAPBITS, GDI.SETBITMAPBITS, KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE (+2 mas)
;----------------------------------------------------------------------
L_142F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x24                        ; 83 EC 24
        push    si                              ; 56
        cmp     word ptr [0x552], 0             ; 83 3E 52 05 00
        jne     L_1447                          ; 75 03
        jmp     L_16D3                          ; E9 8C 02
L_1447:
        cmp     word ptr [bp + 0xe], 0          ; 83 7E 0E 00
        jne     L_1450                          ; 75 03
        jmp     L_16D3                          ; E9 83 02
L_1450:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_1459                          ; 75 03
        jmp     L_16D3                          ; E9 7A 02
L_1459:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        add     ax, word ptr [bp + 0xe]         ; 03 46 0E
        dec     ax                              ; 48
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        add     ax, 7                           ; 05 07 00
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 0x22], 1         ; C7 46 DE 01 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        jmp     L_14B7                          ; EB 12
L_14A5:
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        jne     L_14DF                          ; 75 34
        inc     word ptr [bp - 0x22]            ; FF 46 DE
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x22]        ; 8B 4E DE
        idiv    cx                              ; F7 F9
L_14B7:
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 3E 15 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A BC 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        jne     L_14A5                          ; 75 C6
L_14DF:
        mov     ax, word ptr [0xc90]            ; A1 90 0C
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        push    ax                              ; 50
        call    far _entry_27                   ; 9A E6 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        je      L_150A                          ; 74 16
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.GLOBALLOCK           ; 9A D5 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        jmp     L_1531                          ; EB 27
L_150A:
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_1518                          ; 74 08
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.GLOBALFREE           ; 9A EB 0C 00 00 [FIXUP]
L_1518:
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
        mov     ax, 0xca6                       ; B8 A6 0C
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], ds         ; 8C 5E F2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], ds        ; 8C 5E EE
        mov     word ptr [bp - 0x20], 1         ; C7 46 E0 01 00
L_1531:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        add     word ptr [bp - 0xc], 0x20       ; 83 46 F4 20
        adc     word ptr [bp - 0xa], 0          ; 83 56 F6 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_1670                          ; E9 18 01
L_1558:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_15B2                          ; 75 54
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        sub     si, word ptr [bp - 8]           ; 2B 76 F8
        cmp     word ptr [bp - 0x20], si        ; 39 76 E0
        jle     L_156C                          ; 7E 03
        mov     word ptr [bp - 0x20], si        ; 89 76 E0
L_156C:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E50                          ; E8 D3 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_83                   ; 9A 3F 16 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        imul    word ptr [bp - 0x20]            ; F7 6E E0
        push    ax                              ; 50
        call    far _entry_82                   ; 9A 67 18 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_43                   ; 9A 5C 16 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
L_15B2:
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 0x24]        ; 2B 46 DC
        inc     ax                              ; 40
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far GDI.SETBITMAPBITS           ; 9A 8D 18 00 00 [FIXUP]
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp - 0x24]        ; 8B 56 DC
        mov     cl, 3                           ; B1 03
        shl     dx, cl                          ; D3 E2
        sub     ax, dx                          ; 2B C2
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A C1 18 00 00 [FIXUP]
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 0x24]        ; 2B 46 DC
        inc     ax                              ; 40
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far GDI.GETBITMAPBITS           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_166D                          ; 75 46
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E50                          ; E8 1F F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_83                   ; 9A 94 16 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        imul    word ptr [bp - 0x20]            ; F7 6E E0
        push    ax                              ; 50
        call    far _entry_120                  ; 9A A9 16 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_43                   ; 9A B1 16 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        imul    word ptr [bp - 0x20]            ; F7 6E E0
        cdq                                     ; 99
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        adc     word ptr [bp - 0xa], dx         ; 11 56 F6
L_166D:
        inc     word ptr [bp - 8]               ; FF 46 F8
L_1670:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_167B                          ; 7D 03
        jmp     L_1558                          ; E9 DD FE
L_167B:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jle     L_16B5                          ; 7E 34
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E50                          ; E8 CA F7
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_83                   ; 9A 3B 18 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        imul    word ptr [bp - 4]               ; F7 6E FC
        push    ax                              ; 50
        call    far _entry_120                  ; 9A E2 13 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_43                   ; 9A 6F 18 00 00 [FIXUP]
L_16B5:
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far GDI.DELETEDC                ; 9A ED 18 00 00 [FIXUP]
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_16D3                          ; 74 10
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.GLOBALUNLOCK         ; 9A FB 18 00 00 [FIXUP]
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.GLOBALFREE           ; 9A BA 17 00 00 [FIXUP]
L_16D3:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_16DF -- offset 0x16DF -- 217 instr
; Dispatcher: tabla de decisiones cmp+jcc (217 instr).
; tags: calls_gdi, calls_kernel, dispatcher, far
; callers: sub_0000, sub_035A
; calls (intra): sub_0E50
; calls (inter): GDI.BITBLT, GDI.DELETEDC, GDI.SETBITMAPBITS, KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK (+1 mas)
;----------------------------------------------------------------------
L_16DF:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x24                        ; 83 EC 24
        push    si                              ; 56
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_16F6                          ; 75 03
        jmp     L_1907                          ; E9 11 02
L_16F6:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_16FF                          ; 75 03
        jmp     L_1907                          ; E9 08 02
L_16FF:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        dec     ax                              ; 48
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        add     ax, 7                           ; 05 07 00
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 0x22], 1         ; C7 46 DE 01 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        jmp     L_175D                          ; EB 12
L_174B:
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        jne     L_1785                          ; 75 34
        inc     word ptr [bp - 0x22]            ; FF 46 DE
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x22]        ; 8B 4E DE
        idiv    cx                              ; F7 F9
L_175D:
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A EE 17 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A 52 13 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        jne     L_174B                          ; 75 C6
L_1785:
        mov     ax, word ptr [0xc90]            ; A1 90 0C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    ax                              ; 50
        call    far _entry_27                   ; 9A E7 14 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        je      L_17B0                          ; 74 16
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.GLOBALLOCK           ; 9A 70 13 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        jmp     L_17D7                          ; EB 27
L_17B0:
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_17BE                          ; 74 08
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.GLOBALFREE           ; 9A 03 19 00 00 [FIXUP]
L_17BE:
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
        mov     ax, 0xca6                       ; B8 A6 0C
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], ds         ; 8C 5E F2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], ds        ; 8C 5E EE
        mov     word ptr [bp - 0x1e], 1         ; C7 46 E2 01 00
L_17D7:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_29                   ; 9A 4C 18 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        add     word ptr [bp - 0xa], 0x20       ; 83 46 F6 20
        adc     word ptr [bp - 8], 0            ; 83 56 F8 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_18DE                          ; E9 D6 00
L_1808:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_1879                          ; 75 6B
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        sub     si, word ptr [bp - 6]           ; 2B 76 FA
        cmp     word ptr [bp - 0x1e], si        ; 39 76 E2
        jle     L_181C                          ; 7E 03
        mov     word ptr [bp - 0x1e], si        ; 89 76 E2
L_181C:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E50                          ; E8 23 F6
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_83                   ; 9A A6 13 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A BC 11 00 00 [FIXUP]
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        adc     word ptr [bp - 8], dx           ; 11 56 F8
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        imul    word ptr [bp - 0x1e]            ; F7 6E E2
        push    ax                              ; 50
        call    far _entry_82                   ; 9A 26 19 00 00 [FIXUP]
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    far _entry_43                   ; 9A 0D 14 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
L_1879:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 0x24]        ; 2B 46 DC
        inc     ax                              ; 40
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far GDI.SETBITMAPBITS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp - 0x24]        ; 8B 56 DC
        mov     cl, 3                           ; B1 03
        shl     dx, cl                          ; D3 E2
        sub     ax, dx                          ; 2B C2
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 0F 04 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_18DB                          ; 75 05
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_18DB:
        inc     word ptr [bp - 6]               ; FF 46 FA
L_18DE:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_18E9                          ; 7D 03
        jmp     L_1808                          ; E9 1F FF
L_18E9:
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far GDI.DELETEDC                ; 9A 53 0C 00 00 [FIXUP]
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_1907                          ; 74 10
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.GLOBALUNLOCK         ; 9A FD 13 00 00 [FIXUP]
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.GLOBALFREE           ; 9A 86 13 00 00 [FIXUP]
L_1907:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1913 -- offset 0x1913 -- 15 instr
; Funcion sin clasificar definitiva (15 instr).
; tags: wrapper
; callers: sub_1935
;----------------------------------------------------------------------
L_1913:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_82                   ; 9A D0 13 00 00 [FIXUP]
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        sub     ah, ah                          ; 2A E4
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1935 -- offset 0x1935 -- 16 instr
; Funcion sin clasificar definitiva (16 instr).
; tags: small
; callers: sub_0899
; calls (intra): sub_1913
;----------------------------------------------------------------------
L_1935:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1913                          ; E8 D2 FF
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1913                          ; E8 C7 FF
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp - 2], ax           ; 01 46 FE
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_195C -- offset 0x195C -- 15 instr
; Funcion sin clasificar definitiva (15 instr).
; tags: wrapper
; callers: sub_197F
;----------------------------------------------------------------------
L_195C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_120                  ; 9A 54 16 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_197F -- offset 0x197F -- 159 instr
; Dispatcher: tabla de decisiones cmp+jcc (159 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; callers: sub_0D7D
; calls (intra): sub_072E, sub_0E76, sub_195C, sub_1D48
; calls (inter): KERNEL.FREEPROCINSTANCE, KERNEL.MAKEPROCINSTANCE, USER.DIALOGBOX, USER.GETPARENT, USER.MESSAGEBOX
;----------------------------------------------------------------------
L_197F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_195C                          ; E8 CE FF
        push    word ptr [bp + 6]               ; FF 76 06
        mov     al, byte ptr [bp + 5]           ; 8A 46 05
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_195C                          ; E8 C2 FF
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
        sub     sp, 0x84                        ; 81 EC 84 00
        cmp     word ptr [0x54e], 0             ; 83 3E 4E 05 00
        jne     L_19CD                          ; 75 18
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        jne     L_19CD                          ; 75 11
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0x1c                        ; B8 1C 00
        jmp     L_1A00                          ; EB 33
L_19CD:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1D48                          ; E8 73 03
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E76                          ; E8 99 F4
        cmp     ax, 2                           ; 3D 02 00
        je      L_1A19                          ; 74 37
        mov     byte ptr [0x4ce], 0             ; C6 06 CE 04 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_072E                          ; E8 41 ED
        or      ax, ax                          ; 0B C0
        je      L_1A19                          ; 74 28
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
L_1A00:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_60                   ; 9A DA 1A 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x10c2                      ; B8 C2 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A EA 1A 00 00 [FIXUP]
L_1A19:
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
        sub     sp, 0x8a                        ; 81 EC 8A 00
        cmp     word ptr [0x54e], 0             ; 83 3E 4E 05 00
        jne     L_1A55                          ; 75 1C
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        jne     L_1A55                          ; 75 15
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0x1c                        ; B8 1C 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        jmp     L_1AD8                          ; E9 83 00
L_1A55:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1D48                          ; E8 EB 02
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E76                          ; E8 11 F4
        cmp     ax, 2                           ; 3D 02 00
        jne     L_1A6D                          ; 75 03
        jmp     L_1AEE                          ; E9 81 00
L_1A6D:
        mov     ax, OFFSET _entry_7             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_7             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x111c]               ; FF 36 1C 11
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        mov     word ptr [bp - 0x88], dx        ; 89 96 78 FF
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, 0x844                       ; B8 44 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A 3B 06 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        call    far KERNEL.FREEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1AEE                          ; 74 33
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_072E                          ; E8 6D EC
        or      ax, ax                          ; 0B C0
        je      L_1AEE                          ; 74 29
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        mov     ax, 0x4ce                       ; B8 CE 04
L_1AD8:
        push    ax                              ; 50
        call    far _entry_60                   ; 9A 5C 1B 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x10c2                      ; B8 C2 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 6C 1B 00 00 [FIXUP]
L_1AEE:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1AF9 -- offset 0x1AF9 -- 87 instr
; Funcion compleja: 87 instrucciones, 7 llamadas, 6 branches.
; tags: calls_user, complex, far
; callers: sub_1CDB
; calls (intra): sub_0F23, sub_10C0, sub_1BB2, sub_1D48, sub_1F96, sub_1FF3
; calls (inter): USER.MESSAGEBOX
;----------------------------------------------------------------------
L_1AF9:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x86                        ; 81 EC 86 00
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1D48                          ; E8 39 02
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1F96                          ; E8 7F 04
        or      ax, ax                          ; 0B C0
        jne     L_1B21                          ; 75 06
L_1B1B:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1BA7                          ; E9 86 00
L_1B21:
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        jne     L_1B2F                          ; 75 07
        cmp     word ptr [0x54e], 0             ; 83 3E 4E 05 00
        je      L_1B34                          ; 74 05
L_1B2F:
        mov     ax, 0x44e                       ; B8 4E 04
        jmp     L_1B37                          ; EB 03
L_1B34:
        mov     ax, 0x3ce                       ; B8 CE 03
L_1B37:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_10C0                          ; E8 7D F5
        or      ax, ax                          ; 0B C0
        je      L_1B75                          ; 74 2E
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ax                              ; 50
        call    far _entry_60                   ; 9A D1 0E 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc56                       ; B8 56 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x134                       ; B8 34 01
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A E1 0E 00 00 [FIXUP]
        cmp     ax, 6                           ; 3D 06 00
        jne     L_1B1B                          ; 75 A6
L_1B75:
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1FF3                          ; E8 6F 04
        or      ax, ax                          ; 0B C0
        jne     L_1B9C                          ; 75 14
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_32                   ; 9A DB 0F 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1BB2                          ; E8 18 00
        jmp     L_1BA4                          ; EB 08
L_1B9C:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F23                          ; E8 7F F3
L_1BA4:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_1BA7:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1BB2 -- offset 0x1BB2 -- 124 instr
; Dispatcher: tabla de decisiones cmp+jcc (124 instr).
; tags: calls_kernel, dispatcher
; callers: sub_1AF9
; calls (intra): sub_0F23, sub_21D9
; calls (inter): KERNEL.ANSIUPPER, KERNEL.LSTRCPY, KERNEL.OPENFILE
;----------------------------------------------------------------------
L_1BB2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x8c                        ; 81 EC 8C 00
        mov     ax, word ptr [0x54e]            ; A1 4E 05
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x552]            ; A1 52 05
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        mov     word ptr [0x54e], 0             ; C7 06 4E 05 00 00
        mov     word ptr [0x552], 1             ; C7 06 52 05 01 00
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A F4 1B 00 00 [FIXUP]
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 2B 1C 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F23                          ; E8 23 F3
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_1C62                          ; 75 5B
        mov     ax, 0x44e                       ; B8 4E 04
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_21D9                          ; E8 C6 05
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_1C85                          ; 75 6C
        cmp     byte ptr [bp - 0x86], 0         ; 80 BE 7A FF 00
        jne     L_1C85                          ; 75 65
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 5C 1C 00 00 [FIXUP]
        mov     byte ptr [0x44e], 0             ; C6 06 4E 04 00
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa4a                       ; B8 4A 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2002                      ; B8 02 20
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 69 0E 00 00 [FIXUP]
        mov     word ptr [bp - 0x8c], ax        ; 89 86 74 FF
        push    ax                              ; 50
        call    far _entry_43                   ; 9A A8 15 00 00 [FIXUP]
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa52                       ; B8 52 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 74 1C 00 00 [FIXUP]
        jmp     L_1C85                          ; EB 23
L_1C62:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jle     L_1C7E                          ; 7E 16
        mov     ax, 0x44e                       ; B8 4E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 48 10 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x54e], ax            ; A3 4E 05
L_1C7E:
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        mov     word ptr [0x552], ax            ; A3 52 05
L_1C85:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     al, byte ptr [0xa52]            ; A0 52 0A
        sub     ah, ah                          ; 2A E4
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A BB 1C 00 00 [FIXUP]
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     byte ptr [bx + 1], 0x3a         ; 80 7F 01 3A
        jne     L_1CC8                          ; 75 15
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        cmp     al, byte ptr [bp - 2]           ; 3A 46 FE
        je      L_1CD2                          ; 74 0E
L_1CC4:
        sub     ax, ax                          ; 2B C0
        jmp     L_1CD5                          ; EB 0D
L_1CC8:
        call    far _entry_123                  ; 9A FF FF 00 00 [FIXUP]
        cmp     al, byte ptr [bp - 2]           ; 3A 46 FE
        jne     L_1CC4                          ; 75 F2
L_1CD2:
        mov     ax, 1                           ; B8 01 00
L_1CD5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1CDB -- offset 0x1CDB -- 48 instr
; Funcion mediana (48 instr, 4 calls).
; tags: far, medium
; callers: sub_0E76
; calls (intra): sub_0F23, sub_1AF9, sub_1D48, sub_21D9
;----------------------------------------------------------------------
L_1CDB:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1D48                          ; E8 58 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_1CFC                          ; 74 06
        mov     word ptr [0x552], 1             ; C7 06 52 05 01 00
L_1CFC:
        cmp     word ptr [0x54e], 0             ; 83 3E 4E 05 00
        je      L_1D10                          ; 74 0D
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1AF9                          ; E8 EE FD
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_1D3A                          ; EB 2A
L_1D10:
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F23                          ; E8 0B F2
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_1D2E                          ; 74 0F
        or      ax, ax                          ; 0B C0
        jle     L_1D3A                          ; 7E 17
        mov     word ptr [0x54e], 1             ; C7 06 4E 05 01 00
        mov     byte ptr [0x44e], 0             ; C6 06 4E 04 00
L_1D2E:
        mov     ax, 0x44e                       ; B8 4E 04
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_21D9                          ; E8 9F 04
L_1D3A:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1D48 -- offset 0x1D48 -- 230 instr
; Dispatcher: tabla de decisiones cmp+jcc (230 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; callers: sub_0E76, sub_197F, sub_1AF9, sub_1CDB
; calls (intra): sub_035A, sub_1FF3
; calls (inter): GDI.DELETEDC, KERNEL.FREEPROCINSTANCE, KERNEL.LSTRCPY, KERNEL.MAKEPROCINSTANCE, USER.ENUMWINDOWS, USER.GETDC (+4 mas)
;----------------------------------------------------------------------
L_1D48:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_1D67                          ; 74 0B
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_75                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1E60                          ; E9 F9 00
L_1D67:
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        jne     L_1D75                          ; 75 07
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        je      L_1D9F                          ; 74 2A
L_1D75:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETDC                  ; 9A 90 0A 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A 93 1A 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_125                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.RELEASEDC              ; 9A F7 1D 00 00 [FIXUP]
        jmp     L_1E60                          ; E9 C1 00
L_1D9F:
        cmp     word ptr [0x582], 0             ; 83 3E 82 05 00
        jle     L_1E05                          ; 7E 5F
        cmp     word ptr [0x554], 0             ; 83 3E 54 05 00
        je      L_1DB8                          ; 74 0B
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 1F 1E 00 00 [FIXUP]
        jmp     L_1DC0                          ; EB 08
L_1DB8:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETDC                  ; 9A 29 1E 00 00 [FIXUP]
L_1DC0:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x16                        ; 3D 16 00
        je      L_1DD7                          ; 74 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_67                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1DDF                          ; EB 08
L_1DD7:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_66                   ; 9A FF FF 00 00 [FIXUP]
L_1DDF:
        cmp     word ptr [0x554], 0             ; 83 3E 54 05 00
        je      L_1DF0                          ; 74 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A 41 1E 00 00 [FIXUP]
        jmp     L_1DFB                          ; EB 0B
L_1DF0:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.RELEASEDC              ; 9A 4E 1E 00 00 [FIXUP]
L_1DFB:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_035A                          ; E8 57 E5
        jmp     L_1E60                          ; EB 5B
L_1E05:
        cmp     word ptr [0x894], 0             ; 83 3E 94 08 00
        je      L_1E60                          ; 74 54
        cmp     word ptr [0x894], 0             ; 83 3E 94 08 00
        jle     L_1E5A                          ; 7E 47
        cmp     word ptr [0x554], 0             ; 83 3E 54 05 00
        je      L_1E25                          ; 74 0B
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 8D 17 00 00 [FIXUP]
        jmp     L_1E2D                          ; EB 08
L_1E25:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETDC                  ; 9A 79 1D 00 00 [FIXUP]
L_1E2D:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far _entry_124                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x554], 0             ; 83 3E 54 05 00
        je      L_1E47                          ; 74 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A B9 16 00 00 [FIXUP]
        jmp     L_1E52                          ; EB 0B
L_1E47:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.RELEASEDC              ; 9A 06 0B 00 00 [FIXUP]
L_1E52:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_035A                          ; E8 00 E5
L_1E5A:
        mov     word ptr [0x894], 0             ; C7 06 94 08 00 00
L_1E60:
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
        cmp     word ptr [0xc7a], 0             ; 83 3E 7A 0C 00
        je      L_1E8E                          ; 74 12
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 70 20 00 00 [FIXUP]
        jmp     L_1E95                          ; EB 07
L_1E8E:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
L_1E95:
        mov     ax, 1                           ; B8 01 00
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
        sub     sp, 0x28                        ; 83 EC 28
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x84e                       ; B8 4E 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.GETPROP                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_1F07                          ; 74 43
        mov     ax, OFFSET _entry_10            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_10            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 3A 1F 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        or      ax, dx                          ; 0B C2
        je      L_1F07                          ; 74 29
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        lcall   [bp - 8]                        ; FF 5E F8
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.FREEPROCINSTANCE     ; 9A 56 1F 00 00 [FIXUP]
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1FF3                          ; E8 F3 00
        mov     word ptr [0xaf2], ax            ; A3 F2 0A
        or      ax, ax                          ; 0B C0
        jne     L_1F0C                          ; 75 05
L_1F07:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1F0E                          ; EB 02
L_1F0C:
        sub     ax, ax                          ; 2B C0
L_1F0E:
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
        sub     sp, 0x86                        ; 81 EC 86 00
        mov     word ptr [0xaf2], 0             ; C7 06 F2 0A 00 00
        mov     ax, OFFSET _entry_11            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_11            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x111c]               ; FF 36 1C 11
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A B0 1F 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.ENUMWINDOWS            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.FREEPROCINSTANCE     ; 9A E1 1F 00 00 [FIXUP]
        cmp     word ptr [0xaf2], 0             ; 83 3E F2 0A 00
        je      L_1F8A                          ; 74 29
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ax                              ; 50
        call    far _entry_60                   ; 9A 05 1A 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x10c2                      ; B8 C2 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 15 1A 00 00 [FIXUP]
L_1F8A:
        mov     ax, word ptr [0xaf2]            ; A1 F2 0A
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1F96 -- offset 0x1F96 -- 38 instr
; Funcion mediana (38 instr, 4 calls).
; tags: calls_kernel, calls_user, far, medium
; callers: sub_1AF9
; calls (inter): KERNEL.FREEPROCINSTANCE, KERNEL.MAKEPROCINSTANCE, USER.DIALOGBOX, USER.GETPARENT
;----------------------------------------------------------------------
L_1F96:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     ax, OFFSET _entry_8             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_8             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x111c]               ; FF 36 1C 11
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 7A 1A 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, 0x85a                       ; B8 5A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A 34 22 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.DIALOGBOX              ; 9A A1 1A 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.FREEPROCINSTANCE     ; 9A B1 1A 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1FF3 -- offset 0x1FF3 -- 159 instr
; Dispatcher: tabla de decisiones cmp+jcc (159 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_1AF9, sub_1D48
; calls (inter): KERNEL.ANSIPREV, KERNEL.ANSIUPPER, KERNEL.LSTRCAT, KERNEL.LSTRCPY, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_1FF3:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
L_2000:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     byte ptr [bp - 4], 0x61         ; 80 7E FC 61
        jl      L_2028                          ; 7C 0A
        cmp     byte ptr [bp - 4], 0x7a         ; 80 7E FC 7A
        jg      L_2028                          ; 7F 04
        add     byte ptr [bp - 4], 0xe0         ; 80 46 FC E0
L_2028:
        cmp     byte ptr [bp - 6], 0x61         ; 80 7E FA 61
        jl      L_2038                          ; 7C 0A
        cmp     byte ptr [bp - 6], 0x7a         ; 80 7E FA 7A
        jg      L_2038                          ; 7F 04
        add     byte ptr [bp - 6], 0xe0         ; 80 46 FA E0
L_2038:
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cmp     byte ptr [bp - 4], al           ; 38 46 FC
        je      L_2044                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_204D                          ; EB 09
L_2044:
        cmp     byte ptr [bp - 4], 0            ; 80 7E FC 00
        jne     L_2000                          ; 75 B6
        mov     ax, 1                           ; B8 01 00
L_204D:
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
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A F3 21 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A F5 20 00 00 [FIXUP]
        add     ax, word ptr [bp + 8]           ; 03 46 08
        jmp     L_20A3                          ; EB 20
L_2083:
        cmp     byte ptr [bp - 6], 0x5c         ; 80 7E FA 5C
        je      L_20B1                          ; 74 28
        cmp     byte ptr [bp - 6], 0x3a         ; 80 7E FA 3A
        je      L_20B1                          ; 74 22
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jbe     L_20B1                          ; 76 1A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A 1A 21 00 00 [FIXUP]
L_20A3:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     al, 0x2e                        ; 3C 2E
        jne     L_2083                          ; 75 D2
L_20B1:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0x2e             ; 80 3F 2E
        je      L_20C8                          ; 74 0F
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x865                       ; B8 65 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 3F 21 00 00 [FIXUP]
L_20C8:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 49 21 00 00 [FIXUP]
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
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_214D                          ; 74 5D
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [bp + 6]           ; 03 46 06
        jmp     L_211E                          ; EB 20
L_20FE:
        cmp     byte ptr [bp - 6], 0x5c         ; 80 7E FA 5C
        je      L_212C                          ; 74 28
        cmp     byte ptr [bp - 6], 0x3a         ; 80 7E FA 3A
        je      L_212C                          ; 74 22
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jbe     L_212C                          ; 76 1A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
L_211E:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     al, 0x2e                        ; 3C 2E
        jne     L_20FE                          ; 75 D2
L_212C:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0x2e             ; 80 3F 2E
        je      L_2143                          ; 74 0F
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x86a                       ; B8 6A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 2C 22 00 00 [FIXUP]
L_2143:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A A3 1C 00 00 [FIXUP]
L_214D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2158 -- offset 0x2158 -- 25 instr
; Funcion sin clasificar definitiva (25 instr).
; tags: calls_kernel, far, small
; callers: sub_0899
; calls (inter): KERNEL.GETTEMPFILENAME
;----------------------------------------------------------------------
L_2158:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x86f                       ; B8 6F 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x7e0]                ; FF 36 E0 07
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETTEMPFILENAME      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7e0], ax            ; A3 E0 07
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2186 -- offset 0x2186 -- 39 instr
; Dispatcher: tabla de decisiones cmp+jcc (39 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_0F23, sub_21D9
; calls (inter): KERNEL.ANSINEXT
;----------------------------------------------------------------------
L_2186:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_21C3                          ; EB 28
L_219B:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     al, 0x5c                        ; 3C 5C
        je      L_21AF                          ; 74 08
        cmp     al, 0x2f                        ; 3C 2F
        je      L_21AF                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_21B6                          ; 75 07
L_21AF:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_21B6:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 6], ax           ; 89 46 06
L_21C3:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_219B                          ; 75 D0
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_21D9 -- offset 0x21D9 -- 56 instr
; Funcion mediana (56 instr, 5 calls).
; tags: calls_kernel, calls_user, medium
; callers: sub_072E, sub_1BB2, sub_1CDB
; calls (intra): sub_2186
; calls (inter): KERNEL.LSTRCAT, KERNEL.LSTRCPY, USER.GETPARENT, USER.SETWINDOWTEXT
;----------------------------------------------------------------------
L_21D9:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x82                        ; 81 EC 82 00
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xe3a                       ; B8 3A 0E
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A E5 1B 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_220D                          ; 74 0E
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    bx                              ; 53
L_2206:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2186                          ; E8 7B FF
        jmp     L_2229                          ; EB 1C
L_220D:
        cmp     word ptr [0x54e], 0             ; 83 3E 4E 05 00
        jne     L_2220                          ; 75 0C
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ax                              ; 50
        jmp     L_2206                          ; EB E6
L_2220:
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xaf4                       ; B8 F4 0A
L_2229:
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A 84 1D 00 00 [FIXUP]
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

PAINT_TEXT ENDS

        END
