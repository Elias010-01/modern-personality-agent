; AUTO-GENERATED from original SPOOLER segment 1
; segment_size=9093 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

SPOOLER_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_0022                          ; 75 11
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
L_001D:
        mov     ax, 1                           ; B8 01 00
        jmp     L_002B                          ; EB 09
L_0022:
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        je      L_001D                          ; 74 F4
        sub     ax, ax                          ; 2B C0
L_002B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0036 -- offset 0x0036 -- 294 instr
; Dispatcher: tabla de decisiones cmp+jcc (294 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_200A
; calls (intra): sub_07D5, sub_0A97, sub_0B77, sub_0E43, sub_0EE1, sub_117B (+9 mas)
; calls (inter): KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALSIZE, KERNEL.GLOBALUNLOCK, KERNEL.MAKEPROCINSTANCE, USER.BEGINPAINT (+9 mas)
;----------------------------------------------------------------------
L_0036:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1c                        ; 83 EC 1C
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [0xfe], ax             ; A3 FE 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0062                          ; 74 18
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        mov     ax, 0x1030                      ; B8 30 10
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1BC4                          ; E8 68 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_2310                          ; E8 AE 22
L_0062:
        call    L_1DED                          ; E8 88 1D
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0070                          ; 75 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_2310                          ; E8 A0 22
L_0070:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1E44                          ; E8 CD 1D
        inc     ax                              ; 40
        jne     L_0080                          ; 75 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_2310                          ; E8 90 22
L_0080:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_1C26                          ; E8 A0 1B
        mov     word ptr [0x2e], ax             ; A3 2E 00
        mov     ax, OFFSET _entry_2             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_2             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A AD 00 00 00 [FIXUP]
        mov     word ptr [0x122], ax            ; A3 22 01
        mov     word ptr [0x124], dx            ; 89 16 24 01
        mov     ax, OFFSET _entry_1             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_1             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0xfe]                 ; FF 36 FE 00
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x126], ax            ; A3 26 01
        mov     word ptr [0x128], dx            ; 89 16 28 01
        push    word ptr [0x2e]                 ; FF 36 2E 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x2e]                 ; FF 36 2E 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1D87                          ; E8 BA 1C
        push    word ptr [0x2e]                 ; FF 36 2E 00
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
L_00D6:
        sub     di, di                          ; 2B FF
L_00D8:
        cmp     di, 8                           ; 83 FF 08
        jge     L_0154                          ; 7D 77
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bx + 0x16]        ; 8B B7 16 00
        or      si, si                          ; 0B F6
        je      L_00FA                          ; 74 11
        cmp     word ptr [si + 8], 0            ; 83 7C 08 00
        je      L_00FA                          ; 74 0B
        cmp     word ptr [si], 0                ; 83 3C 00
        je      L_00FD                          ; 74 09
        cmp     word ptr [si + 4], -1           ; 83 7C 04 FF
        je      L_00FD                          ; 74 03
L_00FA:
        inc     di                              ; 47
        jmp     L_00D8                          ; EB DB
L_00FD:
        push    si                              ; 56
        call    L_0B77                          ; E8 76 0A
        or      ax, ax                          ; 0B C0
        jne     L_00FA                          ; 75 F5
        push    word ptr [si + 8]               ; FF 74 08
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        cmp     word ptr [si + 4], -1           ; 83 7C 04 FF
        je      L_0122                          ; 74 09
        push    si                              ; 56
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0EE1                          ; E8 C2 0D
        inc     ax                              ; 40
        jne     L_014A                          ; 75 28
L_0122:
        push    word ptr [si + 8]               ; FF 74 08
        call    far KERNEL.GLOBALUNLOCK         ; 9A 4E 01 00 00 [FIXUP]
        push    word ptr [si + 8]               ; FF 74 08
        call    L_117B                          ; E8 4B 10
        and     byte ptr [si], 0xfd             ; 80 24 FD
        push    si                              ; 56
        push    word ptr [si + 8]               ; FF 74 08
        mov     ax, 0x1002                      ; B8 02 10
        push    ax                              ; 50
        call    L_1281                          ; E8 43 11
        call    L_0E43                          ; E8 02 0D
        push    word ptr [0x2e]                 ; FF 36 2E 00
        call    L_07D5                          ; E8 8D 06
        jmp     L_00FA                          ; EB B0
L_014A:
        push    word ptr [si + 8]               ; FF 74 08
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00FA                          ; EB A6
L_0154:
        cmp     word ptr [0x14], 0              ; 83 3E 14 00 00
        je      L_0175                          ; 74 1A
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
        jne     L_0184                          ; 75 12
        jmp     L_00D6                          ; E9 61 FF
L_0175:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.GETMESSAGE             ; 9A FF FF 00 00 [FIXUP]
L_0184:
        cmp     word ptr [bp - 0x12], 0x12      ; 83 7E EE 12
        jne     L_0190                          ; 75 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_2310                          ; E8 80 21
L_0190:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00D6                          ; E9 2F FF
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x26                        ; 83 EC 26
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_01C0                          ; 75 03
        jmp     L_0357                          ; E9 97 01
L_01C0:
        jbe     L_01C5                          ; 76 03
        jmp     L_0527                          ; E9 62 03
L_01C5:
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_01CD                          ; 75 03
        jmp     L_02E5                          ; E9 18 01
L_01CD:
        jbe     L_01D2                          ; 76 03
        jmp     L_0504                          ; E9 32 03
L_01D2:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_01DA                          ; 75 03
        jmp     L_0474                          ; E9 9A 02
L_01DA:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_01E2                          ; 75 03
        jmp     L_0419                          ; E9 37 02
L_01E2:
        cmp     ax, 6                           ; 3D 06 00
        jne     L_01EA                          ; 75 03
        jmp     L_03BE                          ; E9 D4 01
L_01EA:
        jmp     L_038B                          ; E9 9E 01
L_01ED:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0A97                          ; E8 98 08
L_01FF:
        sub     ax, ax                          ; 2B C0
        jmp     L_0457                          ; E9 53 02
L_0204:
        call    L_13C6                          ; E8 BF 11
        jmp     L_0577                          ; E9 6D 03
L_020A:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x16], 0         ; 83 BF 16 00 00
        je      L_01FF                          ; 74 E9
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALSIZE           ; 9A FF FF 00 00 [FIXUP]
        or      dx, dx                          ; 0B D2
        ja      L_0233                          ; 77 11
        jb      L_0229                          ; 72 05
        cmp     ax, 0x3c                        ; 3D 3C 00
        jae     L_0233                          ; 73 0A
L_0229:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01FF                          ; EB CC
L_0233:
        cmp     word ptr [0x2a], 0              ; 83 3E 2A 00 00
        je      L_0256                          ; 74 1C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.KILLTIMER              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x2a], 0              ; C7 06 2A 00 00 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.FLASHWINDOW            ; 9A 38 03 00 00 [FIXUP]
L_0256:
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        shl     si, 1                           ; D1 E6
        mov     bx, word ptr [si + 0x16]        ; 8B 9C 16 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bx + 8], ax           ; 39 47 08
        jne     L_027A                          ; 75 13
        push    word ptr [bx + 2]               ; FF 77 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_19B9                          ; E8 4A 17
        mov     bx, word ptr [si + 0x16]        ; 8B 9C 16 00
        mov     word ptr [bx + 4], 0xffff       ; C7 47 04 FF FF
        jmp     L_01FF                          ; EB 85
L_027A:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_117B                          ; E8 FB 0E
        dec     word ptr [0xd0]                 ; FF 0E D0 00
L_0284:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x16], 0         ; 83 BF 16 00 00
        jne     L_0293                          ; 75 03
        jmp     L_01FF                          ; E9 6C FF
L_0293:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x16]            ; FF B7 16 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_1281                          ; E8 DC 0F
        inc     ax                              ; 40
        jne     L_02AF                          ; 75 07
        mov     ax, 0xffff                      ; B8 FF FF
L_02AB:
        cdq                                     ; 99
        jmp     L_0577                          ; E9 C8 02
L_02AF:
        call    L_0E43                          ; E8 91 0B
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
L_02B7:
        mov     ax, word ptr [0xfc]             ; A1 FC 00
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_02C2                          ; 7C 03
        jmp     L_037A                          ; E9 B8 00
L_02C2:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [si + 0x130], ax       ; 39 84 30 01
        jne     L_02E0                          ; 75 10
        cmp     word ptr [si + 0x12e], 8        ; 83 BC 2E 01 08
        jae     L_02E0                          ; 73 09
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0xd0], ax             ; A3 D0 00
        jmp     L_037A                          ; E9 9A 00
L_02E0:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_02B7                          ; EB D2
L_02E5:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_07D5                          ; E8 DD 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01FF                          ; E9 F7 FE
L_0308:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x12a], ax            ; A3 2A 01
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_0319                          ; 75 03
        jmp     L_01FF                          ; E9 E6 FE
L_0319:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, 0x1010                      ; B8 10 10
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1BC4                          ; E8 97 18
        jmp     L_01FF                          ; E9 CF FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0330 -- offset 0x0330 -- 214 instr
; Dispatcher: tabla de decisiones cmp+jcc (214 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_0583, sub_05B9, sub_07D5, sub_0E43, sub_1484, sub_15E9 (+4 mas)
; calls (inter): GDI.GETSPOOLJOB, KERNEL.LSTRCMP, USER.DEFWINDOWPROC, USER.DESTROYWINDOW, USER.DIALOGBOX, USER.FLASHWINDOW (+4 mas)
;----------------------------------------------------------------------
L_0330:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.FLASHWINDOW            ; 9A FF FF 00 00 [FIXUP]
        dec     word ptr [0x12]                 ; FF 0E 12 00
        je      L_0345                          ; 74 03
        jmp     L_01FF                          ; E9 BA FE
L_0345:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.MESSAGEBEEP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x12], 0xa            ; C7 06 12 00 0A 00
        jmp     L_01FF                          ; E9 A8 FE
L_0357:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1484                          ; E8 22 11
        jmp     L_01FF                          ; E9 9A FE
L_0365:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_15E9                          ; E8 76 12
        or      ax, ax                          ; 0B C0
        jne     L_037A                          ; 75 03
        jmp     L_01FF                          ; E9 85 FE
L_037A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_07D5                          ; E8 55 04
        jmp     L_01FF                          ; E9 7C FE
L_0383:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x3e7                       ; 3D E7 03
        je      L_03A2                          ; 74 17
L_038B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0577                          ; E9 D5 01
L_03A2:
        push    word ptr [0xfe]                 ; FF 36 FE 00
        mov     ax, 0x30                        ; B8 30 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x124]                ; FF 36 24 01
        push    word ptr [0x122]                ; FF 36 22 01
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01FF                          ; E9 41 FE
L_03BE:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_03D2                          ; 74 0E
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_03D2                          ; 75 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
L_03D2:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_03D7:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bx + 0x16]        ; 8B B7 16 00
        or      si, si                          ; 0B F6
        je      L_03E7                          ; 74 03
        and     byte ptr [si], 0xfb             ; 80 24 FB
L_03E7:
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 8            ; 83 7E FC 08
        jl      L_03D7                          ; 7C E7
        cmp     word ptr [0x2a], 0              ; 83 3E 2A 00 00
        jne     L_03FA                          ; 75 03
        jmp     L_01FF                          ; E9 05 FE
L_03FA:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.KILLTIMER              ; 9A 41 02 00 00 [FIXUP]
        mov     word ptr [0x2a], 0              ; C7 06 2A 00 00 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.FLASHWINDOW            ; 9A 52 02 00 00 [FIXUP]
        jmp     L_01FF                          ; E9 E6 FD
L_0419:
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_0422                          ; 75 03
        jmp     L_01FF                          ; E9 DD FD
L_0422:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0583                          ; E8 55 01
        jmp     L_01FF                          ; E9 CE FD
L_0431:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_05B9                          ; E8 7C 01
        jmp     L_01FF                          ; E9 BF FD
L_0440:
        mov     ax, 0x1000                      ; B8 00 10
        push    ax                              ; 50
        call    L_200A                          ; E8 C3 1B
        jmp     L_02AB                          ; E9 61 FE
L_044A:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_200A                          ; E8 BA 1B
        or      ax, ax                          ; 0B C0
        jne     L_045C                          ; 75 08
        mov     ax, 1                           ; B8 01 00
L_0457:
        sub     dx, dx                          ; 2B D2
        jmp     L_0577                          ; E9 1B 01
L_045C:
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.GETSPOOLJOB             ; 9A F1 04 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01FF                          ; E9 8B FD
L_0474:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.POSTQUITMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01FF                          ; E9 80 FD
L_047F:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_2310                          ; E8 8B 1E
L_0485:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x36                        ; B8 36 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A A8 04 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_04B0                          ; 74 14
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x3e                        ; B8 3E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_04DF                          ; 75 2F
L_04B0:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_04B5:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        cmp     word ptr [si + 0x16], 0         ; 83 BC 16 00 00
        je      L_04D6                          ; 74 15
        mov     bx, word ptr [si + 0x16]        ; 8B 9C 16 00
        push    word ptr [bx + 2]               ; FF 77 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_196D                          ; E8 A0 14
        mov     bx, word ptr [si + 0x16]        ; 8B 9C 16 00
        mov     word ptr [bx + 2], 0xfffe       ; C7 47 02 FE FF
L_04D6:
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 8            ; 83 7E FC 08
        jl      L_04B5                          ; 7C D6
L_04DF:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_04E8                          ; 74 03
        jmp     L_01FF                          ; E9 17 FD
L_04E8:
        mov     ax, 0x1c                        ; B8 1C 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.GETSPOOLJOB             ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1E44                          ; E8 49 19
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        call    L_0E43                          ; E8 42 09
        jmp     L_037A                          ; E9 76 FE
L_0504:
        cmp     ax, 0x10                        ; 3D 10 00
        jne     L_050C                          ; 75 03
        jmp     L_044A                          ; E9 3E FF
L_050C:
        cmp     ax, 0x11                        ; 3D 11 00
        jne     L_0514                          ; 75 03
        jmp     L_0440                          ; E9 2C FF
L_0514:
        cmp     ax, 0x12                        ; 3D 12 00
        jne     L_051C                          ; 75 03
        jmp     L_047F                          ; E9 63 FF
L_051C:
        cmp     ax, 0x1a                        ; 3D 1A 00
        jne     L_0524                          ; 75 03
        jmp     L_0485                          ; E9 61 FF
L_0524:
        jmp     L_038B                          ; E9 64 FE
L_0527:
        cmp     ax, 0x115                       ; 3D 15 01
        jne     L_052F                          ; 75 03
        jmp     L_0365                          ; E9 36 FE
L_052F:
        ja      L_054C                          ; 77 1B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0539                          ; 75 03
        jmp     L_0431                          ; E9 F8 FE
L_0539:
        cmp     ax, 0x112                       ; 3D 12 01
        jne     L_0541                          ; 75 03
        jmp     L_0383                          ; E9 42 FE
L_0541:
        cmp     ax, 0x113                       ; 3D 13 01
        jne     L_0549                          ; 75 03
        jmp     L_0330                          ; E9 E7 FD
L_0549:
        jmp     L_038B                          ; E9 3F FE
L_054C:
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_0554                          ; 75 03
        jmp     L_01ED                          ; E9 99 FC
L_0554:
        cmp     ax, 0x1001                      ; 3D 01 10
        jne     L_055C                          ; 75 03
        jmp     L_0284                          ; E9 28 FD
L_055C:
        cmp     ax, 0x1002                      ; 3D 02 10
        jne     L_0564                          ; 75 03
        jmp     L_020A                          ; E9 A6 FC
L_0564:
        cmp     ax, 0x1003                      ; 3D 03 10
        jne     L_056C                          ; 75 03
        jmp     L_0308                          ; E9 9C FD
L_056C:
        cmp     ax, 0x1004                      ; 3D 04 10
        jne     L_0574                          ; 75 03
        jmp     L_0204                          ; E9 90 FC
L_0574:
        jmp     L_038B                          ; E9 14 FE
L_0577:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0583 -- offset 0x0583 -- 23 instr
; Funcion sin clasificar definitiva (23 instr).
; tags: calls_user, small
; callers: sub_0330
; calls (inter): USER.SETSCROLLRANGE
;----------------------------------------------------------------------
L_0583:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0xfc]             ; A1 FC 00
        imul    word ptr [0x100]                ; F7 2E 00 01
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jg      L_05A3                          ; 7F 07
        cmp     word ptr [0xfa], 0              ; 83 3E FA 00 00
        je      L_05A8                          ; 74 05
L_05A3:
        mov     ax, 0x64                        ; B8 64 00
        jmp     L_05AA                          ; EB 02
L_05A8:
        sub     ax, ax                          ; 2B C0
L_05AA:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05B9 -- offset 0x05B9 -- 204 instr
; Dispatcher: tabla de decisiones cmp+jcc (204 instr).
; tags: calls_kernel, calls_user, dispatcher, int_7
; callers: sub_0330
; calls (intra): sub_07D5, sub_0D3C, sub_0E43, sub_117B, sub_122B, sub_1281 (+1 mas)
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LSTRLEN, USER.CHECKMENUITEM, USER.GETMENU, USER.LOADSTRING (+1 mas)
;----------------------------------------------------------------------
L_05B9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xf6                        ; 81 EC F6 00
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, 0xa                         ; 2D 0A 00
        cmp     ax, 0xd                         ; 3D 0D 00
        jbe     L_05D0                          ; 76 03
        jmp     L_07CD                          ; E9 FD 01
L_05D0:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x7b1]        ; 2E FF A7 B1 07
        mov     ax, word ptr [0xfc]             ; A1 FC 00
        cmp     word ptr [0xd0], ax             ; 39 06 D0 00
        jl      L_05E4                          ; 7C 03
        jmp     L_07CD                          ; E9 E9 01
L_05E4:
        mov     bx, word ptr [0xd0]             ; 8B 1E D0 00
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x130]       ; 8B 87 30 01
        mov     word ptr [bp + 4], ax           ; 89 46 04
        cmp     ax, 8                           ; 3D 08 00
        jae     L_05F9                          ; 73 03
        jmp     L_07CD                          ; E9 D4 01
L_05F9:
        push    word ptr [0xd0]                 ; FF 36 D0 00
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_122B                          ; E8 27 0C
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.GLOBALLOCK           ; 9A 09 01 00 00 [FIXUP]
        mov     word ptr [bp - 0xa4], ax        ; 89 86 5C FF
        mov     word ptr [bp - 0xa2], dx        ; 89 96 5E FF
        push    word ptr [0xfe]                 ; FF 36 FE 00
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0xf6]                 ; 8D 86 0A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa4]        ; 8B 86 5C FF
        add     ax, 0xe                         ; 05 0E 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        sub     ax, 0x50                        ; 2D 50 00
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 4C 06 00 00 [FIXUP]
        push    word ptr [0xfe]                 ; FF 36 FE 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xf6]                 ; 8D 86 0A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa4]        ; 8B 86 5C FF
        mov     dx, word ptr [bp - 0xa2]        ; 8B 96 5E FF
        add     ax, 0xe                         ; 05 0E 00
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0xa0]                 ; 8D 86 60 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0D3C                          ; E8 D0 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.GLOBALUNLOCK         ; 9A 26 01 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0xa0]                 ; 8D 86 60 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        je      L_069E                          ; 74 0E
        push    word ptr [0xd0]                 ; FF 36 D0 00
        mov     ax, 0xfffd                      ; B8 FD FF
        push    ax                              ; 50
        call    L_122B                          ; E8 90 0B
        jmp     L_07CD                          ; E9 2F 01
L_069E:
        sub     si, si                          ; 2B F6
L_06A0:
        mov     di, si                          ; 8B FE
        shl     di, 1                           ; D1 E7
        cmp     word ptr [di + 0x16], 0         ; 83 BD 16 00 00
        je      L_06CB                          ; 74 20
        mov     bx, word ptr [di + 0x16]        ; 8B 9D 16 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bx + 8], ax           ; 39 47 08
        jne     L_06CB                          ; 75 14
        push    word ptr [bx + 2]               ; FF 77 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_19B9                          ; E8 FA 12
        mov     bx, word ptr [di + 0x16]        ; 8B 9D 16 00
        mov     word ptr [bx + 4], 0xffff       ; C7 47 04 FF FF
        jmp     L_07CD                          ; E9 02 01
L_06CB:
        inc     si                              ; 46
        cmp     si, 8                           ; 83 FE 08
        jl      L_06A0                          ; 7C CF
        push    word ptr [0xd0]                 ; FF 36 D0 00
        mov     ax, 0xfffd                      ; B8 FD FF
        push    ax                              ; 50
        call    L_122B                          ; E8 4F 0B
        dec     word ptr [0xd0]                 ; FF 0E D0 00
        sub     si, si                          ; 2B F6
        jmp     L_06E5                          ; EB 01
L_06E4:
        inc     si                              ; 46
L_06E5:
        mov     bx, word ptr [0xd0]             ; 8B 1E D0 00
        sub     bx, si                          ; 2B DE
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x130], 8        ; 83 BF 30 01 08
        ja      L_06E4                          ; 77 F0
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_117B                          ; E8 81 0A
        mov     bx, word ptr [0xd0]             ; 8B 1E D0 00
        sub     bx, si                          ; 2B DE
        shl     bx, 1                           ; D1 E3
        mov     bx, word ptr [bx + 0x130]       ; 8B 9F 30 01
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x16]            ; FF B7 16 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x1002                      ; B8 02 10
        push    ax                              ; 50
        call    L_1281                          ; E8 6B 0B
        call    L_0E43                          ; E8 2A 07
L_0719:
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_07D5                          ; E8 B6 00
        jmp     L_07CD                          ; E9 AB 00
        push    word ptr [0xd0]                 ; FF 36 D0 00
        cmp     word ptr [bp + 6], 0x14         ; 83 7E 06 14
        jne     L_0731                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0734                          ; EB 03
L_0731:
        mov     ax, 0xfffe                      ; B8 FE FF
L_0734:
        push    ax                              ; 50
        call    L_122B                          ; E8 F3 0A
        jmp     L_0719                          ; EB DF
        cmp     word ptr [0x26], 0              ; 83 3E 26 00 00
        jne     L_0744                          ; 75 03
        jmp     L_07CD                          ; E9 89 00
L_0744:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETMENU                ; 9A 5E 07 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.CHECKMENUITEM          ; 9A 6B 07 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETMENU                ; 9A 82 07 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.CHECKMENUITEM          ; 9A 90 07 00 00 [FIXUP]
        mov     word ptr [0x26], 0              ; C7 06 26 00 00 00
        jmp     L_07CD                          ; EB 56
        cmp     word ptr [0x26], 0              ; 83 3E 26 00 00
        jne     L_07CD                          ; 75 4F
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETMENU                ; 9A 98 07 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.CHECKMENUITEM          ; 9A A5 07 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.CHECKMENUITEM          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x26], 1              ; C7 06 26 00 01 00
        jmp     L_07CD                          ; EB 1C
        cmp     al, byte ptr [bx]               ; 3A 07
        ja      L_07BC                          ; 77 07
        int     7                               ; CD 07
        int     7                               ; CD 07
        int     7                               ; CD 07
        int     7                               ; CD 07
        int     7                               ; CD 07
        int     7                               ; CD 07
        int     7                               ; CD 07
        int     7                               ; CD 07
        and     al, byte ptr [bx]               ; 22 07
        and     al, byte ptr [bx]               ; 22 07
        int     7                               ; CD 07
        fadd    dword ptr [di]                  ; D8 05
L_07CD:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07D5 -- offset 0x07D5 -- 271 instr
; Dispatcher: tabla de decisiones cmp+jcc (271 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; callers: sub_0036, sub_0330, sub_05B9, sub_1484
; calls (intra): sub_0B3A
; calls (inter): GDI.CREATESOLIDBRUSH, GDI.DELETEOBJECT, GDI.PATBLT, GDI.SELECTOBJECT, GDI.SETBKMODE, GDI.SETTEXTCOLOR (+13 mas)
;----------------------------------------------------------------------
L_07D5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x62                        ; 83 EC 62
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0x100]            ; A1 00 01
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A DC 0A 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0xfc]             ; A1 FC 00
        imul    word ptr [0x100]                ; F7 2E 00 01
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jg      L_080F                          ; 7F 07
        cmp     word ptr [0xfa], 0              ; 83 3E FA 00 00
        je      L_0814                          ; 74 05
L_080F:
        mov     ax, 0x64                        ; B8 64 00
        jmp     L_0816                          ; EB 02
L_0814:
        sub     ax, ax                          ; 2B C0
L_0816:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A AF 05 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ISRECTEMPTY            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0830                          ; 74 03
        jmp     L_0A8F                          ; E9 5F 02
L_0830:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDC                  ; 9A CC 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 79 08 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    word ptr [bp - 0x58]            ; FF 76 A8
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x58]            ; FF 76 A8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 68 0B 00 00 [FIXUP]
        push    word ptr [bp - 0x58]            ; FF 76 A8
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x58]            ; FF 76 A8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xfe]                 ; FF 36 FE 00
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A B8 08 00 00 [FIXUP]
        push    word ptr [0xfe]                 ; FF 36 FE 00
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        lea     ax, [bp - 0x4e]                 ; 8D 46 B2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 44 0A 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        mov     cx, word ptr [0x100]            ; 8B 0E 00 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x5a], ax        ; 89 46 A6
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        je      L_08D6                          ; 74 03
        inc     word ptr [bp - 0x5a]            ; FF 46 A6
L_08D6:
        mov     si, word ptr [0xfc]             ; 8B 36 FC 00
        sub     si, word ptr [0xfa]             ; 2B 36 FA 00
        cmp     word ptr [bp - 0x5a], si        ; 39 76 A6
        jle     L_08E6                          ; 7E 03
        mov     word ptr [bp - 0x5a], si        ; 89 76 A6
L_08E6:
        mov     word ptr [bp - 0x54], 0         ; C7 46 AC 00 00
        mov     ax, word ptr [0xfa]             ; A1 FA 00
        shl     ax, 1                           ; D1 E0
        add     ax, 0x130                       ; 05 30 01
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        jmp     L_09E6                          ; E9 ED 00
L_08F9:
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        cmp     ax, 8                           ; 3D 08 00
        jb      L_0909                          ; 72 03
        jmp     L_099A                          ; E9 91 00
L_0909:
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [bx + 0x16]        ; 8B BF 16 00
        mov     si, word ptr [0x12e]            ; 8B 36 2E 01
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        push    word ptr [bp - 0x58]            ; FF 76 A8
        push    si                              ; 56
        mov     ax, word ptr [0x100]            ; A1 00 01
        add     word ptr [bp - 2], ax           ; 01 46 FE
        push    word ptr [bp - 2]               ; FF 76 FE
        lea     ax, [di + 0x44]                 ; 8D 45 44
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [di + 0x64]            ; FF 75 64
        call    far GDI.TEXTOUT                 ; 9A 6D 09 00 00 [FIXUP]
        mov     ax, word ptr [di + 0x64]        ; 8B 45 64
        inc     ax                              ; 40
        imul    word ptr [0x12e]                ; F7 2E 2E 01
        add     si, ax                          ; 03 F0
        mov     bx, word ptr [bp - 0x2e]        ; 8B 5E D2
        shl     bx, 1                           ; D1 E3
        mov     bx, word ptr [bx + 0x16]        ; 8B 9F 16 00
        cmp     word ptr [bx], 0                ; 83 3F 00
        je      L_0950                          ; 74 05
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        jmp     L_0953                          ; EB 03
L_0950:
        lea     ax, [bp - 0x4e]                 ; 8D 46 B2
L_0953:
        mov     dx, ss                          ; 8C D2
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
        mov     word ptr [bp - 0x5c], dx        ; 89 56 A4
        push    word ptr [bp - 0x58]            ; FF 76 A8
        push    si                              ; 56
        push    word ptr [bp - 2]               ; FF 76 FE
        push    dx                              ; 52
        push    ax                              ; 50
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 78 09 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 94 09 00 00 [FIXUP]
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        call    far KERNEL.LSTRLEN              ; 9A CD 09 00 00 [FIXUP]
        inc     ax                              ; 40
        imul    word ptr [0x12e]                ; F7 2E 2E 01
        add     si, ax                          ; 03 F0
        push    word ptr [bp - 0x58]            ; FF 76 A8
        push    si                              ; 56
        push    word ptr [bp - 2]               ; FF 76 FE
        lea     ax, [di + 0x66]                 ; 8D 45 66
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [di + 0x86]            ; FF B5 86 00
        call    far GDI.TEXTOUT                 ; 9A D3 09 00 00 [FIXUP]
        jmp     L_09DF                          ; EB 45
L_099A:
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        call    far KERNEL.GLOBALLOCK           ; 9A 08 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        mov     word ptr [bp - 0x50], dx        ; 89 56 B0
        push    word ptr [bp - 0x58]            ; FF 76 A8
        mov     ax, word ptr [0x12e]            ; A1 2E 01
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        mov     ax, word ptr [0x100]            ; A1 00 01
        add     word ptr [bp - 2], ax           ; 01 46 FE
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        add     ax, 0xe                         ; 05 0E 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        add     ax, 0xe                         ; 05 0E 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 61 0A 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 67 0A 00 00 [FIXUP]
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        call    far KERNEL.GLOBALUNLOCK         ; 9A 70 06 00 00 [FIXUP]
L_09DF:
        inc     word ptr [bp - 0x54]            ; FF 46 AC
        add     word ptr [bp - 0x2c], 2         ; 83 46 D4 02
L_09E6:
        mov     ax, word ptr [bp - 0x5a]        ; 8B 46 A6
        cmp     word ptr [bp - 0x54], ax        ; 39 46 AC
        jge     L_09F1                          ; 7D 03
        jmp     L_08F9                          ; E9 08 FF
L_09F1:
        cmp     word ptr [0xfc], 0              ; 83 3E FC 00 00
        je      L_0A05                          ; 74 0D
        mov     ax, word ptr [0xfc]             ; A1 FC 00
        cmp     word ptr [0xd0], ax             ; 39 06 D0 00
        jl      L_0A05                          ; 7C 04
        dec     ax                              ; 48
        mov     word ptr [0xd0], ax             ; A3 D0 00
L_0A05:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETMENU                ; 9A 01 0B 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        mov     bx, word ptr [0xd0]             ; 8B 1E D0 00
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x130], 8        ; 83 BF 30 01 08
        jbe     L_0A23                          ; 76 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0A26                          ; EB 03
L_0A23:
        mov     ax, 1                           ; B8 01 00
L_0A26:
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 1F 0B 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_0A6D                          ; 7D 3B
        push    word ptr [0xfe]                 ; FF 36 FE 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 37 06 00 00 [FIXUP]
        push    word ptr [bp - 0x58]            ; FF 76 A8
        mov     ax, word ptr [0x12e]            ; A1 2E 01
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 2C 06 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0A7C                          ; EB 0F
L_0A6D:
        push    word ptr [bp - 0x58]            ; FF 76 A8
        push    word ptr [0xd0]                 ; FF 36 D0 00
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B3A                          ; E8 BE 00
L_0A7C:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x58]            ; FF 76 A8
        call    far USER.RELEASEDC              ; 9A 30 0B 00 00 [FIXUP]
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
L_0A8F:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A97 -- offset 0x0A97 -- 60 instr
; Dispatcher: tabla de decisiones cmp+jcc (60 instr).
; tags: calls_user, dispatcher
; callers: sub_0036
; calls (intra): sub_0B3A
; calls (inter): USER.ENABLEMENUITEM, USER.GETCLIENTRECT, USER.GETDC, USER.GETMENU, USER.RELEASEDC
;----------------------------------------------------------------------
L_0A97:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        cmp     word ptr [bp + 0xa], 0x201      ; 81 7E 0A 01 02
        je      L_0AA7                          ; 74 03
        jmp     L_0B34                          ; E9 8D 00
L_0AA7:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        mov     cx, word ptr [0x100]            ; 8B 0E 00 01
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0xfa]             ; 03 06 FA 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0xfc]             ; A1 FC 00
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jge     L_0B34                          ; 7D 74
        mov     ax, word ptr [0xd0]             ; A1 D0 00
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        je      L_0B34                          ; 74 6C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0xd0]                 ; FF 36 D0 00
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B3A                          ; E8 4B 00
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B3A                          ; E8 3D 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far USER.GETMENU                ; 9A 48 07 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x130], 8        ; 83 BF 30 01 08
        jbe     L_0B1A                          ; 76 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0B1D                          ; EB 03
L_0B1A:
        mov     ax, 1                           ; B8 01 00
L_0B1D:
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [0xd0], ax             ; A3 D0 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
L_0B34:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B3A -- offset 0x0B3A -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: calls_gdi, far, small
; callers: sub_07D5, sub_0A97, sub_1484
; calls (inter): GDI.PATBLT
;----------------------------------------------------------------------
L_0B3A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [0xfa]             ; A1 FA 00
        sub     word ptr [bp + 8], ax           ; 29 46 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        imul    word ptr [0x100]                ; F7 2E 00 01
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x100]                ; FF 36 00 01
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B77 -- offset 0x0B77 -- 156 instr
; Dispatcher: tabla de decisiones cmp+jcc (156 instr).
; tags: calls_user, dispatcher
; callers: sub_0036
; calls (intra): sub_16D3, sub_185B, sub_196D, sub_19B9, sub_1BC4
; calls (inter): USER.GETACTIVEWINDOW, USER.MESSAGEBEEP, USER.MESSAGEBOX, USER.SETTIMER
;----------------------------------------------------------------------
L_0B77:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1e                        ; 83 EC 1E
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx + 0x18]        ; 8B 47 18
        sub     ax, word ptr [bx + 0x16]        ; 2B 47 16
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_0B94                          ; 75 05
L_0B8F:
        sub     ax, ax                          ; 2B C0
        jmp     L_0D16                          ; E9 82 01
L_0B94:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     word ptr [bx + 4], -1           ; 83 7F 04 FF
        je      L_0B8F                          ; 74 F2
        cmp     word ptr [bx + 4], 0            ; 83 7F 04 00
        je      L_0BA6                          ; 74 03
        jmp     L_0C33                          ; E9 8D 00
L_0BA6:
        call    far USER.GETACTIVEWINDOW        ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [0x2e]             ; 3B 06 2E 00
        je      L_0BF2                          ; 74 41
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        or      byte ptr [bx], 4                ; 80 0F 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.MESSAGEBEEP            ; 9A C5 0B 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.MESSAGEBEEP            ; 9A 4A 03 00 00 [FIXUP]
        cmp     word ptr [0x2a], 0              ; 83 3E 2A 00 00
        jne     L_0BEC                          ; 75 1C
        push    word ptr [0x2e]                 ; FF 36 2E 00
        push    word ptr [0x2e]                 ; FF 36 2E 00
        mov     ax, 0x1f4                       ; B8 F4 01
        push    ax                              ; 50
        push    word ptr [0x128]                ; FF 36 28 01
        push    word ptr [0x126]                ; FF 36 26 01
        call    far USER.SETTIMER               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x2a], ax             ; A3 2A 00
L_0BEC:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D16                          ; E9 24 01
L_0BF2:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     di, word ptr [bx + 0x18]        ; 8B 7F 18
        mov     byte ptr [bx + di + 0x88], 0    ; C6 81 88 00 00
        or      byte ptr [bx + 6], 2            ; 80 4F 06 02
        push    word ptr [0x2e]                 ; FF 36 2E 00
        mov     ax, bx                          ; 8B C3
        add     ax, 0x88                        ; 05 88 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        add     ax, 0x44                        ; 05 44 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 34 0D 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0C29                          ; 75 08
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx + 4], 0xffff       ; C7 47 04 FF FF
L_0C29:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        and     byte ptr [bx + 6], 0xfd         ; 80 67 06 FD
        jmp     L_0B8F                          ; E9 5C FF
L_0C33:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     si, word ptr [bx + 0x16]        ; 8B 77 16
        add     si, bx                          ; 03 F3
        add     si, 0x88                        ; 81 C6 88 00
        cmp     word ptr [0x12a], 0             ; 83 3E 2A 01 00
        jne     L_0C4D                          ; 75 07
        cmp     word ptr [0x26], 0              ; 83 3E 26 00 00
        je      L_0C76                          ; 74 29
L_0C4D:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_0C50:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     word ptr [bx + 2], -2           ; 83 7F 02 FE
        jne     L_0C9D                          ; 75 41
        mov     ax, bx                          ; 8B C3
        add     ax, 0x44                        ; 05 44 00
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_185B                          ; E8 F3 0B
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xfffe                      ; 3D FE FF
        jne     L_0C81                          ; 75 11
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_0D16                          ; E9 A0 00
L_0C76:
        cmp     word ptr [bp - 6], 8            ; 83 7E FA 08
        jle     L_0C4D                          ; 7E D1
        mov     ax, 8                           ; B8 08 00
        jmp     L_0C50                          ; EB CF
L_0C81:
        cmp     word ptr [bp - 4], -1           ; 83 7E FC FF
        jne     L_0C92                          ; 75 0B
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx + 4], 0xffff       ; C7 47 04 FF FF
        jmp     L_0B8F                          ; E9 FD FE
L_0C92:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        jmp     L_0CA6                          ; EB 09
L_0C9D:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0CA6:
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_16D3                          ; E8 1E 0A
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        test    ax, 0x8000                      ; A9 00 80
        je      L_0D07                          ; 74 4A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 0x1015                      ; B8 15 10
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 0x44                        ; 05 44 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1BC4                          ; E8 F1 0E
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0D03                          ; 75 2B
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx + 4], 0xffff       ; C7 47 04 FF FF
        test    word ptr [0x12c], 0x800         ; F7 06 2C 01 00 08
        je      L_0CF0                          ; 74 08
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_19B9                          ; E8 C9 0C
L_0CF0:
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_196D                          ; E8 75 0C
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx + 2], 0xfffe       ; C7 47 02 FE FF
        jmp     L_0B8F                          ; E9 8C FE
L_0D03:
        and     byte ptr [bp - 0x1b], 0x7f      ; 80 66 E5 7F
L_0D07:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        add     word ptr [bx + 0x16], ax        ; 01 47 16
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
L_0D16:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D1E -- offset 0x0D1E -- 15 instr
; Wrapper que delega en USER.MESSAGEBOX.
; tags: calls_user, wrapper
; callers: sub_185B, sub_1EE3
; calls (inter): USER.MESSAGEBOX
;----------------------------------------------------------------------
L_0D1E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [0x2e]                 ; FF 36 2E 00
        mov     ax, 0xd2                        ; B8 D2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x102                       ; B8 02 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1030                      ; B8 30 10
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 87 06 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D3C -- offset 0x0D3C -- 53 instr
; Funcion mediana (53 instr, 0 calls).
; tags: medium
; callers: sub_05B9, sub_1BC4
;----------------------------------------------------------------------
L_0D3C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
L_0D5A:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [0x2c]             ; A1 2C 00
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jne     L_0D6F                          ; 75 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_0DA9                          ; 74 3C
        jmp     L_0DA0                          ; EB 31
L_0D6F:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     byte ptr es:[bx], al            ; 26 88 07
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0D5A                          ; 75 D0
        sub     ax, ax                          ; 2B C0
        jmp     L_0DC8                          ; EB 3A
L_0D8E:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     byte ptr es:[bx], al            ; 26 88 07
L_0DA0:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0D8E                          ; 75 E5
L_0DA9:
        inc     word ptr [bp - 4]               ; FF 46 FC
        inc     word ptr [bp - 4]               ; FF 46 FC
L_0DAF:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_0DAF                          ; 75 EA
        mov     ax, 1                           ; B8 01 00
L_0DC8:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0DCE -- offset 0x0DCE -- 51 instr
; Funcion mediana (51 instr, 1 calls).
; tags: calls_kernel, medium
; callers: sub_0EE1
; calls (inter): KERNEL.OPENFILE
;----------------------------------------------------------------------
L_0DCE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     si, word ptr es:[bx]            ; 26 8B 37
        or      si, si                          ; 0B F6
        jne     L_0E14                          ; 75 35
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xa802                      ; B8 02 A8
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 1D 10 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        inc     ax                              ; 40
        jne     L_0E02                          ; 75 05
L_0DFD:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0E3C                          ; EB 3A
L_0E02:
        push    si                              ; 56
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 0x10]            ; FF 77 10
        push    word ptr [bx + 0xe]             ; FF 77 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A FF FF 00 00 [FIXUP]
L_0E14:
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x88                        ; 05 88 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL._LREAD               ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0DFD                          ; 75 D3
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_0E39                          ; 75 06
        push    si                              ; 56
        call    far KERNEL._LCLOSE              ; 9A 09 11 00 00 [FIXUP]
L_0E39:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
L_0E3C:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E43 -- offset 0x0E43 -- 66 instr
; Dispatcher: tabla de decisiones cmp+jcc (66 instr).
; tags: dispatcher
; callers: sub_0036, sub_0330, sub_05B9, sub_1D87, sub_200A
; calls (intra): sub_146C, sub_1FEB
;----------------------------------------------------------------------
L_0E43:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     word ptr [bp - 2], 0x130        ; C7 46 FE 30 01
        sub     si, si                          ; 2B F6
L_0E57:
        cmp     si, 8                           ; 83 FE 08
        jge     L_0EB8                          ; 7D 5C
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x16], 0         ; 83 BF 16 00 00
        je      L_0E7F                          ; 74 18
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [bx + 0x16]        ; 8B BF 16 00
        cmp     word ptr [di + 0x42], 0         ; 83 7D 42 00
        jne     L_0E82                          ; 75 0D
        test    byte ptr [di + 6], 1            ; F6 45 06 01
        jne     L_0E82                          ; 75 07
        push    si                              ; 56
        call    L_1FEB                          ; E8 6C 11
L_0E7F:
        inc     si                              ; 46
        jmp     L_0E57                          ; EB D5
L_0E82:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        add     word ptr [bp - 2], 2            ; 83 46 FE 02
        mov     word ptr [bx], si               ; 89 37
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [bx + 0x16]        ; 8B BF 16 00
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [di + 0x1a]                 ; 8D 45 1A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [di + 0x42]        ; 8B 45 42
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    L_146C                          ; E8 C6 05
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     bx, word ptr [bx + 0x16]        ; 8B 9F 16 00
        mov     ax, word ptr [bx + 0x42]        ; 8B 47 42
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 2], ax           ; 01 46 FE
        jmp     L_0E7F                          ; EB C7
L_0EB8:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, 0x130                       ; 2D 30 01
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0xfc], ax             ; A3 FC 00
        or      ax, ax                          ; 0B C0
        je      L_0ED4                          ; 74 0D
        mov     di, ax                          ; 8B F8
        dec     di                              ; 4F
        cmp     word ptr [0xfa], di             ; 39 3E FA 00
        jle     L_0ED4                          ; 7E 04
        mov     word ptr [0xfa], di             ; 89 3E FA 00
L_0ED4:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx], 0                ; C7 07 00 00
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0EE1 -- offset 0x0EE1 -- 233 instr
; Dispatcher: tabla de decisiones cmp+jcc (233 instr).
; tags: calls_gdi, calls_kernel, dispatcher
; callers: sub_0036, sub_1281
; calls (intra): sub_0DCE, sub_13C6, sub_19B9, sub_1BC4
; calls (inter): GDI.GETSPOOLJOB, KERNEL.DELETEPATHNAME, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.OPENFILE
;----------------------------------------------------------------------
L_0EE1:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        les     si, ptr [bp + 4]                ; C4 76 04
        mov     ax, word ptr es:[si + 2]        ; 26 8B 44 02
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        jne     L_0F0F                          ; 75 13
        mov     bx, si                          ; 8B DE
        test    byte ptr es:[bx], 1             ; 26 F6 07 01
        je      L_0F0A                          ; 74 06
L_0F04:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1174                          ; E9 6A 02
L_0F0A:
        sub     ax, ax                          ; 2B C0
        jmp     L_1174                          ; E9 65 02
L_0F0F:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, word ptr [bx + 0xa]         ; 8B 77 0A
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + si + 0x2e] ; 26 8B 40 2E
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, word ptr es:[si + 2]        ; 26 8B 44 02
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        jg      L_0F48                          ; 7F 18
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_0F48                          ; 74 12
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.GLOBALLOCK           ; 9A 87 11 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        or      ax, dx                          ; 0B C2
        jne     L_0F67                          ; 75 1F
L_0F48:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1BC4                          ; E8 6A 0C
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 2]               ; FF 77 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_19B9                          ; E8 54 0A
        jmp     L_0F04                          ; EB 9D
L_0F67:
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        or      ax, word ptr es:[bx + 8]        ; 26 0B 47 08
        jne     L_0F77                          ; 75 03
        jmp     L_1131                          ; E9 BA 01
L_0F77:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
        mov     dx, word ptr [bx + 0x14]        ; 8B 57 14
        sub     ax, word ptr [bx + 0xe]         ; 2B 47 0E
        sbb     dx, word ptr [bx + 0x10]        ; 1B 57 10
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      dx, dx                          ; 0B D2
        jb      L_0F9E                          ; 72 0E
        ja      L_0F97                          ; 77 05
        cmp     ax, 0x80                        ; 3D 80 00
        jbe     L_0F9E                          ; 76 07
L_0F97:
        mov     word ptr [bp - 0xe], 0x80       ; C7 46 F2 80 00
        jmp     L_0FA4                          ; EB 06
L_0F9E:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
L_0FA4:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jne     L_0FB7                          ; 75 0D
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        or      ax, word ptr es:[bx + 8]        ; 26 0B 47 08
        jne     L_0FE1                          ; 75 2A
L_0FB7:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    L_0DCE                          ; E8 08 FE
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        jne     L_0FCE                          ; 75 03
        jmp     L_10C5                          ; E9 F7 00
L_0FCE:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx + 4], 0xffff       ; C7 47 04 FF FF
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.GLOBALUNLOCK         ; 9A 59 11 00 00 [FIXUP]
        jmp     L_0F48                          ; E9 67 FF
L_0FE1:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 0xc], 0          ; 83 7F 0C 00
        jne     L_1033                          ; 75 49
        mov     si, bx                          ; 8B F3
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        mov     word ptr [si + 0x14], dx        ; 89 54 14
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     word ptr [bx + 0x10], dx        ; 89 57 10
        mov     word ptr [bx + 4], ax           ; 89 47 04
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_1029                          ; 74 21
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xa802                      ; B8 02 A8
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_1044                          ; EB 1B
L_1029:
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        jmp     L_1044                          ; EB 11
L_1033:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        mov     dx, word ptr [si + 0x14]        ; 8B 54 14
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     word ptr [bx + 0x10], dx        ; 89 57 10
L_1044:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        add     ax, 0x8a                        ; 05 8A 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        cmp     word ptr [bx + 4], 1            ; 83 7F 04 01
        jne     L_107C                          ; 75 19
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cdq                                     ; 99
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        add     word ptr [bx + 0x12], ax        ; 01 47 12
        adc     word ptr [bx + 0x14], dx        ; 11 57 14
        mov     word ptr [bx + 4], 0            ; C7 47 04 00 00
        jmp     L_0F77                          ; E9 FB FE
L_107C:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     word ptr [bx + 0xc]             ; FF 47 0C
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        cmp     ax, word ptr es:[bx + 4]        ; 26 3B 47 04
        jb      L_10A9                          ; 72 1B
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, word ptr [bp - 0x12]        ; 8B 76 EE
        mov     ax, word ptr es:[si + 6]        ; 26 8B 44 06
        mov     dx, word ptr es:[si + 8]        ; 26 8B 54 08
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     word ptr [bx + 0x14], dx        ; 89 57 14
        mov     word ptr [bx + 0xc], 0          ; C7 47 0C 00 00
        jmp     L_10BA                          ; EB 11
L_10A9:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        cdq                                     ; 99
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     word ptr [bx + 0x14], dx        ; 89 57 14
L_10BA:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx + 4], 1            ; C7 47 04 01 00
        jmp     L_0F77                          ; E9 B2 FE
L_10C5:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx + 0x16], 0         ; C7 47 16 00 00
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bx + 0x18], ax        ; 89 47 18
        sub     dx, dx                          ; 2B D2
        add     word ptr [bx + 0xe], ax         ; 01 47 0E
        adc     word ptr [bx + 0x10], dx        ; 11 57 10
        les     si, ptr [bp - 0x12]             ; C4 76 EE
        mov     ax, word ptr es:[si + 6]        ; 26 8B 44 06
        mov     dx, word ptr es:[si + 8]        ; 26 8B 54 08
        cmp     word ptr [bx + 0x10], dx        ; 39 57 10
        jne     L_10F0                          ; 75 05
        cmp     word ptr [bx + 0xe], ax         ; 39 47 0E
        je      L_10FD                          ; 74 0D
L_10F0:
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        or      ax, word ptr es:[bx + 8]        ; 26 0B 47 08
        jne     L_116A                          ; 75 6D
L_10FD:
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     si, word ptr es:[bx]            ; 26 8B 37
        or      si, si                          ; 0B F6
        je      L_110D                          ; 74 06
        push    si                              ; 56
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
L_110D:
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     dx, word ptr es:[bx + 8]        ; 26 8B 57 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        sub     word ptr es:[bx + 0xa], ax      ; 26 29 47 0A
        sbb     word ptr es:[bx + 0xc], dx      ; 26 19 57 0C
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        call    L_13C6                          ; E8 9C 02
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.GETSPOOLJOB             ; 9A 65 04 00 00 [FIXUP]
L_1131:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.DELETEPATHNAME       ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, word ptr [bx + 0xa]         ; 8B 77 0A
        inc     word ptr [bx + 0xa]             ; FF 47 0A
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + si + 0x2e], 0 ; 26 C7 40 2E 00 00
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.GLOBALUNLOCK         ; 9A 6E 11 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.GLOBALFREE           ; 9A 2D 02 00 00 [FIXUP]
L_1165:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_1174                          ; EB 0A
L_116A:
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.GLOBALUNLOCK         ; 9A DB 09 00 00 [FIXUP]
        jmp     L_1165                          ; EB F1
L_1174:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_117B -- offset 0x117B -- 53 instr
; Funcion mediana (53 instr, 6 calls).
; tags: calls_gdi, calls_kernel, medium
; callers: sub_0036, sub_05B9, sub_200A
; calls (intra): sub_13C6
; calls (inter): GDI.GETSPOOLJOB, KERNEL.DELETEPATHNAME, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_117B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.GLOBALLOCK           ; 9A A9 11 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        sub     si, si                          ; 2B F6
        jmp     L_11CE                          ; EB 39
L_1195:
        mov     di, word ptr [bp - 6]           ; 8B 7E FA
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr es:[bx + di + 0x2e] ; 26 8B 41 2E
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_11CD                          ; 74 26
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A 9E 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.DELETEPATHNAME       ; 9A 3D 11 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.GLOBALUNLOCK         ; 9A FA 11 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.GLOBALFREE           ; 9A 0B 12 00 00 [FIXUP]
L_11CD:
        inc     si                              ; 46
L_11CE:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     word ptr es:[bx + 2], si        ; 26 39 77 02
        jge     L_1195                          ; 7D BE
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        call    L_13C6                          ; E8 DE 01
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.GETSPOOLJOB             ; 9A 2D 11 00 00 [FIXUP]
        les     bx, ptr [bp - 6]                ; C4 5E FA
        or      byte ptr es:[bx], 2             ; 26 80 0F 02
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.GLOBALUNLOCK         ; 9A A7 13 00 00 [FIXUP]
        les     bx, ptr [bp - 6]                ; C4 5E FA
        test    byte ptr es:[bx], 1             ; 26 F6 07 01
        je      L_1211                          ; 74 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.GLOBALFREE           ; 9A 61 11 00 00 [FIXUP]
        jmp     L_1223                          ; EB 12
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1211 -- offset 0x1211 -- 13 instr
; Wrapper que delega en KERNEL.GLOBALREALLOC.
; tags: calls_kernel, wrapper
; calls (inter): KERNEL.GLOBALREALLOC
;----------------------------------------------------------------------
L_1211:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x2002                      ; B8 02 20
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
L_1223:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_122B -- offset 0x122B -- 33 instr
; Funcion mediana (33 instr, 0 calls).
; tags: medium
; callers: sub_05B9
;----------------------------------------------------------------------
L_122B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [0xfc]             ; A1 FC 00
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jl      L_1240                          ; 7C 07
        sub     ax, ax                          ; 2B C0
        jmp     L_127B                          ; EB 3E
L_123D:
        dec     word ptr [bp + 6]               ; FF 4E 06
L_1240:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x130], 8        ; 83 BF 30 01 08
        jae     L_123D                          ; 73 F1
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x130]       ; 8B 87 30 01
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_126D                          ; 7E 0F
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     bx, word ptr [bx + 0x16]        ; 8B 9F 16 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      word ptr [bx], ax               ; 09 07
        jmp     L_127B                          ; EB 0E
L_126D:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     bx, word ptr [bx + 0x16]        ; 8B 9F 16 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        and     word ptr [bx], ax               ; 21 07
L_127B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1281 -- offset 0x1281 -- 115 instr
; Dispatcher: tabla de decisiones cmp+jcc (115 instr).
; tags: calls_kernel, dispatcher
; callers: sub_0036, sub_05B9, sub_200A
; calls (intra): sub_0EE1, sub_196D, sub_1BC4
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_1281:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        cmp     word ptr [bp + 4], 0x1001       ; 81 7E 04 01 10
        jne     L_12C9                          ; 75 35
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 0x42], 0x14      ; 83 7F 42 14
        jl      L_12B5                          ; 7C 18
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        mov     ax, 0x1010                      ; B8 10 10
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1BC4                          ; E8 15 09
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_13BF                          ; E9 0A 01
L_12B5:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, word ptr [bx + 0x42]        ; 8B 77 42
        inc     word ptr [bx + 0x42]            ; FF 47 42
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + si + 0x1a], ax   ; 89 40 1A
        jmp     L_1351                          ; E9 88 00
L_12C9:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 2], -2           ; 83 7F 02 FE
        je      L_12E8                          ; 74 16
        cmp     word ptr [bx + 2], -1           ; 83 7F 02 FF
        je      L_12E8                          ; 74 10
        push    word ptr [bx + 2]               ; FF 77 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_196D                          ; E8 8D 06
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx + 2], 0xfffe       ; C7 47 02 FE FF
L_12E8:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, 0x1a                        ; 05 1A 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_12F6:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bx + 0x42], ax        ; 39 47 42
        jle     L_130B                          ; 7E 0A
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx], ax               ; 39 07
        jne     L_1328                          ; 75 1D
L_130B:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        dec     word ptr [bx + 0x42]            ; FF 4F 42
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_131C                          ; 75 05
        mov     word ptr [bx + 8], 0            ; C7 47 08 00 00
L_131C:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     word ptr [bp - 2], 2            ; 83 46 FE 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_1346                          ; EB 1E
L_1328:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        add     word ptr [bp - 2], 2            ; 83 46 FE 02
        jmp     L_12F6                          ; EB C5
L_1331:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        add     word ptr [bp - 2], 2            ; 83 46 FE 02
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bx], ax               ; 89 07
        inc     word ptr [bp - 0xa]             ; FF 46 F6
L_1346:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bx + 0x42], ax        ; 39 47 42
        jg      L_1331                          ; 7F E0
L_1351:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 8], 0            ; 83 7F 08 00
        jne     L_13AB                          ; 75 51
        cmp     word ptr [bx + 0x42], 0         ; 83 7F 42 00
        je      L_13AB                          ; 74 4B
        mov     word ptr [bx + 0xa], 0          ; C7 47 0A 00 00
        mov     word ptr [bx + 0xc], 0          ; C7 47 0C 00 00
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     word ptr [bp + 6], ax           ; 89 46 06
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        mov     word ptr [si + 0x14], dx        ; 89 54 14
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     word ptr [bx + 0x10], dx        ; 89 57 10
        mov     word ptr [bx + 0x18], ax        ; 89 47 18
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 4], ax           ; 89 47 04
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALLOCK           ; 9A 10 14 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [bp + 8]               ; FF 76 08
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0EE1                          ; E8 3E FB
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A 2F 14 00 00 [FIXUP]
L_13AB:
        cmp     word ptr [bp + 4], 0x1001       ; 81 7E 04 01 10
        jne     L_13B8                          ; 75 06
        inc     word ptr [0x14]                 ; FF 06 14 00
        jmp     L_13BC                          ; EB 04
L_13B8:
        dec     word ptr [0x14]                 ; FF 0E 14 00
L_13BC:
        mov     ax, 1                           ; B8 01 00
L_13BF:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_13C6 -- offset 0x13C6 -- 54 instr
; Funcion mediana (54 instr, 2 calls).
; tags: calls_kernel, medium
; callers: sub_0036, sub_0EE1, sub_117B
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_13C6:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sub     si, si                          ; 2B F6
L_13D8:
        cmp     si, 8                           ; 83 FE 08
        jge     L_143F                          ; 7D 62
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x16], 0         ; 83 BF 16 00 00
        jne     L_13EB                          ; 75 03
L_13E8:
        inc     si                              ; 46
        jmp     L_13D8                          ; EB ED
L_13EB:
        sub     di, di                          ; 2B FF
L_13ED:
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     bx, word ptr [bx + 0x16]        ; 8B 9F 16 00
        cmp     word ptr [bx + 0x42], di        ; 39 7F 42
        jle     L_13E8                          ; 7E EE
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     bx, word ptr [bx + 0x16]        ; 8B 9F 16 00
        mov     ax, di                          ; 8B C7
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr [bx + 0x1a]        ; 8B 47 1A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A 3A 0F 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        mov     dx, word ptr es:[bx + 0xc]      ; 26 8B 57 0C
        add     word ptr [bp - 4], ax           ; 01 46 FC
        adc     word ptr [bp - 2], dx           ; 11 56 FE
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far KERNEL.GLOBALUNLOCK         ; 9A DA 0F 00 00 [FIXUP]
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        test    byte ptr es:[bx], 1             ; 26 F6 07 01
        je      L_13E8                          ; 74 AC
        inc     di                              ; 47
        jmp     L_13ED                          ; EB AE
L_143F:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_144B -- offset 0x144B -- 14 instr
; Llama a servicios DOS via INT 21h (14 instr).
; tags: dos_caller, int_21
; callers: sub_185B
;----------------------------------------------------------------------
L_144B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x4400                      ; B8 00 44
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        int     0x21                            ; CD 21
        test    dx, 0x80                        ; F7 C2 80 00
        je      L_1466                          ; 74 0A
        xor     dh, dh                          ; 32 F6
        or      dl, 0x20                        ; 80 CA 20
        mov     ax, 0x4401                      ; B8 01 44
        int     0x21                            ; CD 21
L_1466:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_146C -- offset 0x146C -- 13 instr
; Funcion hoja (no llama a otras, 13 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0E43
;----------------------------------------------------------------------
L_146C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        lds     si, ptr [bp + 6]                ; C5 76 06
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1484 -- offset 0x1484 -- 149 instr
; Dispatcher: tabla de decisiones cmp+jcc (149 instr).
; tags: calls_user, dispatcher, far
; callers: sub_0330
; calls (intra): sub_07D5, sub_0B3A
; calls (inter): USER.ENABLEMENUITEM, USER.GETCLIENTRECT, USER.GETDC, USER.GETKEYSTATE, USER.GETMENU, USER.RELEASEDC (+1 mas)
;----------------------------------------------------------------------
L_1484:
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
        mov     si, word ptr [0xd0]             ; 8B 36 D0 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 9                           ; 3D 09 00
        jne     L_14A2                          ; 75 03
        jmp     L_152E                          ; E9 8C 00
L_14A2:
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_14AF                          ; 74 08
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_1523                          ; 74 77
        jmp     L_15DC                          ; E9 2D 01
L_14AF:
        dec     si                              ; 4E
        or      si, si                          ; 0B F6
        jge     L_14B7                          ; 7D 03
        jmp     L_15DC                          ; E9 25 01
L_14B7:
        cmp     word ptr [0xd0], si             ; 39 36 D0 00
        jne     L_14C0                          ; 75 03
        jmp     L_15DC                          ; E9 1C 01
L_14C0:
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A 01 16 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        mov     cx, word ptr [0x100]            ; 8B 0E 00 01
        idiv    cx                              ; F7 F9
        mov     di, ax                          ; 8B F8
        cmp     word ptr [0xfa], si             ; 39 36 FA 00
        jle     L_14E2                          ; 7E 03
        jmp     L_1573                          ; E9 91 00
L_14E2:
        mov     ax, word ptr [0xfa]             ; A1 FA 00
        add     ax, di                          ; 03 C7
        cmp     ax, si                          ; 3B C6
        jg      L_14EE                          ; 7F 03
        jmp     L_1573                          ; E9 85 00
L_14EE:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETDC                  ; 9A 34 08 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    ax                              ; 50
        push    word ptr [0xd0]                 ; FF 36 D0 00
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B3A                          ; E8 34 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     word ptr [0xd0], si             ; 89 36 D0 00
        push    si                              ; 56
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B3A                          ; E8 24 F6
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far USER.RELEASEDC              ; 9A 83 0A 00 00 [FIXUP]
        jmp     L_1595                          ; EB 72
L_1523:
        inc     si                              ; 46
        mov     ax, word ptr [0xfc]             ; A1 FC 00
        cmp     si, ax                          ; 3B F0
        jne     L_14B7                          ; 75 8C
        jmp     L_15DC                          ; E9 AE 00
L_152E:
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_1554                          ; 7D 19
        dec     si                              ; 4E
        or      si, si                          ; 0B F6
        jge     L_1543                          ; 7D 03
        jmp     L_15DC                          ; E9 99 00
L_1543:
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x130], 8        ; 83 BF 30 01 08
        jae     L_1551                          ; 73 03
        jmp     L_14B7                          ; E9 66 FF
L_1551:
        dec     si                              ; 4E
        jmp     L_1543                          ; EB EF
L_1554:
        inc     si                              ; 46
        mov     ax, word ptr [0xfc]             ; A1 FC 00
        cmp     si, ax                          ; 3B F0
        jge     L_156A                          ; 7D 0E
        jmp     L_155F                          ; EB 01
L_155E:
        inc     si                              ; 46
L_155F:
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x130], 8        ; 83 BF 30 01 08
        ja      L_155E                          ; 77 F4
L_156A:
        cmp     word ptr [0xfc], si             ; 39 36 FC 00
        jle     L_15DC                          ; 7E 6C
        jmp     L_14B7                          ; E9 44 FF
L_1573:
        cmp     word ptr [0xfa], si             ; 39 36 FA 00
        jg      L_157D                          ; 7F 04
        or      di, di                          ; 0B FF
        jne     L_1583                          ; 75 06
L_157D:
        mov     word ptr [0xfa], si             ; 89 36 FA 00
        jmp     L_158B                          ; EB 08
L_1583:
        mov     ax, si                          ; 8B C6
        sub     ax, di                          ; 2B C7
        inc     ax                              ; 40
        mov     word ptr [0xfa], ax             ; A3 FA 00
L_158B:
        mov     word ptr [0xd0], si             ; 89 36 D0 00
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_07D5                          ; E8 40 F2
L_1595:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETMENU                ; 9A 09 0A 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [0x10]             ; A1 10 00
        cmp     word ptr [bx + 0x130], ax       ; 39 87 30 01
        jbe     L_15B3                          ; 76 04
        sub     ax, ax                          ; 2B C0
        jmp     L_15B6                          ; EB 03
L_15B3:
        mov     ax, 1                           ; B8 01 00
L_15B6:
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 28 0A 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        imul    word ptr [0xfa]                 ; F7 2E FA 00
        cdq                                     ; 99
        mov     cx, word ptr [0xfc]             ; 8B 0E FC 00
        dec     cx                              ; 49
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A BF 16 00 00 [FIXUP]
L_15DC:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_15E9 -- offset 0x15E9 -- 95 instr
; Dispatcher: tabla de decisiones cmp+jcc (95 instr).
; tags: calls_user, dispatcher, far
; callers: sub_0330
; calls (inter): USER.GETCLIENTRECT, USER.SETSCROLLPOS
;----------------------------------------------------------------------
L_15E9:
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
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A EE 07 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        mov     cx, word ptr [0x100]            ; 8B 0E 00 01
        idiv    cx                              ; F7 F9
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [0xfc]             ; A1 FC 00
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 5                           ; 3D 05 00
        ja      L_1630                          ; 77 10
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x1699]       ; 2E FF A7 99 16
        mov     ax, word ptr [0xfa]             ; A1 FA 00
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jg      L_1635                          ; 7F 05
L_1630:
        sub     ax, ax                          ; 2B C0
        jmp     L_16C6                          ; E9 91 00
L_1635:
        inc     word ptr [0xfa]                 ; FF 06 FA 00
        jmp     L_16A5                          ; EB 6A
        cmp     word ptr [0xfa], 0              ; 83 3E FA 00 00
        je      L_1630                          ; 74 EE
        dec     word ptr [0xfa]                 ; FF 0E FA 00
        jmp     L_16A5                          ; EB 5D
        cmp     word ptr [0xfa], 0              ; 83 3E FA 00 00
        je      L_1630                          ; 74 E1
        sub     word ptr [0xfa], si             ; 29 36 FA 00
        cmp     word ptr [0xfa], 0              ; 83 3E FA 00 00
        jge     L_16A5                          ; 7D 4B
        mov     word ptr [0xfa], 0              ; C7 06 FA 00 00 00
        jmp     L_16A5                          ; EB 43
        mov     ax, word ptr [0xfa]             ; A1 FA 00
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_1630                          ; 74 C6
        add     ax, si                          ; 03 C6
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jl      L_1679                          ; 7C 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0xfa], ax             ; A3 FA 00
        jmp     L_16A5                          ; EB 2C
L_1679:
        add     word ptr [0xfa], si             ; 01 36 FA 00
        jmp     L_16A5                          ; EB 26
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        imul    word ptr [bp - 4]               ; F7 6E FC
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        mov     di, ax                          ; 8B F8
        cmp     di, word ptr [0xfa]             ; 3B 3E FA 00
        je      L_1630                          ; 74 9D
        mov     word ptr [0xfa], di             ; 89 3E FA 00
        jmp     L_16A5                          ; EB 0C
        cmp     dx, word ptr [0x1628]           ; 3B 16 28 16
        dec     ax                              ; 48
        push    ss                              ; 16
        bound   dx, dword ptr [0x167f]          ; 62 16 7F 16
        jg      L_16BB                          ; 7F 16
L_16A5:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        imul    word ptr [0xfa]                 ; F7 2E FA 00
        cdq                                     ; 99
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_16C6:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_16D3 -- offset 0x16D3 -- 142 instr
; Dispatcher: tabla de decisiones cmp+jcc (142 instr).
; tags: calls_user, dispatcher, far
; callers: sub_0B77
; calls (inter): USER.FLUSHCOMM, USER.GETCOMMERROR, USER.GETCURRENTTIME, USER.WRITECOMM
;----------------------------------------------------------------------
L_16D3:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        test    byte ptr [bx], 1                ; F6 07 01
        je      L_1711                          ; 74 23
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL._LWRITE              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        je      L_170B                          ; 74 04
        or      byte ptr [bp - 0xd], 0x80       ; 80 4E F3 80
L_170B:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        jmp     L_184F                          ; E9 3E 01
L_1711:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.WRITECOMM              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jle     L_172F                          ; 7E 03
        jmp     L_182F                          ; E9 00 01
L_172F:
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        je      L_1743                          ; 74 0B
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bx + 4], ax           ; 89 47 04
L_1743:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        push    word ptr [bx + 2]               ; FF 77 02
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCOMMERROR           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x12c], ax            ; A3 2C 01
        test    byte ptr [0x12c], 0xf           ; F6 06 2C 01 0F
        je      L_176C                          ; 74 0F
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        push    word ptr [bx + 2]               ; FF 77 02
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.FLUSHCOMM              ; 9A D2 19 00 00 [FIXUP]
L_176C:
        test    word ptr [0x12c], 0x1610        ; F7 06 2C 01 10 16
        je      L_1778                          ; 74 04
        or      byte ptr [bp - 0xd], 0x80       ; 80 4E F3 80
L_1778:
        test    word ptr [0x12c], 0x800         ; F7 06 2C 01 00 08
        je      L_17CA                          ; 74 4A
        call    far USER.GETCURRENTTIME         ; 9A FB 17 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        or      ax, word ptr [bx + 6]           ; 0B 47 06
        je      L_17BB                          ; 74 25
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bx + 4]           ; 2B 47 04
        sbb     dx, word ptr [bx + 6]           ; 1B 57 06
        or      dx, dx                          ; 0B D2
        jl      L_17CA                          ; 7C 27
        jg      L_17AA                          ; 7F 05
        cmp     ax, 0x3a98                      ; 3D 98 3A
        jb      L_17CA                          ; 72 20
L_17AA:
        or      byte ptr [bp - 0xd], 0x80       ; 80 4E F3 80
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bx + 4], ax           ; 89 47 04
        jmp     L_17CA                          ; EB 0F
L_17BB:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     word ptr [bx + 6], dx           ; 89 57 06
L_17CA:
        test    word ptr [0x12c], 0x100         ; F7 06 2C 01 00 01
        jne     L_17D5                          ; 75 03
        jmp     L_170B                          ; E9 36 FF
L_17D5:
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        shr     ax, 1                           ; D1 E8
        and     ax, 1                           ; 25 01 00
        mov     dx, si                          ; 8B D6
        mov     cl, 3                           ; B1 03
        shr     dx, cl                          ; D3 EA
        and     dx, 1                           ; 81 E2 01 00
        or      ax, dx                          ; 0B C2
        mov     cx, si                          ; 8B CE
        and     cx, 1                           ; 81 E1 01 00
        or      ax, cx                          ; 0B C1
        jne     L_17FA                          ; 75 03
        jmp     L_170B                          ; E9 11 FF
L_17FA:
        call    far USER.GETCURRENTTIME         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        or      ax, word ptr [bx + 6]           ; 0B 47 06
        je      L_183D                          ; 74 2D
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bx + 4]           ; 2B 47 04
        sbb     dx, word ptr [bx + 6]           ; 1B 57 06
        cmp     dx, 1                           ; 83 FA 01
        jge     L_1821                          ; 7D 03
        jmp     L_170B                          ; E9 EA FE
L_1821:
        jg      L_182B                          ; 7F 08
        cmp     ax, 0x5f90                      ; 3D 90 5F
        jae     L_182B                          ; 73 03
        jmp     L_170B                          ; E9 E0 FE
L_182B:
        or      byte ptr [bp - 0xd], 0x80       ; 80 4E F3 80
L_182F:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bx + 4], ax           ; 89 47 04
        jmp     L_170B                          ; E9 CE FE
L_183D:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     word ptr [bx + 6], dx           ; 89 57 06
        jmp     L_170B                          ; E9 BC FE
L_184F:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_185B -- offset 0x185B -- 120 instr
; Dispatcher: tabla de decisiones cmp+jcc (120 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; callers: sub_0B77
; calls (intra): sub_0D1E, sub_144B, sub_19F0, sub_1BC4
; calls (inter): KERNEL.LOCALALLOC, USER.GETCOMMSTATE, USER.OPENCOMM, USER.SETCOMMSTATE
;----------------------------------------------------------------------
L_185B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x22                        ; 83 EC 22
        push    di                              ; 57
        push    si                              ; 56
        jmp     L_186F                          ; EB 03
L_186C:
        inc     word ptr [bp + 6]               ; FF 46 06
L_186F:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_186C                          ; 74 F4
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.OPENCOMM               ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        cmp     ax, 0xfff6                      ; 3D F6 FF
        je      L_18BC                          ; 74 2E
        cmp     ax, 0xfffc                      ; 3D FC FF
        je      L_18E9                          ; 74 56
        cmp     ax, 0xfffe                      ; 3D FE FF
        je      L_18A6                          ; 74 0E
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_18C1                          ; 74 24
        or      si, si                          ; 0B F6
        jge     L_1913                          ; 7D 72
        mov     di, 0xb                         ; BF 0B 00
        jmp     L_18A9                          ; EB 03
L_18A6:
        mov     di, 0x14                        ; BF 14 00
L_18A9:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    di                              ; 57
        mov     ax, 0x1030                      ; B8 30 10
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1BC4                          ; E8 0A 03
        jmp     L_18EC                          ; EB 30
L_18BC:
        mov     di, 0x16                        ; BF 16 00
        jmp     L_18A9                          ; EB E8
L_18C1:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LCREAT              ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jl      L_190E                          ; 7C 39
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 4D 19 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        jne     L_18F1                          ; 75 08
L_18E9:
        call    L_0D1E                          ; E8 32 F4
L_18EC:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1960                          ; EB 6F
L_18F1:
        push    si                              ; 56
        call    L_144B                          ; E8 56 FB
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     word ptr [bx], 1                ; C7 07 01 00
L_18FC:
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     word ptr [bx + 2], si           ; 89 77 02
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, bx                          ; 8B C3
        jmp     L_1960                          ; EB 52
L_190E:
        mov     di, 0x17                        ; BF 17 00
        jmp     L_18A9                          ; EB 96
L_1913:
        push    si                              ; 56
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCOMMSTATE           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_19F0                          ; E8 C4 00
        or      ax, ax                          ; 0B C0
        je      L_1944                          ; 74 14
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETCOMMSTATE           ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1944                          ; 74 06
        mov     di, 0x15                        ; BF 15 00
        jmp     L_18A9                          ; E9 65 FF
L_1944:
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        je      L_18E9                          ; 74 91
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx], 0                ; C7 07 00 00
        jmp     L_18FC                          ; EB 9C
L_1960:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_196D -- offset 0x196D -- 31 instr
; Funcion mediana (31 instr, 2 calls).
; tags: calls_kernel, calls_user, far, medium
; callers: sub_0330, sub_0B77, sub_1281, sub_200A
; calls (inter): KERNEL.LOCALFREE, USER.CLOSECOMM
;----------------------------------------------------------------------
L_196D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], -1           ; 83 7E 06 FF
        je      L_19AE                          ; 74 31
        cmp     word ptr [bp + 6], -2           ; 83 7E 06 FE
        je      L_19AE                          ; 74 2B
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_19AE                          ; 74 25
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        test    byte ptr [bx], 1                ; F6 07 01
        je      L_199B                          ; 74 0A
        push    word ptr [bx + 2]               ; FF 77 02
        call    far KERNEL._LCLOSE              ; 9A 35 0E 00 00 [FIXUP]
        jmp     L_19A6                          ; EB 0B
L_199B:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 2]               ; FF 77 02
        call    far USER.CLOSECOMM              ; 9A FF FF 00 00 [FIXUP]
L_19A6:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_19AE:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_19B9 -- offset 0x19B9 -- 26 instr
; Funcion sin clasificar definitiva (26 instr).
; tags: calls_user, far, small
; callers: sub_0036, sub_05B9, sub_0B77, sub_0EE1, sub_200A
; calls (inter): USER.ESCAPECOMMFUNCTION, USER.FLUSHCOMM
;----------------------------------------------------------------------
L_19B9:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        test    byte ptr [bx], 1                ; F6 07 01
        jne     L_19E5                          ; 75 1A
        push    word ptr [bx + 2]               ; FF 77 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.FLUSHCOMM              ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 2]               ; FF 77 02
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far USER.ESCAPECOMMFUNCTION     ; 9A FF FF 00 00 [FIXUP]
L_19E5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_19F0 -- offset 0x19F0 -- 145 instr
; Dispatcher: tabla de decisiones cmp+jcc (145 instr).
; tags: calls_kernel, dispatcher
; callers: sub_185B
; calls (intra): sub_1B8B
; calls (inter): KERNEL.GETPROFILESTRING, KERNEL.LSTRCPY
;----------------------------------------------------------------------
L_19F0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x3c                        ; 83 EC 3C
        push    si                              ; 56
        mov     word ptr [bp - 0x36], 0         ; C7 46 CA 00 00
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
L_1A11:
        mov     si, word ptr [bp - 0xc]         ; 8B 76 F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        cmp     byte ptr [bp + si - 0xa], 0     ; 80 7A F6 00
        jne     L_1A11                          ; 75 F4
        mov     si, word ptr [bp - 0xc]         ; 8B 76 F4
        mov     byte ptr [bp + si - 0xa], 0     ; C6 42 F6 00
        dec     word ptr [bp - 0xc]             ; FF 4E F4
        mov     si, word ptr [bp - 0xc]         ; 8B 76 F4
        mov     byte ptr [bp + si - 0xa], 0x3a  ; C6 42 F6 3A
        mov     ax, 0x45                        ; B8 45 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x44                        ; B8 44 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1A54                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_1B84                          ; E9 30 01
L_1A54:
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], ss        ; 8C 56 C8
        mov     word ptr [bp - 0x36], 1         ; C7 46 CA 01 00
        jmp     L_1A77                          ; EB 13
L_1A64:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        cmp     byte ptr es:[bx], 0x2c          ; 26 80 3F 2C
        jne     L_1A74                          ; 75 07
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        inc     word ptr [bp - 0x36]            ; FF 46 CA
L_1A74:
        inc     word ptr [bp - 0x3a]            ; FF 46 C6
L_1A77:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1A64                          ; 75 E4
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0xe], 0x11    ; 26 C6 47 0E 11
        mov     byte ptr es:[bx + 0xf], 0x13    ; 26 C6 47 0F 13
        or      byte ptr es:[bx + 0xd], 1       ; 26 80 4F 0D 01
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], ss        ; 8C 56 C8
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_1B79                          ; E9 D6 00
L_1AA3:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_1AE2                          ; 74 36
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        or      ax, ax                          ; 0B C0
        je      L_1ACC                          ; 74 19
        cmp     ax, 1                           ; 3D 01 00
        je      L_1AF3                          ; 74 3B
        cmp     ax, 2                           ; 3D 02 00
        je      L_1B24                          ; 74 67
        cmp     ax, 3                           ; 3D 03 00
        je      L_1B3C                          ; 74 7A
        cmp     ax, 4                           ; 3D 04 00
        jne     L_1ACA                          ; 75 03
        jmp     L_1B54                          ; E9 8A 00
L_1ACA:
        jmp     L_1AE2                          ; EB 16
L_1ACC:
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        call    L_1B8B                          ; E8 B6 00
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_1AE2                          ; 74 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 1], si        ; 26 89 77 01
L_1AE2:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        inc     word ptr [bp - 0x3a]            ; FF 46 C6
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1AF1                          ; 75 03
        jmp     L_1B76                          ; E9 85 00
L_1AF1:
        jmp     L_1AE2                          ; EB EF
L_1AF3:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        cmp     byte ptr es:[bx], 0x6e          ; 26 80 3F 6E
        je      L_1B02                          ; 74 06
        cmp     byte ptr es:[bx], 0x4e          ; 26 80 3F 4E
        jne     L_1B06                          ; 75 04
L_1B02:
        sub     al, al                          ; 2A C0
        jmp     L_1B1B                          ; EB 15
L_1B06:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        cmp     byte ptr es:[bx], 0x6f          ; 26 80 3F 6F
        je      L_1B15                          ; 74 06
        cmp     byte ptr es:[bx], 0x4f          ; 26 80 3F 4F
        jne     L_1B19                          ; 75 04
L_1B15:
        mov     al, 1                           ; B0 01
        jmp     L_1B1B                          ; EB 02
L_1B19:
        mov     al, 2                           ; B0 02
L_1B1B:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 4], al        ; 26 88 47 04
        jmp     L_1AE2                          ; EB BE
L_1B24:
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        call    L_1B8B                          ; E8 5E 00
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_1AE2                          ; 74 AF
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 3], al        ; 26 88 47 03
        jmp     L_1AE2                          ; EB A6
L_1B3C:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        cmp     byte ptr es:[bx], 0x31          ; 26 80 3F 31
        jne     L_1B49                          ; 75 04
        sub     al, al                          ; 2A C0
        jmp     L_1B4B                          ; EB 02
L_1B49:
        mov     al, 2                           ; B0 02
L_1B4B:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 5], al        ; 26 88 47 05
        jmp     L_1AE2                          ; EB 8E
L_1B54:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 8], 0         ; 26 C7 47 08 00 00
        mov     word ptr es:[bx + 0xa], 0       ; 26 C7 47 0A 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        or      byte ptr es:[bx + 0xc], 8       ; 26 80 4F 0C 08
        or      byte ptr es:[bx + 0xc], 0x10    ; 26 80 4F 0C 10
        jmp     L_1AE2                          ; E9 6C FF
L_1B76:
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_1B79:
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jge     L_1B84                          ; 7D 03
        jmp     L_1AA3                          ; E9 1F FF
L_1B84:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1B8B -- offset 0x1B8B -- 22 instr
; Funcion sin clasificar definitiva (22 instr).
; tags: small
; callers: sub_19F0
;----------------------------------------------------------------------
L_1B8B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_1BAE                          ; EB 16
L_1B98:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cwde                                    ; 98
        sub     ax, 0x30                        ; 2D 30 00
        add     word ptr [bp - 2], ax           ; 01 46 FE
        inc     word ptr [bp + 4]               ; FF 46 04
L_1BAE:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        or      al, al                          ; 0A C0
        jne     L_1B98                          ; 75 DD
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1BC4 -- offset 0x1BC4 -- 40 instr
; Funcion mediana (40 instr, 3 calls).
; tags: calls_user, medium
; callers: sub_0036, sub_0B77, sub_0EE1, sub_1281, sub_185B, sub_1DED (+1 mas)
; calls (intra): sub_0D3C
; calls (inter): USER.LOADSTRING, USER.MESSAGEBOX
;----------------------------------------------------------------------
L_1BC4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc8                        ; 81 EC C8 00
        push    word ptr [0xfe]                 ; FF 36 FE 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A F1 1B 00 00 [FIXUP]
        push    word ptr [0xfe]                 ; FF 36 FE 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A A2 08 00 00 [FIXUP]
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0xc8]                 ; 8D 86 38 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0D3C                          ; E8 33 F1
        push    word ptr [0x2e]                 ; FF 36 2E 00
        lea     ax, [bp - 0xc8]                 ; 8D 86 38 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.MESSAGEBOX             ; 9A 18 0C 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1C26 -- offset 0x1C26 -- 100 instr
; Funcion compleja: 100 instrucciones, 5 llamadas, 0 branches.
; tags: calls_user, complex
; callers: sub_0036
; calls (intra): sub_1CF8
; calls (inter): USER.CHANGEMENU, USER.CREATEWINDOW, USER.GETSYSTEMMENU, USER.LOADSTRING
;----------------------------------------------------------------------
L_1C26:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x30                        ; 83 EC 30
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 51 1C 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x102                       ; B8 02 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 66 1C 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        mov     ax, 0xd2                        ; B8 D2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 7B 1C 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A DC 1B 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [0x2c], ax             ; A3 2C 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x102                       ; B8 02 01
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1CF8                          ; E8 66 00
        mov     ax, 0x102                       ; B8 02 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x3e7                       ; B8 E7 03
        push    ax                              ; 50
        mov     ax, 0x900                       ; B8 00 09
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A EB 1C 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3e7                       ; B8 E7 03
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1CF8 -- offset 0x1CF8 -- 59 instr
; Funcion mediana (59 instr, 5 calls).
; tags: calls_kernel, calls_user, far, medium
; callers: sub_1C26
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE, USER.LOADCURSOR, USER.LOADICON, USER.REGISTERCLASS
;----------------------------------------------------------------------
L_1CF8:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 4B 1F 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0xe], ax         ; 89 44 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        mov     word ptr [si + 0x14], dx        ; 89 54 14
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [si + 0x16], ax        ; 89 44 16
        mov     word ptr [si + 0x18], dx        ; 89 54 18
        mov     word ptr [si + 0x10], 6         ; C7 44 10 06 00
        mov     word ptr [si + 2], OFFSET _entry_1 ; C7 44 02 A1 00 [FIXUP]
        mov     word ptr [si + 4], OFFSET _entry_1 ; C7 44 04 A4 00 [FIXUP]
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1D72                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1D7B                          ; EB 09
L_1D72:
        push    si                              ; 56
        call    far KERNEL.LOCALFREE            ; 9A F9 1F 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_1D7B:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1D87 -- offset 0x1D87 -- 40 instr
; Funcion mediana (40 instr, 5 calls).
; tags: calls_gdi, calls_user, far, medium
; callers: sub_0036
; calls (intra): sub_0E43
; calls (inter): GDI.GETSPOOLJOB, GDI.GETTEXTMETRICS, USER.GETDC, USER.RELEASEDC
;----------------------------------------------------------------------
L_1D87:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x28                        ; 83 EC 28
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETDC                  ; 9A F2 14 00 00 [FIXUP]
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        push    ax                              ; 50
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x28]            ; FF 76 D8
        call    far USER.RELEASEDC              ; 9A 1D 15 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        mov     word ptr [0x100], ax            ; A3 00 01
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr [0x12e], ax            ; A3 2E 01
        mov     word ptr [0xd0], 0              ; C7 06 D0 00 00 00
        mov     word ptr [0xfa], 0              ; C7 06 FA 00 00 00
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.GETSPOOLJOB             ; 9A 5F 1E 00 00 [FIXUP]
        call    L_0E43                          ; E8 61 F0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1DED -- offset 0x1DED -- 45 instr
; Funcion mediana (45 instr, 3 calls).
; tags: calls_kernel, medium
; callers: sub_0036
; calls (intra): sub_1BC4
; calls (inter): KERNEL.GETPROFILESTRING, KERNEL.LSTRCMP
;----------------------------------------------------------------------
L_1DED:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x50                        ; 83 EC 50
        mov     ax, 0x55                        ; B8 55 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4d                        ; B8 4D 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4c                        ; B8 4C 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 47 1A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1E3E                          ; 74 2A
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x5d                        ; B8 5D 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 91 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1E3E                          ; 75 17
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        mov     ax, 0x1000                      ; B8 00 10
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1BC4                          ; E8 8B FD
        mov     ax, 1                           ; B8 01 00
        jmp     L_1E40                          ; EB 02
L_1E3E:
        sub     ax, ax                          ; 2B C0
L_1E40:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1E44 -- offset 0x1E44 -- 68 instr
; Dispatcher: tabla de decisiones cmp+jcc (68 instr).
; tags: calls_gdi, dispatcher
; callers: sub_0036, sub_0330
; calls (intra): sub_1BC4, sub_1EE3
; calls (inter): GDI.GETSPOOLJOB
;----------------------------------------------------------------------
L_1E44:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [0x10]             ; A1 10 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1E80                          ; 74 2A
        mov     ax, 0x1d                        ; B8 1D 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.GETSPOOLJOB             ; 9A 89 1E 00 00 [FIXUP]
        or      dx, dx                          ; 0B D2
        jl      L_1E80                          ; 7C 19
        jg      L_1E6E                          ; 7F 05
        cmp     ax, 8                           ; 3D 08 00
        jbe     L_1E80                          ; 76 12
L_1E6E:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        mov     ax, 0x1030                      ; B8 30 10
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1BC4                          ; E8 44 FD
L_1E80:
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.GETSPOOLJOB             ; 9A FD 1E 00 00 [FIXUP]
        mov     word ptr [0x10], ax             ; A3 10 00
        or      ax, ax                          ; 0B C0
        jg      L_1E9A                          ; 7F 06
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_1E9D                          ; 74 03
L_1E9A:
        call    L_1EE3                          ; E8 46 00
L_1E9D:
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        jle     L_1EA9                          ; 7E 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1EDD                          ; EB 34
L_1EA9:
        mov     ax, word ptr [0x10]             ; A1 10 00
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jne     L_1EB7                          ; 75 06
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1EDA                          ; 74 23
L_1EB7:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        cmp     word ptr [0x10], ax             ; 39 06 10 00
        je      L_1EC5                          ; 74 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_1EC8                          ; EB 03
L_1EC5:
        mov     ax, 1                           ; B8 01 00
L_1EC8:
        push    ax                              ; 50
        mov     ax, 0x1030                      ; B8 30 10
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1BC4                          ; E8 F0 FC
        mov     word ptr [0xd0], 0              ; C7 06 D0 00 00 00
L_1EDA:
        mov     ax, 0xffff                      ; B8 FF FF
L_1EDD:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1EE3 -- offset 0x1EE3 -- 97 instr
; Dispatcher: tabla de decisiones cmp+jcc (97 instr).
; tags: calls_gdi, calls_kernel, dispatcher
; callers: sub_1E44
; calls (intra): sub_0D1E, sub_1FEB
; calls (inter): GDI.GETSPOOLJOB, KERNEL.LOCALALLOC, KERNEL.LSTRCPY, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_1EE3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x20a                       ; 81 EC 0A 02
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x208], 0x200    ; C7 86 F8 FD 00 02
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETSPOOLJOB             ; 9A EB 11 00 00 [FIXUP]
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        mov     word ptr [bp - 0x20a], ax       ; 89 86 F6 FD
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_1F0E:
        cmp     word ptr [bp - 8], 8            ; 83 7E F8 08
        jl      L_1F17                          ; 7C 03
        jmp     L_1FE5                          ; E9 CE 00
L_1F17:
        mov     ax, word ptr [bp - 0x20a]       ; 8B 86 F6 FD
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_1F1E:
        mov     bx, word ptr [bp - 0x20a]       ; 8B 9E F6 FD
        inc     word ptr [bp - 0x20a]           ; FF 86 F6 FD
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_1F1E                          ; 75 F3
        mov     bx, word ptr [bp - 0x20a]       ; 8B 9E F6 FD
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1FB3                          ; 74 7F
        mov     di, word ptr [bp - 8]           ; 8B 7E F8
        shl     di, 1                           ; D1 E7
        add     di, 0x16                        ; 81 C7 16 00
        cmp     word ptr [di], 0                ; 83 3D 00
        jne     L_1F5D                          ; 75 1B
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x108                       ; B8 08 01
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A DE 18 00 00 [FIXUP]
        mov     word ptr [di], ax               ; 89 05
        or      ax, ax                          ; 0B C0
        jne     L_1F5D                          ; 75 08
        call    L_0D1E                          ; E8 C6 ED
L_1F58:
        inc     word ptr [bp - 8]               ; FF 46 F8
        jmp     L_1F0E                          ; EB B1
L_1F5D:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bx + 0x16]        ; 8B B7 16 00
        lea     ax, [si + 0x66]                 ; 8D 44 66
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x20a]       ; 8B 86 F6 FD
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A A3 1F 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x20a]       ; 8B 86 F6 FD
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 8B 1F 00 00 [FIXUP]
        mov     word ptr [si + 0x86], ax        ; 89 84 86 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 67 09 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [si + 0x64], ax        ; 89 44 64
        dec     word ptr [bp - 2]               ; FF 4E FE
        lea     ax, [si + 0x44]                 ; 8D 44 44
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 0D 1A 00 00 [FIXUP]
        mov     word ptr [si + 2], 0xfffe       ; C7 44 02 FE FF
        mov     word ptr [si + 6], 1            ; C7 44 06 01 00
        jmp     L_1FD3                          ; EB 20
L_1FB3:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [bx + 0x16]        ; 8B BF 16 00
        or      di, di                          ; 0B FF
        je      L_1FD3                          ; 74 13
        cmp     word ptr [di + 0x42], 0         ; 83 7D 42 00
        je      L_1FCD                          ; 74 07
        mov     word ptr [di + 6], 0            ; C7 45 06 00 00
        jmp     L_1FD3                          ; EB 06
L_1FCD:
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_1FEB                          ; E8 18 00
L_1FD3:
        mov     bx, word ptr [bp - 0x20a]       ; 8B 9E F6 FD
        inc     word ptr [bp - 0x20a]           ; FF 86 F6 FD
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_1FE3                          ; 75 03
        jmp     L_1F58                          ; E9 75 FF
L_1FE3:
        jmp     L_1FD3                          ; EB EE
L_1FE5:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1FEB -- offset 0x1FEB -- 12 instr
; Wrapper que delega en KERNEL.LOCALFREE.
; tags: calls_kernel, wrapper
; callers: sub_0E43, sub_1EE3
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_1FEB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        shl     si, 1                           ; D1 E6
        push    word ptr [si + 0x16]            ; FF B4 16 00
        call    far KERNEL.LOCALFREE            ; 9A AA 19 00 00 [FIXUP]
        mov     word ptr [si + 0x16], 0         ; C7 84 16 00 00 00
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_200A -- offset 0x200A -- 148 instr
; Llama a servicios DOS via INT 21h (148 instr).
; tags: calls_kernel, calls_user, dos_caller, int_21
; callers: sub_0330
; calls (intra): sub_0036, sub_0E43, sub_117B, sub_1281, sub_196D, sub_19B9 (+2 mas)
; calls (inter): KERNEL.FATALEXIT, KERNEL.GLOBALUNLOCK, KERNEL.INITTASK, KERNEL.WAITEVENT, USER.INITAPP, USER.LOADSTRING (+1 mas)
;----------------------------------------------------------------------
L_200A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x74                        ; 83 EC 74
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
L_2014:
        cmp     si, 8                           ; 83 FE 08
        jge     L_2079                          ; 7D 60
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [bx + 0x16]        ; 8B BF 16 00
        or      di, di                          ; 0B FF
        je      L_208E                          ; 74 69
        cmp     word ptr [di + 0x42], 0         ; 83 7D 42 00
        je      L_208E                          ; 74 63
        push    word ptr [0xfe]                 ; FF 36 FE 00
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 52 20 00 00 [FIXUP]
        push    word ptr [0xfe]                 ; FF 36 FE 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 3D 1C 00 00 [FIXUP]
        push    word ptr [0x2e]                 ; FF 36 2E 00
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      al, 0x21                        ; 0C 21
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 1C 1C 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        je      L_2079                          ; 74 05
        sub     ax, ax                          ; 2B C0
        jmp     L_2101                          ; E9 88 00
L_2079:
        sub     si, si                          ; 2B F6
L_207B:
        cmp     si, 8                           ; 83 FE 08
        jge     L_20FB                          ; 7D 7B
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x16], 0         ; 83 BF 16 00 00
        jne     L_2091                          ; 75 06
L_208B:
        inc     si                              ; 46
        jmp     L_207B                          ; EB ED
L_208E:
        inc     si                              ; 46
        jmp     L_2014                          ; EB 83
L_2091:
        mov     di, si                          ; 8B FE
        shl     di, 1                           ; D1 E7
        mov     bx, word ptr [di + 0x16]        ; 8B 9D 16 00
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jle     L_20BC                          ; 7E 1D
        push    word ptr [bx + 2]               ; FF 77 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_19B9                          ; E8 12 F9
        mov     bx, word ptr [di + 0x16]        ; 8B 9D 16 00
        push    word ptr [bx + 2]               ; FF 77 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_196D                          ; E8 BA F8
        mov     bx, word ptr [di + 0x16]        ; 8B 9D 16 00
        mov     word ptr [bx + 2], 0xfffe       ; C7 47 02 FE FF
L_20BC:
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [bx + 0x16]        ; 8B BF 16 00
        test    byte ptr [di + 6], 2            ; F6 45 06 02
        je      L_20D2                          ; 74 08
        push    word ptr [di + 8]               ; FF 75 08
        call    far KERNEL.GLOBALUNLOCK         ; 9A C1 11 00 00 [FIXUP]
L_20D2:
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [bx + 0x16]        ; 8B BF 16 00
        or      di, di                          ; 0B FF
        je      L_208B                          ; 74 AD
        cmp     word ptr [di + 0x42], 0         ; 83 7D 42 00
        je      L_208B                          ; 74 A7
        mov     ax, word ptr [di + 0x1a]        ; 8B 45 1A
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    di                              ; 57
        push    ax                              ; 50
        mov     ax, 0x1002                      ; B8 02 10
        push    ax                              ; 50
        call    L_1281                          ; E8 8E F1
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_117B                          ; E8 82 F0
        jmp     L_20D2                          ; EB D7
L_20FB:
        call    L_0E43                          ; E8 45 ED
        mov     ax, 1                           ; B8 01 00
L_2101:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bp + di + 0x2b], bl   ; 00 5B 2B
        les     si, ptr [bp + di + 0x18]        ; C4 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_212D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_2129                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
L_2129:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
L_212D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.INITTASK             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2170                          ; 74 2B
        mov     word ptr [0x6e], 0              ; C7 06 6E 00 00 00
        mov     word ptr [0x60], cx             ; 89 0E 60 00
        push    di                              ; 57
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    dx                              ; 52
        call    L_227E                          ; E8 27 01
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far KERNEL.WAITEVENT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far USER.INITAPP                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2170                          ; 74 07
        call    L_0036                          ; E8 CA DE
        push    ax                              ; 50
        call    L_2310                          ; E8 A0 01
L_2170:
        mov     ax, 0x4cff                      ; B8 FF 4C
        int     0x21                            ; CD 21
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2175 -- offset 0x2175 -- 130 instr
; Funcion compleja: 130 instrucciones, 9 llamadas, 1 branches.
; tags: calls_kernel, complex
; callers: sub_232B
; calls (intra): sub_2320
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALCOMPACT, KERNEL.GLOBALFREE, KERNEL.GLOBALSIZE, KERNEL.LOCALALLOC, KERNEL.LOCALFREE (+2 mas)
;----------------------------------------------------------------------
L_2175:
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xffff                      ; B8 FF FF
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xffff                      ; B8 FF FF
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALALLOC           ; 9A A7 21 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        imul    word ptr [bp + 6]               ; F7 6E 06
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A DE 21 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALFREE            ; 9A ED 21 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALALLOC           ; 9A 0F 1D 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALFREE            ; 9A 74 1D 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALSIZE            ; 9A 56 22 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALFREE           ; 9A C9 11 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALSIZE           ; 9A 1A 02 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALSIZE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2263                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_2265                          ; EB 02
L_2263:
        sub     ax, ax                          ; 2B C0
L_2265:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL.GLOBALCOMPACT        ; 9A FF FF 00 00 [FIXUP]
        mov     cl, 4                           ; B1 04
        call    L_2320                          ; E8 A6 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_227E -- offset 0x227E -- 59 instr
; Llama a servicios DOS via INT 21h (59 instr).
; tags: complex_iterator, int_21, loop
; callers: sub_200A
;----------------------------------------------------------------------
L_227E:
        mov     bx, 0xbe                        ; BB BE 00
L_2281:
        cmp     bx, 0xc4                        ; 81 FB C4 00
        jae     L_228F                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_2281                          ; EB F2
L_228F:
        ret                                     ; C3
        mov     bx, 4                           ; BB 04 00
L_2293:
        mov     ax, 0x4400                      ; B8 00 44
        int     0x21                            ; CD 21
        jb      L_22A4                          ; 72 0A
        test    dl, 0x80                        ; F6 C2 80
        je      L_22A4                          ; 74 05
        or      byte ptr [bx + 0x92], 0x40      ; 80 8F 92 00 40
L_22A4:
        dec     bx                              ; 4B
        jns     L_2293                          ; 79 EC
        ret                                     ; C3
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     word ptr [0x74], ax             ; A3 74 00
        ret                                     ; C3
        mov     es, word ptr [0x6e]             ; 8E 06 6E 00
        mov     si, word ptr es:[0x2c]          ; 26 8B 36 2C 00
        mov     ax, 0x3500                      ; B8 00 35
        int     0x21                            ; CD 21
        mov     word ptr [0x62], bx             ; 89 1E 62 00
        mov     word ptr [0x64], es             ; 8C 06 64 00
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ax, 0x2500                      ; B8 00 25
        mov     dx, 0x2130                      ; BA 30 21
        int     0x21                            ; CD 21
        mov     cx, word ptr ss:[0xb4]          ; 36 8B 0E B4 00
        jcxz    L_22F9                          ; E3 22
        lds     ax, ptr ss:[0xb6]               ; 36 C5 06 B6 00
        mov     dx, ds                          ; 8C DA
        xor     bx, bx                          ; 33 DB
        lcall   ss:[0xb2]                       ; 36 FF 1E B2 00
        jae     L_22EA                          ; 73 03
        jmp     L_2133                          ; E9 49 FE
L_22EA:
        lds     ax, ptr ss:[0xba]               ; 36 C5 06 BA 00
        mov     dx, ds                          ; 8C DA
        mov     bx, 3                           ; BB 03 00
        lcall   ss:[0xb2]                       ; 36 FF 1E B2 00
L_22F9:
        push    ss                              ; 16
        pop     ds                              ; 1F
        ret                                     ; C3
        mov     cx, 0x14                        ; B9 14 00
        xor     bx, bx                          ; 33 DB
L_2301:
        test    byte ptr [bx + 0x92], 1         ; F6 87 92 00 01
        je      L_230C                          ; 74 04
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
L_230C:
        inc     bx                              ; 43
        loop    L_2301                          ; E2 F2
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2310 -- offset 0x2310 -- 8 instr
; Funcion sin clasificar definitiva (8 instr).
; tags: small
; callers: sub_0036, sub_0330, sub_200A
; calls (intra): sub_232B, sub_2361
;----------------------------------------------------------------------
L_2310:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_2361                          ; E8 4B 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_232B                          ; E8 0F 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2320 -- offset 0x2320 -- 6 instr
; Iterador con bucle (6 instr).
; tags: iterator, loop
; callers: sub_2175
;----------------------------------------------------------------------
L_2320:
        xor     ch, ch                          ; 32 ED
        jcxz    L_232A                          ; E3 06
L_2324:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_2324                          ; E2 FA
L_232A:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_232B -- offset 0x232B -- 21 instr
; Llama a servicios DOS via INT 21h (21 instr).
; tags: dos_caller, int_21
; callers: sub_2310
; calls (intra): sub_2175, sub_2373
;----------------------------------------------------------------------
L_232B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_2373                          ; E8 42 00
        call    L_2175                          ; E8 41 FE
        or      ah, ah                          ; 0A E4
        je      L_2342                          ; 74 0A
        cmp     byte ptr [bp + 4], 0            ; 80 7E 04 00
        jne     L_2342                          ; 75 04
        mov     byte ptr [bp + 4], 0xfe         ; C6 46 04 FE
L_2342:
        push    ds                              ; 1E
        lds     dx, ptr [0x62]                  ; C5 16 62 00
        mov     ax, 0x2500                      ; B8 00 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     cx, word ptr [0xb4]             ; 8B 0E B4 00
        jcxz    L_235A                          ; E3 07
        mov     bx, 2                           ; BB 02 00
        lcall   [0xb2]                          ; FF 1E B2 00
L_235A:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     ah, 0x4c                        ; B4 4C
        int     0x21                            ; CD 21
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2361 -- offset 0x2361 -- 10 instr
; Funcion sin clasificar definitiva (10 instr).
; tags: wrapper
; callers: sub_2310
;----------------------------------------------------------------------
L_2361:
        mov     bx, 0xc4                        ; BB C4 00
L_2364:
        cmp     bx, 0xc4                        ; 81 FB C4 00
        jae     L_2372                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_2364                          ; EB F2
L_2372:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2373 -- offset 0x2373 -- 10 instr
; Funcion sin clasificar definitiva (10 instr).
; tags: wrapper
; callers: sub_232B
;----------------------------------------------------------------------
L_2373:
        mov     bx, 0xc4                        ; BB C4 00
L_2376:
        cmp     bx, 0xc6                        ; 81 FB C6 00
        jae     L_2384                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_2376                          ; EB F2
L_2384:
        ret                                     ; C3

SPOOLER_TEXT ENDS

        END
