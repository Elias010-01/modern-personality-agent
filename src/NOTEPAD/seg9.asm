; AUTO-GENERATED from original NOTEPAD segment 9
; segment_size=396 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

NOTEPAD_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x92                        ; 81 EC 92 00
        mov     ax, 0x140                       ; B8 40 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x139                       ; B8 39 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x138                       ; B8 38 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0036                          ; 75 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0183                          ; E9 4D 01
L_0036:
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], ss         ; 8C 56 F6
        jmp     L_005A                          ; EB 18
L_0042:
        cmp     byte ptr [bp - 0x92], 0x2c      ; 80 BE 6E FF 2C
        je      L_0068                          ; 74 1F
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.ANSINEXT             ; 9A 88 00 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
L_005A:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x92], al        ; 88 86 6E FF
        or      al, al                          ; 0A C0
        jne     L_0042                          ; 75 DA
L_0068:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0092                          ; 74 21
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_0092                          ; EB 18
L_007A:
        cmp     byte ptr [bp - 0x92], 0x20      ; 80 BE 6E FF 20
        jg      L_00A0                          ; 7F 1F
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.ANSINEXT             ; 9A C3 00 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
L_0092:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x92], al        ; 88 86 6E FF
        or      al, al                          ; 0A C0
        jne     L_007A                          ; 75 DA
L_00A0:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_00CD                          ; EB 1F
L_00AE:
        cmp     byte ptr [bp - 0x92], 0x2c      ; 80 BE 6E FF 2C
        je      L_00DB                          ; 74 26
        cmp     byte ptr [bp - 0x92], 0x20      ; 80 BE 6E FF 20
        jle     L_00DB                          ; 7E 1F
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.ANSINEXT             ; 9A 02 01 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
L_00CD:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x92], al        ; 88 86 6E FF
        or      al, al                          ; 0A C0
        jne     L_00AE                          ; 75 D3
L_00DB:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_010C                          ; 74 28
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_010C                          ; EB 1F
L_00ED:
        cmp     byte ptr [bp - 0x92], 0x20      ; 80 BE 6E FF 20
        jle     L_00FB                          ; 7E 07
        cmp     byte ptr [bp - 0x92], 0x2c      ; 80 BE 6E FF 2C
        jne     L_011A                          ; 75 1F
L_00FB:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.ANSINEXT             ; 9A 38 01 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
L_010C:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x92], al        ; 88 86 6E FF
        or      al, al                          ; 0A C0
        jne     L_00ED                          ; 75 D3
L_011A:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [bp - 0x90], ax        ; 89 86 70 FF
        mov     word ptr [bp - 0x8e], dx        ; 89 96 72 FF
        jmp     L_0142                          ; EB 18
L_012A:
        cmp     byte ptr [bp - 0x92], 0x20      ; 80 BE 6E FF 20
        jle     L_0150                          ; 7E 1F
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.ANSINEXT             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
L_0142:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x92], al        ; 88 86 6E FF
        or      al, al                          ; 0A C0
        jne     L_012A                          ; 75 DA
L_0150:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        push    word ptr [bp - 0x90]            ; FF B6 70 FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jne     L_0180                          ; 75 05
        mov     ax, 0xfffe                      ; B8 FE FF
        jmp     L_0183                          ; EB 03
L_0180:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_0183:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

NOTEPAD_TEXT ENDS

        END
