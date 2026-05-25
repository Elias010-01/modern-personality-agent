; AUTO-GENERATED from original PAINT segment 23
; segment_size=258 bytes, flags=0xf130
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
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A 8C 00 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0055                          ; 74 36
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_134                  ; 9A 94 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x1172]               ; FF 36 72 11
        push    word ptr [0x1174]               ; FF 36 74 11
        call    far GDI.MOVETO                  ; 9A A4 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far GDI.LINETO                  ; 9A B4 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        jmp     L_00EB                          ; E9 96 00
L_0055:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_005E                          ; 74 03
        jmp     L_00F8                          ; E9 9A 00
L_005E:
        mov     ax, word ptr [0x1172]           ; A1 72 11
        cmp     word ptr [0xc8a], ax            ; 39 06 8A 0C
        jne     L_0073                          ; 75 0C
        mov     ax, word ptr [0x1174]           ; A1 74 11
        cmp     word ptr [0xc8c], ax            ; 39 06 8C 0C
        jne     L_0073                          ; 75 03
        jmp     L_00F8                          ; E9 85 00
L_0073:
        cmp     word ptr [0x554], 0             ; 83 3E 54 05 00
        je      L_00C8                          ; 74 4E
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_134                  ; 9A CC 00 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x1172]               ; FF 36 72 11
        push    word ptr [0x1174]               ; FF 36 74 11
        call    far GDI.MOVETO                  ; 9A DC 00 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far GDI.LINETO                  ; 9A EC 00 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_133                  ; 9A F4 00 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
L_00C8:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_134                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x1172]               ; FF 36 72 11
        push    word ptr [0x1174]               ; FF 36 74 11
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
L_00EB:
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_133                  ; 9A FF FF 00 00 [FIXUP]
L_00F8:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

PAINT_TEXT ENDS

        END
