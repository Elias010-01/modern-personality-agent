; AUTO-GENERATED from original NOTEPAD segment 7
; segment_size=1311 bytes, flags=0xf130
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
        sub     sp, 8                           ; 83 EC 08
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     word ptr [0x1c2], ax            ; A3 C2 01
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [0x250], ax            ; A3 50 02
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [0x24c], ax            ; A3 4C 02
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x252], ax            ; A3 52 02
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        sub     ax, 7                           ; 2D 07 00
        mov     word ptr [0x1c0], ax            ; A3 C0 01
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x27a], ax            ; A3 7A 02
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x244], ax            ; A3 44 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x248], ax            ; A3 48 02
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x18]            ; FF 76 18
        mov     ax, OFFSET _entry_10            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_10            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.FREEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x16                            ; CA 16 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x110                       ; 81 EC 10 01
        push    si                              ; 56
        mov     word ptr [bp - 4], 0xffff       ; C7 46 FC FF FF
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_00A9                          ; 74 08
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0102                          ; 74 5C
        jmp     L_0391                          ; E9 E8 02
L_00A9:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x1c2]                ; FF 36 C2 01
        mov     ax, word ptr [0x252]            ; A1 52 02
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A D2 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x1c2]                ; FF 36 C2 01
        mov     ax, 0x415                       ; B8 15 04
        push    ax                              ; 50
        push    word ptr [0x1c0]                ; FF 36 C0 01
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [0x252]            ; A1 52 02
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x250]                ; FF 36 50 02
        push    word ptr [0x24c]                ; FF 36 4C 02
        mov     ax, 0x4010                      ; B8 10 40
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A AD 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00FC                          ; 75 0B
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 52 02 00 00 [FIXUP]
L_00FC:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0393                          ; E9 91 02
L_0102:
        mov     ax, word ptr [0x250]            ; A1 50 02
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_0111                          ; 75 07
        mov     word ptr [bp + 0xa], 0xa        ; C7 46 0A 0A 00
        jmp     L_011E                          ; EB 0D
L_0111:
        mov     ax, word ptr [0x1c2]            ; A1 C2 01
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_011E                          ; 75 05
        mov     word ptr [bp + 0xa], 0xb        ; C7 46 0A 0B 00
L_011E:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0141                          ; 74 1B
        cmp     ax, 2                           ; 3D 02 00
        jne     L_012E                          ; 75 03
        jmp     L_024B                          ; E9 1D 01
L_012E:
        cmp     ax, 0xa                         ; 3D 0A 00
        jne     L_0136                          ; 75 03
        jmp     L_0259                          ; E9 23 01
L_0136:
        cmp     ax, 0xb                         ; 3D 0B 00
        jne     L_013E                          ; 75 03
        jmp     L_0382                          ; E9 44 02
L_013E:
        jmp     L_0391                          ; E9 50 02
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0141 -- offset 0x0141 -- 203 instr
; Dispatcher: tabla de decisiones cmp+jcc (203 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (intra): sub_03E8, sub_04BD, sub_04F9
; calls (inter): KERNEL.ANSINEXT, KERNEL.ANSIPREV, KERNEL.ANSIUPPER, KERNEL.LSTRCPY, KERNEL.LSTRLEN, KERNEL.OPENFILE (+8 mas)
;----------------------------------------------------------------------
L_0141:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A B8 03 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_015A                          ; 75 03
        jmp     L_0391                          ; E9 37 02
L_015A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x1c2]                ; FF 36 C2 01
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x1c0]                ; FF 36 C0 01
        call    far USER.GETDLGITEMTEXT         ; 9A 7E 02 00 00 [FIXUP]
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A C1 01 00 00 [FIXUP]
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_03E8                          ; E8 5D 02
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ax                              ; 50
        call    L_04F9                          ; E8 66 03
        or      ax, ax                          ; 0B C0
        je      L_01D9                          ; 74 42
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x250]                ; FF 36 50 02
        push    word ptr [0x24c]                ; FF 36 4C 02
        mov     ax, 0x4010                      ; B8 10 40
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A 74 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01D9                          ; 74 24
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
L_01BF:
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
L_01C5:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x1c2]                ; FF 36 C2 01
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0391                          ; E9 B8 01
L_01D9:
        push    word ptr [0x27a]                ; FF 36 7A 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_03E8                          ; E8 05 02
        push    word ptr [0x27a]                ; FF 36 7A 02
        call    L_04F9                          ; E8 0F 03
        or      ax, ax                          ; 0B C0
        je      L_01F9                          ; 74 0B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.MESSAGEBEEP            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0391                          ; E9 98 01
L_01F9:
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04BD                          ; E8 B0 02
        or      ax, ax                          ; 0B C0
        je      L_0243                          ; 74 32
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [0x244]            ; A1 44 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2800                      ; B8 00 28
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x248]            ; 8B 1E 48 02
        mov     word ptr [bx], ax               ; 89 07
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0243                          ; 75 0F
        mov     bx, word ptr [0x244]            ; 8B 1E 44 02
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jne     L_0243                          ; 75 05
        mov     word ptr [bp - 4], 0xffff       ; C7 46 FC FF FF
L_0243:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 4]               ; FF 76 FC
        jmp     L_0251                          ; EB 06
L_024B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
L_0251:
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0391                          ; E9 38 01
L_0259:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_026C                          ; 74 0B
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0269                          ; 75 03
        jmp     L_035F                          ; E9 F6 00
L_0269:
        jmp     L_0391                          ; E9 25 01
L_026C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x1c2]                ; FF 36 C2 01
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x1c0]                ; FF 36 C0 01
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x250]                ; FF 36 50 02
        call    far USER.DLGDIRSELECT           ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_029A                          ; 75 03
        jmp     L_01C5                          ; E9 2B FF
L_029A:
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A AF 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x10c], ax       ; 89 86 F4 FE
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x108], ax       ; 89 86 F8 FE
        mov     si, ax                          ; 8B F0
        lea     ax, [bp + si - 0x104]           ; 8D 82 FC FE
        mov     word ptr [bp - 0x10a], ax       ; 89 86 F6 FE
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0x2a             ; 80 3F 2A
        je      L_02CD                          ; 74 05
        cmp     byte ptr [bx], 0x3a             ; 80 3F 3A
        jne     L_02D2                          ; 75 05
L_02CD:
        mov     ax, 1                           ; B8 01 00
        jmp     L_02D4                          ; EB 02
L_02D2:
        sub     ax, ax                          ; 2B C0
L_02D4:
        mov     word ptr [bp - 0x10e], ax       ; 89 86 F2 FE
L_02D8:
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        cmp     word ptr [bp - 0x10a], ax       ; 39 86 F6 FE
        jbe     L_032E                          ; 76 4C
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10a]       ; 8B 86 F6 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10a], ax       ; 89 86 F6 FE
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x110], al       ; 88 86 F0 FE
        cmp     al, 0x2a                        ; 3C 2A
        je      L_0307                          ; 74 04
        cmp     al, 0x3f                        ; 3C 3F
        jne     L_030D                          ; 75 06
L_0307:
        mov     word ptr [bp - 0x10e], 1        ; C7 86 F2 FE 01 00
L_030D:
        mov     bx, word ptr [bp - 0x10a]       ; 8B 9E F6 FE
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x110], al       ; 88 86 F0 FE
        cmp     al, 0x5c                        ; 3C 5C
        je      L_031F                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_02D8                          ; 75 B9
L_031F:
        mov     ax, word ptr [bp - 0x10a]       ; 8B 86 F6 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10a], ax       ; 89 86 F6 FE
L_032E:
        cmp     word ptr [bp - 0x10e], 0        ; 83 BE F2 FE 00
        je      L_0349                          ; 74 14
        mov     ax, word ptr [bp - 0x10c]       ; 8B 86 F4 FE
        mov     cx, word ptr [0x27a]            ; 8B 0E 7A 02
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10a]       ; 8B 86 F6 FE
        jmp     L_035B                          ; EB 12
L_0349:
        mov     ax, word ptr [bp - 0x10c]       ; 8B 86 F4 FE
        mov     cx, word ptr [0x27a]            ; 8B 0E 7A 02
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0x252]            ; A1 52 02
        inc     ax                              ; 40
L_035B:
        push    ds                              ; 1E
        jmp     L_01BF                          ; E9 60 FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_035F -- offset 0x035F -- 27 instr
; Funcion sin clasificar definitiva (27 instr).
; tags: calls_user, far, small
; calls (intra): sub_039F
; calls (inter): USER.DLGDIRLIST
;----------------------------------------------------------------------
L_035F:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x250]                ; FF 36 50 02
        push    word ptr [0x24c]                ; FF 36 4C 02
        mov     ax, 0x4010                      ; B8 10 40
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_037F                          ; 75 03
        jmp     L_01F9                          ; E9 7A FE
L_037F:
        jmp     L_01C5                          ; E9 43 FE
L_0382:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x1c2]                ; FF 36 C2 01
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_039F                          ; E8 0E 00
L_0391:
        sub     ax, ax                          ; 2B C0
L_0393:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_039F -- offset 0x039F -- 34 instr
; Funcion mediana (34 instr, 3 calls).
; tags: calls_user, far, medium
; callers: sub_035F
; calls (inter): USER.ENABLEWINDOW, USER.GETDLGITEM, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_039F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0x300        ; 81 7E 06 00 03
        jne     L_03DD                          ; 75 2D
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A C4 03 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
L_03DD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03E8 -- offset 0x03E8 -- 90 instr
; Dispatcher: tabla de decisiones cmp+jcc (90 instr).
; tags: calls_kernel, dispatcher
; callers: sub_0141
; calls (inter): KERNEL.ANSIPREV, KERNEL.LSTRCPY, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_03E8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A A0 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A 21 04 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     di, si                          ; 8B FE
        cmp     byte ptr [si], 0x2e             ; 80 3C 2E
        jne     L_043C                          ; 75 25
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A 9A 04 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     es, dx                          ; 8E C2
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        jne     L_043C                          ; 75 0D
        cmp     word ptr [bp - 0xa], 2          ; 83 7E F6 02
        jne     L_043C                          ; 75 07
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_04A2                          ; EB 66
L_043C:
        cmp     byte ptr [si], 0x5c             ; 80 3C 5C
        je      L_0446                          ; 74 05
        cmp     byte ptr [si], 0x3a             ; 80 3C 3A
        jne     L_044D                          ; 75 07
L_0446:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        jmp     L_04A2                          ; EB 55
L_044D:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0457                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_045A                          ; EB 03
L_0457:
        mov     ax, 2                           ; B8 02 00
L_045A:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_045D:
        cmp     word ptr [bp + 6], di           ; 39 7E 06
        jae     L_047E                          ; 73 1C
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0474                          ; 74 0C
        cmp     byte ptr [di], 0x2a             ; 80 3D 2A
        je      L_04B5                          ; 74 48
        cmp     byte ptr [di], 0x3f             ; 80 3D 3F
        jne     L_0479                          ; 75 07
        jmp     L_04B5                          ; EB 41
L_0474:
        cmp     byte ptr [di], 0x2e             ; 80 3D 2E
        je      L_04B5                          ; 74 3C
L_0479:
        cmp     byte ptr [di], 0x5c             ; 80 3D 5C
        jne     L_0490                          ; 75 12
L_047E:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_04A2                          ; 74 1E
        cmp     byte ptr [di], 0x2a             ; 80 3D 2A
        je      L_04B5                          ; 74 2C
        cmp     byte ptr [di], 0x3f             ; 80 3D 3F
        jne     L_04A2                          ; 75 14
        jmp     L_04B5                          ; EB 25
L_0490:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A EF 02 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        jmp     L_045D                          ; EB BB
L_04A2:
        lea     ax, [si + 1]                    ; 8D 44 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0x252]            ; 03 06 52 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 7B 01 00 00 [FIXUP]
L_04B5:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04BD -- offset 0x04BD -- 32 instr
; Funcion mediana (32 instr, 1 calls).
; tags: calls_kernel, far, medium
; callers: sub_0141
; calls (inter): KERNEL.OPENFILE
;----------------------------------------------------------------------
L_04BD:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x82                        ; 81 EC 82 00
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 25 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_04EB                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_04ED                          ; EB 02
L_04EB:
        sub     ax, ax                          ; 2B C0
L_04ED:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04F9 -- offset 0x04F9 -- 20 instr
; Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0141
;----------------------------------------------------------------------
L_04F9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        jmp     L_0512                          ; EB 10
L_0502:
        cmp     byte ptr [si], 0x2a             ; 80 3C 2A
        je      L_050C                          ; 74 05
        cmp     byte ptr [si], 0x3f             ; 80 3C 3F
        jne     L_0511                          ; 75 05
L_050C:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0519                          ; EB 08
L_0511:
        inc     si                              ; 46
L_0512:
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_0502                          ; 75 EB
        sub     ax, ax                          ; 2B C0
L_0519:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

NOTEPAD_TEXT ENDS

        END
