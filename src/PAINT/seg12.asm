; AUTO-GENERATED from original PAINT segment 12
; segment_size=2626 bytes, flags=0xf130
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
        sub     sp, 0x14                        ; 83 EC 14
        jmp     L_0053                          ; EB 44
L_000F:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_005A                          ; 74 34
        cmp     word ptr [0x56e], 0             ; 83 3E 6E 05 00
        je      L_003F                          ; 74 12
        push    word ptr [0x56e]                ; FF 36 6E 05
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ISDIALOGMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0053                          ; 75 14
L_003F:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
L_0053:
        cmp     word ptr [0x550], 0             ; 83 3E 50 05 00
        je      L_000F                          ; 74 B5
L_005A:
        cmp     word ptr [0x550], 0             ; 83 3E 50 05 00
        jne     L_0066                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0068                          ; EB 02
L_0066:
        sub     ax, ax                          ; 2B C0
L_0068:
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
        sub     sp, 0xc                         ; 83 EC 0C
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_00B5                          ; 75 29
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x56e], 0             ; C7 06 6E 05 00 00
        mov     word ptr [0x550], 1             ; C7 06 50 05 01 00
        jmp     L_016E                          ; E9 B9 00
L_00B5:
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        je      L_00BF                          ; 74 03
        jmp     L_0173                          ; E9 B4 00
L_00BF:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, 0xf060                      ; B8 60 F0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        je      L_00E9                          ; 74 07
        mov     word ptr [bp - 0xa], 0x44e      ; C7 46 F6 4E 04
        jmp     L_00FC                          ; EB 13
L_00E9:
        cmp     word ptr [0x54e], 0             ; 83 3E 4E 05 00
        jne     L_00F7                          ; 75 07
        mov     word ptr [bp - 0xa], 0x3ce      ; C7 46 F6 CE 03
        jmp     L_00FC                          ; EB 05
L_00F7:
        mov     word ptr [bp - 0xa], 0xaf4      ; C7 46 F6 F4 0A
L_00FC:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_0107                          ; EB 03
L_0104:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
L_0107:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0104                          ; 75 F5
        jmp     L_012E                          ; EB 1D
L_0111:
        cmp     byte ptr [bp - 0xc], 0x3a       ; 80 7E F4 3A
        je      L_013A                          ; 74 23
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jbe     L_013A                          ; 76 1B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_012E:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        cmp     al, 0x5c                        ; 3C 5C
        jne     L_0111                          ; 75 D7
L_013A:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        cmp     al, 0x5c                        ; 3C 5C
        je      L_014A                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_014D                          ; 75 03
L_014A:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
L_014D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_80                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
L_016E:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_0173:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0181 -- offset 0x0181 -- 145 instr
; Dispatcher: tabla de decisiones cmp+jcc (145 instr).
; tags: calls_gdi, dispatcher
; callers: sub_02EC
; calls (inter): GDI.BITBLT, GDI.DELETEDC, GDI.GETOBJECT, GDI.GETSTOCKOBJECT, GDI.PATBLT, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_0181:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x5e                        ; 83 EC 5E
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0194                          ; 75 05
L_018F:
        sub     ax, ax                          ; 2B C0
        jmp     L_02E6                          ; E9 52 01
L_0194:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_018F                          ; 74 EE
        jmp     L_01B6                          ; EB 13
L_01A3:
        cmp     byte ptr [bp - 0x5e], 0x20      ; 80 7E A2 20
        jne     L_01C2                          ; 75 19
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A D6 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_01B6:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x5e], al        ; 88 46 A2
        or      al, al                          ; 0A C0
        jne     L_01A3                          ; 75 E1
L_01C2:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_01DD                          ; EB 13
L_01CA:
        cmp     byte ptr [bp - 0x5e], 0x2c      ; 80 7E A2 2C
        je      L_01E9                          ; 74 19
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A 11 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_01DD:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x5e], al        ; 88 46 A2
        or      al, al                          ; 0A C0
        jne     L_01CA                          ; 75 E1
L_01E9:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_018F                          ; 74 9E
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_0218                          ; EB 1F
L_01F9:
        cmp     byte ptr [bp - 0x5e], 0x20      ; 80 7E A2 20
        jne     L_0224                          ; 75 25
        cmp     byte ptr [bp - 0x5e], 0x2e      ; 80 7E A2 2E
        jne     L_020B                          ; 75 06
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr [bx], 0                ; C6 07 00
L_020B:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A 38 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0218:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x5e], al        ; 88 46 A2
        or      al, al                          ; 0A C0
        jne     L_01F9                          ; 75 D5
L_0224:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_023F                          ; EB 13
L_022C:
        cmp     byte ptr [bp - 0x5e], 0x2c      ; 80 7E A2 2C
        je      L_024B                          ; 74 19
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A 6A 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_023F:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x5e], al        ; 88 46 A2
        or      al, al                          ; 0A C0
        jne     L_022C                          ; 75 E1
L_024B:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0256                          ; 75 03
        jmp     L_018F                          ; E9 39 FF
L_0256:
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_0271                          ; EB 13
L_025E:
        cmp     byte ptr [bp - 0x5e], 0x20      ; 80 7E A2 20
        jne     L_027D                          ; 75 19
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0271:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x5e], al        ; 88 46 A2
        or      al, al                          ; 0A C0
        jne     L_025E                          ; 75 E1
L_027D:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_02A3                          ; 74 1A
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x5c]        ; 8B 46 A4
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEDC                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02BB                          ; EB 18
L_02A3:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x5c]        ; 8B 46 A4
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEIC                ; 9A FF FF 00 00 [FIXUP]
L_02BB:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_02E3                          ; 74 21
        push    ax                              ; 50
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 76 03 00 00 [FIXUP]
        test    al, 1                           ; A8 01
        jne     L_02E3                          ; 75 13
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     word ptr [0xe5e], 0             ; C7 06 5E 0E 00 00
L_02E3:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_02E6:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02EC -- offset 0x02EC -- 227 instr
; Dispatcher: tabla de decisiones cmp+jcc (227 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_0181, sub_073C
; calls (inter): GDI.ESCAPE, GDI.GETDEVICECAPS, KERNEL.GETPROFILESTRING, KERNEL.LSTRCAT, KERNEL.LSTRCPY, KERNEL.LSTRLEN (+3 mas)
;----------------------------------------------------------------------
L_02EC:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x56                        ; 83 EC 56
        mov     word ptr [0xe5e], 1             ; C7 06 5E 0E 01 00
        mov     ax, 0x33d                       ; B8 3D 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x336                       ; B8 36 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7e2                       ; B8 E2 07
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x51                        ; B8 51 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 4D 03 00 00 [FIXUP]
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0181                          ; E8 5B FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_035E                          ; 75 31
        cmp     word ptr [0xe5e], 0             ; 83 3E 5E 0E 00
        je      L_035E                          ; 74 2A
        mov     ax, 0x34a                       ; B8 4A 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x343                       ; B8 43 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7e2                       ; B8 E2 07
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x51                        ; B8 51 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0181                          ; E8 26 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_035E:
        cmp     word ptr [0x55e], 0             ; 83 3E 5E 05 00
        je      L_0368                          ; 74 03
        jmp     L_03F4                          ; E9 8C 00
L_0368:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_03CA                          ; 74 5C
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 85 03 00 00 [FIXUP]
        mov     word ptr [0xbf8], ax            ; A3 F8 0B
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 94 03 00 00 [FIXUP]
        mov     word ptr [0xbfc], ax            ; A3 FC 0B
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A A3 03 00 00 [FIXUP]
        mov     word ptr [0xace], ax            ; A3 CE 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A B2 03 00 00 [FIXUP]
        mov     word ptr [0xaea], ax            ; A3 EA 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A C1 03 00 00 [FIXUP]
        mov     word ptr [0xdaa], ax            ; A3 AA 0D
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xdbe], ax            ; A3 BE 0D
        jmp     L_03F4                          ; EB 2A
L_03CA:
        mov     word ptr [0xbf8], 5             ; C7 06 F8 0B 05 00
        mov     word ptr [0xbfc], 6             ; C7 06 FC 0B 06 00
        mov     word ptr [0xace], 0x2d0         ; C7 06 CE 0A D0 02
        mov     word ptr [0xaea], 0x1e0         ; C7 06 EA 0A E0 01
        mov     word ptr [0xdaa], 0x117         ; C7 06 AA 0D 17 01
        mov     word ptr [0xdbe], 0xd8          ; C7 06 BE 0D D8 00
        mov     word ptr [0xe5e], 0             ; C7 06 5E 0E 00 00
L_03F4:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
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
        sub     sp, 0x7a                        ; 83 EC 7A
        push    si                              ; 56
        mov     word ptr [0x56e], 0             ; C7 06 6E 05 00 00
        mov     word ptr [0x550], 0             ; C7 06 50 05 00 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02EC                          ; E8 C7 FE
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_0439                          ; 75 0D
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    L_073C                          ; E8 06 03
        jmp     L_0730                          ; E9 F7 02
L_0439:
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xe3a                       ; B8 3A 0E
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        je      L_045F                          ; 74 10
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x44e                       ; B8 4E 04
L_0457:
        push    ax                              ; 50
        call    far _entry_81                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0478                          ; EB 19
L_045F:
        cmp     word ptr [0x54e], 0             ; 83 3E 4E 05 00
        jne     L_0470                          ; 75 0A
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3ce                       ; B8 CE 03
        jmp     L_0457                          ; EB E7
L_0470:
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xaf4                       ; B8 F4 0A
L_0478:
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 96 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A C8 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, OFFSET _entry_14            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_14            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x111c]               ; FF 36 1C 11
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A E6 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A EA 06 00 00 [FIXUP]
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, 0x352                       ; B8 52 03
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far USER.CREATEDIALOG           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x56e], ax            ; A3 6E 05
        mov     ax, OFFSET _entry_15            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_15            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x111c]               ; FF 36 1C 11
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     word ptr [bp - 0x24], dx        ; 89 56 DC
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 21 05 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 41 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        or      ax, ax                          ; 0B C0
        jge     L_052F                          ; 7D 03
        jmp     L_06B0                          ; E9 81 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_052F -- offset 0x052F -- 167 instr
; Dispatcher: tabla de decisiones cmp+jcc (167 instr).
; tags: calls_gdi, calls_user, dispatcher
; calls (intra): sub_073C, sub_07D1
; calls (inter): GDI.ESCAPE, GDI.MULDIV, USER.DESTROYWINDOW, USER.ENABLEWINDOW
;----------------------------------------------------------------------
L_052F:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A A5 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        or      ax, ax                          ; 0B C0
        jge     L_054F                          ; 7D 03
        jmp     L_06B0                          ; E9 61 01
L_054F:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lcall   [bp - 0x26]                     ; FF 5E DA
        jmp     L_06B7                          ; E9 5E 01
L_0559:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_0574                          ; 75 15
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0574                          ; 75 0F
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_0574                          ; 75 09
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_0574                          ; 75 03
        jmp     L_06C1                          ; E9 4D 01
L_0574:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.MULDIV                  ; 9A 91 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0xc76]                ; FF 36 76 0C
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far GDI.MULDIV                  ; 9A CB 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jl      L_05A3                          ; 7C 03
        jmp     L_068C                          ; E9 E9 00
L_05A3:
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jl      L_05AE                          ; 7C 03
        jmp     L_068C                          ; E9 DE 00
L_05AE:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.MULDIV                  ; 9A DC 05 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        push    word ptr [bp - 0x18]            ; FF 76 E8
        mov     si, ax                          ; 8B F0
        call    far GDI.MULDIV                  ; 9A F0 05 00 00 [FIXUP]
        sub     ax, si                          ; 2B C6
        mov     word ptr [bp - 0x7a], ax        ; 89 46 86
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0xc76]                ; FF 36 76 0C
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far GDI.MULDIV                  ; 9A 01 06 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0xc76]                ; FF 36 76 0C
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        mov     si, ax                          ; 8B F0
        call    far GDI.MULDIV                  ; 9A 28 06 00 00 [FIXUP]
        sub     ax, si                          ; 2B C6
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, word ptr [bp - 0x7a]        ; 03 46 86
        cmp     ax, word ptr [0xbfe]            ; 3B 06 FE 0B
        jle     L_062F                          ; 7E 19
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        mov     word ptr [bp - 0x7a], ax        ; 89 46 86
        push    ax                              ; 50
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        call    far GDI.MULDIV                  ; 9A 4D 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
L_062F:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     ax, word ptr [bp - 0x10]        ; 03 46 F0
        cmp     ax, word ptr [0xc76]            ; 3B 06 76 0C
        jle     L_0654                          ; 7E 19
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        sub     ax, word ptr [bp - 0x16]        ; 2B 46 EA
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ax                              ; 50
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [0xc76]                ; FF 36 76 0C
        call    far GDI.MULDIV                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_0654:
        cmp     word ptr [bp - 0x7a], 0         ; 83 7E 86 00
        jle     L_068C                          ; 7E 32
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jle     L_068C                          ; 7E 2C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lcall   [bp - 0x26]                     ; FF 5E DA
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x7a]            ; FF 76 86
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_07D1                          ; E8 4C 01
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lcall   [bp - 0x26]                     ; FF 5E DA
L_068C:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lcall   [bp - 0x26]                     ; FF 5E DA
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A D7 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        or      ax, ax                          ; 0B C0
        jge     L_06B7                          ; 7D 07
L_06B0:
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        call    L_073C                          ; E8 85 00
L_06B7:
        cmp     word ptr [0x550], 0             ; 83 3E 50 05 00
        jne     L_06C1                          ; 75 03
        jmp     L_0559                          ; E9 98 FE
L_06C1:
        cmp     word ptr [0x550], 0             ; 83 3E 50 05 00
        jne     L_06FF                          ; 75 37
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 0E 07 00 00 [FIXUP]
        cmp     word ptr [0x56e], 0             ; 83 3E 6E 05 00
        je      L_0712                          ; 74 30
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 58 07 00 00 [FIXUP]
        push    word ptr [0x56e]                ; FF 36 6E 05
        call    far USER.DESTROYWINDOW          ; 9A 61 07 00 00 [FIXUP]
        mov     word ptr [0x56e], 0             ; C7 06 6E 05 00 00
        jmp     L_0712                          ; EB 13
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06FF -- offset 0x06FF -- 25 instr
; Funcion sin clasificar definitiva (25 instr).
; tags: calls_gdi, calls_kernel, far, small
; calls (inter): GDI.DELETEDC, GDI.ESCAPE, KERNEL.FREEPROCINSTANCE
;----------------------------------------------------------------------
L_06FF:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A FF FF 00 00 [FIXUP]
L_0712:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far GDI.DELETEDC                ; 9A D4 02 00 00 [FIXUP]
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far KERNEL.FREEPROCINSTANCE     ; 9A 2C 07 00 00 [FIXUP]
        push    word ptr [bp - 0x24]            ; FF 76 DC
        push    word ptr [bp - 0x26]            ; FF 76 DA
        call    far KERNEL.FREEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
L_0730:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_073C -- offset 0x073C -- 56 instr
; Funcion mediana (56 instr, 3 calls).
; tags: calls_user, medium
; callers: sub_02EC, sub_052F
; calls (inter): USER.DESTROYWINDOW, USER.ENABLEWINDOW, USER.MESSAGEBOX
;----------------------------------------------------------------------
L_073C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x82                        ; 81 EC 82 00
        mov     word ptr [0x550], 1             ; C7 06 50 05 01 00
        cmp     word ptr [0x56e], 0             ; 83 3E 6E 05 00
        je      L_076B                          ; 74 1B
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 9A 00 00 00 [FIXUP]
        push    word ptr [0x56e]                ; FF 36 6E 05
        call    far USER.DESTROYWINDOW          ; 9A A2 00 00 00 [FIXUP]
        mov     word ptr [0x56e], 0             ; C7 06 6E 05 00 00
L_076B:
        test    word ptr [bp + 4], 0x4000       ; F7 46 04 00 40
        je      L_07CB                          ; 74 59
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, 0xfffb                      ; 2D FB FF
        cmp     ax, 4                           ; 3D 04 00
        ja      L_0793                          ; 77 16
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x79a]        ; 2E FF A7 9A 07
        mov     word ptr [bp - 2], 0x1e         ; C7 46 FE 1E 00
        jmp     L_07A4                          ; EB 18
        mov     word ptr [bp - 2], 0x1f         ; C7 46 FE 1F 00
        jmp     L_07A4                          ; EB 11
L_0793:
        mov     word ptr [bp - 2], 0x1d         ; C7 46 FE 1D 00
        jmp     L_07A4                          ; EB 0A
        mov     word ptr [bx], es               ; 8C 07
        test    word ptr [bx], ax               ; 85 07
        retf                                    ; CB
        pop     es                              ; 07
        retf                                    ; CB
        pop     es                              ; 07
        xchg    bx, ax                          ; 93
        pop     es                              ; 07
L_07A4:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_60                   ; 9A FF FF 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x10c2                      ; B8 C2 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
L_07CB:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07D1 -- offset 0x07D1 -- 240 instr
; Dispatcher: tabla de decisiones cmp+jcc (240 instr).
; tags: calls_gdi, calls_kernel, dispatcher
; callers: sub_052F
; calls (inter): GDI.CREATEBITMAP, GDI.DELETEDC, GDI.MULDIV, GDI.SETBITMAPBITS, GDI.STRETCHBLT, KERNEL.GLOBALALLOC (+3 mas)
;----------------------------------------------------------------------
L_07D1:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1c                        ; 83 EC 1C
        push    si                              ; 56
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_07E1                          ; 75 03
        jmp     L_0A3C                          ; E9 5B 02
L_07E1:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_07EA                          ; 75 03
        jmp     L_0A3C                          ; E9 52 02
L_07EA:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 6]           ; 03 46 06
        dec     ax                              ; 48
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        add     ax, 7                           ; 05 07 00
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0x1a], 1         ; C7 46 E6 01 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        jmp     L_0865                          ; EB 34
L_0831:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_083D                          ; 74 06
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_08A5                          ; 75 68
L_083D:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_084B                          ; 74 08
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.GLOBALFREE           ; 9A C5 08 00 00 [FIXUP]
L_084B:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_0859                          ; 74 08
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_19                   ; 9A D3 08 00 00 [FIXUP]
L_0859:
        inc     word ptr [bp - 0x1a]            ; FF 46 E6
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x1a]        ; 8B 4E E6
        idiv    cx                              ; F7 F9
L_0865:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 08 09 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        push    word ptr [bp - 0x16]            ; FF 76 EA
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        jne     L_0831                          ; 75 8C
L_08A5:
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        je      L_08BB                          ; 74 10
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        jmp     L_08F0                          ; EB 35
L_08BB:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_08C9                          ; 74 08
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.GLOBALFREE           ; 9A 30 0A 00 00 [FIXUP]
L_08C9:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_08DD                          ; 74 0E
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_19                   ; 9A 38 0A 00 00 [FIXUP]
        mov     ax, word ptr [0xc90]            ; A1 90 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_08DD:
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        mov     ax, 0xca6                       ; B8 A6 0C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], ds         ; 8C 5E F6
        mov     word ptr [bp - 0x16], 1         ; C7 46 EA 01 00
L_08F0:
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 5A 09 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        add     word ptr [bp - 6], 0x20         ; 83 46 FA 20
        adc     word ptr [bp - 4], 0            ; 83 56 FC 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0A0B                          ; E9 E9 00
L_0922:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [bp - 0x16]        ; 03 46 EA
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jle     L_0936                          ; 7E 09
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
L_0936:
        call    far _entry_84                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_83                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 7A 09 00 00 [FIXUP]
        add     word ptr [bp - 6], ax           ; 01 46 FA
        adc     word ptr [bp - 4], dx           ; 11 56 FC
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 9C 09 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_82                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.SETBITMAPBITS           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x16]        ; 8B 4E EA
        idiv    cx                              ; F7 F9
        imul    cx                              ; F7 E9
        mov     si, ax                          ; 8B F0
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 2]               ; FF 76 FE
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        call    far GDI.MULDIV                  ; 9A E4 09 00 00 [FIXUP]
        add     ax, word ptr [bp + 0x10]        ; 03 46 10
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cdq                                     ; 99
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        idiv    cx                              ; F7 F9
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        call    far GDI.MULDIV                  ; 9A 7F 05 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x16]            ; FF 76 EA
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.STRETCHBLT              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     word ptr [bp - 2], ax           ; 01 46 FE
L_0A0B:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_0A16                          ; 7D 03
        jmp     L_0922                          ; E9 0C FF
L_0A16:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far GDI.DELETEDC                ; 9A 16 07 00 00 [FIXUP]
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_0A3C                          ; 74 18
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
L_0A3C:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      012h                            ; 12

PAINT_TEXT ENDS

        END
