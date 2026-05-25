; AUTO-GENERATED from original WRITE segment 33
; segment_size=1247 bytes, flags=0xf130
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
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_173                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     bx, ax                          ; 03 D8
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [0x32a]            ; 2B 06 2A 03
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        call    far _entry_172                  ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [0x340]            ; 03 06 40 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     si, word ptr [bx + 6]           ; 8B 77 06
        sub     si, word ptr [0x1112]           ; 2B 36 12 11
        mov     word ptr [bp - 0xe], si         ; 89 76 F2
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_00C0                          ; 7D 2D
        mov     di, si                          ; 8B FE
        dec     di                              ; 4F
        cmp     di, 0x48                        ; 83 FF 48
        jge     L_009F                          ; 7D 04
        mov     ax, di                          ; 8B C7
        jmp     L_00A2                          ; EB 03
L_009F:
        mov     ax, 0x48                        ; B8 48 00
L_00A2:
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_00AB                          ; 7D 04
L_00A7:
        sub     ax, ax                          ; 2B C0
        jmp     L_0104                          ; EB 59
L_00AB:
        cmp     di, 0x48                        ; 83 FF 48
        jge     L_00B4                          ; 7D 04
        mov     ax, di                          ; 8B C7
        jmp     L_00B7                          ; EB 03
L_00B4:
        mov     ax, 0x48                        ; B8 48 00
L_00B7:
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, cx                          ; 2B C1
        jmp     L_0104                          ; EB 44
L_00C0:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jg      L_010D                          ; 7F 42
        mov     di, word ptr [bp - 0xe]         ; 8B 7E F2
        dec     di                              ; 4F
        cmp     di, 0x48                        ; 83 FF 48
        jge     L_00D8                          ; 7D 04
        mov     ax, di                          ; 8B C7
        jmp     L_00DB                          ; EB 03
L_00D8:
        mov     ax, 0x48                        ; B8 48 00
L_00DB:
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        cmp     ax, word ptr [0x13b8]           ; 3B 06 B8 13
        jle     L_00E9                          ; 7E 05
        mov     ax, word ptr [0x13b8]           ; A1 B8 13
        jmp     L_00F8                          ; EB 0F
L_00E9:
        cmp     di, 0x48                        ; 83 FF 48
        jge     L_00F2                          ; 7D 04
        mov     ax, di                          ; 8B C7
        jmp     L_00F5                          ; EB 03
L_00F2:
        mov     ax, 0x48                        ; B8 48 00
L_00F5:
        add     ax, word ptr [bp - 4]           ; 03 46 FC
L_00F8:
        mov     si, ax                          ; 8B F0
        sub     si, word ptr [bp - 0xe]         ; 2B 76 F2
        inc     si                              ; 46
        or      si, si                          ; 0B F6
        jl      L_00A7                          ; 7C A5
        mov     ax, si                          ; 8B C6
L_0104:
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_011A                          ; E8 0D 00
L_010D:
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
; sub_011A -- offset 0x011A -- 58 instr
; Funcion mediana (58 instr, 3 calls).
; tags: calls_user, far, medium
; callers: sub_01A8
; calls (intra): sub_01A8
; calls (inter): USER.SETRECT, USER.SETSCROLLPOS
;----------------------------------------------------------------------
L_011A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_019D                          ; 74 70
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 0x2e]            ; FF 77 2E
        mov     al, byte ptr [bx + 0x34]        ; 8A 47 34
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x1112]               ; FF 36 12 11
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 6]               ; FF 77 06
        push    word ptr [bx + 0xc]             ; FF 77 0C
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01A8                          ; E8 2C 00
        push    word ptr [0x322]                ; FF 36 22 03
        call    far _entry_156                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr [bx + 0xa], ax         ; 01 47 0A
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        test    byte ptr [bx], 0x80             ; F6 07 80
        je      L_019D                          ; 74 05
        call    far _entry_124                  ; 9A FF FF 00 00 [FIXUP]
L_019D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01A8 -- offset 0x01A8 -- 322 instr
; Dispatcher: tabla de decisiones cmp+jcc (322 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; callers: sub_011A
; calls (intra): sub_011A
; calls (inter): GDI.BITBLT, GDI.PATBLT, KERNEL.MAKEPROCINSTANCE, USER.ANYPOPUP, USER.ENUMWINDOWS, USER.GETWINDOWLONG (+5 mas)
;----------------------------------------------------------------------
L_01A8:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x20                        ; 83 EC 20
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_01C7                          ; 7D 07
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        neg     ax                              ; F7 D8
        jmp     L_01CA                          ; EB 03
L_01C7:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
L_01CA:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_01DA                          ; 7D 07
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
        jmp     L_01DD                          ; EB 03
L_01DA:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
L_01DD:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_01EF                          ; 74 09
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_01EF                          ; 74 03
        jmp     L_0395                          ; E9 A6 01
L_01EF:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [si]                   ; FF 34
        call    far _entry_84                   ; 9A 24 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    word ptr [si + 4]               ; FF 74 04
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 6]               ; FF 77 06
        mov     di, ax                          ; 8B F8
        call    far _entry_48                   ; 9A 38 02 00 00 [FIXUP]
        sub     ax, di                          ; 2B C7
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        or      ax, ax                          ; 0B C0
        jg      L_0219                          ; 7F 03
        jmp     L_0395                          ; E9 7C 01
L_0219:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 0xe]             ; FF 77 0E
        push    word ptr [si + 2]               ; FF 74 02
        call    far _entry_84                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        push    word ptr [si + 6]               ; FF 74 06
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 0xc]             ; FF 77 0C
        mov     di, ax                          ; 8B F8
        call    far _entry_48                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, di                          ; 2B C7
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        jg      L_0248                          ; 7F 03
        jmp     L_0395                          ; E9 4D 01
L_0248:
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ax                              ; 50
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 66 02 00 00 [FIXUP]
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bx + 0x32]        ; 8B 47 32
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        jg      L_027F                          ; 7F 03
        jmp     L_0379                          ; E9 FA 00
L_027F:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jg      L_028A                          ; 7F 03
        jmp     L_0379                          ; E9 EF 00
L_028A:
        call    far USER.ANYPOPUP               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_02F8                          ; 74 65
        mov     ax, word ptr [0x720]            ; A1 20 07
        or      ax, word ptr [0x722]            ; 0B 06 22 07
        jne     L_02B4                          ; 75 18
        mov     ax, OFFSET _entry_28            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_28            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x782]                ; FF 36 82 07
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x720], ax            ; A3 20 07
        mov     word ptr [0x722], dx            ; 89 16 22 07
L_02B4:
        push    word ptr [0x722]                ; FF 36 22 07
        push    word ptr [0x720]                ; FF 36 20 07
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.ENUMWINDOWS            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x1026], 0            ; 83 3E 26 10 00
        je      L_02F8                          ; 74 2C
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 0x2c]            ; FF 77 2C
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SCROLLWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x704], 1             ; C7 06 04 07 01 00
        call    far _entry_133                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x704], 0             ; C7 06 04 07 00 00
        jmp     L_0395                          ; E9 9D 00
L_02F8:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0309                          ; 74 0B
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        sub     word ptr [bp - 0xe], ax         ; 29 46 F2
        jmp     L_0312                          ; EB 09
L_0309:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sub     word ptr [bp - 0xc], ax         ; 29 46 F4
L_0312:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_0326                          ; 7D 0E
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     word ptr [bp - 0x1e], ax        ; 01 46 E2
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        jmp     L_0354                          ; EB 2E
L_0326:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_0334                          ; 7E 08
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     word ptr [bp - 0x12], ax        ; 01 46 EE
        jmp     L_0354                          ; EB 20
L_0334:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0348                          ; 7D 0E
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     word ptr [bp - 0x1c], ax        ; 01 46 E4
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [bp - 8], ax           ; 01 46 F8
        jmp     L_0354                          ; EB 0C
L_0348:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_0395                          ; 7E 47
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
L_0354:
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
L_0379:
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x790]                ; FF 36 90 07
        push    word ptr [0x78e]                ; FF 36 8E 07
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
L_0395:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xfff0                      ; B8 F0 FF
        push    ax                              ; 50
        call    far USER.GETWINDOWLONG          ; 9A FF FF 00 00 [FIXUP]
        test    dx, 0x8000                      ; F7 C2 00 80
        jne     L_03C7                          ; 75 06
L_03C1:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0454                          ; E9 8D 00
L_03C7:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETWINDOWRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 0x2c]            ; FF 77 2C
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A 0A 04 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 0x2c]            ; FF 77 2C
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.INTERSECTRECT          ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ISRECTEMPTY            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_044C                          ; 74 03
        jmp     L_03C1                          ; E9 75 FF
L_044C:
        mov     word ptr [0x1026], 1            ; C7 06 26 10 01 00
        sub     ax, ax                          ; 2B C0
L_0454:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [0x12ae]           ; 8B 36 AE 12
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        sub     si, word ptr [bx + 0xa]         ; 2B 77 0A
        cmp     word ptr [bp + 6], si           ; 39 76 06
        jle     L_047E                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_0481                          ; EB 03
L_047E:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
L_0481:
        mov     word ptr [bp + 6], ax           ; 89 46 06
        or      ax, ax                          ; 0B C0
        jle     L_0490                          ; 7E 08
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_011A                          ; E8 8C FC
        jmp     L_0495                          ; EB 05
L_0490:
        call    far _entry_174                  ; 9A D1 04 00 00 [FIXUP]
L_0495:
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
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        jge     L_04BC                          ; 7D 05
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        jmp     L_04BF                          ; EB 03
L_04BC:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
L_04BF:
        mov     word ptr [bp + 6], ax           ; 89 46 06
        or      ax, ax                          ; 0B C0
        jle     L_04D0                          ; 7E 0A
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_011A                          ; E8 4C FC
        jmp     L_04D5                          ; EB 05
L_04D0:
        call    far _entry_174                  ; 9A FF FF 00 00 [FIXUP]
L_04D5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
