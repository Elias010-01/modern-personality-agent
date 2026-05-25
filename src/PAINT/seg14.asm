; AUTO-GENERATED from original PAINT segment 14
; segment_size=287 bytes, flags=0xf130
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
        sub     sp, 0xe                         ; 83 EC 0E
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0x1172], ax           ; 39 06 72 11
        jge     L_0021                          ; 7D 0B
        mov     ax, word ptr [0x1172]           ; A1 72 11
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        jmp     L_002A                          ; EB 09
L_0021:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x1172]           ; A1 72 11
L_002A:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sub     word ptr [bp - 0xc], 8          ; 83 6E F4 08
        add     word ptr [bp - 4], 8            ; 83 46 FC 08
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jge     L_0040                          ; 7D 05
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
L_0040:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jle     L_004B                          ; 7E 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_004B:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0x1174], ax           ; 39 06 74 11
        jge     L_005F                          ; 7D 0B
        mov     ax, word ptr [0x1174]           ; A1 74 11
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        jmp     L_0068                          ; EB 09
L_005F:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x1174]           ; A1 74 11
L_0068:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        sub     word ptr [bp - 6], 8            ; 83 6E FA 08
        add     word ptr [bp - 8], 8            ; 83 46 F8 08
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jge     L_007E                          ; 7D 05
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_007E:
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_0089                          ; 7E 03
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_0089:
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        call    far _entry_131                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_00C0                          ; 7D 0C
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
L_00C0:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0x1172]               ; FF 36 72 11
        push    word ptr [0x1174]               ; FF 36 74 11
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far _entry_68                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_130                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

PAINT_TEXT ENDS

        END
