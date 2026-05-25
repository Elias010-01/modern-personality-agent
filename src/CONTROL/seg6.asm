; AUTO-GENERATED from original CONTROL segment 6
; segment_size=5848 bytes, flags=0xf130
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
        sub     sp, 0xae                        ; 81 EC AE 00
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0023                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0020                          ; 75 03
        jmp     L_00A6                          ; E9 86 00
L_0020:
        jmp     L_0295                          ; E9 72 02
L_0023:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0036                          ; 75 0C
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 62 00 00 00 [FIXUP]
L_0036:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 70 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 76 00 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_02A4                          ; E8 54 02
        mov     word ptr [bp - 0xae], ax        ; 89 86 52 FF
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0066                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 4E 02 00 00 [FIXUP]
L_0066:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 5C 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 62 02 00 00 [FIXUP]
        cmp     word ptr [bp - 0xae], 0         ; 83 BE 52 FF 00
        jne     L_0092                          ; 75 11
L_0081:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
L_008C:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0297                          ; E9 05 02
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0092 -- offset 0x0092 -- 19 instr
; Dispatcher: tabla de decisiones cmp+jcc (19 instr).
; tags: calls_user, dispatcher
; calls (intra): sub_06EA
; calls (inter): USER.SHOWWINDOW
;----------------------------------------------------------------------
L_0092:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_06EA                          ; E8 46 06
        jmp     L_008C                          ; EB E6
L_00A6:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        jne     L_00B1                          ; 75 03
        jmp     L_0232                          ; E9 81 01
L_00B1:
        cmp     ax, 2                           ; 3D 02 00
        je      L_0081                          ; 74 CB
        cmp     ax, 0x12c                       ; 3D 2C 01
        je      L_00C5                          ; 74 0A
        cmp     ax, 0x136                       ; 3D 36 01
        jne     L_00C3                          ; 75 03
        jmp     L_01F4                          ; E9 31 01
L_00C3:
        jmp     L_008C                          ; EB C7
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00C5 -- offset 0x00C5 -- 32 instr
; Funcion mediana (32 instr, 2 calls).
; tags: calls_user, medium
; calls (inter): USER.GETDLGITEM, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_00C5:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x136                       ; B8 36 01
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 07 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF 00 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     word ptr [bp - 0xac], si        ; 89 B6 54 FF
        cmp     si, -1                          ; 83 FE FF
        je      L_008C                          ; 74 9E
        mov     di, si                          ; 8B FE
        shl     di, 1                           ; D1 E7
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 27 01 00 00 [FIXUP]
        mov     word ptr [di + 0x94c], ax       ; 89 85 4C 09
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0115                          ; 75 09
        mov     word ptr [di + 0x94c], 0        ; C7 85 4C 09 00 00
        jmp     L_008C                          ; E9 77 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0115 -- offset 0x0115 -- 88 instr
; Funcion compleja: 88 instrucciones, 5 llamadas, 0 branches.
; tags: calls_kernel, calls_user, complex
; calls (inter): KERNEL.LSTRCAT, KERNEL.LSTRLEN, USER.INVALIDATERECT, USER.SENDMESSAGE, USER.UPDATEWINDOW
;----------------------------------------------------------------------
L_0115:
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 65 01 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ax                              ; 50
        call    far _entry_44                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     byte ptr [bx + si], 0           ; C6 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0xac]        ; 8B 9E 54 FF
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x94c]           ; FF B7 4C 09
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 86 01 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 9A 01 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x403                       ; B8 03 04
        push    ax                              ; 50
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A B0 01 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x402                       ; B8 02 04
        push    ax                              ; 50
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A C4 01 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A D8 01 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 01 02 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008C                          ; E9 98 FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01F4 -- offset 0x01F4 -- 12 instr
; Wrapper que delega en USER.SENDMESSAGE.
; tags: calls_user, wrapper
; calls (inter): USER.SENDMESSAGE
;----------------------------------------------------------------------
L_01F4:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A A4 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xac], ax        ; 89 86 54 FF
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0211                          ; 75 03
        jmp     L_008C                          ; E9 7B FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0211 -- offset 0x0211 -- 60 instr
; Funcion mediana (60 instr, 6 calls).
; tags: calls_user, far, medium
; calls (intra): sub_06EA, sub_0910
; calls (inter): USER.LOADCURSOR, USER.SENDDLGITEMMESSAGE, USER.SETCURSOR, USER.SHOWCURSOR
;----------------------------------------------------------------------
L_0211:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x12c                       ; B8 2C 01
        push    ax                              ; 50
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0xac]        ; 8B 9E 54 FF
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x94c]           ; FF B7 4C 09
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008C                          ; E9 5A FE
L_0232:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_06EA                          ; E8 B2 04
        or      ax, ax                          ; 0B C0
        jne     L_023F                          ; 75 03
        jmp     L_008C                          ; E9 4D FE
L_023F:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0252                          ; 75 0C
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 7A 02 00 00 [FIXUP]
L_0252:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 88 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 8E 02 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0910                          ; E8 A4 06
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_027E                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
L_027E:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0081                          ; E9 EC FD
L_0295:
        sub     ax, ax                          ; 2B C0
L_0297:
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
; sub_02A4 -- offset 0x02A4 -- 94 instr
; Funcion compleja: 94 instrucciones, 6 llamadas, 4 branches.
; tags: calls_kernel, calls_user, complex
; calls (inter): KERNEL.GETPROFILESTRING, KERNEL.LOCALALLOC, USER.ENABLEWINDOW, USER.GETDLGITEM, USER.GETPARENT, USER.LOADSTRING
;----------------------------------------------------------------------
L_02A4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x106                       ; 81 EC 06 01
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x281                       ; B8 81 02
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x106], ax       ; 89 86 FA FE
        or      ax, ax                          ; 0B C0
        jne     L_02E2                          ; 75 22
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETPARENT              ; 9A 6E 03 00 00 [FIXUP]
        mov     word ptr [bp + 4], ax           ; 89 46 04
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 7B 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_43                   ; 9A 8C 03 00 00 [FIXUP]
L_02DD:
        sub     ax, ax                          ; 2B C0
        jmp     L_06E3                          ; E9 01 04
L_02E2:
        mov     ax, 0x21d                       ; B8 1D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x214                       ; B8 14 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x97a                       ; B8 7A 09
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xce0                       ; B8 E0 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 38 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x12c                       ; B8 2C 01
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 17 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xae], ax        ; 89 86 52 FF
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x136                       ; B8 36 01
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xac], ax        ; 89 86 54 FF
        mov     ax, 0x226                       ; B8 26 02
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x225                       ; B8 25 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x106]       ; 8B 86 FA FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x280                       ; B8 80 02
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A D0 03 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x106]       ; 8B 9E FA FE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0393                          ; 75 4E
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x58                        ; B8 58 00
        push    ax                              ; 50
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0365                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0367                          ; EB 02
L_0365:
        sub     ax, ax                          ; 2B C0
L_0367:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 4], ax           ; 89 46 04
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0388                          ; 75 03
        jmp     L_05CC                          ; E9 44 02
L_0388:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_05E3                          ; E9 50 02
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0393 -- offset 0x0393 -- 34 instr
; Funcion mediana (34 instr, 2 calls).
; tags: calls_kernel, calls_user, medium
; calls (inter): KERNEL.GETPROFILESTRING, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_0393:
        push    word ptr [bp - 0xae]            ; FF B6 52 FF
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xce0                       ; B8 E0 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x106]       ; 8B 86 FA FE
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
L_03AF:
        mov     bx, word ptr [bp - 0x58]        ; 8B 5E A8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_03EA                          ; 75 33
        mov     ax, 0x22d                       ; B8 2D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x22c                       ; B8 2C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x106]       ; 8B 86 FA FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x280                       ; B8 80 02
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x104], 0        ; C7 86 FC FE 00 00
        mov     ax, word ptr [bp - 0x106]       ; 8B 86 FA FE
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     word ptr [bp - 0x102], 0        ; C7 86 FE FE 00 00
        jmp     L_0577                          ; E9 8D 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03EA -- offset 0x03EA -- 294 instr
; Dispatcher: tabla de decisiones cmp+jcc (294 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (inter): KERNEL.GETPROFILESTRING, KERNEL.LOCALFREE, KERNEL.LSTRCAT, KERNEL.LSTRCPY, USER.ENABLEWINDOW, USER.GETPARENT (+3 mas)
;----------------------------------------------------------------------
L_03EA:
        push    word ptr [bp - 0xae]            ; FF B6 52 FF
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A F8 04 00 00 [FIXUP]
L_03FF:
        mov     bx, word ptr [bp - 0x58]        ; 8B 5E A8
        inc     word ptr [bp - 0x58]            ; FF 46 A8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_03AF                          ; 74 A5
        jmp     L_03FF                          ; EB F3
L_040C:
        mov     ax, 0x236                       ; B8 36 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x235                       ; B8 35 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 09 06 00 00 [FIXUP]
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 63 04 00 00 [FIXUP]
        cmp     byte ptr [bp - 0x100], 0        ; 80 BE 00 FF 00
        jne     L_043E                          ; 75 03
        jmp     L_056C                          ; E9 2E 01
L_043E:
        mov     word ptr [bp - 0x102], 1        ; C7 86 FE FE 01 00
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ax                              ; 50
        mov     ax, 0x23e                       ; B8 3E 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A C4 04 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0467                          ; 74 0B
        inc     word ptr [bp - 4]               ; FF 46 FC
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_22                   ; 9A 97 04 00 00 [FIXUP]
L_0467:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0472                          ; 74 03
        jmp     L_0561                          ; E9 EF 00
L_0472:
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xce0                       ; B8 E0 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 8E 04 00 00 [FIXUP]
        jmp     L_0561                          ; E9 DE 00
L_0483:
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A B6 04 00 00 [FIXUP]
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ax                              ; 50
        call    far _entry_22                   ; 9A D3 04 00 00 [FIXUP]
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A E3 04 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 42 06 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ax                              ; 50
        mov     ax, 0x240                       ; B8 40 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 48 05 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 5D 05 00 00 [FIXUP]
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 52 06 00 00 [FIXUP]
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 1B 05 00 00 [FIXUP]
        cmp     word ptr [bp - 0x104], 0x14     ; 83 BE FC FE 14
        jge     L_0540                          ; 7D 3D
        mov     si, word ptr [bp - 0x104]       ; 8B B6 FC FE
        shl     si, 1                           ; D1 E6
        push    word ptr [bp - 0xae]            ; FF B6 52 FF
        mov     ax, 0x40d                       ; B8 0D 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 99 06 00 00 [FIXUP]
        mov     word ptr [si + 0x94c], ax       ; 89 84 4C 09
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_052E                          ; 75 06
        mov     word ptr [si + 0x94c], 0        ; C7 84 4C 09 00 00
L_052E:
        mov     si, word ptr [bp - 0x104]       ; 8B B6 FC FE
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x94c]       ; 8B 84 4C 09
        mov     word ptr [si + 0x8a6], ax       ; 89 84 A6 08
        inc     word ptr [bp - 0x104]           ; FF 86 FC FE
L_0540:
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x242                       ; B8 42 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 17 06 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0561                          ; 74 0B
        inc     word ptr [bp - 4]               ; FF 46 FC
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_22                   ; 9A 31 06 00 00 [FIXUP]
L_0561:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_056C                          ; 74 03
        jmp     L_0483                          ; E9 17 FF
L_056C:
        mov     bx, word ptr [bp - 0x58]        ; 8B 5E A8
        inc     word ptr [bp - 0x58]            ; FF 46 A8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_056C                          ; 75 F5
L_0577:
        mov     bx, word ptr [bp - 0x58]        ; 8B 5E A8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0582                          ; 74 03
        jmp     L_040C                          ; E9 8A FE
L_0582:
        cmp     word ptr [bp - 0x102], 0        ; 83 BE FE FE 00
        jne     L_05EF                          ; 75 66
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x59                        ; B8 59 00
        push    ax                              ; 50
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 8E 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_05A9                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_05AB                          ; EB 02
L_05A9:
        sub     ax, ax                          ; 2B C0
L_05AB:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETPARENT              ; 9A C4 02 00 00 [FIXUP]
        mov     word ptr [bp + 4], ax           ; 89 46 04
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A D1 02 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_05CC                          ; 74 03
        jmp     L_0388                          ; E9 BC FD
L_05CC:
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
L_05E3:
        push    word ptr [bp - 0x106]           ; FF B6 FA FE
        call    far KERNEL.LOCALFREE            ; 9A DC 06 00 00 [FIXUP]
        jmp     L_02DD                          ; E9 EE FC
L_05EF:
        mov     ax, 0x24c                       ; B8 4C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x245                       ; B8 45 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x244                       ; B8 44 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FB 02 00 00 [FIXUP]
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ax                              ; 50
        mov     ax, 0x254                       ; B8 54 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 5E 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_062B                          ; 74 06
        inc     word ptr [bp - 0x58]            ; FF 46 A8
        mov     byte ptr [bx], 0                ; C6 07 00
L_062B:
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 73 06 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 83 06 00 00 [FIXUP]
        push    word ptr [bp - 0x58]            ; FF 76 A8
        mov     ax, 0x256                       ; B8 56 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A AA 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_066F                          ; 74 03
        inc     word ptr [bp - 0x58]            ; FF 46 A8
L_066F:
        push    word ptr [bp - 0x58]            ; FF 76 A8
        call    far _entry_22                   ; 9A B9 07 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 75 01 00 00 [FIXUP]
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        mov     ax, 0x40d                       ; B8 0D 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A B8 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x104], ax       ; 89 86 FC FE
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_06BC                          ; 75 16
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x104], ax       ; 89 86 FC FE
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A D3 06 00 00 [FIXUP]
L_06BC:
        push    word ptr [bp - 0xae]            ; FF B6 52 FF
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x104]       ; 8B 9E FC FE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x94c]           ; FF B7 4C 09
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 49 07 00 00 [FIXUP]
        push    word ptr [bp - 0x106]           ; FF B6 FA FE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_06E3:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06EA -- offset 0x06EA -- 174 instr
; Dispatcher: tabla de decisiones cmp+jcc (174 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_0092, sub_0211
; calls (inter): KERNEL.LSTRCAT, USER.GETDLGITEM, USER.LOADSTRING, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_06EA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x15e                       ; 81 EC 5E 01
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x11e], 1        ; C7 86 E2 FE 01 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x136                       ; B8 36 01
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 10 07 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x12c                       ; B8 2C 01
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A CD 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x11c], 0        ; C7 86 E4 FE 00 00
L_071D:
        mov     si, word ptr [bp - 0x11c]       ; 8B B6 E4 FE
        mov     byte ptr [bp + si - 0x11a], 0xff ; C6 82 E6 FE FF
        inc     word ptr [bp - 0x11c]           ; FF 86 E4 FE
        cmp     word ptr [bp - 0x11c], 0x14     ; 83 BE E4 FE 14
        jl      L_071D                          ; 7C EC
        mov     word ptr [bp - 0x11c], 0        ; C7 86 E4 FE 00 00
L_0737:
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        push    word ptr [bp - 0x11c]           ; FF B6 E4 FE
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A DF 00 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_075A                          ; 75 08
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_075A                          ; 75 03
        jmp     L_0904                          ; E9 AA 01
L_075A:
        mov     bx, word ptr [bp - 0x11c]       ; 8B 9E E4 FE
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bx + 0x94c]       ; 8B B7 4C 09
        or      si, si                          ; 0B F6
        jne     L_076B                          ; 75 03
        jmp     L_08EB                          ; E9 80 01
L_076B:
        cmp     byte ptr [bp + si - 0x11a], 0xff ; 80 BA E6 FE FF
        jne     L_0775                          ; 75 03
        jmp     L_08EB                          ; E9 76 01
L_0775:
        mov     word ptr [bp - 0x11e], 0        ; C7 86 E2 FE 00 00
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x5a                        ; B8 5A 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 58 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_079B                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_079D                          ; EB 02
L_079B:
        sub     ax, ax                          ; 2B C0
L_079D:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 35 01 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 06 08 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_07EF                          ; 75 1B
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x5b                        ; B8 5B 00
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 73 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_07F4                          ; 75 05
L_07EF:
        mov     ax, 1                           ; B8 01 00
        jmp     L_07F6                          ; EB 02
L_07F4:
        sub     ax, ax                          ; 2B C0
L_07F6:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 56 08 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x11c]       ; 8B 9E E4 FE
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [bx + 0x94c]       ; 8B BF 4C 09
        mov     al, byte ptr [bp + di - 0x11a]  ; 8A 83 E6 FE
        cwde                                    ; 98
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A AE 08 00 00 [FIXUP]
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 4E 09 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A B8 08 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 92 08 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_087B                          ; 75 1B
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x5c                        ; B8 5C 00
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 9C 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0880                          ; 75 05
L_087B:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0882                          ; EB 02
L_0880:
        sub     ax, ax                          ; 2B C0
L_0882:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 6A 0A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x11c]       ; 8B 9E E4 FE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x94c]           ; FF B7 4C 09
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 7A 0B 00 00 [FIXUP]
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 40 09 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_08CC                          ; 74 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_43                   ; 9A D9 02 00 00 [FIXUP]
        jmp     L_08FD                          ; EB 31
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08CC -- offset 0x08CC -- 27 instr
; Funcion sin clasificar definitiva (27 instr).
; tags: small
;----------------------------------------------------------------------
L_08CC:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_08FD                          ; EB 12
L_08EB:
        mov     bx, word ptr [bp - 0x11c]       ; 8B 9E E4 FE
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bx + 0x94c]       ; 8B B7 4C 09
        mov     al, byte ptr [bp - 0x11c]       ; 8A 86 E4 FE
        mov     byte ptr [bp + si - 0x11a], al  ; 88 82 E6 FE
L_08FD:
        inc     word ptr [bp - 0x11c]           ; FF 86 E4 FE
        jmp     L_0737                          ; E9 33 FE
L_0904:
        mov     ax, word ptr [bp - 0x11e]       ; 8B 86 E2 FE
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0910 -- offset 0x0910 -- 325 instr
; Dispatcher: tabla de decisiones cmp+jcc (325 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_0211
; calls (inter): KERNEL.ANSIUPPER, KERNEL.GETPROFILESTRING, KERNEL.LSTRCAT, KERNEL.LSTRCMP, KERNEL.LSTRCPY, KERNEL.WRITEPROFILESTRING (+2 mas)
;----------------------------------------------------------------------
L_0910:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x232                       ; 81 EC 32 02
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        mov     ax, 0x260                       ; B8 60 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x259                       ; B8 59 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x258                       ; B8 58 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x140]                ; 8D 86 C0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 36 0A 00 00 [FIXUP]
        lea     ax, [bp - 0x140]                ; 8D 86 C0 FE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 6A 09 00 00 [FIXUP]
        lea     ax, [bp - 0x140]                ; 8D 86 C0 FE
        push    ax                              ; 50
        mov     ax, 0x268                       ; B8 68 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 89 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x142], ax       ; 89 86 BE FE
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0964                          ; 74 07
        inc     word ptr [bp - 0x142]           ; FF 86 BE FE
        mov     byte ptr [bx], 0                ; C6 07 00
L_0964:
        lea     ax, [bp - 0x140]                ; 8D 86 C0 FE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A A4 09 00 00 [FIXUP]
        cmp     byte ptr [bp - 0x140], 0        ; 80 BE C0 FE 00
        je      L_09D6                          ; 74 61
        mov     word ptr [bp - 0xa8], 1         ; C7 86 58 FF 01 00
        mov     ax, word ptr [bp - 0x142]       ; 8B 86 BE FE
        mov     word ptr [bp - 0x146], ax       ; 89 86 BA FE
        push    ax                              ; 50
        mov     ax, 0x26a                       ; B8 6A 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 13 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x142], ax       ; 89 86 BE FE
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_099F                          ; 74 07
        inc     word ptr [bp - 0x142]           ; FF 86 BE FE
        mov     byte ptr [bx], 0                ; C6 07 00
L_099F:
        push    word ptr [bp - 0x146]           ; FF B6 BA FE
        call    far _entry_22                   ; 9A AD 09 00 00 [FIXUP]
        push    word ptr [bp - 0x142]           ; FF B6 BE FE
        call    far _entry_22                   ; 9A 51 0A 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x142]       ; 8B 86 BE FE
        mov     word ptr [bp - 0x144], ax       ; 89 86 BC FE
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_09DC                          ; 75 1C
        inc     word ptr [bp - 0x144]           ; FF 86 BC FE
        mov     ax, word ptr [bp - 0x144]       ; 8B 86 BC FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xce0                       ; B8 E0 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 05 0B 00 00 [FIXUP]
        jmp     L_09DC                          ; EB 06
L_09D6:
        mov     word ptr [bp - 0xa8], 0         ; C7 86 58 FF 00 00
L_09DC:
        mov     word ptr [bp - 0x1b2], 0        ; C7 86 4E FE 00 00
L_09E2:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x136                       ; B8 36 01
        push    ax                              ; 50
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        push    word ptr [bp - 0x1b2]           ; FF B6 4E FE
        lea     ax, [bp - 0x1b0]                ; 8D 86 50 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 8A 0A 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_0A09                          ; 75 08
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0A09                          ; 75 03
        jmp     L_0BFD                          ; E9 F4 01
L_0A09:
        lea     ax, [bp - 0x1b0]                ; 8D 86 50 FE
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 43 0A 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, 0x26d                       ; B8 6D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x1b0]                ; 8D 86 50 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x26c                       ; B8 6C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 26 04 00 00 [FIXUP]
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ax                              ; 50
        mov     ax, 0x275                       ; B8 75 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 4E 04 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 30 04 00 00 [FIXUP]
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
L_0A5F:
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x277                       ; B8 77 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 9A 0A 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x12c                       ; B8 2C 01
        push    ax                              ; 50
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x1b2]       ; 8B 9E 4E FE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x94c]           ; FF B7 4C 09
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A BA 0A 00 00 [FIXUP]
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 15 0B 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x12c                       ; B8 2C 01
        push    ax                              ; 50
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x1b2]       ; 8B 9E 4E FE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x8a6]           ; FF B7 A6 08
        lea     ax, [bp - 0xc0]                 ; 8D 86 40 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 98 0B 00 00 [FIXUP]
        cmp     word ptr [bp - 0xa8], 0         ; 83 BE 58 FF 00
        jne     L_0AC8                          ; 75 03
        jmp     L_0B7E                          ; E9 B6 00
L_0AC8:
        lea     ax, [bp - 0x1b0]                ; 8D 86 50 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x140]                ; 8D 86 C0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A ED 0A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0AE0                          ; 74 03
        jmp     L_0B7E                          ; E9 9E 00
L_0AE0:
        lea     ax, [bp - 0xc0]                 ; 8D 86 40 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x144]       ; 8B 86 BC FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0AF8                          ; 74 03
        jmp     L_0B7E                          ; E9 86 00
L_0AF8:
        lea     ax, [bp - 0x232]                ; 8D 86 CE FD
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x140]                ; 8D 86 C0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 7C 04 00 00 [FIXUP]
        lea     ax, [bp - 0x232]                ; 8D 86 CE FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x279                       ; B8 79 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 26 0B 00 00 [FIXUP]
        lea     ax, [bp - 0x232]                ; 8D 86 CE FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x146]       ; 8B 86 BA FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 36 0B 00 00 [FIXUP]
        lea     ax, [bp - 0x232]                ; 8D 86 CE FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x27b                       ; B8 7B 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 47 0B 00 00 [FIXUP]
        lea     ax, [bp - 0x232]                ; 8D 86 CE FD
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A A6 04 00 00 [FIXUP]
        mov     ax, 0x284                       ; B8 84 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x27d                       ; B8 7D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x232]                ; 8D 86 CE FD
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0B69                          ; 75 05
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_0B69:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x28c                       ; B8 8C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FB 03 00 00 [FIXUP]
L_0B7E:
        inc     word ptr [bp - 0x1b2]           ; FF 86 4E FE
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x136                       ; B8 36 01
        push    ax                              ; 50
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        push    word ptr [bp - 0x1b2]           ; FF B6 4E FE
        lea     ax, [bp - 0xa6]                 ; 8D 86 5A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 2B 02 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_0BA6                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0BD1                          ; 74 2B
L_0BA6:
        lea     ax, [bp - 0xa6]                 ; 8D 86 5A FF
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 95 0C 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0xa6]                 ; 8D 86 5A FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x1b0]                ; 8D 86 50 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A D5 0A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0BD1                          ; 75 03
        jmp     L_0A5F                          ; E9 8E FE
L_0BD1:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0BF5                          ; 74 1E
        mov     ax, 0x294                       ; B8 94 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x1b0]                ; 8D 86 50 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 5C 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0BF5                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0BF7                          ; EB 02
L_0BF5:
        sub     ax, ax                          ; 2B C0
L_0BF7:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_09E2                          ; E9 E5 FD
L_0BFD:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0C0B                          ; 75 08
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
L_0C0B:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x29c                       ; B8 9C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 15 0D 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xaa                        ; 81 EC AA 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0C47                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0C44                          ; 75 03
        jmp     L_0D2A                          ; E9 E6 00
L_0C44:
        jmp     L_0D3B                          ; E9 F4 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C47 -- offset 0x0C47 -- 103 instr
; Funcion compleja: 103 instrucciones, 8 llamadas, 3 branches.
; tags: calls_kernel, calls_user, complex, far
; calls (intra): sub_0D48
; calls (inter): KERNEL.GETPROFILESTRING, KERNEL.LSTRCAT, KERNEL.LSTRCPY, USER.ENDDIALOG, USER.GETDLGITEM, USER.SENDMESSAGE (+1 mas)
;----------------------------------------------------------------------
L_0C47:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 6A 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0xaa], ax        ; 89 86 56 FF
        push    ax                              ; 50
        call    far _entry_46                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0C6F                          ; 75 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 8B 0D 00 00 [FIXUP]
        jmp     L_0D3D                          ; E9 CE 00
L_0C6F:
        mov     ax, 0x2ac                       ; B8 AC 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a5                       ; B8 A5 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 0F 0E 00 00 [FIXUP]
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ax                              ; 50
        mov     ax, 0x2b4                       ; B8 B4 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A DA 0C 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0CA9                          ; 74 06
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0                ; C6 07 00
L_0CA9:
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ax                              ; 50
        call    far _entry_22                   ; 9A EF 0C 00 00 [FIXUP]
        lea     ax, [bp - 0xa8]                 ; 8D 86 58 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 48 0F 00 00 [FIXUP]
        lea     ax, [bp - 0xa8]                 ; 8D 86 58 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FF 0C 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x2b6                       ; B8 B6 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A DB 0D 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0CEB                          ; 74 03
        inc     word ptr [bp - 4]               ; FF 46 FC
L_0CEB:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_22                   ; 9A 45 08 00 00 [FIXUP]
        lea     ax, [bp - 0xa8]                 ; 8D 86 58 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 9C 0E 00 00 [FIXUP]
        push    word ptr [bp - 0xaa]            ; FF B6 56 FF
        mov     ax, 0x40d                       ; B8 0D 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0xa8]                 ; 8D 86 58 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A A9 0D 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWWINDOW             ; 9A 9A 00 00 00 [FIXUP]
L_0D25:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D3D                          ; EB 13
L_0D2A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0D48                          ; E8 0F 00
        jmp     L_0D25                          ; EB EA
L_0D3B:
        sub     ax, ax                          ; 2B C0
L_0D3D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D48 -- offset 0x0D48 -- 31 instr
; Dispatcher: tabla de decisiones cmp+jcc (31 instr).
; tags: calls_user, dispatcher
; callers: sub_0C47
; calls (intra): sub_0D95
; calls (inter): USER.ENDDIALOG, USER.GETDLGITEM
;----------------------------------------------------------------------
L_0D48:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_0D5F                          ; 74 0C
        cmp     ax, 2                           ; 3D 02 00
        je      L_0D84                          ; 74 2C
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_0D71                          ; 74 14
        jmp     L_0D8F                          ; EB 30
L_0D5F:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 01 07 00 00 [FIXUP]
        push    ax                              ; 50
        jmp     L_0D7D                          ; EB 0C
L_0D71:
        cmp     word ptr [bp + 4], 2            ; 83 7E 04 02
        jne     L_0D8F                          ; 75 18
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
L_0D7D:
        call    L_0D95                          ; E8 15 00
        or      ax, ax                          ; 0B C0
        je      L_0D8F                          ; 74 0B
L_0D84:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 88 00 00 00 [FIXUP]
L_0D8F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D95 -- offset 0x0D95 -- 16 instr
; Funcion sin clasificar definitiva (16 instr).
; tags: calls_user, small
; callers: sub_0D48
; calls (inter): USER.SENDMESSAGE
;----------------------------------------------------------------------
L_0D95:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x124                       ; 81 EC 24 01
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A CD 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0x124], ax       ; 89 86 DC FE
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0DBB                          ; 75 05
L_0DB6:
        sub     ax, ax                          ; 2B C0
        jmp     L_111D                          ; E9 62 03
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0DBB -- offset 0x0DBB -- 124 instr
; Funcion compleja: 124 instrucciones, 8 llamadas, 7 branches.
; tags: calls_kernel, calls_user, complex
; calls (inter): KERNEL.ANSIUPPER, KERNEL.GETPROFILESTRING, KERNEL.LOADLIBRARY, KERNEL.LSTRCAT, KERNEL.LSTRLEN, USER.LOADSTRING (+2 mas)
;----------------------------------------------------------------------
L_0DBB:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        push    word ptr [bp - 0x124]           ; FF B6 DC FE
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 28 08 00 00 [FIXUP]
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 72 0E 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 42 01 00 00 [FIXUP]
        add     word ptr [bp - 6], ax           ; 01 46 FA
        mov     ax, 0x2b9                       ; B8 B9 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2b8                       ; B8 B8 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 36 09 00 00 [FIXUP]
        cmp     byte ptr [bp - 0x122], 0        ; 80 BE DE FE 00
        jne     L_0E68                          ; 75 4E
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x60                        ; B8 60 00
        push    ax                              ; 50
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A D1 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0E3A                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0E3C                          ; EB 02
L_0E3A:
        sub     ax, ax                          ; 2B C0
L_0E3C:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0E4E                          ; 74 0B
L_0E43:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_43                   ; 9A C6 08 00 00 [FIXUP]
        jmp     L_0DB6                          ; E9 68 FF
L_0E4E:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A DF 05 00 00 [FIXUP]
        jmp     L_0DB6                          ; E9 4E FF
L_0E68:
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ax                              ; 50
        mov     ax, 0x2c1                       ; B8 C1 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 85 0E 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ax                              ; 50
        mov     ax, 0x2c3                       ; B8 C3 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 36 08 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0EA0                          ; 75 10
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2c5                       ; B8 C5 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 64 0F 00 00 [FIXUP]
L_0EA0:
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A EA 0E 00 00 [FIXUP]
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LOADLIBRARY          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xd0], ax        ; 89 86 30 FF
        or      ax, ax                          ; 0B C0
        jne     L_0F17                          ; 75 59
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x61                        ; B8 61 00
        push    ax                              ; 50
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 7B 0F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0EDE                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0EE0                          ; EB 02
L_0EDE:
        sub     ax, ax                          ; 2B C0
L_0EE0:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 53 0F 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0EF7                          ; 74 03
        jmp     L_0E43                          ; E9 4C FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0EF7 -- offset 0x0EF7 -- 17 instr
; Funcion sin clasificar definitiva (17 instr).
; tags: small
;----------------------------------------------------------------------
L_0EF7:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A E5 08 00 00 [FIXUP]
        jmp     L_0DB6                          ; E9 9F FE
L_0F17:
        cmp     word ptr [bp - 0xd0], 0x20      ; 83 BE 30 FF 20
        ja      L_0F21                          ; 77 03
        jmp     L_0DB6                          ; E9 95 FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F21 -- offset 0x0F21 -- 221 instr
; Dispatcher: tabla de decisiones cmp+jcc (221 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (inter): KERNEL.ANSIUPPER, KERNEL.FREELIBRARY, KERNEL.FREEMODULE, KERNEL.GETPROCADDRESS, KERNEL.GETPROFILESTRING, KERNEL.LSTRCAT (+8 mas)
;----------------------------------------------------------------------
L_0F21:
        push    word ptr [bp - 0xd0]            ; FF B6 30 FF
        mov     ax, 0x2ca                       ; B8 CA 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        or      ax, dx                          ; 0B C2
        je      L_0F3C                          ; 74 03
        jmp     L_0FD1                          ; E9 95 00
L_0F3C:
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2d5                       ; B8 D5 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A D0 09 00 00 [FIXUP]
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 5B 0A 00 00 [FIXUP]
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A CA 07 00 00 [FIXUP]
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x61                        ; B8 61 00
        push    ax                              ; 50
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A E7 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0F88                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0F8A                          ; EB 02
L_0F88:
        sub     ax, ax                          ; 2B C0
L_0F8A:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 66 10 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0FAE                          ; 74 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_43                   ; 9A D1 12 00 00 [FIXUP]
        jmp     L_0FC5                          ; EB 17
L_0FAE:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A E9 12 00 00 [FIXUP]
L_0FC5:
        push    word ptr [bp - 0xd0]            ; FF B6 30 FF
        call    far KERNEL.FREELIBRARY          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0DB6                          ; E9 E5 FD
L_0FD1:
        mov     ax, 0x2e0                       ; B8 E0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2d7                       ; B8 D7 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x97a                       ; B8 7A 09
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xce0                       ; B8 E0 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 32 13 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0xd0]            ; FF B6 30 FF
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        lcall   [bp - 0xa]                      ; FF 5E F6
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 0xd0]            ; FF B6 30 FF
        call    far KERNEL.FREEMODULE           ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_1018                          ; 75 03
        jmp     L_111A                          ; E9 02 01
L_1018:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_102B                          ; 75 0C
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 02 11 00 00 [FIXUP]
L_102B:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 10 11 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 16 11 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A BE 0C 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 3B 13 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2e8                       ; B8 E8 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 95 10 00 00 [FIXUP]
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ax                              ; 50
        mov     ax, 0x2ea                       ; B8 EA 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 4B 13 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A A7 0E 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A A5 10 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2ec                       ; B8 EC 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A B5 10 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A CE 0C 00 00 [FIXUP]
        mov     ax, 0x2f5                       ; B8 F5 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A E8 0B 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_10DF                          ; 75 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_25                   ; 9A 07 0C 00 00 [FIXUP]
        jmp     L_10F4                          ; EB 15
L_10DF:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x2fd                       ; B8 FD 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 1C 0C 00 00 [FIXUP]
L_10F4:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_1106                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A B4 11 00 00 [FIXUP]
L_1106:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A C2 11 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A C8 11 00 00 [FIXUP]
L_111A:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
L_111D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_113C                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_1179                          ; 74 3F
        jmp     L_1174                          ; EB 38
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_113C -- offset 0x113C -- 121 instr
; Dispatcher: tabla de decisiones cmp+jcc (121 instr).
; tags: calls_user, dispatcher, far
; calls (intra): sub_127F, sub_1305, sub_1547
; calls (inter): USER.CHECKDLGBUTTON, USER.CHECKRADIOBUTTON, USER.ENDDIALOG, USER.GETDLGITEM, USER.LOADCURSOR, USER.SETCURSOR (+3 mas)
;----------------------------------------------------------------------
L_113C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x33e                       ; B8 3E 03
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x33e                       ; B8 3E 03
        push    ax                              ; 50
        call    L_1305                          ; E8 AF 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x33e                       ; B8 3E 03
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 4F 0C 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWWINDOW             ; 9A 21 0D 00 00 [FIXUP]
L_1174:
        sub     ax, ax                          ; 2B C0
        jmp     L_1274                          ; E9 FB 00
L_1179:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_1198                          ; 74 17
        cmp     ax, 2                           ; 3D 02 00
        je      L_11F8                          ; 74 72
        cmp     ax, 0x324                       ; 3D 24 03
        jae     L_1205                          ; 73 7A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x321                       ; B8 21 03
        push    ax                              ; 50
        mov     ax, 0x323                       ; B8 23 03
        jmp     L_123C                          ; E9 A4 00
L_1198:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_127F                          ; E8 E1 00
        or      ax, ax                          ; 0B C0
        jne     L_11A5                          ; 75 03
        jmp     L_1271                          ; E9 CC 00
L_11A5:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_11B8                          ; 75 0C
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A E0 11 00 00 [FIXUP]
L_11B8:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A EE 11 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A F4 11 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1547                          ; E8 75 03
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_11E4                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 32 00 00 00 [FIXUP]
L_11E4:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 40 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 46 00 00 00 [FIXUP]
L_11F8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 68 0C 00 00 [FIXUP]
        jmp     L_1271                          ; EB 6C
L_1205:
        cmp     word ptr [bp + 0xa], 0x329      ; 81 7E 0A 29 03
        jae     L_1218                          ; 73 0C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x324                       ; B8 24 03
        push    ax                              ; 50
        mov     ax, 0x328                       ; B8 28 03
        jmp     L_123C                          ; EB 24
L_1218:
        cmp     word ptr [bp + 0xa], 0x32c      ; 81 7E 0A 2C 03
        jae     L_122B                          ; 73 0C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x329                       ; B8 29 03
        push    ax                              ; 50
        mov     ax, 0x32b                       ; B8 2B 03
        jmp     L_123C                          ; EB 11
L_122B:
        cmp     word ptr [bp + 0xa], 0x32d      ; 81 7E 0A 2D 03
        ja      L_1247                          ; 77 15
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x32c                       ; B8 2C 03
        push    ax                              ; 50
        mov     ax, 0x32d                       ; B8 2D 03
L_123C:
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.CHECKRADIOBUTTON       ; 9A 64 12 00 00 [FIXUP]
        jmp     L_1271                          ; EB 2A
L_1247:
        cmp     word ptr [bp + 0xa], 0x33e      ; 81 7E 0A 3E 03
        jb      L_1271                          ; 72 23
        cmp     word ptr [bp + 0xa], 0x33f      ; 81 7E 0A 3F 03
        ja      L_1271                          ; 77 1C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x33e                       ; B8 3E 03
        push    ax                              ; 50
        mov     ax, 0x33f                       ; B8 3F 03
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.CHECKRADIOBUTTON       ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_1305                          ; E8 94 00
L_1271:
        mov     ax, 1                           ; B8 01 00
L_1274:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_127F -- offset 0x127F -- 57 instr
; Funcion mediana (57 instr, 3 calls).
; tags: calls_user, medium
; callers: sub_113C
; calls (inter): USER.LOADSTRING, USER.MESSAGEBOX, USER.SENDDLGITEMMESSAGE
;----------------------------------------------------------------------
L_127F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x56                        ; 83 EC 56
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x334                       ; B8 34 03
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A F8 09 00 00 [FIXUP]
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        jmp     L_12F4                          ; EB 4E
L_12A6:
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x56], al        ; 88 46 AA
        cmp     al, 0x30                        ; 3C 30
        jl      L_12B3                          ; 7C 04
        cmp     al, 0x39                        ; 3C 39
        jle     L_12F1                          ; 7E 3E
L_12B3:
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 2D 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_12D7                          ; 75 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_43                   ; 9A 47 0E 00 00 [FIXUP]
        jmp     L_12ED                          ; EB 16
L_12D7:
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 61 0E 00 00 [FIXUP]
L_12ED:
        sub     ax, ax                          ; 2B C0
        jmp     L_12FF                          ; EB 0E
L_12F1:
        inc     word ptr [bp - 0x54]            ; FF 46 AC
L_12F4:
        mov     bx, word ptr [bp - 0x54]        ; 8B 5E AC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_12A6                          ; 75 AA
        mov     ax, 1                           ; B8 01 00
L_12FF:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1305 -- offset 0x1305 -- 48 instr
; Funcion mediana (48 instr, 1 calls).
; tags: calls_kernel, medium
; callers: sub_113C
; calls (inter): KERNEL.GETPROFILESTRING
;----------------------------------------------------------------------
L_1305:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x58                        ; 83 EC 58
        mov     ax, 0x312                       ; B8 12 03
        push    ds                              ; 1E
        push    ax                              ; 50
        cmp     word ptr [bp + 4], 0x33e        ; 81 7E 04 3E 03
        jne     L_131C                          ; 75 05
        mov     ax, 0x306                       ; B8 06 03
        jmp     L_131F                          ; EB 03
L_131C:
        mov     ax, 0x30c                       ; B8 0C 03
L_131F:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x305                       ; B8 05 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 88 0C 00 00 [FIXUP]
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 63 13 00 00 [FIXUP]
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    ax                              ; 50
        mov     ax, 0x318                       ; B8 18 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A B0 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_135F                          ; 74 06
        inc     word ptr [bp - 0x54]            ; FF 46 AC
        mov     byte ptr [bx], 0                ; C6 07 00
L_135F:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_22                   ; 9A AE 0C 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x56]        ; 8B 5E AA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_137A                          ; 74 0B
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x334                       ; B8 34 03
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        jmp     L_1384                          ; EB 0A
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_137A -- offset 0x137A -- 36 instr
; Dispatcher: tabla de decisiones cmp+jcc (36 instr).
; tags: calls_user, dispatcher
; calls (inter): USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_137A:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x334                       ; B8 34 03
        push    ax                              ; 50
        mov     ax, 0x31a                       ; B8 1A 03
L_1384:
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    ax                              ; 50
        mov     ax, 0x31f                       ; B8 1F 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A F5 13 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_13AB                          ; 74 06
        inc     word ptr [bp - 0x54]            ; FF 46 AC
        mov     byte ptr [bx], 0                ; C6 07 00
L_13AB:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_22                   ; 9A 0D 14 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x56]        ; 8B 5E AA
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        cmp     ax, 0x65                        ; 3D 65 00
        je      L_1439                          ; 74 7B
        cmp     ax, 0x6e                        ; 3D 6E 00
        je      L_13C8                          ; 74 05
        cmp     ax, 0x6f                        ; 3D 6F 00
        je      L_13D5                          ; 74 0D
L_13C8:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x321                       ; B8 21 03
        push    ax                              ; 50
        mov     ax, 0x323                       ; B8 23 03
        push    ax                              ; 50
        jmp     L_13E3                          ; EB 0E
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_13D5 -- offset 0x13D5 -- 39 instr
; Funcion mediana (39 instr, 1 calls).
; tags: calls_user, medium
; calls (inter): USER.CHECKRADIOBUTTON
;----------------------------------------------------------------------
L_13D5:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x321                       ; B8 21 03
        push    ax                              ; 50
        mov     ax, 0x323                       ; B8 23 03
        push    ax                              ; 50
        mov     ax, 0x322                       ; B8 22 03
L_13E3:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 56 14 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    ax                              ; 50
        mov     ax, 0x321                       ; B8 21 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 66 14 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1409                          ; 74 06
        inc     word ptr [bp - 0x54]            ; FF 46 AC
        mov     byte ptr [bx], 0                ; C6 07 00
L_1409:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_22                   ; 9A 7E 14 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x56]        ; 8B 5E AA
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        sub     ax, 0x34                        ; 2D 34 00
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        or      ax, ax                          ; 0B C0
        jl      L_1449                          ; 7C 28
        cmp     ax, 4                           ; 3D 04 00
        jg      L_1449                          ; 7F 23
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x324                       ; B8 24 03
        push    ax                              ; 50
        mov     ax, 0x328                       ; B8 28 03
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        add     ax, 0x324                       ; 05 24 03
        jmp     L_1454                          ; EB 1B
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1439 -- offset 0x1439 -- 7 instr
; Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------
L_1439:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x321                       ; B8 21 03
        push    ax                              ; 50
        mov     ax, 0x323                       ; B8 23 03
        push    ax                              ; 50
        mov     ax, 0x321                       ; B8 21 03
        jmp     L_13E3                          ; EB 9A
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1449 -- offset 0x1449 -- 88 instr
; Funcion compleja: 88 instrucciones, 2 llamadas, 6 branches.
; tags: calls_kernel, calls_user, complex
; calls (inter): KERNEL.LSTRCMP, USER.CHECKRADIOBUTTON
;----------------------------------------------------------------------
L_1449:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x324                       ; B8 24 03
        push    ax                              ; 50
        mov     ax, 0x328                       ; B8 28 03
        push    ax                              ; 50
L_1454:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A A5 14 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    ax                              ; 50
        mov     ax, 0x323                       ; B8 23 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A B5 14 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_147A                          ; 74 06
        inc     word ptr [bp - 0x54]            ; FF 46 AC
        mov     byte ptr [bx], 0                ; C6 07 00
L_147A:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_22                   ; 9A CD 14 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x325                       ; B8 25 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A F4 14 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_14E9                          ; 75 54
L_1495:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x329                       ; B8 29 03
        push    ax                              ; 50
        mov     ax, 0x32b                       ; B8 2B 03
        push    ax                              ; 50
        mov     ax, 0x329                       ; B8 29 03
L_14A3:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 3D 15 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    ax                              ; 50
        mov     ax, 0x32d                       ; B8 2D 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 74 10 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_14C9                          ; 74 06
        inc     word ptr [bp - 0x54]            ; FF 46 AC
        mov     byte ptr [bx], 0                ; C6 07 00
L_14C9:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_22                   ; 9A 56 10 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x56]        ; 8B 5E AA
        cmp     byte ptr [bx], 0x70             ; 80 3F 70
        jne     L_1530                          ; 75 57
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x32c                       ; B8 2C 03
        push    ax                              ; 50
        mov     ax, 0x32d                       ; B8 2D 03
        push    ax                              ; 50
        mov     ax, 0x32c                       ; B8 2C 03
        jmp     L_153B                          ; EB 52
L_14E9:
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x327                       ; B8 27 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 17 15 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_150C                          ; 75 10
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x329                       ; B8 29 03
        push    ax                              ; 50
        mov     ax, 0x32b                       ; B8 2B 03
        push    ax                              ; 50
        mov     ax, 0x32a                       ; B8 2A 03
        jmp     L_14A3                          ; EB 97
L_150C:
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x32b                       ; B8 2B 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A C6 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1522                          ; 74 03
        jmp     L_1495                          ; E9 73 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1522 -- offset 0x1522 -- 6 instr
; Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------
L_1522:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x329                       ; B8 29 03
        push    ax                              ; 50
        mov     ax, 0x32b                       ; B8 2B 03
        push    ax                              ; 50
        jmp     L_14A3                          ; E9 73 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1530 -- offset 0x1530 -- 10 instr
; Wrapper que delega en USER.CHECKRADIOBUTTON.
; tags: calls_user, wrapper
; calls (inter): USER.CHECKRADIOBUTTON
;----------------------------------------------------------------------
L_1530:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x32c                       ; B8 2C 03
        push    ax                              ; 50
        mov     ax, 0x32d                       ; B8 2D 03
        push    ax                              ; 50
L_153B:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 41 12 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1547 -- offset 0x1547 -- 177 instr
; Iterador con instrucciones de string (movsb/scasb/...) (177 instr).
; tags: calls_kernel, calls_user, complex_iterator, string_op
; callers: sub_113C
; calls (inter): KERNEL.LSTRCAT, KERNEL.LSTRCPY, KERNEL.WRITEPROFILESTRING, USER.ISDLGBUTTONCHECKED, USER.SENDDLGITEMMESSAGE, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_1547:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x2a                        ; 83 EC 2A
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x334                       ; B8 34 03
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 9A 12 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], 0x321     ; C7 46 EC 21 03
L_156B:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 67 16 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_157D                          ; 75 03
        jmp     L_1647                          ; E9 CA 00
L_157D:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        sub     ax, 0x321                       ; 2D 21 03
        cmp     ax, 0xc                         ; 3D 0C 00
        jbe     L_158B                          ; 76 03
        jmp     L_1638                          ; E9 AD 00
L_158B:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x161e]       ; 2E FF A7 1E 16
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x32f                       ; B8 2F 03
L_159B:
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 89 16 00 00 [FIXUP]
        jmp     L_1638                          ; E9 93 00
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x332                       ; B8 32 03
        jmp     L_159B                          ; EB EC
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x335                       ; B8 35 03
        jmp     L_159B                          ; EB E2
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x338                       ; B8 38 03
        jmp     L_159B                          ; EB D8
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x33b                       ; B8 3B 03
        jmp     L_159B                          ; EB CE
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x33e                       ; B8 3E 03
        jmp     L_159B                          ; EB C4
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x341                       ; B8 41 03
        jmp     L_159B                          ; EB BA
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x344                       ; B8 44 03
        jmp     L_159B                          ; EB B0
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x347                       ; B8 47 03
        jmp     L_159B                          ; EB A6
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x34a                       ; B8 4A 03
        jmp     L_159B                          ; EB 9C
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x34f                       ; B8 4F 03
        jmp     L_159B                          ; EB 92
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x352                       ; B8 52 03
        jmp     L_159B                          ; EB 88
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x355                       ; B8 55 03
        jmp     L_159B                          ; E9 7D FF
        xchg    bx, ax                          ; 93
        adc     ax, 0x15a5                      ; 15 A5 15
        scasw   ax, word ptr es:[di]            ; AF
        adc     ax, 0x15b9                      ; 15 B9 15
        ret                                     ; C3
        adc     ax, 0x15cd                      ; 15 CD 15
        xlatb                                   ; D7
        adc     ax, 0x15e1                      ; 15 E1 15
        jmp     L_1645                          ; EB 15
        cmc                                     ; F5
        adc     ax, 0x15ff                      ; 15 FF 15
        or      word ptr [0x1613], dx           ; 09 16 13 16
L_1638:
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 9A 0F 00 00 [FIXUP]
L_1647:
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        cmp     word ptr [bp - 0x14], 0x32d     ; 81 7E EC 2D 03
        jg      L_1654                          ; 7F 03
        jmp     L_156B                          ; E9 17 FF
L_1654:
        mov     word ptr [bp - 0x14], 0x33e     ; C7 46 EC 3E 03
L_1659:
        cmp     word ptr [bp - 0x14], 0x33f     ; 81 7E EC 3F 03
        jg      L_168D                          ; 7F 2D
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far USER.ISDLGBUTTONCHECKED     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_16B9                          ; 74 4A
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     ax, 0x33e                       ; 3D 3E 03
        je      L_167E                          ; 74 07
        cmp     ax, 0x33f                       ; 3D 3F 03
        je      L_16AF                          ; 74 33
        jmp     L_168D                          ; EB 0F
L_167E:
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x356                       ; B8 56 03
L_1686:
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 4C 10 00 00 [FIXUP]
L_168D:
        mov     ax, 0x362                       ; B8 62 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A CA 10 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_16BE                          ; 75 19
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_25                   ; 9A D9 10 00 00 [FIXUP]
        jmp     L_16D3                          ; EB 24
L_16AF:
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x35c                       ; B8 5C 03
        jmp     L_1686                          ; EB CD
L_16B9:
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        jmp     L_1659                          ; EB 9B
L_16BE:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x368                       ; B8 68 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A F0 10 00 00 [FIXUP]
L_16D3:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

CONTROL_TEXT ENDS

        END
