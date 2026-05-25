; AUTO-GENERATED from original CALENDAR segment 7
; segment_size=779 bytes, flags=0x0110
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CALENDAR_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    si                              ; 56
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_01EB                          ; E8 D2 01
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_0025                          ; 75 06
L_001F:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_00E7                          ; E9 C2 00
L_0025:
        inc     si                              ; 46
        mov     al, byte ptr [0x131]            ; A0 31 01
        cmp     byte ptr [si - 1], al           ; 38 44 FF
        jne     L_001F                          ; 75 F1
        push    si                              ; 56
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        call    L_01EB                          ; E8 B5 01
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_001F                          ; 74 E3
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        cmp     byte ptr [si], 0                ; 80 3C 00
        je      L_007B                          ; 74 35
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        mov     al, byte ptr [0x132]            ; A0 32 01
        cmp     byte ptr [bp - 6], al           ; 38 46 FA
        jne     L_0061                          ; 75 07
        mov     word ptr [bp - 4], 0x132        ; C7 46 FC 32 01
        jmp     L_0073                          ; EB 12
L_0061:
        mov     al, byte ptr [0x138]            ; A0 38 01
        cmp     byte ptr [bp - 6], al           ; 38 46 FA
        jne     L_001F                          ; 75 B6
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        mov     word ptr [bp - 4], 0x138        ; C7 46 FC 38 01
L_0073:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_008D                          ; 75 12
L_007B:
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        jne     L_00C3                          ; 75 41
        cmp     word ptr [bp - 8], 0xc          ; 83 7E F8 0C
        jle     L_00A0                          ; 7E 18
L_0088:
        mov     ax, 0xfffe                      ; B8 FE FF
        jmp     L_00E7                          ; EB 5A
L_008D:
        cmp     byte ptr [si], 0                ; 80 3C 00
        je      L_001F                          ; 74 8D
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        lodsb   al, byte ptr [si]               ; AC
        cmp     byte ptr [bx], al               ; 38 07
        je      L_0073                          ; 74 D6
        jmp     L_001F                          ; E9 7F FF
L_00A0:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_00B3                          ; 75 0D
        cmp     word ptr [bp - 8], 0xc          ; 83 7E F8 0C
        jne     L_00C3                          ; 75 17
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_00C3                          ; EB 10
L_00B3:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_0088                          ; 74 CF
        cmp     word ptr [bp - 8], 0xc          ; 83 7E F8 0C
        jge     L_00C3                          ; 7D 04
        add     word ptr [bp - 8], 0xc          ; 83 46 F8 0C
L_00C3:
        cmp     word ptr [bp - 8], 0x18         ; 83 7E F8 18
        jge     L_0088                          ; 7D BF
        cmp     word ptr [bp - 0xc], 0x3c       ; 83 7E F4 3C
        jge     L_0088                          ; 7D B9
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        mov     byte ptr [bx + 3], al           ; 88 47 03
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        mov     byte ptr [bx + 2], al           ; 88 47 02
        mov     byte ptr [bx + 1], 0            ; C6 47 01 00
        mov     byte ptr [bx], 0                ; C6 07 00
        sub     ax, ax                          ; 2B C0
L_00E7:
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
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    si                              ; 56
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        call    L_01EB                          ; E8 DE 00
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_0119                          ; 75 06
L_0113:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_01AC                          ; E9 93 00
L_0119:
        push    si                              ; 56
        mov     al, byte ptr [0x130]            ; A0 30 01
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_01B9                          ; E8 97 00
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_0113                          ; 74 EB
        push    si                              ; 56
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_01EB                          ; E8 BB 00
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_0113                          ; 74 DD
        push    si                              ; 56
        mov     al, byte ptr [0x130]            ; A0 30 01
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_01B9                          ; E8 7A 00
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_0113                          ; 74 CE
        push    si                              ; 56
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        call    L_01EB                          ; E8 9E 00
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_0113                          ; 74 C0
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_0113                          ; 75 BB
        mov     ax, word ptr [0x140]            ; A1 40 01
        cmp     ax, 1                           ; 3D 01 00
        je      L_0167                          ; 74 07
        cmp     ax, 2                           ; 3D 02 00
        je      L_01A1                          ; 74 3C
        jmp     L_0173                          ; EB 0C
L_0167:
        mov     di, word ptr [bp - 0xc]         ; 8B 7E F4
L_016A:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 6], di           ; 89 7E FA
L_0173:
        mov     ax, word ptr [0x13e]            ; A1 3E 01
        add     word ptr [bp - 4], ax           ; 01 46 FC
        cmp     word ptr [bp - 4], 0x64         ; 83 7E FC 64
        jge     L_0184                          ; 7D 05
        add     word ptr [bp - 4], 0x76c        ; 81 46 FC 6C 07
L_0184:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        mov     byte ptr [bx + 2], al           ; 88 47 02
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + 3], ax           ; 89 47 03
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        mov     byte ptr [bx + 1], al           ; 88 47 01
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0254                          ; E8 B5 00
        jmp     L_01AC                          ; EB 0B
L_01A1:
        mov     di, word ptr [bp - 4]           ; 8B 7E FC
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_016A                          ; EB BE
L_01AC:
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
; sub_01B9 -- offset 0x01B9 -- 20 instr
; Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------
L_01B9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        cmp     byte ptr [bp - 2], al           ; 38 46 FE
        je      L_01DB                          ; 74 0C
        cmp     byte ptr [bp - 2], 0x2d         ; 80 7E FE 2D
        je      L_01DB                          ; 74 06
        cmp     byte ptr [bp - 2], 0x2f         ; 80 7E FE 2F
        jne     L_01E3                          ; 75 08
L_01DB:
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_01E5                          ; EB 02
L_01E3:
        sub     ax, ax                          ; 2B C0
L_01E5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01EB -- offset 0x01EB -- 47 instr
; Dispatcher: tabla de decisiones cmp+jcc (47 instr).
; tags: calls_user, dispatcher
; calls (inter): USER.ISTWOBYTECHARPREFIX
;----------------------------------------------------------------------
L_01EB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        jmp     L_01F9                          ; EB 01
L_01F8:
        inc     si                              ; 46
L_01F9:
        cmp     byte ptr [si], 0x20             ; 80 3C 20
        je      L_01F8                          ; 74 FA
        mov     word ptr [bp - 4], si           ; 89 76 FC
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_0206:
        mov     al, byte ptr [si]               ; 8A 04
        cwde                                    ; 98
        mov     di, ax                          ; 8B F8
        push    di                              ; 57
        call    far USER.ISTWOBYTECHARPREFIX    ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0233                          ; 75 1E
        cmp     di, 0x30                        ; 83 FF 30
        jl      L_0233                          ; 7C 19
        cmp     di, 0x39                        ; 83 FF 39
        jg      L_0233                          ; 7F 14
        mov     ax, 0xa                         ; B8 0A 00
        mul     word ptr [bp - 2]               ; F7 66 FE
        add     ax, di                          ; 03 C7
        sub     ax, 0x30                        ; 2D 30 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        inc     si                              ; 46
        cmp     ax, 0xbb8                       ; 3D B8 0B
        jb      L_0206                          ; 72 D3
L_0233:
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        jne     L_023D                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_024C                          ; EB 10
L_023C:
        inc     si                              ; 46
L_023D:
        cmp     byte ptr [si], 0x20             ; 80 3C 20
        je      L_023C                          ; 74 FA
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, si                          ; 8B C6
L_024C:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0254 -- offset 0x0254 -- 82 instr
; Dispatcher: tabla de decisiones cmp+jcc (82 instr).
; tags: dispatcher
;----------------------------------------------------------------------
L_0254:
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
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx + 2], 0            ; 80 7F 02 00
        je      L_0272                          ; 74 06
        cmp     byte ptr [bx + 2], 0xc          ; 80 7F 02 0C
        jbe     L_0278                          ; 76 06
L_0272:
        mov     ax, 0xfffe                      ; B8 FE FF
        jmp     L_02FF                          ; E9 87 00
L_0278:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     di, word ptr [bx + 3]           ; 8B 7F 03
        sub     di, 0x7bc                       ; 81 EF BC 07
        cmp     di, 0x77                        ; 83 FF 77
        jbe     L_028C                          ; 76 05
        mov     ax, 0xfffd                      ; B8 FD FF
        jmp     L_02FF                          ; EB 73
L_028C:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bl, byte ptr [bx + 2]           ; 8A 5F 02
        sub     bh, bh                          ; 2A FF
        mov     al, byte ptr [bx + 0x123]       ; 8A 87 23 01
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        test    di, 3                           ; F7 C7 03 00
        jne     L_02AC                          ; 75 0A
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx + 2], 2            ; 80 7F 02 02
        jne     L_02AC                          ; 75 01
        inc     si                              ; 46
L_02AC:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        sub     ah, ah                          ; 2A E4
        dec     ax                              ; 48
        cmp     ax, si                          ; 3B C6
        ja      L_0272                          ; 77 B9
        mov     bl, byte ptr [bx + 2]           ; 8A 5F 02
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bx + 0x10a]       ; 8B B7 0A 01
        mov     ax, 0x16d                       ; B8 6D 01
        mul     di                              ; F7 E7
        add     si, ax                          ; 03 F0
        or      di, di                          ; 0B FF
        je      L_02D9                          ; 74 0A
        lea     ax, [di - 1]                    ; 8D 45 FF
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        inc     ax                              ; 40
        add     si, ax                          ; 03 F0
L_02D9:
        test    di, 3                           ; F7 C7 03 00
        jne     L_02E9                          ; 75 0A
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx + 2], 2            ; 80 7F 02 02
        jbe     L_02E9                          ; 76 01
        inc     si                              ; 46
L_02E9:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        sub     ah, ah                          ; 2A E4
        add     ax, si                          ; 03 C6
        inc     ax                              ; 40
        sub     dx, dx                          ; 2B D2
        mov     cx, 7                           ; B9 07 00
        div     cx                              ; F7 F1
        mov     byte ptr [bx], dl               ; 88 17
        sub     ax, ax                          ; 2B C0
L_02FF:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

CALENDAR_TEXT ENDS

        END
