; AUTO-GENERATED from original CONTROL segment 5
; segment_size=1677 bytes, flags=0xf130
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
        sub     sp, 8                           ; 83 EC 08
        mov     byte ptr [bp - 8], 0x41         ; C6 46 F8 41
L_0011:
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.GETTEMPDRIVE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      dx, dx                          ; 0B D2
        je      L_002D                          ; 74 08
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        cmp     byte ptr [bp - 6], al           ; 38 46 FA
        je      L_0037                          ; 74 0A
L_002D:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        mov     byte ptr [bx], al               ; 88 07
        jmp     L_0046                          ; EB 0F
L_0037:
        inc     byte ptr [bp - 8]               ; FE 46 F8
        cmp     byte ptr [bp - 8], 0x5a         ; 80 7E F8 5A
        jle     L_0011                          ; 7E D1
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx], 0x41             ; C6 07 41
L_0046:
        mov     byte ptr [bx + 1], 0            ; C6 47 01 00
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
        sub     sp, 0x122                       ; 81 EC 22 01
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x120]                ; 8D 86 E0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A E6 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x8c], ax        ; 89 86 74 FF
        cmp     ax, 0xffff                      ; 3D FF FF
        jg      L_0088                          ; 7F 03
        jmp     L_019B                          ; E9 13 01
L_0088:
        push    ax                              ; 50
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 C8 04
        cmp     word ptr [bp - 0x8a], 0x5a4d    ; 81 BE 76 FF 4D 5A
        jne     L_00B6                          ; 75 16
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        or      ax, word ptr [bp - 0x4c]        ; 0B 46 B4
        je      L_00B6                          ; 74 0E
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        mov     dx, word ptr [bp - 0x4c]        ; 8B 56 B4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        jmp     L_00BE                          ; EB 08
L_00B6:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_00BE:
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 01 01 00 00 [FIXUP]
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 7E 04
        cmp     word ptr [bp - 0x4a], 0x454e    ; 81 7E B6 4E 45
        je      L_00EC                          ; 74 03
        jmp     L_0192                          ; E9 A6 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00EC -- offset 0x00EC -- 313 instr
; Dispatcher: tabla de decisiones cmp+jcc (313 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_048E, sub_053E, sub_0560, sub_0588, sub_05B0, sub_064C (+1 mas)
; calls (inter): KERNEL.ANSIUPPER, KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LSTRCMP (+3 mas)
;----------------------------------------------------------------------
L_00EC:
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        sub     dx, dx                          ; 2B D2
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        adc     dx, word ptr [bp - 6]           ; 13 56 FA
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 49 01 00 00 [FIXUP]
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 49 04
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x101                       ; 05 01 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        cwde                                    ; 98
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 33 04
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx + si + 0x101], 0   ; C6 80 01 01 00
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 01 04
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        cwde                                    ; 98
        cmp     ax, 0x80                        ; 3D 80 00
        jl      L_016A                          ; 7C 02
        mov     al, 0x80                        ; B0 80
L_016A:
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x80                        ; 05 80 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        cwde                                    ; 98
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 DD 03
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx + si + 0x80], 0    ; C6 80 80 00 00
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
L_0192:
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 15 04
L_019B:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
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
        sub     sp, 0x264                       ; 81 EC 64 02
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x1e2]                ; 8D 86 1E FE
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_048E                          ; E8 C1 02
        or      ax, ax                          ; 0B C0
        je      L_01E5                          ; 74 14
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_048E                          ; E8 AD 02
        or      ax, ax                          ; 0B C0
        jne     L_01EA                          ; 75 05
L_01E5:
        sub     ax, ax                          ; 2B C0
        jmp     L_0483                          ; E9 99 02
L_01EA:
        lea     ax, [bp - 0x1e2]                ; 8D 86 1E FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_024B                          ; 75 4C
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        lea     ax, [bp - 0x160]                ; 8D 86 A0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 92 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_021F                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0221                          ; EB 02
L_021F:
        sub     ax, ax                          ; 2B C0
L_0221:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0232                          ; 74 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_43                   ; 9A AC 02 00 00 [FIXUP]
        jmp     L_01E5                          ; EB B3
L_0232:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x160]                ; 8D 86 A0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A C5 02 00 00 [FIXUP]
        jmp     L_01E5                          ; EB 9A
L_024B:
        mov     word ptr [bp - 0x86], 0x9c40    ; C7 86 7A FF 40 9C
        jmp     L_0260                          ; EB 0D
L_0253:
        cmp     word ptr [bp - 0x86], 0         ; 83 BE 7A FF 00
        je      L_0278                          ; 74 1E
        sub     word ptr [bp - 0x86], 0x1388    ; 81 AE 7A FF 88 13
L_0260:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10e], ax       ; 89 86 F2 FE
        or      ax, ax                          ; 0B C0
        je      L_0253                          ; 74 DB
L_0278:
        cmp     word ptr [bp - 0x86], 0         ; 83 BE 7A FF 00
        jne     L_02D5                          ; 75 56
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x51                        ; B8 51 00
        push    ax                              ; 50
        lea     ax, [bp - 0x160]                ; 8D 86 A0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A BF 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_029F                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_02A1                          ; EB 02
L_029F:
        sub     ax, ax                          ; 2B C0
L_02A1:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_02B2                          ; 74 0A
L_02A8:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02C9                          ; EB 17
L_02B2:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x160]                ; 8D 86 A0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
L_02C9:
        push    word ptr [bp - 0x10e]           ; FF B6 F2 FE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01E5                          ; E9 10 FF
L_02D5:
        lea     ax, [bp - 0x1e2]                ; 8D 86 1E FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x264]                ; 8D 86 9C FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2000                      ; B8 00 20
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 04 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        cmp     ax, 0xffff                      ; 3D FF FF
        jle     L_02C9                          ; 7E D6
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x264]                ; 8D 86 9C FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1001                      ; B8 01 10
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e4], ax       ; 89 86 1C FE
        cmp     ax, 0xffff                      ; 3D FF FF
        jg      L_0314                          ; 7F 03
        jmp     L_0415                          ; E9 01 01
L_0314:
        push    word ptr [bp - 0x10e]           ; FF B6 F2 FE
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10c], ax       ; 89 86 F4 FE
        mov     word ptr [bp - 0x10a], dx       ; 89 96 F6 FE
L_0325:
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        push    word ptr [bp - 0x10a]           ; FF B6 F6 FE
        push    word ptr [bp - 0x10c]           ; FF B6 F4 FE
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 26 02
        mov     word ptr [bp - 0x162], ax       ; 89 86 9E FE
        or      ax, ax                          ; 0B C0
        jne     L_0374                          ; 75 32
        push    word ptr [bp - 0x1e4]           ; FF B6 1C FE
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_064C                          ; E8 FD 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_066B                          ; E8 15 03
        push    word ptr [bp - 0x1e4]           ; FF B6 1C FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 51 02
        push    word ptr [bp - 0x10e]           ; FF B6 F2 FE
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 3F 02
        jmp     L_0477                          ; E9 03 01
L_0374:
        push    word ptr [bp - 0x1e4]           ; FF B6 1C FE
        push    word ptr [bp - 0x10a]           ; FF B6 F6 FE
        push    word ptr [bp - 0x10c]           ; FF B6 F4 FE
        push    word ptr [bp - 0x162]           ; FF B6 9E FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0588                          ; E8 FF 01
        cmp     ax, word ptr [bp - 0x162]       ; 3B 86 9E FE
        je      L_0325                          ; 74 96
        push    word ptr [bp - 0x1e4]           ; FF B6 1C FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 18 02
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_053E                          ; E8 9B 01
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 04 02
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x52                        ; B8 52 00
        push    ax                              ; 50
        lea     ax, [bp - 0x108]                ; 8D 86 F8 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03CC                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_03CE                          ; EB 02
L_03CC:
        sub     ax, ax                          ; 2B C0
L_03CE:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_03EC                          ; 74 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_43                   ; 9A 2C 02 00 00 [FIXUP]
        jmp     L_0409                          ; EB 1D
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03EC -- offset 0x03EC -- 42 instr
; Funcion mediana (42 instr, 4 calls).
; tags: calls_kernel, calls_user, medium
; calls (intra): sub_05B0
; calls (inter): KERNEL.ANSIUPPER, KERNEL.GLOBALUNLOCK, USER.LOADSTRING
;----------------------------------------------------------------------
L_03EC:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x108]                ; 8D 86 F8 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 70 04 00 00 [FIXUP]
L_0409:
        push    word ptr [bp - 0x10e]           ; FF B6 F2 FE
        call    far KERNEL.GLOBALUNLOCK         ; 9A 64 03 00 00 [FIXUP]
        jmp     L_02C9                          ; E9 B4 FE
L_0415:
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 92 01
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0x53                        ; B8 53 00
        push    ax                              ; 50
        lea     ax, [bp - 0x108]                ; 8D 86 F8 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 12 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_043E                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0440                          ; EB 02
L_043E:
        sub     ax, ax                          ; 2B C0
L_0440:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A D8 03 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0457                          ; 74 03
        jmp     L_02A8                          ; E9 51 FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0457 -- offset 0x0457 -- 23 instr
; Funcion sin clasificar definitiva (23 instr).
; tags: calls_kernel, far, small
; calls (inter): KERNEL.GLOBALFREE
;----------------------------------------------------------------------
L_0457:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x108]                ; 8D 86 F8 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02C9                          ; E9 52 FE
L_0477:
        push    word ptr [bp - 0x10e]           ; FF B6 F2 FE
        call    far KERNEL.GLOBALFREE           ; 9A CE 02 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_0483:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_048E -- offset 0x048E -- 89 instr
; Llama a servicios DOS via INT 21h (89 instr).
; tags: calls_kernel, dos_caller, far, int_21
; callers: sub_00EC
; calls (inter): KERNEL.LSTRCPY, KERNEL.OPENFILE
;----------------------------------------------------------------------
L_048E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x82                        ; 81 EC 82 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 78 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_04DB                          ; 7C 26
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x7a]                 ; 8D 46 86
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KEYBOARD.6                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        jmp     L_04DD                          ; EB 02
L_04DB:
        sub     ax, ax                          ; 2B C0
L_04DD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     ah, 0x4e                        ; B4 4E
        int     0x21                            ; CD 21
        jb      L_0509                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_0509:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        mov     ah, 0x4f                        ; B4 4F
        int     0x21                            ; CD 21
        jb      L_0531                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_0531:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_053E -- offset 0x053E -- 20 instr
; Llama a servicios DOS via INT 21h (20 instr).
; tags: dos_caller, far, int_21
; callers: sub_00EC
;----------------------------------------------------------------------
L_053E:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        lds     dx, ptr [bp + 6]                ; C5 56 06
        mov     ah, 0x41                        ; B4 41
        int     0x21                            ; CD 21
        jb      L_0554                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_0554:
        pop     ds                              ; 1F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0560 -- offset 0x0560 -- 22 instr
; Llama a servicios DOS via INT 21h (22 instr).
; tags: dos_caller, far, int_21
; callers: sub_00EC
;----------------------------------------------------------------------
L_0560:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        lds     dx, ptr [bp + 8]                ; C5 56 08
        mov     ah, 0x3f                        ; B4 3F
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        int     0x21                            ; CD 21
        jae     L_057C                          ; 73 02
        xor     ax, ax                          ; 33 C0
L_057C:
        pop     ds                              ; 1F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0588 -- offset 0x0588 -- 22 instr
; Llama a servicios DOS via INT 21h (22 instr).
; tags: dos_caller, far, int_21
; callers: sub_00EC
;----------------------------------------------------------------------
L_0588:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        lds     dx, ptr [bp + 8]                ; C5 56 08
        mov     ah, 0x40                        ; B4 40
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        int     0x21                            ; CD 21
        jae     L_05A4                          ; 73 02
        xor     ax, ax                          ; 33 C0
L_05A4:
        pop     ds                              ; 1F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05B0 -- offset 0x05B0 -- 95 instr
; Llama a servicios DOS via INT 21h (95 instr).
; tags: complex_iterator, far, int_21, string_op
; callers: sub_00EC, sub_03EC
;----------------------------------------------------------------------
L_05B0:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
        jae     L_05C7                          ; 73 02
        xor     ax, ax                          ; 33 C0
L_05C7:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        lds     dx, ptr [bp + 6]                ; C5 56 06
        mov     ah, 0x3b                        ; B4 3B
        int     0x21                            ; CD 21
        jb      L_05EA                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_05EA:
        pop     ds                              ; 1F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
        add     al, 0x41                        ; 04 41
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        les     di, ptr [bp + 8]                ; C4 7E 08
        cld                                     ; FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      al, al                          ; 0A C0
        jne     L_062D                          ; 75 06
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
        inc     al                              ; FE C0
L_062D:
        mov     dl, al                          ; 8A D0
        mov     al, 0x5c                        ; B0 5C
        stosb   byte ptr es:[di], al            ; AA
        push    es                              ; 06
        pop     ds                              ; 1F
        mov     si, di                          ; 8B F7
        mov     ah, 0x47                        ; B4 47
        int     0x21                            ; CD 21
        jb      L_063E                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_063E:
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_064C -- offset 0x064C -- 17 instr
; Llama a servicios DOS via INT 21h (17 instr).
; tags: dos_caller, far, int_21
; callers: sub_00EC
;----------------------------------------------------------------------
L_064C:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x5700                      ; B8 00 57
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        int     0x21                            ; CD 21
        mov     ax, cx                          ; 8B C1
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_066B -- offset 0x066B -- 19 instr
; Llama a servicios DOS via INT 21h (19 instr).
; tags: dos_caller, int_21
; callers: sub_00EC
;----------------------------------------------------------------------
L_066B:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x5701                      ; B8 01 57
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        int     0x21                            ; CD 21
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

CONTROL_TEXT ENDS

        END
