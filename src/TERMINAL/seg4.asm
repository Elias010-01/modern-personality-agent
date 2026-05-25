; AUTO-GENERATED from original TERMINAL segment 4
; segment_size=744 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

TERMINAL_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0017                          ; 74 07
        cmp     word ptr [0x448], 0             ; 83 3E 48 04 00
        je      L_0024                          ; 74 0D
L_0017:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0042                          ; 75 25
        cmp     word ptr [0x448], 0             ; 83 3E 48 04 00
        je      L_0042                          ; 74 1E
L_0024:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0034                          ; 74 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_003C                          ; EB 08
L_0034:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
L_003C:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x448], ax            ; A3 48 04
L_0042:
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
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_62                   ; 9A BE 00 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        or      ax, dx                          ; 0B C2
        jne     L_0070                          ; 75 03
        jmp     L_00F7                          ; E9 87 00
L_0070:
        mov     ax, 0xf02                       ; B8 02 0F
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0096                          ; 75 12
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0x1dce                      ; B8 CE 1D
        push    ax                              ; 50
        call    far _entry_27                   ; 9A E4 00 00 00 [FIXUP]
        jmp     L_00F7                          ; EB 61
L_0096:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.OPENCLIPBOARD          ; 9A 1A 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00EF                          ; 74 4D
        call    far USER.EMPTYCLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.GLOBALLOCK           ; 9A 34 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        je      L_00D8                          ; 74 1F
        push    dx                              ; 52
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.GLOBALUNLOCK         ; 9A 7C 01 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far USER.SETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00E8                          ; EB 10
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00D8 -- offset 0x00D8 -- 69 instr
; Funcion mediana (69 instr, 7 calls).
; tags: calls_kernel, calls_user, far, medium
; calls (intra): sub_0190
; calls (inter): KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, USER.CLOSECLIPBOARD, USER.GETCLIPBOARDDATA, USER.OPENCLIPBOARD
;----------------------------------------------------------------------
L_00D8:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
L_00E8:
        call    far USER.CLOSECLIPBOARD         ; 9A 81 01 00 00 [FIXUP]
        jmp     L_00F7                          ; EB 08
L_00EF:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_00F7:
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
        sub     sp, 0x1c                        ; 83 EC 1C
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        je      L_0185                          ; 74 6F
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0185                          ; 74 63
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        je      L_0180                          ; 74 4E
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        jmp     L_0159                          ; EB 08
L_0151:
        add     word ptr [bp - 0x12], 1         ; 83 46 EE 01
        adc     word ptr [bp - 0x10], 0         ; 83 56 F0 00
L_0159:
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0151                          ; 75 EC
        push    word ptr [0x2070]               ; FF 36 70 20
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    L_0190                          ; E8 18 00
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
L_0180:
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
L_0185:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0190 -- offset 0x0190 -- 128 instr
; Dispatcher: tabla de decisiones cmp+jcc (128 instr).
; tags: calls_user, dispatcher
; callers: sub_00D8
; calls (inter): USER.GETTICKCOUNT, USER.GETTIMERRESOLUTION, USER.LOADCURSOR, USER.SETCURSOR
;----------------------------------------------------------------------
L_0190:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A DF 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_01B5:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_01BE                          ; 7D 03
        jmp     L_02DB                          ; E9 1D 01
L_01BE:
        jg      L_01C9                          ; 7F 09
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        ja      L_01C9                          ; 77 03
        jmp     L_02DB                          ; E9 12 01
L_01C9:
        call    far USER.GETTIMERRESOLUTION     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        call    far USER.GETTICKCOUNT           ; 9A 3D 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        mov     ax, 0x4240                      ; B8 40 42
        mov     dx, 0xf                         ; BA 0F 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far _entry_54                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_020A                          ; 75 05
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
L_020A:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        jg      L_021F                          ; 7F 0C
        jl      L_021A                          ; 7C 05
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jae     L_021F                          ; 73 05
L_021A:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_0222                          ; EB 03
L_021F:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
L_0222:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        jne     L_0259                          ; 75 24
        mov     word ptr [bp - 0x14], 1         ; C7 46 EC 01 00
        jmp     L_0259                          ; EB 1D
L_023C:
        call    far USER.GETTICKCOUNT           ; 9A 4C 02 00 00 [FIXUP]
        cmp     dx, word ptr [bp - 0x10]        ; 3B 56 F0
        jne     L_024B                          ; 75 05
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        je      L_0259                          ; 74 0E
L_024B:
        call    far USER.GETTICKCOUNT           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        dec     word ptr [bp - 0x14]            ; FF 4E EC
L_0259:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jg      L_023C                          ; 7F DD
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        sub     word ptr [bp + 4], ax           ; 29 46 04
        sbb     word ptr [bp + 6], dx           ; 19 56 06
L_0269:
        dec     word ptr [bp - 6]               ; FF 4E FA
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jge     L_0275                          ; 7D 03
        jmp     L_01B5                          ; E9 40 FF
L_0275:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        cmp     al, 0xa                         ; 3C 0A
        je      L_0269                          ; 74 E4
        call    far _entry_60                   ; 9A BE 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jle     L_02DB                          ; 7E 4D
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_48                   ; 9A D3 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jle     L_02DB                          ; 7E 2B
        cmp     word ptr [0x26c], 0             ; 83 3E 6C 02 00
        je      L_0269                          ; 74 B2
        cmp     byte ptr [bp - 8], 0xd          ; 80 7E F8 0D
        jne     L_0269                          ; 75 AC
        call    far _entry_60                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jle     L_02DB                          ; 7E 15
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x44a                       ; B8 4A 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_48                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jg      L_0269                          ; 7F 8E
L_02DB:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      00ah                            ; 0A

TERMINAL_TEXT ENDS

        END
