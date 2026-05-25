; AUTO-GENERATED from original WRITE segment 2
; segment_size=2653 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x4a                        ; 83 EC 4A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x48]                 ; 8D 46 B8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far _entry_56                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 9], 0            ; C6 46 F7 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 23 01 00 00 [FIXUP]
        mov     word ptr [0xc32], ax            ; A3 32 0C
        or      ax, ax                          ; 0B C0
        jne     L_003F                          ; 75 05
L_003A:
        sub     ax, ax                          ; 2B C0
        jmp     L_0351                          ; E9 12 03
L_003F:
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 19 02 00 00 [FIXUP]
        mov     word ptr [0x62], ax             ; A3 62 00
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x782], ax            ; A3 82 07
        mov     ax, 0x201b                      ; B8 1B 20
        push    ax                              ; 50
        call    L_0A2F                          ; E8 D7 09
        mov     word ptr [0x6ee], ax            ; A3 EE 06
        or      ax, ax                          ; 0B C0
        je      L_00B3                          ; 74 54
        mov     ax, 0x201d                      ; B8 1D 20
        push    ax                              ; 50
        call    L_0A2F                          ; E8 C9 09
        mov     word ptr [0x6f0], ax            ; A3 F0 06
        or      ax, ax                          ; 0B C0
        je      L_00B3                          ; 74 46
        mov     ax, 0x2021                      ; B8 21 20
        push    ax                              ; 50
        call    L_0A2F                          ; E8 BB 09
        mov     word ptr [0x6f2], ax            ; A3 F2 06
        or      ax, ax                          ; 0B C0
        je      L_00B3                          ; 74 38
        mov     ax, 0x4005                      ; B8 05 40
        push    ax                              ; 50
        call    L_0A2F                          ; E8 AD 09
        mov     word ptr [0x6f4], ax            ; A3 F4 06
        or      ax, ax                          ; 0B C0
        je      L_00B3                          ; 74 2A
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    L_0A2F                          ; E8 9F 09
        mov     word ptr [0x6e8], ax            ; A3 E8 06
        or      ax, ax                          ; 0B C0
        je      L_00B3                          ; 74 1C
        mov     ax, 0x2022                      ; B8 22 20
        push    ax                              ; 50
        call    L_0A2F                          ; E8 91 09
        mov     word ptr [0x6ea], ax            ; A3 EA 06
        or      ax, ax                          ; 0B C0
        je      L_00B3                          ; 74 0E
        mov     ax, 0x2013                      ; B8 13 20
        push    ax                              ; 50
        call    L_0A2F                          ; E8 83 09
        mov     word ptr [0x6ec], ax            ; A3 EC 06
        or      ax, ax                          ; 0B C0
        jne     L_0119                          ; 75 66
L_00B3:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_54                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x6f4], 0             ; 83 3E F4 06 00
        je      L_00CC                          ; 74 09
        push    word ptr [0x6f4]                ; FF 36 F4 06
        call    far KERNEL.GLOBALFREE           ; 9A D8 00 00 00 [FIXUP]
L_00CC:
        cmp     word ptr [0x6e8], 0             ; 83 3E E8 06 00
        je      L_00DC                          ; 74 09
        push    word ptr [0x6e8]                ; FF 36 E8 06
        call    far KERNEL.GLOBALFREE           ; 9A E8 00 00 00 [FIXUP]
L_00DC:
        cmp     word ptr [0x6ea], 0             ; 83 3E EA 06 00
        je      L_00EC                          ; 74 09
        push    word ptr [0x6ea]                ; FF 36 EA 06
        call    far KERNEL.GLOBALFREE           ; 9A F8 00 00 00 [FIXUP]
L_00EC:
        cmp     word ptr [0x6ec], 0             ; 83 3E EC 06 00
        je      L_00FC                          ; 74 09
        push    word ptr [0x6ec]                ; FF 36 EC 06
        call    far KERNEL.GLOBALFREE           ; 9A 0C 03 00 00 [FIXUP]
L_00FC:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x38], ax             ; A3 38 00
        mov     word ptr [0xbda], ax            ; A3 DA 0B
        cmp     word ptr [0x3a], ax             ; 39 06 3A 00
        jne     L_0113                          ; 75 09
        cmp     word ptr [0x3c], ax             ; 39 06 3C 00
        jne     L_0113                          ; 75 03
        jmp     L_0335                          ; E9 22 02
L_0113:
        mov     ax, 0x201d                      ; B8 1D 20
        jmp     L_0344                          ; E9 2B 02
L_0119:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f01                      ; B8 01 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 38 01 00 00 [FIXUP]
        mov     word ptr [0x1bc6], ax           ; A3 C6 1B
        or      ax, ax                          ; 0B C0
        je      L_00B3                          ; 74 85
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 3D 02 00 00 [FIXUP]
        mov     word ptr [0x1240], ax           ; A3 40 12
        or      ax, ax                          ; 0B C0
        jne     L_0146                          ; 75 03
        jmp     L_00B3                          ; E9 6D FF
L_0146:
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0x1ba                       ; B8 BA 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADACCELERATORS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x12b6], ax           ; A3 B6 12
        or      ax, ax                          ; 0B C0
        jne     L_015E                          ; 75 03
        jmp     L_00B3                          ; E9 55 FF
L_015E:
        mov     ax, 0x120                       ; B8 20 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1ce                       ; B8 CE 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1114                      ; B8 14 11
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A B4 01 00 00 [FIXUP]
        mov     ax, 0xd2                        ; B8 D2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x138                       ; B8 38 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0195                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0198                          ; EB 03
L_0195:
        mov     ax, 1                           ; B8 01 00
L_0198:
        mov     word ptr [0xa6a], ax            ; A3 6A 0A
        mov     ax, 0x28e                       ; B8 8E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x294                       ; B8 94 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x29e                       ; B8 9E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A D7 01 00 00 [FIXUP]
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        mov     byte ptr [0x28], al             ; A2 28 00
        mov     ax, 0x28e                       ; B8 8E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a0                       ; B8 A0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2aa                       ; B8 AA 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    far _entry_284                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        cmp     ax, 1                           ; 3D 01 00
        je      L_01F1                          ; 74 05
        cmp     ax, 0x2c                        ; 3D 2C 00
        jne     L_01F7                          ; 75 06
L_01F1:
        mov     word ptr [0x30e], 0             ; C7 06 0E 03 00 00
L_01F7:
        call    far _entry_283                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_024B                          ; 75 49
        push    word ptr [0x782]                ; FF 36 82 07
        call    L_035C                          ; E8 53 01
        or      ax, ax                          ; 0B C0
        jne     L_0210                          ; 75 03
        jmp     L_003A                          ; E9 2A FE
L_0210:
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 27 02 00 00 [FIXUP]
        cmp     ax, 0x20                        ; 3D 20 00
        jl      L_0230                          ; 7C 0E
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x20                        ; 3D 20 00
        jge     L_0235                          ; 7D 05
L_0230:
        mov     ax, 0x1d4                       ; B8 D4 01
        jmp     L_0238                          ; EB 03
L_0235:
        mov     ax, 0x1dc                       ; B8 DC 01
L_0238:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa68], ax            ; A3 68 0A
        or      ax, ax                          ; 0B C0
        jne     L_0262                          ; 75 1A
        jmp     L_00B3                          ; E9 68 FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_024B -- offset 0x024B -- 94 instr
; Dispatcher: tabla de decisiones cmp+jcc (94 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_0489
; calls (inter): GDI.SELECTOBJECT, KERNEL.GETINSTANCEDATA, KERNEL.GLOBALFREE, USER.CREATEWINDOW, USER.GETDC, USER.SHOWWINDOW
;----------------------------------------------------------------------
L_024B:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0xa68                       ; B8 68 0A
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0262                          ; 75 03
        jmp     L_00B3                          ; E9 51 FE
L_0262:
        push    word ptr [0x782]                ; FF 36 82 07
        call    L_0489                          ; E8 20 02
        or      ax, ax                          ; 0B C0
        jne     L_0270                          ; 75 03
        jmp     L_00B3                          ; E9 43 FE
L_0270:
        mov     ax, 0x140                       ; B8 40 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
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
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_029E                          ; 75 03
        jmp     L_00B3                          ; E9 15 FE
L_029E:
        cmp     word ptr [0x75c], 0             ; 83 3E 5C 07 00
        je      L_02A8                          ; 74 03
        jmp     L_00B3                          ; E9 0B FE
L_02A8:
        call    far _entry_282                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x780]                ; FF 36 80 07
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [0x78c]                ; FF 36 8C 07
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x48]                 ; 8D 46 B8
        push    ax                              ; 50
        call    far _entry_281                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02D0                          ; 75 03
        jmp     L_00B3                          ; E9 E3 FD
L_02D0:
        cmp     word ptr [0x75c], 0             ; 83 3E 5C 07 00
        je      L_02DA                          ; 74 03
        jmp     L_00B3                          ; E9 D9 FD
L_02DA:
        call    far _entry_255                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x798], 0             ; 83 3E 98 07 00
        jne     L_02E9                          ; 75 03
        jmp     L_00B3                          ; E9 CA FD
L_02E9:
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x38], 0              ; C7 06 38 00 00 00
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_0300:
        cmp     word ptr [0x6ee], 0             ; 83 3E EE 06 00
        je      L_0310                          ; 74 09
        push    word ptr [0x6ee]                ; FF 36 EE 06
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_0310:
        cmp     word ptr [0x6f0], 0             ; 83 3E F0 06 00
        je      L_0320                          ; 74 09
        push    word ptr [0x6f0]                ; FF 36 F0 06
        call    far KERNEL.GLOBALFREE           ; 9A 2C 03 00 00 [FIXUP]
L_0320:
        cmp     word ptr [0x6f2], 0             ; 83 3E F2 06 00
        je      L_0330                          ; 74 09
        push    word ptr [0x6f2]                ; FF 36 F2 06
        call    far KERNEL.GLOBALFREE           ; 9A C8 00 00 00 [FIXUP]
L_0330:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_0351                          ; EB 1C
L_0335:
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_0341                          ; 74 05
        mov     ax, 0x2021                      ; B8 21 20
        jmp     L_0344                          ; EB 03
L_0341:
        mov     ax, 0x201b                      ; B8 1B 20
L_0344:
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_0300                          ; EB AF
L_0351:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_035C -- offset 0x035C -- 108 instr
; Funcion compleja: 108 instrucciones, 2 llamadas, 4 branches.
; tags: calls_user, complex
; calls (inter): USER.LOADICON, USER.REGISTERCLASS
;----------------------------------------------------------------------
L_035C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A C6 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], 0x23      ; C7 46 E6 23 00
        mov     word ptr [bp - OFFSET _entry_1], 0xffff ; C7 46 E8 FF FF [FIXUP]
        mov     word ptr [bp - OFFSET _entry_1], 0xffff ; C7 46 EA FF FF [FIXUP]
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ax                              ; 50
        mov     ax, 0x1e4                       ; B8 E4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, 0x1ec                       ; B8 EC 01
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], ds           ; 8C 5E FA
        mov     ax, 0x140                       ; B8 40 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ds           ; 8C 5E FE
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A EE 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03BA                          ; 75 05
L_03B5:
        sub     ax, ax                          ; 2B C0
        jmp     L_0483                          ; E9 C9 00
L_03BA:
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A 02 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], 0x28      ; C7 46 E6 28 00
        mov     word ptr [bp - OFFSET _entry_2], 0xffff ; C7 46 E8 FF FF [FIXUP]
        mov     word ptr [bp - OFFSET _entry_2], 0xffff ; C7 46 EA FF FF [FIXUP]
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, 0x14e                       ; B8 4E 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ds           ; 8C 5E FE
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A 30 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_03B5                          ; 74 BF
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A 47 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], 0x28      ; C7 46 E6 28 00
        mov     word ptr [bp - OFFSET _entry_3], 0xffff ; C7 46 E8 FF FF [FIXUP]
        mov     word ptr [bp - OFFSET _entry_3], 0xffff ; C7 46 EA FF FF [FIXUP]
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [0x1240]           ; A1 40 12
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, 0x15a                       ; B8 5A 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ds           ; 8C 5E FE
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A 75 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_043B                          ; 75 03
        jmp     L_03B5                          ; E9 7A FF
L_043B:
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], 0x20      ; C7 46 E6 20 00
        mov     word ptr [bp - OFFSET _entry_4], 0xffff ; C7 46 E8 FF FF [FIXUP]
        mov     word ptr [bp - OFFSET _entry_4], 0xffff ; C7 46 EA FF FF [FIXUP]
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [0x1240]           ; A1 40 12
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, 0x168                       ; B8 68 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ds           ; 8C 5E FE
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0480                          ; 75 03
        jmp     L_03B5                          ; E9 35 FF
L_0480:
        mov     ax, 1                           ; B8 01 00
L_0483:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0489 -- offset 0x0489 -- 482 instr
; Funcion compleja: 482 instrucciones, 11 llamadas, 33 branches.
; tags: calls_gdi, calls_kernel, calls_user, complex
; callers: sub_024B
; calls (inter): GDI.CREATESOLIDBRUSH, GDI.DELETEOBJECT, GDI.SELECTOBJECT, KERNEL.MAKEPROCINSTANCE, USER.CHANGEMENU, USER.CREATEWINDOW (+5 mas)
;----------------------------------------------------------------------
L_0489:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, OFFSET _entry_5             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_5             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A B6 04 00 00 [FIXUP]
        mov     word ptr [0x129a], ax           ; A3 9A 12
        mov     word ptr [0x129c], dx           ; 89 16 9C 12
        or      ax, dx                          ; 0B C2
        jne     L_04AA                          ; 75 03
        jmp     L_072F                          ; E9 85 02
L_04AA:
        mov     ax, OFFSET _entry_6             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_6             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A D4 04 00 00 [FIXUP]
        mov     word ptr [0x110c], ax           ; A3 0C 11
        mov     word ptr [0x110e], dx           ; 89 16 0E 11
        or      ax, dx                          ; 0B C2
        jne     L_04C8                          ; 75 03
        jmp     L_072F                          ; E9 67 02
L_04C8:
        mov     ax, OFFSET _entry_12            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_12            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A F2 04 00 00 [FIXUP]
        mov     word ptr [0xc10], ax            ; A3 10 0C
        mov     word ptr [0xc12], dx            ; 89 16 12 0C
        or      ax, dx                          ; 0B C2
        jne     L_04E6                          ; 75 03
        jmp     L_072F                          ; E9 49 02
L_04E6:
        mov     ax, OFFSET _entry_7             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_7             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 10 05 00 00 [FIXUP]
        mov     word ptr [0x13b0], ax           ; A3 B0 13
        mov     word ptr [0x13b2], dx           ; 89 16 B2 13
        or      ax, dx                          ; 0B C2
        jne     L_0504                          ; 75 03
        jmp     L_072F                          ; E9 2B 02
L_0504:
        mov     ax, OFFSET _entry_10            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_10            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 2E 05 00 00 [FIXUP]
        mov     word ptr [0x1132], ax           ; A3 32 11
        mov     word ptr [0x1134], dx           ; 89 16 34 11
        or      ax, dx                          ; 0B C2
        jne     L_0522                          ; 75 03
        jmp     L_072F                          ; E9 0D 02
L_0522:
        mov     ax, OFFSET _entry_9             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_9             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 4C 05 00 00 [FIXUP]
        mov     word ptr [0x1214], ax           ; A3 14 12
        mov     word ptr [0x1216], dx           ; 89 16 16 12
        or      ax, dx                          ; 0B C2
        jne     L_0540                          ; 75 03
        jmp     L_072F                          ; E9 EF 01
L_0540:
        mov     ax, OFFSET _entry_11            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_11            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 6A 05 00 00 [FIXUP]
        mov     word ptr [0x13d4], ax           ; A3 D4 13
        mov     word ptr [0x13d6], dx           ; 89 16 D6 13
        or      ax, dx                          ; 0B C2
        jne     L_055E                          ; 75 03
        jmp     L_072F                          ; E9 D1 01
L_055E:
        mov     ax, OFFSET _entry_8             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_8             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 88 05 00 00 [FIXUP]
        mov     word ptr [0xe12], ax            ; A3 12 0E
        mov     word ptr [0xe14], dx            ; 89 16 14 0E
        or      ax, dx                          ; 0B C2
        jne     L_057C                          ; 75 03
        jmp     L_072F                          ; E9 B3 01
L_057C:
        mov     ax, OFFSET _entry_13            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_13            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A A6 05 00 00 [FIXUP]
        mov     word ptr [0x129e], ax           ; A3 9E 12
        mov     word ptr [0x12a0], dx           ; 89 16 A0 12
        or      ax, dx                          ; 0B C2
        jne     L_059A                          ; 75 03
        jmp     L_072F                          ; E9 95 01
L_059A:
        mov     ax, OFFSET _entry_16            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_16            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A C4 05 00 00 [FIXUP]
        mov     word ptr [0xc14], ax            ; A3 14 0C
        mov     word ptr [0xc16], dx            ; 89 16 16 0C
        or      ax, dx                          ; 0B C2
        jne     L_05B8                          ; 75 03
        jmp     L_072F                          ; E9 77 01
L_05B8:
        mov     ax, OFFSET _entry_17            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_17            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A E2 05 00 00 [FIXUP]
        mov     word ptr [0x1398], ax           ; A3 98 13
        mov     word ptr [0x139a], dx           ; 89 16 9A 13
        or      ax, dx                          ; 0B C2
        jne     L_05D6                          ; 75 03
        jmp     L_072F                          ; E9 59 01
L_05D6:
        mov     ax, OFFSET _entry_18            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_18            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 00 06 00 00 [FIXUP]
        mov     word ptr [0x1392], ax           ; A3 92 13
        mov     word ptr [0x1394], dx           ; 89 16 94 13
        or      ax, dx                          ; 0B C2
        jne     L_05F4                          ; 75 03
        jmp     L_072F                          ; E9 3B 01
L_05F4:
        mov     ax, OFFSET _entry_14            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_14            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 1E 06 00 00 [FIXUP]
        mov     word ptr [0xc0c], ax            ; A3 0C 0C
        mov     word ptr [0xc0e], dx            ; 89 16 0E 0C
        or      ax, dx                          ; 0B C2
        jne     L_0612                          ; 75 03
        jmp     L_072F                          ; E9 1D 01
L_0612:
        mov     ax, OFFSET _entry_15            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_15            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1106], ax           ; A3 06 11
        mov     word ptr [0x1108], dx           ; 89 16 08 11
        or      ax, dx                          ; 0B C2
        jne     L_0630                          ; 75 03
        jmp     L_072F                          ; E9 FF 00
L_0630:
        mov     ax, OFFSET _entry_19            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_19            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 5A 06 00 00 [FIXUP]
        mov     word ptr [0x12aa], ax           ; A3 AA 12
        mov     word ptr [0x12ac], dx           ; 89 16 AC 12
        or      ax, dx                          ; 0B C2
        jne     L_064E                          ; 75 03
        jmp     L_072F                          ; E9 E1 00
L_064E:
        mov     ax, OFFSET _entry_20            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_20            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 78 06 00 00 [FIXUP]
        mov     word ptr [0x1028], ax           ; A3 28 10
        mov     word ptr [0x102a], dx           ; 89 16 2A 10
        or      ax, dx                          ; 0B C2
        jne     L_066C                          ; 75 03
        jmp     L_072F                          ; E9 C3 00
L_066C:
        mov     ax, OFFSET _entry_21            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_21            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 96 06 00 00 [FIXUP]
        mov     word ptr [0x1074], ax           ; A3 74 10
        mov     word ptr [0x1076], dx           ; 89 16 76 10
        or      ax, dx                          ; 0B C2
        jne     L_068A                          ; 75 03
        jmp     L_072F                          ; E9 A5 00
L_068A:
        mov     ax, OFFSET _entry_22            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_22            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A B4 06 00 00 [FIXUP]
        mov     word ptr [0x13ce], ax           ; A3 CE 13
        mov     word ptr [0x13d0], dx           ; 89 16 D0 13
        or      ax, dx                          ; 0B C2
        jne     L_06A8                          ; 75 03
        jmp     L_072F                          ; E9 87 00
L_06A8:
        mov     ax, OFFSET _entry_23            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_23            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A CF 06 00 00 [FIXUP]
        mov     word ptr [0xc40], ax            ; A3 40 0C
        mov     word ptr [0xc42], dx            ; 89 16 42 0C
        or      ax, dx                          ; 0B C2
        je      L_072F                          ; 74 6C
        mov     ax, OFFSET _entry_24            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_24            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A EA 06 00 00 [FIXUP]
        mov     word ptr [0xbf4], ax            ; A3 F4 0B
        mov     word ptr [0xbf6], dx            ; 89 16 F6 0B
        or      ax, dx                          ; 0B C2
        je      L_072F                          ; 74 51
        mov     ax, OFFSET _entry_25            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_25            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 05 07 00 00 [FIXUP]
        mov     word ptr [0x128c], ax           ; A3 8C 12
        mov     word ptr [0x128e], dx           ; 89 16 8E 12
        or      ax, dx                          ; 0B C2
        je      L_072F                          ; 74 36
        mov     ax, OFFSET _entry_29            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_29            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 20 07 00 00 [FIXUP]
        mov     word ptr [0x13c6], ax           ; A3 C6 13
        mov     word ptr [0x13c8], dx           ; 89 16 C8 13
        or      ax, dx                          ; 0B C2
        je      L_072F                          ; 74 1B
        mov     ax, OFFSET _entry_30            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_30            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 98 04 00 00 [FIXUP]
        mov     word ptr [0xf98], ax            ; A3 98 0F
        mov     word ptr [0xf9a], dx            ; 89 16 9A 0F
        or      ax, dx                          ; 0B C2
        jne     L_0733                          ; 75 04
L_072F:
        sub     ax, ax                          ; 2B C0
        jmp     L_0736                          ; EB 03
L_0733:
        mov     ax, 1                           ; B8 01 00
L_0736:
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
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x780], ax            ; A3 80 07
        push    ax                              ; 50
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x794], ax            ; A3 94 07
        or      ax, ax                          ; 0B C0
        jne     L_075F                          ; 75 03
        jmp     L_09AB                          ; E9 4C 02
L_075F:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_07C5                          ; EB 5F
L_0766:
        mov     ax, 0x7e                        ; B8 7E 00
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        add     ax, 0x13e6                      ; 05 E6 13
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        inc     ax                              ; 40
        cdq                                     ; 99
        mov     cx, word ptr [0x7b4]            ; 8B 0E B4 07
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        mov     cx, 0x7e                        ; B9 7E 00
        imul    cx                              ; F7 E9
        add     ax, 0x13e6                      ; 05 E6 13
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0x7b4]            ; 03 06 B4 07
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, word ptr [0x7b4]            ; 8B 0E B4 07
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        mov     cx, 0x7e                        ; B9 7E 00
        imul    cx                              ; F7 E9
        add     ax, 0x13e6                      ; 05 E6 13
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     ax, bx                          ; 8B C3
        dec     ax                              ; 48
        dec     ax                              ; 48
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     word ptr [bx + 4], 0xffff       ; C7 47 04 FF FF
        mov     word ptr [bx + 6], 0xffff       ; C7 47 06 FF FF
        inc     word ptr [bp - 0xa]             ; FF 46 F6
L_07C5:
        mov     ax, word ptr [0x7b4]            ; A1 B4 07
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_0766                          ; 7C 99
        mov     word ptr [0x13b6], 0x13e6       ; C7 06 B6 13 E6 13
        mov     ax, 0xffff                      ; B8 FF FF
        cdq                                     ; 99
        mov     word ptr [0xe8a], ax            ; A3 8A 0E
        mov     word ptr [0xe8c], dx            ; 89 16 8C 0E
        mov     word ptr [0x1bf8], ax           ; A3 F8 1B
        mov     word ptr [0x1bfa], dx           ; 89 16 FA 1B
        call    far _entry_285                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_07F1                          ; 75 03
        jmp     L_09AB                          ; E9 BA 01
L_07F1:
        push    word ptr [0x780]                ; FF 36 80 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x900                       ; B8 00 09
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A 3D 08 00 00 [FIXUP]
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        mov     ax, 0xa6e                       ; B8 6E 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xa6e                       ; B8 6E 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xf2f0                      ; B8 F0 F2
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x1f4                       ; B8 F4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     dx, 0x5400                      ; BA 00 54
        push    dx                              ; 52
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        push    word ptr [0x782]                ; FF 36 82 07
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A 93 08 00 00 [FIXUP]
        mov     word ptr [0x10ac], ax           ; A3 AC 10
        or      ax, ax                          ; 0B C0
        jne     L_086C                          ; 75 03
        jmp     L_09AB                          ; E9 3F 01
L_086C:
        mov     byte ptr [0x10b2], 2            ; C6 06 B2 10 02
        mov     ax, 0x1f4                       ; B8 F4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        mov     dx, 0x5400                      ; BA 00 54
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        push    word ptr [0x782]                ; FF 36 82 07
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A C8 08 00 00 [FIXUP]
        mov     word ptr [0x10ae], ax           ; A3 AE 10
        or      ax, ax                          ; 0B C0
        jne     L_08A1                          ; 75 03
        jmp     L_09AB                          ; E9 0A 01
L_08A1:
        mov     byte ptr [0x10b3], 2            ; C6 06 B3 10 02
        mov     ax, 0x1f4                       ; B8 F4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        mov     dx, 0x5400                      ; BA 00 54
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        push    word ptr [0x782]                ; FF 36 82 07
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A F3 08 00 00 [FIXUP]
        mov     word ptr [0xee8], ax            ; A3 E8 0E
        or      ax, ax                          ; 0B C0
        jne     L_08D6                          ; 75 03
        jmp     L_09AB                          ; E9 D5 00
L_08D6:
        mov     ax, 0x168                       ; B8 68 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     dx, 0x5400                      ; BA 00 54
        push    dx                              ; 52
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        push    word ptr [0x782]                ; FF 36 82 07
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A 93 02 00 00 [FIXUP]
        mov     word ptr [0x13ca], ax           ; A3 CA 13
        or      ax, ax                          ; 0B C0
        jne     L_0901                          ; 75 03
        jmp     L_09AB                          ; E9 AA 00
L_0901:
        push    ax                              ; 50
        call    far USER.GETDC                  ; 9A B2 02 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jne     L_0911                          ; 75 03
        jmp     L_09AB                          ; E9 9A 00
L_0911:
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 56 09 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_092B                          ; 75 03
        jmp     L_09AB                          ; E9 80 00
L_092B:
        push    word ptr [bp - 8]               ; FF 76 F8
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A BC 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0942                          ; 75 0A
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09AB                          ; EB 69
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0942 -- offset 0x0942 -- 87 instr
; Funcion compleja: 87 instrucciones, 8 llamadas, 1 branches.
; tags: calls_gdi, calls_user, complex, far
; calls (inter): GDI.SELECTOBJECT, GDI.SETBKCOLOR, GDI.SETBKMODE, GDI.SETTEXTCOLOR, USER.GETDC, USER.GETSYSCOLOR (+2 mas)
;----------------------------------------------------------------------
L_0942:
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 44 00 00 00 [FIXUP]
        mov     word ptr [0x1100], ax           ; A3 00 11
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 66 09 00 00 [FIXUP]
        mov     word ptr [0x10f8], ax           ; A3 F8 10
        push    word ptr [0x10ac]               ; FF 36 AC 10
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x12ae]               ; FF 36 AE 12
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A A5 09 00 00 [FIXUP]
        push    word ptr [0x10ae]               ; FF 36 AE 10
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09B1                          ; EB 06
L_09AB:
        mov     word ptr [0x75c], 1             ; C7 06 5C 07 01 00
L_09B1:
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
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     word ptr [0x10aa], si           ; 89 36 AA 10
        mov     word ptr [0x10f4], si           ; 89 36 F4 10
        push    si                              ; 56
        call    far USER.GETDC                  ; 9A 03 09 00 00 [FIXUP]
        mov     word ptr [0x10b0], ax           ; A3 B0 10
        or      ax, ax                          ; 0B C0
        jne     L_09E7                          ; 75 08
        mov     word ptr [0x75c], 1             ; C7 06 5C 07 01 00
        jmp     L_0A23                          ; EB 3C
L_09E7:
        push    word ptr [0x10b0]               ; FF 36 B0 10
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A 4A 09 00 00 [FIXUP]
        push    word ptr [0x10b0]               ; FF 36 B0 10
        push    word ptr [0x786]                ; FF 36 86 07
        push    word ptr [0x784]                ; FF 36 84 07
        call    far GDI.SETBKCOLOR              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x10b0]               ; FF 36 B0 10
        push    word ptr [0x78a]                ; FF 36 8A 07
        push    word ptr [0x788]                ; FF 36 88 07
        call    far GDI.SETTEXTCOLOR            ; 9A 5D 09 00 00 [FIXUP]
        push    word ptr [0x10b0]               ; FF 36 B0 10
        push    word ptr [0x78c]                ; FF 36 8C 07
        call    far GDI.SELECTOBJECT            ; 9A 30 09 00 00 [FIXUP]
L_0A23:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A2F -- offset 0x0A2F -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: calls_user, small
; calls (inter): USER.LOADSTRING
;----------------------------------------------------------------------
L_0A2F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [0x782]                ; FF 36 82 07
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xa6e                       ; B8 6E 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 25 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0A4F                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0A58                          ; EB 09
L_0A4F:
        mov     ax, 0xa6e                       ; B8 6E 0A
        push    ax                              ; 50
        call    far _entry_200                  ; 9A FF FF 00 00 [FIXUP]
L_0A58:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
