; AUTO-GENERATED from original WRITE segment 11
; segment_size=421 bytes, flags=0xf170
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
        push    word ptr [0x13ca]               ; FF 36 CA 13
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x13ca]               ; FF 36 CA 13
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
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
        sub     sp, 0x88                        ; 81 EC 88 00
        cmp     word ptr [bp + 0xc], 0xf        ; 83 7E 0C 0F
        je      L_0041                          ; 74 03
        jmp     L_0121                          ; E9 E0 00
L_0041:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x7b2], 0             ; 83 3E B2 07 00
        jne     L_00C8                          ; 75 73
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A F4 00 00 00 [FIXUP]
        shl     ax, 1                           ; D1 E0
        sub     ax, word ptr [0x1100]           ; 2B 06 00 11
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.CREATEFONTINDIRECT      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7b2], ax            ; A3 B2 07
        or      ax, ax                          ; 0B C0
        jne     L_008B                          ; 75 03
        jmp     L_010F                          ; E9 84 00
L_008B:
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00A9                          ; 75 11
        push    word ptr [0x7b2]                ; FF 36 B2 07
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7b2], 0             ; C7 06 B2 07 00 00
        jmp     L_010F                          ; EB 66
L_00A9:
        push    word ptr [bp - 0x22]            ; FF 76 DE
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x1100]           ; A1 00 11
        sub     ax, word ptr [bp - 0x74]        ; 2B 46 8C
        add     ax, word ptr [bp - 0x6e]        ; 03 46 92
        inc     ax                              ; 40
        sar     ax, 1                           ; D1 F8
        sub     ax, word ptr [bp - 0x6e]        ; 2B 46 92
        mov     word ptr [0x1bf2], ax           ; A3 F2 1B
L_00C8:
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        sub     ax, word ptr [bp - 0x1e]        ; 2B 46 E2
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [0x1bf2]               ; FF 36 F2 1B
        mov     ax, 0x80                        ; B8 80 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
L_010F:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
L_011C:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_019B                          ; EB 7A
L_0121:
        cmp     word ptr [bp + 0xc], 0x204      ; 81 7E 0C 04 02
        jne     L_0187                          ; 75 5F
        cmp     word ptr [0x35c], -2            ; 83 3E 5C 03 FE
        jne     L_0187                          ; 75 58
        test    byte ptr [bp + 0xa], 8          ; F6 46 0A 08
        je      L_0187                          ; 74 52
        mov     ax, 0x35e                       ; B8 5E 03
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        mov     word ptr [bp - 0x86], ds        ; 8C 9E 7A FF
        mov     word ptr [bp - OFFSET USER.GETCLIENTRECT], 0xffff ; C7 86 7C FF FF FF [FIXUP]
        mov     word ptr [bp - OFFSET USER.GETCLIENTRECT], 0xffff ; C7 86 7E FF FF FF [FIXUP]
        mov     word ptr [bp - OFFSET USER.DRAWTEXT], 0xffff ; C7 46 80 FF FF [FIXUP]
        mov     word ptr [bp - OFFSET USER.DRAWTEXT], 0xffff ; C7 46 82 FF FF [FIXUP]
        mov     word ptr [bp - OFFSET GDI.MOVETO], 0xffff ; C7 46 84 FF FF [FIXUP]
        mov     word ptr [bp - OFFSET GDI.MOVETO], 0xffff ; C7 46 86 FF FF [FIXUP]
        mov     word ptr [bp - OFFSET GDI.LINETO], 0xffff ; C7 46 88 FF FF [FIXUP]
        mov     word ptr [bp - OFFSET GDI.LINETO], 0xffff ; C7 46 8A FF FF [FIXUP]
        push    word ptr [0x10aa]               ; FF 36 AA 10
        push    word ptr [0x10b0]               ; FF 36 B0 10
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ax                              ; 50
        mov     ax, 0x559                       ; B8 59 05
        push    ax                              ; 50
        lcall   [bp - 0x88]                     ; FF 9E 78 FF
        mov     word ptr [0x35c], 0             ; C7 06 5C 03 00 00
        jmp     L_011C                          ; EB 95
L_0187:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
L_019B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A

WRITE_TEXT ENDS

        END
