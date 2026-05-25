; AUTO-GENERATED from original WRITE segment 47
; segment_size=1645 bytes, flags=0xf130
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
L_000D:
        cmp     word ptr [0x5c], 0              ; 83 3E 5C 00 00
        jne     L_0030                          ; 75 1C
        cmp     word ptr [0x708], 0             ; 83 3E 08 07 00
        jne     L_0030                          ; 75 15
        cmp     word ptr [0x706], 0             ; 83 3E 06 07 00
        jne     L_0030                          ; 75 0E
        call    far _entry_288                  ; 9A 48 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0030                          ; 75 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0119                          ; E8 E9 00
L_0030:
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.GETMESSAGE             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0046                          ; 75 03
        jmp     L_0110                          ; E9 CA 00
L_0046:
        mov     word ptr [0x3a], 0              ; C7 06 3A 00 00 00
        mov     word ptr [0xbda], 0             ; C7 06 DA 0B 00 00
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x12b6]               ; FF 36 B6 12
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.TRANSLATEACCELERATOR   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_000D                          ; 75 A5
        cmp     word ptr [0x7a2], 0             ; 83 3E A2 07 00
        je      L_0081                          ; 74 12
        push    word ptr [0x7a2]                ; FF 36 A2 07
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.ISDIALOGMESSAGE        ; 9A 92 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_000D                          ; 75 8C
L_0081:
        cmp     word ptr [0x7a4], 0             ; 83 3E A4 07 00
        je      L_009D                          ; 74 15
        push    word ptr [0x7a4]                ; FF 36 A4 07
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.ISDIALOGMESSAGE        ; 9A AE 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_009D                          ; 74 03
        jmp     L_000D                          ; E9 70 FF
L_009D:
        cmp     word ptr [0x7a0], 0             ; 83 3E A0 07 00
        je      L_00B9                          ; 74 15
        push    word ptr [0x7a0]                ; FF 36 A0 07
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.ISDIALOGMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00B9                          ; 74 03
        jmp     L_000D                          ; E9 54 FF
L_00B9:
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ax                              ; 50
        call    far _entry_260                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00F9                          ; 75 33
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ax                              ; 50
        call    far _entry_298                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_00E5                          ; 74 0E
        cmp     ax, 0xfffc                      ; 3D FC FF
        je      L_00E5                          ; 74 09
        push    ax                              ; 50
        call    far _entry_297                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_000D                          ; E9 28 FF
L_00E5:
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_296                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00F9                          ; 74 03
        jmp     L_000D                          ; E9 14 FF
L_00F9:
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_000D                          ; E9 FD FE
L_0110:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0119 -- offset 0x0119 -- 177 instr
; Dispatcher: tabla de decisiones cmp+jcc (177 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_031F, sub_03AB, sub_0505
; calls (inter): KERNEL.GLOBALCOMPACT, KERNEL.LOCKSEGMENT, KERNEL.UNLOCKSEGMENT
;----------------------------------------------------------------------
L_0119:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     word ptr [0x7b8], 0             ; C7 06 B8 07 00 00
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_0153                          ; 74 20
        call    far _entry_295                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_013F                          ; 74 03
        jmp     L_0316                          ; E9 D7 01
L_013F:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x42], ax             ; A3 42 00
        mov     word ptr [0x4e], ax             ; A3 4E 00
        call    far _entry_288                  ; 9A 1F 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0153                          ; 74 03
        jmp     L_0316                          ; E9 C3 01
L_0153:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_031F                          ; E8 C7 01
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_132                  ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0x107e], 1            ; F6 06 7E 10 01
        je      L_016B                          ; 74 03
        jmp     L_0316                          ; E9 AB 01
L_016B:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        mov     cl, 4                           ; B1 04
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        sub     ax, 0x10                        ; 2D 10 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        call    far _entry_216                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        cmp     word ptr [0x7a], 0              ; 83 3E 7A 00 00
        jne     L_01A0                          ; 75 03
        jmp     L_022A                          ; E9 8A 00
L_01A0:
        cmp     word ptr [0x744], 0             ; 83 3E 44 07 00
        jne     L_01EC                          ; 75 45
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_01BA                          ; 75 06
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        je      L_01EC                          ; 74 32
L_01BA:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [bx + 0x16], dx        ; 39 57 16
        jg      L_01EC                          ; 7F 22
        jl      L_01D1                          ; 7C 05
        cmp     word ptr [bx + 0x14], ax        ; 39 47 14
        jae     L_01EC                          ; 73 1B
L_01D1:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        add     ax, word ptr [bx + 6]           ; 03 47 06
        adc     dx, word ptr [bx + 8]           ; 13 57 08
        cmp     dx, word ptr [0x1be4]           ; 3B 16 E4 1B
        jg      L_022A                          ; 7F 46
        jl      L_01EC                          ; 7C 06
        cmp     ax, word ptr [0x1be2]           ; 3B 06 E2 1B
        ja      L_022A                          ; 77 3E
L_01EC:
        cmp     word ptr [0x78], 0              ; 83 3E 78 00 00
        je      L_01FB                          ; 74 08
        sub     word ptr [bp - 6], 1            ; 83 6E FA 01
        sbb     word ptr [bp - 4], 0            ; 83 5E FC 00
L_01FB:
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_0213                          ; 75 0B
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jne     L_0213                          ; 75 05
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
L_0213:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_99                   ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_288                  ; 9A 6C 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_022A                          ; 74 03
        jmp     L_0316                          ; E9 EC 00
L_022A:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x744], ax            ; A3 44 07
        mov     word ptr [0xe90], ax            ; A3 90 0E
        mov     word ptr [0x7a], ax             ; A3 7A 00
        cmp     word ptr [0x31e], ax            ; 39 06 1E 03
        je      L_0277                          ; 74 3C
        cmp     word ptr [0x5c], ax             ; 39 06 5C 00
        jne     L_0277                          ; 75 36
        mov     ax, word ptr [0x1bea]           ; A1 EA 1B
        shr     ax, 1                           ; D1 E8
        and     ax, 1                           ; 25 01 00
        mov     word ptr [0x78], ax             ; A3 78 00
        mov     word ptr [0x31e], 0             ; C7 06 1E 03 00 00
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_125                  ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_288                  ; 9A 84 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0277                          ; 74 03
        jmp     L_0316                          ; E9 9F 00
L_0277:
        cmp     word ptr [0x762], 0             ; 83 3E 62 07 00
        jne     L_028F                          ; 75 11
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03AB                          ; E8 28 01
        call    far _entry_288                  ; 9A FD 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_028F                          ; 74 03
        jmp     L_0316                          ; E9 87 00
L_028F:
        dec     word ptr [0x764]                ; FF 0E 64 07
        jne     L_0305                          ; 75 70
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL.GLOBALCOMPACT        ; 9A FF FF 00 00 [FIXUP]
        cmp     dx, 3                           ; 83 FA 03
        jb      L_02C1                          ; 72 15
        ja      L_02B3                          ; 77 05
        cmp     ax, 0xd40                       ; 3D 40 0D
        jb      L_02C1                          ; 72 0E
L_02B3:
        mov     word ptr [0x40], 1              ; C7 06 40 00 01 00
        mov     word ptr [0x2c], 0xff           ; C7 06 2C 00 FF 00
        jmp     L_02CD                          ; EB 0C
L_02C1:
        mov     word ptr [0x40], 0              ; C7 06 40 00 00 00
        mov     word ptr [0x2c], 0x4b           ; C7 06 2C 00 4B 00
L_02CD:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x2c]             ; A1 2C 00
        cmp     word ptr [0x1bd2], ax           ; 39 06 D2 1B
        jge     L_02FC                          ; 7D 1D
        call    L_0505                          ; E8 23 02
        or      ax, ax                          ; 0B C0
        je      L_02FC                          ; 74 16
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_294                  ; 9A F8 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02FC                          ; 75 09
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_294                  ; 9A FF FF 00 00 [FIXUP]
L_02FC:
        call    far _entry_288                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0316                          ; 75 11
L_0305:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_53                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1bc6]               ; FF 36 C6 1B
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
L_0316:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_031F -- offset 0x031F -- 57 instr
; Dispatcher: tabla de decisiones cmp+jcc (57 instr).
; tags: calls_user, dispatcher, far
; callers: sub_0119
; calls (inter): USER.GETUPDATERECT, USER.VALIDATERECT
;----------------------------------------------------------------------
L_031F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        cmp     word ptr [bx + 0x2c], 0         ; 83 7F 2C 00
        je      L_03A2                          ; 74 6C
        push    word ptr [0x780]                ; FF 36 80 07
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETUPDATERECT          ; 9A 59 03 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 0x2c]            ; FF 77 2C
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETUPDATERECT          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_03A2                          ; 74 41
        cmp     word ptr [0x706], 0             ; 83 3E 06 07 00
        jne     L_03A2                          ; 75 3A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        cmp     word ptr [bx + 0xe], ax         ; 39 47 0E
        jle     L_037D                          ; 7E 06
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_037D:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jle     L_0392                          ; 7E 0D
        push    word ptr [0x326]                ; FF 36 26 03
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_300                  ; 9A FF FF 00 00 [FIXUP]
L_0392:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 0x2c]            ; FF 77 2C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.VALIDATERECT           ; 9A FF FF 00 00 [FIXUP]
L_03A2:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03AB -- offset 0x03AB -- 132 instr
; Dispatcher: tabla de decisiones cmp+jcc (132 instr).
; tags: dispatcher, far
; callers: sub_0119
; calls (intra): sub_054B
;----------------------------------------------------------------------
L_03AB:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2c                        ; 83 EC 2C
        push    si                              ; 56
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        cdq                                     ; 99
        add     ax, word ptr [si + 6]           ; 03 44 06
        adc     dx, word ptr [si + 8]           ; 13 54 08
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_88                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x12b4]           ; A1 B4 12
        cmp     word ptr [0x1bf0], ax           ; 39 06 F0 1B
        jne     L_041D                          ; 75 26
        mov     ax, word ptr [0xece]            ; A1 CE 0E
        mov     dx, word ptr [0xed0]            ; 8B 16 D0 0E
        cmp     word ptr [bp - 0x22], dx        ; 39 56 DE
        jl      L_041D                          ; 7C 1A
        jg      L_040A                          ; 7F 05
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jb      L_041D                          ; 72 13
L_040A:
        mov     ax, word ptr [0xb6e]            ; A1 6E 0B
        mov     dx, word ptr [0xb70]            ; 8B 16 70 0B
        cmp     word ptr [bp - 0x22], dx        ; 39 56 DE
        jl      L_042C                          ; 7C 16
        jg      L_041D                          ; 7F 05
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jb      L_042C                          ; 72 0F
L_041D:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x24]            ; FF 76 DC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_054B                          ; E8 1F 01
L_042C:
        mov     ax, word ptr [0x12b4]           ; A1 B4 12
        cmp     word ptr [0x30], ax             ; 39 06 30 00
        jne     L_044A                          ; 75 15
        mov     ax, word ptr [0x12c2]           ; A1 C2 12
        cmp     word ptr [0x75e], ax            ; 39 06 5E 07
        jne     L_044A                          ; 75 0C
        mov     ax, word ptr [0x328]            ; A1 28 03
        cmp     word ptr [0x760], ax            ; 39 06 60 07
        jne     L_044A                          ; 75 03
        jmp     L_04FB                          ; E9 B1 00
L_044A:
        mov     word ptr [0x113a], 0            ; C7 06 3A 11 00 00
        mov     ax, word ptr [0x12b4]           ; A1 B4 12
        mov     word ptr [0x30], ax             ; A3 30 00
        mov     ax, word ptr [0x12c2]           ; A1 C2 12
        mov     word ptr [0x75e], ax            ; A3 5E 07
        mov     ax, word ptr [0x328]            ; A1 28 03
        mov     word ptr [0x760], ax            ; A3 60 07
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x30]                 ; F7 2E 30 00
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x10]   ; 8B 40 10
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        cmp     word ptr [0x328], -1            ; 83 3E 28 03 FF
        jne     L_048F                          ; 75 11
        cmp     word ptr [0xe1e], -1            ; 83 3E 1E 0E FF
        jne     L_048A                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_04A0                          ; EB 16
L_048A:
        mov     ax, word ptr [0xe1e]            ; A1 1E 0E
        jmp     L_04A0                          ; EB 11
L_048F:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [0x328]                ; F7 2E 28 03
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + si + 4]      ; 8B 40 04
L_04A0:
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ax                              ; 50
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        call    far _entry_68                   ; 9A FF FF 00 00 [FIXUP]
        mov     al, byte ptr [bp - 0x1f]        ; 8A 46 E1
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_70                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 0x1f], al        ; 88 46 E1
        lea     ax, [bp - 0x1f]                 ; 8D 46 E1
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0x20]        ; 8A 46 E0
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     al, byte ptr [bp - 0x20]        ; 8A 46 E0
        sub     ah, ah                          ; 2A E4
        add     ax, 0x80                        ; 05 80 00
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 0x2a]            ; FF 46 D6
        mov     byte ptr [bx], 0x20             ; C6 07 20
        push    word ptr [bp - 0x28]            ; FF 76 D8
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ax                              ; 50
        call    far _entry_78                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x2a]        ; 8B 5E D6
        mov     byte ptr [bx], 0                ; C6 07 00
        call    far _entry_158                  ; 9A FF FF 00 00 [FIXUP]
L_04FB:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0505 -- offset 0x0505 -- 27 instr
; Funcion sin clasificar definitiva (27 instr).
; tags: small
; callers: sub_0119, sub_02CF
;----------------------------------------------------------------------
L_0505:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [0x1bd2]               ; F7 2E D2 1B
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [0x764], 0x200         ; C7 06 64 07 00 02
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        inc     ax                              ; 40
        cmp     ax, word ptr [0x2c]             ; 3B 06 2C 00
        jle     L_052E                          ; 7E 04
L_052A:
        sub     ax, ax                          ; 2B C0
        jmp     L_0546                          ; EB 18
L_052E:
        mov     si, word ptr [0x123e]           ; 8B 36 3E 12
        jmp     L_053E                          ; EB 0A
L_0534:
        cmp     word ptr [si + 2], 0x7fff       ; 81 7C 02 FF 7F
        je      L_052A                          ; 74 EF
        add     si, 9                           ; 83 C6 09
L_053E:
        cmp     word ptr [bp - 2], si           ; 39 76 FE
        ja      L_0534                          ; 77 F1
        mov     ax, 1                           ; B8 01 00
L_0546:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_054B -- offset 0x054B -- 110 instr
; Dispatcher: tabla de decisiones cmp+jcc (110 instr).
; tags: dispatcher
; callers: sub_02F1, sub_03AB
;----------------------------------------------------------------------
L_054B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x1bf0], ax           ; A3 F0 1B
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x10]   ; 8B 40 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0580                          ; 74 09
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx], 0                ; 83 3F 00
        jne     L_059D                          ; 75 1D
L_0580:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xed0], ax            ; A3 D0 0E
        mov     word ptr [0xece], ax            ; A3 CE 0E
        mov     word ptr [0xb6e], 0xffff        ; C7 06 6E 0B FF FF
        mov     word ptr [0xb70], 0x7fff        ; C7 06 70 0B FF 7F
        mov     word ptr [0x328], 0xffff        ; C7 06 28 03 FF FF
        jmp     L_0662                          ; E9 C5 00
L_059D:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_299                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x328], ax            ; A3 28 03
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [0x328]                ; F7 2E 28 03
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + si + 6]      ; 8B 40 06
        mov     dx, word ptr [bx + si + 8]      ; 8B 50 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jl      L_0627                          ; 7C 37
        jg      L_05F7                          ; 7F 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jb      L_0627                          ; 72 30
L_05F7:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        mov     word ptr [0xece], ax            ; A3 CE 0E
        mov     word ptr [0xed0], dx            ; 89 16 D0 0E
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [0xb6e], ax            ; A3 6E 0B
        mov     word ptr [0xb70], dx            ; 89 16 70 0B
        jmp     L_0662                          ; EB 3B
L_0627:
        cmp     word ptr [0x328], 0             ; 83 3E 28 03 00
        jne     L_0637                          ; 75 09
        mov     ax, word ptr [0x71a]            ; A1 1A 07
        mov     dx, word ptr [0x71c]            ; 8B 16 1C 07
        jmp     L_064A                          ; EB 13
L_0637:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [0x328]                ; F7 2E 28 03
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     dx, word ptr [bx + si + 2]      ; 8B 50 02
L_064A:
        mov     word ptr [0xece], ax            ; A3 CE 0E
        mov     word ptr [0xed0], dx            ; 89 16 D0 0E
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        mov     word ptr [0xb6e], ax            ; A3 6E 0B
        mov     word ptr [0xb70], dx            ; 89 16 70 0B
        dec     word ptr [0x328]                ; FF 0E 28 03
L_0662:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

WRITE_TEXT ENDS

        END
