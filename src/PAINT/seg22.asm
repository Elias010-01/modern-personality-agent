; AUTO-GENERATED from original PAINT segment 22
; segment_size=555 bytes, flags=0xf130
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
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        sub     ax, word ptr [0xc8a]            ; 2B 06 8A 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        sub     ax, word ptr [0xc8c]            ; 2B 06 8C 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jle     L_0047                          ; 7E 1F
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xda8]            ; 03 06 A8 0D
        add     ax, word ptr [0xc84]            ; 03 06 84 0C
        cmp     ax, word ptr [0xbfe]            ; 3B 06 FE 0B
        jle     L_0047                          ; 7E 0E
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        sub     ax, word ptr [0xc84]            ; 2B 06 84 0C
        sub     ax, word ptr [0xda8]            ; 2B 06 A8 0D
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0047:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xc84]            ; 03 06 84 0C
        or      ax, ax                          ; 0B C0
        jge     L_005A                          ; 7D 08
        mov     ax, word ptr [0xc84]            ; A1 84 0C
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_005A:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jle     L_007F                          ; 7E 1F
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xdb4]            ; 03 06 B4 0D
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        cmp     ax, word ptr [0xc76]            ; 3B 06 76 0C
        jle     L_007F                          ; 7E 0E
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        sub     ax, word ptr [0xc8e]            ; 2B 06 8E 0C
        sub     ax, word ptr [0xdb4]            ; 2B 06 B4 0D
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_007F:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        or      ax, ax                          ; 0B C0
        jge     L_0092                          ; 7D 08
        mov     ax, word ptr [0xc8e]            ; A1 8E 0C
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_0092:
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_00D4                          ; 74 30
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_70                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xda8]                ; FF 36 A8 0D
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 5C 01 00 00 [FIXUP]
        jmp     L_020D                          ; E9 39 01
L_00D4:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_00DD                          ; 74 03
        jmp     L_020D                          ; E9 30 01
L_00DD:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jle     L_00F6                          ; 7E 13
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        jmp     L_010A                          ; EB 14
L_00F6:
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xda8]            ; 03 06 A8 0D
L_010A:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jle     L_0126                          ; 7E 13
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        jmp     L_013A                          ; EB 14
L_0126:
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xdb4]            ; 03 06 B4 0D
L_013A:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jle     L_017F                          ; 7E 08
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        jmp     L_0181                          ; EB 02
L_017F:
        sub     ax, ax                          ; 2B C0
L_0181:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0xda8]                ; FF 36 A8 0D
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_01A2                          ; 7C 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_01A4                          ; EB 02
L_01A2:
        mov     ax, si                          ; 8B C6
L_01A4:
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 09 02 00 00 [FIXUP]
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jle     L_01C0                          ; 7E 08
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        jmp     L_01C2                          ; EB 02
L_01C0:
        sub     ax, ax                          ; 2B C0
L_01C2:
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jle     L_01CF                          ; 7E 04
        sub     ax, ax                          ; 2B C0
        jmp     L_01D1                          ; EB 02
L_01CF:
        mov     ax, si                          ; 8B C6
L_01D1:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    ax                              ; 50
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_01E6                          ; 7C 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_01EB                          ; EB 05
L_01E6:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
L_01EB:
        push    ax                              ; 50
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jl      L_01F7                          ; 7C 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_01F9                          ; EB 02
L_01F7:
        mov     ax, si                          ; 8B C6
L_01F9:
        mov     cx, word ptr [0xdb4]            ; 8B 0E B4 0D
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
L_020D:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0220                          ; 74 05
        call    far _entry_74                   ; 9A FF FF 00 00 [FIXUP]
L_0220:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

PAINT_TEXT ENDS

        END
