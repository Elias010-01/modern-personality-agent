; AUTO-GENERATED from original CONTROL segment 4
; segment_size=9131 bytes, flags=0xf130
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
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0019                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0028                          ; 74 11
        jmp     L_0037                          ; EB 1E
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0019 -- offset 0x0019 -- 33 instr
; Funcion mediana (33 instr, 2 calls).
; tags: far, medium
; calls (intra): sub_0088, sub_0210
;----------------------------------------------------------------------
L_0019:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    L_0088                          ; E8 65 00
L_0023:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0039                          ; EB 11
L_0028:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    L_0210                          ; E8 DB 01
        jmp     L_0023                          ; EB EC
L_0037:
        sub     ax, ax                          ; 2B C0
L_0039:
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
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_005D                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_006C                          ; 74 11
        jmp     L_007B                          ; EB 1E
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_005D -- offset 0x005D -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: far, small
; calls (intra): sub_0088, sub_0210
;----------------------------------------------------------------------
L_005D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_0088                          ; E8 21 00
L_0067:
        mov     ax, 1                           ; B8 01 00
        jmp     L_007D                          ; EB 11
L_006C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_0210                          ; E8 97 01
        jmp     L_0067                          ; EB EC
L_007B:
        sub     ax, ax                          ; 2B C0
L_007D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0088 -- offset 0x0088 -- 151 instr
; Dispatcher: tabla de decisiones cmp+jcc (151 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_0019, sub_005D
; calls (inter): KERNEL.FINDRESOURCE, KERNEL.GETCODEHANDLE, KERNEL.LOADRESOURCE, KERNEL.LOCKRESOURCE, KERNEL.LSTRCAT, USER.ENDDIALOG (+2 mas)
;----------------------------------------------------------------------
L_0088:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x56                        ; 83 EC 56
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        push    word ptr [0x8de]                ; FF 36 DE 08
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A E0 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00B1                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_00B3                          ; EB 02
L_00B1:
        sub     ax, ax                          ; 2B C0
L_00B3:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xe6                        ; B8 E6 00
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF 00 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_00E8                          ; 75 1B
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        inc     ax                              ; 40
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 5F 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00ED                          ; 75 05
L_00E8:
        mov     ax, 1                           ; B8 01 00
        jmp     L_00EF                          ; EB 02
L_00ED:
        sub     ax, ax                          ; 2B C0
L_00EF:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xfa                        ; B8 FA 00
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 19 01 00 00 [FIXUP]
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ax                              ; 50
        call    far _entry_49                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xf0                        ; B8 F0 00
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 39 01 00 00 [FIXUP]
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x36e                       ; B8 6E 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 54 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 4                           ; B8 04 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A 9C 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    word ptr [0x8de]                ; FF 36 DE 08
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A A9 01 00 00 [FIXUP]
        mov     word ptr [0xd32], ax            ; A3 32 0D
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0172                          ; 75 0A
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A B8 01 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        jne     L_0177                          ; 75 05
L_0172:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0179                          ; EB 02
L_0177:
        sub     ax, ax                          ; 2B C0
L_0179:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 4                           ; B9 04 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        inc     ax                              ; 40
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    word ptr [0x8de]                ; FF 36 DE 08
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xdae], ax            ; A3 AE 0D
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_01C0                          ; 75 0A
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        jne     L_01C5                          ; 75 05
L_01C0:
        mov     ax, 1                           ; B8 01 00
        jmp     L_01C7                          ; EB 02
L_01C5:
        sub     ax, ax                          ; 2B C0
L_01C7:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, OFFSET _entry_22            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_22            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETCODEHANDLE        ; 9A E3 01 00 00 [FIXUP]
        mov     word ptr [0xa5a], ax            ; A3 5A 0A
        mov     ax, OFFSET _entry_48            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_48            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETCODEHANDLE        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x8e0], ax            ; A3 E0 08
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_01FE                          ; 74 0E
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 9A 02 00 00 [FIXUP]
        jmp     L_020A                          ; EB 0C
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01FE -- offset 0x01FE -- 7 instr
; Wrapper que delega en USER.SHOWWINDOW.
; tags: calls_user, wrapper
; calls (inter): USER.SHOWWINDOW
;----------------------------------------------------------------------
L_01FE:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
L_020A:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0210 -- offset 0x0210 -- 7 instr
; Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0019, sub_005D
;----------------------------------------------------------------------
L_0210:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x54                        ; 83 EC 54
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        cmp     word ptr [bp + 6], 1            ; 83 7E 06 01
        je      L_0224                          ; 74 03
        jmp     L_0389                          ; E9 65 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0224 -- offset 0x0224 -- 165 instr
; Dispatcher: tabla de decisiones cmp+jcc (165 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LSTRCAT, KERNEL.LSTRLEN, USER.ENDDIALOG, USER.LOADSTRING (+2 mas)
;----------------------------------------------------------------------
L_0224:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        mov     ax, 0x72                        ; B8 72 00
        push    ax                              ; 50
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        jne     L_02B3                          ; 75 69
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 9                           ; 05 09 00
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A E9 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_026C                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_026E                          ; EB 02
L_026C:
        sub     ax, ax                          ; 2B C0
L_026E:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_027D                          ; 74 08
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0298                          ; EB 1B
L_027D:
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 1C 03 00 00 [FIXUP]
L_0293:
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
L_0298:
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A A8 03 00 00 [FIXUP]
        push    word ptr [0xd32]                ; FF 36 32 0D
        call    far KERNEL.GLOBALUNLOCK         ; 9A AC 02 00 00 [FIXUP]
        push    word ptr [0xdae]                ; FF 36 AE 0D
        call    far KERNEL.GLOBALUNLOCK         ; 9A B8 02 00 00 [FIXUP]
        jmp     L_03AC                          ; E9 F9 00
L_02B3:
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        call    far KERNEL.GLOBALUNLOCK         ; 9A 94 03 00 00 [FIXUP]
        mov     ax, 0x81a                       ; B8 1A 08
        push    ax                              ; 50
        call    far _entry_22                   ; 9A FF FF 00 00 [FIXUP]
        cmp     byte ptr [0x81a], 0             ; 80 3E 1A 08 00
        jne     L_0323                          ; 75 57
        push    word ptr [0x8de]                ; FF 36 DE 08
        cmp     word ptr [bp + 4], 0x10         ; 83 7E 04 10
        jne     L_02DB                          ; 75 05
        mov     ax, 0x26                        ; B8 26 00
        jmp     L_02DE                          ; EB 03
L_02DB:
        mov     ax, 0x46                        ; B8 46 00
L_02DE:
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02F6                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_02F8                          ; EB 02
L_02F6:
        sub     ax, ax                          ; 2B C0
L_02F8:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_030A                          ; 74 0B
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03AC                          ; E9 A2 00
L_030A:
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03AC                          ; E9 89 00
L_0323:
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 3C 03 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx + 0x819], 0x5c     ; 80 BF 19 08 5C
        je      L_0358                          ; 74 22
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx + 0x819], 0x3a     ; 80 BF 19 08 3A
        je      L_0358                          ; 74 0F
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x371                       ; B8 71 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
L_0358:
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 4                           ; B8 04 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        cmp     word ptr [bp + 4], 0x30         ; 83 7E 04 30
        jne     L_0374                          ; 75 09
        mov     ax, word ptr [0x89c]            ; A1 9C 08
        mov     dx, word ptr [0x89e]            ; 8B 16 9E 08
        jmp     L_037B                          ; EB 07
L_0374:
        mov     ax, word ptr [0x8e6]            ; A1 E6 08
        mov     dx, word ptr [0x8e8]            ; 8B 16 E8 08
L_037B:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_03AC                          ; 74 26
        jmp     L_0293                          ; E9 0A FF
L_0389:
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
        jne     L_03AC                          ; 75 1D
        push    word ptr [0xd32]                ; FF 36 32 0D
        call    far KERNEL.GLOBALUNLOCK         ; 9A 9D 03 00 00 [FIXUP]
        push    word ptr [0xdae]                ; FF 36 AE 0D
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
L_03AC:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
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
        je      L_03CE                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_03DD                          ; 74 11
        jmp     L_03F2                          ; EB 24
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03CE -- offset 0x03CE -- 36 instr
; Funcion mediana (36 instr, 2 calls).
; tags: far, medium
; calls (intra): sub_044C, sub_061C
;----------------------------------------------------------------------
L_03CE:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    L_044C                          ; E8 74 00
L_03D8:
        mov     ax, 1                           ; B8 01 00
        jmp     L_03F4                          ; EB 17
L_03DD:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    L_061C                          ; E8 2C 02
        jmp     L_03D8                          ; EB E6
L_03F2:
        sub     ax, ax                          ; 2B C0
L_03F4:
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
        sub     sp, 0x22                        ; 83 EC 22
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_041B                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_042A                          ; 74 11
        jmp     L_043F                          ; EB 24
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_041B -- offset 0x041B -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: far, small
; calls (intra): sub_044C, sub_061C
;----------------------------------------------------------------------
L_041B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_044C                          ; E8 27 00
L_0425:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0441                          ; EB 17
L_042A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_061C                          ; E8 DF 01
        jmp     L_0425                          ; EB E6
L_043F:
        sub     ax, ax                          ; 2B C0
L_0441:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_044C -- offset 0x044C -- 169 instr
; Funcion compleja: 169 instrucciones, 10 llamadas, 10 branches.
; tags: calls_kernel, calls_user, complex
; callers: sub_03CE, sub_041B
; calls (intra): sub_071C
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE, USER.ENABLEWINDOW, USER.ENDDIALOG, USER.GETPARENT, USER.LOADSTRING (+3 mas)
;----------------------------------------------------------------------
L_044C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x5a                        ; 83 EC 5A
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa64], ax            ; A3 64 0A
        or      ax, ax                          ; 0B C0
        jne     L_0483                          ; 75 18
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A 9D 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A AB 04 00 00 [FIXUP]
        jmp     L_04DA                          ; EB 57
L_0483:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_071C                          ; E8 90 02
        or      ax, ax                          ; 0B C0
        jne     L_04FE                          ; 75 6E
        push    word ptr [0xa64]                ; FF 36 64 0A
        call    far KERNEL.LOCALFREE            ; 9A 06 07 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A 02 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 21 05 00 00 [FIXUP]
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 3                           ; 05 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 57 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_04D1                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_04D3                          ; EB 02
L_04D1:
        sub     ax, ax                          ; 2B C0
L_04D3:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_04E5                          ; 74 0B
L_04DA:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_43                   ; 9A 03 03 00 00 [FIXUP]
        jmp     L_0616                          ; E9 31 01
L_04E5:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 8F 02 00 00 [FIXUP]
        jmp     L_0616                          ; E9 18 01
L_04FE:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x5a], ax        ; 89 46 A6
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xfff8                      ; B8 F8 FF
        push    ax                              ; 50
        push    word ptr [0x73e]                ; FF 36 3E 07
        call    far USER.SETWINDOWWORD          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x5a]            ; FF 76 A6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 04 06 00 00 [FIXUP]
        push    word ptr [0x73e]                ; FF 36 3E 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xdc                        ; B8 DC 00
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 76 05 00 00 [FIXUP]
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 95 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0564                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0566                          ; EB 02
L_0564:
        sub     ax, ax                          ; 2B C0
L_0566:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xe6                        ; B8 E6 00
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A B4 05 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_059D                          ; 75 1D
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 5                           ; 05 05 00
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A D3 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_05A2                          ; 75 05
L_059D:
        mov     ax, 1                           ; B8 01 00
        jmp     L_05A4                          ; EB 02
L_05A2:
        sub     ax, ax                          ; 2B C0
L_05A4:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xfa                        ; B8 FA 00
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A F2 05 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_05DB                          ; 75 1D
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 6                           ; 05 06 00
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A A4 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_05E0                          ; 75 05
L_05DB:
        mov     ax, 1                           ; B8 01 00
        jmp     L_05E2                          ; EB 02
L_05E0:
        sub     ax, ax                          ; 2B C0
L_05E2:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 97 06 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_060A                          ; 74 0E
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 12 07 00 00 [FIXUP]
        jmp     L_0616                          ; EB 0C
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_060A -- offset 0x060A -- 7 instr
; Wrapper que delega en USER.SHOWWINDOW.
; tags: calls_user, wrapper
; calls (inter): USER.SHOWWINDOW
;----------------------------------------------------------------------
L_060A:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWWINDOW             ; 9A 06 02 00 00 [FIXUP]
L_0616:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_061C -- offset 0x061C -- 50 instr
; Dispatcher: tabla de decisiones cmp+jcc (50 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_03CE, sub_041B
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK, KERNEL.LSTRCPY, USER.SENDMESSAGE, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_061C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x56                        ; 83 EC 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_069D                          ; 74 73
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0632                          ; 75 03
        jmp     L_0701                          ; E9 CF 00
L_0632:
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_063A                          ; 74 03
        jmp     L_0716                          ; E9 DC 00
L_063A:
        cmp     word ptr [bp + 8], 1            ; 83 7E 08 01
        jne     L_069D                          ; 75 5D
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_065C                          ; 75 03
        jmp     L_0716                          ; E9 BA 00
L_065C:
        push    word ptr [0xa64]                ; FF 36 64 0A
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x81                        ; B8 81 00
        imul    word ptr [bp - 0x56]            ; F7 6E AA
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 61 07 00 00 [FIXUP]
        push    word ptr [0xa64]                ; FF 36 64 0A
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0xdc                        ; B8 DC 00
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A C3 00 00 00 [FIXUP]
        jmp     L_0716                          ; EB 79
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_069D -- offset 0x069D -- 50 instr
; Funcion mediana (50 instr, 3 calls).
; tags: calls_kernel, calls_user, medium
; calls (inter): KERNEL.LOCALFREE, USER.ENDDIALOG, USER.SENDDLGITEMMESSAGE
;----------------------------------------------------------------------
L_069D:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A CE 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_06D2                          ; 74 18
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        push    word ptr [bp - 0x56]            ; FF 76 AA
        mov     ax, 0xbda                       ; B8 DA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 39 02 00 00 [FIXUP]
L_06D2:
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 5                           ; B8 05 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        cmp     word ptr [bp + 4], 0x10         ; 83 7E 04 10
        jne     L_06EE                          ; 75 09
        mov     ax, word ptr [0x946]            ; A1 46 09
        mov     dx, word ptr [0x948]            ; 8B 16 48 09
        jmp     L_06F5                          ; EB 07
L_06EE:
        mov     ax, word ptr [0x8a0]            ; A1 A0 08
        mov     dx, word ptr [0x8a2]            ; 8B 16 A2 08
L_06F5:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 7E 03 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        je      L_0716                          ; 74 15
L_0701:
        push    word ptr [0xa64]                ; FF 36 64 0A
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A F8 01 00 00 [FIXUP]
L_0716:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_071C -- offset 0x071C -- 392 instr
; Dispatcher: tabla de decisiones cmp+jcc (392 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_044C
; calls (inter): KERNEL.ANSIUPPER, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LOCALLOCK, KERNEL.LOCALREALLOC, KERNEL.LOCALUNLOCK (+11 mas)
;----------------------------------------------------------------------
L_071C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x29e                       ; 81 EC 9E 02
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_073B                          ; 75 0C
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
L_073B:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x160], 0        ; C7 86 A0 FE 00 00
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x373                       ; B8 73 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 8E 07 00 00 [FIXUP]
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        cmp     word ptr [bp + 4], 0x30         ; 83 7E 04 30
        jne     L_0786                          ; 75 05
        mov     ax, 0xadc                       ; B8 DC 0A
        jmp     L_0789                          ; EB 03
L_0786:
        mov     ax, 0xda0                       ; B8 A0 0D
L_0789:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 28 01 00 00 [FIXUP]
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x8e0]                ; FF 36 E0 08
        call    far KERNEL.GLOBALLOCK           ; 9A 42 02 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        je      L_07B3                          ; 74 03
        jmp     L_0842                          ; E9 8F 00
L_07B3:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_07C5                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 11 0B 00 00 [FIXUP]
L_07C5:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 1F 0B 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 25 0B 00 00 [FIXUP]
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 9                           ; 05 09 00
        push    ax                              ; 50
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A C4 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_07FC                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_07FE                          ; EB 02
L_07FC:
        sub     ax, ax                          ; 2B C0
L_07FE:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A 6F 04 00 00 [FIXUP]
        mov     word ptr [bp + 6], ax           ; 89 46 06
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 2D 05 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0826                          ; 74 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_43                   ; 9A 25 0A 00 00 [FIXUP]
        jmp     L_083D                          ; EB 17
L_0826:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A F7 04 00 00 [FIXUP]
L_083D:
        sub     ax, ax                          ; 2B C0
        jmp     L_0B2D                          ; E9 EB 02
L_0842:
        push    word ptr [0x8e0]                ; FF 36 E0 08
        call    far KERNEL.GLOBALUNLOCK         ; 9A A3 02 00 00 [FIXUP]
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ax                              ; 50
        mov     ax, 0xf7                        ; B8 F7 00
        push    ax                              ; 50
        lea     ax, [bp - 0x18c]                ; 8D 86 74 FE
        push    ax                              ; 50
        call    far _entry_48                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x84], ax        ; 89 86 7C FF
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ax                              ; 50
        mov     ax, 0x375                       ; B8 75 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 28 09 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_0ADD                          ; E9 65 02
L_0878:
        lea     ax, [bp - 0x29e]                ; 8D 86 62 FD
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FA 08 00 00 [FIXUP]
        lea     ax, [bp - 0x29e]                ; 8D 86 62 FD
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x16e]                ; 8D 86 92 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 71 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x191], 0xffff   ; C7 86 6F FE FF FF
        lea     ax, [bp - 0x29e]                ; 8D 86 62 FD
        push    ax                              ; 50
        call    far _entry_51                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_08B1                          ; 75 03
        jmp     L_0ACF                          ; E9 1E 02
L_08B1:
        cmp     word ptr [bp + 4], 0x30         ; 83 7E 04 30
        jne     L_08BE                          ; 75 07
        mov     byte ptr [bp - 0x217], 0        ; C6 86 E9 FD 00
        jmp     L_08C3                          ; EB 05
L_08BE:
        mov     byte ptr [bp - 0x21a], 0        ; C6 86 E6 FD 00
L_08C3:
        lea     ax, [bp - 0x21e]                ; 8D 86 E2 FD
        push    ss                              ; 16
        push    ax                              ; 50
        cmp     word ptr [bp + 4], 0x10         ; 83 7E 04 10
        jne     L_08D4                          ; 75 05
        mov     ax, 0x377                       ; B8 77 03
        jmp     L_08D7                          ; EB 03
L_08D4:
        mov     ax, 0x37c                       ; B8 7C 03
L_08D7:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_08E7                          ; 74 03
        jmp     L_0ACF                          ; E9 E8 01
L_08E7:
        cmp     word ptr [bp - 0x160], 0        ; 83 BE A0 FE 00
        jne     L_0908                          ; 75 1A
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x16e]                ; 8D 86 92 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 7F 09 00 00 [FIXUP]
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A E5 09 00 00 [FIXUP]
L_0908:
        cmp     word ptr [bp + 4], 0x10         ; 83 7E 04 10
        je      L_0911                          ; 74 03
        jmp     L_0A2C                          ; E9 1B 01
L_0911:
        lea     ax, [bp - 0x219]                ; 8D 86 E7 FD
        mov     word ptr [bp - 0xda], ax        ; 89 86 26 FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 9C 09 00 00 [FIXUP]
        push    word ptr [bp - 0xda]            ; FF B6 26 FF
        mov     ax, 0x384                       ; B8 84 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 8D 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x18e], ax       ; 89 86 72 FE
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
L_0935:
        mov     bx, word ptr [bp - 0xda]        ; 8B 9E 26 FF
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0941                          ; 75 03
        jmp     L_0ACF                          ; E9 8E 01
L_0941:
        mov     ax, word ptr [bp - 0x18e]       ; 8B 86 72 FE
        cmp     bx, ax                          ; 3B D8
        jb      L_094C                          ; 72 03
        jmp     L_0ACF                          ; E9 83 01
L_094C:
        push    word ptr [0xa64]                ; FF 36 64 0A
        mov     ax, 0x81                        ; B8 81 00
        imul    word ptr [bp - 0x160]           ; F7 AE A0 FE
        add     ax, 0x81                        ; 05 81 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A 40 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x86], ax        ; 89 86 7A FF
        or      ax, ax                          ; 0B C0
        jne     L_096F                          ; 75 03
        jmp     L_0A21                          ; E9 B2 00
L_096F:
        mov     word ptr [0xa64], ax            ; A3 64 0A
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xda]        ; 8B 86 26 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A DA 09 00 00 [FIXUP]
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ax                              ; 50
        mov     ax, 0x386                       ; B8 86 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A FF 09 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 1A 0A 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 8E 0A 00 00 [FIXUP]
        push    word ptr [0xa64]                ; FF 36 64 0A
        call    far KERNEL.LOCALLOCK            ; 9A 97 0A 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x81                        ; B8 81 00
        imul    word ptr [bp - 0x160]           ; F7 AE A0 FE
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 0xdc], ax        ; 89 86 24 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x16e]                ; 8D 86 92 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A B3 0A 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xdc]        ; 8B 86 24 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A BE 0A 00 00 [FIXUP]
        push    word ptr [0xa64]                ; FF 36 64 0A
        call    far KERNEL.LOCALUNLOCK          ; 9A C7 0A 00 00 [FIXUP]
        inc     word ptr [bp - 0x160]           ; FF 86 A0 FE
        push    word ptr [bp - 0xda]            ; FF B6 26 FF
        mov     ax, 0x388                       ; B8 88 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 5D 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0xda], ax        ; 89 86 26 FF
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0A11                          ; 75 03
        jmp     L_0935                          ; E9 24 FF
L_0A11:
        inc     word ptr [bp - 0xda]            ; FF 86 26 FF
        push    word ptr [bp - 0xda]            ; FF B6 26 FF
        call    far _entry_22                   ; 9A 75 0A 00 00 [FIXUP]
        jmp     L_0935                          ; E9 14 FF
L_0A21:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_43                   ; 9A DE 04 00 00 [FIXUP]
        jmp     L_0AE7                          ; E9 BB 00
L_0A2C:
        push    word ptr [0xa64]                ; FF 36 64 0A
        mov     ax, 0x81                        ; B8 81 00
        imul    word ptr [bp - 0x160]           ; F7 AE A0 FE
        add     ax, 0x81                        ; 05 81 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x86], ax        ; 89 86 7A FF
        or      ax, ax                          ; 0B C0
        je      L_0A21                          ; 74 D5
        mov     word ptr [0xa64], ax            ; A3 64 0A
        lea     ax, [bp - 0x216]                ; 8D 86 EA FD
        mov     word ptr [bp - 0xda], ax        ; 89 86 26 FF
        push    ax                              ; 50
        mov     ax, 0x38a                       ; B8 8A 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xda], ax        ; 89 86 26 FF
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0A70                          ; 74 04
        inc     word ptr [bp - 0xda]            ; FF 86 26 FF
L_0A70:
        push    word ptr [bp - 0xda]            ; FF B6 26 FF
        call    far _entry_22                   ; 9A C1 02 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xda]        ; 8B 86 26 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF 0A 00 00 [FIXUP]
        push    word ptr [0xa64]                ; FF 36 64 0A
        call    far KERNEL.LOCALLOCK            ; 9A 61 06 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x81                        ; B8 81 00
        imul    word ptr [bp - 0x160]           ; F7 AE A0 FE
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 0xdc], ax        ; 89 86 24 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x16e]                ; 8D 86 92 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 7D 06 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xdc]        ; 8B 86 24 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xa64]                ; FF 36 64 0A
        call    far KERNEL.LOCALUNLOCK          ; 9A 86 06 00 00 [FIXUP]
        inc     word ptr [bp - 0x160]           ; FF 86 A0 FE
L_0ACF:
        lea     ax, [bp - 0x18c]                ; 8D 86 74 FE
        push    ax                              ; 50
        call    far _entry_50                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x84], ax        ; 89 86 7C FF
L_0ADD:
        cmp     word ptr [bp - 0x84], 0         ; 83 BE 7C FF 00
        jne     L_0AE7                          ; 75 03
        jmp     L_0878                          ; E9 91 FD
L_0AE7:
        cmp     word ptr [bp - 0x160], 0        ; 83 BE A0 FE 00
        je      L_0B03                          ; 74 15
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A AE 06 00 00 [FIXUP]
L_0B03:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0B15                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 37 07 00 00 [FIXUP]
L_0B15:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 45 07 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 4B 07 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x160]       ; 8B 86 A0 FE
L_0B2D:
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
        je      L_0B4C                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0B5B                          ; 74 11
        jmp     L_0B6A                          ; EB 1E
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B4C -- offset 0x0B4C -- 33 instr
; Funcion mediana (33 instr, 2 calls).
; tags: far, medium
; calls (intra): sub_0BBB, sub_0CE4
;----------------------------------------------------------------------
L_0B4C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    L_0BBB                          ; E8 65 00
L_0B56:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B6C                          ; EB 11
L_0B5B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    L_0CE4                          ; E8 7C 01
        jmp     L_0B56                          ; EB EC
L_0B6A:
        sub     ax, ax                          ; 2B C0
L_0B6C:
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
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0B90                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0B9F                          ; 74 11
        jmp     L_0BAE                          ; EB 1E
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B90 -- offset 0x0B90 -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: far, small
; calls (intra): sub_0BBB, sub_0CE4
;----------------------------------------------------------------------
L_0B90:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_0BBB                          ; E8 21 00
L_0B9A:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0BB0                          ; EB 11
L_0B9F:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_0CE4                          ; E8 38 01
        jmp     L_0B9A                          ; EB EC
L_0BAE:
        sub     ax, ax                          ; 2B C0
L_0BB0:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BBB -- offset 0x0BBB -- 117 instr
; Dispatcher: tabla de decisiones cmp+jcc (117 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_0B4C, sub_0B90
; calls (inter): KERNEL.ANSIPREV, KERNEL.GETMODULEFILENAME, KERNEL.GETMODULEHANDLE, KERNEL.LSTRCAT, KERNEL.LSTRLEN, USER.ENDDIALOG (+3 mas)
;----------------------------------------------------------------------
L_0BBB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x86                        ; 81 EC 86 00
        push    si                              ; 56
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 7                           ; 05 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 2E 0C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0BEB                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0BED                          ; EB 02
L_0BEB:
        sub     ax, ax                          ; 2B C0
L_0BED:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 93 0E 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xfa                        ; B8 FA 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 4E 0C 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0C36                          ; 75 1E
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 3B 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0C3B                          ; 75 05
L_0C36:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0C3D                          ; EB 02
L_0C3B:
        sub     ax, ax                          ; 2B C0
L_0C3D:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x104                       ; B8 04 01
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A CD 0C 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0C66                          ; 74 0E
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A E8 0D 00 00 [FIXUP]
        jmp     L_0CDD                          ; EB 77
L_0C66:
        mov     ax, 0x38c                       ; B8 8C 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far KERNEL.GETMODULEFILENAME    ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 66 0E 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        lea     ax, [bp + si - 0x86]            ; 8D 82 7A FF
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0CA3                          ; EB 0D
L_0C96:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0x5c             ; 80 3F 5C
        jne     L_0CA3                          ; 75 05
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_0CBF                          ; EB 1C
L_0CA3:
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_0C96                          ; 75 D7
L_0CBF:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 3E 05 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWWINDOW             ; 9A 12 06 00 00 [FIXUP]
L_0CDD:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0CE4 -- offset 0x0CE4 -- 102 instr
; Dispatcher: tabla de decisiones cmp+jcc (102 instr).
; tags: calls_user, dispatcher
; callers: sub_0B4C, sub_0B90
; calls (intra): sub_0DF2, sub_0FAB, sub_2035
; calls (inter): USER.ENDDIALOG, USER.LOADCURSOR, USER.SETCURSOR, USER.SHOWCURSOR
;----------------------------------------------------------------------
L_0CE4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 1                           ; 3D 01 00
        je      L_0D07                          ; 74 15
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0CFA                          ; 75 03
        jmp     L_0DE1                          ; E9 E7 00
L_0CFA:
        cmp     ax, 6                           ; 3D 06 00
        je      L_0D07                          ; 74 08
        cmp     ax, 7                           ; 3D 07 00
        je      L_0D72                          ; 74 6E
        jmp     L_0DEC                          ; E9 E5 00
L_0D07:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0D1A                          ; 75 0C
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 54 0D 00 00 [FIXUP]
L_0D1A:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 62 0D 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 68 0D 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        cmp     word ptr [bp + 4], 0x10         ; 83 7E 04 10
        jne     L_0D3C                          ; 75 05
        mov     ax, 0x20                        ; B8 20 00
        jmp     L_0D3F                          ; EB 03
L_0D3C:
        mov     ax, 0x40                        ; B8 40 00
L_0D3F:
        push    ax                              ; 50
        call    L_0DF2                          ; E8 AF 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0D58                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 81 0D 00 00 [FIXUP]
L_0D58:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 8F 0D 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 95 0D 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0DEC                          ; 74 7A
L_0D72:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0D85                          ; 75 0C
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A C3 0D 00 00 [FIXUP]
L_0D85:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A D1 0D 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A D7 0D 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0x10         ; 83 7E 04 10
        jne     L_0DAC                          ; 75 0D
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0FAB                          ; E8 06 02
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        jmp     L_0DB5                          ; EB 09
L_0DAC:
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_2035                          ; E8 83 12
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_0DB5:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0DC7                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A C1 07 00 00 [FIXUP]
L_0DC7:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A CF 07 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A D5 07 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0DEC                          ; 74 0B
L_0DE1:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.ENDDIALOG              ; 9A 7D 04 00 00 [FIXUP]
L_0DEC:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0DF2 -- offset 0x0DF2 -- 178 instr
; Dispatcher: tabla de decisiones cmp+jcc (178 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_0CE4
; calls (inter): KERNEL.LSTRCAT, KERNEL.LSTRCPY, KERNEL.LSTRLEN, USER.LOADSTRING, USER.MESSAGEBOX, USER.SENDDLGITEMMESSAGE
;----------------------------------------------------------------------
L_0DF2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x182                       ; 81 EC 82 01
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        mov     ax, 0x72                        ; B8 72 00
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A B5 09 00 00 [FIXUP]
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 1B 09 00 00 [FIXUP]
        cmp     byte ptr [bp - 0x82], 0         ; 80 BE 7E FF 00
        jne     L_0E5F                          ; 75 3A
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 6                           ; 05 06 00
        push    ax                              ; 50
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A DA 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0E48                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0E4A                          ; EB 02
L_0E48:
        sub     ax, ax                          ; 2B C0
L_0E4A:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0E54                          ; 75 03
        jmp     L_0EF3                          ; E9 9F 00
L_0E54:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_43                   ; 9A 20 08 00 00 [FIXUP]
        jmp     L_0F0A                          ; E9 AB 00
L_0E5F:
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 7A 0E 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        cmp     byte ptr [bp + si - 0x83], 0x5c ; 80 BA 7D FF 5C
        je      L_0E97                          ; 74 24
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 29 03 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        cmp     byte ptr [bp + si - 0x83], 0x3a ; 80 BA 7D FF 3A
        je      L_0E97                          ; 74 10
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x393                       ; B8 93 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A A3 0E 00 00 [FIXUP]
L_0E97:
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 3C 0F 00 00 [FIXUP]
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_52                   ; 9A 4D 0F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0F0F                          ; 75 53
        push    word ptr [0x8de]                ; FF 36 DE 08
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        jne     L_0ECB                          ; 75 05
        mov     ax, 0x19                        ; B8 19 00
        jmp     L_0ECE                          ; EB 03
L_0ECB:
        mov     ax, 0x39                        ; B8 39 00
L_0ECE:
        push    ax                              ; 50
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A EF 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0EE7                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0EE9                          ; EB 02
L_0EE7:
        sub     ax, ax                          ; 2B C0
L_0EE9:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0EF3                          ; 74 03
        jmp     L_0E54                          ; E9 61 FF
L_0EF3:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 39 08 00 00 [FIXUP]
L_0F0A:
        sub     ax, ax                          ; 2B C0
        jmp     L_0FA4                          ; E9 95 00
L_0F0F:
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 2C 0F 00 00 [FIXUP]
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 62 0F 00 00 [FIXUP]
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 96 08 00 00 [FIXUP]
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_52                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0F0A                          ; 74 B5
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 85 08 00 00 [FIXUP]
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A 9F 07 00 00 [FIXUP]
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A 73 0F 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ax                              ; 50
        call    far _entry_53                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0FA1                          ; 75 03
        jmp     L_0F0A                          ; E9 69 FF
L_0FA1:
        mov     ax, 1                           ; B8 01 00
L_0FA4:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FAB -- offset 0x0FAB -- 241 instr
; Dispatcher: tabla de decisiones cmp+jcc (241 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_0CE4
; calls (inter): KERNEL.ANSIUPPER, KERNEL.GETPROFILESTRING, KERNEL.LSTRCAT, KERNEL.LSTRCPY, KERNEL.WRITEPROFILESTRING, USER.ENABLEMENUITEM (+2 mas)
;----------------------------------------------------------------------
L_0FAB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xda                        ; 81 EC DA 00
        mov     ax, 0x39e                       ; B8 9E 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x395                       ; B8 95 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x97a                       ; B8 7A 09
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A E9 0F 00 00 [FIXUP]
        mov     ax, 0x3a7                       ; B8 A7 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xbda                       ; B8 DA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3a6                       ; B8 A6 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A C8 10 00 00 [FIXUP]
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ax                              ; 50
        mov     ax, 0x3af                       ; B8 AF 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 3A 10 00 00 [FIXUP]
        mov     word ptr [bp - 0xda], ax        ; 89 86 26 FF
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_100A                          ; 74 04
        inc     word ptr [bp - 0xda]            ; FF 86 26 FF
L_100A:
        push    word ptr [bp - 0xda]            ; FF B6 26 FF
        call    far _entry_22                   ; 9A 22 10 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xda]        ; 8B 9E 26 FF
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1031                          ; 74 15
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A D2 10 00 00 [FIXUP]
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3b1                       ; B8 B1 03
        jmp     L_1066                          ; EB 35
L_1031:
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ax                              ; 50
        mov     ax, 0x3b3                       ; B8 B3 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 6C 08 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 04 09 00 00 [FIXUP]
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A EC 10 00 00 [FIXUP]
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3b5                       ; B8 B5 03
L_1066:
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 79 10 00 00 [FIXUP]
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FC 10 00 00 [FIXUP]
        mov     ax, 0x3b7                       ; B8 B7 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xbda                       ; B8 DA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 47 11 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_10AE                          ; 74 15
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x3bf                       ; B8 BF 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 6E 11 00 00 [FIXUP]
L_10AE:
        mov     ax, 0x3cf                       ; B8 CF 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3c8                       ; B8 C8 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3c7                       ; B8 C7 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 1A 0E 00 00 [FIXUP]
        cmp     byte ptr [bp - 0xd8], 0         ; 80 BE 28 FF 00
        je      L_10E0                          ; 74 03
        jmp     L_1172                          ; E9 92 00
L_10E0:
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xbda                       ; B8 DA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 1C 0F 00 00 [FIXUP]
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3d7                       ; B8 D7 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 0C 11 00 00 [FIXUP]
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 1C 11 00 00 [FIXUP]
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3d9                       ; B8 D9 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 2C 11 00 00 [FIXUP]
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FC 0B 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_1154                          ; 74 1E
        mov     ax, 0x3e2                       ; B8 E2 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3db                       ; B8 DB 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xd8]                 ; 8D 86 28 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1154                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1156                          ; EB 02
L_1154:
        sub     ax, ax                          ; 2B C0
L_1156:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_1172                          ; 74 15
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x3ea                       ; B8 EA 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A AF 12 00 00 [FIXUP]
L_1172:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_1182                          ; 75 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_11B9                          ; EB 37
L_1182:
        push    word ptr [0x73e]                ; FF 36 3E 07
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A A6 11 00 00 [FIXUP]
        push    word ptr [bp - 0x56]            ; FF 76 AA
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A B5 11 00 00 [FIXUP]
        push    word ptr [bp - 0x56]            ; FF 76 AA
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
L_11B9:
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
        sub     sp, 0x22                        ; 83 EC 22
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_11DB                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_11EA                          ; 74 11
        jmp     L_11FF                          ; EB 24
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_11DB -- offset 0x11DB -- 36 instr
; Funcion mediana (36 instr, 2 calls).
; tags: far, medium
; calls (intra): sub_1259, sub_1433
;----------------------------------------------------------------------
L_11DB:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_1259                          ; E8 74 00
L_11E5:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1201                          ; EB 17
L_11EA:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_1433                          ; E8 36 02
        jmp     L_11E5                          ; EB E6
L_11FF:
        sub     ax, ax                          ; 2B C0
L_1201:
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
        sub     sp, 0x22                        ; 83 EC 22
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_1228                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_1237                          ; 74 11
        jmp     L_124C                          ; EB 24
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1228 -- offset 0x1228 -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: far, small
; calls (intra): sub_1259, sub_1433
;----------------------------------------------------------------------
L_1228:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    L_1259                          ; E8 27 00
L_1232:
        mov     ax, 1                           ; B8 01 00
        jmp     L_124E                          ; EB 17
L_1237:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    L_1433                          ; E8 E9 01
        jmp     L_1232                          ; EB E6
L_124C:
        sub     ax, ax                          ; 2B C0
L_124E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1259 -- offset 0x1259 -- 26 instr
; Funcion sin clasificar definitiva (26 instr).
; tags: calls_user, small
; callers: sub_11DB, sub_1228
; calls (intra): sub_20FF
; calls (inter): USER.ENDDIALOG, USER.GETDLGITEM
;----------------------------------------------------------------------
L_1259:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x64                        ; 83 EC 64
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        jne     L_1291                          ; 75 27
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        push    ax                              ; 50
        call    far _entry_46                   ; 9A FF FF 00 00 [FIXUP]
L_127F:
        or      ax, ax                          ; 0B C0
        jne     L_1299                          ; 75 16
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
L_1288:
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 60 0C 00 00 [FIXUP]
        jmp     L_142D                          ; E9 9C 01
L_1291:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_20FF                          ; E8 68 0E
        jmp     L_127F                          ; EB E6
L_1299:
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        je      L_12A2                          ; 74 03
        jmp     L_1388                          ; E9 E6 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_12A2 -- offset 0x12A2 -- 83 instr
; Funcion compleja: 83 instrucciones, 3 llamadas, 6 branches.
; tags: calls_user, complex
; calls (inter): USER.LOADSTRING, USER.SENDMESSAGE, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_12A2:
        push    word ptr [bp - 0x60]            ; FF 76 A0
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 4D 06 00 00 [FIXUP]
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 00 13 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_12D2                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_12D4                          ; EB 02
L_12D2:
        sub     ax, ax                          ; 2B C0
L_12D4:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xe6                        ; B8 E6 00
        push    ax                              ; 50
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 1F 13 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_1308                          ; 75 1A
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 3B 13 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_130D                          ; 75 05
L_1308:
        mov     ax, 1                           ; B8 01 00
        jmp     L_130F                          ; EB 02
L_130D:
        sub     ax, ax                          ; 2B C0
L_130F:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xfa                        ; B8 FA 00
        push    ax                              ; 50
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 5A 13 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_1343                          ; 75 1A
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x22                        ; B8 22 00
        push    ax                              ; 50
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A DE 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1348                          ; 75 05
L_1343:
        mov     ax, 1                           ; B8 01 00
        jmp     L_134A                          ; EB 02
L_1348:
        sub     ax, ax                          ; 2B C0
L_134A:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 0E 0C 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_136D                          ; 74 09
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1288                          ; E9 1B FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_136D -- offset 0x136D -- 75 instr
; Funcion mediana (75 instr, 6 calls).
; tags: calls_user, medium
; calls (intra): sub_1545
; calls (inter): USER.GETSYSTEMMETRICS, USER.GETWINDOWRECT, USER.MOVEWINDOW, USER.SETDLGITEMTEXT, USER.SHOWWINDOW
;----------------------------------------------------------------------
L_136D:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_1545                          ; E8 CE 01
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xdc                        ; B8 DC 00
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 73 14 00 00 [FIXUP]
L_1388:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETWINDOWRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0xa6a]                ; F7 2E 6A 0A
        add     ax, word ptr [bp - 0x5c]        ; 03 46 A4
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A DD 13 00 00 [FIXUP]
        mov     cx, word ptr [bp - 0x58]        ; 8B 4E A8
        sub     cx, ax                          ; 2B C8
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0xa6a]                ; F7 2E 6A 0A
        add     cx, ax                          ; 03 C8
        mov     ax, word ptr [0x8a4]            ; A1 A4 08
        shl     ax, 1                           ; D1 E0
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 4], cx           ; 89 4E FC
        or      cx, cx                          ; 0B C9
        jle     L_13CC                          ; 7E 05
        mov     ax, cx                          ; 8B C1
        sub     word ptr [bp - 0x64], ax        ; 29 46 9C
L_13CC:
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [0xc50]                ; F7 2E 50 0C
        add     ax, word ptr [bp - 0x5e]        ; 03 46 A2
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        mov     cx, word ptr [bp - 0x5a]        ; 8B 4E A6
        sub     cx, ax                          ; 2B C8
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [0xc50]                ; F7 2E 50 0C
        add     cx, ax                          ; 03 C8
        mov     ax, word ptr [0x80c]            ; A1 0C 08
        shl     ax, 1                           ; D1 E0
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 4], cx           ; 89 4E FC
        or      cx, cx                          ; 0B C9
        jle     L_1402                          ; 7E 05
        mov     ax, cx                          ; 8B C1
        sub     word ptr [bp - 0x62], ax        ; 29 46 9E
L_1402:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x62]            ; FF 76 9E
        push    word ptr [bp - 0x64]            ; FF 76 9C
        mov     ax, word ptr [bp - 0x5a]        ; 8B 46 A6
        sub     ax, word ptr [bp - 0x5e]        ; 2B 46 A2
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        sub     ax, word ptr [bp - 0x5c]        ; 2B 46 A4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.MOVEWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWWINDOW             ; 9A D9 0C 00 00 [FIXUP]
L_142D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1433 -- offset 0x1433 -- 104 instr
; Dispatcher: tabla de decisiones cmp+jcc (104 instr).
; tags: calls_user, dispatcher
; callers: sub_11DB, sub_1228
; calls (intra): sub_1545, sub_1671, sub_1DB3
; calls (inter): USER.ENDDIALOG, USER.LOADSTRING, USER.MESSAGEBOX, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_1433:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x82                        ; 81 EC 82 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_147A                          ; 74 33
        cmp     ax, 2                           ; 3D 02 00
        jne     L_144F                          ; 75 03
        jmp     L_1534                          ; E9 E5 00
L_144F:
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_1457                          ; 74 03
        jmp     L_153F                          ; E9 E8 00
L_1457:
        cmp     word ptr [bp + 8], 1            ; 83 7E 08 01
        jne     L_147A                          ; 75 1D
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1545                          ; E8 DF 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0xdc                        ; B8 DC 00
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A E4 12 00 00 [FIXUP]
        jmp     L_153F                          ; E9 C5 00
L_147A:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1545                          ; E8 C2 00
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        je      L_148C                          ; 74 03
        jmp     L_151D                          ; E9 91 00
L_148C:
        call    L_1671                          ; E8 E2 01
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_1513                          ; 74 7F
        or      ax, ax                          ; 0B C0
        je      L_14F2                          ; 74 5A
        cmp     ax, 1                           ; 3D 01 00
        je      L_14A0                          ; 74 03
        jmp     L_153F                          ; E9 9F 00
L_14A0:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_1DB3                          ; E8 0D 09
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x23                        ; B8 23 00
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x7c                        ; B8 7C 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A C5 12 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_14C6                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_14C8                          ; EB 02
L_14C6:
        sub     ax, ax                          ; 2B C0
L_14C8:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_14D9                          ; 74 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_43                   ; 9A 17 15 00 00 [FIXUP]
        jmp     L_1534                          ; EB 5B
L_14D9:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 06 0F 00 00 [FIXUP]
        jmp     L_1534                          ; EB 42
L_14F2:
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 5                           ; B8 05 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [0xa62]                ; FF 36 62 0A
        push    word ptr [0xa60]                ; FF 36 60 0A
L_1507:
        call    far _entry_47                   ; 9A F8 06 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        je      L_153F                          ; 74 2E
        jmp     L_1534                          ; EB 21
L_1513:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_43                   ; 9A 58 0E 00 00 [FIXUP]
        jmp     L_153F                          ; EB 22
L_151D:
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 5                           ; B8 05 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [0xa28]                ; FF 36 28 0A
        push    word ptr [0xa26]                ; FF 36 26 0A
        jmp     L_1507                          ; EB D3
L_1534:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 8A 12 00 00 [FIXUP]
L_153F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1545 -- offset 0x1545 -- 17 instr
; Funcion sin clasificar definitiva (17 instr).
; tags: calls_user, small
; callers: sub_136D, sub_1433, sub_223A
; calls (inter): USER.SENDDLGITEMMESSAGE
;----------------------------------------------------------------------
L_1545:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x56                        ; 83 EC 56
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 7F 15 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_156B                          ; 75 03
        jmp     L_166B                          ; E9 00 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_156B -- offset 0x156B -- 113 instr
; Dispatcher: tabla de decisiones cmp+jcc (113 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (inter): KERNEL.ANSIUPPER, KERNEL.GETPROFILESTRING, KERNEL.LSTRCAT, KERNEL.LSTRCPY, KERNEL.LSTRLEN, USER.SENDDLGITEMMESSAGE
;----------------------------------------------------------------------
L_156B:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        push    word ptr [bp - 0x56]            ; FF 76 AA
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 10 0E 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        jne     L_15A0                          ; 75 17
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 00 16 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_15A9                          ; EB 09
L_15A0:
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 2D 16 00 00 [FIXUP]
L_15A9:
        mov     ax, 0xbda                       ; B8 DA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A D6 15 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        jne     L_160B                          ; 75 4D
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 87 0C 00 00 [FIXUP]
        add     word ptr [bp - 0x54], ax        ; 01 46 AC
        mov     ax, 0xb88                       ; B8 88 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 59 10 00 00 [FIXUP]
        mov     ax, 0x3f3                       ; B8 F3 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3f2                       ; B8 F2 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 24 16 00 00 [FIXUP]
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ax                              ; 50
        mov     ax, 0x3fb                       ; B8 FB 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 44 16 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_1628                          ; EB 1D
L_160B:
        mov     ax, 0x3fe                       ; B8 FE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3fd                       ; B8 FD 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A D7 16 00 00 [FIXUP]
L_1628:
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 39 17 00 00 [FIXUP]
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 49 10 00 00 [FIXUP]
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ax                              ; 50
        mov     ax, 0x404                       ; B8 04 04
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 2A 17 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_166B                          ; 75 1C
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        jne     L_165F                          ; 75 05
        mov     ax, 0xda0                       ; B8 A0 0D
        jmp     L_1662                          ; EB 03
L_165F:
        mov     ax, 0xadc                       ; B8 DC 0A
L_1662:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 69 10 00 00 [FIXUP]
L_166B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1671 -- offset 0x1671 -- 174 instr
; Dispatcher: tabla de decisiones cmp+jcc (174 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_1433
; calls (inter): KERNEL.ANSIUPPER, KERNEL.GETPROFILESTRING, KERNEL.LOCALALLOC, KERNEL.LOCALFREE, KERNEL.LSTRCAT, KERNEL.LSTRCMP (+3 mas)
;----------------------------------------------------------------------
L_1671:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x88                        ; 81 EC 88 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x281                       ; B8 81 02
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 60 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        or      ax, ax                          ; 0B C0
        jne     L_1697                          ; 75 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1801                          ; E9 6A 01
L_1697:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_16AA                          ; 75 0C
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 16 0D 00 00 [FIXUP]
L_16AA:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 24 0D 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 2A 0D 00 00 [FIXUP]
        mov     ax, 0x407                       ; B8 07 04
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x280                       ; B8 80 02
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 06 17 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_16E2:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_16ED                          ; 75 03
        jmp     L_1774                          ; E9 87 00
L_16ED:
        mov     ax, 0x410                       ; B8 10 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x40f                       ; B8 0F 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x7f                        ; B8 7F 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A CB 0F 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xbda                       ; B8 DA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A DC 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1720                          ; 75 03
        jmp     L_17A8                          ; E9 88 00
L_1720:
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        mov     ax, 0x418                       ; B8 18 04
        push    ax                              ; 50
        call    far _entry_44                   ; 9A F7 0F 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 0F 10 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 37 16 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xda0                       ; B8 A0 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A DA 18 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 15 17 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_176F                          ; 74 03
        jmp     L_17F1                          ; E9 82 00
L_176F:
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
L_1774:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_1786                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A A6 16 00 00 [FIXUP]
L_1786:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A B4 16 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A BA 16 00 00 [FIXUP]
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        call    far KERNEL.LOCALFREE            ; 9A 95 04 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_1801                          ; EB 59
L_17A8:
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        mov     ax, 0x41a                       ; B8 1A 04
        push    ax                              ; 50
        call    far _entry_44                   ; 9A CB 17 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_17C3                          ; 74 03
        inc     word ptr [bp - 4]               ; FF 46 FC
L_17C3:
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x41c                       ; B8 1C 04
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 92 15 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_17DC                          ; 74 03
        inc     word ptr [bp - 4]               ; FF 46 FC
L_17DC:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_22                   ; 9A 53 1A 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_17F1                          ; 74 05
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
L_17F1:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_17FF                          ; 75 03
        jmp     L_16E2                          ; E9 E3 FE
L_17FF:
        jmp     L_17F1                          ; EB F0
L_1801:
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
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_181E                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_182D                          ; 74 11
        jmp     L_1842                          ; EB 24
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_181E -- offset 0x181E -- 35 instr
; Funcion mediana (35 instr, 2 calls).
; tags: far, medium
; calls (intra): sub_1899, sub_1A09
;----------------------------------------------------------------------
L_181E:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_1899                          ; E8 71 00
L_1828:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1844                          ; EB 17
L_182D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_1A09                          ; E8 C9 01
        jmp     L_1828                          ; EB E6
L_1842:
        sub     ax, ax                          ; 2B C0
L_1844:
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
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_1868                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_1877                          ; 74 11
        jmp     L_188C                          ; EB 24
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1868 -- offset 0x1868 -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: far, small
; calls (intra): sub_1899, sub_1A09
;----------------------------------------------------------------------
L_1868:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    L_1899                          ; E8 27 00
L_1872:
        mov     ax, 1                           ; B8 01 00
        jmp     L_188E                          ; EB 17
L_1877:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    L_1A09                          ; E8 7F 01
        jmp     L_1872                          ; EB E6
L_188C:
        sub     ax, ax                          ; 2B C0
L_188E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1899 -- offset 0x1899 -- 145 instr
; Dispatcher: tabla de decisiones cmp+jcc (145 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_181E, sub_1868
; calls (inter): KERNEL.ANSIPREV, KERNEL.LSTRCAT, KERNEL.LSTRCPY, KERNEL.LSTRLEN, KERNEL.OPENFILE, USER.ENDDIALOG (+3 mas)
;----------------------------------------------------------------------
L_1899:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x108                       ; 81 EC 08 01
        push    si                              ; 56
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 0C 19 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_18C9                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_18CB                          ; EB 02
L_18C9:
        sub     ax, ax                          ; 2B C0
L_18CB:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A E0 19 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xfa                        ; B8 FA 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 2C 19 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_1914                          ; 75 1E
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 5                           ; 05 05 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 74 1A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1919                          ; 75 05
L_1914:
        mov     ax, 1                           ; B8 01 00
        jmp     L_191B                          ; EB 02
L_1919:
        sub     ax, ax                          ; 2B C0
L_191B:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x104                       ; B8 04 01
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A F2 19 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_1945                          ; 74 0F
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 3B 15 00 00 [FIXUP]
        jmp     L_1A02                          ; E9 BD 00
L_1945:
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x108]                ; 8D 86 F8 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x4000                      ; B8 00 40
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        cmp     ax, 0xffff                      ; 3D FF FF
        jle     L_19B0                          ; 7E 4E
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A BC 19 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A C7 19 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        lea     ax, [bp + si - 0x86]            ; 8D 82 7A FF
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_1987:
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A AF 0C 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_19C0                          ; 74 1D
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0x5c             ; 80 3F 5C
        jne     L_1987                          ; 75 DC
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_19C0                          ; EB 10
L_19B0:
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x41e                       ; B8 1E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 0E 1B 00 00 [FIXUP]
L_19C0:
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A AD 1A 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        cmp     byte ptr [bp + si - 0x87], 0x3a ; 80 BA 79 FF 3A
        jne     L_19E4                          ; 75 10
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x41f                       ; B8 1F 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A D8 1A 00 00 [FIXUP]
L_19E4:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 84 13 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWWINDOW             ; 9A 29 14 00 00 [FIXUP]
L_1A02:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1A09 -- offset 0x1A09 -- 16 instr
; Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_181E, sub_1868
;----------------------------------------------------------------------
L_1A09:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x108                       ; 81 EC 08 01
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_1A35                          ; 74 18
        cmp     ax, 2                           ; 3D 02 00
        jne     L_1A25                          ; 75 03
        jmp     L_1D08                          ; E9 E3 02
L_1A25:
        cmp     ax, 6                           ; 3D 06 00
        je      L_1A35                          ; 74 0B
        cmp     ax, 7                           ; 3D 07 00
        jne     L_1A32                          ; 75 03
        jmp     L_1C92                          ; E9 60 02
L_1A32:
        jmp     L_1D13                          ; E9 DE 02
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1A35 -- offset 0x1A35 -- 128 instr
; Dispatcher: tabla de decisiones cmp+jcc (128 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (inter): KERNEL.ANSIUPPER, KERNEL.LSTRCAT, KERNEL.LSTRCPY, KERNEL.LSTRLEN, KERNEL.OPENFILE, USER.LOADSTRING (+2 mas)
;----------------------------------------------------------------------
L_1A35:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 5C 15 00 00 [FIXUP]
        mov     ax, 0x81a                       ; B8 1A 08
        push    ax                              ; 50
        call    far _entry_22                   ; 9A A5 15 00 00 [FIXUP]
        cmp     byte ptr [0x81a], 0             ; 80 3E 1A 08 00
        jne     L_1AA7                          ; 75 49
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 6                           ; 05 06 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A B9 14 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1A81                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1A83                          ; EB 02
L_1A81:
        sub     ax, ax                          ; 2B C0
L_1A83:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_1A8D                          ; 74 03
        jmp     L_1B66                          ; E9 D9 00
L_1A8D:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A EC 14 00 00 [FIXUP]
        jmp     L_1D13                          ; E9 6C 02
L_1AA7:
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A C0 1A 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx + 0x819], 0x5c     ; 80 BF 19 08 5C
        je      L_1ADC                          ; 74 22
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A C4 15 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx + 0x819], 0x3a     ; 80 BF 19 08 3A
        je      L_1ADC                          ; 74 0F
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x421                       ; B8 21 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A E7 1A 00 00 [FIXUP]
L_1ADC:
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 67 16 00 00 [FIXUP]
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_52                   ; 9A B4 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1B02                          ; 75 03
        jmp     L_1D13                          ; E9 11 02
L_1B02:
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A B4 15 00 00 [FIXUP]
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x108]                ; 8D 86 F8 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x4000                      ; B8 00 40
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 55 19 00 00 [FIXUP]
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        or      ax, ax                          ; 0B C0
        jge     L_1B90                          ; 7D 62
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 7                           ; 05 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 5E 1D 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1B51                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1B53                          ; EB 02
L_1B51:
        sub     ax, ax                          ; 2B C0
L_1B53:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 18 1C 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_1B71                          ; 74 0B
L_1B66:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_43                   ; 9A 84 1D 00 00 [FIXUP]
        jmp     L_1D13                          ; E9 A2 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1B71 -- offset 0x1B71 -- 168 instr
; Dispatcher: tabla de decisiones cmp+jcc (168 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; calls (intra): sub_1D19, sub_1DB3, sub_2326
; calls (inter): GDI.ADDFONTRESOURCE, KERNEL.ANSIUPPER, KERNEL.LSTRCPY, KERNEL.WRITEPROFILESTRING, USER.ENDDIALOG, USER.LOADCURSOR (+3 mas)
;----------------------------------------------------------------------
L_1B71:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A A2 1D 00 00 [FIXUP]
        jmp     L_1D13                          ; E9 83 01
L_1B90:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_1BA3                          ; 75 0C
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 5F 1C 00 00 [FIXUP]
L_1BA3:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 6D 1C 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 73 1C 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        jne     L_1BCD                          ; 75 10
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_1D19                          ; E8 52 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_1C51                          ; E9 84 00
L_1BCD:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_2326                          ; E8 53 07
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    L_1D19                          ; E8 3C 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_1C51                          ; 75 6D
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.ADDFONTRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A A3 1C 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        mov     ax, 0x423                       ; B8 23 04
        push    ax                              ; 50
        call    far _entry_44                   ; 9A EE 1D 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 76 1D 00 00 [FIXUP]
        mov     ax, 0x425                       ; B8 25 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xbda                       ; B8 DA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A D6 1E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1C3F                          ; 75 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_25                   ; 9A 7C 11 00 00 [FIXUP]
        jmp     L_1C51                          ; EB 12
L_1C3F:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A F2 1E 00 00 [FIXUP]
L_1C51:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_1C63                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A B6 1C 00 00 [FIXUP]
L_1C63:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A C4 1C 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A CA 1C 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_1C80                          ; 75 03
        jmp     L_1D13                          ; E9 93 00
L_1C80:
        cmp     word ptr [bp + 4], 0x40         ; 83 7E 04 40
        jne     L_1C92                          ; 75 0C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 0F 1D 00 00 [FIXUP]
L_1C92:
        cmp     word ptr [bp + 4], 0x40         ; 83 7E 04 40
        jne     L_1CA7                          ; 75 0F
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 1B 1E 00 00 [FIXUP]
L_1CA7:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_1CBA                          ; 75 0C
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A F0 1C 00 00 [FIXUP]
L_1CBA:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FE 1C 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 04 1D 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        jne     L_1CDC                          ; 75 08
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_1DB3                          ; E8 D9 00
        jmp     L_1CE2                          ; EB 06
L_1CDC:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_2326                          ; E8 44 06
L_1CE2:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_1CF4                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 82 17 00 00 [FIXUP]
L_1CF4:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 90 17 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 96 17 00 00 [FIXUP]
L_1D08:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.ENDDIALOG              ; 9A 3E 19 00 00 [FIXUP]
L_1D13:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1D19 -- offset 0x1D19 -- 43 instr
; Funcion mediana (43 instr, 2 calls).
; tags: calls_kernel, calls_user, medium
; callers: sub_1B71
; calls (inter): KERNEL.ANSIUPPER, USER.LOADSTRING
;----------------------------------------------------------------------
L_1D19:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x104                       ; 81 EC 04 01
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A 84 0F 00 00 [FIXUP]
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_54                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x104], ax       ; 89 86 FC FE
        or      ax, ax                          ; 0B C0
        je      L_1DAA                          ; 74 62
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x7f                        ; B8 7F 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A BC 18 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1D6B                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1D6D                          ; EB 02
L_1D6B:
        sub     ax, ax                          ; 2B C0
L_1D6D:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 44 17 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_1D8A                          ; 74 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_43                   ; 9A D3 14 00 00 [FIXUP]
        jmp     L_1DA6                          ; EB 1C
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1D8A -- offset 0x1D8A -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: small
;----------------------------------------------------------------------
L_1D8A:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
L_1DA6:
        sub     ax, ax                          ; 2B C0
        jmp     L_1DAD                          ; EB 03
L_1DAA:
        mov     ax, 1                           ; B8 01 00
L_1DAD:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1DB3 -- offset 0x1DB3 -- 246 instr
; Dispatcher: tabla de decisiones cmp+jcc (246 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_1433, sub_1B71
; calls (inter): KERNEL.ANSINEXT, KERNEL.GETPROFILESTRING, KERNEL.LSTRCAT, KERNEL.LSTRCMP, KERNEL.LSTRCPY, KERNEL.WRITEPROFILESTRING (+3 mas)
;----------------------------------------------------------------------
L_1DB3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x190                       ; 81 EC 90 01
        mov     word ptr [bp - 0x190], 0        ; C7 86 70 FE 00 00
        mov     word ptr [bp - 0x18c], 0        ; C7 86 74 FE 00 00
        mov     ax, 0x42c                       ; B8 2C 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xbda                       ; B8 DA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x42b                       ; B8 2B 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A F3 15 00 00 [FIXUP]
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ax                              ; 50
        mov     ax, 0x434                       ; B8 34 04
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 30 1E 00 00 [FIXUP]
        mov     word ptr [bp - 0x186], ax       ; 89 86 7A FE
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1E04                          ; 74 07
        inc     word ptr [bp - 0x186]           ; FF 86 7A FE
        mov     byte ptr [bx], 0                ; C6 07 00
L_1E04:
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 4B 1E 00 00 [FIXUP]
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A C1 1E 00 00 [FIXUP]
        jmp     L_1EA2                          ; E9 80 00
L_1E22:
        mov     ax, word ptr [bp - 0x186]       ; 8B 86 7A FE
        mov     word ptr [bp - 0x18e], ax       ; 89 86 72 FE
        push    ax                              ; 50
        mov     ax, 0x436                       ; B8 36 04
        push    ax                              ; 50
        call    far _entry_44                   ; 9A B2 17 00 00 [FIXUP]
        mov     word ptr [bp - 0x186], ax       ; 89 86 7A FE
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1E46                          ; 74 07
        inc     word ptr [bp - 0x186]           ; FF 86 7A FE
        mov     byte ptr [bx], 0                ; C6 07 00
L_1E46:
        push    word ptr [bp - 0x186]           ; FF B6 7A FE
        call    far _entry_22                   ; 9A 54 1E 00 00 [FIXUP]
        push    word ptr [bp - 0x18e]           ; FF B6 72 FE
        call    far _entry_22                   ; 9A E0 17 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x18e]       ; 8B 86 72 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xb88                       ; B8 88 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 64 17 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1E73                          ; 75 07
        cmp     word ptr [bp - 0x18c], 0        ; 83 BE 74 FE 00
        je      L_1E9C                          ; 74 29
L_1E73:
        mov     word ptr [bp - 0x190], 1        ; C7 86 70 FE 01 00
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x438                       ; B8 38 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 96 1E 00 00 [FIXUP]
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x18e]       ; 8B 86 72 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 54 17 00 00 [FIXUP]
        jmp     L_1EA2                          ; EB 06
L_1E9C:
        mov     word ptr [bp - 0x18c], 1        ; C7 86 74 FE 01 00
L_1EA2:
        mov     bx, word ptr [bp - 0x186]       ; 8B 9E 7A FE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1EAE                          ; 74 03
        jmp     L_1E22                          ; E9 74 FF
L_1EAE:
        cmp     word ptr [bp - 0x190], 0        ; 83 BE 70 FE 00
        jne     L_1EC5                          ; 75 10
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x43a                       ; B8 3A 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 6F 19 00 00 [FIXUP]
L_1EC5:
        mov     ax, 0x43b                       ; B8 3B 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xbda                       ; B8 DA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 8E 10 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_1EF6                          ; 74 15
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x443                       ; B8 43 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A AA 10 00 00 [FIXUP]
L_1EF6:
        mov     ax, 0x453                       ; B8 53 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x44c                       ; B8 4C 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x44b                       ; B8 4B 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 5C 21 00 00 [FIXUP]
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        mov     word ptr [bp - 0x18a], ax       ; 89 86 76 FE
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ax                              ; 50
        mov     ax, 0x45b                       ; B8 5B 04
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 45 1F 00 00 [FIXUP]
        mov     word ptr [bp - 0x188], ax       ; 89 86 78 FE
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1F5F                          ; 74 2A
        inc     word ptr [bp - 0x188]           ; FF 86 78 FE
        mov     byte ptr [bx], 0                ; C6 07 00
        push    word ptr [bp - 0x188]           ; FF B6 78 FE
        mov     ax, 0x45d                       ; B8 5D 04
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 81 20 00 00 [FIXUP]
        mov     word ptr [bp - 0x188], ax       ; 89 86 78 FE
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1F5F                          ; 74 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x188], ax       ; 89 86 78 FE
L_1F5F:
        push    word ptr [bp - 0x18a]           ; FF B6 76 FE
        call    far _entry_22                   ; 9A 6D 1F 00 00 [FIXUP]
        push    word ptr [bp - 0x188]           ; FF B6 78 FE
        call    far _entry_22                   ; 9A B8 21 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x18a]       ; 8B 86 76 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xbda                       ; B8 DA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 91 1F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1FDA                          ; 75 55
        mov     ax, word ptr [bp - 0x188]       ; 8B 86 78 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xb88                       ; B8 88 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 64 1E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1FDA                          ; 75 41
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_1FBC                          ; 74 1D
        mov     ax, 0x467                       ; B8 67 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x460                       ; B8 60 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x45f                       ; B8 5F 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A A4 20 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1FBC                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1FBE                          ; EB 02
L_1FBC:
        sub     ax, ax                          ; 2B C0
L_1FBE:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_1FDA                          ; 74 15
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x46f                       ; B8 6F 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A C7 20 00 00 [FIXUP]
L_1FDA:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_1FE8                          ; 75 08
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_25                   ; 9A B0 20 00 00 [FIXUP]
L_1FE8:
        mov     ax, 0x477                       ; B8 77 04
        push    ax                              ; 50
        call    far _entry_23                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_202F                          ; 75 3A
        push    word ptr [0x73e]                ; FF 36 3E 07
        call    far USER.GETMENU                ; 9A E2 20 00 00 [FIXUP]
        mov     word ptr [bp - 0x184], ax       ; 89 86 7C FE
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 1A 20 00 00 [FIXUP]
        push    word ptr [bp - 0x184]           ; FF B6 7C FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 2B 20 00 00 [FIXUP]
        push    word ptr [bp - 0x184]           ; FF B6 7C FE
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A F2 20 00 00 [FIXUP]
L_202F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2035 -- offset 0x2035 -- 85 instr
; Funcion compleja: 85 instrucciones, 8 llamadas, 2 branches.
; tags: calls_gdi, calls_kernel, calls_user, complex
; callers: sub_0CE4
; calls (inter): GDI.ADDFONTRESOURCE, KERNEL.ANSIUPPER, KERNEL.LSTRCAT, KERNEL.LSTRCPY, KERNEL.WRITEPROFILESTRING, USER.ENABLEMENUITEM (+2 mas)
;----------------------------------------------------------------------
L_2035:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x82                        ; 81 EC 82 00
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FA 1B 00 00 [FIXUP]
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 85 1E 00 00 [FIXUP]
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.ADDFONTRESOURCE         ; 9A EA 1B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_2078                          ; 75 0D
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_43                   ; 9A 3B 21 00 00 [FIXUP]
L_2073:
        sub     ax, ax                          ; 2B C0
        jmp     L_20F9                          ; E9 81 00
L_2078:
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ax                              ; 50
        mov     ax, 0x47f                       ; B8 7F 04
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 08 1C 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 5C 1B 00 00 [FIXUP]
        mov     ax, 0x481                       ; B8 81 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xbda                       ; B8 DA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 2D 1C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_20B6                          ; 75 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_25                   ; 9A 39 1C 00 00 [FIXUP]
        jmp     L_2073                          ; EB BD
L_20B6:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x487                       ; B8 87 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A D9 20 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1d                        ; B8 1D 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 4D 1C 00 00 [FIXUP]
        push    word ptr [0x73e]                ; FF 36 3E 07
        call    far USER.GETMENU                ; 9A 87 11 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 97 11 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_20F9:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_20FF -- offset 0x20FF -- 125 instr
; Dispatcher: tabla de decisiones cmp+jcc (125 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_1259
; calls (inter): KERNEL.GETPROFILESTRING, KERNEL.LOCALALLOC, KERNEL.LOCALFREE, USER.ENABLEWINDOW, USER.GETPARENT, USER.LOADSTRING (+2 mas)
;----------------------------------------------------------------------
L_20FF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x60                        ; 83 EC 60
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x321                       ; B8 21 03
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 85 16 00 00 [FIXUP]
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        or      ax, ax                          ; 0B C0
        jne     L_2144                          ; 75 22
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETPARENT              ; 9A F8 21 00 00 [FIXUP]
        mov     word ptr [bp + 4], ax           ; 89 46 04
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 05 22 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_43                   ; 9A 13 22 00 00 [FIXUP]
L_213F:
        sub     ax, ax                          ; 2B C0
        jmp     L_2320                          ; E9 DC 01
L_2144:
        mov     ax, 0x48e                       ; B8 8E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x48d                       ; B8 8D 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x60]        ; 8B 46 A0
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x320                       ; B8 20 03
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A AF 21 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x60]        ; 8B 46 A0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_2166:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_2196                          ; 75 28
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_2177                          ; 74 03
        jmp     L_223A                          ; E9 C3 00
L_2177:
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 61 22 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_21EF                          ; 75 5E
        mov     ax, 1                           ; B8 01 00
        jmp     L_21F1                          ; EB 5B
L_2196:
        mov     ax, 0x495                       ; B8 95 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x494                       ; B8 94 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A E0 1D 00 00 [FIXUP]
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 0A 1E 00 00 [FIXUP]
        cmp     byte ptr [bp - 6], 0            ; 80 7E FA 00
        je      L_21DF                          ; 74 1D
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 4B 22 00 00 [FIXUP]
L_21DF:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_21ED                          ; 75 03
        jmp     L_2166                          ; E9 79 FF
L_21ED:
        jmp     L_21DF                          ; EB F0
L_21EF:
        sub     ax, ax                          ; 2B C0
L_21F1:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETPARENT              ; 9A 05 08 00 00 [FIXUP]
        mov     word ptr [bp + 4], ax           ; 89 46 04
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 12 08 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_2219                          ; 74 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_43                   ; 9A 6A 1B 00 00 [FIXUP]
        jmp     L_222F                          ; EB 16
L_2219:
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A A0 1A 00 00 [FIXUP]
L_222F:
        push    word ptr [bp - 0x60]            ; FF 76 A0
        call    far KERNEL.LOCALFREE            ; 9A 9F 17 00 00 [FIXUP]
        jmp     L_213F                          ; E9 05 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_223A -- offset 0x223A -- 97 instr
; Funcion compleja: 97 instrucciones, 5 llamadas, 5 branches.
; tags: calls_kernel, calls_user, complex
; calls (intra): sub_1545
; calls (inter): KERNEL.LOCALFREE, USER.LOADSTRING, USER.SENDDLGITEMMESSAGE, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_223A:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 4A 1A 00 00 [FIXUP]
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x41                        ; B8 41 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 9C 22 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_226E                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_2270                          ; EB 02
L_226E:
        sub     ax, ax                          ; 2B C0
L_2270:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xe6                        ; B8 E6 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A BB 22 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_22A4                          ; 75 1A
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A D7 22 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_22A9                          ; 75 05
L_22A4:
        mov     ax, 1                           ; B8 01 00
        jmp     L_22AB                          ; EB 02
L_22A9:
        sub     ax, ax                          ; 2B C0
L_22AB:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xfa                        ; B8 FA 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A EC 18 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_22DF                          ; 75 1A
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x43                        ; B8 43 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 44 1B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_22E4                          ; 75 05
L_22DF:
        mov     ax, 1                           ; B8 01 00
        jmp     L_22E6                          ; EB 02
L_22E4:
        sub     ax, ax                          ; 2B C0
L_22E6:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 11 23 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    L_1545                          ; E8 41 F2
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xdc                        ; B8 DC 00
        push    ax                              ; 50
        mov     ax, 0xc2c                       ; B8 2C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 80 22 00 00 [FIXUP]
        push    word ptr [bp - 0x60]            ; FF 76 A0
        call    far KERNEL.LOCALFREE            ; 9A 33 22 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_2320:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2326 -- offset 0x2326 -- 59 instr
; Funcion mediana (59 instr, 5 calls).
; tags: calls_gdi, calls_kernel, calls_user, medium
; callers: sub_1B71
; calls (inter): GDI.REMOVEFONTRESOURCE, KERNEL.WRITEPROFILESTRING, USER.ENABLEMENUITEM, USER.GETMENU, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_2326:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x81a                       ; B8 1A 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.REMOVEFONTRESOURCE      ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x49c                       ; B8 9C 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xbda                       ; B8 DA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x49b                       ; B8 9B 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A AF 1F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_2358                          ; 75 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_25                   ; 9A E4 1F 00 00 [FIXUP]
        jmp     L_237F                          ; EB 27
L_2358:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x4a2                       ; B8 A2 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 7B 23 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1d                        ; B8 1D 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A D6 1F 00 00 [FIXUP]
L_237F:
        mov     ax, 0x4a8                       ; B8 A8 04
        push    ax                              ; 50
        call    far _entry_23                   ; 9A ED 1F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_23A6                          ; 75 1A
        push    word ptr [0x73e]                ; FF 36 3E 07
        call    far USER.GETMENU                ; 9A FA 1F 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 0C 20 00 00 [FIXUP]
L_23A6:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

CONTROL_TEXT ENDS

        END
