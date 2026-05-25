; AUTO-GENERATED from original WRITE segment 32
; segment_size=2680 bytes, flags=0xf130
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
        or      byte ptr [0x107f], 1            ; 80 0E 7F 10 01
        call    L_00C8                          ; E8 B6 00
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0020                          ; 74 07
        and     byte ptr [0x107f], 0xfe         ; 80 26 7F 10 FE
        jmp     L_005B                          ; EB 3B
L_0020:
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0x11                        ; B8 11 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x12ac]               ; FF 36 AC 12
        push    word ptr [0x12aa]               ; FF 36 AA 12
        call    far USER.CREATEDIALOG           ; 9A 9B 00 00 00 [FIXUP]
        mov     word ptr [0x7a0], ax            ; A3 A0 07
        or      ax, ax                          ; 0B C0
        je      L_004D                          ; 74 0B
        push    word ptr [0x10aa]               ; FF 36 AA 10
        call    far USER.SETFOCUS               ; 9A AB 00 00 00 [FIXUP]
        jmp     L_005B                          ; EB 0E
L_004D:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0318                          ; E8 C6 02
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A BB 00 00 00 [FIXUP]
L_005B:
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
        or      byte ptr [0x107f], 2            ; 80 0E 7F 10 02
        call    L_00C8                          ; E8 52 00
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0084                          ; 74 07
        and     byte ptr [0x107f], 0xfd         ; 80 26 7F 10 FD
        jmp     L_00BF                          ; EB 3B
L_0084:
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0x12                        ; B8 12 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x12ac]               ; FF 36 AC 12
        push    word ptr [0x12aa]               ; FF 36 AA 12
        call    far USER.CREATEDIALOG           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7a0], ax            ; A3 A0 07
        or      ax, ax                          ; 0B C0
        je      L_00B1                          ; 74 0B
        push    word ptr [0x10aa]               ; FF 36 AA 10
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00BF                          ; EB 0E
L_00B1:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0318                          ; E8 62 02
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
L_00BF:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00C8 -- offset 0x00C8 -- 205 instr
; Dispatcher: tabla de decisiones cmp+jcc (205 instr).
; tags: calls_user, dispatcher
; calls (inter): USER.GETWINDOWTEXT, USER.SETWINDOWTEXT
;----------------------------------------------------------------------
L_00C8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc6                        ; 81 EC C6 00
        push    di                              ; 57
        push    si                              ; 56
        mov     al, byte ptr [0x107f]           ; A0 7F 10
        sub     ah, ah                          ; 2A E4
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_00F6                          ; 74 16
        mov     ax, word ptr [0x70a]            ; A1 0A 07
        mov     dx, word ptr [0x70c]            ; 8B 16 0C 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [0x70e]            ; A1 0E 07
        mov     dx, word ptr [0x710]            ; 8B 16 10 07
        jmp     L_010A                          ; EB 14
L_00F6:
        mov     ax, word ptr [0x712]            ; A1 12 07
        mov     dx, word ptr [0x714]            ; 8B 16 14 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [0x716]            ; A1 16 07
        mov     dx, word ptr [0x718]            ; 8B 16 18 07
L_010A:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [0x1092]           ; A1 92 10
        mov     dx, word ptr [0x1094]           ; 8B 16 94 10
        mov     word ptr [0x13aa], ax           ; A3 AA 13
        mov     word ptr [0x13ac], dx           ; 89 16 AC 13
        mov     di, 0xc34                       ; BF 34 0C
        mov     si, 0x1be2                      ; BE E2 1B
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        call    far _entry_33                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_156                  ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0147                          ; 75 03
        jmp     L_0262                          ; E9 1B 01
L_0147:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        cmp     word ptr [bp - 2], dx           ; 39 56 FE
        jne     L_01BA                          ; 75 68
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_01BA                          ; 75 63
        push    word ptr [0x13cc]               ; FF 36 CC 13
        lea     ax, [bp - 0xc0]                 ; 8D 86 40 FF
        push    ax                              ; 50
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        je      L_0175                          ; 74 05
        mov     ax, 6                           ; B8 06 00
        jmp     L_0178                          ; EB 03
L_0175:
        mov     ax, 7                           ; B8 07 00
L_0178:
        and     ax, 0xf                         ; 25 0F 00
        mov     cx, word ptr [bp - 0xb0]        ; 8B 8E 50 FF
        and     cl, 0xf0                        ; 80 E1 F0
        or      ax, cx                          ; 0B C1
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        lea     ax, [bp - 0xc0]                 ; 8D 86 40 FF
        push    ax                              ; 50
        call    far _entry_170                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_01A6                          ; 74 03
        jmp     L_0312                          ; E9 6C 01
L_01A6:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_169                  ; 9A FF FF 00 00 [FIXUP]
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        adc     word ptr [bp - 8], 0            ; 83 56 F8 00
        jmp     L_0262                          ; E9 A8 00
L_01BA:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        sub     ax, 2                           ; 2D 02 00
        sbb     dx, 0                           ; 83 DA 00
        mov     word ptr [bp - 0xc4], ax        ; 89 86 3C FF
        mov     word ptr [bp - 0xc2], dx        ; 89 96 3E FF
        cmp     dx, word ptr [bp - 2]           ; 3B 56 FE
        jge     L_01D6                          ; 7D 03
        jmp     L_0262                          ; E9 8C 00
L_01D6:
        jg      L_01E0                          ; 7F 08
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        ja      L_01E0                          ; 77 03
        jmp     L_0262                          ; E9 82 00
L_01E0:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [bp - 0xc4]        ; 8B 86 3C FF
        mov     dx, word ptr [bp - 0xc2]        ; 8B 96 3E FF
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xe8e], 1             ; 83 3E 8E 0E 01
        jle     L_0262                          ; 7E 5B
        mov     byte ptr [bp - 0xc6], 0x58      ; C6 86 3A FF 58
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0xc2]            ; FF B6 3E FF
        push    word ptr [bp - 0xc4]            ; FF B6 3C FF
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_98                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0237                          ; 74 03
        jmp     L_0312                          ; E9 DB 00
L_0237:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0xc2]            ; FF B6 3E FF
        push    word ptr [bp - 0xc4]            ; FF B6 3C FF
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_104                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0262                          ; 74 03
        jmp     L_0312                          ; E9 B0 00
L_0262:
        push    word ptr [0x780]                ; FF 36 80 07
        lea     ax, [bp - 0x5a]                 ; 8D 46 A6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x5a]                 ; 8D 46 A6
        push    ax                              ; 50
        call    far _entry_167                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x71e], ax            ; A3 1E 07
        inc     ax                              ; 40
        jne     L_028B                          ; 75 08
        mov     word ptr [0x71e], 0             ; C7 06 1E 07 00 00
        jmp     L_02A6                          ; EB 1B
L_028B:
        push    word ptr [0x780]                ; FF 36 80 07
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_029A                          ; 74 05
        mov     ax, 0x21e                       ; B8 1E 02
        jmp     L_029D                          ; EB 03
L_029A:
        mov     ax, 0x226                       ; B8 26 02
L_029D:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SETWINDOWTEXT          ; 9A 36 03 00 00 [FIXUP]
L_02A6:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     word ptr [0x13e2], dx           ; 89 16 E2 13
        mov     word ptr [0x1096], ax           ; A3 96 10
        mov     word ptr [0x1098], dx           ; 89 16 98 10
        mov     word ptr [0x1092], ax           ; A3 92 10
        mov     word ptr [0x1094], dx           ; 89 16 94 10
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        sub     ax, 2                           ; 2D 02 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x13a6], ax           ; A3 A6 13
        mov     word ptr [0x13a8], dx           ; 89 16 A8 13
        mov     word ptr [0x109a], ax           ; A3 9A 10
        mov     word ptr [0x109c], dx           ; 89 16 9C 10
        push    word ptr [0x13e2]               ; FF 36 E2 13
        push    word ptr [0x13e0]               ; FF 36 E0 13
        push    word ptr [0x13e2]               ; FF 36 E2 13
        push    word ptr [0x13e0]               ; FF 36 E0 13
        call    far _entry_97                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_132                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7a], 1              ; C7 06 7A 00 01 00
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xbda], 0             ; C7 06 DA 0B 00 00
L_0312:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0318 -- offset 0x0318 -- 383 instr
; Dispatcher: tabla de decisiones cmp+jcc (383 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_0742
; calls (inter): KERNEL.LOCALFREE, USER.CHECKDLGBUTTON, USER.DESTROYWINDOW, USER.GETCLIENTRECT, USER.GETDLGITEM, USER.INVALIDATERECT (+4 mas)
;----------------------------------------------------------------------
L_0318:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x71e], 0             ; 83 3E 1E 07 00
        je      L_0349                          ; 74 20
        push    word ptr [0x780]                ; FF 36 80 07
        mov     bx, word ptr [0x71e]            ; 8B 1E 1E 07
        mov     ax, word ptr [bx]               ; 8B 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x71e]                ; FF 36 1E 07
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x71e], 0             ; C7 06 1E 07 00 00
L_0349:
        call    far _entry_33                   ; 9A 58 03 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_169                  ; 9A AB 01 00 00 [FIXUP]
        call    far _entry_33                   ; 9A 2C 01 00 00 [FIXUP]
        mov     ax, word ptr [0x71a]            ; A1 1A 07
        mov     dx, word ptr [0x71c]            ; 8B 16 1C 07
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     word ptr [0x13e2], dx           ; 89 16 E2 13
        mov     word ptr [0x1096], ax           ; A3 96 10
        mov     word ptr [0x1098], dx           ; 89 16 98 10
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x13a6], ax           ; A3 A6 13
        mov     word ptr [0x13a8], dx           ; 89 16 A8 13
        mov     word ptr [0x109a], ax           ; A3 9A 10
        mov     word ptr [0x109c], dx           ; 89 16 9C 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_156                  ; 9A 34 01 00 00 [FIXUP]
        and     byte ptr [0x107f], 0xfe         ; 80 26 7F 10 FE
        and     byte ptr [0x107f], 0xfd         ; 80 26 7F 10 FD
        mov     ax, word ptr [0x13aa]           ; A1 AA 13
        mov     dx, word ptr [0x13ac]           ; 8B 16 AC 13
        mov     word ptr [0x1092], ax           ; A3 92 10
        mov     word ptr [0x1094], dx           ; 89 16 94 10
        push    word ptr [0xc36]                ; FF 36 36 0C
        push    word ptr [0xc34]                ; FF 36 34 0C
        push    word ptr [0xc3a]                ; FF 36 3A 0C
        push    word ptr [0xc38]                ; FF 36 38 0C
        call    far _entry_97                   ; 9A F5 02 00 00 [FIXUP]
        call    far _entry_39                   ; 9A E4 05 00 00 [FIXUP]
        mov     word ptr [0x7a0], 0             ; C7 06 A0 07 00 00
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
        sub     sp, 0x26                        ; 83 EC 26
        push    si                              ; 56
        mov     word ptr [bp - 0x14], 0xa6e     ; C7 46 EC 6E 0A
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0xc]    ; 8B 40 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0404                          ; 75 03
        jmp     L_04B2                          ; E9 AE 00
L_0404:
        cmp     ax, 0x10                        ; 3D 10 00
        jne     L_040C                          ; 75 03
        jmp     L_06F1                          ; E9 E5 02
L_040C:
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_041C                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0419                          ; 75 03
        jmp     L_04C3                          ; E9 AA 00
L_0419:
        jmp     L_04BE                          ; E9 A2 00
L_041C:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0xc2e], ax            ; A3 2E 0C
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x8a4], 0xb72         ; C7 06 A4 08 72 0B
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_044B                          ; 75 05
        mov     ax, 0xfa4                       ; B8 A4 0F
        jmp     L_0450                          ; EB 05
L_044B:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [bx]               ; 8B 07
L_0450:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, word ptr [0xb82]            ; A1 82 0B
        and     ax, 8                           ; 25 08 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 05 05 00 00 [FIXUP]
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        je      L_0479                          ; 74 0C
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        push    word ptr [bx + 0x12]            ; FF 77 12
        jmp     L_0487                          ; EB 0E
L_0479:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        sub     ax, word ptr [bx + 0x14]        ; 2B 47 14
        push    ax                              ; 50
L_0487:
        push    word ptr [0x30e]                ; FF 36 0E 03
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_60                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 0xa6e                       ; B8 6E 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
L_04AC:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0736                          ; E9 84 02
L_04B2:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_04BE                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_04BE:
        sub     ax, ax                          ; 2B C0
        jmp     L_0736                          ; E9 73 02
L_04C3:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        jne     L_04CE                          ; 75 03
        jmp     L_06F1                          ; E9 23 02
L_04CE:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_04D6                          ; 75 03
        jmp     L_06F1                          ; E9 1B 02
L_04D6:
        cmp     ax, 3                           ; 3D 03 00
        je      L_050B                          ; 74 30
        cmp     ax, 4                           ; 3D 04 00
        jne     L_04E3                          ; 75 03
        jmp     L_05AE                          ; E9 CB 00
L_04E3:
        cmp     ax, 6                           ; 3D 06 00
        jne     L_04BE                          ; 75 D6
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0501                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0503                          ; EB 02
L_0501:
        sub     ax, ax                          ; 2B C0
L_0503:
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04AC                          ; EB A1
L_050B:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_41                   ; 9A D8 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_04AC                          ; 74 94
        mov     byte ptr [bp - 0x18], 1         ; C6 46 E8 01
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_0534                          ; 75 0B
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jne     L_0534                          ; 75 05
        mov     ax, 0xa5e                       ; B8 5E 0A
        jmp     L_054F                          ; EB 1B
L_0534:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A FC 01 00 00 [FIXUP]
        mov     ax, 0x1014                      ; B8 14 10
L_054F:
        push    ax                              ; 50
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 65 01 00 00 [FIXUP]
        or      byte ptr [bp - 0x1f], 0x40      ; 80 4E E1 40
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_37                   ; 9A 0B 06 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_98                   ; 9A 29 02 00 00 [FIXUP]
        mov     word ptr [0x7a], 1              ; C7 06 7A 00 01 00
        jmp     L_04AC                          ; E9 FE FE
L_05AE:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        sub     ax, word ptr [0x13e0]           ; 2B 06 E0 13
        sbb     dx, word ptr [0x13e2]           ; 1B 16 E2 13
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        or      dx, dx                          ; 0B D2
        jge     L_05CA                          ; 7D 03
        jmp     L_04AC                          ; E9 E2 FE
L_05CA:
        jg      L_05D3                          ; 7F 07
        or      ax, ax                          ; 0B C0
        ja      L_05D3                          ; 77 03
        jmp     L_04AC                          ; E9 D9 FE
L_05D3:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_41                   ; 9A 3C 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_05E3                          ; 75 03
        jmp     L_04AC                          ; E9 C9 FE
L_05E3:
        call    far _entry_39                   ; 9A 08 03 00 00 [FIXUP]
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x13e2]               ; FF 36 E2 13
        push    word ptr [0x13e0]               ; FF 36 E0 13
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x13e2]               ; FF 36 E2 13
        push    word ptr [0x13e0]               ; FF 36 E0 13
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_104                  ; 9A 54 02 00 00 [FIXUP]
        jmp     L_04AC                          ; E9 79 FE
L_0633:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
L_0636:
        mov     cx, word ptr [bp - 0x16]        ; 8B 4E EA
        add     cx, 7                           ; 83 C1 07
        cmp     ax, cx                          ; 3B C1
        jle     L_06A7                          ; 7E 67
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0xfa8]            ; A1 A8 0F
        sub     ax, word ptr [0x107c]           ; 2B 06 7C 10
        sub     ax, word ptr [0xa5a]            ; 2B 06 5A 0A
        push    ax                              ; 50
        call    far _entry_84                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        push    word ptr [0x7a0]                ; FF 36 A0 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_171                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x107c]               ; FF 36 7C 10
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    word ptr [0x10f6]               ; FF 36 F6 10
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    far _entry_82                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x7a0]                ; FF 36 A0 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_171                  ; 9A 5F 06 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_73                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A 47 00 00 00 [FIXUP]
        jmp     L_04AC                          ; E9 05 FE
L_06A7:
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A F4 04 00 00 [FIXUP]
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0742                          ; E8 86 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0318                          ; E8 57 FC
        push    word ptr [0x10f4]               ; FF 36 F4 10
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x10f4]               ; FF 36 F4 10
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7aa], 0             ; C7 06 AA 07 00 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04AC                          ; E9 BB FD
L_06F1:
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_83                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0708                          ; 75 03
        jmp     L_04AC                          ; E9 A4 FD
L_0708:
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        je      L_06A7                          ; 74 98
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0xfa6]            ; A1 A6 0F
        sub     ax, word ptr [0x10f6]           ; 2B 06 F6 10
        sub     ax, word ptr [0xa6c]            ; 2B 06 6C 0A
        push    ax                              ; 50
        call    far _entry_84                   ; 9A 50 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        jne     L_0730                          ; 75 03
        jmp     L_0633                          ; E9 03 FF
L_0730:
        mov     ax, word ptr [0x10f6]           ; A1 F6 10
        jmp     L_0636                          ; E9 00 FF
L_0736:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0742 -- offset 0x0742 -- 301 instr
; Dispatcher: tabla de decisiones cmp+jcc (301 instr).
; tags: dispatcher, far
; callers: sub_02CF, sub_0318
;----------------------------------------------------------------------
L_0742:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        mov     al, byte ptr [0x107f]           ; A0 7F 10
        sub     ah, ah                          ; 2A E4
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_0768                          ; 74 09
        mov     ax, word ptr [0x70a]            ; A1 0A 07
        mov     dx, word ptr [0x70c]            ; 8B 16 0C 07
        jmp     L_076F                          ; EB 07
L_0768:
        mov     ax, word ptr [0x712]            ; A1 12 07
        mov     dx, word ptr [0x714]            ; 8B 16 14 07
L_076F:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0xc]    ; 8B 40 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_41                   ; 9A B6 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0799                          ; 75 03
        jmp     L_088B                          ; E9 F2 00
L_0799:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_07D8                          ; 75 39
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     ax                              ; 40
        jne     L_07B1                          ; 75 03
        jmp     L_088B                          ; E9 DA 00
L_07B1:
        mov     ax, 0xfa4                       ; B8 A4 0F
        push    ax                              ; 50
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        push    word ptr [bx]                   ; FF 37
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 59 05 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bx + si + 0xc], ax    ; 89 40 0C
L_07D8:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_07F0                          ; 74 0A
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        jmp     L_07FE                          ; EB 0E
L_07F0:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
L_07FE:
        mov     word ptr [bp - 0x12], 6         ; C7 46 EE 06 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_080D                          ; 74 04
        add     word ptr [bp - 0x12], 8         ; 83 46 EE 08
L_080D:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_0816                          ; 75 03
        inc     word ptr [bp - 0x12]            ; FF 46 EE
L_0816:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x13e2]               ; FF 36 E2 13
        push    word ptr [0x13e0]               ; FF 36 E0 13
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_34                   ; 9A 4E 08 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A E0 08 00 00 [FIXUP]
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        push    word ptr [0xed4]                ; FF 36 D4 0E
        push    word ptr [0xed2]                ; FF 36 D2 0E
        call    far _entry_34                   ; 9A D2 02 00 00 [FIXUP]
        mov     word ptr [0x13a6], ax           ; A3 A6 13
        mov     word ptr [0x13a8], dx           ; 89 16 A8 13
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
        mov     byte ptr [bp - 0xc], 9          ; C6 46 F4 09
        mov     al, byte ptr [bp - 0x12]        ; 8A 46 EE
        mov     byte ptr [bp - 0xb], al         ; 88 46 F5
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 45 0A 00 00 [FIXUP]
L_088B:
        pop     si                              ; 5E
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
        sub     sp, 0x86                        ; 81 EC 86 00
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_08B2                          ; 75 03
        jmp     L_0A6C                          ; E9 BA 01
L_08B2:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_41                   ; 9A 10 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_08C1                          ; 75 03
        jmp     L_0A6C                          ; E9 AB 01
L_08C1:
        lea     di, [bp - 0x12]                 ; 8D 7E EE
        mov     si, 0x1be2                      ; BE E2 1B
        push    ss                              ; 16
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
L_08D4:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A 47 09 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, word ptr [bp + 6]           ; 03 46 06
        adc     dx, word ptr [bp + 8]           ; 13 56 08
        mov     cx, word ptr [0xed2]            ; 8B 0E D2 0E
        mov     bx, word ptr [0xed4]            ; 8B 1E D4 0E
        mov     word ptr [bp - 0x1a], cx        ; 89 4E E6
        mov     word ptr [bp - 0x18], bx        ; 89 5E E8
        cmp     dx, bx                          ; 3B D3
        jge     L_0905                          ; 7D 03
        jmp     L_099E                          ; E9 99 00
L_0905:
        jg      L_090E                          ; 7F 07
        cmp     ax, cx                          ; 3B C1
        jae     L_090E                          ; 73 03
        jmp     L_099E                          ; E9 90 00
L_090E:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A 48 05 00 00 [FIXUP]
        mov     bx, word ptr [0x1022]           ; 8B 1E 22 10
        cmp     byte ptr [bx], 0xc              ; 80 3F 0C
        je      L_093D                          ; 74 03
        jmp     L_0A17                          ; E9 DA 00
L_093D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _entry_32                   ; 9A D4 09 00 00 [FIXUP]
        lea     di, [bp - 0x86]                 ; 8D BE 7A FF
        mov     si, 0xb72                       ; BE 72 0B
        push    ss                              ; 16
        pop     es                              ; 07
        mov     cx, 0x33                        ; B9 33 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     dx, word ptr [bp - 0x1e]        ; 8B 56 E2
        add     ax, 2                           ; 05 02 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_104                  ; 9A 2C 06 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 0x20]            ; FF 76 E0
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        call    far _entry_170                  ; 9A 98 01 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_09F2                          ; 74 59
        call    far _entry_39                   ; 9A BE 03 00 00 [FIXUP]
L_099E:
        mov     word ptr [bp - 0x1c], 6         ; C7 46 E4 06 00
        test    byte ptr [0x107f], 2            ; F6 06 7F 10 02
        je      L_09AD                          ; 74 03
        inc     word ptr [bp - 0x1c]            ; FF 46 E4
L_09AD:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        add     ax, word ptr [bp + 6]           ; 03 46 06
        adc     dx, word ptr [bp + 8]           ; 13 56 08
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
        push    word ptr [0x12b4]               ; FF 36 B4 12
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A 06 0A 00 00 [FIXUP]
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [0xed4], dx            ; 39 16 D4 0E
        jl      L_0A20                          ; 7C 3B
        jg      L_09ED                          ; 7F 06
        cmp     word ptr [0xed2], ax            ; 39 06 D2 0E
        jbe     L_0A20                          ; 76 33
L_09ED:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A22                          ; EB 30
L_09F2:
        add     word ptr [0xcb4], 1             ; 83 06 B4 0C 01
        adc     word ptr [0xcb6], 0             ; 83 16 B6 0C 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _entry_32                   ; 9A 2F 04 00 00 [FIXUP]
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
L_0A17:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        jmp     L_08D4                          ; E9 B4 FE
L_0A20:
        sub     ax, ax                          ; 2B C0
L_0A22:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0A33                          ; 74 0A
        add     word ptr [0x13a6], 2            ; 83 06 A6 13 02
        adc     word ptr [0x13a8], 0            ; 83 16 A8 13 00
L_0A33:
        mov     byte ptr [bp - 8], 9            ; C6 46 F8 09
        mov     al, byte ptr [bp - 0x1c]        ; 8A 46 E4
        mov     byte ptr [bp - 7], al           ; 88 46 F9
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_107                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0A59                          ; 74 0A
        sub     word ptr [0x13a6], 2            ; 83 2E A6 13 02
        sbb     word ptr [0x13a8], 0            ; 83 1E A8 13 00
L_0A59:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        call    far _entry_97                   ; 9A B9 03 00 00 [FIXUP]
L_0A6C:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A

WRITE_TEXT ENDS

        END
