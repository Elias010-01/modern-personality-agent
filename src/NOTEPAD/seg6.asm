; AUTO-GENERATED from original NOTEPAD segment 6
; segment_size=1755 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

NOTEPAD_TEXT SEGMENT BYTE PUBLIC 'CODE'

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
        je      L_0019                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_005B                          ; 74 44
        jmp     L_0075                          ; EB 5C
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0019 -- offset 0x0019 -- 42 instr
; Dispatcher: tabla de decisiones cmp+jcc (42 instr).
; tags: calls_user, dispatcher
; calls (inter): USER.CHECKDLGBUTTON, USER.ENABLEWINDOW, USER.ENDDIALOG, USER.GETDLGITEM, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_0019:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        mov     ax, 0x256                       ; B8 56 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        mov     ax, word ptr [0x130]            ; A1 30 01
        mov     word ptr [0x282], ax            ; A3 82 02
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A EB 00 00 00 [FIXUP]
        cmp     byte ptr [0x256], 0             ; 80 3E 56 02 00
        jne     L_0085                          ; 75 41
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 93 00 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0085                          ; EB 2A
L_005B:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_008B                          ; 74 28
        cmp     ax, 2                           ; 3D 02 00
        je      L_007A                          ; 74 12
        cmp     ax, 0xc                         ; 3D 0C 00
        je      L_00CE                          ; 74 61
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_0075                          ; 75 03
        jmp     L_0102                          ; E9 8D 00
L_0075:
        sub     ax, ax                          ; 2B C0
        jmp     L_0114                          ; E9 9A 00
L_007A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.ENDDIALOG              ; 9A C3 00 00 00 [FIXUP]
L_0085:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0114                          ; E9 89 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_008B -- offset 0x008B -- 26 instr
; Funcion sin clasificar definitiva (26 instr).
; tags: calls_user, small
; calls (intra): sub_011F
; calls (inter): USER.ENDDIALOG, USER.GETDLGITEM, USER.GETDLGITEMTEXT, USER.ISWINDOWENABLED
;----------------------------------------------------------------------
L_008B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0085                          ; 74 E4
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        mov     ax, 0x256                       ; B8 56 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x282]            ; A1 82 02
        mov     word ptr [0x130], ax            ; A3 30 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.ENDDIALOG              ; 9A 57 03 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_011F                          ; E8 53 00
        jmp     L_0085                          ; EB B7
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00CE -- offset 0x00CE -- 20 instr
; Funcion sin clasificar definitiva (20 instr).
; tags: calls_user, small
; calls (inter): USER.CHECKDLGBUTTON, USER.ISDLGBUTTONCHECKED
;----------------------------------------------------------------------
L_00CE:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00E7                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_00E9                          ; EB 02
L_00E7:
        sub     ax, ax                          ; 2B C0
L_00E9:
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x282], 0             ; 83 3E 82 02 00
        jne     L_00FB                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_00FD                          ; EB 02
L_00FB:
        sub     ax, ax                          ; 2B C0
L_00FD:
        mov     word ptr [0x282], ax            ; A3 82 02
        jmp     L_0085                          ; EB 83
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0102 -- offset 0x0102 -- 12 instr
; Funcion sin clasificar definitiva (12 instr).
; tags: far, wrapper
;----------------------------------------------------------------------
L_0102:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0085                          ; E9 71 FF
L_0114:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_011F -- offset 0x011F -- 90 instr
; Funcion compleja: 90 instrucciones, 5 llamadas, 1 branches.
; tags: calls_kernel, calls_user, complex, far
; callers: sub_008B
; calls (intra): sub_01F5
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK, KERNEL.LSTRLEN, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_011F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 52 01 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x40d                       ; B8 0D 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 76 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    ax                              ; 50
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A E8 01 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, word ptr [bp - 0x10]        ; 03 46 F0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        push    ax                              ; 50
        mov     ax, 0x256                       ; B8 56 02
        push    ax                              ; 50
        call    L_01F5                          ; E8 63 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], -1           ; 83 7E FC FF
        jne     L_01BE                          ; 75 1B
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x34]                 ; FF 36 34 00
        mov     ax, 0x256                       ; B8 56 02
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far _entry_26                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01EC                          ; EB 2E
L_01BE:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x256                       ; B8 56 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 01 02 00 00 [FIXUP]
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        sub     dx, dx                          ; 2B D2
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A DB 02 00 00 [FIXUP]
L_01EC:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01F5 -- offset 0x01F5 -- 31 instr
; Funcion mediana (31 instr, 2 calls).
; tags: calls_kernel, medium
; callers: sub_011F
; calls (intra): sub_0245
; calls (inter): KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_01F5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0234                          ; EB 1B
L_0219:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_0245                          ; E8 20 00
        or      ax, ax                          ; 0B C0
        je      L_022E                          ; 74 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_023F                          ; EB 11
L_022E:
        inc     word ptr [bp - 2]               ; FF 46 FE
        inc     word ptr [bp + 8]               ; FF 46 08
L_0234:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_0219                          ; 7C DD
        mov     ax, 0xffff                      ; B8 FF FF
L_023F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0245 -- offset 0x0245 -- 50 instr
; Funcion mediana (50 instr, 1 calls).
; tags: calls_kernel, medium
; callers: sub_01F5
; calls (inter): KERNEL.ANSIUPPER
;----------------------------------------------------------------------
L_0245:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_0262:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_02BD                          ; 7D 53
        cmp     word ptr [0x130], 0             ; 83 3E 30 01 00
        jne     L_02AC                          ; 75 3B
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 90 02 00 00 [FIXUP]
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     al, byte ptr [bx]               ; 8A 07
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jmp     L_02B6                          ; EB 18
L_029E:
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_0262                          ; EB B6
L_02AC:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     si, word ptr [bp - 0xc]         ; 8B 76 F4
        mov     al, byte ptr [si]               ; 8A 04
        cmp     byte ptr [bx], al               ; 38 07
L_02B6:
        je      L_029E                          ; 74 E6
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_02BD:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02C7 -- offset 0x02C7 -- 414 instr
; Dispatcher: tabla de decisiones cmp+jcc (414 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; calls (inter): KERNEL.ANSINEXT, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LOCALALLOC, KERNEL.LOCALFREE, KERNEL.LOCALLOCK (+15 mas)
;----------------------------------------------------------------------
L_02C7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A AB 03 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 0x4000                      ; B8 00 40
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        cdq                                     ; 99
        mov     cx, 0xa3                        ; B9 A3 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jge     L_02FC                          ; 7D 07
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0307                          ; EB 0B
L_02FC:
        cmp     word ptr [bp - 2], 0x64         ; 83 7E FE 64
        jle     L_0307                          ; 7E 05
        mov     word ptr [bp - 2], 0x64         ; C7 46 FE 64 00
L_0307:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x104                       ; 81 EC 04 01
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0328                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0344                          ; 74 1E
        jmp     L_034C                          ; EB 24
L_0328:
        call    L_02C7                          ; E8 9C FF
        mov     word ptr [bp - 0x104], ax       ; 89 86 FC FE
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        push    word ptr [bp - 0x104]           ; FF B6 FC FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_035B                          ; EB 17
L_0344:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0350                          ; 74 04
L_034C:
        sub     ax, ax                          ; 2B C0
        jmp     L_035E                          ; EB 0E
L_0350:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
L_035B:
        mov     ax, 1                           ; B8 01 00
L_035E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        test    byte ptr [bp + 6], 0x80         ; F6 46 06 80
        je      L_0381                          ; 74 05
        mov     ax, 0x64                        ; B8 64 00
        jmp     L_0383                          ; EB 02
L_0381:
        sub     ax, ax                          ; 2B C0
L_0383:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        test    byte ptr [bp + 6], 0x80         ; F6 46 06 80
        jne     L_0391                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0393                          ; EB 02
L_0391:
        sub     ax, ax                          ; 2B C0
L_0393:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_03AF                          ; 75 15
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x418                       ; B8 18 04
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A BD 03 00 00 [FIXUP]
L_03AF:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        cmp     ax, 0x4000                      ; 3D 00 40
        jg      L_03DD                          ; 7F 13
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jne     L_03FA                          ; 75 1D
L_03DD:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jne     L_03F5                          ; 75 12
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x418                       ; B8 18 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 84 04 00 00 [FIXUP]
L_03F5:
        sub     ax, ax                          ; 2B C0
        jmp     L_053A                          ; E9 40 01
L_03FA:
        push    word ptr [0x18]                 ; FF 36 18 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x133                       ; B8 33 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x132                       ; B8 32 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, 0xf                         ; 2D 0F 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        push    word ptr [0x18]                 ; FF 36 18 00
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        push    word ptr [0x27e]                ; FF 36 7E 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0468                          ; 75 0A
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03F5                          ; EB 8D
L_0468:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.LOCALLOCK            ; 9A 5B 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A B0 04 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.LOCALUNLOCK          ; 9A 99 01 00 00 [FIXUP]
        push    word ptr [0x1a]                 ; FF 36 1A 00
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x1a], ax             ; A3 1A 00
        push    ax                              ; 50
        mov     ax, 0x40c                       ; B8 0C 04
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [0x284], ax            ; A3 84 02
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A ED 04 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_04CD                          ; 74 05
        mov     ax, word ptr [0x32]             ; A1 32 00
        jmp     L_04D0                          ; EB 03
L_04CD:
        mov     ax, 0x1c4                       ; B8 C4 01
L_04D0:
        push    ax                              ; 50
        call    far _entry_28                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        je      L_04F1                          ; 74 15
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 08 05 00 00 [FIXUP]
L_04F1:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 0A 06 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 33 05 00 00 [FIXUP]
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jne     L_0537                          ; 75 11
        push    word ptr [0x18]                 ; FF 36 18 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
L_0537:
        mov     ax, 1                           ; B8 01 00
L_053A:
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
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [bp + 6], -1           ; 83 7E 06 FF
        je      L_0567                          ; 74 03
        jmp     L_05F6                          ; E9 8F 00
L_0567:
        push    word ptr [0x18]                 ; FF 36 18 00
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0579                          ; 75 05
L_0574:
        sub     ax, ax                          ; 2B C0
        jmp     L_06CF                          ; E9 56 01
L_0579:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        jne     L_0590                          ; 75 07
        call    far USER.CLOSECLIPBOARD         ; 9A DA 05 00 00 [FIXUP]
        jmp     L_0574                          ; EB E4
L_0590:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A D5 01 00 00 [FIXUP]
        mov     word ptr [bp + 6], ax           ; 89 46 06
        cmp     word ptr [0x20], 0              ; 83 3E 20 00 00
        jne     L_05D1                          ; 75 22
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_05B4:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_05D1                          ; 7D 15
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        cmp     byte ptr es:[bx], 0xd           ; 26 80 3F 0D
        jne     L_05E0                          ; 75 1B
        cmp     byte ptr es:[bx + 1], 0xa       ; 26 80 7F 01 0A
        jne     L_05E0                          ; 75 14
        mov     word ptr [bp - 0x12], 1         ; C7 46 EE 01 00
L_05D1:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_05FC                          ; EB 1C
L_05E0:
        inc     word ptr [bp - 6]               ; FF 46 FA
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.ANSINEXT             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        jmp     L_05B4                          ; EB BE
L_05F6:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_05FC:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 32 06 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        cmp     word ptr [0x20], 0              ; 83 3E 20 00 00
        jne     L_0689                          ; 75 6E
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        je      L_0640                          ; 74 1F
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x40b                       ; B8 0B 04
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 50 06 00 00 [FIXUP]
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp - 0x10], cx        ; 89 4E F0
        jmp     L_0657                          ; EB 17
L_0640:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x411                       ; B8 11 04
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 97 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
L_0657:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     cx, word ptr [bp - 8]           ; 8B 4E F8
        sub     cx, word ptr [bp - 0xa]         ; 2B 4E F6
        mov     word ptr [bp - 4], cx           ; 89 4E FC
        sub     ax, cx                          ; 2B C1
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        cmp     ax, word ptr [0x1e]             ; 3B 06 1E 00
        jle     L_0689                          ; 7E 1B
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x40]                 ; FF 36 40 00
L_067A:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_26                   ; 9A B8 01 00 00 [FIXUP]
        jmp     L_0574                          ; E9 EB FE
L_0689:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 3A 01 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     di, dx                          ; 8B FA
        cdq                                     ; 99
        sub     ax, si                          ; 2B C6
        sbb     dx, di                          ; 1B D7
        add     ax, cx                          ; 03 C1
        adc     dx, bx                          ; 13 D3
        or      dx, dx                          ; 0B D2
        jl      L_06CC                          ; 7C 15
        jg      L_06BE                          ; 7F 05
        cmp     ax, 0x4000                      ; 3D 00 40
        jbe     L_06CC                          ; 76 0E
L_06BE:
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x36]                 ; FF 36 36 00
        jmp     L_067A                          ; EB AE
L_06CC:
        mov     ax, 1                           ; B8 01 00
L_06CF:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

NOTEPAD_TEXT ENDS

        END
