; AUTO-GENERATED from original WRITE segment 55
; segment_size=2489 bytes, flags=0xf130
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
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bx + 0x36]        ; 8B 47 36
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        add     ax, word ptr [bx]               ; 03 07
        sub     ax, 0x10                        ; 2D 10 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     si, word ptr [0x326]            ; 8B 36 26 03
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        cmp     word ptr [bx + 0xe], ax         ; 39 47 0E
        jle     L_0051                          ; 7E 0E
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     bx, ax                          ; 3B D8
        jbe     L_0051                          ; 76 07
        sub     word ptr [bp - 8], 0x10         ; 83 6E F8 10
        dec     word ptr [bp - 0xe]             ; FF 4E F2
L_0051:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bx + 0x16], dx        ; 39 57 16
        jle     L_0063                          ; 7E 03
        jmp     L_00E5                          ; E9 82 00
L_0063:
        jl      L_006A                          ; 7C 05
        cmp     word ptr [bx + 0x14], ax        ; 39 47 14
        ja      L_00E5                          ; 77 7B
L_006A:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        add     ax, word ptr [bx + 6]           ; 03 47 06
        adc     dx, word ptr [bx + 8]           ; 13 57 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        cmp     dx, word ptr [bp + 8]           ; 3B 56 08
        jl      L_00E5                          ; 7C 63
        jg      L_0089                          ; 7F 05
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jb      L_00E5                          ; 72 5C
L_0089:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jne     L_00A2                          ; 75 0E
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_00A2                          ; 75 09
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        test    byte ptr [bx + 2], 8            ; F6 47 02 08
        je      L_00E5                          ; 74 43
L_00A2:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_0114                          ; 74 5C
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_0114                          ; 75 4F
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jne     L_0114                          ; 75 49
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [bx + 8], dx           ; 39 57 08
        jne     L_0114                          ; 75 3A
        cmp     word ptr [bx + 6], ax           ; 39 47 06
        jne     L_0114                          ; 75 35
        cmp     byte ptr [bx + 1], 0            ; 80 7F 01 00
        jbe     L_0114                          ; 76 2F
L_00E5:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     word ptr [bx + 0x16], dx        ; 89 57 16
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0934                          ; E8 38 08
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     word ptr [bx + 8], 0            ; C7 47 08 00 00
        mov     ax, 0x270f                      ; B8 0F 27
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04A6                          ; E8 92 03
L_0114:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0120 -- offset 0x0120 -- 89 instr
; Funcion compleja: 89 instrucciones, 1 llamadas, 5 branches.
; tags: calls_user, complex, far
; callers: sub_01FA, sub_04A6
; calls (inter): USER.SETSCROLLPOS
;----------------------------------------------------------------------
L_0120:
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
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bx + 0x36]        ; 8B 47 36
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bx + 0x1c]        ; 8B 47 1C
        mov     dx, word ptr [bx + 0x1e]        ; 8B 57 1E
        sub     ax, word ptr [bx + 0x18]        ; 2B 47 18
        sbb     dx, word ptr [bx + 0x1a]        ; 1B 57 1A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        jne     L_0155                          ; 75 07
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_01CB                          ; EB 76
L_0155:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     bx, word ptr [bx]               ; 8B 1F
        test    byte ptr [bx + 2], 4            ; F6 47 02 04
        je      L_0171                          ; 74 11
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        test    byte ptr [bx], 1                ; F6 07 01
        jne     L_0171                          ; 75 08
        push    bx                              ; 53
        call    far _entry_341                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_017B                          ; EB 0A
L_0171:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bx + 0x14]        ; 8B 47 14
        mov     dx, word ptr [bx + 0x16]        ; 8B 57 16
L_017B:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0xff                        ; B8 FF 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        sub     ax, word ptr [bx + 0x18]        ; 2B 47 18
        sbb     dx, word ptr [bx + 0x1a]        ; 1B 57 1A
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_115                  ; 9A FF FF 00 00 [FIXUP]
        mov     cx, word ptr [bp - 6]           ; 8B 4E FA
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        sar     bx, 1                           ; D1 FB
        rcr     cx, 1                           ; D1 D9
        add     ax, cx                          ; 03 C1
        adc     dx, bx                          ; 13 D3
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_157                  ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        cmp     si, 0xff                        ; 81 FE FF 00
        jle     L_01C6                          ; 7E 05
        mov     ax, 0xff                        ; B8 FF 00
        jmp     L_01C8                          ; EB 02
L_01C6:
        mov     ax, si                          ; 8B C6
L_01C8:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_01CB:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     al, byte ptr [bx + 0x20]        ; 8A 47 20
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp - 0xa]         ; 3B 46 F6
        je      L_01F0                          ; 74 17
        push    word ptr [bx + 0x30]            ; FF 77 30
        mov     al, byte ptr [bx + 0x35]        ; 8A 47 35
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        mov     byte ptr [bx + 0x20], al        ; 88 47 20
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
L_01F0:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01FA -- offset 0x01FA -- 274 instr
; Dispatcher: tabla de decisiones cmp+jcc (274 instr).
; tags: dispatcher, far
; callers: sub_04A6
; calls (intra): sub_0120, sub_04A6, sub_07E6, sub_08D5
;----------------------------------------------------------------------
L_01FA:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0271                          ; 74 64
        push    word ptr [bp + 8]               ; FF 76 08
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_117                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 8], ax           ; 89 46 08
        call    far _entry_102                  ; 9A 27 03 00 00 [FIXUP]
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ax                              ; 50
        call    far _entry_340                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_0262                          ; EB 0E
L_0254:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 0x10         ; 83 46 FC 10
        and     byte ptr [bx + 2], 0xfe         ; 80 67 02 FE
        inc     word ptr [bp - 6]               ; FF 46 FA
L_0262:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_0254                          ; 7C EA
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        or      byte ptr [bx], 1                ; 80 0F 01
L_0271:
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
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        dec     si                              ; 4E
        cmp     si, 1                           ; 83 FE 01
        jae     L_02AC                          ; 73 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_02AE                          ; EB 02
L_02AC:
        mov     ax, si                          ; 8B C6
L_02AE:
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jbe     L_02B8                          ; 76 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_02C4                          ; EB 0C
L_02B8:
        cmp     si, 1                           ; 83 FE 01
        jae     L_02C2                          ; 73 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_02C4                          ; EB 02
L_02C2:
        mov     ax, si                          ; 8B C6
L_02C4:
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     cl, 4                           ; B1 04
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        sub     ax, 0x10                        ; 2D 10 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0303                          ; EB 22
L_02E1:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        add     ax, word ptr [bx + 6]           ; 03 47 06
        adc     dx, word ptr [bx + 8]           ; 13 57 08
        cmp     dx, word ptr [0x13a8]           ; 3B 16 A8 13
        jl      L_0309                          ; 7C 15
        jg      L_02FC                          ; 7F 06
        cmp     ax, word ptr [0x13a6]           ; 3B 06 A6 13
        jbe     L_0309                          ; 76 0D
L_02FC:
        sub     word ptr [bp - 4], 0x10         ; 83 6E FC 10
        dec     word ptr [bp + 6]               ; FF 4E 06
L_0303:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jg      L_02E1                          ; 7F D8
L_0309:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jg      L_0312                          ; 7F 03
        jmp     L_0408                          ; E9 F6 00
L_0312:
        mov     ax, word ptr [0x7ce]            ; A1 CE 07
        cmp     word ptr [0x322], ax            ; 39 06 22 03
        je      L_0326                          ; 74 0B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_08D5                          ; E8 B5 05
        mov     ax, word ptr [0x322]            ; A1 22 03
        mov     word ptr [0x7ce], ax            ; A3 CE 07
L_0326:
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        add     ax, word ptr [bx + 6]           ; 03 47 06
        adc     dx, word ptr [bx + 8]           ; 13 57 08
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     word ptr [bx + 0x16], dx        ; 89 57 16
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        test    byte ptr [bx + 2], 8            ; F6 47 02 08
        je      L_0353                          ; 74 08
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        sub     ah, ah                          ; 2A E4
        inc     ax                              ; 40
        jmp     L_0355                          ; EB 02
L_0353:
        sub     ax, ax                          ; 2B C0
L_0355:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [bx + 2], al           ; 88 47 02
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x2d2], 0             ; 83 3E D2 02 00
        jne     L_03EB                          ; 75 70
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     dx, word ptr [bx + 8]           ; 8B 57 08
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_03E2                          ; EB 3D
L_03A5:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        add     ax, word ptr [bx + 6]           ; 03 47 06
        adc     dx, word ptr [bx + 8]           ; 13 57 08
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        test    byte ptr [bx + 2], 8            ; F6 47 02 08
        je      L_03C6                          ; 74 08
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        sub     ah, ah                          ; 2A E4
        inc     ax                              ; 40
        jmp     L_03C8                          ; EB 02
L_03C6:
        sub     ax, ax                          ; 2B C0
L_03C8:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        add     word ptr [bp - 4], 0x10         ; 83 46 FC 10
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_03E2:
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_07E6                          ; E8 FB 03
L_03EB:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     word ptr [bp + 6]               ; FF 4E 06
        or      ax, ax                          ; 0B C0
        jne     L_03A5                          ; 75 B0
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        or      byte ptr [bx], 1                ; 80 0F 01
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0120                          ; E8 1F FD
        call    far _entry_342                  ; 9A 68 04 00 00 [FIXUP]
        jmp     L_040D                          ; EB 05
L_0408:
        call    far _entry_174                  ; 9A 61 04 00 00 [FIXUP]
L_040D:
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
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 6], 8            ; C7 46 FA 08 00
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 2], 1            ; F6 47 02 01
        je      L_0445                          ; 74 06
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0445:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        sub     ax, word ptr [bx + 0xe]         ; 2B 47 0E
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        push    ax                              ; 50
        mov     ax, 0x270f                      ; B8 0F 27
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04A6                          ; E8 4A 00
        or      ax, ax                          ; 0B C0
        jne     L_0467                          ; 75 07
        call    far _entry_174                  ; 9A 90 04 00 00 [FIXUP]
        jmp     L_046C                          ; EB 05
L_0467:
        call    far _entry_342                  ; 9A 97 04 00 00 [FIXUP]
L_046C:
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
        mov     ax, 0x270f                      ; B8 0F 27
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04A6                          ; E8 1B 00
        or      ax, ax                          ; 0B C0
        jne     L_0496                          ; 75 07
        call    far _entry_174                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_049B                          ; EB 05
L_0496:
        call    far _entry_342                  ; 9A FF FF 00 00 [FIXUP]
L_049B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04A6 -- offset 0x04A6 -- 273 instr
; Dispatcher: tabla de decisiones cmp+jcc (273 instr).
; tags: dispatcher, far
; callers: sub_01FA
; calls (intra): sub_0120, sub_01FA, sub_084A, sub_08D5, sub_08FC
;----------------------------------------------------------------------
L_04A6:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x164                       ; 81 EC 64 01
        push    si                              ; 56
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, word ptr [0x326]            ; 8B 36 26 03
        mov     ax, word ptr [si + 0x14]        ; 8B 44 14
        mov     dx, word ptr [si + 0x16]        ; 8B 54 16
        cmp     word ptr [bx + 8], dx           ; 39 57 08
        jne     L_04D2                          ; 75 05
        cmp     word ptr [bx + 6], ax           ; 39 47 06
        je      L_04E1                          ; 74 0F
L_04D2:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     bx, word ptr [bx]               ; 8B 1F
        test    byte ptr [bx + 2], 1            ; F6 47 02 01
        jne     L_04E6                          ; 75 05
L_04E1:
        mov     ax, 1                           ; B8 01 00
        jmp     L_04E8                          ; EB 02
L_04E6:
        sub     ax, ax                          ; 2B C0
L_04E8:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bx + 0x14]        ; 8B 47 14
        mov     dx, word ptr [bx + 0x16]        ; 8B 57 16
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        and     byte ptr [bx], 0xfd             ; 80 27 FD
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        or      byte ptr [bx], 1                ; 80 0F 01
        mov     ax, word ptr [0x7ce]            ; A1 CE 07
        cmp     word ptr [0x322], ax            ; 39 06 22 03
        je      L_052E                          ; 74 0B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_08D5                          ; E8 AD 03
        mov     ax, word ptr [0x322]            ; A1 22 03
        mov     word ptr [0x7ce], ax            ; A3 CE 07
L_052E:
        cmp     word ptr [0x2d2], 0             ; 83 3E D2 02 00
        jne     L_0538                          ; 75 03
        inc     word ptr [bp - 4]               ; FF 46 FC
L_0538:
        cmp     word ptr [0x2d2], 1             ; 83 3E D2 02 01
        jle     L_0542                          ; 7E 03
        jmp     L_0731                          ; E9 EF 01
L_0542:
        mov     word ptr [bp - 0x15e], 0        ; C7 86 A2 FE 00 00
        mov     word ptr [bp - 0x158], 0        ; C7 86 A8 FE 00 00
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp - 0xa], dx         ; 39 56 F6
        jg      L_05A2                          ; 7F 48
        jl      L_0561                          ; 7C 05
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        ja      L_05A2                          ; 77 41
L_0561:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jne     L_05A2                          ; 75 3B
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_0578                          ; 74 0B
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01FA                          ; E8 82 FC
L_0578:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     word ptr [bx + 0x16], dx        ; 89 57 16
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     word ptr [bx + 8], 0            ; C7 47 08 00 00
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     byte ptr [bx + 2], 0            ; C6 47 02 00
L_059A:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0120                          ; E8 81 FB
        jmp     L_0695                          ; E9 F3 00
L_05A2:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jle     L_05AD                          ; 7E 05
        dec     word ptr [bp - 4]               ; FF 4E FC
        jmp     L_05C0                          ; EB 13
L_05AD:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jle     L_05B8                          ; 7E 05
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        jmp     L_05C0                          ; EB 08
L_05B8:
        sub     word ptr [bp - 0xc], 1          ; 83 6E F4 01
        sbb     word ptr [bp - 0xa], 0          ; 83 5E F6 00
L_05C0:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_08FC                          ; E8 31 03
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_32                   ; 9A AD 00 00 00 [FIXUP]
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        cmp     word ptr [bp - 0x12], dx        ; 39 56 EE
        jg      L_0608                          ; 7F 1C
        jl      L_05F3                          ; 7C 05
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        ja      L_0608                          ; 77 15
L_05F3:
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     word ptr [bp - 0x156], 0        ; C7 86 AA FE 00 00
        jmp     L_060E                          ; EB 06
L_0608:
        mov     word ptr [bp - 0x156], 0x11f    ; C7 86 AA FE 1F 01
L_060E:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        mov     word ptr [bp - 0x15c], ax       ; 89 86 A4 FE
        mov     word ptr [bp - 0x15a], dx       ; 89 96 A6 FE
        mov     word ptr [bp - 0x160], 0        ; C7 86 A0 FE 00 00
L_0622:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        cmp     word ptr [bp - 0x15a], dx       ; 39 96 A6 FE
        jl      L_065A                          ; 7C 2C
        jg      L_0636                          ; 7F 06
        cmp     word ptr [bp - 0x15c], ax       ; 39 86 A4 FE
        jb      L_065A                          ; 72 24
L_0636:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        cmp     word ptr [bp - 0x15a], dx       ; 39 96 A6 FE
        je      L_0645                          ; 74 03
        jmp     L_0701                          ; E9 BC 00
L_0645:
        cmp     word ptr [bp - 0x15c], ax       ; 39 86 A4 FE
        je      L_064E                          ; 74 03
        jmp     L_0701                          ; E9 B3 00
L_064E:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0x160], ax       ; 39 86 A0 FE
        jle     L_065A                          ; 7E 03
        jmp     L_0701                          ; E9 A7 00
L_065A:
        cmp     word ptr [bp - 0x15e], 0x20     ; 83 BE A2 FE 20
        jne     L_066D                          ; 75 0C
        mov     word ptr [bp - 0x158], 1        ; C7 86 A8 FE 01 00
        mov     word ptr [bp - 0x15e], 0        ; C7 86 A2 FE 00 00
L_066D:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x15a]           ; FF B6 A6 FE
        push    word ptr [bp - 0x15c]           ; FF B6 A4 FE
        push    word ptr [bp - 0x160]           ; FF B6 A0 FE
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_069B                          ; 74 06
L_0695:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_07DA                          ; E9 3F 01
L_069B:
        mov     ax, word ptr [bp - 0x15e]       ; 8B 86 A2 FE
        inc     word ptr [bp - 0x15e]           ; FF 86 A2 FE
        mov     cx, 0xa                         ; B9 0A 00
        imul    cx                              ; F7 E9
        mov     si, ax                          ; 8B F0
        lea     ax, [bp + si - 0x154]           ; 8D 82 AC FE
        mov     word ptr [bp - 0x162], ax       ; 89 86 9E FE
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 0x15c]       ; 8B 86 A4 FE
        mov     dx, word ptr [bp - 0x15a]       ; 8B 96 A6 FE
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     bx, word ptr [bp - 0x162]       ; 8B 9E 9E FE
        mov     ax, word ptr [bp - 0x160]       ; 8B 86 A0 FE
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     bx, word ptr [bp - 0x162]       ; 8B 9E 9E FE
        mov     ax, word ptr [0x34c]            ; A1 4C 03
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     bx, word ptr [bp - 0x162]       ; 8B 9E 9E FE
        mov     ax, word ptr [bp - 0x156]       ; 8B 86 AA FE
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [0x338]            ; A1 38 03
        mov     word ptr [bp - 0x156], ax       ; 89 86 AA FE
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     dx, word ptr [0x332]            ; 8B 16 32 03
        mov     word ptr [bp - 0x15c], ax       ; 89 86 A4 FE
        mov     word ptr [bp - 0x15a], dx       ; 89 96 A6 FE
        mov     ax, word ptr [0x334]            ; A1 34 03
        mov     word ptr [bp - 0x160], ax       ; 89 86 A0 FE
        jmp     L_0622                          ; E9 21 FF
L_0701:
        lea     ax, [bp - 0x154]                ; 8D 86 AC FE
        push    ax                              ; 50
        push    word ptr [bp - 0x15e]           ; FF B6 A2 FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_084A                          ; E8 3B 01
        cmp     word ptr [bp - 0x158], 0        ; 83 BE A8 FE 00
        je      L_0731                          ; 74 1B
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 0x15e]           ; F7 AE A2 FE
        mov     si, ax                          ; 8B F0
        lea     ax, [bp + si - 0x154]           ; 8D 82 AC FE
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        sub     ax, word ptr [bp - 0x15e]       ; 2B 86 A2 FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_084A                          ; E8 19 01
L_0731:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x2d6]                ; F7 2E D6 02
        add     ax, 0xcbc                       ; 05 BC 0C
        mov     word ptr [bp - 0x164], ax       ; 89 86 9C FE
        cmp     word ptr [0x2d2], 1             ; 83 3E D2 02 01
        jne     L_075C                          ; 75 16
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_0538                          ; E9 DC FD
L_075C:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_076C                          ; 7D 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_07AF                          ; 7C 43
L_076C:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_077D                          ; 74 0B
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01FA                          ; E8 7D FA
L_077D:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     si, word ptr [bp - 0x164]       ; 8B B6 9C FE
        mov     ax, word ptr [si]               ; 8B 04
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     word ptr [bx + 0x16], dx        ; 89 57 16
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     si, word ptr [bp - 0x164]       ; 8B B6 9C FE
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     si, word ptr [bp - 0x164]       ; 8B B6 9C FE
        mov     al, byte ptr [si + 4]           ; 8A 44 04
        mov     byte ptr [bx + 2], al           ; 88 47 02
        jmp     L_059A                          ; E9 EB FD
L_07AF:
        dec     word ptr [0x2d6]                ; FF 0E D6 02
        cmp     word ptr [0x2d6], 0             ; 83 3E D6 02 00
        jg      L_07C0                          ; 7F 06
        mov     word ptr [0x2d6], 0x20          ; C7 06 D6 02 20 00
L_07C0:
        dec     word ptr [0x2d2]                ; FF 0E D2 02
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x2d6]                ; F7 2E D6 02
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0xcc4]       ; 8B 87 C4 0C
        add     word ptr [bp - 8], ax           ; 01 46 F8
        jmp     L_0731                          ; E9 57 FF
L_07DA:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07E6 -- offset 0x07E6 -- 41 instr
; Funcion mediana (41 instr, 0 calls).
; tags: far, medium
; callers: sub_01FA
;----------------------------------------------------------------------
L_07E6:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        push    si                              ; 56
        inc     word ptr [0x2d2]                ; FF 06 D2 02
        cmp     word ptr [0x2d2], 0x20          ; 83 3E D2 02 20
        jle     L_0812                          ; 7E 15
        inc     word ptr [0x2d4]                ; FF 06 D4 02
        cmp     word ptr [0x2d4], 0x20          ; 83 3E D4 02 20
        jne     L_080E                          ; 75 06
        mov     word ptr [0x2d4], 0             ; C7 06 D4 02 00 00
L_080E:
        dec     word ptr [0x2d2]                ; FF 0E D2 02
L_0812:
        mov     ax, word ptr [0x2d6]            ; A1 D6 02
        inc     word ptr [0x2d6]                ; FF 06 D6 02
        cmp     ax, 0x20                        ; 3D 20 00
        jne     L_0824                          ; 75 06
        mov     word ptr [0x2d6], 1             ; C7 06 D6 02 01 00
L_0824:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x2d6]                ; F7 2E D6 02
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        lea     di, [bx + 0xcbc]                ; 8D BF BC 0C
        mov     si, ax                          ; 8B F0
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
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
; sub_084A -- offset 0x084A -- 57 instr
; Funcion mediana (57 instr, 0 calls).
; tags: far, medium
; callers: sub_04A6
;----------------------------------------------------------------------
L_084A:
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
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x20                        ; B8 20 00
        sub     ax, word ptr [0x2d2]            ; 2B 06 D2 02
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp + 6], si           ; 39 76 06
        jge     L_0878                          ; 7D 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_087A                          ; EB 02
L_0878:
        mov     ax, si                          ; 8B C6
L_087A:
        mov     word ptr [bp + 6], ax           ; 89 46 06
        add     word ptr [0x2d2], ax            ; 01 06 D2 02
        cmp     word ptr [0x2d6], 0             ; 83 3E D6 02 00
        jne     L_08BE                          ; 75 36
        mov     word ptr [0x2d6], 0x20          ; C7 06 D6 02 20 00
        jmp     L_08BE                          ; EB 2E
L_0890:
        mov     ax, word ptr [0x2d4]            ; A1 D4 02
        dec     word ptr [0x2d4]                ; FF 0E D4 02
        or      ax, ax                          ; 0B C0
        jne     L_08A1                          ; 75 06
        mov     word ptr [0x2d4], 0x1f          ; C7 06 D4 02 1F 00
L_08A1:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x2d4]                ; F7 2E D4 02
        mov     bx, ax                          ; 8B D8
        sub     word ptr [bp - 4], 0xa          ; 83 6E FC 0A
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        lea     di, [bx + 0xcc6]                ; 8D BF C6 0C
        mov     si, ax                          ; 8B F0
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
L_08BE:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     word ptr [bp + 6]               ; FF 4E 06
        or      ax, ax                          ; 0B C0
        jne     L_0890                          ; 75 C8
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
; sub_08D5 -- offset 0x08D5 -- 20 instr
; Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion.
; tags: far, leaf
; callers: sub_01FA, sub_04A6, sub_0934
;----------------------------------------------------------------------
L_08D5:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     word ptr [0x2d2], 0             ; C7 06 D2 02 00 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x2dc], ax            ; A3 DC 02
        mov     word ptr [0x2da], ax            ; A3 DA 02
        mov     word ptr [0x2d6], ax            ; A3 D6 02
        mov     word ptr [0x2d4], ax            ; A3 D4 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08FC -- offset 0x08FC -- 26 instr
; Funcion sin clasificar definitiva (26 instr).
; tags: far, small
; callers: sub_04A6
;----------------------------------------------------------------------
L_08FC:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [0x2da]            ; A1 DA 02
        mov     dx, word ptr [0x2dc]            ; 8B 16 DC 02
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jl      L_0922                          ; 7C 10
        jg      L_0919                          ; 7F 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jb      L_0922                          ; 72 09
L_0919:
        mov     ax, word ptr [0x2da]            ; A1 DA 02
        mov     dx, word ptr [0x2dc]            ; 8B 16 DC 02
        jmp     L_0929                          ; EB 07
L_0922:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
L_0929:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0934 -- offset 0x0934 -- 52 instr
; Funcion mediana (52 instr, 1 calls).
; tags: medium
; calls (intra): sub_08D5
;----------------------------------------------------------------------
L_0934:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        jmp     L_099E                          ; EB 5B
L_0943:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x2d6]                ; F7 2E D6 02
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0xcbc]       ; 8B 87 BC 0C
        mov     dx, word ptr [bx + 0xcbe]       ; 8B 97 BE 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        dec     word ptr [0x2d6]                ; FF 0E D6 02
        jne     L_0966                          ; 75 06
        mov     word ptr [0x2d6], 0x20          ; C7 06 D6 02 20 00
L_0966:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp - 4], dx           ; 39 56 FC
        jg      L_099E                          ; 7F 2D
        jl      L_0978                          ; 7C 05
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jae     L_099E                          ; 73 26
L_0978:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x2d6]                ; F7 2E D6 02
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0xcbc]       ; 8B 87 BC 0C
        mov     dx, word ptr [bx + 0xcbe]       ; 8B 97 BE 0C
        mov     word ptr [0x2da], ax            ; A3 DA 02
        mov     word ptr [0x2dc], dx            ; 89 16 DC 02
        mov     ax, word ptr [0x2d4]            ; A1 D4 02
        mov     word ptr [0x2d6], ax            ; A3 D6 02
        mov     word ptr [0x2d2], 0             ; C7 06 D2 02 00 00
        jmp     L_09AF                          ; EB 11
L_099E:
        mov     ax, word ptr [0x2d2]            ; A1 D2 02
        dec     word ptr [0x2d2]                ; FF 0E D2 02
        cmp     ax, 1                           ; 3D 01 00
        jg      L_0943                          ; 7F 99
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_08D5                          ; E8 26 FF
L_09AF:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

WRITE_TEXT ENDS

        END
