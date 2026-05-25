; AUTO-GENERATED from original WRITE segment 74
; segment_size=1001 bytes, flags=0xf130
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
        sub     sp, 0x156                       ; 81 EC 56 01
        push    si                              ; 56
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x33e]                ; F7 2E 3E 03
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0x2a], 0         ; C7 46 D6 00 00
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    word ptr [0x32c]                ; FF 36 2C 03
        push    word ptr [0x32a]                ; FF 36 2A 03
        push    dx                              ; 52
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0x33e]                ; FF 36 3E 03
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        call    far _entry_221                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x344]            ; A1 44 03
        sub     ax, word ptr [0x340]            ; 2B 06 40 03
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [0x34c]            ; A1 4C 03
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        cmp     ax, 7                           ; 3D 07 00
        jl      L_0087                          ; 7C 0A
        cmp     ax, 8                           ; 3D 08 00
        jle     L_00E3                          ; 7E 61
        cmp     ax, 0x63                        ; 3D 63 00
        je      L_00D7                          ; 74 50
L_0087:
        push    word ptr [bp - 0x52]            ; FF 76 AE
        push    word ptr [bp - 0x50]            ; FF 76 B0
        push    word ptr [0x10ee]               ; FF 36 EE 10
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A BA 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_369                  ; 9A C0 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        push    word ptr [bp - 0x52]            ; FF 76 AE
        push    word ptr [bp - 0x4e]            ; FF 76 B2
        push    word ptr [0x10fe]               ; FF 36 FE 10
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_369                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        cmp     word ptr [bp - 0x26], 0         ; 83 7E DA 00
        jne     L_00D0                          ; 75 03
        jmp     L_037D                          ; E9 AD 02
L_00D0:
        or      ax, ax                          ; 0B C0
        jne     L_00FC                          ; 75 28
        jmp     L_037D                          ; E9 A6 02
L_00D7:
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
L_00E3:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_0118                          ; 75 1F
        jmp     L_037D                          ; E9 81 02
L_00FC:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0x26], ax        ; 39 46 DA
        jne     L_010C                          ; 75 08
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     word ptr [bp - 0x28], ax        ; 39 46 D8
        je      L_0111                          ; 74 05
L_010C:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0113                          ; EB 02
L_0111:
        sub     ax, ax                          ; 2B C0
L_0113:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_00E3                          ; EB CB
L_0118:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        sub     dx, dx                          ; 2B D2
        add     ax, word ptr [0x32a]            ; 03 06 2A 03
        adc     dx, word ptr [0x32c]            ; 13 16 2C 03
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
L_0133:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        cmp     word ptr [bp - 0x30], dx        ; 39 56 D0
        jae     L_0141                          ; 73 03
        jmp     L_01D6                          ; E9 95 00
L_0141:
        ja      L_014B                          ; 77 08
        cmp     word ptr [bp - 0x32], ax        ; 39 46 CE
        ja      L_014B                          ; 77 03
        jmp     L_01D6                          ; E9 8B 00
L_014B:
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ax                              ; 50
        lea     ax, [bp - 0x152]                ; 8D 86 AE FE
        push    ax                              ; 50
        push    word ptr [0x33e]                ; FF 36 3E 03
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        mov     dx, word ptr [bp - 0x30]        ; 8B 56 D0
        sub     ax, word ptr [bp - 0x1a]        ; 2B 46 E6
        sbb     dx, word ptr [bp - 0x18]        ; 1B 56 E8
        or      dx, dx                          ; 0B D2
        ja      L_0183                          ; 77 0F
        jb      L_017B                          ; 72 05
        cmp     ax, 0x100                       ; 3D 00 01
        jae     L_0183                          ; 73 08
L_017B:
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        sub     ax, word ptr [bp - 0x1a]        ; 2B 46 E6
        jmp     L_0186                          ; EB 03
L_0183:
        mov     ax, 0x100                       ; B8 00 01
L_0186:
        push    ax                              ; 50
        call    far _entry_301                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALLOCK           ; 9A 10 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x156], ax       ; 89 86 AA FE
        mov     word ptr [bp - 0x154], dx       ; 89 96 AC FE
        or      ax, dx                          ; 0B C2
        jne     L_01A3                          ; 75 03
        jmp     L_037D                          ; E9 DA 01
L_01A3:
        lea     ax, [bp - 0x152]                ; 8D 86 AE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     ax, word ptr [bp - 0x156]       ; 03 86 AA FE
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    far _entry_56                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALUNLOCK         ; 9A 41 02 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cdq                                     ; 99
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        adc     word ptr [bp - 0x18], dx        ; 11 56 E8
        cdq                                     ; 99
        add     word ptr [bp - 0x12], ax        ; 01 46 EE
        adc     word ptr [bp - 0x10], dx        ; 11 56 F0
        jmp     L_0133                          ; E9 5D FF
L_01D6:
        push    word ptr [0x79e]                ; FF 36 9E 07
        call    far GDI.SAVEDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        cmp     word ptr [bp - 0x52], 0x63      ; 83 7E AE 63
        jne     L_01ED                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_01EF                          ; EB 02
L_01ED:
        sub     ax, ax                          ; 2B C0
L_01EF:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        jne     L_01F9                          ; 75 03
        jmp     L_0284                          ; E9 8B 00
L_01F9:
        push    word ptr [0x79e]                ; FF 36 9E 07
        call    far GDI.CREATECOMPATIBLEDC      ; 9A 92 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        or      ax, ax                          ; 0B C0
        jne     L_020C                          ; 75 03
        jmp     L_037D                          ; E9 71 01
L_020C:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [bp - 0x36], dx        ; 89 56 CA
        or      ax, dx                          ; 0B C2
        jne     L_0221                          ; 75 03
        jmp     L_037D                          ; E9 5C 01
L_0221:
        lea     ax, [bp - 0x42]                 ; 8D 46 BE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.CREATEBITMAPINDIRECT    ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        or      ax, ax                          ; 0B C0
        jne     L_0235                          ; 75 03
        jmp     L_037D                          ; E9 48 01
L_0235:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALUNLOCK         ; 9A C3 03 00 00 [FIXUP]
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far GDI.SELECTOBJECT            ; 9A BE 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0257                          ; 75 03
        jmp     L_037D                          ; E9 26 01
L_0257:
        push    word ptr [0x79e]                ; FF 36 9E 07
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    word ptr [bp - 0x28]            ; FF 76 D8
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.STRETCHBLT              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_037A                          ; E9 F6 00
L_0284:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_028D                          ; 75 03
        jmp     L_031A                          ; E9 8D 00
L_028D:
        push    word ptr [0x79e]                ; FF 36 9E 07
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        or      ax, ax                          ; 0B C0
        jne     L_02A0                          ; 75 03
        jmp     L_037D                          ; E9 DD 00
L_02A0:
        push    word ptr [0x79e]                ; FF 36 9E 07
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    word ptr [bp - 0x28]            ; FF 76 D8
        call    far GDI.CREATECOMPATIBLEBITMAP  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        or      ax, ax                          ; 0B C0
        jne     L_02B9                          ; 75 03
        jmp     L_037D                          ; E9 C4 00
L_02B9:
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02C9                          ; 75 03
        jmp     L_037D                          ; E9 B4 00
L_02C9:
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    word ptr [bp - 0x28]            ; FF 76 D8
        mov     ax, 0x62                        ; B8 62 00
        mov     dx, 0xff                        ; BA FF 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02EA                          ; 75 03
        jmp     L_037D                          ; E9 93 00
L_02EA:
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [bp - 0x52]            ; FF 76 AE
        call    far GDI.SETMAPMODE              ; 9A 13 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02FC                          ; 75 03
        jmp     L_037D                          ; E9 81 00
L_02FC:
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.PLAYMETAFILE            ; 9A 76 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_037D                          ; 74 72
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETMAPMODE              ; 9A 22 03 00 00 [FIXUP]
        jmp     L_0257                          ; E9 3D FF
L_031A:
        push    word ptr [0x79e]                ; FF 36 9E 07
        push    word ptr [bp - 0x52]            ; FF 76 AE
        call    far GDI.SETMAPMODE              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x79e]                ; FF 36 9E 07
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.SETVIEWPORTORG          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        cmp     ax, 7                           ; 3D 07 00
        je      L_0344                          ; 74 07
        cmp     ax, 8                           ; 3D 08 00
        je      L_035F                          ; 74 1D
        jmp     L_036E                          ; EB 2A
L_0344:
        cmp     word ptr [bp - 0x50], 0         ; 83 7E B0 00
        je      L_035F                          ; 74 15
        cmp     word ptr [bp - 0x4e], 0         ; 83 7E B2 00
        je      L_035F                          ; 74 0F
        push    word ptr [0x79e]                ; FF 36 9E 07
        push    word ptr [bp - 0x50]            ; FF 76 B0
        push    word ptr [bp - 0x4e]            ; FF 76 B2
        call    far GDI.SETWINDOWEXT            ; 9A FF FF 00 00 [FIXUP]
L_035F:
        push    word ptr [0x79e]                ; FF 36 9E 07
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far GDI.SETVIEWPORTEXT          ; 9A FF FF 00 00 [FIXUP]
L_036E:
        push    word ptr [0x79e]                ; FF 36 9E 07
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.PLAYMETAFILE            ; 9A FF FF 00 00 [FIXUP]
L_037A:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_037D:
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        jle     L_038F                          ; 7E 0C
        push    word ptr [0x79e]                ; FF 36 9E 07
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far GDI.RESTOREDC               ; 9A FF FF 00 00 [FIXUP]
L_038F:
        cmp     word ptr [bp - 0x2a], 0         ; 83 7E D6 00
        je      L_039D                          ; 74 08
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
L_039D:
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_03AB                          ; 74 08
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
L_03AB:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_03CF                          ; 74 1E
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_03C7                          ; 74 10
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        or      ax, word ptr [bp - 0x36]        ; 0B 46 CA
        je      L_03C7                          ; 74 08
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
L_03C7:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_03CF:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_03DE                          ; 75 09
        mov     ax, 0x2024                      ; B8 24 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
L_03DE:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

WRITE_TEXT ENDS

        END
