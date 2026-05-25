; AUTO-GENERATED from original PAINT segment 20
; segment_size=288 bytes, flags=0xf130
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
        sub     sp, 8                           ; 83 EC 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A B7 00 00 00 [FIXUP]
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0071                          ; 74 52
        cmp     word ptr [0x582], 0             ; 83 3E 82 05 00
        jg      L_0036                          ; 7F 10
        call    far _entry_74                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        jmp     L_0111                          ; E9 DB 00
L_0036:
        mov     ax, word ptr [0x582]            ; A1 82 05
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x1124]           ; 03 06 24 11
        mov     dx, word ptr [0x1126]           ; 8B 16 26 11
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        les     bx, ptr [bp - 8]                ; C4 5E F8
        push    word ptr es:[bx - 4]            ; 26 FF 77 FC
        push    word ptr es:[bx - 2]            ; 26 FF 77 FE
        call    far GDI.MOVETO                  ; 9A 95 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far GDI.LINETO                  ; 9A A5 00 00 00 [FIXUP]
        jmp     L_0116                          ; E9 A5 00
L_0071:
        mov     ax, word ptr [0x582]            ; A1 82 05
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x1124]           ; 03 06 24 11
        mov     dx, word ptr [0x1126]           ; 8B 16 26 11
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        les     bx, ptr [bp - 8]                ; C4 5E F8
        push    word ptr es:[bx - 4]            ; 26 FF 77 FC
        push    word ptr es:[bx - 2]            ; 26 FF 77 FE
        call    far GDI.MOVETO                  ; 9A E7 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x1172]               ; FF 36 72 11
        push    word ptr [0x1174]               ; FF 36 74 11
        call    far GDI.LINETO                  ; 9A F7 00 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_00C3                          ; 74 14
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_134                  ; 9A FF FF 00 00 [FIXUP]
L_00C3:
        mov     ax, word ptr [0x582]            ; A1 82 05
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x1124]           ; 03 06 24 11
        mov     dx, word ptr [0x1126]           ; 8B 16 26 11
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        les     bx, ptr [bp - 8]                ; C4 5E F8
        push    word ptr es:[bx - 4]            ; 26 FF 77 FC
        push    word ptr es:[bx - 2]            ; 26 FF 77 FE
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0116                          ; 74 15
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_133                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
L_0111:
        call    far _entry_132                  ; 9A FF FF 00 00 [FIXUP]
L_0116:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

PAINT_TEXT ENDS

        END
