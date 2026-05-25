; AUTO-GENERATED from original PAINT segment 30
; segment_size=317 bytes, flags=0xf130
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
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_003C                          ; 74 27
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0030                          ; 7D 0E
        mov     word ptr [0xbec], 0x3a9         ; C7 06 EC 0B A9 03
        mov     word ptr [0xbee], 0xa8          ; C7 06 EE 0B A8 00
        jmp     L_003C                          ; EB 0C
L_0030:
        mov     word ptr [0xbec], 0x74a         ; C7 06 EC 0B 4A 07
        mov     word ptr [0xbee], 0xb8          ; C7 06 EE 0B B8 00
L_003C:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        sub     ax, word ptr [0x1172]           ; 2B 06 72 11
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_004F                          ; 7D 05
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_004F:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        sub     ax, word ptr [0x1174]           ; 2B 06 74 11
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jge     L_0062                          ; 7D 05
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0062:
        inc     word ptr [0x896]                ; FF 06 96 08
        cmp     word ptr [0x896], 2             ; 83 3E 96 08 02
        jg      L_007F                          ; 7F 12
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_007F                          ; 75 0C
        cmp     word ptr [bp - 4], 2            ; 83 7E FC 02
        jg      L_007F                          ; 7F 06
        cmp     word ptr [bp - 6], 2            ; 83 7E FA 02
        jle     L_0085                          ; 7E 06
L_007F:
        mov     word ptr [0x896], 0             ; C7 06 96 08 00 00
L_0085:
        cmp     word ptr [0x896], 0             ; 83 3E 96 08 00
        je      L_008F                          ; 74 03
        jmp     L_0131                          ; E9 A2 00
L_008F:
        push    word ptr [0xe04]                ; FF 36 04 0E
        call    far _entry_27                   ; 9A A0 00 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        call    far _entry_131                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     cx, word ptr [0x1122]           ; 8B 0E 22 11
        sar     cx, 1                           ; D1 F9
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        mov     cx, word ptr [0x1168]           ; 8B 0E 68 11
        sar     cx, 1                           ; D1 F9
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        push    word ptr [0x1122]               ; FF 36 22 11
        push    word ptr [0x1168]               ; FF 36 68 11
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbee]                ; FF 36 EE 0B
        push    word ptr [0xbec]                ; FF 36 EC 0B
        call    far GDI.BITBLT                  ; 9A 1D 01 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_130                  ; 9A FF FF 00 00 [FIXUP]
        mov     si, word ptr [0xc8c]            ; 8B 36 8C 0C
        mov     ax, word ptr [0x1168]           ; A1 68 11
        sar     ax, 1                           ; D1 F8
        sub     si, ax                          ; 2B F0
        mov     di, word ptr [0xc8a]            ; 8B 3E 8A 0C
        mov     ax, word ptr [0x1122]           ; A1 22 11
        sar     ax, 1                           ; D1 F8
        sub     di, ax                          ; 2B F8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [0x1122]               ; FF 36 22 11
        push    word ptr [0x1168]               ; FF 36 68 11
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.DELETEDC                ; 9A 2D 01 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
L_0131:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

PAINT_TEXT ENDS

        END
