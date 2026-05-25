; AUTO-GENERATED from original WRITE segment 4
; segment_size=1170 bytes, flags=0xf170
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
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [0x782]                ; FF 36 82 07
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 5C 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr [bx], al               ; 88 07
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
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        push    word ptr [0x782]                ; FF 36 82 07
        push    di                              ; 57
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        add     ax, si                          ; 03 C6
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     di, word ptr [bx]               ; 8B 3F
        mov     ax, 0x16                        ; B8 16 00
        imul    si                              ; F7 EE
        add     di, ax                          ; 03 F8
        test    byte ptr [di + 6], 2            ; F6 45 06 02
        je      L_00A9                          ; 74 12
        mov     ax, word ptr [di + 6]           ; 8B 45 06
        mov     cl, 0xc                         ; B1 0C
        shr     ax, cl                          ; D3 E8
        and     al, 0xf                         ; 24 0F
        cmp     al, 1                           ; 3C 01
        jne     L_00A9                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_00AB                          ; EB 02
L_00A9:
        sub     ax, ax                          ; 2B C0
L_00AB:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00B8 -- offset 0x00B8 -- 395 instr
; Dispatcher: tabla de decisiones cmp+jcc (395 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_0436
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_00B8:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        sub     di, di                          ; 2B FF
        or      si, si                          ; 0B F6
        jge     L_00E3                          ; 7D 13
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        inc     word ptr [bx]                   ; FF 07
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0x2d             ; C6 07 2D
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        inc     di                              ; 47
L_00E3:
        cmp     si, 0xa                         ; 83 FE 0A
        jl      L_0105                          ; 7C 1D
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00B8                          ; E8 BF FF
        add     di, ax                          ; 03 F8
        mov     cx, 0xa                         ; B9 0A 00
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     si, dx                          ; 8B F2
L_0105:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        inc     word ptr [bx]                   ; FF 07
        mov     bx, ax                          ; 8B D8
        mov     ax, si                          ; 8B C6
        add     al, 0x30                        ; 04 30
        mov     byte ptr [bx], al               ; 88 07
        lea     ax, [di + 1]                    ; 8D 45 01
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_017B                          ; 74 29
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        or      ax, dx                          ; 0B C2
        je      L_0180                          ; 74 1E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_56                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
L_017B:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_018A                          ; EB 0A
L_0180:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
L_018A:
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
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        add     di, si                          ; 03 FE
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jg      L_01BE                          ; 7F 05
L_01B9:
        sub     ax, ax                          ; 2B C0
        jmp     L_030A                          ; E9 4C 01
L_01BE:
        dec     di                              ; 4F
        mov     al, byte ptr [di]               ; 8A 05
        sub     ah, ah                          ; 2A E4
        cmp     ax, 0x22                        ; 3D 22 00
        je      L_01E3                          ; 74 1B
        cmp     ax, 0x6d                        ; 3D 6D 00
        je      L_01F5                          ; 74 28
        cmp     ax, 0x6e                        ; 3D 6E 00
        je      L_01D5                          ; 74 03
        inc     di                              ; 47
        jmp     L_01E8                          ; EB 13
L_01D5:
        dec     di                              ; 4F
        cmp     byte ptr [di], 0x69             ; 80 3D 69
        je      L_01E3                          ; 74 08
L_01DB:
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        add     di, word ptr [bp + 0xa]         ; 03 7E 0A
        jmp     L_01E8                          ; EB 05
L_01E3:
        mov     word ptr [bp + 6], 0            ; C7 46 06 00 00
L_01E8:
        cmp     si, di                          ; 3B F7
        jae     L_0202                          ; 73 16
        cmp     byte ptr [di - 1], 0x20         ; 80 7D FF 20
        jne     L_0202                          ; 75 10
        dec     di                              ; 4F
        jmp     L_01E8                          ; EB F3
L_01F5:
        dec     di                              ; 4F
        cmp     byte ptr [di], 0x63             ; 80 3D 63
        jne     L_01DB                          ; 75 E0
        mov     word ptr [bp + 6], 1            ; C7 46 06 01 00
        jmp     L_01E8                          ; EB E6
L_0202:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x7d4]       ; 8B 87 D4 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0211                          ; EB 01
L_0210:
        inc     si                              ; 46
L_0211:
        cmp     byte ptr [si], 0x20             ; 80 3C 20
        je      L_0210                          ; 74 FA
        cmp     byte ptr [si], 0x2d             ; 80 3C 2D
        jne     L_0220                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0222                          ; EB 02
L_0220:
        sub     ax, ax                          ; 2B C0
L_0222:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        je      L_022A                          ; 74 01
        inc     si                              ; 46
L_022A:
        inc     si                              ; 46
        mov     al, byte ptr [si - 1]           ; 8A 44 FF
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     cl, byte ptr [0x28]             ; 8A 0E 28 00
        sub     ch, ch                          ; 2A ED
        cmp     ax, cx                          ; 3B C1
        jne     L_0240                          ; 75 03
        jmp     L_02D1                          ; E9 91 00
L_0240:
        cmp     ax, 0x30                        ; 3D 30 00
        jge     L_0248                          ; 7D 03
        jmp     L_01B9                          ; E9 71 FF
L_0248:
        cmp     ax, 0x39                        ; 3D 39 00
        jle     L_0250                          ; 7E 03
        jmp     L_01B9                          ; E9 69 FF
L_0250:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jl      L_0265                          ; 7C 0F
        jle     L_025B                          ; 7E 03
        jmp     L_01B9                          ; E9 5E FF
L_025B:
        cmp     word ptr [bp - 0xe], 0xccc      ; 81 7E F2 CC 0C
        jb      L_0265                          ; 72 03
        jmp     L_01B9                          ; E9 54 FF
L_0265:
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far _entry_115                  ; 9A FF FF 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, 0x30                        ; 2D 30 00
        mov     bx, dx                          ; 8B DA
        mul     word ptr [bp - 4]               ; F7 66 FC
        sub     dx, dx                          ; 2B D2
        add     ax, cx                          ; 03 C1
        adc     dx, bx                          ; 13 D3
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        cmp     si, di                          ; 3B F7
        jb      L_022A                          ; 72 97
        jmp     L_02D5                          ; EB 40
L_0295:
        inc     si                              ; 46
        mov     al, byte ptr [si - 1]           ; 8A 44 FF
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0x30                        ; 3D 30 00
        jge     L_02A6                          ; 7D 03
        jmp     L_01B9                          ; E9 13 FF
L_02A6:
        cmp     ax, 0x39                        ; 3D 39 00
        jle     L_02AE                          ; 7E 03
        jmp     L_01B9                          ; E9 0B FF
L_02AE:
        sub     ax, 0x30                        ; 2D 30 00
        mul     word ptr [bp - 4]               ; F7 66 FC
        add     ax, 5                           ; 05 05 00
        sub     dx, dx                          ; 2B D2
        mov     cx, 0xa                         ; B9 0A 00
        div     cx                              ; F7 F1
        sub     dx, dx                          ; 2B D2
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        adc     word ptr [bp - 0xc], dx         ; 11 56 F4
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, 5                           ; 05 05 00
        div     cx                              ; F7 F1
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_02D1:
        cmp     si, di                          ; 3B F7
        jb      L_0295                          ; 72 C0
L_02D5:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jl      L_02EA                          ; 7C 0F
        jle     L_02E0                          ; 7E 03
        jmp     L_01B9                          ; E9 D9 FE
L_02E0:
        cmp     word ptr [bp - 0xe], 0x7bc0     ; 81 7E F2 C0 7B
        jbe     L_02EA                          ; 76 03
        jmp     L_01B9                          ; E9 CF FE
L_02EA:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_02FF                          ; 74 0F
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
        jmp     L_0302                          ; EB 03
L_02FF:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
L_0302:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, 1                           ; B8 01 00
L_030A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        sub     di, di                          ; 2B FF
        cmp     word ptr [bp + 8], 4            ; 83 7E 08 04
        jne     L_034B                          ; 75 1A
        cmp     word ptr [0x30e], 4             ; 83 3E 0E 03 04
        je      L_034B                          ; 74 13
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        mov     cx, 0x78                        ; B9 78 00
        idiv    cx                              ; F7 F9
        imul    cx                              ; F7 E9
        cmp     ax, si                          ; 3B C6
        jne     L_034B                          ; 75 05
        mov     word ptr [bp + 8], 5            ; C7 46 08 05 00
L_034B:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x7d4]       ; 8B 87 D4 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 6], 0xa          ; 83 7E 06 0A
        jge     L_0362                          ; 7D 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0429                          ; E9 C7 00
L_0362:
        or      si, si                          ; 0B F6
        jge     L_0379                          ; 7D 13
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx]               ; 8B 07
        inc     word ptr [bx]                   ; FF 07
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0x2d             ; C6 07 2D
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        inc     di                              ; 47
L_0379:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     dx, dx                          ; 2B D2
        mov     cx, 0xc8                        ; B9 C8 00
        div     cx                              ; F7 F1
        add     si, ax                          ; 03 F0
        mov     ax, si                          ; 8B C6
        sub     dx, dx                          ; 2B D2
        div     word ptr [bp - 4]               ; F7 76 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00B8                          ; E8 20 FD
        add     di, ax                          ; 03 F8
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mul     word ptr [bp - 4]               ; F7 66 FC
        sub     si, ax                          ; 2B F0
        mov     ax, 0xa                         ; B8 0A 00
        imul    si                              ; F7 EE
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jbe     L_03B8                          ; 76 0A
        mov     ax, 0xa                         ; B8 0A 00
        imul    si                              ; F7 EE
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jb      L_040E                          ; 72 56
L_03B8:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx]               ; 8B 07
        inc     word ptr [bx]                   ; FF 07
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [0x28]             ; A0 28 00
        mov     byte ptr [bx], al               ; 88 07
        inc     di                              ; 47
        mov     ax, si                          ; 8B C6
        sub     dx, dx                          ; 2B D2
        div     word ptr [bp - 4]               ; F7 76 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx]               ; 8B 07
        inc     word ptr [bx]                   ; FF 07
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        add     al, 0x30                        ; 04 30
        mov     byte ptr [bx], al               ; 88 07
        inc     di                              ; 47
        mov     cx, 0xa                         ; B9 0A 00
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mul     word ptr [bp - 4]               ; F7 66 FC
        sub     ax, si                          ; 2B C6
        neg     ax                              ; F7 D8
        mul     cx                              ; F7 E1
        sub     dx, dx                          ; 2B D2
        div     word ptr [bp - 4]               ; F7 76 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_040E                          ; 74 11
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx]               ; 8B 07
        inc     word ptr [bx]                   ; FF 07
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        add     al, 0x30                        ; 04 30
        mov     byte ptr [bx], al               ; 88 07
        inc     di                              ; 47
L_040E:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x2ae]           ; FF B7 AE 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0436                          ; E8 11 00
        add     di, ax                          ; 03 F8
        mov     ax, di                          ; 8B C7
L_0429:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0436 -- offset 0x0436 -- 48 instr
; Funcion mediana (48 instr, 0 calls).
; tags: medium
; callers: sub_00B8
;----------------------------------------------------------------------
L_0436:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     di, word ptr [bx]               ; 8B 3F
        jmp     L_045E                          ; EB 10
L_044E:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [di], al               ; 88 05
        or      al, al                          ; 0A C0
        je      L_0468                          ; 74 0C
        inc     si                              ; 46
        inc     di                              ; 47
L_045E:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     word ptr [bp + 6]               ; FF 4E 06
        or      ax, ax                          ; 0B C0
        jg      L_044E                          ; 7F E6
L_0468:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_047F                          ; 7D 11
        mov     ax, 0x7e0                       ; B8 E0 07
        push    ax                              ; 50
        lea     ax, [di - 3]                    ; 8D 45 FD
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
L_047F:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     word ptr [bx], di               ; 89 3F
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

WRITE_TEXT ENDS

        END
