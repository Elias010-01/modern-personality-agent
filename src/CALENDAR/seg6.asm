; AUTO-GENERATED from original CALENDAR segment 6
; segment_size=527 bytes, flags=0x0010
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CALENDAR_TEXT SEGMENT BYTE PUBLIC 'CODE'

        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, 0x2c                        ; B4 2C
        int     0x21                            ; CD 21
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], dx               ; 89 17
        mov     word ptr [bx + 2], cx           ; 89 4F 02
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, 0x2a                        ; B4 2A
        int     0x21                            ; CD 21
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx], al               ; 88 07
        mov     word ptr [bx + 1], dx           ; 89 57 01
        mov     word ptr [bx + 3], cx           ; 89 4F 03
        pop     di                              ; 5F
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
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     word ptr [bp - 8], si           ; 89 76 F8
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        jne     L_0098                          ; 75 20
        cmp     ax, 0xc                         ; 3D 0C 00
        jl      L_0088                          ; 7C 0B
        sub     word ptr [bp - 4], 0xc          ; 83 6E FC 0C
        mov     word ptr [bp - 6], 0x138        ; C7 46 FA 38 01
        jmp     L_008D                          ; EB 05
L_0088:
        mov     word ptr [bp - 6], 0x132        ; C7 46 FA 32 01
L_008D:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_0098                          ; 75 05
        mov     word ptr [bp - 4], 0xc          ; C7 46 FC 0C 00
L_0098:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    si                              ; 56
        cmp     word ptr [0x144], 0             ; 83 3E 44 01 00
        jne     L_00A9                          ; 75 06
        test    byte ptr [bp + 6], 4            ; F6 46 06 04
        je      L_00AE                          ; 74 05
L_00A9:
        mov     ax, 1                           ; B8 01 00
        jmp     L_00B0                          ; EB 02
L_00AE:
        sub     ax, ax                          ; 2B C0
L_00B0:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01C1                          ; E8 0B 01
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [0x131]            ; A0 31 01
        mov     byte ptr [si], al               ; 88 04
        inc     si                              ; 46
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01C1                          ; E8 F0 00
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_00F1                          ; 74 18
        mov     byte ptr [si], 0x20             ; C6 04 20
        jmp     L_00E8                          ; EB 0A
L_00DE:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [si], al               ; 88 04
L_00E8:
        inc     si                              ; 46
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_00DE                          ; 75 ED
L_00F1:
        test    byte ptr [bp + 6], 8            ; F6 46 06 08
        je      L_0102                          ; 74 0B
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     byte ptr [bx], 0x30             ; 80 3F 30
        jne     L_0102                          ; 75 03
        mov     byte ptr [bx], 0x20             ; C6 07 20
L_0102:
        mov     byte ptr [si], 0                ; C6 04 00
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        pop     si                              ; 5E
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
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     word ptr [bp - 0xe], si         ; 89 76 F2
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx + 3]           ; 8B 47 03
        sub     ax, word ptr [0x13e]            ; 2B 06 3E 01
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x64                        ; B9 64 00
        div     cx                              ; F7 F1
        mov     word ptr [bx + 3], dx           ; 89 57 03
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        mov     di, ax                          ; 8B F8
        mov     word ptr [bp - 6], di           ; 89 7E FA
        mov     ax, dx                          ; 8B C2
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [0x140], 0             ; 83 3E 40 01 00
        je      L_0175                          ; 74 1A
        mov     word ptr [bp - 4], di           ; 89 7E FC
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [0x140], 2             ; 83 3E 40 01 02
        jne     L_0175                          ; 75 08
        mov     ax, dx                          ; 8B C2
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 8], di           ; 89 7E F8
L_0175:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    si                              ; 56
        push    word ptr [0x144]                ; FF 36 44 01
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01C1                          ; E8 3F 00
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [0x130]            ; A0 30 01
        mov     byte ptr [si], al               ; 88 04
        inc     si                              ; 46
        push    word ptr [bp - 6]               ; FF 76 FA
        push    si                              ; 56
        push    word ptr [0x144]                ; FF 36 44 01
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01C1                          ; E8 2A 00
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [0x130]            ; A0 30 01
        mov     byte ptr [si], al               ; 88 04
        inc     si                              ; 46
        push    word ptr [bp - 8]               ; FF 76 F8
        push    si                              ; 56
        push    word ptr [0x144]                ; FF 36 44 01
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01C1                          ; E8 15 00
        mov     si, ax                          ; 8B F0
        mov     byte ptr [si], 0                ; C6 04 00
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
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
; sub_01C1 -- offset 0x01C1 -- 43 instr
; Funcion mediana (43 instr, 0 calls).
; tags: medium
;----------------------------------------------------------------------
L_01C1:
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
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_01EB                          ; 75 06
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_01F3                          ; 74 08
L_01EB:
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        add     al, 0x30                        ; 04 30
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
L_01F3:
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        mov     byte ptr [di], dl               ; 88 15
        inc     di                              ; 47
        mov     ax, di                          ; 8B C7
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

CALENDAR_TEXT ENDS

        END
