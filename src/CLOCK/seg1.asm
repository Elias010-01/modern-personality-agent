; AUTO-GENERATED from original CLOCK segment 1
; segment_size=4480 bytes, flags=0x0110
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CLOCK_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_0022                          ; 75 11
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
L_001D:
        mov     ax, 1                           ; B8 01 00
        jmp     L_002B                          ; EB 09
L_0022:
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        je      L_001D                          ; 74 F4
        sub     ax, ax                          ; 2B C0
L_002B:
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
        sub     sp, 0x2c                        ; 83 EC 2C
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_004E                          ; 75 03
        jmp     L_00D0                          ; E9 82 00
L_004E:
        jbe     L_0053                          ; 76 03
        jmp     L_013E                          ; E9 EB 00
L_0053:
        cmp     ax, 1                           ; 3D 01 00
        je      L_00AC                          ; 74 54
        cmp     ax, 2                           ; 3D 02 00
        je      L_00B7                          ; 74 5A
        cmp     ax, 5                           ; 3D 05 00
        je      L_008C                          ; 74 2A
        jmp     L_015A                          ; E9 F5 00
L_0065:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x3e9                       ; 3D E9 03
        je      L_0070                          ; 74 03
        jmp     L_015A                          ; E9 EA 00
L_0070:
        push    word ptr [0xa0]                 ; FF 36 A0 00
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0xb0]                 ; FF 36 B0 00
        push    word ptr [0xae]                 ; FF 36 AE 00
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00A6                          ; EB 1A
L_008C:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0317                          ; E8 7C 02
        add     sp, 8                           ; 83 C4 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
L_00A6:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_016E                          ; E9 C2 00
L_00AC:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0205                          ; E8 53 01
        add     sp, 2                           ; 83 C4 02
        jmp     L_00A6                          ; EB EF
L_00B7:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x14]                 ; FF 36 14 00
        call    far USER.KILLTIMER              ; 9A 3F 03 00 00 [FIXUP]
        call    L_01DA                          ; E8 14 01
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.POSTQUITMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00A6                          ; EB D6
L_00D0:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_03E2                          ; E8 F9 02
        add     sp, 6                           ; 83 C4 06
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00A6                          ; EB AB
L_00FB:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0390                          ; E8 8C 02
        add     sp, 4                           ; 83 C4 04
        jmp     L_00A6                          ; EB 9D
L_0109:
        call    L_01DA                          ; E8 CE 00
        call    L_0179                          ; E8 6A 00
        jmp     L_00A6                          ; EB 95
L_0111:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xc6]                 ; FF 36 C6 00
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0xc6]                 ; FF 36 C6 00
        call    far USER.FILLRECT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00A6                          ; E9 68 FF
L_013E:
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_0111                          ; 74 CE
        cmp     ax, 0x15                        ; 3D 15 00
        je      L_0109                          ; 74 C1
        cmp     ax, 0x1e                        ; 3D 1E 00
        je      L_00FB                          ; 74 AE
        cmp     ax, 0x112                       ; 3D 12 01
        jne     L_0155                          ; 75 03
        jmp     L_0065                          ; E9 10 FF
L_0155:
        cmp     ax, 0x113                       ; 3D 13 01
        je      L_00FB                          ; 74 A1
L_015A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
L_016E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0179 -- offset 0x0179 -- 41 instr
; Funcion mediana (41 instr, 3 calls).
; tags: calls_gdi, calls_user, medium
; callers: sub_0205
; calls (inter): GDI.CREATEPEN, GDI.CREATESOLIDBRUSH, USER.GETSYSCOLOR
;----------------------------------------------------------------------
L_0179:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 94 01 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A 9B 01 00 00 [FIXUP]
        mov     word ptr [0xc0], ax             ; A3 C0 00
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A AE 01 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xc6], ax             ; A3 C6 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A C8 01 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATEPEN               ; 9A CF 01 00 00 [FIXUP]
        mov     word ptr [0xa2], ax             ; A3 A2 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATEPEN               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xba], ax             ; A3 BA 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01DA -- offset 0x01DA -- 13 instr
; Wrapper que delega en GDI.DELETEOBJECT.
; tags: calls_gdi, wrapper
; callers: sub_0BBA
; calls (inter): GDI.DELETEOBJECT
;----------------------------------------------------------------------
L_01DA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [0xc0]                 ; FF 36 C0 00
        call    far GDI.DELETEOBJECT            ; 9A EB 01 00 00 [FIXUP]
        push    word ptr [0xc6]                 ; FF 36 C6 00
        call    far GDI.DELETEOBJECT            ; 9A F4 01 00 00 [FIXUP]
        push    word ptr [0xa2]                 ; FF 36 A2 00
        call    far GDI.DELETEOBJECT            ; 9A FD 01 00 00 [FIXUP]
        push    word ptr [0xba]                 ; FF 36 BA 00
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0205 -- offset 0x0205 -- 106 instr
; Funcion compleja: 106 instrucciones, 9 llamadas, 2 branches.
; tags: calls_gdi, calls_kernel, calls_user, complex
; calls (intra): sub_0179, sub_0DB8, sub_0FF0, sub_1091
; calls (inter): GDI.GETDEVICECAPS, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, USER.GETDC, USER.RELEASEDC
;----------------------------------------------------------------------
L_0205:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDC                  ; 9A BC 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 2B 02 00 00 [FIXUP]
        mov     word ptr [0xc2], ax             ; A3 C2 00
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 3A 02 00 00 [FIXUP]
        mov     word ptr [0xc4], ax             ; A3 C4 00
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 49 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xc2]             ; A1 C2 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 21 0E
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 7B 0D
        mov     word ptr [0xcc], ax             ; A3 CC 00
        mov     word ptr [0xce], dx             ; 89 16 CE 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 00 0E
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 5A 0D
        mov     word ptr [0xc8], ax             ; A3 C8 00
        mov     word ptr [0xca], dx             ; 89 16 CA 00
        call    L_0179                          ; E8 D9 FE
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        je      L_030C                          ; 74 65
        push    word ptr [0xaa]                 ; FF 36 AA 00
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xd0], ax             ; A3 D0 00
        mov     word ptr [0xd2], dx             ; 89 16 D2 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_02BC:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0xd0]             ; 03 06 D0 00
        mov     dx, word ptr [0xd2]             ; 8B 16 D2 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    word ptr [0xca]                 ; FF 36 CA 00
        push    word ptr [0xc8]                 ; FF 36 C8 00
        push    word ptr [0xce]                 ; FF 36 CE 00
        push    word ptr [0xcc]                 ; FF 36 CC 00
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 A3 0D
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 FD 0C
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     word ptr [bp - 6], 0x3c         ; 83 7E FA 3C
        jl      L_02BC                          ; 7C B9
        push    word ptr [0xaa]                 ; FF 36 AA 00
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
L_030C:
        mov     ax, 0xa4                        ; B8 A4 00
        push    ax                              ; 50
        call    L_0DB8                          ; E8 A5 0A
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0317 -- offset 0x0317 -- 44 instr
; Funcion mediana (44 instr, 4 calls).
; tags: calls_user, medium
; calls (intra): sub_0AE3
; calls (inter): USER.KILLTIMER, USER.SETRECT, USER.SETTIMER
;----------------------------------------------------------------------
L_0317:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xb2                        ; B8 B2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        call    L_0AE3                          ; E8 B2 07
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_035F                          ; 75 28
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x14]                 ; FF 36 14 00
        call    far USER.KILLTIMER              ; 9A 6E 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x14]                 ; FF 36 14 00
        mov     ax, 0xe678                      ; B8 78 E6
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETTIMER               ; 9A 82 03 00 00 [FIXUP]
        mov     word ptr [0x12], 1              ; C7 06 12 00 01 00
        jmp     L_038C                          ; EB 2D
L_035F:
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        je      L_038C                          ; 74 26
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x14]                 ; FF 36 14 00
        call    far USER.KILLTIMER              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x14]                 ; FF 36 14 00
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETTIMER               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x12], 0              ; C7 06 12 00 00 00
L_038C:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0390 -- offset 0x0390 -- 31 instr
; Funcion mediana (31 instr, 4 calls).
; tags: calls_user, medium
; calls (intra): sub_03E2, sub_0DB8
; calls (inter): USER.GETDC, USER.RELEASEDC
;----------------------------------------------------------------------
L_0390:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_0DB8                          ; E8 1B 0A
        add     sp, 2                           ; 83 C4 02
        mov     ax, word ptr [0xa8]             ; A1 A8 00
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jne     L_03B8                          ; 75 10
        mov     ax, word ptr [0xa6]             ; A1 A6 00
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_03B8                          ; 75 08
        mov     ax, word ptr [0xa4]             ; A1 A4 00
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_03DE                          ; 74 26
L_03B8:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_03E2                          ; E8 12 00
        add     sp, 6                           ; 83 C4 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.RELEASEDC              ; 9A 57 02 00 00 [FIXUP]
L_03DE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03E2 -- offset 0x03E2 -- 211 instr
; Dispatcher: tabla de decisiones cmp+jcc (211 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; callers: sub_0390
; calls (intra): sub_0615, sub_079E, sub_084D, sub_0DB8
; calls (inter): GDI.SETBKMODE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, USER.FILLRECT
;----------------------------------------------------------------------
L_03E2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    word ptr [0xaa]                 ; FF 36 AA 00
        call    far KERNEL.GLOBALLOCK           ; 9A AC 02 00 00 [FIXUP]
        mov     word ptr [0xd0], ax             ; A3 D0 00
        mov     word ptr [0xd2], dx             ; 89 16 D2 00
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_047B                          ; 75 71
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xb2                        ; B8 B2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xc6]                 ; FF 36 C6 00
        call    far USER.FILLRECT               ; 9A 37 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0615                          ; E8 F4 01
        add     sp, 2                           ; 83 C4 02
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0xa2]                 ; FF 36 A2 00
        mov     ax, 5                           ; B8 05 00
        imul    word ptr [0xa4]                 ; F7 2E A4 00
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xa6]             ; A1 A6 00
        cdq                                     ; 99
        mov     bx, 0xc                         ; BB 0C 00
        idiv    bx                              ; F7 FB
        add     cx, ax                          ; 03 C8
        push    cx                              ; 51
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_084D                          ; E8 06 04
        add     sp, 8                           ; 83 C4 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0xa2]                 ; FF 36 A2 00
        push    word ptr [0xa6]                 ; FF 36 A6 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_084D                          ; E8 F2 03
        add     sp, 8                           ; 83 C4 08
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        je      L_0468                          ; 74 03
        jmp     L_0608                          ; E9 A0 01
L_0468:
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        push    word ptr [0xba]                 ; FF 36 BA 00
        push    word ptr [0xa8]                 ; FF 36 A8 00
        jmp     L_05FF                          ; E9 84 01
L_047B:
        cmp     word ptr [bp + 8], 1            ; 83 7E 08 01
        je      L_0484                          ; 74 03
        jmp     L_0608                          ; E9 84 01
L_0484:
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_0DB8                          ; E8 2D 09
        add     sp, 2                           ; 83 C4 02
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        jne     L_04B6                          ; 75 21
        mov     ax, word ptr [0xa8]             ; A1 A8 00
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        je      L_04B6                          ; 74 19
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        push    word ptr [0xba]                 ; FF 36 BA 00
        push    word ptr [0xa8]                 ; FF 36 A8 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_079E                          ; E8 EB 02
        add     sp, 0xa                         ; 83 C4 0A
L_04B6:
        mov     ax, word ptr [0xa6]             ; A1 A6 00
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_04C9                          ; 75 0B
        mov     ax, word ptr [0xa4]             ; A1 A4 00
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_04C9                          ; 75 03
        jmp     L_05DD                          ; E9 14 01
L_04C9:
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        jne     L_04D3                          ; 75 03
        jmp     L_0562                          ; E9 8F 00
L_04D3:
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        push    word ptr [0xba]                 ; FF 36 BA 00
        push    word ptr [0xa6]                 ; FF 36 A6 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_079E                          ; E8 B5 02
        add     sp, 0xa                         ; 83 C4 0A
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        mov     ax, 0x41                        ; B8 41 00
        push    ax                              ; 50
        push    word ptr [0xba]                 ; FF 36 BA 00
        mov     ax, 5                           ; B8 05 00
        imul    word ptr [0xa4]                 ; F7 2E A4 00
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xa6]             ; A1 A6 00
        cdq                                     ; 99
        mov     bx, 0xc                         ; BB 0C 00
        idiv    bx                              ; F7 FB
        add     cx, ax                          ; 03 C8
        push    cx                              ; 51
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_079E                          ; E8 8B 02
        add     sp, 0xa                         ; 83 C4 0A
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        push    word ptr [0xa2]                 ; FF 36 A2 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0xa6], ax             ; A3 A6 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_079E                          ; E8 6F 02
        add     sp, 0xa                         ; 83 C4 0A
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        mov     ax, 0x41                        ; B8 41 00
        push    ax                              ; 50
        push    word ptr [0xa2]                 ; FF 36 A2 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0xa4], ax             ; A3 A4 00
        mov     cx, 5                           ; B9 05 00
        imul    cx                              ; F7 E9
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xa6]             ; A1 A6 00
        cdq                                     ; 99
        mov     bx, 0xc                         ; BB 0C 00
        idiv    bx                              ; F7 FB
        add     cx, ax                          ; 03 C8
        push    cx                              ; 51
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_079E                          ; E8 41 02
        add     sp, 0xa                         ; 83 C4 0A
        jmp     L_05DD                          ; EB 7B
L_0562:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0xba]                 ; FF 36 BA 00
        push    word ptr [0xa6]                 ; FF 36 A6 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_084D                          ; E8 DA 02
        add     sp, 8                           ; 83 C4 08
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0xba]                 ; FF 36 BA 00
        mov     ax, 5                           ; B8 05 00
        imul    word ptr [0xa4]                 ; F7 2E A4 00
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xa6]             ; A1 A6 00
        cdq                                     ; 99
        mov     bx, 0xc                         ; BB 0C 00
        idiv    bx                              ; F7 FB
        add     cx, ax                          ; 03 C8
        push    cx                              ; 51
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_084D                          ; E8 B4 02
        add     sp, 8                           ; 83 C4 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0xa2]                 ; FF 36 A2 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0xa6], ax             ; A3 A6 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_084D                          ; E8 9D 02
        add     sp, 8                           ; 83 C4 08
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0xa2]                 ; FF 36 A2 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0xa4], ax             ; A3 A4 00
        mov     cx, 5                           ; B9 05 00
        imul    cx                              ; F7 E9
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xa6]             ; A1 A6 00
        cdq                                     ; 99
        mov     bx, 0xc                         ; BB 0C 00
        idiv    bx                              ; F7 FB
        add     cx, ax                          ; 03 C8
        push    cx                              ; 51
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_084D                          ; E8 73 02
        add     sp, 8                           ; 83 C4 08
L_05DD:
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        jne     L_0608                          ; 75 24
        mov     ax, word ptr [0xa8]             ; A1 A8 00
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        je      L_0608                          ; 74 1C
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        push    word ptr [0xba]                 ; FF 36 BA 00
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [0xa8], ax             ; A3 A8 00
        push    ax                              ; 50
L_05FF:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_079E                          ; E8 99 01
        add     sp, 0xa                         ; 83 C4 0A
L_0608:
        push    word ptr [0xaa]                 ; FF 36 AA 00
        call    far KERNEL.GLOBALUNLOCK         ; 9A 08 03 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0615 -- offset 0x0615 -- 167 instr
; Dispatcher: tabla de decisiones cmp+jcc (167 instr).
; tags: calls_user, dispatcher
; callers: sub_03E2
; calls (intra): sub_0FF0, sub_1091
; calls (inter): USER.FILLRECT, USER.INFLATERECT, USER.OFFSETRECT
;----------------------------------------------------------------------
L_0615:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x16                        ; 83 EC 16
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x19                        ; B8 19 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xb6]             ; A1 B6 00
        sub     ax, word ptr [0xb2]             ; 2B 06 B2 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 5D 0A
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 B7 09
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0xca]                 ; FF 36 CA 00
        push    word ptr [0xc8]                 ; FF 36 C8 00
        push    word ptr [0xce]                 ; FF 36 CE 00
        push    word ptr [0xcc]                 ; FF 36 CC 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 3F 0A
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 99 09
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, 2                           ; 3D 02 00
        jge     L_0664                          ; 7D 05
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_0664:
        cmp     word ptr [bp - 6], 2            ; 83 7E FA 02
        jge     L_066F                          ; 7D 05
        mov     word ptr [bp - 6], 2            ; C7 46 FA 02 00
L_066F:
        mov     ax, 0xb2                        ; B8 B2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sar     ax, 1                           ; D1 F8
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sar     ax, 1                           ; D1 F8
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    far USER.INFLATERECT            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xb6]             ; A1 B6 00
        sub     ax, word ptr [0xb2]             ; 2B 06 B2 00
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0xac], ax             ; A3 AC 00
        mov     ax, word ptr [0xb8]             ; A1 B8 00
        sub     ax, word ptr [0xb4]             ; 2B 06 B4 00
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xb4]             ; 03 06 B4 00
        mov     word ptr [0xbe], ax             ; A3 BE 00
        mov     ax, word ptr [0xb2]             ; A1 B2 00
        add     ax, word ptr [0xac]             ; 03 06 AC 00
        mov     word ptr [0xbc], ax             ; A3 BC 00
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_06B4:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0xd0]             ; 03 06 D0 00
        mov     dx, word ptr [0xd2]             ; 8B 16 D2 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     ax, 0x1f40                      ; B8 40 1F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xac]             ; A1 AC 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 AF 09
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 09 09
        add     ax, word ptr [0xbe]             ; 03 06 BE 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, 0x1f40                      ; B8 40 1F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xac]             ; A1 AC 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 8B 09
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 E5 08
        add     ax, word ptr [0xbc]             ; 03 06 BC 00
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        mov     cx, 5                           ; B9 05 00
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        je      L_073B                          ; 74 1C
        cmp     word ptr [bp - 6], 2            ; 83 7E FA 02
        jle     L_0778                          ; 7E 53
        cmp     word ptr [bp - 8], 2            ; 83 7E F8 02
        jl      L_0778                          ; 7C 4D
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        inc     ax                              ; 40
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        inc     ax                              ; 40
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_0767                          ; EB 2C
L_073B:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sar     ax, 1                           ; D1 F8
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sar     ax, 1                           ; D1 F8
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    far USER.OFFSETRECT             ; 9A FF FF 00 00 [FIXUP]
L_0767:
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0xc0]                 ; FF 36 C0 00
        call    far USER.FILLRECT               ; 9A 17 04 00 00 [FIXUP]
L_0778:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        cmp     word ptr [bp - 0xa], 0x3c       ; 83 7E F6 3C
        jge     L_0784                          ; 7D 03
        jmp     L_06B4                          ; E9 30 FF
L_0784:
        mov     ax, 0xb2                        ; B8 B2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        call    far USER.INFLATERECT            ; 9A 85 06 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_079E -- offset 0x079E -- 80 instr
; Funcion mediana (80 instr, 6 calls).
; tags: calls_gdi, medium
; callers: sub_03E2
; calls (intra): sub_0FF0, sub_1091
; calls (inter): GDI.LINETO, GDI.MOVETO, GDI.SELECTOBJECT, GDI.SETROP2
;----------------------------------------------------------------------
L_079E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xbc]                 ; FF 36 BC 00
        push    word ptr [0xbe]                 ; FF 36 BE 00
        call    far GDI.MOVETO                  ; 9A A4 09 00 00 [FIXUP]
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xac]             ; A1 AC 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 C8 08
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 22 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0xd0]             ; 03 06 D0 00
        mov     dx, word ptr [0xd2]             ; 8B 16 D2 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far GDI.SETROP2                 ; 9A 5B 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 8]               ; FF 76 08
        call    far GDI.SELECTOBJECT            ; 9A 66 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x1f40                      ; B8 40 1F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 7A 08
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 D4 07
        add     ax, word ptr [0xbc]             ; 03 06 BC 00
        push    ax                              ; 50
        mov     ax, 0x1f40                      ; B8 40 1F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 57 08
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 B1 07
        add     ax, word ptr [0xbe]             ; 03 06 BE 00
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A BC 09 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_084D -- offset 0x084D -- 298 instr
; Funcion compleja: 298 instrucciones, 6 llamadas, 3 branches.
; tags: calls_gdi, complex
; callers: sub_03E2
; calls (intra): sub_0FF0, sub_1091
; calls (inter): GDI.LINETO, GDI.MOVETO, GDI.SELECTOBJECT, GDI.SETROP2
;----------------------------------------------------------------------
L_084D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1e                        ; 83 EC 1E
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 8]               ; FF 76 08
        call    far GDI.SELECTOBJECT            ; 9A 26 01 00 00 [FIXUP]
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0875                          ; 74 05
        mov     ax, 7                           ; B8 07 00
        jmp     L_0878                          ; EB 03
L_0875:
        mov     ax, 5                           ; B8 05 00
L_0878:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0xf                         ; 05 0F 00
        cdq                                     ; 99
        mov     cx, 0x3c                        ; B9 3C 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xac]             ; A1 AC 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 F2 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 4C 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0xd0]             ; 03 06 D0 00
        mov     dx, word ptr [0xd2]             ; 8B 16 D2 00
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        mov     ax, 0x1f40                      ; B8 40 1F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 BC 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 16 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, 0x1f40                      ; B8 40 1F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 9C 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 F6 06
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0908                          ; 74 05
        mov     ax, 0x41                        ; B8 41 00
        jmp     L_090B                          ; EB 03
L_0908:
        mov     ax, 0x50                        ; B8 50 00
L_090B:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0xd0]             ; 03 06 D0 00
        mov     dx, word ptr [0xd2]             ; 8B 16 D2 00
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        mov     ax, 0x1f40                      ; B8 40 1F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 0x1a]             ; C4 5E E6
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xac]             ; A1 AC 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 49 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 A3 06
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 3F 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 99 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0x1f40                      ; B8 40 1F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 0x1a]             ; C4 5E E6
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xac]             ; A1 AC 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 13 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 6D 06
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 09 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 63 06
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [0xbc]             ; 03 06 BC 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0xbe]             ; 03 06 BE 00
        push    ax                              ; 50
        call    far GDI.MOVETO                  ; 9A D2 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xbc]             ; 03 06 BC 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xbe]             ; 03 06 BE 00
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A EA 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xbc]             ; A1 BC 00
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        push    ax                              ; 50
        mov     ax, word ptr [0xbe]             ; A1 BE 00
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        push    ax                              ; 50
        call    far GDI.MOVETO                  ; 9A 95 0A 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xbc]             ; 03 06 BC 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xbe]             ; 03 06 BE 00
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A AD 0A 00 00 [FIXUP]
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_09F9                          ; 74 05
        mov     ax, 0xf                         ; B8 0F 00
        jmp     L_09FC                          ; EB 03
L_09F9:
        mov     ax, 0x14                        ; B8 14 00
L_09FC:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x1e                        ; 05 1E 00
        cdq                                     ; 99
        mov     cx, 0x3c                        ; B9 3C 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xac]             ; A1 AC 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 6E 06
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 C8 05
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0xd0]             ; 03 06 D0 00
        mov     dx, word ptr [0xd2]             ; 8B 16 D2 00
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        mov     ax, 0x1f40                      ; B8 40 1F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 38 06
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 92 05
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0x1f40                      ; B8 40 1F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 18 06
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 72 05
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [0xbc]             ; 03 06 BC 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0xbe]             ; 03 06 BE 00
        push    ax                              ; 50
        call    far GDI.MOVETO                  ; 9A C3 0A 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xbc]             ; 03 06 BC 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xbe]             ; 03 06 BE 00
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A DB 0A 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xbc]             ; A1 BC 00
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        push    ax                              ; 50
        mov     ax, word ptr [0xbe]             ; A1 BE 00
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        push    ax                              ; 50
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xbc]             ; 03 06 BC 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xbe]             ; 03 06 BE 00
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0AE3 -- offset 0x0AE3 -- 62 instr
; Funcion mediana (62 instr, 2 calls).
; tags: medium
; callers: sub_0317
; calls (intra): sub_0FF0, sub_1091
;----------------------------------------------------------------------
L_0AE3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, word ptr [0xb6]             ; A1 B6 00
        sub     ax, word ptr [0xb2]             ; 2B 06 B2 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0xb8]             ; A1 B8 00
        sub     ax, word ptr [0xb4]             ; 2B 06 B4 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0xce]                 ; FF 36 CE 00
        push    word ptr [0xcc]                 ; FF 36 CC 00
        push    word ptr [0xca]                 ; FF 36 CA 00
        push    word ptr [0xc8]                 ; FF 36 C8 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 7E 05
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 D8 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cdq                                     ; 99
        cmp     dx, word ptr [bp - 0xa]         ; 3B 56 F6
        jl      L_0B4C                          ; 7C 25
        jg      L_0B2E                          ; 7F 05
        cmp     ax, word ptr [bp - 0xc]         ; 3B 46 F4
        jbe     L_0B4C                          ; 76 1E
L_0B2E:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        sar     ax, 1                           ; D1 F8
        add     word ptr [0xb2], ax             ; 01 06 B2 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xb2]             ; 03 06 B2 00
        mov     word ptr [0xb6], ax             ; A3 B6 00
        jmp     L_0B83                          ; EB 37
L_0B4C:
        push    word ptr [0xca]                 ; FF 36 CA 00
        push    word ptr [0xc8]                 ; FF 36 C8 00
        push    word ptr [0xce]                 ; FF 36 CE 00
        push    word ptr [0xcc]                 ; FF 36 CC 00
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1091                          ; E8 2C 05
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FF0                          ; E8 86 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        sar     ax, 1                           ; D1 F8
        add     word ptr [0xb4], ax             ; 01 06 B4 00
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xb4]             ; 03 06 B4 00
        mov     word ptr [0xb8], ax             ; A3 B8 00
L_0B83:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B87 -- offset 0x0B87 -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: calls_user, small
; callers: sub_0DB8
; calls (intra): sub_0CFB
; calls (inter): USER.LOADSTRING
;----------------------------------------------------------------------
L_0B87:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x90                        ; B8 90 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 2D 0C 00 00 [FIXUP]
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0BBA                          ; 75 12
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_0CFB                          ; E8 4D 01
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_0BD0                          ; 75 1B
L_0BB5:
        sub     ax, ax                          ; 2B C0
        jmp     L_0CF5                          ; E9 3B 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BBA -- offset 0x0BBA -- 140 instr
; Funcion compleja: 140 instrucciones, 15 llamadas, 2 branches.
; tags: calls_kernel, calls_user, complex
; calls (intra): sub_01DA, sub_0FE0
; calls (inter): KERNEL.GETINSTANCEDATA, KERNEL.LOCALALLOC, KERNEL.MAKEPROCINSTANCE, USER.CHANGEMENU, USER.CREATEWINDOW, USER.DISPATCHMESSAGE (+7 mas)
;----------------------------------------------------------------------
L_0BBA:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xaa                        ; B8 AA 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x10], 0              ; C7 06 10 00 00 00
L_0BD0:
        mov     ax, 0x90                        ; B8 90 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        push    word ptr [0x14]                 ; FF 36 14 00
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETTIMER               ; 9A 53 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0C4D                          ; 75 41
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 0A 0D 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 7B 0C 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x90                        ; B8 90 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1010                      ; B8 10 10
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        call    L_01DA                          ; E8 90 F5
        jmp     L_0BB5                          ; E9 68 FF
L_0C4D:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [0xa0], ax             ; A3 A0 00
        mov     ax, OFFSET _entry_1             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_1             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xae], ax             ; A3 AE 00
        mov     word ptr [0xb0], dx             ; 89 16 B0 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x90                        ; B8 90 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 88 0D 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x3e7                       ; B8 E7 03
        push    ax                              ; 50
        mov     ax, 0x900                       ; B8 00 09
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A B4 0C 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x90                        ; B8 90 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3e9                       ; B8 E9 03
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0CD9                          ; EB 14
L_0CC5:
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
L_0CD9:
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.GETMESSAGE             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0CC5                          ; 75 D9
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    L_0FE0                          ; E8 EE 02
        add     sp, 2                           ; 83 C4 02
L_0CF5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0CFB -- offset 0x0CFB -- 72 instr
; Funcion mediana (72 instr, 7 calls).
; tags: calls_kernel, calls_user, medium
; callers: sub_0B87
; calls (inter): KERNEL.FINDRESOURCE, KERNEL.LOADRESOURCE, KERNEL.LOCALALLOC, KERNEL.LOCALFREE, USER.LOADCURSOR, USER.LOADSTRING (+1 mas)
;----------------------------------------------------------------------
L_0CFB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     ax, 0x90                        ; B8 90 00
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0x10], 0         ; C7 47 10 00 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], 3                ; C7 07 03 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], OFFSET _entry_2 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_2 ; C7 47 04 FF FF [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xc], 0          ; C7 47 0C 00 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0D6F                          ; 75 04
L_0D6B:
        sub     ax, ax                          ; 2B C0
        jmp     L_0DB4                          ; EB 45
L_0D6F:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x90                        ; B8 90 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0D6B                          ; 74 C6
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xaa], ax             ; A3 AA 00
        mov     ax, 1                           ; B8 01 00
L_0DB4:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0DB8 -- offset 0x0DB8 -- 57 instr
; Llama a servicios DOS via INT 21h (57 instr).
; tags: calls_kernel, calls_user, dos_caller, int_21
; callers: sub_0205, sub_0390, sub_03E2
; calls (intra): sub_0B87, sub_0F4E, sub_0FE0
; calls (inter): KERNEL.FATALEXIT, KERNEL.INITTASK, KERNEL.WAITEVENT, USER.INITAPP
;----------------------------------------------------------------------
L_0DB8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x2c00                      ; B8 00 2C
        int     0x21                            ; CD 21
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     ch, 0xc                         ; 80 FD 0C
        jl      L_0DCB                          ; 7C 03
        sub     ch, 0xc                         ; 80 ED 0C
L_0DCB:
        xor     ax, ax                          ; 33 C0
        mov     al, ch                          ; 8A C5
        mov     word ptr [bx], ax               ; 89 07
        mov     al, cl                          ; 8A C1
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     al, dh                          ; 8A C6
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        add     byte ptr [bp + di + 0x2b], bl   ; 00 5B 2B
        les     si, ptr [bp + di + 0x18]        ; C4 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_0DFD                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_0DF9                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
L_0DF9:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
L_0DFD:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.INITTASK             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0E40                          ; 74 2B
        mov     word ptr [0x2e], 0              ; C7 06 2E 00 00 00
        mov     word ptr [0x20], cx             ; 89 0E 20 00
        push    di                              ; 57
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    dx                              ; 52
        call    L_0F4E                          ; E8 27 01
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far KERNEL.WAITEVENT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far USER.INITAPP                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0E40                          ; 74 07
        call    L_0B87                          ; E8 4B FD
        push    ax                              ; 50
        call    L_0FE0                          ; E8 A0 01
L_0E40:
        mov     ax, 0x4cff                      ; B8 FF 4C
        int     0x21                            ; CD 21
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E45 -- offset 0x0E45 -- 130 instr
; Funcion compleja: 130 instrucciones, 9 llamadas, 1 branches.
; tags: calls_kernel, complex
; callers: sub_1100
; calls (intra): sub_10F5
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALCOMPACT, KERNEL.GLOBALFREE, KERNEL.GLOBALSIZE, KERNEL.LOCALALLOC, KERNEL.LOCALFREE (+2 mas)
;----------------------------------------------------------------------
L_0E45:
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xffff                      ; B8 FF FF
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xffff                      ; B8 FF FF
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALALLOC           ; 9A 77 0E 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        imul    word ptr [bp + 6]               ; F7 6E 06
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A AE 0E 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALFREE            ; 9A BD 0E 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALALLOC           ; 9A 15 0C 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALFREE            ; 9A 73 0D 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALSIZE            ; 9A 26 0F 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALSIZE           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALSIZE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0F33                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0F35                          ; EB 02
L_0F33:
        sub     ax, ax                          ; 2B C0
L_0F35:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL.GLOBALCOMPACT        ; 9A FF FF 00 00 [FIXUP]
        mov     cl, 4                           ; B1 04
        call    L_10F5                          ; E8 AB 01
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F4E -- offset 0x0F4E -- 59 instr
; Llama a servicios DOS via INT 21h (59 instr).
; tags: complex_iterator, int_21, loop
; callers: sub_0DB8
;----------------------------------------------------------------------
L_0F4E:
        mov     bx, 0x7e                        ; BB 7E 00
L_0F51:
        cmp     bx, 0x84                        ; 81 FB 84 00
        jae     L_0F5F                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_0F51                          ; EB F2
L_0F5F:
        ret                                     ; C3
        mov     bx, 4                           ; BB 04 00
L_0F63:
        mov     ax, 0x4400                      ; B8 00 44
        int     0x21                            ; CD 21
        jb      L_0F74                          ; 72 0A
        test    dl, 0x80                        ; F6 C2 80
        je      L_0F74                          ; 74 05
        or      byte ptr [bx + 0x52], 0x40      ; 80 8F 52 00 40
L_0F74:
        dec     bx                              ; 4B
        jns     L_0F63                          ; 79 EC
        ret                                     ; C3
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     word ptr [0x34], ax             ; A3 34 00
        ret                                     ; C3
        mov     es, word ptr [0x2e]             ; 8E 06 2E 00
        mov     si, word ptr es:[0x2c]          ; 26 8B 36 2C 00
        mov     ax, 0x3500                      ; B8 00 35
        int     0x21                            ; CD 21
        mov     word ptr [0x22], bx             ; 89 1E 22 00
        mov     word ptr [0x24], es             ; 8C 06 24 00
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ax, 0x2500                      ; B8 00 25
        mov     dx, 0xe00                       ; BA 00 0E
        int     0x21                            ; CD 21
        mov     cx, word ptr ss:[0x74]          ; 36 8B 0E 74 00
        jcxz    L_0FC9                          ; E3 22
        lds     ax, ptr ss:[0x76]               ; 36 C5 06 76 00
        mov     dx, ds                          ; 8C DA
        xor     bx, bx                          ; 33 DB
        lcall   ss:[0x72]                       ; 36 FF 1E 72 00
        jae     L_0FBA                          ; 73 03
        jmp     L_0E03                          ; E9 49 FE
L_0FBA:
        lds     ax, ptr ss:[0x7a]               ; 36 C5 06 7A 00
        mov     dx, ds                          ; 8C DA
        mov     bx, 3                           ; BB 03 00
        lcall   ss:[0x72]                       ; 36 FF 1E 72 00
L_0FC9:
        push    ss                              ; 16
        pop     ds                              ; 1F
        ret                                     ; C3
        mov     cx, 0x14                        ; B9 14 00
        xor     bx, bx                          ; 33 DB
L_0FD1:
        test    byte ptr [bx + 0x52], 1         ; F6 87 52 00 01
        je      L_0FDC                          ; 74 04
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
L_0FDC:
        inc     bx                              ; 43
        loop    L_0FD1                          ; E2 F2
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FE0 -- offset 0x0FE0 -- 8 instr
; Funcion sin clasificar definitiva (8 instr).
; tags: small
; callers: sub_0BBA, sub_0DB8
; calls (intra): sub_1100, sub_1136
;----------------------------------------------------------------------
L_0FE0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_1136                          ; E8 50 01
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1100                          ; E8 14 01
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FF0 -- offset 0x0FF0 -- 74 instr
; Funcion mediana (74 instr, 1 calls).
; tags: medium
; callers: sub_0205, sub_0615, sub_079E, sub_084D, sub_0AE3
; calls (intra): sub_1148
;----------------------------------------------------------------------
L_0FF0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    bx                              ; 53
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_1011                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
L_1011:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_102A                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
L_102A:
        or      ax, ax                          ; 0B C0
        jne     L_1044                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_107F                          ; EB 3C
        nop                                     ; 90
L_1044:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
L_104F:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_104F                          ; 75 F4
        div     cx                              ; F7 F1
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1148                          ; E8 DC 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_1078                          ; 77 07
        jb      L_107B                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_107B                          ; 76 03
L_1078:
        sub     si, 1                           ; 83 EE 01
L_107B:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
L_107F:
        or      di, di                          ; 0B FF
        je      L_108A                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
L_108A:
        pop     bx                              ; 5B
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1091 -- offset 0x1091 -- 46 instr
; Funcion mediana (46 instr, 0 calls).
; tags: medium
; callers: sub_0205, sub_0615, sub_079E, sub_084D, sub_0AE3
;----------------------------------------------------------------------
L_1091:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_10B1                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
L_10B1:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_10CA                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
L_10CA:
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        mul     cx                              ; F7 E1
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     si, ax                          ; 8B F0
        mul     cx                              ; F7 E1
        add     di, dx                          ; 03 FA
        xchg    si, ax                          ; 96
        mul     word ptr [bp + 6]               ; F7 66 06
        add     di, ax                          ; 03 F8
        mov     dx, di                          ; 8B D7
        mov     ax, si                          ; 8B C6
        or      bx, bx                          ; 0B DB
        je      L_10EF                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
L_10EF:
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_10F5 -- offset 0x10F5 -- 6 instr
; Iterador con bucle (6 instr).
; tags: iterator, loop
; callers: sub_0E45
;----------------------------------------------------------------------
L_10F5:
        xor     ch, ch                          ; 32 ED
        jcxz    L_10FF                          ; E3 06
L_10F9:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_10F9                          ; E2 FA
L_10FF:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1100 -- offset 0x1100 -- 21 instr
; Llama a servicios DOS via INT 21h (21 instr).
; tags: dos_caller, int_21
; callers: sub_0FE0
; calls (intra): sub_0E45, sub_116E
;----------------------------------------------------------------------
L_1100:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_116E                          ; E8 68 00
        call    L_0E45                          ; E8 3C FD
        or      ah, ah                          ; 0A E4
        je      L_1117                          ; 74 0A
        cmp     byte ptr [bp + 4], 0            ; 80 7E 04 00
        jne     L_1117                          ; 75 04
        mov     byte ptr [bp + 4], 0xfe         ; C6 46 04 FE
L_1117:
        push    ds                              ; 1E
        lds     dx, ptr [0x22]                  ; C5 16 22 00
        mov     ax, 0x2500                      ; B8 00 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     cx, word ptr [0x74]             ; 8B 0E 74 00
        jcxz    L_112F                          ; E3 07
        mov     bx, 2                           ; BB 02 00
        lcall   [0x72]                          ; FF 1E 72 00
L_112F:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     ah, 0x4c                        ; B4 4C
        int     0x21                            ; CD 21
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1136 -- offset 0x1136 -- 10 instr
; Funcion sin clasificar definitiva (10 instr).
; tags: wrapper
; callers: sub_0FE0
;----------------------------------------------------------------------
L_1136:
        mov     bx, 0x84                        ; BB 84 00
L_1139:
        cmp     bx, 0x84                        ; 81 FB 84 00
        jae     L_1147                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_1139                          ; EB F2
L_1147:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1148 -- offset 0x1148 -- 19 instr
; Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0FF0
;----------------------------------------------------------------------
L_1148:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        mul     cx                              ; F7 E1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     si, ax                          ; 8B F0
        mul     cx                              ; F7 E1
        add     bx, dx                          ; 03 DA
        xchg    si, ax                          ; 96
        mul     word ptr [bp + 6]               ; F7 66 06
        add     bx, ax                          ; 03 D8
        mov     dx, bx                          ; 8B D3
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_116E -- offset 0x116E -- 10 instr
; Funcion sin clasificar definitiva (10 instr).
; tags: wrapper
; callers: sub_1100
;----------------------------------------------------------------------
L_116E:
        mov     bx, 0x84                        ; BB 84 00
L_1171:
        cmp     bx, 0x86                        ; 81 FB 86 00
        jae     L_117F                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_1171                          ; EB F2
L_117F:
        ret                                     ; C3

CLOCK_TEXT ENDS

        END
