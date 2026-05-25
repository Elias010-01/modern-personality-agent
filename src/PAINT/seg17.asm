; AUTO-GENERATED from original PAINT segment 17
; segment_size=594 bytes, flags=0xf130
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
; sub_004F -- offset 0x004F -- 18 instr
; Funcion sin clasificar definitiva (18 instr).
; tags: calls_gdi, small
; calls (inter): GDI.GETSTOCKOBJECT, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_004F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 6F 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 75 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0082                          ; 75 03
        jmp     L_0198                          ; E9 16 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0082 -- offset 0x0082 -- 99 instr
; Dispatcher: tabla de decisiones cmp+jcc (99 instr).
; tags: calls_gdi, calls_user, dispatcher
; calls (inter): GDI.GETBKMODE, GDI.SETBKMODE, GDI.SETROP2, USER.GETKEYSTATE
;----------------------------------------------------------------------
L_0082:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A E6 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [0x1172]           ; A1 72 11
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jge     L_009F                          ; 7D 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_00A2                          ; EB 03
L_009F:
        mov     ax, word ptr [0x1172]           ; A1 72 11
L_00A2:
        push    ax                              ; 50
        mov     ax, word ptr [0x1174]           ; A1 74 11
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jge     L_00B1                          ; 7D 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_00B4                          ; EB 03
L_00B1:
        mov     ax, word ptr [0x1174]           ; A1 74 11
L_00B4:
        push    ax                              ; 50
        mov     ax, word ptr [0x1172]           ; A1 72 11
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jle     L_00C3                          ; 7E 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_00C6                          ; EB 03
L_00C3:
        mov     ax, word ptr [0x1172]           ; A1 72 11
L_00C6:
        push    ax                              ; 50
        mov     ax, word ptr [0x1174]           ; A1 74 11
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jle     L_00D5                          ; 7E 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_00D8                          ; EB 03
L_00D5:
        mov     ax, word ptr [0x1174]           ; A1 74 11
L_00D8:
        push    ax                              ; 50
        call    far GDI.RECTANGLE               ; 9A 70 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A A9 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_134                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0124                          ; 74 2C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_131                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far GDI.GETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0124                          ; 7D 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A 89 01 00 00 [FIXUP]
L_0124:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jge     L_0135                          ; 7D 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_0138                          ; EB 03
L_0135:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
L_0138:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jge     L_0147                          ; 7D 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_014A                          ; EB 03
L_0147:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
L_014A:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jle     L_0159                          ; 7E 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_015C                          ; EB 03
L_0159:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
L_015C:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jle     L_016B                          ; 7E 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_016E                          ; EB 03
L_016B:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
L_016E:
        push    ax                              ; 50
        call    far GDI.RECTANGLE               ; 9A F9 01 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_018D                          ; 74 13
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_130                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
L_018D:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_133                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_024D                          ; E9 B5 00
L_0198:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_01A1                          ; 74 03
        jmp     L_024D                          ; E9 AC 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01A1 -- offset 0x01A1 -- 68 instr
; Dispatcher: tabla de decisiones cmp+jcc (68 instr).
; tags: calls_gdi, dispatcher
; calls (inter): GDI.SETROP2
;----------------------------------------------------------------------
L_01A1:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [0x1172]           ; A1 72 11
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jge     L_01BE                          ; 7D 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_01C1                          ; EB 03
L_01BE:
        mov     ax, word ptr [0x1172]           ; A1 72 11
L_01C1:
        push    ax                              ; 50
        mov     ax, word ptr [0x1174]           ; A1 74 11
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jge     L_01D0                          ; 7D 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_01D3                          ; EB 03
L_01D0:
        mov     ax, word ptr [0x1174]           ; A1 74 11
L_01D3:
        push    ax                              ; 50
        mov     ax, word ptr [0x1172]           ; A1 72 11
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jle     L_01E2                          ; 7E 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_01E5                          ; EB 03
L_01E2:
        mov     ax, word ptr [0x1172]           ; A1 72 11
L_01E5:
        push    ax                              ; 50
        mov     ax, word ptr [0x1174]           ; A1 74 11
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jle     L_01F4                          ; 7E 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_01F7                          ; EB 03
L_01F4:
        mov     ax, word ptr [0x1174]           ; A1 74 11
L_01F7:
        push    ax                              ; 50
        call    far GDI.RECTANGLE               ; 9A 49 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jge     L_020E                          ; 7D 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_0211                          ; EB 03
L_020E:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
L_0211:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jge     L_0220                          ; 7D 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_0223                          ; EB 03
L_0220:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
L_0223:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jle     L_0232                          ; 7E 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_0235                          ; EB 03
L_0232:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
L_0235:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jle     L_0244                          ; 7E 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_0247                          ; EB 03
L_0244:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
L_0247:
        push    ax                              ; 50
        call    far GDI.RECTANGLE               ; 9A FF FF 00 00 [FIXUP]
L_024D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      00ah                            ; 0A

PAINT_TEXT ENDS

        END
