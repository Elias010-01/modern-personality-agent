; AUTO-GENERATED from original PAINT segment 24
; segment_size=2865 bytes, flags=0xf130
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
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        jne     L_0017                          ; 75 03
        jmp     L_00B1                          ; E9 9A 00
L_0017:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0093                          ; 74 76
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_006D                          ; 74 2E
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far GDI.GETPIXEL                ; 9A FF FF 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        je      L_006D                          ; 74 10
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A 71 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0622                          ; E8 B7 05
        jmp     L_009F                          ; EB 32
L_006D:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far USER.GETPARENT              ; 9A 0E 02 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_125                  ; 9A 90 02 00 00 [FIXUP]
        call    far _entry_74                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x568], 0             ; C7 06 68 05 00 00
        jmp     L_00B1                          ; EB 1E
L_0093:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_00A9                          ; 74 10
        mov     word ptr [0x56a], 0xffff        ; C7 06 6A 05 FF FF
L_009F:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0913                          ; E8 6C 08
        jmp     L_00C0                          ; EB 17
L_00A9:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_06F3                          ; E8 44 06
        jmp     L_00C0                          ; EB 0F
L_00B1:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_00CB                          ; E8 0B 00
L_00C0:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00CB -- offset 0x00CB -- 92 instr
; Dispatcher: tabla de decisiones cmp+jcc (92 instr).
; tags: calls_gdi, calls_user, dispatcher
; callers: sub_07BE
; calls (inter): GDI.DELETEDC, GDI.GETPIXEL, GDI.SETROP2, USER.ANYPOPUP, USER.GETDC, USER.GETFOCUS (+7 mas)
;----------------------------------------------------------------------
L_00CB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_013E                          ; 74 5E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x1172]               ; FF 36 72 11
        push    word ptr [0x1174]               ; FF 36 74 11
        call    far GDI.MOVETO                  ; 9A 6C 01 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far GDI.LINETO                  ; 9A 0C 01 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        call    far GDI.LINETO                  ; 9A 7C 01 00 00 [FIXUP]
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far _entry_132                  ; 9A 89 01 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_138                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_137                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_018D                          ; EB 4F
L_013E:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_014E                          ; 74 0A
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        jmp     L_0188                          ; EB 3A
L_014E:
        mov     ax, word ptr [0x1172]           ; A1 72 11
        cmp     word ptr [0xc8a], ax            ; 39 06 8A 0C
        jne     L_0160                          ; 75 09
        mov     ax, word ptr [0x1174]           ; A1 74 11
        cmp     word ptr [0xc8c], ax            ; 39 06 8C 0C
        je      L_018D                          ; 74 2D
L_0160:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x1172]               ; FF 36 72 11
        push    word ptr [0x1174]               ; FF 36 74 11
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
L_0188:
        call    far _entry_132                  ; 9A FF FF 00 00 [FIXUP]
L_018D:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_01A5                          ; 74 12
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     word ptr [0xdb6], ax            ; A3 B6 0D
        inc     ax                              ; 40
        mov     word ptr [0xdba], ax            ; A3 BA 0D
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        mov     word ptr [0xdb8], ax            ; A3 B8 0D
        jmp     L_01D7                          ; EB 32
L_01A5:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xdb6], ax            ; 39 06 B6 0D
        jle     L_01B3                          ; 7E 05
        mov     word ptr [0xdb6], ax            ; A3 B6 0D
        jmp     L_01C0                          ; EB 0D
L_01B3:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xdba], ax            ; 39 06 BA 0D
        jg      L_01C0                          ; 7F 04
        inc     ax                              ; 40
        mov     word ptr [0xdba], ax            ; A3 BA 0D
L_01C0:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xdb8], ax            ; 39 06 B8 0D
        jle     L_01CE                          ; 7E 05
        mov     word ptr [0xdb8], ax            ; A3 B8 0D
        jmp     L_01DB                          ; EB 0D
L_01CE:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xdbc], ax            ; 39 06 BC 0D
        jg      L_01DB                          ; 7F 04
L_01D7:
        inc     ax                              ; 40
        mov     word ptr [0xdbc], ax            ; A3 BC 0D
L_01DB:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_01EA                          ; 74 09
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_01F0                          ; E8 06 00
L_01EA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01F0 -- offset 0x01F0 -- 318 instr
; Dispatcher: tabla de decisiones cmp+jcc (318 instr).
; tags: calls_gdi, calls_user, dispatcher
; callers: sub_00CB
; calls (intra): sub_054A, sub_0913
; calls (inter): GDI.BITBLT, GDI.CREATEBITMAP, GDI.DELETEDC, GDI.FLOODFILL, GDI.GETSTOCKOBJECT, GDI.PATBLT (+4 mas)
;----------------------------------------------------------------------
L_01F0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        mov     word ptr [0xbc8], ax            ; A3 C8 0B
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A 87 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_136                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x56a], 0xffff        ; C7 06 6A 05 FF FF
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
        call    far GDI.CREATEBITMAP            ; 9A 51 02 00 00 [FIXUP]
        mov     word ptr [0xc9e], ax            ; A3 9E 0C
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
        cmp     word ptr [0xc9e], 0             ; 83 3E 9E 0C 00
        je      L_0263                          ; 74 04
        or      ax, ax                          ; 0B C0
        jne     L_029C                          ; 75 39
L_0263:
        cmp     word ptr [0xc9e], 0             ; 83 3E 9E 0C 00
        je      L_0273                          ; 74 09
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_19                   ; 9A 7F 02 00 00 [FIXUP]
L_0273:
        cmp     word ptr [0x1170], 0            ; 83 3E 70 11 00
        je      L_0283                          ; 74 09
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
L_0283:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_125                  ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_139                  ; 9A 30 03 00 00 [FIXUP]
        jmp     L_0544                          ; E9 A8 02
L_029C:
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A AD 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A B9 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 5E 06 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A F9 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF 02 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0xbc6]            ; A1 C6 0B
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 0B 03 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 11 03 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 92 03 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 98 03 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far GDI.SETWINDOWORG            ; 9A 3C 03 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_137                  ; 9A 38 01 00 00 [FIXUP]
        call    far _entry_139                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.SETWINDOWORG            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 86 03 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        mov     ax, 0x86                        ; B8 86 00
        mov     dx, 0xee                        ; BA EE 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A CE 03 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 25 01 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 2B 01 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.FLOODFILL               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        mov     ax, 0x226                       ; B8 26 02
        mov     dx, 0xbb                        ; BA BB 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A F0 03 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x326                       ; B8 26 03
        mov     dx, 0x22                        ; BA 22 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 76 04 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        call    L_054A                          ; E8 44 01
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_0411                          ; 7E 03
        jmp     L_04EE                          ; E9 DD 00
L_0411:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_041C                          ; 7E 03
        jmp     L_04EE                          ; E9 D2 00
L_041C:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        inc     ax                              ; 40
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        inc     ax                              ; 40
        mov     word ptr [0xbc8], ax            ; A3 C8 0B
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        dec     ax                              ; 48
        add     word ptr [0xdb6], ax            ; 01 06 B6 0D
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        add     ax, word ptr [0xbc6]            ; 03 06 C6 0B
        mov     word ptr [0xdba], ax            ; A3 BA 0D
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        dec     ax                              ; 48
        add     word ptr [0xdb8], ax            ; 01 06 B8 0D
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        add     ax, word ptr [0xbc8]            ; 03 06 C8 0B
        mov     word ptr [0xdbc], ax            ; A3 BC 0D
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 9E 04 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A C0 04 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A E8 04 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x86                        ; B8 86 00
        mov     dx, 0xee                        ; BA EE 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0506                          ; EB 18
L_04EE:
        mov     word ptr [0xbc6], 0             ; C7 06 C6 0B 00 00
        mov     word ptr [0xbc8], 0             ; C7 06 C8 0B 00 00
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        mov     word ptr [0xdba], ax            ; A3 BA 0D
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        mov     word ptr [0xdbc], ax            ; A3 BC 0D
L_0506:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.DELETEDC                ; 9A 12 05 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.DELETEDC                ; 9A 1A 05 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far GDI.DELETEDC                ; 9A 61 00 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0913                          ; E8 ED 03
        mov     ax, 0xc96                       ; B8 96 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A 40 05 00 00 [FIXUP]
        mov     ax, 0x10e8                      ; B8 E8 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A FF FF 00 00 [FIXUP]
L_0544:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_054A -- offset 0x054A -- 81 instr
; Dispatcher: tabla de decisiones cmp+jcc (81 instr).
; tags: calls_gdi, dispatcher
; callers: sub_01F0
; calls (inter): GDI.SCANLR
;----------------------------------------------------------------------
L_054A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx + 2], 0x7d00       ; C7 47 02 00 7D
        mov     word ptr [bx + 6], 0xffff       ; C7 47 06 FF FF
        mov     word ptr [bx], 0x7d00           ; C7 07 00 7D
        mov     word ptr [bx + 4], 0xffff       ; C7 47 04 FF FF
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        jmp     L_0613                          ; E9 A5 00
L_056E:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.SCANLR                  ; 9A CE 05 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_05BA                          ; 74 33
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx], ax               ; 39 07
        jle     L_0590                          ; 7E 02
        mov     word ptr [bx], ax               ; 89 07
L_0590:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        jge     L_059E                          ; 7D 03
        mov     word ptr [bx + 4], ax           ; 89 47 04
L_059E:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jle     L_05AC                          ; 7E 03
        mov     word ptr [bx + 2], ax           ; 89 47 02
L_05AC:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bx + 6], ax           ; 39 47 06
        jge     L_05BA                          ; 7D 03
        mov     word ptr [bx + 6], ax           ; 89 47 06
L_05BA:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.SCANLR                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_060D                          ; 74 33
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx], ax               ; 39 07
        jle     L_05E3                          ; 7E 02
        mov     word ptr [bx], ax               ; 89 07
L_05E3:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        jge     L_05F1                          ; 7D 03
        mov     word ptr [bx + 4], ax           ; 89 47 04
L_05F1:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jle     L_05FF                          ; 7E 03
        mov     word ptr [bx + 2], ax           ; 89 47 02
L_05FF:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bx + 6], ax           ; 39 47 06
        jge     L_060D                          ; 7D 03
        mov     word ptr [bx + 6], ax           ; 89 47 06
L_060D:
        inc     word ptr [bp - 2]               ; FF 46 FE
        dec     word ptr [bp + 4]               ; FF 4E 04
L_0613:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_061C                          ; 7E 03
        jmp     L_056E                          ; E9 52 FF
L_061C:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0622 -- offset 0x0622 -- 68 instr
; Funcion mediana (68 instr, 4 calls).
; tags: calls_gdi, calls_user, medium
; calls (intra): sub_0979
; calls (inter): GDI.BITBLT, GDI.DELETEDC, USER.GETKEYSTATE
;----------------------------------------------------------------------
L_0622:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0979                          ; E8 4C 03
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A 48 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0643                          ; 7D 09
        mov     word ptr [0x56a], 2             ; C7 06 6A 05 02 00
        jmp     L_06ED                          ; E9 AA 00
L_0643:
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_0653                          ; 7C 03
        jmp     L_06E7                          ; E9 94 00
L_0653:
        mov     word ptr [0x56a], 1             ; C7 06 6A 05 01 00
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 6A 06 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A 22 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A FE 06 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x326                       ; B8 26 03
        mov     dx, 0x22                        ; BA 22 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A C9 06 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x86                        ; B8 86 00
        mov     dx, 0xee                        ; BA EE 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 49 07 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.DELETEDC                ; 9A D9 06 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A E1 06 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A F9 08 00 00 [FIXUP]
        jmp     L_06ED                          ; EB 06
L_06E7:
        mov     word ptr [0x56a], 0             ; C7 06 6A 05 00 00
L_06ED:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06F3 -- offset 0x06F3 -- 191 instr
; Dispatcher: tabla de decisiones cmp+jcc (191 instr).
; tags: calls_gdi, calls_user, dispatcher
; calls (inter): GDI.BITBLT, GDI.DELETEDC, USER.COPYRECT, USER.OFFSETRECT
;----------------------------------------------------------------------
L_06F3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 0A 07 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A 16 07 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 25 09 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0x56a], 2             ; 83 3E 6A 05 02
        jne     L_0727                          ; 75 03
        jmp     L_07DC                          ; E9 B5 00
L_0727:
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 6B 07 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 93 07 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A BB 07 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 00 08 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        jmp     L_0825                          ; EB 49
L_07DC:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x326                       ; B8 26 03
        mov     dx, 0x22                        ; BA 22 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 28 08 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x86                        ; B8 86 00
        mov     dx, 0xee                        ; BA EE 00
L_0825:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A C9 08 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A 31 05 00 00 [FIXUP]
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        sub     ax, word ptr [0x1172]           ; 2B 06 72 11
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        sub     ax, word ptr [0x1174]           ; 2B 06 74 11
        push    ax                              ; 50
        call    far USER.OFFSETRECT             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xdb6], 0             ; 83 3E B6 0D 00
        jge     L_086A                          ; 7D 0E
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xdb6], ax            ; A3 B6 0D
        add     ax, word ptr [0xbc6]            ; 03 06 C6 0B
        mov     word ptr [0xdba], ax            ; A3 BA 0D
        jmp     L_087D                          ; EB 13
L_086A:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [0xdba], ax            ; 39 06 BA 0D
        jle     L_087D                          ; 7E 0A
        mov     word ptr [0xdba], ax            ; A3 BA 0D
        sub     ax, word ptr [0xbc6]            ; 2B 06 C6 0B
        mov     word ptr [0xdb6], ax            ; A3 B6 0D
L_087D:
        cmp     word ptr [0xdb8], 0             ; 83 3E B8 0D 00
        jge     L_0892                          ; 7D 0E
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xdb8], ax            ; A3 B8 0D
        add     ax, word ptr [0xbc8]            ; 03 06 C8 0B
        mov     word ptr [0xdbc], ax            ; A3 BC 0D
        jmp     L_08A5                          ; EB 13
L_0892:
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [0xdbc], ax            ; 39 06 BC 0D
        jle     L_08A5                          ; 7E 0A
        mov     word ptr [0xdbc], ax            ; A3 BC 0D
        sub     ax, word ptr [0xbc8]            ; 2B 06 C8 0B
        mov     word ptr [0xdb8], ax            ; A3 B8 0D
L_08A5:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x326                       ; B8 26 03
        mov     dx, 0x22                        ; BA 22 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A F1 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x86                        ; B8 86 00
        mov     dx, 0xee                        ; BA EE 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 5E 03 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.DELETEDC                ; 9A 01 09 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.DELETEDC                ; 9A 09 09 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far GDI.DELETEDC                ; 9A 0A 05 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0913 -- offset 0x0913 -- 40 instr
; Funcion mediana (40 instr, 4 calls).
; tags: calls_gdi, far, medium
; callers: sub_01F0, sub_0979
; calls (inter): GDI.BITBLT, GDI.DELETEDC, GDI.GETSTOCKOBJECT, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_0913:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A A1 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A C7 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A CD 02 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x1e9                       ; B8 E9 01
        mov     dx, 0x6a                        ; BA 6A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A F4 09 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A 6E 0A 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0979 -- offset 0x0979 -- 169 instr
; Funcion compleja: 169 instrucciones, 4 llamadas, 1 branches.
; tags: calls_gdi, calls_user, complex, far
; callers: sub_0622
; calls (intra): sub_0913
; calls (inter): GDI.BITBLT, GDI.DELETEDC, USER.COPYRECT
;----------------------------------------------------------------------
L_0979:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        cmp     word ptr [0x56c], 0             ; 83 3E 6C 05 00
        jl      L_0990                          ; 7C 03
        jmp     L_0A8A                          ; E9 FA 00
L_0990:
        mov     ax, word ptr [0x56c]            ; A1 6C 05
        neg     ax                              ; F7 D8
        mov     word ptr [0x56c], ax            ; A3 6C 05
        mov     ax, 0x10e8                      ; B8 E8 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A 37 08 00 00 [FIXUP]
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A B8 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_27                   ; 9A C4 09 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A D0 09 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A B2 0A 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xda8]                ; FF 36 A8 0D
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 1C 0A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 3E 0A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 8]               ; FF 76 F8
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 66 0A 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x86                        ; B8 86 00
        mov     dx, 0xee                        ; BA EE 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A E9 0A 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.DELETEDC                ; 9A 76 0A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A 7E 0A 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A 86 0A 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.DELETEDC                ; 9A 13 0B 00 00 [FIXUP]
L_0A8A:
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
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0979                          ; E8 D4 FE
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0913                          ; E8 66 FE
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A BE 0A 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 76 06 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 0B 0B 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 6]               ; FF 76 FA
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A A1 06 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A 1B 0B 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A D1 06 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0913                          ; E8 EC FD
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

PAINT_TEXT ENDS

        END
