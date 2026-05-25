; AUTO-GENERATED from original PAINT segment 6
; segment_size=3173 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 9 instr
; Funcion sin clasificar definitiva (9 instr).
; tags: wrapper
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x44e                       ; B8 4E 04
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_71                   ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0015 -- offset 0x0015 -- 60 instr
; Dispatcher: tabla de decisiones cmp+jcc (60 instr).
; tags: calls_gdi, dispatcher
; callers: sub_07BE
; calls (inter): GDI.DELETEDC
;----------------------------------------------------------------------
L_0015:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [0xc84]            ; 03 06 84 0C
        cmp     ax, word ptr [0xbfe]            ; 3B 06 FE 0B
        jg      L_0035                          ; 7F 0D
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        cmp     ax, word ptr [0xc76]            ; 3B 06 76 0C
        jle     L_0087                          ; 7E 52
L_0035:
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A E1 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [0xc84]            ; 03 06 84 0C
        cmp     ax, word ptr [0xbfe]            ; 3B 06 FE 0B
        jle     L_005B                          ; 7E 0C
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        sub     ax, word ptr [0xc84]            ; 2B 06 84 0C
        jmp     L_005D                          ; EB 02
L_005B:
        sub     ax, ax                          ; 2B C0
L_005D:
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        cmp     ax, word ptr [0xc76]            ; 3B 06 76 0C
        jle     L_0077                          ; 7E 0C
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        sub     ax, word ptr [0xc8e]            ; 2B 06 8E 0C
        jmp     L_0079                          ; EB 02
L_0077:
        sub     ax, ax                          ; 2B C0
L_0079:
        push    ax                              ; 50
        call    far _entry_70                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A 1B 02 00 00 [FIXUP]
L_0087:
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jne     L_00A8                          ; 75 1A
        mov     ax, word ptr [0x554]            ; A1 54 05
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [0x554], 1             ; C7 06 54 05 01 00
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_38                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x554], ax            ; A3 54 05
L_00A8:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jg      L_00BD                          ; 7F 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_00BF                          ; EB 02
L_00BD:
        sub     ax, ax                          ; 2B C0
L_00BF:
        push    ax                              ; 50
        call    far _entry_69                   ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00CB -- offset 0x00CB -- 397 instr
; Dispatcher: tabla de decisiones cmp+jcc (397 instr).
; tags: calls_gdi, calls_user, dispatcher
; callers: sub_07BE
; calls (inter): GDI.DELETEDC, GDI.GETPIXEL, GDI.SETROP2, USER.ANYPOPUP, USER.GETDC, USER.GETFOCUS (+7 mas)
;----------------------------------------------------------------------
L_00CB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_47                   ; 9A 5C 01 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_00EA                          ; 75 03
        jmp     L_0229                          ; E9 3F 01
L_00EA:
        cmp     ax, 1                           ; 3D 01 00
        jne     L_00F2                          ; 75 03
        jmp     L_01BD                          ; E9 CB 00
L_00F2:
        cmp     ax, 7                           ; 3D 07 00
        je      L_0101                          ; 74 0A
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0xe08]           ; FF B7 08 0E
        jmp     L_014F                          ; EB 4E
L_0101:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jle     L_014B                          ; 7E 43
        push    word ptr [0x3ca]                ; FF 36 CA 03
        call    far USER.SETCURSOR              ; 9A 50 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A D2 02 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far _entry_68                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.RELEASEDC              ; 9A F3 02 00 00 [FIXUP]
        jmp     L_0154                          ; EB 09
L_014B:
        push    word ptr [0xe16]                ; FF 36 16 0E
L_014F:
        call    far USER.SETCURSOR              ; 9A 13 02 00 00 [FIXUP]
L_0154:
        cmp     word ptr [0x87a], 0             ; 83 3E 7A 08 00
        je      L_01A9                          ; 74 4E
        call    far _entry_47                   ; 9A 43 03 00 00 [FIXUP]
        cmp     ax, 5                           ; 3D 05 00
        je      L_01A9                          ; 74 44
        mov     si, 2                           ; BE 02 00
        mov     cl, byte ptr [0x87a]            ; 8A 0E 7A 08
        shl     si, cl                          ; D3 E6
        mov     word ptr [bp - 4], si           ; 89 76 FC
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     di, ax                          ; 8B F8
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        add     ax, word ptr [0xc84]            ; 03 06 84 0C
        add     ax, di                          ; 03 C7
        cdq                                     ; 99
        idiv    si                              ; F7 FE
        imul    si                              ; F7 EE
        sub     ax, word ptr [0xc84]            ; 2B 06 84 0C
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        add     ax, di                          ; 03 C7
        cdq                                     ; 99
        idiv    si                              ; F7 FE
        imul    si                              ; F7 EE
        sub     ax, word ptr [0xc8e]            ; 2B 06 8E 0C
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
L_01A9:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jl      L_01B5                          ; 7C 03
        jmp     L_0256                          ; E9 A1 00
L_01B5:
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        jmp     L_0265                          ; E9 A8 00
L_01BD:
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        je      L_0222                          ; 74 5E
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        call    far USER.PTINRECT               ; 9A 40 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0222                          ; 74 46
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A 31 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far GDI.GETPIXEL                ; 9A FF FF 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        je      L_020E                          ; 74 06
        push    word ptr [0xe38]                ; FF 36 38 0E
        jmp     L_0212                          ; EB 04
L_020E:
        push    word ptr [0xe0a]                ; FF 36 0A 0E
L_0212:
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A 69 03 00 00 [FIXUP]
        jmp     L_0154                          ; E9 32 FF
L_0222:
        push    word ptr [0xe0a]                ; FF 36 0A 0E
        jmp     L_014F                          ; E9 26 FF
L_0229:
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_024F                          ; 74 1F
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_024F                          ; 74 07
        push    word ptr [0xe38]                ; FF 36 38 0E
        jmp     L_014F                          ; E9 00 FF
L_024F:
        push    word ptr [0xe08]                ; FF 36 08 0E
        jmp     L_014F                          ; E9 F9 FE
L_0256:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jl      L_0265                          ; 7C 04
        dec     ax                              ; 48
        mov     word ptr es:[bx], ax            ; 26 89 07
L_0265:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 2], 0         ; 26 83 7F 02 00
        jge     L_0277                          ; 7D 08
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        jmp     L_0288                          ; EB 11
L_0277:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        jl      L_0288                          ; 7C 05
        dec     ax                              ; 48
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
L_0288:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_02A8                          ; 74 18
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_0298                          ; 75 03
        jmp     L_038B                          ; E9 F3 00
L_0298:
        cmp     ax, 0x202                       ; 3D 02 02
        jne     L_02A0                          ; 75 03
        jmp     L_044F                          ; E9 AF 01
L_02A0:
        cmp     ax, 0x203                       ; 3D 03 02
        je      L_02FA                          ; 74 55
        jmp     L_0548                          ; E9 A0 02
L_02A8:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_02B2                          ; 7F 03
        jmp     L_0548                          ; E9 96 02
L_02B2:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     word ptr [0x1172], ax           ; A3 72 11
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        mov     word ptr [0x1174], ax           ; A3 74 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [0xc8a], ax            ; A3 8A 0C
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [0xc8c], ax            ; A3 8C 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A 3B 03 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        lcall   [bx + 0x35e]                    ; FF 9F 5E 03
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.RELEASEDC              ; 9A 76 03 00 00 [FIXUP]
        jmp     L_0548                          ; E9 4E 02
L_02FA:
        cmp     word ptr [0x582], 0             ; 83 3E 82 05 00
        jg      L_0304                          ; 7F 03
        jmp     L_0548                          ; E9 44 02
L_0304:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     word ptr [0x1172], ax           ; A3 72 11
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        mov     word ptr [0x1174], ax           ; A3 74 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [0xc8a], ax            ; A3 8A 0C
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [0xc8c], ax            ; A3 8C 0C
        call    far USER.ANYPOPUP               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x554], ax            ; A3 54 05
        or      ax, ax                          ; 0B C0
        je      L_0337                          ; 74 0B
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_033F                          ; EB 08
L_0337:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
L_033F:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x16                        ; 3D 16 00
        je      L_0356                          ; 74 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_67                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_035E                          ; EB 08
L_0356:
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_66                   ; 9A FF FF 00 00 [FIXUP]
L_035E:
        cmp     word ptr [0x554], 0             ; 83 3E 54 05 00
        je      L_036F                          ; 74 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_037A                          ; EB 0B
L_036F:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
L_037A:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_65                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x554], 0             ; C7 06 54 05 00 00
        jmp     L_0548                          ; E9 BD 01
L_038B:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        je      L_0395                          ; 74 03
        jmp     L_0448                          ; E9 B3 00
L_0395:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [0x1172], ax           ; A3 72 11
        mov     word ptr [0xc8a], ax            ; A3 8A 0C
        mov     word ptr [0xbf0], ax            ; A3 F0 0B
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [0x1174], ax           ; A3 74 11
        mov     word ptr [0xc8c], ax            ; A3 8C 0C
        mov     word ptr [0xbf2], ax            ; A3 F2 0B
        call    far USER.ANYPOPUP               ; 9A 21 03 00 00 [FIXUP]
        mov     word ptr [0x554], ax            ; A3 54 05
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_03C8                          ; 74 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_75                   ; 9A FF FF 00 00 [FIXUP]
L_03C8:
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        jne     L_03F6                          ; 75 27
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        jne     L_03F6                          ; 75 20
        cmp     word ptr [0x894], 0             ; 83 3E 94 08 00
        jg      L_03F6                          ; 7F 19
        call    far _entry_47                   ; 9A E8 03 00 00 [FIXUP]
        cmp     ax, 0x17                        ; 3D 17 00
        je      L_03F6                          ; 74 0F
        call    far _entry_47                   ; 9A DC 00 00 00 [FIXUP]
        cmp     ax, 0x16                        ; 3D 16 00
        je      L_03F6                          ; 74 05
        call    far _entry_74                   ; 9A FF FF 00 00 [FIXUP]
L_03F6:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A 9F 04 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        lcall   [bx + 0x35e]                    ; FF 9F 5E 03
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.RELEASEDC              ; 9A 09 05 00 00 [FIXUP]
        call    far USER.GETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [bp + 0xa]         ; 3B 46 0A
        je      L_0434                          ; 74 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
L_0434:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 3            ; 83 7E FE 03
        je      L_0448                          ; 74 06
        mov     word ptr [0x552], 1             ; C7 06 52 05 01 00
L_0448:
        inc     word ptr [0x878]                ; FF 06 78 08
        jmp     L_0548                          ; E9 F9 00
L_044F:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_0459                          ; 7F 03
        jmp     L_0548                          ; E9 EF 00
L_0459:
        dec     word ptr [0x878]                ; FF 0E 78 08
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        je      L_0467                          ; 74 03
        jmp     L_0548                          ; E9 E1 00
L_0467:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     word ptr [0x1172], ax           ; A3 72 11
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        mov     word ptr [0x1174], ax           ; A3 74 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [0xc8a], ax            ; A3 8A 0C
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [0xc8c], ax            ; A3 8C 0C
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_049B                          ; 74 12
        cmp     word ptr [bp - 2], 1            ; 83 7E FE 01
        je      L_049B                          ; 74 0C
        cmp     word ptr [bp - 2], 7            ; 83 7E FE 07
        je      L_049B                          ; 74 06
        cmp     word ptr [bp - 2], 3            ; 83 7E FE 03
        jne     L_04BE                          ; 75 23
L_049B:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A D4 04 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        lcall   [bx + 0x35e]                    ; FF 9F 5E 03
        jmp     L_0502                          ; EB 44
L_04BE:
        cmp     word ptr [0x554], 0             ; 83 3E 54 05 00
        je      L_04D0                          ; 74 0B
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A AE 06 00 00 [FIXUP]
        jmp     L_04D8                          ; EB 08
L_04D0:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A 62 05 00 00 [FIXUP]
L_04D8:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        lcall   [bx + 0x35e]                    ; FF 9F 5E 03
        cmp     word ptr [0x554], 0             ; 83 3E 54 05 00
        je      L_0502                          ; 74 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.DELETEDC                ; 9A DA 06 00 00 [FIXUP]
        jmp     L_050D                          ; EB 0B
L_0502:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.RELEASEDC              ; 9A 92 05 00 00 [FIXUP]
L_050D:
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        jne     L_053D                          ; 75 29
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        jne     L_053D                          ; 75 22
        cmp     word ptr [0x894], 0             ; 83 3E 94 08 00
        jg      L_053D                          ; 7F 1B
        cmp     word ptr [0x582], 0             ; 83 3E 82 05 00
        jg      L_053D                          ; 7F 14
        cmp     word ptr [bp - 2], 7            ; 83 7E FE 07
        je      L_053D                          ; 74 0E
        cmp     word ptr [bp - 2], 3            ; 83 7E FE 03
        je      L_053D                          ; 74 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_65                   ; 9A 7E 03 00 00 [FIXUP]
L_053D:
        mov     word ptr [0x554], 0             ; C7 06 54 05 00 00
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
L_0548:
        cmp     word ptr [bp - 2], 7            ; 83 7E FE 07
        jne     L_0596                          ; 75 48
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jle     L_0596                          ; 7E 41
        push    word ptr [0x3ca]                ; FF 36 CA 03
        call    far USER.SETCURSOR              ; 9A 0D 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETDC                  ; 9A B1 05 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A 22 01 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far _entry_68                   ; 9A 3A 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.RELEASEDC              ; 9A D6 05 00 00 [FIXUP]
L_0596:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_059E -- offset 0x059E -- 27 instr
; Funcion sin clasificar definitiva (27 instr).
; tags: calls_user, small
; callers: sub_07BE
; calls (inter): USER.GETDC, USER.RELEASEDC
;----------------------------------------------------------------------
L_059E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        jmp     L_05DA                          ; EB 34
L_05A6:
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_05DA                          ; 74 2D
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETDC                  ; 9A 15 01 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_73                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 4], 0            ; C7 46 04 00 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.RELEASEDC              ; 9A 45 01 00 00 [FIXUP]
L_05DA:
        dec     word ptr [bp + 4]               ; FF 4E 04
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jge     L_05A6                          ; 7D C3
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05E9 -- offset 0x05E9 -- 65 instr
; Dispatcher: tabla de decisiones cmp+jcc (65 instr).
; tags: calls_user, dispatcher
; callers: sub_07BE
; calls (inter): USER.CLIENTTOSCREEN, USER.DESTROYCARET, USER.GETCURSORPOS, USER.GETSYSTEMMETRICS, USER.HIDECARET, USER.SCREENTOCLIENT (+2 mas)
;----------------------------------------------------------------------
L_05E9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [bp + 4], 7            ; 83 7E 04 07
        jne     L_05FF                          ; 75 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_54                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_060C                          ; EB 0D
L_05FF:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.HIDECARET              ; 9A FF FF 00 00 [FIXUP]
        call    far USER.DESTROYCARET           ; 9A FF FF 00 00 [FIXUP]
L_060C:
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0693                          ; 75 7A
        cmp     word ptr [bp + 4], 7            ; 83 7E 04 07
        jne     L_0624                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0626                          ; EB 02
L_0624:
        sub     ax, ax                          ; 2B C0
L_0626:
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 7            ; 83 7E 04 07
        jne     L_0693                          ; 75 61
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
        jl      L_0665                          ; 7C 16
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_0665                          ; 7D 0E
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jl      L_0665                          ; 7C 08
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_0693                          ; 7C 2E
L_0665:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.SETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
L_0693:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0699 -- offset 0x0699 -- 97 instr
; Dispatcher: tabla de decisiones cmp+jcc (97 instr).
; tags: calls_gdi, dispatcher
; callers: sub_07BE
; calls (inter): GDI.BITBLT, GDI.DELETEDC, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_0699:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jle     L_06A9                          ; 7E 03
        jmp     L_07B8                          ; E9 0F 01
L_06A9:
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A FC 06 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xda8]                ; FF 36 A8 0D
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        push    word ptr [bp - 6]               ; FF 76 FA
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 25 07 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A 2D 07 00 00 [FIXUP]
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_06F0                          ; 74 0B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
L_06F0:
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_073B                          ; 74 44
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 3A 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 4]               ; FF 76 04
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
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A 83 00 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_72                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07B8                          ; EB 7D
L_073B:
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        je      L_07B8                          ; 74 76
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A CA 04 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 4]               ; FF 76 04
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
        call    far GDI.BITBLT                  ; 9A A4 07 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x86                        ; B8 86 00
        mov     dx, 0xee                        ; BA EE 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A D2 06 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A FC 04 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_79                   ; 9A FF FF 00 00 [FIXUP]
L_07B8:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07BE -- offset 0x07BE -- 408 instr
; Dispatcher: tabla de decisiones cmp+jcc (408 instr).
; tags: calls_user, dispatcher
; calls (intra): sub_0015, sub_00CB, sub_059E, sub_05E9, sub_0699
; calls (inter): USER.BEGINPAINT, USER.CLIENTTOSCREEN, USER.DEFWINDOWPROC, USER.ENDPAINT, USER.GETCURSORPOS, USER.GETKEYSTATE (+3 mas)
;----------------------------------------------------------------------
L_07BE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        mov     ax, word ptr [0x10c0]           ; A1 C0 10
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_07D8                          ; 74 0C
        mov     word ptr [0x55c], 1             ; C7 06 5C 05 01 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x10c0], ax           ; A3 C0 10
L_07D8:
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCURSORPOS           ; 9A 38 06 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A 45 06 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_07FF                          ; 75 03
        jmp     L_0897                          ; E9 98 00
L_07FF:
        jbe     L_0804                          ; 76 03
        jmp     L_0B43                          ; E9 3F 03
L_0804:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_080C                          ; 75 03
        jmp     L_0AEE                          ; E9 E2 02
L_080C:
        jmp     L_084B                          ; EB 3D
L_080E:
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_081C                          ; 74 07
        cmp     word ptr [0x55a], 0             ; 83 3E 5A 05 00
        je      L_084B                          ; 74 2F
L_081C:
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_082B                          ; 74 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_75                   ; 9A B0 08 00 00 [FIXUP]
L_082B:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0875                          ; 7D 44
        mov     word ptr [0x556], 0             ; C7 06 56 05 00 00
        mov     word ptr [0x55a], 0             ; C7 06 5A 05 00 00
        cmp     word ptr [0xda8], 0             ; 83 3E A8 0D 00
        je      L_084B                          ; 74 07
        cmp     word ptr [0xdb4], 0             ; 83 3E B4 0D 00
        jne     L_086E                          ; 75 23
L_084B:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_085F                          ; 74 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0xc]             ; FF 76 F4
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_00CB                          ; E8 6C F8
L_085F:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_0868                          ; 74 03
        jmp     L_0B5E                          ; E9 F6 02
L_0868:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B60                          ; E9 F2 02
L_086E:
        mov     word ptr [bp - 0xc], 0x202      ; C7 46 F4 02 02
        jmp     L_084B                          ; EB D6
L_0875:
        cmp     word ptr [0x556], 0             ; 83 3E 56 05 00
        jne     L_084B                          ; 75 CF
        mov     word ptr [0x556], 1             ; C7 06 56 05 01 00
        cmp     word ptr [0xda8], 0             ; 83 3E A8 0D 00
        je      L_084B                          ; 74 C2
        cmp     word ptr [0xdb4], 0             ; 83 3E B4 0D 00
        je      L_084B                          ; 74 BB
        mov     word ptr [bp - 0xc], 0x201      ; C7 46 F4 01 02
        jmp     L_084B                          ; EB B4
L_0897:
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_08A5                          ; 74 07
        cmp     word ptr [0x55a], 0             ; 83 3E 5A 05 00
        je      L_084B                          ; 74 A6
L_08A5:
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_08B4                          ; 74 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_75                   ; 9A C4 03 00 00 [FIXUP]
L_08B4:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_08C2                          ; 7D 08
        mov     word ptr [0x558], 0             ; C7 06 58 05 00 00
        jmp     L_084B                          ; EB 89
L_08C2:
        cmp     word ptr [0x558], 0             ; 83 3E 58 05 00
        jne     L_084B                          ; 75 82
        mov     word ptr [0x558], 1             ; C7 06 58 05 01 00
        mov     word ptr [0x55a], 0             ; C7 06 5A 05 00 00
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jle     L_08DF                          ; 7E 03
        jmp     L_084B                          ; E9 6C FF
L_08DF:
        cmp     word ptr [0xda8], 0             ; 83 3E A8 0D 00
        jne     L_08E9                          ; 75 03
        jmp     L_084B                          ; E9 62 FF
L_08E9:
        cmp     word ptr [0xdb4], 0             ; 83 3E B4 0D 00
        jne     L_08F3                          ; 75 03
        jmp     L_084B                          ; E9 58 FF
L_08F3:
        call    far _entry_47                   ; 9A 02 0B 00 00 [FIXUP]
        cmp     ax, 3                           ; 3D 03 00
        je      L_094B                          ; 74 4E
        cmp     ax, 4                           ; 3D 04 00
        je      L_0924                          ; 74 22
        cmp     ax, 5                           ; 3D 05 00
        je      L_0919                          ; 74 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x203                       ; B8 03 02
        push    ax                              ; 50
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_00CB                          ; E8 B5 F7
        jmp     L_084B                          ; E9 32 FF
L_0919:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_78                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_084B                          ; E9 27 FF
L_0924:
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jne     L_0936                          ; 75 0B
L_092B:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_77                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_084B                          ; E9 15 FF
L_0936:
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jl      L_0940                          ; 7C 03
        jmp     L_084B                          ; E9 0B FF
L_0940:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_76                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_084B                          ; E9 00 FF
L_094B:
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        je      L_0940                          ; 74 EE
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jg      L_095C                          ; 7F 03
        jmp     L_084B                          ; E9 EF FE
L_095C:
        jmp     L_092B                          ; EB CD
L_095E:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0967                          ; 7D 03
        jmp     L_0AE5                          ; E9 7E 01
L_0967:
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A 79 09 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0984                          ; 7D 10
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A 0E 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0984                          ; 7D 03
        jmp     L_0A26                          ; E9 A2 00
L_0984:
        mov     word ptr [0x55a], 1             ; C7 06 5A 05 01 00
        cmp     word ptr [0xda8], 0             ; 83 3E A8 0D 00
        jne     L_0994                          ; 75 03
        jmp     L_084B                          ; E9 B7 FE
L_0994:
        cmp     word ptr [0xdb4], 0             ; 83 3E B4 0D 00
        jne     L_099E                          ; 75 03
        jmp     L_084B                          ; E9 AD FE
L_099E:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_09D6                          ; 74 30
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_09B7                          ; 74 0C
        cmp     ax, 0x27                        ; 3D 27 00
        je      L_09DE                          ; 74 2E
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_09CE                          ; 74 19
        jmp     L_09BD                          ; EB 06
L_09B7:
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        sub     word ptr [bp - 0x16], ax        ; 29 46 EA
L_09BD:
        inc     word ptr [0x55c]                ; FF 06 5C 05
        cmp     word ptr [bp - 0x18], 0         ; 83 7E E8 00
        jge     L_09E6                          ; 7D 1F
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        jmp     L_09F2                          ; EB 24
L_09CE:
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
        jmp     L_09BD                          ; EB E7
L_09D6:
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        sub     word ptr [bp - 0x18], ax        ; 29 46 E8
        jmp     L_09BD                          ; EB DF
L_09DE:
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        add     word ptr [bp - 0x18], ax        ; 01 46 E8
        jmp     L_09BD                          ; EB D7
L_09E6:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jl      L_09F2                          ; 7C 04
        dec     ax                              ; 48
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
L_09F2:
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        jge     L_09FF                          ; 7D 07
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        jmp     L_0A0B                          ; EB 0C
L_09FF:
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jl      L_0A0B                          ; 7C 04
        dec     ax                              ; 48
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
L_0A0B:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A 84 06 00 00 [FIXUP]
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far USER.SETCURSORPOS           ; 9A 8F 06 00 00 [FIXUP]
        jmp     L_084B                          ; E9 25 FE
L_0A26:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jle     L_0A30                          ; 7E 03
        jmp     L_084B                          ; E9 1B FE
L_0A30:
        mov     word ptr [bp - 0xe], 0xc02      ; C7 46 F2 02 0C
        mov     ax, word ptr [0xc12]            ; A1 12 0C
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0xc10]            ; A1 10 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0xc0c]            ; A1 0C 0C
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [0xc0a]            ; A1 0A 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_0AB9                          ; 74 64
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_0A66                          ; 74 0C
        cmp     ax, 0x27                        ; 3D 27 00
        je      L_0ACB                          ; 74 6C
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_0AA7                          ; 74 43
        jmp     L_0A76                          ; EB 10
L_0A66:
        dec     word ptr [bp - 0xa]             ; FF 4E F6
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jge     L_0A76                          ; 7D 07
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        dec     ax                              ; 48
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0A76:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        imul    word ptr [bp - 8]               ; F7 6E F8
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
L_0A8E:
        call    far _entry_48                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xda8], 0             ; 83 3E A8 0D 00
        jne     L_0A9D                          ; 75 03
        jmp     L_084B                          ; E9 AE FD
L_0A9D:
        cmp     word ptr [0xdb4], 0             ; 83 3E B4 0D 00
        jne     L_0ADD                          ; 75 39
        jmp     L_084B                          ; E9 A4 FD
L_0AA7:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_0A76                          ; 7C C4
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_0A76                          ; EB BD
L_0AB9:
        dec     word ptr [bp - 2]               ; FF 4E FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_0A76                          ; 7D B4
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        dec     ax                              ; 48
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_0A76                          ; EB AB
L_0ACB:
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_0A76                          ; 7C A0
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0A76                          ; EB 99
L_0ADD:
        mov     word ptr [bp - 0xc], 0x200      ; C7 46 F4 00 02
        jmp     L_084B                          ; E9 66 FD
L_0AE5:
        mov     word ptr [0x55c], 1             ; C7 06 5C 05 01 00
        jmp     L_084B                          ; E9 5D FD
L_0AEE:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jle     L_0AF8                          ; 7E 03
        jmp     L_084B                          ; E9 53 FD
L_0AF8:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0B01                          ; 7D 03
        jmp     L_084B                          ; E9 4A FD
L_0B01:
        call    far _entry_47                   ; 9A DE 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_0B26                          ; 7C 10
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 0x18         ; 83 7E FC 18
        jl      L_0B34                          ; 7C 15
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0B34                          ; EB 0E
L_0B26:
        dec     word ptr [bp - 4]               ; FF 4E FC
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jge     L_0B34                          ; 7D 05
        mov     word ptr [bp - 4], 0x17         ; C7 46 FC 17 00
L_0B34:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETPARENT              ; 9A 86 0A 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        jmp     L_0A8E                          ; E9 4B FF
L_0B43:
        cmp     ax, 0x20                        ; 3D 20 00
        jne     L_0B4B                          ; 75 03
        jmp     L_080E                          ; E9 C3 FC
L_0B4B:
        cmp     ax, 0x25                        ; 3D 25 00
        jae     L_0B53                          ; 73 03
        jmp     L_084B                          ; E9 F8 FC
L_0B53:
        cmp     ax, 0x28                        ; 3D 28 00
        ja      L_0B5B                          ; 77 03
        jmp     L_095E                          ; E9 03 FE
L_0B5B:
        jmp     L_084B                          ; E9 ED FC
L_0B5E:
        sub     ax, ax                          ; 2B C0
L_0B60:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
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
        jbe     L_0B86                          ; 76 03
        jmp     L_0C36                          ; E9 B0 00
L_0B86:
        cmp     ax, 7                           ; 3D 07 00
        jb      L_0B8E                          ; 72 03
        jmp     L_0C2A                          ; E9 9C 00
L_0B8E:
        cmp     ax, 1                           ; 3D 01 00
        je      L_0B9A                          ; 74 07
        cmp     ax, 5                           ; 3D 05 00
        je      L_0BA9                          ; 74 11
        jmp     L_0C0D                          ; EB 73
L_0B9A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    0                               ; E8 60 F4
L_0BA0:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        jmp     L_0C5B                          ; E9 B2 00
L_0BA9:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0015                          ; E8 60 F4
        jmp     L_0BA0                          ; EB E9
L_0BB7:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x26]            ; FF 76 DA
        call    L_0699                          ; E8 CC FA
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0BA0                          ; EB C4
L_0BDC:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_00CB                          ; E8 E1 F4
        jmp     L_0BA0                          ; EB B4
L_0BEC:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_059E                          ; E8 A6 F9
        jmp     L_0BA0                          ; EB A6
L_0BFA:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_07BE                          ; E8 B5 FB
        or      ax, ax                          ; 0B C0
        je      L_0BA0                          ; 74 93
L_0C0D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_0BA0                          ; E9 76 FF
L_0C2A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_05E9                          ; E8 B6 F9
        jmp     L_0BA0                          ; E9 6A FF
L_0C36:
        cmp     ax, 0x101                       ; 3D 01 01
        ja      L_0C4A                          ; 77 0F
        cmp     ax, 0x100                       ; 3D 00 01
        jae     L_0BFA                          ; 73 BA
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_0C48                          ; 75 03
        jmp     L_0BB7                          ; E9 6F FF
L_0C48:
        jmp     L_0C0D                          ; EB C3
L_0C4A:
        cmp     ax, 0x102                       ; 3D 02 01
        je      L_0BEC                          ; 74 9D
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_0C0D                          ; 72 B9
        cmp     ax, 0x203                       ; 3D 03 02
        jbe     L_0BDC                          ; 76 83
        jmp     L_0C0D                          ; EB B2
L_0C5B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A

PAINT_TEXT ENDS

        END
