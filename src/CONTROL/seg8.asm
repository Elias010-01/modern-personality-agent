; AUTO-GENERATED from original CONTROL segment 8
; segment_size=4185 bytes, flags=0xf130
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
        sub     sp, 0x22                        ; 83 EC 22
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_001C                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0043                          ; 74 29
        jmp     L_0054                          ; EB 38
L_001C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0061                          ; E8 3F 00
        or      ax, ax                          ; 0B C0
        jne     L_0032                          ; 75 0C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 73 02 00 00 [FIXUP]
L_0032:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
L_003E:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0056                          ; EB 13
L_0043:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_01C0                          ; E8 6E 01
        jmp     L_003E                          ; EB EA
L_0054:
        sub     ax, ax                          ; 2B C0
L_0056:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0061 -- offset 0x0061 -- 134 instr
; Dispatcher: tabla de decisiones cmp+jcc (134 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (intra): sub_042C, sub_063A, sub_0806
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALLOCK, KERNEL.LSTRCMP, USER.LOADSTRING, USER.SENDDLGITEMMESSAGE
;----------------------------------------------------------------------
L_0061:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x20                        ; 83 EC 20
        call    L_0806                          ; E8 9C 07
        mov     word ptr [0x6de], 0             ; C7 06 DE 06 00 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_0075:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_009C                          ; 75 21
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [0x6de]            ; A1 DE 06
        inc     word ptr [0x6de]                ; FF 06 DE 06
        add     ax, 0x80                        ; 05 80 00
        push    ax                              ; 50
        mov     ax, 0x642                       ; B8 42 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7f                        ; B8 7F 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 0F 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00A1                          ; 75 05
L_009C:
        mov     ax, 1                           ; B8 01 00
        jmp     L_00A3                          ; EB 02
L_00A1:
        sub     ax, ax                          ; 2B C0
L_00A3:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 0x642                       ; B8 42 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x57e                       ; B8 7E 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0075                          ; 75 BC
        dec     word ptr [0x6de]                ; FF 0E DE 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x4a                        ; B8 4A 00
        imul    word ptr [0x6de]                ; F7 2E DE 06
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa1c], ax            ; A3 1C 0A
        or      ax, ax                          ; 0B C0
        je      L_00DA                          ; 74 06
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_00DF                          ; 74 05
L_00DA:
        sub     ax, ax                          ; 2B C0
        jmp     L_01BA                          ; E9 DB 00
L_00DF:
        push    word ptr [0xa1c]                ; FF 36 1C 0A
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x6c2], ax            ; A3 C2 06
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x20], 0         ; C7 46 E0 00 00
        mov     word ptr [bp - 0x1e], 0         ; C7 46 E2 00 00
        jmp     L_0176                          ; EB 7C
L_00FA:
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     ax, 0x80                        ; 05 80 00
        push    ax                              ; 50
        mov     ax, 0x642                       ; B8 42 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7f                        ; B8 7F 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_063A                          ; E8 1F 05
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 60 01 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_0142                          ; 75 0A
        cmp     ax, 0xfffe                      ; 3D FE FF
        jne     L_0142                          ; 75 05
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
L_0142:
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        mov     ax, word ptr [0x530]            ; A1 30 05
        cmp     word ptr [bx + 0x18], ax        ; 39 47 18
        jne     L_016F                          ; 75 22
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A A8 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x20], 1         ; C7 46 E0 01 00
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     word ptr [0xb64], ax            ; A3 64 0B
L_016F:
        add     word ptr [bp - 0x1c], 0x4a      ; 83 46 E4 4A
        inc     word ptr [bp - 0x1e]            ; FF 46 E2
L_0176:
        mov     ax, word ptr [0x6de]            ; A1 DE 06
        cmp     word ptr [bp - 0x1e], ax        ; 39 46 E2
        jge     L_0181                          ; 7D 03
        jmp     L_00FA                          ; E9 79 FF
L_0181:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_018A                          ; 74 03
        jmp     L_00DA                          ; E9 50 FF
L_018A:
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        jne     L_01AC                          ; 75 1C
        dec     ax                              ; 48
        mov     word ptr [0xb64], ax            ; A3 64 0B
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        push    word ptr [0xb64]                ; FF 36 64 0B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 99 02 00 00 [FIXUP]
L_01AC:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x518                       ; B8 18 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_042C                          ; E8 75 02
        mov     ax, 1                           ; B8 01 00
L_01BA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01C0 -- offset 0x01C0 -- 68 instr
; Dispatcher: tabla de decisiones cmp+jcc (68 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (intra): sub_09FA
; calls (inter): KERNEL.LOCALFREE, KERNEL.LOCALUNLOCK, USER.ENDDIALOG, USER.LOADCURSOR, USER.SETCURSOR, USER.SHOWCURSOR
;----------------------------------------------------------------------
L_01C0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x38b                       ; 3D 8B 03
        jne     L_01D1                          ; 75 03
        jmp     L_02D9                          ; E9 08 01
L_01D1:
        jle     L_01D6                          ; 7E 03
        jmp     L_03F9                          ; E9 23 02
L_01D6:
        cmp     ax, 1                           ; 3D 01 00
        je      L_01FB                          ; 74 20
        cmp     ax, 2                           ; 3D 02 00
        je      L_025A                          ; 74 7A
        cmp     ax, 0x14                        ; 3D 14 00
        jne     L_01E8                          ; 75 03
        jmp     L_02A0                          ; E9 B8 00
L_01E8:
        cmp     ax, 0x386                       ; 3D 86 03
        jne     L_01F0                          ; 75 03
        jmp     L_03B8                          ; E9 C8 01
L_01F0:
        cmp     ax, 0x387                       ; 3D 87 03
        jne     L_01F8                          ; 75 03
        jmp     L_03C9                          ; E9 D1 01
L_01F8:
        jmp     L_0426                          ; E9 2B 02
L_01FB:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_020E                          ; 75 0C
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 42 02 00 00 [FIXUP]
L_020E:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 50 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 56 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_09FA                          ; E8 D2 07
        or      ax, ax                          ; 0B C0
        jne     L_022F                          ; 75 03
        jmp     L_0426                          ; E9 F7 01
L_022F:
        call    far _entry_26                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0246                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
L_0246:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
L_025A:
        push    word ptr [0xa1c]                ; FF 36 1C 0A
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xa1c]                ; FF 36 1C 0A
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0426                          ; E9 AC 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_027A -- offset 0x027A -- 16 instr
; Funcion sin clasificar definitiva (16 instr).
; tags: calls_user, small
; calls (intra): sub_042C
; calls (inter): USER.SENDDLGITEMMESSAGE
;----------------------------------------------------------------------
L_027A:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x518                       ; B8 18 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_042C                          ; E8 A7 01
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        push    word ptr [0xb64]                ; FF 36 64 0B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0426                          ; E9 86 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02A0 -- offset 0x02A0 -- 23 instr
; Funcion sin clasificar definitiva (23 instr).
; tags: calls_user, small
; calls (intra): sub_042C
; calls (inter): USER.SENDMESSAGE
;----------------------------------------------------------------------
L_02A0:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 38 03 00 00 [FIXUP]
        mov     word ptr [bp + 4], ax           ; 89 46 04
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_02BE                          ; 75 05
        mov     ax, 0x518                       ; B8 18 05
        jmp     L_02C8                          ; EB 0A
L_02BE:
        mov     ax, 0x4a                        ; B8 4A 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        add     ax, word ptr [0x6c2]            ; 03 06 C2 06
L_02C8:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ds           ; 8C 5E FE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_042C                          ; E8 56 01
        jmp     L_0426                          ; E9 4D 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02D9 -- offset 0x02D9 -- 9 instr
; Wrapper que delega en USER.CHECKRADIOBUTTON.
; tags: calls_user, wrapper
; calls (inter): USER.CHECKRADIOBUTTON
;----------------------------------------------------------------------
L_02D9:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x38b                       ; B8 8B 03
        push    ax                              ; 50
        mov     ax, 0x38d                       ; B8 8D 03
        push    ax                              ; 50
        mov     ax, 0x38b                       ; B8 8B 03
L_02E7:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 1D 03 00 00 [FIXUP]
        jmp     L_0426                          ; E9 36 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02F0 -- offset 0x02F0 -- 7 instr
; Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------
L_02F0:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x38b                       ; B8 8B 03
        push    ax                              ; 50
        mov     ax, 0x38d                       ; B8 8D 03
        push    ax                              ; 50
        mov     ax, 0x38c                       ; B8 8C 03
        jmp     L_02E7                          ; EB E7
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0300 -- offset 0x0300 -- 6 instr
; Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------
L_0300:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x38b                       ; B8 8B 03
        push    ax                              ; 50
        mov     ax, 0x38d                       ; B8 8D 03
L_030A:
        push    ax                              ; 50
        jmp     L_02E7                          ; EB DA
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_030D -- offset 0x030D -- 49 instr
; Funcion mediana (49 instr, 4 calls).
; tags: calls_user, medium
; calls (inter): USER.CHECKRADIOBUTTON, USER.GETDLGITEM, USER.SENDMESSAGE, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_030D:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x38f                       ; B8 8F 03
        push    ax                              ; 50
        mov     ax, 0x390                       ; B8 90 03
        push    ax                              ; 50
        mov     ax, 0x38f                       ; B8 8F 03
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 96 03 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 4], ax           ; 89 46 04
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0349                          ; 75 05
        mov     ax, 0x518                       ; B8 18 05
        jmp     L_0353                          ; EB 0A
L_0349:
        mov     ax, 0x4a                        ; B8 4A 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        add     ax, word ptr [0x6c2]            ; 03 06 C2 06
L_0353:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ds           ; 8C 5E FE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x393                       ; B8 93 03
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, ds                          ; 8C DA
        add     ax, 0x24                        ; 05 24 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 82 03 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x394                       ; B8 94 03
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, 0x2a                        ; 05 2A 00
        push    dx                              ; 52
L_0380:
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A A7 03 00 00 [FIXUP]
        jmp     L_0426                          ; E9 9D 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0389 -- offset 0x0389 -- 20 instr
; Funcion sin clasificar definitiva (20 instr).
; tags: calls_user, small
; calls (inter): USER.CHECKRADIOBUTTON, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_0389:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x38f                       ; B8 8F 03
        push    ax                              ; 50
        mov     ax, 0x390                       ; B8 90 03
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x393                       ; B8 93 03
        push    ax                              ; 50
        mov     ax, 0x580                       ; B8 80 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x394                       ; B8 94 03
        push    ax                              ; 50
        mov     ax, 0x581                       ; B8 81 05
        push    ds                              ; 1E
        jmp     L_0380                          ; EB C8
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03B8 -- offset 0x03B8 -- 7 instr
; Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------
L_03B8:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x386                       ; B8 86 03
        push    ax                              ; 50
        mov     ax, 0x387                       ; B8 87 03
        push    ax                              ; 50
        mov     ax, 0x386                       ; B8 86 03
        jmp     L_02E7                          ; E9 1E FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03C9 -- offset 0x03C9 -- 5 instr
; Funcion hoja (no llama a otras, 5 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------
L_03C9:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x386                       ; B8 86 03
        push    ax                              ; 50
        mov     ax, 0x387                       ; B8 87 03
        jmp     L_030A                          ; E9 34 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03D6 -- offset 0x03D6 -- 34 instr
; Dispatcher: tabla de decisiones cmp+jcc (34 instr).
; tags: calls_user, dispatcher
; calls (inter): USER.CHECKDLGBUTTON, USER.ISDLGBUTTONCHECKED
;----------------------------------------------------------------------
L_03D6:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x395                       ; B8 95 03
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03EF                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_03F1                          ; EB 02
L_03EF:
        sub     ax, ax                          ; 2B C0
L_03F1:
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 1E 05 00 00 [FIXUP]
        jmp     L_0426                          ; EB 2D
L_03F9:
        cmp     ax, 0x38c                       ; 3D 8C 03
        jne     L_0401                          ; 75 03
        jmp     L_02F0                          ; E9 EF FE
L_0401:
        cmp     ax, 0x38d                       ; 3D 8D 03
        jne     L_0409                          ; 75 03
        jmp     L_0300                          ; E9 F7 FE
L_0409:
        cmp     ax, 0x38f                       ; 3D 8F 03
        jne     L_0411                          ; 75 03
        jmp     L_030D                          ; E9 FC FE
L_0411:
        cmp     ax, 0x390                       ; 3D 90 03
        jne     L_0419                          ; 75 03
        jmp     L_0389                          ; E9 70 FF
L_0419:
        cmp     ax, 0x395                       ; 3D 95 03
        je      L_03D6                          ; 74 B8
        cmp     ax, 0x397                       ; 3D 97 03
        jne     L_0426                          ; 75 03
        jmp     L_027A                          ; E9 54 FE
L_0426:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_042C -- offset 0x042C -- 76 instr
; Funcion mediana (76 instr, 2 calls).
; tags: calls_user, medium
; callers: sub_0061, sub_027A, sub_02A0
; calls (inter): USER.SETDLGITEMINT, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_042C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x388                       ; B8 88 03
        push    ax                              ; 50
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x1e]         ; 26 FF 77 1E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x392                       ; B8 92 03
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x36                        ; 05 36 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 72 04 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x389                       ; B8 89 03
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x3a                        ; 05 3A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 89 04 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x38a                       ; B8 8A 03
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x46                        ; 05 46 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A A0 04 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x38e                       ; B8 8E 03
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x3e                        ; 05 3E 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A B7 04 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x391                       ; B8 91 03
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x42                        ; 05 42 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A D6 04 00 00 [FIXUP]
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x20], 0      ; 26 83 7F 20 00
        jne     L_04ED                          ; 75 28
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x393                       ; B8 93 03
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x24                        ; 05 24 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FA 04 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x394                       ; B8 94 03
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x2a                        ; 05 2A 00
        push    dx                              ; 52
        jmp     L_0509                          ; EB 1C
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04ED -- offset 0x04ED -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: calls_user, small
; calls (inter): USER.CHECKDLGBUTTON, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_04ED:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x393                       ; B8 93 03
        push    ax                              ; 50
        mov     ax, 0x582                       ; B8 82 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 0B 05 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x394                       ; B8 94 03
        push    ax                              ; 50
        mov     ax, 0x583                       ; B8 83 05
        push    ds                              ; 1E
L_0509:
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 30 06 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x395                       ; B8 95 03
        push    ax                              ; 50
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x22]         ; 26 FF 77 22
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x20], 0      ; 26 83 7F 20 00
        jne     L_053C                          ; 75 10
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x38f                       ; B8 8F 03
        push    ax                              ; 50
        mov     ax, 0x390                       ; B8 90 03
        push    ax                              ; 50
        mov     ax, 0x38f                       ; B8 8F 03
        jmp     L_0547                          ; EB 0B
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_053C -- offset 0x053C -- 16 instr
; Funcion sin clasificar definitiva (16 instr).
; tags: calls_user, small
; calls (inter): USER.CHECKRADIOBUTTON
;----------------------------------------------------------------------
L_053C:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x38f                       ; B8 8F 03
        push    ax                              ; 50
        mov     ax, 0x390                       ; B8 90 03
        push    ax                              ; 50
L_0547:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 74 05 00 00 [FIXUP]
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x1a]     ; 26 8B 47 1A
        or      ax, ax                          ; 0B C0
        je      L_0564                          ; 74 0C
        cmp     ax, 1                           ; 3D 01 00
        je      L_05C7                          ; 74 6A
        cmp     ax, 2                           ; 3D 02 00
        je      L_05D7                          ; 74 75
        jmp     L_0578                          ; EB 14
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0564 -- offset 0x0564 -- 39 instr
; Funcion mediana (39 instr, 2 calls).
; tags: calls_kernel, calls_user, medium
; calls (inter): KERNEL.LSTRCPY, USER.CHECKRADIOBUTTON
;----------------------------------------------------------------------
L_0564:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x38b                       ; B8 8B 03
        push    ax                              ; 50
        mov     ax, 0x38d                       ; B8 8D 03
        push    ax                              ; 50
        mov     ax, 0x38b                       ; B8 8B 03
L_0572:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A AE 05 00 00 [FIXUP]
L_0578:
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x30                        ; 05 30 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 0A 06 00 00 [FIXUP]
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x1c], 0      ; 26 83 7F 1C 00
        je      L_059E                          ; 74 07
        cmp     word ptr es:[bx + 0x1c], 2      ; 26 83 7F 1C 02
        jne     L_05E4                          ; 75 46
L_059E:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x386                       ; B8 86 03
        push    ax                              ; 50
        mov     ax, 0x387                       ; B8 87 03
        push    ax                              ; 50
        mov     ax, 0x386                       ; B8 86 03
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A F1 05 00 00 [FIXUP]
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x1c], 2      ; 26 83 7F 1C 02
        jne     L_0623                          ; 75 67
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x584                       ; B8 84 05
        push    ds                              ; 1E
        jmp     L_061D                          ; EB 56
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05C7 -- offset 0x05C7 -- 7 instr
; Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------
L_05C7:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x38b                       ; B8 8B 03
        push    ax                              ; 50
        mov     ax, 0x38d                       ; B8 8D 03
        push    ax                              ; 50
        mov     ax, 0x38c                       ; B8 8C 03
        jmp     L_0572                          ; EB 9B
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05D7 -- offset 0x05D7 -- 6 instr
; Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------
L_05D7:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x38b                       ; B8 8B 03
        push    ax                              ; 50
        mov     ax, 0x38d                       ; B8 8D 03
        push    ax                              ; 50
        jmp     L_0572                          ; EB 8E
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05E4 -- offset 0x05E4 -- 36 instr
; Funcion mediana (36 instr, 4 calls).
; tags: calls_kernel, calls_user, medium
; calls (inter): KERNEL.LSTRCAT, KERNEL.LSTRCPY, USER.CHECKRADIOBUTTON, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_05E4:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x386                       ; B8 86 03
        push    ax                              ; 50
        mov     ax, 0x387                       ; B8 87 03
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A E9 02 00 00 [FIXUP]
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x1c], 3      ; 26 83 7F 1C 03
        jne     L_0623                          ; 75 24
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x586                       ; B8 86 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x30                        ; 05 30 00
        push    dx                              ; 52
L_061D:
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
L_0623:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x385                       ; B8 85 03
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 6B 03 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_063A -- offset 0x063A -- 96 instr
; Funcion compleja: 96 instrucciones, 1 llamadas, 0 branches.
; tags: complex
; callers: sub_0061
; calls (intra): sub_0721
;----------------------------------------------------------------------
L_063A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        mov     ax, 0x642                       ; B8 42 06
        mov     word ptr [0xb84], ax            ; A3 84 0B
        mov     word ptr [0xb86], ds            ; 8C 1E 86 0B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0721                          ; E8 CE 00
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0721                          ; E8 C6 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x18], ax     ; 26 89 47 18
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0721                          ; E8 B7 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0721                          ; E8 A8 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x1c], ax     ; 26 89 47 1C
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0721                          ; E8 99 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x1e], ax     ; 26 89 47 1E
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0721                          ; E8 8A 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x20], ax     ; 26 89 47 20
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0721                          ; E8 7B 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x24                        ; 05 24 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0721                          ; E8 68 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x2a                        ; 05 2A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0721                          ; E8 5A 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x30                        ; 05 30 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0721                          ; E8 4C 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x36                        ; 05 36 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0721                          ; E8 3E 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x3a                        ; 05 3A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0721                          ; E8 30 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x3e                        ; 05 3E 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0721                          ; E8 22 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x42                        ; 05 42 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0721                          ; E8 14 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x46                        ; 05 46 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0721                          ; E8 06 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0721 -- offset 0x0721 -- 75 instr
; Dispatcher: tabla de decisiones cmp+jcc (75 instr).
; tags: dispatcher
; callers: sub_063A
;----------------------------------------------------------------------
L_0721:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        les     bx, ptr [0xb84]                 ; C4 1E 84 0B
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_0757                          ; 75 15
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
L_0747:
        les     bx, ptr [0xb84]                 ; C4 1E 84 0B
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_07A0                          ; 75 4F
        inc     word ptr [0xb84]                ; FF 06 84 0B
        jmp     L_0747                          ; EB F0
L_0757:
        les     bx, ptr [0xb84]                 ; C4 1E 84 0B
        cmp     byte ptr es:[bx], 0x2c          ; 26 80 3F 2C
        jne     L_07A0                          ; 75 3F
        inc     word ptr [0xb84]                ; FF 06 84 0B
        jmp     L_0794                          ; EB 2D
L_0767:
        cmp     byte ptr [bp - 0xa], 0          ; 80 7E F6 00
        je      L_07AE                          ; 74 41
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     byte ptr [bp - 0xa], 0x21       ; 80 7E F6 21
        jne     L_0788                          ; 75 10
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        inc     word ptr [0xb84]                ; FF 06 84 0B
        jmp     L_07A0                          ; EB 18
L_0788:
        mov     bx, word ptr [0xb84]            ; 8B 1E 84 0B
        inc     word ptr [0xb84]                ; FF 06 84 0B
        mov     es, word ptr [0xb86]            ; 8E 06 86 0B
L_0794:
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     byte ptr es:[bx], al            ; 26 88 07
L_07A0:
        les     bx, ptr [0xb84]                 ; C4 1E 84 0B
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        cmp     al, 0x2c                        ; 3C 2C
        jne     L_0767                          ; 75 B9
L_07AE:
        inc     word ptr [0xb84]                ; FF 06 84 0B
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_07C2                          ; 74 0A
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     byte ptr es:[bx], 0x20          ; 26 C6 07 20
L_07C2:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_07F0                          ; EB 20
L_07D0:
        cmp     byte ptr [bp - 0xa], 0x39       ; 80 7E F6 39
        jg      L_07FD                          ; 7F 27
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 8]               ; F7 6E F8
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        add     cx, ax                          ; 03 C8
        sub     cx, 0x30                        ; 83 E9 30
        mov     word ptr [bp - 8], cx           ; 89 4E F8
L_07F0:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        cmp     al, 0x30                        ; 3C 30
        jge     L_07D0                          ; 7D D3
L_07FD:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0806 -- offset 0x0806 -- 204 instr
; Funcion compleja: 204 instrucciones, 2 llamadas, 0 branches.
; tags: calls_kernel, complex
; callers: sub_0061
; calls (inter): KERNEL.GETPROFILEINT, KERNEL.GETPROFILESTRING
;----------------------------------------------------------------------
L_0806:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, 0x588                       ; B8 88 05
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ds           ; 8C 5E FC
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x530]                ; FF 36 30 05
        call    far KERNEL.GETPROFILEINT        ; 9A 4F 08 00 00 [FIXUP]
        mov     word ptr [0x530], ax            ; A3 30 05
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x532]                ; FF 36 32 05
        call    far KERNEL.GETPROFILEINT        ; 9A 6F 08 00 00 [FIXUP]
        mov     word ptr [0x532], ax            ; A3 32 05
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x534]                ; FF 36 34 05
        call    far KERNEL.GETPROFILEINT        ; 9A 8F 08 00 00 [FIXUP]
        mov     word ptr [0x534], ax            ; A3 34 05
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x536]                ; FF 36 36 05
        call    far KERNEL.GETPROFILEINT        ; 9A AF 08 00 00 [FIXUP]
        mov     word ptr [0x536], ax            ; A3 36 05
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x538]                ; FF 36 38 05
        call    far KERNEL.GETPROFILEINT        ; 9A CF 08 00 00 [FIXUP]
        mov     word ptr [0x538], ax            ; A3 38 05
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x53a]                ; FF 36 3A 05
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x53a], ax            ; A3 3A 05
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x53c                       ; B8 3C 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 1A 09 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x542                       ; B8 42 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 3E 09 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x548                       ; B8 48 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 62 09 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x54e                       ; B8 4E 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 86 09 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x552                       ; B8 52 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A AA 09 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x556                       ; B8 56 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A CE 09 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x55a                       ; B8 5A 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A F2 09 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x55e                       ; B8 5E 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_09FA -- offset 0x09FA -- 44 instr
; Funcion mediana (44 instr, 3 calls).
; tags: calls_kernel, calls_user, medium
; callers: sub_01C0
; calls (inter): KERNEL.LSTRCPY, USER.ISDLGBUTTONCHECKED, USER.SENDDLGITEMMESSAGE
;----------------------------------------------------------------------
L_09FA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xbe                        ; 81 EC BE 00
        push    si                              ; 56
        mov     word ptr [bp - 0xb2], 1         ; C7 86 4E FF 01 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 2F 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0A4B                          ; 74 26
        mov     ax, 0x4a                        ; B8 4A 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        add     ax, word ptr [0x6c2]            ; 03 06 C2 06
        mov     word ptr [bp - 0xb6], ax        ; 89 86 4A FF
        mov     word ptr [bp - 0xb4], ds        ; 8C 9E 4C FF
        les     bx, ptr [bp - 0xb6]             ; C4 9E 4A FF
        push    word ptr es:[bx + 0x18]         ; 26 FF 77 18
        lea     ax, [bp - 0xbe]                 ; 8D 86 42 FF
        push    ax                              ; 50
        call    far _entry_36                   ; 9A 9B 0A 00 00 [FIXUP]
        jmp     L_0A5B                          ; EB 10
L_0A4B:
        lea     ax, [bp - 0xbe]                 ; 8D 86 42 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x58d                       ; B8 8D 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A C3 0A 00 00 [FIXUP]
L_0A5B:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x38b                       ; B8 8B 03
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 7B 0A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A73                          ; 74 08
        mov     word ptr [bp - 0x8e], 0         ; C7 86 72 FF 00 00
        jmp     L_0A91                          ; EB 1E
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A73 -- offset 0x0A73 -- 135 instr
; Dispatcher: tabla de decisiones cmp+jcc (135 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (inter): KERNEL.LSTRCPY, USER.GETDLGITEMINT, USER.GETDLGITEMTEXT, USER.ISDLGBUTTONCHECKED, USER.LOADSTRING, USER.MESSAGEBOX
;----------------------------------------------------------------------
L_0A73:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x38c                       ; B8 8C 03
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 1E 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A8B                          ; 74 08
        mov     word ptr [bp - 0x8e], 1         ; C7 86 72 FF 01 00
        jmp     L_0A91                          ; EB 06
L_0A8B:
        mov     word ptr [bp - 0x8e], 2         ; C7 86 72 FF 02 00
L_0A91:
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        lea     ax, [bp - 0xb8]                 ; 8D 86 48 FF
        push    ax                              ; 50
        call    far _entry_36                   ; 9A 5E 0B 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x385                       ; B8 85 03
        push    ax                              ; 50
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        lea     ax, [bp - 0x5a]                 ; 8D 46 A6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 89 05 00 00 [FIXUP]
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ax                              ; 50
        call    far _entry_22                   ; 9A FF FF 00 00 [FIXUP]
        cmp     byte ptr [bp - 0x78], 0         ; 80 7E 88 00
        jne     L_0B16                          ; 75 40
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0xa0                        ; B8 A0 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5a]                 ; 8D 46 A6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 93 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0AFA                          ; 75 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_43                   ; 9A 9F 0B 00 00 [FIXUP]
        jmp     L_0B10                          ; EB 16
L_0AFA:
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x5a]                 ; 8D 46 A6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
L_0B10:
        mov     word ptr [bp - 0xb2], 0         ; C7 86 4E FF 00 00
L_0B16:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x387                       ; B8 87 03
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A E2 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0B3C                          ; 74 16
        cmp     byte ptr [bp - 0x5a], 0x20      ; 80 7E A6 20
        jne     L_0B34                          ; 75 08
        mov     word ptr [bp - 0x8c], 3         ; C7 86 74 FF 03 00
        jmp     L_0B54                          ; EB 20
L_0B34:
        mov     word ptr [bp - 0x8c], 1         ; C7 86 74 FF 01 00
        jmp     L_0B54                          ; EB 18
L_0B3C:
        mov     si, word ptr [bp - 0xb0]        ; 8B B6 50 FF
        cmp     byte ptr [bp + si - 0x5b], 0x20 ; 80 7A A5 20
        jne     L_0B4E                          ; 75 08
        mov     word ptr [bp - 0x8c], 2         ; C7 86 74 FF 02 00
        jmp     L_0B54                          ; EB 06
L_0B4E:
        mov     word ptr [bp - 0x8c], 0         ; C7 86 74 FF 00 00
L_0B54:
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        lea     ax, [bp - 0xae]                 ; 8D 86 52 FF
        push    ax                              ; 50
        call    far _entry_36                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x388                       ; B8 88 03
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_0BC1                          ; 75 40
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0xa1                        ; B8 A1 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5a]                 ; 8D 46 A6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 94 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0BA5                          ; 75 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0BBB                          ; EB 16
L_0BA5:
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x5a]                 ; 8D 46 A6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 0C 0B 00 00 [FIXUP]
L_0BBB:
        mov     word ptr [bp - 0xb2], 0         ; C7 86 4E FF 00 00
L_0BC1:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x388                       ; B8 88 03
        push    ax                              ; 50
        lea     ax, [bp - 0xac]                 ; 8D 86 54 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A 34 0C 00 00 [FIXUP]
        lea     ax, [bp - 0xac]                 ; 8D 86 54 FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A CC 0A 00 00 [FIXUP]
        cmp     word ptr [bp - 0xb2], 0         ; 83 BE 4E FF 00
        jne     L_0BED                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0FEC                          ; E9 FF 03
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BED -- offset 0x0BED -- 419 instr
; Funcion compleja: 419 instrucciones, 5 llamadas, 27 branches.
; tags: calls_kernel, calls_user, complex
; calls (intra): sub_0FF3
; calls (inter): KERNEL.WRITEPROFILESTRING, USER.GETDLGITEMTEXT, USER.ISDLGBUTTONCHECKED, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_0BED:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x390                       ; B8 90 03
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 0F 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    far _entry_36                   ; 9A 1E 0C 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x395                       ; B8 95 03
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 63 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x86], ax        ; 89 86 7A FF
        push    ax                              ; 50
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ax                              ; 50
        call    far _entry_36                   ; 9A 45 0A 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x393                       ; B8 93 03
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A 5A 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_0FF3                          ; E8 AA 03
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x394                       ; B8 94 03
        push    ax                              ; 50
        lea     ax, [bp - 0x7e]                 ; 8D 46 82
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A 7F 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        lea     ax, [bp - 0x7e]                 ; 8D 46 82
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_0FF3                          ; E8 85 03
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x392                       ; B8 92 03
        push    ax                              ; 50
        lea     ax, [bp - 0x72]                 ; 8D 46 8E
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A A4 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        lea     ax, [bp - 0x72]                 ; 8D 46 8E
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_0FF3                          ; E8 60 03
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x389                       ; B8 89 03
        push    ax                              ; 50
        lea     ax, [bp - 0x6e]                 ; 8D 46 92
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A C9 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        lea     ax, [bp - 0x6e]                 ; 8D 46 92
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_0FF3                          ; E8 3B 03
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x38e                       ; B8 8E 03
        push    ax                              ; 50
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A EE 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_0FF3                          ; E8 16 03
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x391                       ; B8 91 03
        push    ax                              ; 50
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A 13 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_0FF3                          ; E8 F1 02
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x38a                       ; B8 8A 03
        push    ax                              ; 50
        lea     ax, [bp - 0x62]                 ; 8D 46 9E
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A B0 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        lea     ax, [bp - 0x62]                 ; 8D 46 9E
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xb0]            ; FF B6 50 FF
        call    L_0FF3                          ; E8 CC 02
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     ax, 0x58f                       ; B8 8F 05
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
        mov     word ptr [bp - 0x5c], ds        ; 8C 5E A4
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xbe]                 ; 8D 86 42 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 72 0D 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0D7F                          ; 74 28
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xb8]                 ; 8D 86 48 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A A3 0D 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0D7F                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D81                          ; EB 02
L_0D7F:
        sub     ax, ax                          ; 2B C0
L_0D81:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0DB0                          ; 74 28
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xae]                 ; 8D 86 52 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A D4 0D 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0DB0                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0DB2                          ; EB 02
L_0DB0:
        sub     ax, ax                          ; 2B C0
L_0DB2:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0DE1                          ; 74 28
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xac]                 ; 8D 86 54 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 04 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0DE1                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0DE3                          ; EB 02
L_0DE1:
        sub     ax, ax                          ; 2B C0
L_0DE3:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0E11                          ; 74 27
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 35 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0E11                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0E13                          ; EB 02
L_0E11:
        sub     ax, ax                          ; 2B C0
L_0E13:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0E42                          ; 74 28
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 66 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0E42                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0E44                          ; EB 02
L_0E42:
        sub     ax, ax                          ; 2B C0
L_0E44:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0E73                          ; 74 28
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 96 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0E73                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0E75                          ; EB 02
L_0E73:
        sub     ax, ax                          ; 2B C0
L_0E75:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0EA3                          ; 74 27
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x7e]                 ; 8D 46 82
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A C6 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0EA3                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0EA5                          ; EB 02
L_0EA3:
        sub     ax, ax                          ; 2B C0
L_0EA5:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0ED3                          ; 74 27
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A F6 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0ED3                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0ED5                          ; EB 02
L_0ED3:
        sub     ax, ax                          ; 2B C0
L_0ED5:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0F03                          ; 74 27
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x72]                 ; 8D 46 8E
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 26 0F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0F03                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0F05                          ; EB 02
L_0F03:
        sub     ax, ax                          ; 2B C0
L_0F05:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0F33                          ; 74 27
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x6e]                 ; 8D 46 92
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 56 0F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0F33                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0F35                          ; EB 02
L_0F33:
        sub     ax, ax                          ; 2B C0
L_0F35:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0F63                          ; 74 27
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0F63                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0F65                          ; EB 02
L_0F63:
        sub     ax, ax                          ; 2B C0
L_0F65:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0F93                          ; 74 27
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A B6 0F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0F93                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0F95                          ; EB 02
L_0F93:
        sub     ax, ax                          ; 2B C0
L_0F95:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0FC3                          ; 74 27
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x562]       ; 8B 87 62 05
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x62]                 ; 8D 46 9E
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 4C 0D 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0FC3                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0FC5                          ; EB 02
L_0FC3:
        sub     ax, ax                          ; 2B C0
L_0FC5:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0FD4                          ; 75 08
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
L_0FD4:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x594                       ; B8 94 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A AD 02 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_0FEC:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FF3 -- offset 0x0FF3 -- 37 instr
; Dispatcher: tabla de decisiones cmp+jcc (37 instr).
; tags: calls_kernel, dispatcher
; callers: sub_0BED
; calls (inter): KERNEL.LSTRCPY
;----------------------------------------------------------------------
L_0FF3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_100A                          ; 75 0B
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x599                       ; B8 99 05
        jmp     L_104D                          ; EB 43
L_100A:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_1036                          ; EB 14
L_1022:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_1033                          ; 74 05
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_1033:
        inc     word ptr [bp - 2]               ; FF 46 FE
L_1036:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_1022                          ; 7C E4
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_1054                          ; 74 10
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x59c                       ; B8 9C 05
L_104D:
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 57 0A 00 00 [FIXUP]
L_1054:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        push    es                              ; 06

CONTROL_TEXT ENDS

        END
