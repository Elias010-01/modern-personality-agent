; AUTO-GENERATED from original WRITE segment 8
; segment_size=2167 bytes, flags=0xf170
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
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0021                          ; 75 03
        jmp     L_012E                          ; E9 0D 01
L_0021:
        cmp     ax, 2                           ; 3D 02 00
        je      L_0031                          ; 74 0B
        cmp     ax, 3                           ; 3D 03 00
        jne     L_002E                          ; 75 03
        jmp     L_0273                          ; E9 45 02
L_002E:
        jmp     L_0290                          ; E9 5F 02
L_0031:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_029D                          ; E8 61 02
        or      ax, ax                          ; 0B C0
        je      L_0068                          ; 74 28
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        sub     ax, word ptr es:[bx + 6]        ; 26 2B 47 06
        push    ax                              ; 50
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        push    word ptr [0x10fe]               ; FF 36 FE 10
        call    far _entry_94                   ; 9A FF FF 00 00 [FIXUP]
        add     ax, 0xa                         ; 05 0A 00
        cdq                                     ; 99
        mov     cx, 0x14                        ; B9 14 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jg      L_006E                          ; 7F 06
L_0068:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0290                          ; E9 22 02
L_006E:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        test    byte ptr es:[bx + 0x17], 8      ; 26 F6 47 17 08
        jne     L_007B                          ; 75 03
        jmp     L_0113                          ; E9 98 00
L_007B:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        test    word ptr [bx + 2], 0x100        ; F7 47 02 00 01
        jne     L_0091                          ; 75 0C
        test    byte ptr [bx + 2], 0x80         ; F6 47 02 80
        je      L_00B6                          ; 74 2B
        cmp     word ptr [bp - 6], 2            ; 83 7E FA 02
        jg      L_00B6                          ; 7F 25
L_0091:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_0096:
        cmp     word ptr [bp - 8], 0xa          ; 83 7E F8 0A
        jge     L_0068                          ; 7D CC
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x746]       ; 8B 87 46 07
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        call    far _entry_116                  ; 9A E3 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_010E                          ; 74 5D
        inc     word ptr [bp - 8]               ; FF 46 F8
        jmp     L_0096                          ; EB E0
L_00B6:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        test    byte ptr [bx + 2], 0x80         ; F6 47 02 80
        je      L_00F6                          ; 74 37
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
L_00CC:
        cmp     word ptr [bp - 0xc], 3          ; 83 7E F4 03
        jge     L_00D7                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_00D9                          ; EB 02
L_00D7:
        sub     ax, ax                          ; 2B C0
L_00D9:
        cmp     word ptr [bp - 0xa], 0x30       ; 83 7E F6 30
        jg      L_0123                          ; 7F 44
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_116                  ; 9A 06 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_010E                          ; 74 23
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        jmp     L_00CC                          ; EB D6
L_00F6:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        test    byte ptr [bx + 2], 0x40         ; F6 47 02 40
        je      L_0123                          ; 74 24
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    far _entry_116                  ; 9A 27 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0123                          ; 75 15
L_010E:
        sub     ax, ax                          ; 2B C0
        jmp     L_0290                          ; E9 7D 01
L_0113:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     al, byte ptr es:[bx + 0x17]     ; 26 8A 47 17
        and     al, 6                           ; 24 06
        cmp     al, 2                           ; 3C 02
        jne     L_0123                          ; 75 03
        jmp     L_0091                          ; E9 6E FF
L_0123:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_116                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0290                          ; E9 62 01
L_012E:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     byte ptr es:[bx + 0x18], 0      ; 26 80 7F 18 00
        je      L_013B                          ; 74 03
        jmp     L_0068                          ; E9 2D FF
L_013B:
        mov     al, byte ptr es:[bx + 0x17]     ; 26 8A 47 17
        and     al, 6                           ; 24 06
        cmp     al, 2                           ; 3C 02
        jne     L_0148                          ; 75 03
        jmp     L_0068                          ; E9 20 FF
L_0148:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        cmp     word ptr es:[bx + 0x1b], ax     ; 26 39 47 1B
        jne     L_0181                          ; 75 2D
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        cmp     word ptr es:[bx + 0x1d], ax     ; 26 39 47 1D
        jne     L_0181                          ; 75 24
        mov     bx, si                          ; 8B DE
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     ax, word ptr es:[si + 0x1b]     ; 26 8B 44 1B
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        les     si, ptr [bp + 0xc]              ; C4 76 0C
        mov     ax, word ptr es:[si + 0x1d]     ; 26 8B 44 1D
        mov     word ptr [bx + 4], ax           ; 89 47 04
        sub     ax, ax                          ; 2B C0
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        jmp     L_0290                          ; E9 0F 01
L_0181:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     si, word ptr [bx + 2]           ; 8B 77 02
        sub     si, word ptr [bx + 6]           ; 2B 77 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     di, word ptr es:[bx + 0x1b]     ; 26 8B 7F 1B
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        sub     di, word ptr [bx + 6]           ; 2B 7F 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, word ptr [bx + 8]           ; 2B 47 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, word ptr [bx + 8]           ; 2B 47 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        jle     L_01B6                          ; 7E 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_01B9                          ; EB 03
L_01B6:
        mov     ax, 3                           ; B8 03 00
L_01B9:
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_115                  ; 9A C5 01 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_115                  ; 9A 17 02 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x1d]     ; 26 8B 47 1D
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        sub     ax, word ptr [bx + 8]           ; 2B 47 08
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     dx, ax                          ; 8B D0
        mov     ax, word ptr es:[bx + 0x1d]     ; 26 8B 47 1D
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        sub     ax, word ptr [bx + 8]           ; 2B 47 08
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     dx, word ptr [bx + 8]           ; 8B 57 08
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     word ptr [bp - 0x10], cx        ; 89 4E F0
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     word ptr es:[bx + 0x1d], dx     ; 26 39 57 1D
        jle     L_020F                          ; 7E 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_0212                          ; EB 03
L_020F:
        mov     ax, 3                           ; B8 03 00
L_0212:
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_115                  ; 9A 1E 02 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_115                  ; 9A FF FF 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, si                          ; 8B C6
        mov     bx, dx                          ; 8B DA
        imul    si                              ; F7 EE
        cdq                                     ; 99
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     ax, di                          ; 8B C7
        imul    di                              ; F7 EF
        cdq                                     ; 99
        add     cx, ax                          ; 03 C8
        adc     bx, dx                          ; 13 DA
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        add     ax, word ptr [bp - 0x14]        ; 03 46 EC
        adc     dx, word ptr [bp - 0x12]        ; 13 56 EE
        cmp     bx, dx                          ; 3B DA
        jle     L_024D                          ; 7E 03
        jmp     L_0068                          ; E9 1B FE
L_024D:
        jl      L_0256                          ; 7C 07
        cmp     cx, ax                          ; 3B C8
        jb      L_0256                          ; 72 03
        jmp     L_0068                          ; E9 12 FE
L_0256:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x1b]     ; 26 8B 47 1B
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x1d]     ; 26 8B 47 1D
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        jmp     L_0068                          ; E9 F5 FD
L_0273:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_029D                          ; E8 1F 00
        or      ax, ax                          ; 0B C0
        jne     L_0285                          ; 75 03
        jmp     L_0068                          ; E9 E3 FD
L_0285:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], 1            ; C7 47 02 01 00
        jmp     L_010E                          ; E9 7E FE
L_0290:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_029D -- offset 0x029D -- 335 instr
; Dispatcher: tabla de decisiones cmp+jcc (335 instr).
; tags: calls_gdi, dispatcher, far
; calls (intra): sub_0607, sub_0837
; calls (inter): GDI.ENUMFONTS
;----------------------------------------------------------------------
L_029D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx + 0x18], 0      ; 26 80 7F 18 00
        jne     L_02D2                          ; 75 21
        mov     al, byte ptr es:[bx + 0x17]     ; 26 8A 47 17
        and     al, 6                           ; 24 06
        cmp     al, 2                           ; 3C 02
        je      L_02CD                          ; 74 12
        mov     ax, word ptr [0x106a]           ; A1 6A 10
        cmp     word ptr es:[bx + 0x1b], ax     ; 26 39 47 1B
        jne     L_02D2                          ; 75 0E
        mov     ax, word ptr [0x107a]           ; A1 7A 10
        cmp     word ptr es:[bx + 0x1d], ax     ; 26 39 47 1D
        jne     L_02D2                          ; 75 05
L_02CD:
        mov     ax, 1                           ; B8 01 00
        jmp     L_02D4                          ; EB 02
L_02D2:
        sub     ax, ax                          ; 2B C0
L_02D4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x30                        ; 83 EC 30
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx], 1                ; 83 3F 01
        je      L_030F                          ; 74 15
        mov     si, word ptr [0x6fe]            ; 8B 36 FE 06
        mov     si, word ptr [si]               ; 8B 34
        mov     ax, word ptr [si]               ; 8B 04
        and     ah, 0x7f                        ; 80 E4 7F
        cmp     word ptr [bx + 8], ax           ; 39 47 08
        ja      L_030F                          ; 77 05
L_030A:
        sub     ax, ax                          ; 2B C0
        jmp     L_042B                          ; E9 1C 01
L_030F:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx]               ; 8B 07
        or      ax, ax                          ; 0B C0
        je      L_0328                          ; 74 10
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0320                          ; 75 03
        jmp     L_0402                          ; E9 E2 00
L_0320:
        cmp     ax, 4                           ; 3D 04 00
        je      L_0377                          ; 74 52
        jmp     L_042B                          ; E9 03 01
L_0328:
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        sub     ah, ah                          ; 2A E4
        and     ax, 2                           ; 25 02 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     ax, word ptr [bx + 2]           ; 3B 47 02
        je      L_033B                          ; 74 03
        jmp     L_03FD                          ; E9 C2 00
L_033B:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     al, byte ptr es:[bx + 0x17]     ; 26 8A 47 17
        sub     ah, ah                          ; 2A E4
        and     ax, 0xf0                        ; 25 F0 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     ax, word ptr [bx + 4]           ; 3B 47 04
        jne     L_0354                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0356                          ; EB 02
L_0354:
        sub     ax, ax                          ; 2B C0
L_0356:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     word ptr [bx + 6], 0            ; 83 7F 06 00
        je      L_0367                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0369                          ; EB 02
L_0367:
        sub     ax, ax                          ; 2B C0
L_0369:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        xor     ax, word ptr [bp - 8]           ; 33 46 F8
        je      L_0377                          ; 74 03
        jmp     L_03FD                          ; E9 86 00
L_0377:
        mov     word ptr [bp - 0xc], 3          ; C7 46 F4 03 00
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x128e]               ; FF 36 8E 12
        push    word ptr [0x128c]               ; FF 36 8C 12
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.ENUMFONTS               ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_03FD                          ; 74 53
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _entry_56                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x6fe]            ; 8B 1E FE 06
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        cmp     ax, 0x40                        ; 3D 40 00
        jae     L_03FD                          ; 73 23
        mov     bx, word ptr [bp - 0x30]        ; 8B 5E D0
        les     si, ptr [bp + 0x10]             ; C4 76 10
        mov     al, byte ptr es:[si + 0x11]     ; 26 8A 44 11
        and     al, 0xf0                        ; 24 F0
        mov     byte ptr [bx], al               ; 88 07
        push    word ptr [bp - 0x30]            ; FF 76 D0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0837                          ; E8 47 04
        or      ax, ax                          ; 0B C0
        jne     L_03FD                          ; 75 09
        mov     word ptr [0xc24], 1             ; C7 06 24 0C 01 00
        jmp     L_030A                          ; E9 0D FF
L_03FD:
        mov     ax, 1                           ; B8 01 00
        jmp     L_042B                          ; EB 29
L_0402:
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x128e]               ; FF 36 8E 12
        push    word ptr [0x128c]               ; FF 36 8C 12
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.ENUMFONTS               ; 9A 66 05 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
L_042B:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x3a                        ; 83 EC 3A
        push    si                              ; 56
        mov     word ptr [0xc24], 0             ; C7 06 24 0C 00 00
        cmp     word ptr [0x6fe], 0             ; 83 3E FE 06 00
        je      L_0457                          ; 74 05
L_0452:
        sub     ax, ax                          ; 2B C0
        jmp     L_05FB                          ; E9 A4 01
L_0457:
        call    far _entry_120                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x6fe], ax            ; A3 FE 06
        inc     ax                              ; 40
        jne     L_046A                          ; 75 08
L_0462:
        mov     word ptr [0x6fe], 0             ; C7 06 FE 06 00 00
        jmp     L_0452                          ; EB E8
L_046A:
        cmp     word ptr [bp + 0xa], -1         ; 83 7E 0A FF
        jne     L_0473                          ; 75 03
        jmp     L_04F4                          ; E9 81 00
L_0473:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x12]   ; 8B 40 12
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far _entry_48                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_04D9                          ; EB 2F
L_04AA:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 0x38]            ; FF 76 C8
        mov     ax, 0x22                        ; B8 22 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A B3 06 00 00 [FIXUP]
        push    word ptr [bp - 0x38]            ; FF 76 C8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0837                          ; E8 65 03
        or      ax, ax                          ; 0B C0
        je      L_04FB                          ; 74 25
        inc     word ptr [bp - 6]               ; FF 46 FA
L_04D9:
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_04AA                          ; 7C C9
        mov     bx, word ptr [0x6fe]            ; 8B 1E FE 06
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jb      L_04F4                          ; 72 03
        jmp     L_05F2                          ; E9 FE 00
L_04F4:
        call    L_0607                          ; E8 10 01
        or      ax, ax                          ; 0B C0
        jne     L_0507                          ; 75 0C
L_04FB:
        push    word ptr [0x6fe]                ; FF 36 FE 06
        call    far _entry_119                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0462                          ; E9 5B FF
L_0507:
        mov     bx, word ptr [0x6fe]            ; 8B 1E FE 06
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jb      L_051A                          ; 72 03
        jmp     L_05F2                          ; E9 D8 00
L_051A:
        cmp     word ptr [0x79e], 0             ; 83 3E 9E 07 00
        jne     L_0529                          ; 75 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_118                  ; 9A FF FF 00 00 [FIXUP]
L_0529:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0533                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0536                          ; EB 03
L_0533:
        mov     ax, 4                           ; B8 04 00
L_0536:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     word ptr [bp - 0xe], 0x20       ; C7 46 F2 20 00
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [0x79e]                ; FF 36 9E 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbf6]                ; FF 36 F6 0B
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.ENUMFONTS               ; 9A A4 05 00 00 [FIXUP]
        cmp     word ptr [0xc24], 0             ; 83 3E 24 0C 00
        jne     L_04FB                          ; 75 8A
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_05F2                          ; 74 7B
        mov     bx, word ptr [0x6fe]            ; 8B 1E FE 06
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jae     L_05F2                          ; 73 6B
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        push    word ptr [0x79e]                ; FF 36 9E 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbf6]                ; FF 36 F6 0B
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.ENUMFONTS               ; 9A E4 05 00 00 [FIXUP]
        cmp     word ptr [0xc24], 0             ; 83 3E 24 0C 00
        je      L_05B2                          ; 74 03
        jmp     L_04FB                          ; E9 49 FF
L_05B2:
        mov     bx, word ptr [0x6fe]            ; 8B 1E FE 06
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jae     L_05F2                          ; 73 30
        mov     word ptr [bp - 0x10], 2         ; C7 46 F0 02 00
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        push    word ptr [0x79e]                ; FF 36 9E 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbf6]                ; FF 36 F6 0B
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.ENUMFONTS               ; 9A A0 03 00 00 [FIXUP]
        cmp     word ptr [0xc24], 0             ; 83 3E 24 0C 00
        je      L_05F2                          ; 74 03
        jmp     L_04FB                          ; E9 09 FF
L_05F2:
        mov     word ptr [0x1236], 0            ; C7 06 36 12 00 00
        mov     ax, 1                           ; B8 01 00
L_05FB:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0607 -- offset 0x0607 -- 110 instr
; Dispatcher: tabla de decisiones cmp+jcc (110 instr).
; tags: calls_kernel, dispatcher
; callers: sub_029D
; calls (intra): sub_073A, sub_078D, sub_0837
; calls (inter): KERNEL.GETPROFILESTRING
;----------------------------------------------------------------------
L_0607:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x136                       ; 81 EC 36 01
        mov     ax, 0xda                        ; B8 DA 00
        push    ax                              ; 50
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        add     ax, 0xd8                        ; 05 D8 00
        mov     word ptr [bp - 0x12c], ax       ; 89 86 D4 FE
        mov     word ptr [bp - 0x104], 0        ; C7 86 FC FE 00 00
L_0624:
        cmp     word ptr [bp - 0x104], 5        ; 83 BE FC FE 05
        jl      L_062E                          ; 7C 03
        jmp     L_0733                          ; E9 05 01
L_062E:
        mov     byte ptr [bp - 0x136], 0        ; C6 86 CA FE 00
        mov     bx, word ptr [bp - 0x12c]       ; 8B 9E D4 FE
        mov     al, byte ptr [bp - 0x104]       ; 8A 86 FC FE
        add     al, 0x31                        ; 04 31
        mov     byte ptr [bx], al               ; 88 07
        mov     ax, 0xd2                        ; B8 D2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xda                        ; B8 DA 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x136]                ; 8D 86 CA FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        jg      L_0666                          ; 7F 03
        jmp     L_0733                          ; E9 CD 00
L_0666:
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ax                              ; 50
        call    L_078D                          ; E8 1F 01
        mov     word ptr [bp - 0x106], ax       ; 89 86 FA FE
        push    ax                              ; 50
        mov     ax, 0x2c                        ; B8 2C 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0689                          ; 75 06
L_0683:
        inc     word ptr [bp - 0x104]           ; FF 86 FC FE
        jmp     L_0624                          ; EB 9B
L_0689:
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [bp - 0x106]       ; 2B 86 FA FE
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _entry_117                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x130], ax       ; 89 86 D0 FE
        or      ax, ax                          ; 0B C0
        jle     L_0683                          ; 7E DE
        push    word ptr [bp - 0x106]           ; FF B6 FA FE
        lea     ax, [bp - 0x129]                ; 8D 86 D7 FE
        push    ax                              ; 50
        push    word ptr [bp - 0x130]           ; FF B6 D0 FE
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x130]       ; 8B 86 D0 FE
        lea     cx, [bp - 0x12a]                ; 8D 8E D6 FE
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 0x108], ax       ; 89 86 F8 FE
L_06C5:
        mov     bx, word ptr [bp - 0x108]       ; 8B 9E F8 FE
        dec     word ptr [bp - 0x108]           ; FF 8E F8 FE
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     bx, word ptr [bp - 0x108]       ; 8B 9E F8 FE
        cmp     byte ptr [bx], 0x20             ; 80 3F 20
        jne     L_06E4                          ; 75 0B
        dec     word ptr [bp - 0x130]           ; FF 8E D0 FE
        cmp     word ptr [bp - 0x130], 1        ; 83 BE D0 FE 01
        jg      L_06C5                          ; 7F E1
L_06E4:
        cmp     word ptr [bp - 0x130], 1        ; 83 BE D0 FE 01
        jle     L_0683                          ; 7E 98
        push    word ptr [bp - 2]               ; FF 76 FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_073A                          ; E8 47 00
        mov     word ptr [bp - 0x12e], ax       ; 89 86 D2 FE
        cmp     ax, 0x10                        ; 3D 10 00
        je      L_0716                          ; 74 1A
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_0716                          ; 74 15
        cmp     ax, 0x30                        ; 3D 30 00
        je      L_0716                          ; 74 10
        cmp     ax, 0x40                        ; 3D 40 00
        je      L_0716                          ; 74 0B
        cmp     ax, 0x50                        ; 3D 50 00
        je      L_0716                          ; 74 06
        mov     word ptr [bp - 0x12e], 0        ; C7 86 D2 FE 00 00
L_0716:
        mov     al, byte ptr [bp - 0x12e]       ; 8A 86 D2 FE
        mov     byte ptr [bp - 0x12a], al       ; 88 86 D6 FE
        lea     ax, [bp - 0x12a]                ; 8D 86 D6 FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0837                          ; E8 0F 01
        or      ax, ax                          ; 0B C0
        je      L_072F                          ; 74 03
        jmp     L_0683                          ; E9 54 FF
L_072F:
        sub     ax, ax                          ; 2B C0
        jmp     L_0736                          ; EB 03
L_0733:
        mov     ax, 1                           ; B8 01 00
L_0736:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_073A -- offset 0x073A -- 36 instr
; Funcion mediana (36 instr, 1 calls).
; tags: far, medium
; callers: sub_0607
; calls (intra): sub_078D
;----------------------------------------------------------------------
L_073A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_078D                          ; E8 3B 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_0770                          ; EB 19
L_0757:
        cmp     byte ptr [bp - 4], 0x39         ; 80 7E FC 39
        ja      L_077F                          ; 77 22
        mov     ax, 0xa                         ; B8 0A 00
        mul     word ptr [bp - 6]               ; F7 66 FA
        mov     cl, byte ptr [bp - 4]           ; 8A 4E FC
        sub     ch, ch                          ; 2A ED
        add     ax, cx                          ; 03 C1
        sub     ax, 0x30                        ; 2D 30 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0770:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        cmp     al, 0x30                        ; 3C 30
        jae     L_0757                          ; 73 D8
L_077F:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_078D -- offset 0x078D -- 78 instr
; Funcion mediana (78 instr, 0 calls).
; tags: far, medium
; callers: sub_0607, sub_073A
;----------------------------------------------------------------------
L_078D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
L_0790:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        cmp     ax, 9                           ; 3D 09 00
        je      L_07A5                          ; 74 09
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_07A5                          ; 74 04
        mov     ax, bx                          ; 8B C3
        jmp     L_07AA                          ; EB 05
L_07A5:
        inc     word ptr [bp + 4]               ; FF 46 04
        jmp     L_0790                          ; EB E6
L_07AA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     bx, word ptr [0x6fe]            ; 8B 1E FE 06
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        cmp     ax, word ptr [0x1236]           ; 3B 06 36 12
        ja      L_07D3                          ; 77 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0809                          ; EB 36
L_07D3:
        mov     bx, word ptr [0x6fe]            ; 8B 1E FE 06
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [0x1236]           ; 8B 1E 36 12
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_61                   ; 9A 13 06 00 00 [FIXUP]
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        call    far _entry_45                   ; 9A C6 04 00 00 [FIXUP]
        inc     word ptr [0x1236]               ; FF 06 36 12
        mov     ax, 1                           ; B8 01 00
L_0809:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [0x6fe]                ; FF 36 FE 06
        call    far _entry_119                  ; 9A 00 05 00 00 [FIXUP]
        mov     word ptr [0x6fe], 0             ; C7 06 FE 06 00 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0837 -- offset 0x0837 -- 31 instr
; Funcion mediana (31 instr, 0 calls).
; tags: medium
; callers: sub_029D, sub_0607
;----------------------------------------------------------------------
L_0837:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0x1b2                       ; B8 B2 01
        push    ax                              ; 50
        call    far _entry_71                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_085C                          ; 74 09
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx + 1], 3            ; 80 7F 01 03
        jne     L_0861                          ; 75 05
L_085C:
        mov     ax, 1                           ; B8 01 00
        jmp     L_086D                          ; EB 0C
L_0861:
        push    word ptr [0x6fe]                ; FF 36 FE 06
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_121                  ; 9A FF FF 00 00 [FIXUP]
L_086D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
