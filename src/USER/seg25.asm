; AUTO-GENERATED from original USER segment 25
; segment_size=591 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x34                        ; 83 EC 34
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_002D                          ; 74 13
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0022                          ; 75 03
        jmp     L_017F                          ; E9 5D 01
L_0022:
        cmp     ax, 0x113                       ; 3D 13 01
        jne     L_002A                          ; 75 03
        jmp     L_0125                          ; E9 FB 00
L_002A:
        jmp     L_0202                          ; E9 D5 01
L_002D:
        push    word ptr [0x3a0]                ; FF 36 A0 03
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_004B                          ; 75 03
        jmp     L_011F                          ; E9 D4 00
L_004B:
        push    word ptr [0x3a0]                ; FF 36 A0 03
        push    di                              ; 57
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_005E                          ; 75 03
        jmp     L_011F                          ; E9 C1 00
L_005E:
        push    di                              ; 57
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        add     ax, 0x20                        ; 05 20 00
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        or      ax, dx                          ; 0B C2
        jne     L_0074                          ; 75 03
        jmp     L_011F                          ; E9 AB 00
L_0074:
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        mov     byte ptr [bp - 0x2a], 0x4d      ; C6 46 D6 4D
L_0081:
        les     bx, ptr [bp - 0x24]             ; C4 5E DC
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        xor     byte ptr es:[bx], al            ; 26 30 07
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        xor     byte ptr [bp - 0x2a], al        ; 30 46 D6
        inc     word ptr [bp - 0x24]            ; FF 46 DC
        cmp     al, 0x1a                        ; 3C 1A
        jne     L_0081                          ; 75 EA
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far _entry_92                   ; 9A C2 00 00 00 [FIXUP]
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far KERNEL.LSTRLEN              ; 9A F0 00 00 00 [FIXUP]
        inc     ax                              ; 40
        add     word ptr [bp - 0x32], ax        ; 01 46 CE
        push    si                              ; 56
        mov     ax, 0x65                        ; B8 65 00
        push    ax                              ; 50
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far _entry_92                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00E9                          ; EB 21
L_00C8:
        inc     byte ptr [0x20c]                ; FE 06 0C 02
        push    si                              ; 56
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        call    far _entry_91                   ; 9A 2B 01 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far _SEG1_253F                  ; 9A 4E 01 00 00 [FIXUP]
L_00E9:
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        add     word ptr [bp - 0x32], ax        ; 01 46 CE
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        cmp     byte ptr es:[bx], 0x1a          ; 26 80 3F 1A
        jne     L_00C8                          ; 75 C7
        push    di                              ; 57
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_5523                  ; 9A FF FF 00 00 [FIXUP]
L_011F:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0204                          ; E9 DF 00
L_0125:
        push    si                              ; 56
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        call    far _entry_91                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [0x62]             ; A1 62 00
        cmp     word ptr [bp - 0x28], ax        ; 39 46 D8
        je      L_011F                          ; 74 E5
        push    word ptr [bp - 0x28]            ; FF 76 D8
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        mov     al, byte ptr [0x20c]            ; A0 0C 02
        sub     ah, ah                          ; 2A E4
        dec     ax                              ; 48
        push    ax                              ; 50
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A 65 01 00 00 [FIXUP]
        push    word ptr [bp - 0x28]            ; FF 76 D8
        mov     ax, 0x403                       ; B8 03 04
        push    ax                              ; 50
        mov     al, byte ptr [0x20c]            ; A0 0C 02
        sub     ah, ah                          ; 2A E4
        dec     ax                              ; 48
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A 79 01 00 00 [FIXUP]
        push    word ptr [bp - 0x28]            ; FF 76 D8
        mov     ax, 0x402                       ; B8 02 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_011F                          ; EB A0
L_017F:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        jb      L_011F                          ; 72 98
        cmp     ax, 2                           ; 3D 02 00
        jbe     L_0193                          ; 76 07
        cmp     ax, 0x64                        ; 3D 64 00
        je      L_01AA                          ; 74 19
        jmp     L_011F                          ; EB 8C
L_0193:
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_55B2                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_88                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_011F                          ; E9 75 FF
L_01AA:
        cmp     word ptr [bp + 8], 2            ; 83 7E 08 02
        je      L_01B3                          ; 74 03
        jmp     L_011F                          ; E9 6C FF
L_01B3:
        push    word ptr [0x3a0]                ; FF 36 A0 03
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_175                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.CREATEPATTERNBRUSH      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        push    si                              ; 56
        call    far _SEG1_37F9                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        push    ax                              ; 50
        push    word ptr [bp - 0x34]            ; FF 76 CC
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.FLOODFILL               ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        call    far _SEG1_381A                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x34]            ; FF 76 CC
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_011F                          ; E9 1D FF
L_0202:
        sub     ax, ax                          ; 2B C0
L_0204:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     byte ptr [0x20c], 0             ; 80 3E 0C 02 00
        jne     L_0246                          ; 75 24
        push    word ptr [0x3a0]                ; FF 36 A0 03
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, OFFSET _entry_486           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_486           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_87                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [0x20c], 0             ; C6 06 0C 02 00
        mov     byte ptr [0x20d], 0             ; C6 06 0D 02 00
L_0246:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

USER_TEXT ENDS

        END
