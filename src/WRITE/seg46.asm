; AUTO-GENERATED from original WRITE segment 46
; segment_size=1343 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 220 instr
; Dispatcher: tabla de decisiones cmp+jcc (220 instr).
; tags: dispatcher, far
;----------------------------------------------------------------------

L_0000:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_0064                          ; 75 51
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A AC 01 00 00 [FIXUP]
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A D3 00 00 00 [FIXUP]
        and     byte ptr [bp - 0xd], 0xbf       ; 80 66 F3 BF
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        mov     word ptr [bp + 8], ax           ; 89 46 08
L_0064:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_177                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_00D7                          ; 74 54
        mov     ax, 0x121c                      ; B8 1C 12
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x13cc]               ; FF 36 CC 13
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1142                      ; B8 42 11
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04CA                          ; E8 30 04
        or      ax, ax                          ; 0B C0
        je      L_00AA                          ; 74 0C
        cmp     word ptr [0x121c], 0            ; 83 3E 1C 12 00
        je      L_00AA                          ; 74 05
        mov     ax, 0xff9a                      ; B8 9A FF
        jmp     L_00AD                          ; EB 03
L_00AA:
        mov     ax, 0x66                        ; B8 66 00
L_00AD:
        push    ax                              ; 50
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [0x2ba], ax            ; A3 BA 02
        mov     word ptr [0x2bc], dx            ; 89 16 BC 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01F3                          ; E8 2C 01
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1142                      ; B8 42 11
        push    ax                              ; 50
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
L_00D7:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_104                  ; 9A FF FF 00 00 [FIXUP]
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
        sub     sp, 0x74                        ; 83 EC 74
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0x13cc]           ; A1 CC 13
        lea     di, [bp - 0x74]                 ; 8D 7E 8C
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        mov     cx, 0x33                        ; B9 33 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        mov     ax, word ptr [0x12b4]           ; A1 B4 12
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_0148                          ; 75 21
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        je      L_0137                          ; 74 09
        mov     ax, word ptr [bp - 0x64]        ; 8B 46 9C
        and     al, 0xf0                        ; 24 F0
        or      al, 6                           ; 0C 06
        jmp     L_0145                          ; EB 0E
L_0137:
        test    byte ptr [0x107f], 2            ; F6 06 7F 10 02
        je      L_0148                          ; 74 0A
        mov     ax, word ptr [bp - 0x64]        ; 8B 46 9C
        and     al, 0xf0                        ; 24 F0
        or      al, 7                           ; 0C 07
L_0145:
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
L_0148:
        mov     byte ptr [bp - 4], 0xd          ; C6 46 FC 0D
        mov     byte ptr [bp - 3], 0xa          ; C6 46 FD 0A
        lea     di, [bp - 0xe]                  ; 8D 7E F2
        mov     si, 0xa5e                       ; BE 5E 0A
        push    ss                              ; 16
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        and     byte ptr [bp - 0xb], 0xbf       ; 80 66 F5 BF
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 81 FE
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
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A FF FF 00 00 [FIXUP]
        lea     di, [bp - 0xe]                  ; 8D 7E F2
        mov     si, 0xbf8                       ; BE F8 0B
        push    ss                              ; 16
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        and     byte ptr [bp - 0xb], 0xbf       ; 80 66 F5 BF
        mov     byte ptr [bp - 4], 0xd          ; C6 46 FC 0D
        mov     byte ptr [bp - 3], 0xa          ; C6 46 FD 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 1A FE
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
; sub_01F3 -- offset 0x01F3 -- 145 instr
; Funcion compleja: 145 instrucciones, 1 llamadas, 3 branches.
; tags: complex, far
; callers: sub_0000
; calls (intra): sub_035F
;----------------------------------------------------------------------
L_01F3:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        push    word ptr [bx + 4]               ; FF 77 04
        call    far _entry_208                  ; 9A C0 02 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xa58]            ; 03 06 58 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_02E2                          ; E9 C1 00
L_0221:
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        mov     cx, 6                           ; B9 06 00
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        inc     ax                              ; 40
        mov     word ptr [bx + 8], ax           ; 89 47 08
        imul    cx                              ; F7 E9
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_95                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0252                          ; 75 03
        jmp     L_0352                          ; E9 00 01
L_0252:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx - 6]           ; 8B 47 FA
        mov     dx, word ptr [bx - 4]           ; 8B 57 FC
        mov     cx, ax                          ; 8B C8
        mov     ax, 6                           ; B8 06 00
        mov     bx, dx                          ; 8B DA
        imul    word ptr [bp - 0xc]             ; F7 6E F4
        mov     si, bx                          ; 8B F3
        mov     bx, ax                          ; 8B D8
        mov     di, word ptr [bp - 0xe]         ; 8B 7E F2
        mov     di, word ptr [di]               ; 8B 3D
        mov     word ptr [bx + di], cx          ; 89 09
        mov     word ptr [bx + di + 2], si      ; 89 71 02
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     cx, ax                          ; 8B C8
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 0xc]             ; F7 6E F4
        mov     si, ax                          ; 8B F0
        mov     word ptr [bx + si + 4], cx      ; 89 48 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_293                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     word ptr [bx], 0                ; C7 07 00 00
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     word ptr [bx + 2], 0x7b         ; C7 47 02 7B 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jge     L_02B6                          ; 7D 08
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
L_02B6:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        push    word ptr [bx + 4]               ; FF 77 04
        call    far _entry_208                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xa58]            ; 03 06 58 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     ax, word ptr [si - 6]           ; 8B 44 FA
        mov     dx, word ptr [si - 4]           ; 8B 54 FC
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
L_02E2:
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_035F                          ; E8 41 00
        or      ax, ax                          ; 0B C0
        jne     L_0325                          ; 75 03
        jmp     L_0221                          ; E9 FC FE
L_0325:
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 8]               ; F7 6E F8
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x123e]           ; 8B 1E 3E 12
        or      byte ptr [bx + si + 6], 1       ; 80 48 06 01
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        sub     ax, 4                           ; 2D 04 00
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        sub     ax, 4                           ; 2D 04 00
        mov     word ptr [bx + 2], ax           ; 89 47 02
L_0352:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_035F -- offset 0x035F -- 139 instr
; Dispatcher: tabla de decisiones cmp+jcc (139 instr).
; tags: dispatcher, far
; callers: sub_01F3
;----------------------------------------------------------------------
L_035F:
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
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jge     L_038A                          ; 7D 17
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, 6                           ; 05 06 00
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        cmp     ax, word ptr [bx]               ; 3B 07
        jbe     L_038A                          ; 76 08
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
L_038A:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jg      L_0393                          ; 7F 03
        jmp     L_0486                          ; E9 F3 00
L_0393:
        cmp     word ptr [bp + 0xa], 0x66       ; 83 7E 0A 66
        jne     L_03CC                          ; 75 33
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        cmp     word ptr [bx + 0x16], 0         ; 83 7F 16 00
        je      L_03C7                          ; 74 25
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
L_03A7:
        cmp     word ptr [bp - 6], 0xd          ; 83 7E FA 0D
        jge     L_03C7                          ; 7D 1A
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        cmp     word ptr [bx + si + 0x16], 0    ; 83 78 16 00
        jne     L_03C2                          ; 75 05
        lea     ax, [si + 0x1a]                 ; 8D 44 1A
        jmp     L_03DA                          ; EB 18
L_03C2:
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_03A7                          ; EB E0
L_03C7:
        mov     word ptr [bp + 0xa], 0x16       ; C7 46 0A 16 00
L_03CC:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_46                   ; 9A FF FF 00 00 [FIXUP]
L_03DA:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jle     L_03E4                          ; 7E 03
        inc     word ptr [bp - 4]               ; FF 46 FC
L_03E4:
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     ax, word ptr [bx]               ; 8B 07
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     cx, word ptr [bx]               ; 8B 0F
        add     cx, 6                           ; 83 C1 06
        cmp     ax, cx                          ; 3B C1
        jae     L_043B                          ; 73 43
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jne     L_0403                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_04BE                          ; E9 BB 00
L_0403:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far _entry_239                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0x14]        ; 8B 5E 14
        mov     si, word ptr [bp + 0x10]        ; 8B 76 10
        mov     si, word ptr [si]               ; 8B 34
        mov     ax, word ptr [si - 6]           ; 8B 44 FA
        mov     dx, word ptr [si - 4]           ; 8B 54 FC
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        add     ax, 0x7f                        ; 05 7F 00
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bx], ax               ; 89 07
L_043B:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jle     L_047A                          ; 7E 39
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, word ptr [bp + 0x12]        ; 8B 76 12
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     word ptr [si], ax               ; 29 04
        mov     ax, word ptr [si]               ; 8B 04
        sub     ax, word ptr [bp + 0x14]        ; 2B 46 14
        sub     ax, 4                           ; 2D 04 00
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     bx, word ptr [bx]               ; 8B 1F
        dec     word ptr [bp - 4]               ; FF 4E FC
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr [bx], al               ; 88 07
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     ax, word ptr [bx]               ; 8B 07
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0491                          ; EB 17
L_047A:
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     word ptr [bx + 4], 0xffff       ; C7 47 04 FF FF
        jmp     L_0491                          ; EB 0B
L_0486:
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [si - 2]           ; 8B 44 FE
        mov     word ptr [si + 4], ax           ; 89 44 04
L_0491:
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        add     word ptr [bx], 6                ; 83 07 06
        mov     ax, word ptr [bx]               ; 8B 07
        sub     ax, word ptr [bp + 0x14]        ; 2B 46 14
        sub     ax, 4                           ; 2D 04 00
        cdq                                     ; 99
        mov     cx, 6                           ; B9 06 00
        idiv    cx                              ; F7 F9
        mov     bx, word ptr [bp + 0x14]        ; 8B 5E 14
        mov     byte ptr [bx + 0x7f], al        ; 88 47 7F
        mov     ax, 1                           ; B8 01 00
L_04BE:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04CA -- offset 0x04CA -- 53 instr
; Funcion mediana (53 instr, 0 calls).
; tags: medium
; callers: sub_0000
;----------------------------------------------------------------------
L_04CA:
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
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, 0x16                        ; 05 16 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x16                        ; 05 16 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_04EA:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     word ptr [bx], si               ; 39 37
        jne     L_0526                          ; 75 30
        or      si, si                          ; 0B F6
        jne     L_0512                          ; 75 18
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x66                        ; B8 66 00
        push    ax                              ; 50
        call    far _entry_46                   ; 9A D6 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0526                          ; 75 19
        mov     ax, 1                           ; B8 01 00
        jmp     L_0534                          ; EB 22
L_0512:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        mov     ax, word ptr [si]               ; 8B 04
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        cmp     word ptr [bx + 2], dx           ; 39 57 02
        jne     L_0526                          ; 75 04
        cmp     word ptr [bx], ax               ; 39 07
        je      L_052A                          ; 74 04
L_0526:
        sub     ax, ax                          ; 2B C0
        jmp     L_0534                          ; EB 0A
L_052A:
        add     word ptr [bp - 4], 4            ; 83 46 FC 04
        add     word ptr [bp - 6], 4            ; 83 46 FA 04
        jmp     L_04EA                          ; EB B6
L_0534:
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
