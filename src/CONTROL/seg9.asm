; AUTO-GENERATED from original CONTROL segment 9
; segment_size=990 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CONTROL_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x106                       ; 81 EC 06 01
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x281                       ; B8 81 02
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 2E 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xb4], ax        ; 89 86 4C FF
        or      ax, ax                          ; 0B C0
        jne     L_004A                          ; 75 28
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A 2C 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETPARENT              ; 9A B9 01 00 00 [FIXUP]
        mov     word ptr [bp + 6], ax           ; 89 46 06
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A CC 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_43                   ; 9A DA 01 00 00 [FIXUP]
L_0045:
        sub     ax, ax                          ; 2B C0
        jmp     L_020E                          ; E9 C4 01
L_004A:
        mov     ax, 0x5a9                       ; B8 A9 05
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x5a8                       ; B8 A8 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xb4]        ; 8B 86 4C FF
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x280                       ; B8 80 02
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A C1 00 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xb4]        ; 8B 86 4C FF
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0x60], 0         ; C7 46 A0 00 00
L_0073:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_00A7                          ; 75 2C
        cmp     word ptr [bp - 0x60], 0         ; 83 7E A0 00
        je      L_0084                          ; 74 03
        jmp     L_0202                          ; E9 7E 01
L_0084:
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x68                        ; B8 68 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A AC 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00A1                          ; 74 03
        jmp     L_01B0                          ; E9 0F 01
L_00A1:
        mov     ax, 1                           ; B8 01 00
        jmp     L_01B2                          ; E9 0B 01
L_00A7:
        mov     ax, 0x5b2                       ; B8 B2 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x5b1                       ; B8 B1 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 55 02 00 00 [FIXUP]
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0322                          ; E8 53 02
        cmp     byte ptr [bp - 0x106], 0        ; 80 BE FA FE 00
        jne     L_00D9                          ; 75 03
        jmp     L_01A0                          ; E9 C7 00
L_00D9:
        mov     word ptr [bp - 0x60], 1         ; C7 46 A0 01 00
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ax                              ; 50
        mov     ax, 0x5ba                       ; B8 BA 05
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02C1                          ; E8 D5 01
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0101                          ; 74 0B
        inc     word ptr [bp - 6]               ; FF 46 FA
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0322                          ; E8 21 02
L_0101:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_010C                          ; 74 03
        jmp     L_0195                          ; E9 89 00
L_010C:
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x97a                       ; B8 7A 09
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 28 01 00 00 [FIXUP]
        jmp     L_0195                          ; EB 79
L_011C:
        lea     ax, [bp - 0xb2]                 ; 8D 86 4E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 50 03 00 00 [FIXUP]
        lea     ax, [bp - 0xb2]                 ; 8D 86 4E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 48 01 00 00 [FIXUP]
        lea     ax, [bp - 0xb2]                 ; 8D 86 4E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xb2]                 ; 8D 86 4E FF
        push    ax                              ; 50
        mov     ax, 0x5bc                       ; B8 BC 05
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02C1                          ; E8 67 01
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0xb2]                 ; 8D 86 4E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x5be                       ; B8 BE 05
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02C1                          ; E8 41 01
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0195                          ; 74 0B
        inc     word ptr [bp - 6]               ; FF 46 FA
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0322                          ; E8 8D 01
L_0195:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_01A0                          ; 74 03
        jmp     L_011C                          ; E9 7C FF
L_01A0:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_01AE                          ; 75 03
        jmp     L_0073                          ; E9 C5 FE
L_01AE:
        jmp     L_01A0                          ; EB F0
L_01B0:
        sub     ax, ax                          ; 2B C0
L_01B2:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A BF 01 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 6], ax           ; 89 46 06
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_01E0                          ; 74 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_43                   ; 9A B8 03 00 00 [FIXUP]
        jmp     L_01F6                          ; EB 16
L_01E0:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A D0 03 00 00 [FIXUP]
L_01F6:
        push    word ptr [bp - 0xb4]            ; FF B6 4C FF
        call    far KERNEL.LOCALFREE            ; 9A 07 02 00 00 [FIXUP]
        jmp     L_0045                          ; E9 43 FE
L_0202:
        push    word ptr [bp - 0xb4]            ; FF B6 4C FF
        call    far KERNEL.LOCALFREE            ; 9A A0 02 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_020E:
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
        sub     sp, 0xc                         ; 83 EC 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x321                       ; B8 21 03
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_023D                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_02B6                          ; EB 79
L_023D:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x5c0                       ; B8 C0 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x320                       ; B8 20 03
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 84 02 00 00 [FIXUP]
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0264:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_029C                          ; 74 30
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x5c1                       ; B8 C1 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0322                          ; E8 91 00
        cmp     byte ptr [bp - 6], 0            ; 80 7E FA 00
        je      L_02A9                          ; 74 12
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_029C:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_02B6                          ; EB 0D
L_02A9:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0264                          ; 74 B0
        jmp     L_02A9                          ; EB F3
L_02B6:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02C1 -- offset 0x02C1 -- 43 instr
; Funcion mediana (43 instr, 0 calls).
; tags: far, medium
;----------------------------------------------------------------------
L_02C1:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_02D4:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_030D                          ; 74 31
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, bx                          ; 8B C3
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_02F9                          ; EB 10
L_02E9:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        cmp     byte ptr [bx], al               ; 38 07
        jne     L_0305                          ; 75 12
        inc     word ptr [bp - 4]               ; FF 46 FC
        inc     word ptr [bp - 8]               ; FF 46 F8
L_02F9:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        or      al, al                          ; 0A C0
        jne     L_02E9                          ; 75 E4
L_0305:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0312                          ; 75 05
L_030D:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_0317                          ; EB 05
L_0312:
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_02D4                          ; EB BD
L_0317:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0322 -- offset 0x0322 -- 88 instr
; Dispatcher: tabla de decisiones cmp+jcc (88 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; calls (inter): KERNEL.LSTRCPY, USER.LOADSTRING, USER.MESSAGEBOX
;----------------------------------------------------------------------
L_0322:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_033A                          ; EB 03
L_0337:
        inc     word ptr [bp - 4]               ; FF 46 FC
L_033A:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0x20             ; 80 3F 20
        je      L_0337                          ; 74 F5
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     bx, ax                          ; 3B D8
        je      L_0354                          ; 74 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
L_0354:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_035F                          ; EB 03
L_035C:
        inc     word ptr [bp - 4]               ; FF 46 FC
L_035F:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_035C                          ; 75 F5
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     bx, ax                          ; 3B D8
        je      L_0382                          ; 74 14
L_036E:
        dec     word ptr [bp - 4]               ; FF 4E FC
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0x20             ; 80 3F 20
        je      L_036E                          ; 74 F5
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     byte ptr [bx], 0                ; C6 07 00
L_0382:
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
        sub     sp, 0x54                        ; 83 EC 54
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x69                        ; B8 69 00
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03BE                          ; 75 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03D4                          ; EB 16
L_03BE:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1030                      ; B8 30 10
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
L_03D4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

CONTROL_TEXT ENDS

        END
