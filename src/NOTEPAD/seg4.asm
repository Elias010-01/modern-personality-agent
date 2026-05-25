; AUTO-GENERATED from original NOTEPAD segment 4
; segment_size=1874 bytes, flags=0xf130
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
        sub     sp, 0x86                        ; 81 EC 86 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_001D                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0057                          ; 74 3C
        jmp     L_006F                          ; EB 52
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_001D -- offset 0x001D -- 35 instr
; Dispatcher: tabla de decisiones cmp+jcc (35 instr).
; tags: calls_user, dispatcher
; calls (inter): USER.SENDDLGITEMMESSAGE
;----------------------------------------------------------------------
L_001D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        mov     ax, 0x415                       ; B8 15 04
        push    ax                              ; 50
        mov     ax, 0x7b                        ; B8 7B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_004B                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_004E                          ; EB 03
L_004B:
        mov     ax, 0x28c                       ; B8 8C 02
L_004E:
        push    ax                              ; 50
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_014E                          ; E9 F7 00
L_0057:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0074                          ; 74 15
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0067                          ; 75 03
        jmp     L_0186                          ; E9 1F 01
L_0067:
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_006F                          ; 75 03
        jmp     L_018D                          ; E9 1E 01
L_006F:
        sub     ax, ax                          ; 2B C0
        jmp     L_019E                          ; E9 2A 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0074 -- offset 0x0074 -- 9 instr
; Funcion sin clasificar definitiva (9 instr).
; tags: calls_user, small
; calls (inter): USER.GETDLGITEM, USER.ISWINDOWENABLED
;----------------------------------------------------------------------
L_0074:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_008D                          ; 75 03
        jmp     L_014E                          ; E9 C1 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_008D -- offset 0x008D -- 100 instr
; Funcion compleja: 100 instrucciones, 6 llamadas, 5 branches.
; tags: calls_kernel, calls_user, complex
; calls (intra): sub_01A9, sub_0686
; calls (inter): KERNEL.ANSIUPPER, KERNEL.LSTRCPY, USER.ENDDIALOG, USER.GETDLGITEMTEXT
;----------------------------------------------------------------------
L_008D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x7b                        ; B8 7B 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0686                          ; E8 CE 05
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        call    far _entry_33                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00DF                          ; 75 19
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x4c]                 ; FF 36 4C 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_26                   ; 9A 37 01 00 00 [FIXUP]
        jmp     L_014E                          ; EB 6F
L_00DF:
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A 21 02 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LOPEN               ; 9A 7C 02 00 00 [FIXUP]
        mov     word ptr [0x278], ax            ; A3 78 02
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A 37 02 00 00 [FIXUP]
        cmp     word ptr [0x278], 0             ; 83 3E 78 02 00
        jl      L_0153                          ; 7C 3A
        push    word ptr [0x278]                ; FF 36 78 02
        call    far KERNEL._LCLOSE              ; 9A 25 03 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x2e]                 ; FF 36 2E 00
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        mov     ax, 0x124                       ; B8 24 01
        push    ax                              ; 50
        call    far _entry_26                   ; 9A F6 01 00 00 [FIXUP]
        cmp     ax, 7                           ; 3D 07 00
        jne     L_0145                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0147                          ; EB 02
L_0145:
        sub     ax, ax                          ; 2B C0
L_0147:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0153                          ; 74 05
L_014E:
        mov     ax, 1                           ; B8 01 00
        jmp     L_019E                          ; EB 4B
L_0153:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01A9                          ; E8 45 00
        or      ax, ax                          ; 0B C0
        je      L_014E                          ; 74 E6
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
L_017E:
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_014E                          ; EB C8
L_0186:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        jmp     L_017E                          ; EB F1
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_018D -- offset 0x018D -- 12 instr
; Funcion sin clasificar definitiva (12 instr).
; tags: far, wrapper
;----------------------------------------------------------------------
L_018D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_014E                          ; EB B0
L_019E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01A9 -- offset 0x01A9 -- 433 instr
; Dispatcher: tabla de decisiones cmp+jcc (433 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; callers: sub_008D
; calls (intra): sub_0615, sub_06F6
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALREALLOC, KERNEL.LOCALUNLOCK, KERNEL.LSTRCPY, KERNEL.LSTRLEN, KERNEL.OPENFILE (+5 mas)
;----------------------------------------------------------------------
L_01A9:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        push    word ptr [0x28a]                ; FF 36 8A 02
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A D7 02 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jne     L_0248                          ; 75 6B
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_01FC                          ; 74 19
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x48]                 ; FF 36 48 00
L_01EE:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_26                   ; 9A 10 02 00 00 [FIXUP]
        jmp     L_0243                          ; EB 47
L_01FC:
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x46]                 ; FF 36 46 00
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        call    far _entry_26                   ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0243                          ; 75 2A
        mov     ax, 0x294                       ; B8 94 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A 6E 02 00 00 [FIXUP]
        mov     ax, 0x294                       ; B8 94 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_31                   ; 9A 41 03 00 00 [FIXUP]
        mov     ax, 0x294                       ; B8 94 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A AD 02 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0615                          ; E8 D2 03
L_0243:
        sub     ax, ax                          ; 2B C0
        jmp     L_03DC                          ; E9 94 01
L_0248:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0266                          ; 75 18
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28c                       ; B8 8C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa802                      ; B8 02 A8
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A C6 03 00 00 [FIXUP]
        mov     word ptr [0x278], ax            ; A3 78 02
        jmp     L_02B1                          ; EB 4B
L_0266:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A 37 03 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL._LOPEN               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x278], ax            ; A3 78 02
        or      ax, ax                          ; 0B C0
        jge     L_02A5                          ; 7D 1E
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LCREAT              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x278], ax            ; A3 78 02
        or      ax, ax                          ; 0B C0
        jl      L_02A0                          ; 7C 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_02A2                          ; EB 02
L_02A0:
        sub     ax, ax                          ; 2B C0
L_02A2:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_02A5:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A 4D 03 00 00 [FIXUP]
L_02B1:
        cmp     word ptr [0x278], -1            ; 83 3E 78 02 FF
        jne     L_02C6                          ; 75 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x54]                 ; FF 36 54 00
        jmp     L_01EE                          ; E9 28 FF
L_02C6:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x418                       ; B8 18 04
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FB 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x284]                ; FF 36 84 02
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], ds         ; 8C 5E F6
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 7F 03 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [0x278]                ; FF 36 78 02
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    ax                              ; 50
        call    far KERNEL._LWRITE              ; 9A 6D 03 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        je      L_035F                          ; 74 48
        push    word ptr [0x284]                ; FF 36 84 02
        call    far KERNEL.LOCALUNLOCK          ; 9A D5 03 00 00 [FIXUP]
        push    word ptr [0x278]                ; FF 36 78 02
        call    far KERNEL._LCLOSE              ; 9A 96 03 00 00 [FIXUP]
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0351                          ; 74 22
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A FF FF 00 00 [FIXUP]
L_0351:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x42]                 ; FF 36 42 00
        jmp     L_01EE                          ; E9 8F FE
L_035F:
        push    word ptr [0x278]                ; FF 36 78 02
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LWRITE              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A AE 03 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_28                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1c], 0              ; C7 06 1C 00 00 00
        push    word ptr [0x278]                ; FF 36 78 02
        call    far KERNEL._LCLOSE              ; 9A CC 03 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_03B2                          ; 74 12
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x418                       ; B8 18 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
L_03B2:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_03D0                          ; 74 18
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28c                       ; B8 8C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
L_03D0:
        push    word ptr [0x284]                ; FF 36 84 02
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_03DC:
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
        push    si                              ; 56
        cmp     word ptr [0x278], -1            ; 83 3E 78 02 FF
        jne     L_0419                          ; 75 1D
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x2a]                 ; FF 36 2A 00
L_0408:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_26                   ; 9A F4 04 00 00 [FIXUP]
L_0414:
        sub     ax, ax                          ; 2B C0
        jmp     L_0609                          ; E9 F0 01
L_0419:
        push    word ptr [0x28a]                ; FF 36 8A 02
        call    far USER.SETCURSOR              ; 9A C0 01 00 00 [FIXUP]
        push    word ptr [0x278]                ; FF 36 78 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 46 04 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [0x278]                ; FF 36 78 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jg      L_046F                          ; 7F 1F
        jl      L_0459                          ; 7C 07
        cmp     word ptr [bp - 6], 0x4000       ; 81 7E FA 00 40
        ja      L_046F                          ; 77 16
L_0459:
        push    word ptr [0x284]                ; FF 36 84 02
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0486                          ; 75 17
L_046F:
        push    word ptr [0x278]                ; FF 36 78 02
        call    far KERNEL._LCLOSE              ; 9A BA 04 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x3a]                 ; FF 36 3A 00
        jmp     L_0408                          ; EB 82
L_0486:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 71 05 00 00 [FIXUP]
        push    word ptr [0x284]                ; FF 36 84 02
        call    far KERNEL.LOCALLOCK            ; 9A E3 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], ds           ; 8C 5E F8
        push    word ptr [0x278]                ; FF 36 78 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL._LREAD               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x278]                ; FF 36 78 02
        call    far KERNEL._LCLOSE              ; 9A 1E 01 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], 0        ; 26 C6 00 00
        push    es                              ; 06
        push    si                              ; 56
        call    far KERNEL.LSTRLEN              ; 9A 9D 06 00 00 [FIXUP]
        mov     cx, word ptr [bp - 0xc]         ; 8B 4E F4
        dec     cx                              ; 49
        cmp     cx, ax                          ; 3B C8
        jle     L_0503                          ; 7E 2C
        push    word ptr [0x284]                ; FF 36 84 02
        call    far KERNEL.LOCALUNLOCK          ; 9A 3F 05 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x44]                 ; FF 36 44 00
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_26                   ; 9A D9 00 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0615                          ; E8 15 01
        jmp     L_0414                          ; E9 11 FF
L_0503:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        jne     L_0535                          ; 75 26
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        cmp     byte ptr es:[bx], 0x4c          ; 26 80 3F 4C
        jne     L_0535                          ; 75 1A
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        cmp     byte ptr es:[bx], 0x4f          ; 26 80 3F 4F
        jne     L_0535                          ; 75 0E
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        cmp     byte ptr es:[bx], 0x47          ; 26 80 3F 47
        jne     L_0535                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0537                          ; EB 02
L_0535:
        sub     ax, ax                          ; 2B C0
L_0537:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [0x284]                ; FF 36 84 02
        call    far KERNEL.LOCALUNLOCK          ; 9A 1C 03 00 00 [FIXUP]
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 57 06 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_28                   ; 9A 60 06 00 00 [FIXUP]
        mov     word ptr [0x1c], 0              ; C7 06 1C 00 00 00
        call    L_06F6                          ; E8 93 01
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 86 05 00 00 [FIXUP]
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x40c                       ; B8 0C 04
        push    ax                              ; 50
        push    word ptr [0x284]                ; FF 36 84 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A A3 05 00 00 [FIXUP]
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_05B0                          ; 74 20
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        mov     ax, dx                          ; 8B C2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A C9 05 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_15                   ; 9A FF FF 00 00 [FIXUP]
L_05B0:
        push    word ptr [0x18]                 ; FF 36 18 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x115                       ; B8 15 01
        push    ax                              ; 50
        mov     ax, 0x40e                       ; B8 0E 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A E8 05 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 42 06 00 00 [FIXUP]
        push    word ptr [0x1a]                 ; FF 36 1A 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1a]                 ; FF 36 1A 00
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_0609:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0615 -- offset 0x0615 -- 50 instr
; Funcion mediana (50 instr, 2 calls).
; tags: calls_kernel, calls_user, far, medium
; callers: sub_01A9
; calls (inter): KERNEL.LSTRCPY, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_0615:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0631                          ; 74 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_067B                          ; 74 4A
L_0631:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x12e                       ; B8 2E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 72 06 00 00 [FIXUP]
        mov     word ptr [0x1c], 1              ; C7 06 1C 00 01 00
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [0x32]             ; A1 32 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 74 01 00 00 [FIXUP]
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ax                              ; 50
        call    far _entry_28                   ; 9A 87 03 00 00 [FIXUP]
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 10 07 00 00 [FIXUP]
        mov     byte ptr [0x256], 0             ; C6 06 56 02 00
L_067B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0686 -- offset 0x0686 -- 58 instr
; Dispatcher: tabla de decisiones cmp+jcc (58 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_008D
; calls (inter): KERNEL.ANSIPREV, KERNEL.LSTRCAT, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_0686:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        jmp     L_06C2                          ; EB 1D
L_06A5:
        cmp     di, 0x5c                        ; 83 FF 5C
        je      L_06D1                          ; 74 27
        cmp     di, 0x3a                        ; 83 FF 3A
        je      L_06D1                          ; 74 22
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        jbe     L_06D1                          ; 76 1D
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
L_06C2:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        mov     di, ax                          ; 8B F8
        cmp     di, 0x2e                        ; 83 FF 2E
        jne     L_06A5                          ; 75 D4
L_06D1:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0x2e             ; 80 3F 2E
        je      L_06E9                          ; 74 10
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [0x8a]             ; A1 8A 00
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
L_06E9:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06F6 -- offset 0x06F6 -- 36 instr
; Funcion mediana (36 instr, 1 calls).
; tags: calls_user, medium
; callers: sub_01A9
; calls (inter): USER.SENDMESSAGE
;----------------------------------------------------------------------
L_06F6:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [0x1e], 0xa0           ; C7 06 1E 00 A0 00
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 2E 07 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0743                          ; EB 25
L_071E:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x411                       ; B8 11 04
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A D2 01 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0x1e]             ; A1 1E 00
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_0743                          ; 7E 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [0x1e], ax             ; A3 1E 00
L_0743:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jl      L_071E                          ; 7C D0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3

NOTEPAD_TEXT ENDS

        END
