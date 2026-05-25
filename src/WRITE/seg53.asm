; AUTO-GENERATED from original WRITE segment 53
; segment_size=923 bytes, flags=0xf130
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
        sub     sp, 0x138                       ; 81 EC 38 01
        cmp     word ptr [0x7a8], 0             ; 83 3E A8 07 00
        jne     L_001A                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_001C                          ; EB 02
L_001A:
        sub     ax, ax                          ; 2B C0
L_001C:
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x15                        ; 3D 15 00
        je      L_0042                          ; 74 1B
        cmp     ax, 0x1a                        ; 3D 1A 00
        jne     L_002F                          ; 75 03
        jmp     L_01AE                          ; E9 7F 01
L_002F:
        cmp     ax, 0x1b                        ; 3D 1B 00
        jne     L_0037                          ; 75 03
        jmp     L_02DB                          ; E9 A4 02
L_0037:
        cmp     ax, 0x1d                        ; 3D 1D 00
        jne     L_003F                          ; 75 03
        jmp     L_034C                          ; E9 0D 03
L_003F:
        jmp     L_0391                          ; E9 4F 03
L_0042:
        call    far _entry_282                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_004E                          ; 75 03
        jmp     L_0132                          ; E9 E4 00
L_004E:
        cmp     word ptr [0x7ba], 0             ; 83 3E BA 07 00
        je      L_00BD                          ; 74 68
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [0x786]                ; FF 36 86 07
        push    word ptr [0x784]                ; FF 36 84 07
        call    far GDI.SETBKCOLOR              ; 9A D1 00 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [0x78a]                ; FF 36 8A 07
        push    word ptr [0x788]                ; FF 36 88 07
        call    far GDI.SETTEXTCOLOR            ; 9A E2 00 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x78a]                ; FF 36 8A 07
        push    word ptr [0x788]                ; FF 36 88 07
        call    far GDI.CREATEPEN               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x132], ax       ; 89 86 CE FE
        or      ax, ax                          ; 0B C0
        jne     L_009D                          ; 75 0D
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 63 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x132], ax       ; 89 86 CE FE
L_009D:
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [bp - 0x132]           ; FF B6 CE FE
        call    far GDI.SELECTOBJECT            ; 9A B9 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.DELETEOBJECT            ; 9A 2E 01 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [0x78c]                ; FF 36 8C 07
        call    far GDI.SELECTOBJECT            ; 9A EF 00 00 00 [FIXUP]
L_00BD:
        cmp     word ptr [0x10b0], 0            ; 83 3E B0 10 00
        je      L_0112                          ; 74 4E
        push    word ptr [0x10b0]               ; FF 36 B0 10
        push    word ptr [0x786]                ; FF 36 86 07
        push    word ptr [0x784]                ; FF 36 84 07
        call    far GDI.SETBKCOLOR              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x10b0]               ; FF 36 B0 10
        push    word ptr [0x78a]                ; FF 36 8A 07
        push    word ptr [0x788]                ; FF 36 88 07
        call    far GDI.SETTEXTCOLOR            ; 9A 0E 01 00 00 [FIXUP]
        push    word ptr [0x10b0]               ; FF 36 B0 10
        push    word ptr [0x78c]                ; FF 36 8C 07
        call    far GDI.SELECTOBJECT            ; 9A 28 01 00 00 [FIXUP]
        cmp     word ptr [0x798], 0             ; 83 3E 98 07 00
        je      L_0112                          ; 74 18
        cmp     word ptr [0x792], 0             ; 83 3E 92 07 00
        je      L_0112                          ; 74 11
        push    word ptr [0x798]                ; FF 36 98 07
        push    word ptr [0x78a]                ; FF 36 8A 07
        push    word ptr [0x788]                ; FF 36 88 07
        call    far GDI.SETTEXTCOLOR            ; 9A 8E 01 00 00 [FIXUP]
L_0112:
        cmp     word ptr [0x780], 0             ; 83 3E 80 07 00
        je      L_0132                          ; 74 19
        push    word ptr [0x780]                ; FF 36 80 07
        call    far USER.GETDC                  ; 9A 3E 01 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [0x78c]                ; FF 36 8C 07
        call    far GDI.SELECTOBJECT            ; 9A 74 01 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.DELETEOBJECT            ; 9A 7A 01 00 00 [FIXUP]
L_0132:
        cmp     word ptr [0x13ca], 0            ; 83 3E CA 13 00
        je      L_0192                          ; 74 59
        push    word ptr [0x13ca]               ; FF 36 CA 13
        call    far USER.GETDC                  ; 9A 58 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x134], ax       ; 89 86 CC FE
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 87 01 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x136], ax       ; 89 86 CA FE
        or      ax, ax                          ; 0B C0
        jne     L_016B                          ; 75 0D
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 62 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x136], ax       ; 89 86 CA FE
L_016B:
        push    word ptr [bp - 0x134]           ; FF B6 CC FE
        push    word ptr [bp - 0x136]           ; FF B6 CA FE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x134]           ; FF B6 CC FE
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
L_0192:
        cmp     word ptr [0x2e0], 0             ; 83 3E E0 02 00
        jne     L_019C                          ; 75 03
        jmp     L_0391                          ; E9 F5 01
L_019C:
        cmp     word ptr [0xbdc], 0             ; 83 3E DC 0B 00
        je      L_01A6                          ; 74 03
        jmp     L_0391                          ; E9 EB 01
L_01A6:
        call    far _entry_219                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0391                          ; E9 E3 01
L_01AE:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_01EF                          ; 74 39
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far _entry_56                   ; 9A 07 03 00 00 [FIXUP]
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ax                              ; 50
        mov     ax, 0x130                       ; B8 30 01
        push    ax                              ; 50
        call    far _entry_71                   ; 9A E4 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01EF                          ; 74 14
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ax                              ; 50
        mov     ax, 0x120                       ; B8 20 01
        push    ax                              ; 50
        call    far _entry_71                   ; 9A 46 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01EF                          ; 74 03
        jmp     L_0391                          ; E9 A2 01
L_01EF:
        mov     ax, word ptr [0x1bc8]           ; A1 C8 1B
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [0x1010]           ; A1 10 10
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xf94]            ; A1 94 0F
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        call    far _entry_335                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_020D                          ; 75 03
        jmp     L_02BD                          ; E9 B0 00
L_020D:
        mov     word ptr [bp - 0x138], 0        ; C7 86 C8 FE 00 00
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_0276                          ; 74 5D
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0276                          ; 74 57
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0276                          ; 74 51
        cmp     word ptr [0x1bc8], 0            ; 83 3E C8 1B 00
        je      L_0276                          ; 74 4A
        cmp     word ptr [0x1010], 0            ; 83 3E 10 10 00
        je      L_0276                          ; 74 43
        cmp     word ptr [0xf94], 0             ; 83 3E 94 0F 00
        je      L_0276                          ; 74 3C
        mov     bx, word ptr [0x1bc8]           ; 8B 1E C8 1B
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        push    word ptr [bx]                   ; FF 37
        call    far _entry_71                   ; 9A 5A 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0276                          ; 75 28
        mov     bx, word ptr [0x1010]           ; 8B 1E 10 10
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        push    word ptr [bx]                   ; FF 37
        call    far _entry_71                   ; 9A 6E 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0276                          ; 75 14
        mov     bx, word ptr [0xf94]            ; 8B 1E 94 0F
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        push    word ptr [bx]                   ; FF 37
        call    far _entry_71                   ; 9A 17 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0287                          ; 74 11
L_0276:
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        mov     word ptr [bp - 0x138], ax       ; 89 86 C8 FE
        or      ax, ax                          ; 0B C0
        jne     L_0287                          ; 75 06
        mov     word ptr [0x70], 1              ; C7 06 70 00 01 00
L_0287:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_0295                          ; 74 08
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.LOCALFREE            ; 9A 9F 02 00 00 [FIXUP]
L_0295:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_02A3                          ; 74 08
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.LOCALFREE            ; 9A AD 02 00 00 [FIXUP]
L_02A3:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_02B1                          ; 74 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_02B1:
        cmp     word ptr [bp - 0x138], 0        ; 83 BE C8 FE 00
        jne     L_02BB                          ; 75 03
        jmp     L_0391                          ; E9 D6 00
L_02BB:
        jmp     L_031F                          ; EB 62
L_02BD:
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [0x1bc8], ax           ; A3 C8 1B
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x1010], ax           ; A3 10 10
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0xf94], ax            ; A3 94 0F
        jmp     L_0391                          ; E9 B6 00
L_02DB:
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        jne     L_02E4                          ; 75 03
        jmp     L_0391                          ; E9 AD 00
L_02E4:
        cmp     word ptr [0x1bc8], 0            ; 83 3E C8 1B 00
        jne     L_02EE                          ; 75 03
        jmp     L_0391                          ; E9 A3 00
L_02EE:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_031F                          ; 74 29
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x130]                ; 8D 86 D0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far _entry_56                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x130]                ; 8D 86 D0 FE
        push    ax                              ; 50
        mov     bx, word ptr [0x1bc8]           ; 8B 1E C8 1B
        push    word ptr [bx]                   ; FF 37
        call    far _entry_71                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0391                          ; 75 72
L_031F:
        call    far _entry_160                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0x70], ax             ; A3 70 00
        mov     word ptr [0x31c], ax            ; A3 1C 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_118                  ; 9A FF FF 00 00 [FIXUP]
L_0335:
        cmp     word ptr [0x708], 0             ; 83 3E 08 07 00
        jne     L_0391                          ; 75 55
        push    word ptr [0x10aa]               ; FF 36 AA 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0391                          ; EB 45
L_034C:
        cmp     word ptr [0x7b2], 0             ; 83 3E B2 07 00
        je      L_0378                          ; 74 25
        push    word ptr [0x13ca]               ; FF 36 CA 13
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A A6 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.DELETEOBJECT            ; 9A AC 00 00 00 [FIXUP]
        mov     word ptr [0x7b2], 0             ; C7 06 B2 07 00 00
L_0378:
        mov     word ptr [0x30], 0xffff         ; C7 06 30 00 FF FF
        call    far _entry_158                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0x30]            ; FF 76 D0
        call    far _entry_214                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0335                          ; EB A4
L_0391:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

WRITE_TEXT ENDS

        END
