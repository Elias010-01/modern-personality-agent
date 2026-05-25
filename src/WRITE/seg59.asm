; AUTO-GENERATED from original WRITE segment 59
; segment_size=6850 bytes, flags=0xf130
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
        sub     sp, 0x17c                       ; 81 EC 7C 01
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0x3e]             ; A1 3E 00
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        mov     ax, word ptr [0x4e]             ; A1 4E 00
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 5], 0            ; C6 46 FB 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xbda], ax            ; A3 DA 0B
        mov     word ptr [0x3e], ax             ; A3 3E 00
        mov     word ptr [0x3c], ax             ; A3 3C 00
        mov     word ptr [0x3a], ax             ; A3 3A 00
        mov     word ptr [0x4e], ax             ; A3 4E 00
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_348                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x1012], 0            ; 83 3E 12 10 00
        je      L_0060                          ; 74 0F
        push    word ptr [0x1012]               ; FF 36 12 10
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1012], 0            ; C7 06 12 10 00 00
L_0060:
        mov     word ptr [0x2de], 0xffff        ; C7 06 DE 02 FF FF
        cmp     word ptr [0x2e0], 0             ; 83 3E E0 02 00
        je      L_007C                          ; 74 0F
        push    word ptr [0x2e0]                ; FF 36 E0 02
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x2e0], 0             ; C7 06 E0 02 00 00
L_007C:
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_206                  ; 9A E1 01 00 00 [FIXUP]
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     di, word ptr [bx]               ; 8B 3F
        add     di, si                          ; 03 FE
        add     di, 6                           ; 83 C7 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 1                           ; 25 01 00
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [di]               ; 8B 0D
        and     cl, 0xf7                        ; 80 E1 F7
        or      ax, cx                          ; 0B C1
        mov     word ptr [di], ax               ; 89 05
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        test    byte ptr [bx + si + 6], 1       ; F6 40 06 01
        je      L_00CD                          ; 74 06
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_00D7                          ; 74 0A
L_00CD:
        cmp     word ptr [0x7e], 1              ; 83 3E 7E 00 01
        je      L_00D7                          ; 74 03
        jmp     L_042F                          ; E9 58 03
L_00D7:
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ax                              ; 50
        lea     ax, [bp - 0x114]                ; 8D 86 EC FE
        push    ax                              ; 50
        call    far _entry_347                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ax                              ; 50
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_010C                          ; 74 17
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        jmp     L_0110                          ; EB 04
L_010C:
        mov     ax, 0xffff                      ; B8 FF FF
        cdq                                     ; 99
L_0110:
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far _entry_207                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x116], ax       ; 89 86 EA FE
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jne     L_0127                          ; 75 03
        jmp     L_0461                          ; E9 3A 03
L_0127:
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xd2]                 ; 8D 86 2E FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12EB                          ; E8 B3 11
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0145                          ; 74 03
        jmp     L_048F                          ; E9 4A 03
L_0145:
        call    far _entry_209                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x116]       ; 8B 86 EA FE
        mov     word ptr [0x4a], ax             ; A3 4A 00
        cmp     word ptr [0x7e], 1              ; 83 3E 7E 00 01
        je      L_015B                          ; 74 03
        jmp     L_0342                          ; E9 E7 01
L_015B:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        mov     word ptr [bp - 0x126], ax       ; 89 86 DA FE
        mov     word ptr [bp - 0x124], dx       ; 89 96 DC FE
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        mov     word ptr [bp - 0x12c], ax       ; 89 86 D4 FE
        mov     word ptr [bp - 0x12a], dx       ; 89 96 D6 FE
        mov     ax, word ptr [0x71a]            ; A1 1A 07
        mov     dx, word ptr [0x71c]            ; 8B 16 1C 07
        mov     word ptr [bp - 0x134], ax       ; 89 86 CC FE
        mov     word ptr [bp - 0x132], dx       ; 89 96 CE FE
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        mov     word ptr [bp - 0x11a], ax       ; 89 86 E6 FE
        mov     word ptr [bp - 0x118], dx       ; 89 96 E8 FE
        mov     word ptr [bp - 0x128], 0        ; C7 86 D8 FE 00 00
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        mov     ax, 0x7d0                       ; B8 D0 07
        push    ax                              ; 50
        call    far _entry_167                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_192                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_01CC                          ; 75 03
        jmp     L_0461                          ; E9 95 02
L_01CC:
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_206                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_01EF                          ; 74 03
        jmp     L_0461                          ; E9 72 02
L_01EF:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x13e2], ax           ; A3 E2 13
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     ax, word ptr [bp - 0x11a]       ; 8B 86 E6 FE
        mov     dx, word ptr [bp - 0x118]       ; 8B 96 E8 FE
        mov     word ptr [0x13a6], ax           ; A3 A6 13
        mov     word ptr [0x13a8], dx           ; 89 16 A8 13
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x11c], ax       ; 89 86 E4 FE
        mov     word ptr [bp - 0x11e], ax       ; 89 86 E2 FE
L_0210:
        mov     ax, word ptr [bp - 0x11a]       ; 8B 86 E6 FE
        mov     dx, word ptr [bp - 0x118]       ; 8B 96 E8 FE
        cmp     word ptr [bp - 0x11c], dx       ; 39 96 E4 FE
        jle     L_0221                          ; 7E 03
        jmp     L_0313                          ; E9 F2 00
L_0221:
        jl      L_022C                          ; 7C 09
        cmp     word ptr [bp - 0x11e], ax       ; 39 86 E2 FE
        jb      L_022C                          ; 72 03
        jmp     L_0313                          ; E9 E7 00
L_022C:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0x11c]           ; FF B6 E4 FE
        push    word ptr [bp - 0x11e]           ; FF B6 E2 FE
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        jne     L_0255                          ; 75 12
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        mov     word ptr [bp - 0x130], ax       ; 89 86 D0 FE
        mov     word ptr [bp - 0x12e], dx       ; 89 96 D2 FE
        jmp     L_0300                          ; E9 AB 00
L_0255:
        inc     word ptr [bp - 0x128]           ; FF 86 D8 FE
        cmp     word ptr [bp - 0x128], 1        ; 83 BE D8 FE 01
        jne     L_02BD                          ; 75 5D
        lea     ax, [bp - 0x176]                ; 8D 86 8A FE
        push    ax                              ; 50
        mov     ax, 0x1004                      ; B8 04 10
        push    ax                              ; 50
        call    far _entry_52                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x780]                ; FF 36 80 07
        lea     ax, [bp - 0x176]                ; 8D 86 8A FE
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_109                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jne     L_02BD                          ; 75 38
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_190                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x126]       ; 8B 86 DA FE
        mov     dx, word ptr [bp - 0x124]       ; 8B 96 DC FE
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     word ptr [0x13e2], dx           ; 89 16 E2 13
        mov     ax, word ptr [bp - 0x12c]       ; 8B 86 D4 FE
        mov     dx, word ptr [bp - 0x12a]       ; 8B 96 D6 FE
        mov     word ptr [0x13a6], ax           ; A3 A6 13
        mov     word ptr [0x13a8], dx           ; 89 16 A8 13
        mov     ax, word ptr [bp - 0x134]       ; 8B 86 CC FE
        mov     dx, word ptr [bp - 0x132]       ; 8B 96 CE FE
        mov     word ptr [0x71a], ax            ; A3 1A 07
        mov     word ptr [0x71c], dx            ; 89 16 1C 07
        jmp     L_0461                          ; E9 A4 01
L_02BD:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x1c02]               ; FF 36 02 1C
        push    word ptr [0x1c00]               ; FF 36 00 1C
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        sub     ax, word ptr [0x1c00]           ; 2B 06 00 1C
        sbb     dx, word ptr [0x1c02]           ; 1B 16 02 1C
        mov     word ptr [bp - 0x122], ax       ; 89 86 DE FE
        mov     word ptr [bp - 0x120], dx       ; 89 96 E0 FE
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
        mov     ax, word ptr [bp - 0x122]       ; 8B 86 DE FE
        mov     dx, word ptr [bp - 0x120]       ; 8B 96 E0 FE
        sub     word ptr [bp - 0x11a], ax       ; 29 86 E6 FE
        sbb     word ptr [bp - 0x118], dx       ; 19 96 E8 FE
L_0300:
        mov     ax, word ptr [bp - 0x130]       ; 8B 86 D0 FE
        mov     dx, word ptr [bp - 0x12e]       ; 8B 96 D2 FE
        mov     word ptr [bp - 0x11e], ax       ; 89 86 E2 FE
        mov     word ptr [bp - 0x11c], dx       ; 89 96 E4 FE
        jmp     L_0210                          ; E9 FD FE
L_0313:
        mov     ax, word ptr [bp - 0x126]       ; 8B 86 DA FE
        mov     dx, word ptr [bp - 0x124]       ; 8B 96 DC FE
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     word ptr [0x13e2], dx           ; 89 16 E2 13
        mov     ax, word ptr [bp - 0x12c]       ; 8B 86 D4 FE
        mov     dx, word ptr [bp - 0x12a]       ; 8B 96 D6 FE
        mov     word ptr [0x13a6], ax           ; A3 A6 13
        mov     word ptr [0x13a8], dx           ; 89 16 A8 13
        mov     ax, word ptr [bp - 0x134]       ; 8B 86 CC FE
        mov     dx, word ptr [bp - 0x132]       ; 8B 96 CE FE
        mov     word ptr [0x71a], ax            ; A3 1A 07
        mov     word ptr [0x71c], dx            ; 89 16 1C 07
        jmp     L_0348                          ; EB 06
L_0342:
        mov     ax, word ptr [0x12b4]           ; A1 B4 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0348:
        push    word ptr [bp - 0x116]           ; FF B6 EA FE
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077A                          ; E8 23 04
        or      ax, ax                          ; 0B C0
        je      L_0390                          ; 74 35
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ax                              ; 50
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        call    far _entry_346                  ; 9A A0 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x178], ax       ; 89 86 88 FE
        or      ax, ax                          ; 0B C0
        jge     L_0386                          ; 7D 15
        cmp     ax, 0xfffd                      ; 3D FD FF
        jne     L_037B                          ; 75 05
        mov     ax, 0x201c                      ; B8 1C 20
        jmp     L_037E                          ; EB 03
L_037B:
        mov     ax, 0x4000                      ; B8 00 40
L_037E:
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03DA                          ; EB 54
L_0386:
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_195C                          ; E8 CE 15
        jmp     L_03DA                          ; EB 4A
L_0390:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        je      L_03D1                          ; 74 3B
        lea     ax, [bp - 0xd2]                 ; 8D 86 2E FF
        push    ax                              ; 50
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        call    far _entry_346                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_03D1                          ; 7C 29
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        call    far _entry_199                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x17a], ax       ; 89 86 86 FE
        cmp     ax, 0x7fff                      ; 3D FF 7F
        je      L_03D1                          ; 74 17
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 0x17a]           ; F7 AE 86 FE
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0x1218]           ; 8B 36 18 12
        add     bx, word ptr [si]               ; 03 1C
        mov     word ptr [bp - 0x17c], bx       ; 89 9E 84 FE
        and     byte ptr [bx + 4], 0xfd         ; 80 67 04 FD
L_03D1:
        push    word ptr [bp - 0x116]           ; FF B6 EA FE
        call    far _entry_234                  ; 9A FF FF 00 00 [FIXUP]
L_03DA:
        cmp     word ptr [0x7e], 1              ; 83 3E 7E 00 01
        jne     L_03E9                          ; 75 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_190                  ; 9A 89 02 00 00 [FIXUP]
L_03E9:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        and     byte ptr [bx + si + 6], 0xfd    ; 80 60 06 FD
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        push    word ptr [bx + si + 8]          ; FF 70 08
        call    far KERNEL.LOCALFREE            ; 9A 56 06 00 00 [FIXUP]
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        call    far _entry_167                  ; 9A 9A 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x90], ax        ; 89 86 70 FF
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp - 0x90]        ; 8B 86 70 FF
        mov     word ptr [bx + di + 8], ax      ; 89 41 08
        jmp     L_045C                          ; EB 2D
L_042F:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 6]      ; 8B 40 06
        mov     cl, 0xa                         ; B1 0A
        shr     ax, cl                          ; D3 E8
        and     ax, 3                           ; 25 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_049C                          ; E8 40 00
L_045C:
        call    far _entry_351                  ; 9A FF FF 00 00 [FIXUP]
L_0461:
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    far _entry_348                  ; 9A 46 00 00 00 [FIXUP]
        mov     word ptr [0x4a], 0x7fff         ; C7 06 4A 00 FF 7F
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
        mov     word ptr [0x4e], ax             ; A3 4E 00
        mov     ax, 0x32                        ; B8 32 00
        imul    word ptr [0x320]                ; F7 2E 20 03
        add     ax, 0x4e                        ; 05 4E 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1012], ax           ; A3 12 10
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        mov     word ptr [0x3e], ax             ; A3 3E 00
L_048F:
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
; sub_049C -- offset 0x049C -- 257 instr
; Dispatcher: tabla de decisiones cmp+jcc (257 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_101D
; calls (intra): sub_077A, sub_101D, sub_12EB, sub_195C, sub_1A06
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_049C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xda                        ; 81 EC DA 00
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x8e], 0         ; C7 86 72 FF 00 00
        cmp     word ptr [bp + 0xc], 7          ; 83 7E 0C 07
        jne     L_04BC                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_04BF                          ; EB 03
L_04BC:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
L_04BF:
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        cmp     word ptr [bp + 0xc], 7          ; 83 7E 0C 07
        jne     L_04CF                          ; 75 06
        mov     byte ptr [bp - 0x46], 0         ; C6 46 BA 00
        jmp     L_04E0                          ; EB 11
L_04CF:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        lea     ax, [bp - 0xd2]                 ; 8D 86 2E FF
        push    ax                              ; 50
        call    far _entry_347                  ; 9A E6 00 00 00 [FIXUP]
L_04E0:
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0500                          ; 74 16
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xe]             ; F7 6E 0E
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        jmp     L_0504                          ; EB 04
L_0500:
        mov     ax, 0xffff                      ; B8 FF FF
        cdq                                     ; 99
L_0504:
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far _entry_207                  ; 9A 17 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x8c], ax        ; 89 86 74 FF
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jne     L_051E                          ; 75 06
L_0518:
        mov     ax, 0x7fff                      ; B8 FF 7F
        jmp     L_076D                          ; E9 4F 02
L_051E:
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
        mov     word ptr [0x4a], ax             ; A3 4A 00
        mov     ax, word ptr [0xc20]            ; A1 20 0C
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        je      L_055F                          ; 74 32
        cmp     word ptr [0x7e], 3              ; 83 3E 7E 00 03
        jne     L_053C                          ; 75 08
        mov     word ptr [bp - 0x8e], 0         ; C7 86 72 FF 00 00
        jmp     L_055A                          ; EB 1E
L_053C:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12EB                          ; E8 9F 0D
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_055A                          ; 74 03
        jmp     L_076D                          ; E9 13 02
L_055A:
        call    far _entry_209                  ; 9A 46 01 00 00 [FIXUP]
L_055F:
        cmp     word ptr [bp + 0xc], 7          ; 83 7E 0C 07
        jne     L_0575                          ; 75 10
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 28 00 00 00 [FIXUP]
L_0575:
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077A                          ; E8 F6 01
        or      ax, ax                          ; 0B C0
        jne     L_05D4                          ; 75 4C
        cmp     word ptr [bp - 0x8e], 0         ; 83 BE 72 FF 00
        je      L_05C8                          ; 74 39
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_346                  ; 9A 19 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_05C8                          ; 7C 28
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_199                  ; 9A AD 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xd4], ax        ; 89 86 2C FF
        cmp     ax, 0x7fff                      ; 3D FF 7F
        je      L_05C8                          ; 74 17
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 0xd4]            ; F7 AE 2C FF
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0x1218]           ; 8B 36 18 12
        add     bx, word ptr [si]               ; 03 1C
        mov     word ptr [bp - 0xd6], bx        ; 89 9E 2A FF
        and     byte ptr [bx + 4], 0xfd         ; 80 67 04 FD
L_05C8:
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        call    far _entry_234                  ; 9A D6 03 00 00 [FIXUP]
        jmp     L_0518                          ; E9 44 FF
L_05D4:
        cmp     word ptr [bp + 0xc], 7          ; 83 7E 0C 07
        je      L_05F4                          ; 74 1A
        cmp     word ptr [0x7e], 3              ; 83 3E 7E 00 03
        jne     L_0611                          ; 75 30
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 0x8c]            ; F7 AE 74 FF
        mov     si, ax                          ; 8B F0
        or      byte ptr [bx + si + 4], 2       ; 80 48 04 02
L_05F4:
        mov     ax, word ptr [0xc20]            ; A1 20 0C
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jne     L_063B                          ; 75 3F
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 0x8c]            ; F7 AE 74 FF
        mov     si, ax                          ; 8B F0
        or      byte ptr [bx + si + 4], 2       ; 80 48 04 02
        jmp     L_0643                          ; EB 32
L_0611:
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_346                  ; 9A 65 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xd8], ax        ; 89 86 28 FF
        or      ax, ax                          ; 0B C0
        jge     L_05F4                          ; 7D CF
        cmp     ax, 0xfffd                      ; 3D FD FF
        jne     L_062F                          ; 75 05
        mov     ax, 0x201c                      ; B8 1C 20
        jmp     L_0632                          ; EB 03
L_062F:
        mov     ax, 0x4000                      ; B8 00 40
L_0632:
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 80 03 00 00 [FIXUP]
        jmp     L_0518                          ; E9 DD FE
L_063B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_195C                          ; E8 19 13
L_0643:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xe]             ; F7 6E 0E
        mov     cx, word ptr [bx]               ; 8B 0F
        mov     bx, ax                          ; 8B D8
        add     bx, cx                          ; 03 D9
        push    word ptr [bx]                   ; FF 37
        call    far KERNEL.LOCALFREE            ; 9A 92 06 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        call    far _entry_350                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xe]             ; F7 6E 0E
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     di, word ptr [bx]               ; 8B 3F
        add     di, si                          ; 03 FE
        add     di, 6                           ; 83 C7 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        and     ax, 1                           ; 25 01 00
        mov     cx, word ptr [di]               ; 8B 0D
        and     cl, 0xfe                        ; 80 E1 FE
        or      ax, cx                          ; 0B C1
        mov     word ptr [di], ax               ; 89 05
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        push    word ptr [bx + si + 8]          ; FF 70 08
        call    far KERNEL.LOCALFREE            ; 9A 56 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_167                  ; 9A B4 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xe]             ; F7 6E 0E
        mov     cx, word ptr [bx]               ; 8B 0F
        mov     bx, ax                          ; 8B D8
        add     bx, cx                          ; 03 D9
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + 8], ax           ; 89 47 08
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0718                          ; 74 5B
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_263                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xe]             ; F7 6E 0E
        mov     cx, word ptr [bx]               ; 8B 0F
        mov     bx, ax                          ; 8B D8
        add     bx, cx                          ; 03 D9
        push    word ptr [bx + 0x12]            ; FF 77 12
        call    far _entry_119                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        lea     ax, [bp - 0x90]                 ; 8D 86 70 FF
        push    ax                              ; 50
        call    far _entry_233                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xe]             ; F7 6E 0E
        push    ax                              ; 50
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xda], ax        ; 89 86 26 FF
        pop     ax                              ; 58
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp - 0xda]        ; 03 9E 26 FF
        mov     word ptr [bx + 0x12], cx        ; 89 4F 12
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1A06                          ; E8 F6 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_339                  ; 9A FF FF 00 00 [FIXUP]
L_0718:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_262                  ; 9A 5F 07 00 00 [FIXUP]
        mov     word ptr [0x2d0], 0xffff        ; C7 06 D0 02 FF FF
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        jne     L_0745                          ; 75 18
        cmp     word ptr [0x2e], 0              ; 83 3E 2E 00 00
        jne     L_0745                          ; 75 11
        mov     ax, word ptr [0xc20]            ; A1 20 0C
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        je      L_0745                          ; 74 09
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_101D                          ; E8 D8 08
L_0745:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0769                          ; 74 1E
        mov     ax, word ptr [0xc20]            ; A1 20 0C
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        je      L_075B                          ; 74 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_349                  ; 9A FF FF 00 00 [FIXUP]
L_075B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_262                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x2d0], 0xffff        ; C7 06 D0 02 FF FF
L_0769:
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
L_076D:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_077A -- offset 0x077A -- 134 instr
; Dispatcher: tabla de decisiones cmp+jcc (134 instr).
; tags: dispatcher
; callers: sub_049C
;----------------------------------------------------------------------
L_077A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x324                       ; 81 EC 24 03
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xfe], 0         ; C7 86 02 FF 00 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x48], ax             ; A3 48 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_208                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xee2], ax            ; A3 E2 0E
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_07C5                          ; 75 03
        jmp     L_0FCA                          ; E9 05 08
L_07C5:
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_32                   ; 9A 33 09 00 00 [FIXUP]
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [bp - 4], dx           ; 39 56 FC
        jg      L_082E                          ; 7F 51
        jl      L_07E4                          ; 7C 05
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jae     L_082E                          ; 73 4A
L_07E4:
        mov     ax, word ptr [0xc20]            ; A1 20 0C
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_082E                          ; 74 42
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bx + si + 0x14], 0    ; 83 78 14 00
        je      L_082E                          ; 74 2E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_40                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x2d0], 0xffff        ; C7 06 D0 02 FF FF
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
L_082E:
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
L_0834:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A 5D 09 00 00 [FIXUP]
        mov     ax, word ptr [0x10fa]           ; A1 FA 10
        mov     dx, word ptr [0x10fc]           ; 8B 16 FC 10
        cmp     word ptr [bp - 4], dx           ; 39 56 FC
        jge     L_0850                          ; 7D 03
        jmp     L_08D5                          ; E9 85 00
L_0850:
        jg      L_0857                          ; 7F 05
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jbe     L_08D5                          ; 76 7E
L_0857:
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        jne     L_08D5                          ; 75 77
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        jne     L_08D5                          ; 75 70
        cmp     word ptr [0x7e], 0              ; 83 3E 7E 00 00
        jne     L_0875                          ; 75 09
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x1022]               ; FF 36 22 10
        jmp     L_08C3                          ; EB 4E
L_0875:
        push    word ptr [0x1022]               ; FF 36 22 10
        lea     ax, [bp - 0x298]                ; 8D 86 68 FD
        push    ax                              ; 50
        push    word ptr [0xe8e]                ; FF 36 8E 0E
        call    far _entry_45                   ; 9A 71 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x29a], ax       ; 89 86 66 FD
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        cmp     word ptr [0x7e], 1              ; 83 3E 7E 00 01
        jne     L_08AA                          ; 75 13
        lea     ax, [bp - 0x298]                ; 8D 86 68 FD
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x298]                ; 8D 86 68 FD
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_08BB                          ; EB 11
L_08AA:
        lea     ax, [bp - 0x298]                ; 8D 86 68 FD
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x298]                ; 8D 86 68 FD
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A FF FF 00 00 [FIXUP]
L_08BB:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x298]                ; 8D 86 68 FD
        push    ax                              ; 50
L_08C3:
        push    word ptr [0xe8e]                ; FF 36 8E 0E
        call    far _entry_239                  ; 9A 9C 0A 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        jmp     L_0834                          ; E9 5F FF
L_08D5:
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        je      L_08DF                          ; 74 03
        jmp     L_0F5D                          ; E9 7E 06
L_08DF:
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_08E9                          ; 74 03
        jmp     L_0F5D                          ; E9 74 06
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08E9 -- offset 0x08E9 -- 632 instr
; Dispatcher: tabla de decisiones cmp+jcc (632 instr).
; tags: dispatcher, far
; calls (intra): sub_1570, sub_164D, sub_1760, sub_184D, sub_191B
;----------------------------------------------------------------------
L_08E9:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_44                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     word ptr [bp - 0x88], 0x80      ; C7 86 78 FF 80 00
        mov     word ptr [bp - 0x86], 0         ; C7 86 7A FF 00 00
        mov     byte ptr [bp - 9], 0            ; C6 46 F7 00
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        mov     word ptr [bp - 0xf4], ax        ; 89 86 0C FF
        lea     ax, [bp - 9]                    ; 8D 46 F7
        mov     word ptr [bp - 0x212], ax       ; 89 86 EE FD
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_32                   ; 9A EF 0A 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0xfe]                 ; 8D 86 02 FF
        push    ax                              ; 50
        lea     ax, [bp - 0x20c]                ; 8D 86 F4 FD
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_191B                          ; E8 D2 0F
        or      ax, ax                          ; 0B C0
        jne     L_0950                          ; 75 03
        jmp     L_0F5D                          ; E9 0D 06
L_0950:
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A 26 0A 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xfe]            ; FF B6 02 FF
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        lea     ax, [bp - 0x20c]                ; 8D 86 F4 FD
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_184D                          ; E8 D7 0E
        or      ax, ax                          ; 0B C0
        jne     L_097D                          ; 75 03
        jmp     L_0F5D                          ; E9 E0 05
L_097D:
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 13 0A 00 00 [FIXUP]
L_098F:
        mov     ax, word ptr [0x10fa]           ; A1 FA 10
        mov     dx, word ptr [0x10fc]           ; 8B 16 FC 10
        cmp     word ptr [bp - 4], dx           ; 39 56 FC
        jge     L_099E                          ; 7D 03
        jmp     L_0A49                          ; E9 AB 00
L_099E:
        jg      L_09A8                          ; 7F 08
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        ja      L_09A8                          ; 77 03
        jmp     L_0A49                          ; E9 A1 00
L_09A8:
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        je      L_09B2                          ; 74 03
        jmp     L_0A49                          ; E9 97 00
L_09B2:
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_09BC                          ; 74 03
        jmp     L_0A49                          ; E9 8D 00
L_09BC:
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_46                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A17                          ; 74 45
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        lea     ax, [bp - 0x212]                ; 8D 86 EE FD
        push    ax                              ; 50
        lea     ax, [bp - 0xf4]                 ; 8D 86 0C FF
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ax                              ; 50
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, word ptr [0x10fa]           ; A1 FA 10
        mov     dx, word ptr [0x10fc]           ; 8B 16 FC 10
        add     ax, 0x80                        ; 05 80 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_352                  ; 9A 8B 0A 00 00 [FIXUP]
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 65 0B 00 00 [FIXUP]
L_0A17:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xfe]            ; FF B6 02 FF
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        lea     ax, [bp - 0x20c]                ; 8D 86 F4 FD
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_184D                          ; E8 0E 0E
        or      ax, ax                          ; 0B C0
        je      L_0A46                          ; 74 03
        jmp     L_098F                          ; E9 49 FF
L_0A46:
        jmp     L_0F5D                          ; E9 14 05
L_0A49:
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        je      L_0A53                          ; 74 03
        jmp     L_0F5D                          ; E9 0A 05
L_0A53:
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_0A5D                          ; 74 03
        jmp     L_0F5D                          ; E9 00 05
L_0A5D:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        lea     ax, [bp - 0x212]                ; 8D 86 EE FD
        push    ax                              ; 50
        lea     ax, [bp - 0xf4]                 ; 8D 86 0C FF
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ax                              ; 50
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        add     ax, 0x80                        ; 05 80 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_352                  ; 9A 53 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far _entry_239                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        je      L_0AAA                          ; 74 03
        jmp     L_0F5D                          ; E9 B3 04
L_0AAA:
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_0AB4                          ; 74 03
        jmp     L_0F5D                          ; E9 A9 04
L_0AB4:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
        mov     word ptr [bp - 0x88], 0x80      ; C7 86 78 FF 80 00
        mov     word ptr [bp - 0x86], 0         ; C7 86 7A FF 00 00
        mov     byte ptr [bp - 9], 0            ; C6 46 F7 00
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        mov     word ptr [bp - 0xf4], ax        ; 89 86 0C FF
        lea     ax, [bp - 9]                    ; 8D 46 F7
        mov     word ptr [bp - 0x212], ax       ; 89 86 EE FD
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_32                   ; 9A 9C 0B 00 00 [FIXUP]
        test    byte ptr [0xb82], 0xf           ; F6 06 82 0B 0F
        je      L_0B25                          ; 74 2B
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [bx + di + 0xc]    ; 8B 59 0C
        mov     si, word ptr [bx]               ; 8B 37
        mov     word ptr [bp - 0x29c], si       ; 89 B6 64 FD
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        add     word ptr [0xb78], ax            ; 01 06 78 0B
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si + 0xc]         ; 2B 44 0C
        sub     ax, word ptr [si + 0xe]         ; 2B 44 0E
        add     word ptr [0xb76], ax            ; 01 06 76 0B
L_0B25:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        lea     ax, [bp - 0x212]                ; 8D 86 EE FD
        push    ax                              ; 50
        lea     ax, [bp - 0xf4]                 ; 8D 86 0C FF
        push    ax                              ; 50
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        push    word ptr [0x13cc]               ; FF 36 CC 13
L_0B3F:
        mov     ax, 0x66                        ; B8 66 00
L_0B42:
        push    ax                              ; 50
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        add     ax, 0x80                        ; 05 80 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_352                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        lea     ax, [bp - 0xee]                 ; 8D 86 12 FF
        push    ax                              ; 50
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [bp - 4], dx           ; 39 56 FC
        jge     L_0B78                          ; 7D 03
        jmp     L_0C04                          ; E9 8C 00
L_0B78:
        jg      L_0B82                          ; 7F 08
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jae     L_0B82                          ; 73 03
        jmp     L_0C04                          ; E9 82 00
L_0B82:
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        jne     L_0C04                          ; 75 7B
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        jne     L_0C04                          ; 75 74
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xed4]                ; FF 36 D4 0E
        push    word ptr [0xed2]                ; FF 36 D2 0E
        call    far _entry_32                   ; 9A 38 02 00 00 [FIXUP]
        test    byte ptr [0xb82], 0xf           ; F6 06 82 0B 0F
        je      L_0BD2                          ; 74 2B
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [bx + di + 0xc]    ; 8B 59 0C
        mov     si, word ptr [bx]               ; 8B 37
        mov     word ptr [bp - 0x29e], si       ; 89 B6 62 FD
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        add     word ptr [0xb78], ax            ; 01 06 78 0B
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si + 0xc]         ; 2B 44 0C
        sub     ax, word ptr [si + 0xe]         ; 2B 44 0E
        add     word ptr [0xb76], ax            ; 01 06 76 0B
L_0BD2:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        lea     ax, [bp - 0x212]                ; 8D 86 EE FD
        push    ax                              ; 50
        lea     ax, [bp - 0xf4]                 ; 8D 86 0C FF
        push    ax                              ; 50
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        push    word ptr [0x13cc]               ; FF 36 CC 13
        push    ax                              ; 50
        lea     ax, [bp - 0xee]                 ; 8D 86 12 FF
        push    ax                              ; 50
        call    far _entry_187                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0BFE                          ; 75 03
        jmp     L_0B3F                          ; E9 41 FF
L_0BFE:
        mov     ax, 0xff9a                      ; B8 9A FF
        jmp     L_0B42                          ; E9 3E FF
L_0C04:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far _entry_239                  ; 9A 9F 0C 00 00 [FIXUP]
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        je      L_0C1F                          ; 74 03
        jmp     L_0F5D                          ; E9 3E 03
L_0C1F:
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_0C29                          ; 74 03
        jmp     L_0F5D                          ; E9 34 03
L_0C29:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        mov     word ptr [si + 0xe], ax         ; 89 44 0E
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        sub     dx, dx                          ; 2B D2
        mov     cl, 7                           ; B1 07
        call    far _entry_268                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a2], ax       ; 89 86 5E FD
        mov     word ptr [bp - 0x2a0], dx       ; 89 96 60 FD
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bx + di + 0xc]    ; 8B 41 0C
        mov     word ptr [bp - 0xf8], ax        ; 89 86 08 FF
        or      ax, ax                          ; 0B C0
        je      L_0CB2                          ; 74 37
        mov     byte ptr [bp - 0x30a], 0x66     ; C6 86 F6 FC 66
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx]                   ; FF 37
        lea     ax, [bp - 0x309]                ; 8D 86 F7 FC
        push    ax                              ; 50
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 8B 09 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x30a]                ; 8D 86 F6 FC
        push    ax                              ; 50
        mov     ax, 0x67                        ; B8 67 00
        push    ax                              ; 50
        call    far _entry_239                  ; 9A 4C 0D 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 5B 0D 00 00 [FIXUP]
L_0CB2:
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        je      L_0CBC                          ; 74 03
        jmp     L_0F5D                          ; E9 A1 02
L_0CBC:
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_0CC6                          ; 74 03
        jmp     L_0F5D                          ; E9 97 02
L_0CC6:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        cmp     word ptr [bp - 0xf8], 0         ; 83 BE 08 FF 00
        je      L_0D5F                          ; 74 7E
        mov     ax, 2                           ; B8 02 00
        mov     word ptr [bp - 0x320], ax       ; 89 86 E0 FC
        mov     word ptr [bp - 0x322], ax       ; 89 86 DE FC
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bx + di + 2]      ; 8B 41 02
        mov     dx, word ptr [bx + di + 4]      ; 8B 51 04
        mov     word ptr [bp - 0x31e], ax       ; 89 86 E2 FC
        mov     word ptr [bp - 0x31c], dx       ; 89 96 E4 FC
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [bp - 0x314], ax       ; 89 86 EC FC
        mov     word ptr [bp - 0x312], dx       ; 89 96 EE FC
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0x31a], ax       ; 89 86 E6 FC
        mov     ax, word ptr [bp - 0x2a2]       ; 8B 86 5E FD
        mov     dx, word ptr [bp - 0x2a0]       ; 8B 96 60 FD
        mov     word ptr [bp - 0x318], ax       ; 89 86 E8 FC
        mov     word ptr [bp - 0x316], dx       ; 89 96 EA FC
        mov     word ptr [bp - 0x310], 0x7fff   ; C7 86 F0 FC FF 7F
        mov     word ptr [bp - 0x30e], 0xffff   ; C7 86 F2 FC FF FF
        mov     word ptr [bp - 0x30c], 0xffff   ; C7 86 F4 FC FF FF
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x322]                ; 8D 86 DE FC
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        call    far _entry_239                  ; 9A AB 0D 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_44                   ; 9A BA 0D 00 00 [FIXUP]
L_0D5F:
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        je      L_0D69                          ; 74 03
        jmp     L_0F5D                          ; E9 F4 01
L_0D69:
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_0D73                          ; 74 03
        jmp     L_0F5D                          ; E9 EA 01
L_0D73:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1570                          ; E8 E1 07
        mov     word ptr [bp - 0xfc], ax        ; 89 86 04 FF
        or      ax, ax                          ; 0B C0
        je      L_0DBE                          ; 74 27
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bx]               ; 8B 37
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    si                              ; 56
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [si]                   ; F7 2C
        shl     ax, 1                           ; D1 E0
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        call    far _entry_239                  ; 9A C8 08 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 04 0E 00 00 [FIXUP]
L_0DBE:
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        je      L_0DC8                          ; 74 03
        jmp     L_0F5D                          ; E9 95 01
L_0DC8:
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_0DD2                          ; 74 03
        jmp     L_0F5D                          ; E9 8B 01
L_0DD2:
        cmp     word ptr [0x7e], 1              ; 83 3E 7E 00 01
        je      L_0E1C                          ; 74 43
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        mov     word ptr [si + 0x16], ax        ; 89 44 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0xfe]            ; FF B6 02 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1760                          ; E8 67 09
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_44                   ; 9A F4 08 00 00 [FIXUP]
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        je      L_0E12                          ; 74 03
        jmp     L_0F5D                          ; E9 4B 01
L_0E12:
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_0E1C                          ; 74 03
        jmp     L_0F5D                          ; E9 41 01
L_0E1C:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_212                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x216], ax       ; 89 86 EA FD
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0x1218]           ; 8B 36 18 12
        add     bx, word ptr [si]               ; 03 1C
        mov     word ptr [bp - 0xfa], bx        ; 89 9E 06 FF
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     bx, word ptr [bp - 0x216]       ; 8B 9E EA FD
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     bx, word ptr [bp - 0x216]       ; 8B 9E EA FD
        mov     si, word ptr [bp - 0xfa]        ; 8B B6 06 FF
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     bx, word ptr [bp - 0x216]       ; 8B 9E EA FD
        mov     si, word ptr [bp - 0xfa]        ; 8B B6 06 FF
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     bx, word ptr [bp - 0x216]       ; 8B 9E EA FD
        mov     si, word ptr [bp - 0xfa]        ; 8B B6 06 FF
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        mov     word ptr [bx + 0x18], ax        ; 89 47 18
        mov     bx, word ptr [bp - 0x216]       ; 8B 9E EA FD
        mov     si, word ptr [bp - 0xfa]        ; 8B B6 06 FF
        mov     ax, word ptr [si + 0x14]        ; 8B 44 14
        mov     word ptr [bx + 0x1a], ax        ; 89 47 1A
        cmp     word ptr [0x7e], 1              ; 83 3E 7E 00 01
        je      L_0EAC                          ; 74 1E
        mov     bx, word ptr [bp - 0x216]       ; 8B 9E EA FD
        mov     si, word ptr [bp - 0xfa]        ; 8B B6 06 FF
        mov     ax, word ptr [si + 0x16]        ; 8B 44 16
        mov     word ptr [bx + 0x1c], ax        ; 89 47 1C
        mov     bx, word ptr [bp - 0x216]       ; 8B 9E EA FD
        mov     si, word ptr [bp - 0xfa]        ; 8B B6 06 FF
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        mov     word ptr [bx + 0x60], ax        ; 89 47 60
        jmp     L_0EC3                          ; EB 17
L_0EAC:
        mov     bx, word ptr [bp - 0x216]       ; 8B 9E EA FD
        mov     si, word ptr [bp - 0xfa]        ; 8B B6 06 FF
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        mov     word ptr [bx + 0x1c], ax        ; 89 47 1C
        mov     bx, word ptr [bp - 0x216]       ; 8B 9E EA FD
        mov     word ptr [bx + 0x60], 0         ; C7 47 60 00 00
L_0EC3:
        mov     bx, word ptr [bp - 0x216]       ; 8B 9E EA FD
        mov     di, word ptr [bp - 0xfa]        ; 8B BE 06 FF
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        add     ax, 0x80                        ; 05 80 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [di], ax               ; 89 05
        mov     word ptr [di + 2], dx           ; 89 55 02
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     word ptr [bx + 0x10], dx        ; 89 57 10
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     di, ax                          ; 8B F8
        test    word ptr [bx + di + 6], 0xc00   ; F7 41 06 00 0C
        jne     L_0F5D                          ; 75 66
        mov     ax, 0x7d1                       ; B8 D1 07
        push    ax                              ; 50
        call    far _entry_167                  ; 9A 2B 0F 00 00 [FIXUP]
        mov     word ptr [bp - 0x324], ax       ; 89 86 DC FC
        inc     ax                              ; 40
        je      L_0F4A                          ; 74 43
        mov     bx, word ptr [bp - 0x324]       ; 8B 9E DC FC
        mov     si, word ptr [bx]               ; 8B 37
        push    si                              ; 56
        mov     ax, word ptr [bp - 0x216]       ; 8B 86 EA FD
        add     ax, 0x1e                        ; 05 1E 00
        push    ax                              ; 50
        push    si                              ; 56
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 83 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x216]       ; 8B 86 EA FD
        add     ax, 0x1e                        ; 05 1E 00
        push    ax                              ; 50
        call    far _entry_167                  ; 9A 0F 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x324], ax       ; 89 86 DC FC
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp - 0x324]       ; 8B 86 DC FC
        mov     word ptr [bx + di + 0x20], ax   ; 89 41 20
        jmp     L_0F5D                          ; EB 13
L_0F4A:
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        mov     word ptr [bx + si + 0x20], 0    ; C7 40 20 00 00
L_0F5D:
        mov     word ptr [0x48], 0x7fff         ; C7 06 48 00 FF 7F
        push    word ptr [bp - 0xfe]            ; FF B6 02 FF
        call    far _entry_119                  ; 9A D9 06 00 00 [FIXUP]
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        jne     L_0F7A                          ; 75 07
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_0F82                          ; 74 08
L_0F7A:
        mov     word ptr [bp - 0xf0], 0         ; C7 86 10 FF 00 00
        jmp     L_0F8E                          ; EB 0C
L_0F82:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_57                   ; 9A F5 0F 00 00 [FIXUP]
        mov     word ptr [bp - 0xf0], ax        ; 89 86 10 FF
L_0F8E:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_53                   ; 9A 02 10 00 00 [FIXUP]
        cmp     word ptr [bp - 0xf0], 0         ; 83 BE 10 FF 00
        jne     L_0FAA                          ; 75 0C
L_0F9E:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_164D                          ; E8 A7 06
        sub     ax, ax                          ; 2B C0
        jmp     L_1010                          ; EB 66
L_0FAA:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_356                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_100D                          ; 75 57
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        and     byte ptr [bx + si + 4], 0xfe    ; 80 60 04 FE
        jmp     L_100D                          ; EB 43
L_0FCA:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_355                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x48], 0x7fff         ; C7 06 48 00 FF 7F
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        jne     L_0FE9                          ; 75 07
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_0FF1                          ; 74 08
L_0FE9:
        mov     word ptr [bp - 0xf0], 0         ; C7 86 10 FF 00 00
        jmp     L_0FFD                          ; EB 0C
L_0FF1:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_57                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xf0], ax        ; 89 86 10 FF
L_0FFD:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_53                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0xf0], 0         ; 83 BE 10 FF 00
        je      L_0F9E                          ; 74 91
L_100D:
        mov     ax, 1                           ; B8 01 00
L_1010:
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
; sub_101D -- offset 0x101D -- 235 instr
; Dispatcher: tabla de decisiones cmp+jcc (235 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_049C
; calls (intra): sub_049C, sub_1289
; calls (inter): KERNEL.GETTEMPFILENAME
;----------------------------------------------------------------------
L_101D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xda                        ; 81 EC DA 00
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_1065                          ; EB 28
L_103D:
        mov     ax, word ptr [0xc20]            ; A1 20 0C
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_105E                          ; 74 19
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        cmp     word ptr [bx], 0                ; 83 3F 00
        je      L_105E                          ; 74 11
        test    byte ptr [bx + 6], 2            ; F6 47 06 02
        je      L_105E                          ; 74 0B
        mov     ax, word ptr [0x1bfc]           ; A1 FC 1B
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_105E                          ; 74 03
        jmp     L_127C                          ; E9 1E 02
L_105E:
        add     word ptr [bp - 0xa], 0x16       ; 83 46 F6 16
        inc     word ptr [bp - 6]               ; FF 46 FA
L_1065:
        mov     ax, word ptr [0xf9e]            ; A1 9E 0F
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_103D                          ; 7C D0
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xc20]                ; F7 2E 20 0C
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx + 4], 0            ; 83 7F 04 00
        jl      L_1094                          ; 7C 0F
        jle     L_108A                          ; 7E 03
        jmp     L_127C                          ; E9 F2 01
L_108A:
        cmp     word ptr [bx + 2], 0x200        ; 81 7F 02 00 02
        jbe     L_1094                          ; 76 03
        jmp     L_127C                          ; E9 E8 01
L_1094:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        cmp     word ptr [bx + 4], 0            ; 83 7F 04 00
        jl      L_10CA                          ; 7C 2D
        jg      L_10A5                          ; 7F 06
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jbe     L_10CA                          ; 76 25
L_10A5:
        push    word ptr [0xc20]                ; FF 36 20 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_32                   ; 9A CD 07 00 00 [FIXUP]
        push    word ptr [0xc20]                ; FF 36 20 0C
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0x4c]                 ; 8D 46 B4
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_049C                          ; E8 D2 F3
L_10CA:
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_10D4                          ; 74 03
        jmp     L_127C                          ; E9 A8 01
L_10D4:
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0x18]        ; 8B 47 18
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1289                          ; E8 9C 01
        cmp     word ptr [bp + 6], 0x7fff       ; 81 7E 06 FF 7F
        jne     L_10F7                          ; 75 03
        jmp     L_11B8                          ; E9 C1 00
L_10F7:
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     si, word ptr [bx]               ; 8B 37
        cmp     byte ptr [si + 0x23], 0         ; 80 7C 23 00
        je      L_1106                          ; 74 03
        jmp     L_11B8                          ; E9 B2 00
L_1106:
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        mov     word ptr [bp - 0x94], ax        ; 89 86 6C FF
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [bx + di + 0x1e]   ; 8B 59 1E
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x92], al        ; 88 86 6E FF
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_203                  ; 9A 82 11 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1131                          ; 75 03
        jmp     L_11B8                          ; E9 87 00
L_1131:
        mov     al, byte ptr [bp - 0x92]        ; 8A 86 6E FF
        sub     ah, ah                          ; 2A E4
        or      al, 0x80                        ; 0C 80
        push    ax                              ; 50
        mov     ax, 0xa1                        ; B8 A1 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x90]                 ; 8D 86 70 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.GETTEMPFILENAME      ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_11B8                          ; 74 67
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ax                              ; 50
        lea     ax, [bp - 0x90]                 ; 8D 86 70 FF
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_196                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ax                              ; 50
        call    far _entry_167                  ; 9A FC 0E 00 00 [FIXUP]
        mov     word ptr [bp - 0x96], ax        ; 89 86 6A FF
        inc     ax                              ; 40
        je      L_11B8                          ; 74 44
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xda], ax        ; 89 86 26 FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_203                  ; 9A AC 11 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1195                          ; 74 0B
        mov     bx, word ptr [bp - 0x94]        ; 8B 9E 6C FF
        push    word ptr [bx]                   ; FF 37
        call    far _entry_333                  ; 9A FF FF 00 00 [FIXUP]
L_1195:
        mov     bx, word ptr [bp - 0xda]        ; 8B 9E 26 FF
        mov     ax, word ptr [bp - 0x96]        ; 8B 86 6A FF
        mov     word ptr [bx + 0x1e], ax        ; 89 47 1E
        mov     bx, word ptr [bp - 0xda]        ; 8B 9E 26 FF
        and     byte ptr [bx + 4], 0x7f         ; 80 67 04 7F
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_203                  ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_330                  ; 9A FF FF 00 00 [FIXUP]
L_11B8:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        mov     word ptr [bx + 0x18], ax        ; 89 47 18
        mov     byte ptr [0x662], 0             ; C6 06 62 06 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x2bc], ax            ; A3 BC 02
        mov     word ptr [0x2ba], ax            ; A3 BA 02
        mov     word ptr [0x2c0], ax            ; A3 C0 02
        mov     word ptr [0x2be], ax            ; A3 BE 02
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     si, bx                          ; 8B F3
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     word ptr [0x12b8], ax           ; A3 B8 12
        mov     word ptr [0x121c], ax           ; A3 1C 12
        mov     ax, 0x7b                        ; B8 7B 00
        mov     word ptr [0x12ba], ax           ; A3 BA 12
        mov     word ptr [0x121e], ax           ; A3 1E 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_293                  ; 9A 30 12 00 00 [FIXUP]
        mov     word ptr [0x1220], ax           ; A3 20 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x1220]               ; FF 36 20 12
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_212                  ; 9A 47 12 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     word ptr [bx], ax               ; 89 07
        push    ax                              ; 50
        call    far _entry_293                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x12bc], ax           ; A3 BC 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x12bc]               ; FF 36 BC 12
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_212                  ; 9A 2B 0E 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [0x12c0], ax           ; A3 C0 12
        mov     word ptr [0x1224], ax           ; A3 24 12
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        mov     ax, 0x102c                      ; B8 2C 10
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 78 12 00 00 [FIXUP]
        push    word ptr [0x13cc]               ; FF 36 CC 13
        mov     ax, 0x1142                      ; B8 42 11
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 8E 0C 00 00 [FIXUP]
L_127C:
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
; sub_1289 -- offset 0x1289 -- 43 instr
; Funcion mediana (43 instr, 0 calls).
; tags: far, medium
; callers: sub_101D
;----------------------------------------------------------------------
L_1289:
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
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     bx, ax                          ; 8B D8
        mov     di, word ptr [0x1218]           ; 8B 3E 18 12
        add     bx, word ptr [di]               ; 03 1D
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0x18], ax        ; 89 47 18
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     si, word ptr [0x123e]           ; 8B 36 3E 12
        jmp     L_12D6                          ; EB 17
L_12BF:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [si + 2], ax           ; 39 44 02
        jne     L_12D0                          ; 75 09
        and     byte ptr [si + 6], 0xfe         ; 80 64 06 FE
        and     word ptr [si + 6], 1            ; 81 64 06 01 00
L_12D0:
        inc     word ptr [bp - 6]               ; FF 46 FA
        add     si, 9                           ; 83 C6 09
L_12D6:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_12BF                          ; 7C E1
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
; sub_12EB -- offset 0x12EB -- 208 instr
; Dispatcher: tabla de decisiones cmp+jcc (208 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_049C
; calls (intra): sub_152C
; calls (inter): KERNEL.GETTEMPFILENAME, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_12EB:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x21c                       ; 81 EC 1C 02
        push    si                              ; 56
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     word ptr [bp - 0x90], 0         ; C7 86 70 FF 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_152C                          ; E8 1C 02
        or      ax, ax                          ; 0B C0
        jne     L_1317                          ; 75 03
        jmp     L_13DC                          ; E9 C5 00
L_1317:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 1E 0F 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa0                        ; B8 A0 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_353                  ; 9A 5A 13 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_354                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x92], ax        ; 89 86 6E FF
        push    word ptr [bp + 6]               ; FF 76 06
        or      ax, ax                          ; 0B C0
        je      L_1351                          ; 74 05
        mov     ax, 0xc6                        ; B8 C6 00
        jmp     L_1354                          ; EB 03
L_1351:
        mov     ax, 0xcc                        ; B8 CC 00
L_1354:
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_353                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_354                  ; 9A 3D 13 00 00 [FIXUP]
        mov     word ptr [bp - 0x92], ax        ; 89 86 6E FF
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
L_1375:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_1382                          ; 74 07
        cmp     word ptr [bp - 0x92], 0         ; 83 BE 6E FF 00
        je      L_13F6                          ; 74 74
L_1382:
        cmp     word ptr [bp - 0x90], 0         ; 83 BE 70 FF 00
        jne     L_13AE                          ; 75 25
        mov     word ptr [bp - 0x90], 1         ; C7 86 70 FF 01 00
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, 0xa1                        ; B8 A1 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0xd4]                 ; 8D 86 2C FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.GETTEMPFILENAME      ; 9A CB 13 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_13E1                          ; 75 35
        jmp     L_1375                          ; EB C7
L_13AE:
        mov     word ptr [bp - 0x90], 0         ; C7 86 70 FF 00 00
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        sub     ah, ah                          ; 2A E4
        or      al, 0x80                        ; 0C 80
        push    ax                              ; 50
        mov     ax, 0xa1                        ; B8 A1 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0xd4]                 ; 8D 86 2C FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.GETTEMPFILENAME      ; 9A 49 11 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_13E1                          ; 75 0E
        mov     ax, 0x4000                      ; B8 00 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 34 06 00 00 [FIXUP]
L_13DC:
        sub     ax, ax                          ; 2B C0
        jmp     L_1520                          ; E9 3F 01
L_13E1:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xd4]                 ; 8D 86 2C FF
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_196                  ; 9A 5F 11 00 00 [FIXUP]
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_13F6:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_199                  ; 9A 1A 14 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, 0x7fff                      ; 3D FF 7F
        je      L_1416                          ; 74 10
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x116]                ; 8D 86 EA FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12EB                          ; E8 D5 FE
L_1416:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_199                  ; 9A 3E 15 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, 0x7fff                      ; 3D FF 7F
        je      L_1434                          ; 74 0E
        push    ax                              ; 50
        call    far _entry_57                   ; 9A 86 0F 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_202                  ; 9A E5 15 00 00 [FIXUP]
L_1434:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_333                  ; 9A 19 15 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_144F                          ; 74 0F
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_346                  ; 9A 98 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_14B0                          ; 7D 61
L_144F:
        cmp     word ptr [bp - 0x90], 0         ; 83 BE 70 FF 00
        je      L_1459                          ; 74 03
        jmp     L_1375                          ; E9 1C FF
L_1459:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_61                   ; 9A 18 0F 00 00 [FIXUP]
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        dec     ax                              ; 48
        mov     word ptr [bp - 0x218], ax       ; 89 86 E8 FD
L_1469:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bp - 0x218], ax       ; 39 86 E8 FD
        jbe     L_1483                          ; 76 11
        dec     word ptr [bp - 0x218]           ; FF 8E E8 FD
        mov     bx, word ptr [bp - 0x218]       ; 8B 9E E8 FD
        cmp     byte ptr [bx], 0x5c             ; 80 3F 5C
        jne     L_1469                          ; 75 EA
        inc     word ptr [bp - 0x218]           ; FF 86 E8 FD
L_1483:
        mov     ax, 0x2023                      ; B8 23 20
        push    ax                              ; 50
        push    word ptr [bp - 0x218]           ; FF B6 E8 FD
        lea     ax, [bp - 0x216]                ; 8D 86 EA FD
        push    ax                              ; 50
        call    far _entry_360                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x10f4]               ; FF 36 F4 10
        lea     ax, [bp - 0x216]                ; 8D 86 EA FD
        push    ax                              ; 50
        mov     ax, 0x2023                      ; B8 23 20
        push    ax                              ; 50
        call    far _entry_359                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_109                  ; 9A 7C 02 00 00 [FIXUP]
        jmp     L_13DC                          ; E9 2C FF
L_14B0:
        cmp     word ptr [bp - 0xa], 0x7fff     ; 81 7E F6 FF 7F
        je      L_150F                          ; 74 58
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        mov     si, ax                          ; 8B F0
        push    word ptr [bx + si + 0x1e]       ; FF 70 1E
        call    far KERNEL.LOCALFREE            ; 9A 2D 16 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_167                  ; 9A 69 11 00 00 [FIXUP]
        mov     word ptr [bp - 0x21c], ax       ; 89 86 E4 FD
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0x21a], ax       ; 89 86 E6 FD
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 0x21c]       ; 8B 86 E4 FD
        mov     word ptr [bx + 0x1e], ax        ; 89 47 1E
        mov     bx, word ptr [bp - 0x21a]       ; 8B 9E E6 FD
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        and     al, 1                           ; 24 01
        shl     al, 1                           ; D0 E0
        mov     si, bx                          ; 8B F3
        mov     cl, byte ptr [si + 4]           ; 8A 4C 04
        and     cl, 0xfd                        ; 80 E1 FD
        or      al, cl                          ; 0A C1
        mov     byte ptr [bx + 4], al           ; 88 47 04
L_150A:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1520                          ; EB 11
L_150F:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_150A                          ; 75 F5
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_333                  ; 9A 91 11 00 00 [FIXUP]
        jmp     L_13DC                          ; E9 BC FE
L_1520:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_152C -- offset 0x152C -- 33 instr
; Funcion mediana (33 instr, 1 calls).
; tags: calls_kernel, far, medium
; callers: sub_12EB
; calls (inter): KERNEL.OPENFILE
;----------------------------------------------------------------------
L_152C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x82                        ; 81 EC 82 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_199                  ; 9A A4 05 00 00 [FIXUP]
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jne     L_155E                          ; 75 17
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x4000                      ; B8 00 40
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        je      L_1563                          ; 74 05
L_155E:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1565                          ; EB 02
L_1563:
        sub     ax, ax                          ; 2B C0
L_1565:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1570 -- offset 0x1570 -- 88 instr
; Funcion compleja: 88 instrucciones, 1 llamadas, 3 branches.
; tags: calls_kernel, complex, far
; callers: sub_08E9
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_1570:
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
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0xf92]            ; 8B 36 92 0F
        add     bx, word ptr [si]               ; 03 1C
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        test    word ptr [bx + 6], 0xc00        ; F7 47 06 00 0C
        je      L_159A                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_15A0                          ; EB 06
L_159A:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
L_15A0:
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
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [si + 0x1c]        ; 8B 44 1C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_202                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_15FE                          ; EB 0E
L_15F0:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_358                  ; 9A FF FF 00 00 [FIXUP]
        inc     word ptr [bp - 6]               ; FF 46 FA
L_15FE:
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jb      L_15F0                          ; 72 EA
        and     byte ptr [si + 4], 0xfd         ; 80 64 04 FD
        mov     ax, word ptr [0x1bca]           ; A1 CA 1B
        mov     word ptr [si + 0x1e], ax        ; 89 44 1E
        mov     al, byte ptr [si + 5]           ; 8A 44 05
        and     al, 0x80                        ; 24 80
        or      al, 0xb                         ; 0C 0B
        mov     byte ptr [si + 5], al           ; 88 44 05
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        mov     ax, word ptr [0x1bca]           ; A1 CA 1B
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_1631                          ; 74 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.LOCALFREE            ; 9A 35 16 00 00 [FIXUP]
L_1631:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.LOCALFREE            ; 9A 3D 16 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.LOCALFREE            ; 9A 06 04 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_164D -- offset 0x164D -- 108 instr
; Dispatcher: tabla de decisiones cmp+jcc (108 instr).
; tags: dispatcher, far
; callers: sub_08E9
;----------------------------------------------------------------------
L_164D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [0x123e]           ; A1 3E 12
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_167D                          ; EB 16
L_1667:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jne     L_1676                          ; 75 04
        and     byte ptr [bx + 6], 0xfe         ; 80 67 06 FE
L_1676:
        inc     word ptr [bp - 4]               ; FF 46 FC
        add     word ptr [bp - 6], 9            ; 83 46 FA 09
L_167D:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_1667                          ; 7C E2
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
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     ax, word ptr [0x48]             ; A1 48 00
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_16A9                          ; 74 03
        jmp     L_1743                          ; E9 9A 00
L_16A9:
        cmp     word ptr [0xee2], 0             ; 83 3E E2 0E 00
        jle     L_16EC                          ; 7E 3C
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [0xee2]                ; F7 2E E2 0E
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx - 9]           ; 8B 47 F7
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_16DD                          ; EB 15
L_16C8:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bx], ax               ; 39 07
        jne     L_16E8                          ; 75 13
        add     word ptr [bp - 0xa], 9          ; 83 46 F6 09
        inc     word ptr [0xee2]                ; FF 06 E2 0E
L_16DD:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        je      L_16C8                          ; 74 E0
L_16E8:
        dec     word ptr [0xee2]                ; FF 0E E2 0E
L_16EC:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        sar     ax, 1                           ; D1 F8
        inc     word ptr [0xee2]                ; FF 06 E2 0E
        cmp     ax, word ptr [0xee2]            ; 3B 06 E2 0E
        jg      L_1701                          ; 7F 06
        mov     word ptr [0xee2], 0             ; C7 06 E2 0E 00 00
L_1701:
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [0xee2]                ; F7 2E E2 0E
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x123e]           ; 8B 1E 3E 12
        mov     ax, word ptr [0x1bf4]           ; A1 F4 1B
        sub     ax, word ptr [bx + si + 4]      ; 2B 40 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        test    word ptr [bp - 4], 0x8000       ; F7 46 FC 00 80
        je      L_1723                          ; 74 05
        not     ax                              ; F7 D0
        inc     ax                              ; 40
        jmp     L_1726                          ; EB 03
L_1723:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_1726:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 6                           ; 3D 06 00
        jae     L_173E                          ; 73 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_357                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [0xee2], ax            ; A3 E2 0E
        jmp     L_1751                          ; EB 13
L_173E:
        mov     ax, word ptr [0xee2]            ; A1 E2 0E
        jmp     L_174E                          ; EB 0B
L_1743:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        call    far _entry_357                  ; 9A 32 17 00 00 [FIXUP]
L_174E:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_1751:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1760 -- offset 0x1760 -- 92 instr
; Funcion compleja: 92 instrucciones, 0 llamadas, 2 branches.
; tags: complex, far
; callers: sub_08E9
;----------------------------------------------------------------------
L_1760:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        push    si                              ; 56
        mov     word ptr [bp - 0x14], 0x80      ; C7 46 EC 80 00
        mov     word ptr [bp - 0xc], 0xffff     ; C7 46 F4 FF FF
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_239                  ; 9A E0 17 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], 0x7e      ; C7 46 EC 7E 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_1821                          ; EB 76
L_17AB:
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        shl     si, 1                           ; D1 E6
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     bx, word ptr [bx + si + 2]      ; 8B 58 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_61                   ; 9A 35 1A 00 00 [FIXUP]
        inc     ax                              ; 40
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_17F8                          ; 7E 24
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_239                  ; 9A 04 18 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_44                   ; 9A AE 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], 0x80      ; C7 46 EC 80 00
L_17F8:
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_239                  ; 9A 12 18 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far _entry_239                  ; 9A 3D 18 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        inc     ax                              ; 40
        inc     ax                              ; 40
        sub     word ptr [bp - 0x14], ax        ; 29 46 EC
        inc     word ptr [bp - 8]               ; FF 46 F8
L_1821:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jbe     L_1831                          ; 76 03
        jmp     L_17AB                          ; E9 7A FF
L_1831:
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_239                  ; 9A 11 0C 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_184D -- offset 0x184D -- 87 instr
; Funcion compleja: 87 instrucciones, 0 llamadas, 2 branches.
; tags: complex, far
; callers: sub_08E9
;----------------------------------------------------------------------
L_184D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2a                        ; 83 EC 2A
        push    si                              ; 56
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        and     ax, 7                           ; 25 07 00
        mov     cl, 6                           ; B1 06
        shl     ax, cl                          ; D3 E0
        mov     dx, word ptr [bx]               ; 8B 17
        mov     cl, 0xa                         ; B1 0A
        shr     dx, cl                          ; D3 EA
        and     dx, 0x3f                        ; 81 E2 3F 00
        add     ax, dx                          ; 03 C2
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        cmp     ax, 0xff                        ; 3D FF 00
        jne     L_18D8                          ; 75 50
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xc]             ; F7 6E 0C
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bx + si + 0x12]   ; 8B 58 12
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        shl     bx, 1                           ; D1 E3
        mov     bx, word ptr [bx + si + 2]      ; 8B 58 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        push    ax                              ; 50
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ax                              ; 50
        mov     ax, 0x22                        ; B8 22 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 65 1A 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x26]            ; FF 76 DA
        call    far _entry_248                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        cmp     ax, 0xff                        ; 3D FF 00
        jne     L_18CD                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_190F                          ; EB 42
L_18CD:
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        mov     byte ptr [bx + si], al          ; 88 00
L_18D8:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        and     ax, 0x3f                        ; 25 3F 00
        mov     cl, 0xa                         ; B1 0A
        shl     ax, cl                          ; D3 E0
        mov     si, bx                          ; 8B F3
        mov     cx, word ptr [si]               ; 8B 0C
        and     ch, 3                           ; 80 E5 03
        or      ax, cx                          ; 0B C1
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        and     al, 0xc0                        ; 24 C0
        mov     cl, 6                           ; B1 06
        sar     ax, cl                          ; D3 F8
        and     ax, 7                           ; 25 07 00
        mov     si, bx                          ; 8B F3
        mov     cx, word ptr [si + 4]           ; 8B 4C 04
        and     cl, 0xf8                        ; 80 E1 F8
        or      ax, cx                          ; 0B C1
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, 1                           ; B8 01 00
L_190F:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_191B -- offset 0x191B -- 32 instr
; Funcion mediana (32 instr, 0 calls).
; tags: far, medium
; callers: sub_08E9
;----------------------------------------------------------------------
L_191B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_114                  ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_120                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx], ax               ; 89 07
        inc     ax                              ; 40
        jne     L_1944                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1946                          ; EB 02
L_1944:
        sub     ax, ax                          ; 2B C0
L_1946:
        or      ax, ax                          ; 0B C0
        jne     L_194F                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1951                          ; EB 02
L_194F:
        sub     ax, ax                          ; 2B C0
L_1951:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_195C -- offset 0x195C -- 35 instr
; Funcion mediana (35 instr, 1 calls).
; tags: far, medium
; callers: sub_049C
; calls (intra): sub_19AB
;----------------------------------------------------------------------
L_195C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        push    word ptr [bx + si + 4]          ; FF 70 04
        push    word ptr [bx + si + 2]          ; FF 70 02
        call    L_19AB                          ; E8 29 00
        add     ax, 0x80                        ; 05 80 00
        push    ax                              ; 50
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        call    far _entry_52                   ; 9A 6A 02 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     word ptr [0x30], 0xffff         ; C7 06 30 00 FF FF
        call    far _entry_158                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_19AB -- offset 0x19AB -- 38 instr
; Funcion mediana (38 instr, 0 calls).
; tags: medium
; callers: sub_195C
;----------------------------------------------------------------------
L_19AB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_19F2                          ; 7C 36
        jg      L_19C4                          ; 7F 06
        cmp     word ptr [bp + 4], 0xa          ; 83 7E 04 0A
        jb      L_19F2                          ; 72 2E
L_19C4:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_157                  ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_19AB                          ; E8 CE FF
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        add     word ptr [bp + 8], ax           ; 01 46 08
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp + 4]                    ; 8D 46 04
        push    ax                              ; 50
        call    far _entry_361                  ; 9A FF FF 00 00 [FIXUP]
L_19F2:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        add     al, 0x30                        ; 04 30
        mov     byte ptr [bx], al               ; 88 07
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        inc     ax                              ; 40
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1A06 -- offset 0x1A06 -- 80 instr
; Funcion mediana (80 instr, 1 calls).
; tags: calls_kernel, medium
; callers: sub_049C
; calls (inter): KERNEL.WRITEPROFILESTRING
;----------------------------------------------------------------------
L_1A06:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x56                        ; 83 EC 56
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_113                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1A2A                          ; 75 03
        jmp     L_1AB8                          ; E9 8E 00
L_1A2A:
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        mov     ax, 0xda                        ; B8 DA 00
        push    ax                              ; 50
        call    far _entry_61                   ; 9A 5F 1A 00 00 [FIXUP]
        add     ax, 0xd8                        ; 05 D8 00
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_1A44:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_112                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1AB3                          ; 74 63
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        inc     ax                              ; 40
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_61                   ; 9A 5D 14 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 22 13 00 00 [FIXUP]
        dec     ax                              ; 48
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 0x28]            ; FF 46 D8
        mov     byte ptr [bx], 0x2c             ; C6 07 2C
        mov     bx, word ptr [bp - 0x56]        ; 8B 5E AA
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ax                              ; 50
        call    far _entry_78                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     bx, word ptr [bp - 0x54]        ; 8B 5E AC
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        add     al, 0x31                        ; 04 31
        mov     byte ptr [bx], al               ; 88 07
        mov     ax, 0xd2                        ; B8 D2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xda                        ; B8 DA 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A FF FF 00 00 [FIXUP]
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 5            ; 83 7E FC 05
        jl      L_1A44                          ; 7C 91
L_1AB3:
        call    far _entry_106                  ; 9A FF FF 00 00 [FIXUP]
L_1AB8:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
