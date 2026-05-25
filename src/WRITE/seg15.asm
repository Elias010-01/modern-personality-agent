; AUTO-GENERATED from original WRITE segment 15
; segment_size=4545 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     dl, al                          ; 8A D0
        cmp     al, 0                           ; 3C 00
        je      L_0019                          ; 74 05
        dec     al                              ; FE C8
        jmp     L_001D                          ; EB 05
        nop                                     ; 90
L_0019:
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
L_001D:
        add     al, 0x41                        ; 04 41
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     byte ptr [si], al               ; 88 04
        mov     byte ptr [si + 1], 0x3a         ; C6 44 01 3A
        mov     byte ptr [si + 2], 0x5c         ; C6 44 02 5C
        add     si, 3                           ; 83 C6 03
        mov     ah, 0x47                        ; B4 47
        int     0x21                            ; CD 21
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        jb      L_0054                          ; 72 1C
        dec     si                              ; 4E
L_0039:
        inc     si                              ; 46
        cmp     al, byte ptr [si]               ; 3A 04
        jne     L_0039                          ; 75 FB
        cmp     byte ptr [si - 1], 0x5c         ; 80 7C FF 5C
        je      L_004B                          ; 74 07
        mov     byte ptr [si], 0x5c             ; C6 04 5C
        inc     si                              ; 46
        mov     byte ptr [si], 0                ; C6 04 00
L_004B:
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        inc     ax                              ; 40
        jmp     L_0059                          ; EB 06
        nop                                     ; 90
L_0054:
        mov     byte ptr [si], 0                ; C6 04 00
        neg     ax                              ; F7 D8
L_0059:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0065 -- offset 0x0065 -- 30 instr
; Llama a servicios DOS via INT 21h (30 instr).
; tags: dos_caller, far, int_21
; callers: sub_0DF5
;----------------------------------------------------------------------
L_0065:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, 0x59                        ; B4 59
        int     0x21                            ; CD 21
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
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0093 -- offset 0x0093 -- 103 instr
; Llama a servicios DOS via INT 21h (103 instr).
; tags: dos_caller, far, int_21
; callers: sub_0DF5
;----------------------------------------------------------------------
L_0093:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, 0x4300                      ; B8 00 43
        int     0x21                            ; CD 21
        mov     ax, cx                          ; 8B C1
        jae     L_00AC                          ; 73 03
        mov     ax, 0xffff                      ; B8 FF FF
L_00AC:
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
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
        mov     ax, 0                           ; B8 00 00
        jb      L_00CE                          ; 72 01
        inc     ax                              ; 40
L_00CE:
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
        sub     sp, 0x42                        ; 83 EC 42
        push    ds                              ; 1E
        push    word ptr [bp + 6]               ; FF 76 06
        push    ds                              ; 1E
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A FF FF 00 00 [FIXUP]
        lea     dx, [bp - 0x44]                 ; 8D 56 BC
        mov     ah, 0x41                        ; B4 41
        int     0x21                            ; CD 21
        jb      L_0100                          ; 72 03
        mov     ax, 0xffff                      ; B8 FF FF
L_0100:
        neg     ax                              ; F7 D8
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
        sub     sp, 0x84                        ; 81 EC 84 00
        push    di                              ; 57
        push    es                              ; 06
        push    ds                              ; 1E
        push    word ptr [bp + 8]               ; FF 76 08
        push    ds                              ; 1E
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A F0 00 00 00 [FIXUP]
        push    ds                              ; 1E
        push    word ptr [bp + 6]               ; FF 76 06
        push    ds                              ; 1E
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A 27 01 00 00 [FIXUP]
        lea     dx, [bp - 0x44]                 ; 8D 56 BC
        push    ds                              ; 1E
        pop     es                              ; 07
        lea     di, [bp - 0x86]                 ; 8D BE 7A FF
        mov     ah, 0x56                        ; B4 56
        int     0x21                            ; CD 21
        jb      L_014C                          ; 72 03
        mov     ax, 0xffff                      ; B8 FF FF
L_014C:
        neg     ax                              ; F7 D8
        pop     es                              ; 07
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_015B -- offset 0x015B -- 20 instr
; Llama a servicios DOS via INT 21h (20 instr).
; tags: dos_caller, far, int_21
; callers: sub_0771
;----------------------------------------------------------------------
L_015B:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        lds     dx, ptr [bp + 8]                ; C5 56 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     ah, 0x3f                        ; B4 3F
        int     0x21                            ; CD 21
        jae     L_0176                          ; 73 02
        neg     ax                              ; F7 D8
L_0176:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0181 -- offset 0x0181 -- 20 instr
; Llama a servicios DOS via INT 21h (20 instr).
; tags: dos_caller, far, int_21
; callers: sub_0A66
;----------------------------------------------------------------------
L_0181:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        lds     dx, ptr [bp + 8]                ; C5 56 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     ah, 0x40                        ; B4 40
        int     0x21                            ; CD 21
        jae     L_019C                          ; 73 02
        neg     ax                              ; F7 D8
L_019C:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01A7 -- offset 0x01A7 -- 97 instr
; Llama a servicios DOS via INT 21h (97 instr).
; tags: dos_caller, far, int_21
; callers: sub_09E4
; calls (intra): sub_0983, sub_0D83
;----------------------------------------------------------------------
L_01A7:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     ah, 0x42                        ; B4 42
        int     0x21                            ; CD 21
        jae     L_01C8                          ; 73 05
        neg     ax                              ; F7 D8
        mov     dx, 0xffff                      ; BA FF FF
L_01C8:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0983                          ; E8 9C 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_01F5                          ; 75 06
L_01EF:
        mov     ax, 0xffff                      ; B8 FF FF
        cdq                                     ; 99
        jmp     L_0269                          ; EB 74
L_01F5:
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01A7                          ; E8 A2 FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      dx, dx                          ; 0B D2
        jge     L_023F                          ; 7D 30
        cmp     dx, -1                          ; 83 FA FF
        jne     L_0247                          ; 75 33
        cmp     ax, 0xfffa                      ; 3D FA FF
        jne     L_0247                          ; 75 2E
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0D83                          ; E8 64 0B
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0247                          ; 74 20
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01A7                          ; E8 72 FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      dx, dx                          ; 0B D2
        jl      L_0247                          ; 7C 08
L_023F:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        jmp     L_0269                          ; EB 22
L_0247:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        cmp     si, 0x13                        ; 83 FE 13
        jl      L_025E                          ; 7C 0B
        cmp     si, 0x1b                        ; 83 FE 1B
        jg      L_025E                          ; 7F 06
        mov     word ptr [0xbda], 1             ; C7 06 DA 0B 01 00
L_025E:
        mov     ax, 0x4000                      ; B8 00 40
        push    ax                              ; 50
        call    far _entry_271                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01EF                          ; EB 86
L_0269:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0275 -- offset 0x0275 -- 300 instr
; Dispatcher: tabla de decisiones cmp+jcc (300 instr).
; tags: dispatcher, far
; calls (intra): sub_058E, sub_0688, sub_0A66
;----------------------------------------------------------------------
L_0275:
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
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 0xc], 0xffff     ; C7 46 F4 FF FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_02CA                          ; EB 29
L_02A1:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, word ptr [0x1bf4]           ; 2B 06 F4 1B
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        ja      L_02C3                          ; 77 0C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_02C3:
        inc     word ptr [bp - 8]               ; FF 46 F8
        add     word ptr [bp - 0xa], 9          ; 83 46 F6 09
L_02CA:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_02A1                          ; 7C CF
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
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
        sub     sp, 0x20                        ; 83 EC 20
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [0x48], 0x7fff         ; 81 3E 48 00 FF 7F
        je      L_0301                          ; 74 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_270                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0314                          ; EB 13
L_0301:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_030C                          ; 75 05
        mov     ax, 6                           ; B8 06 00
        jmp     L_030E                          ; EB 02
L_030C:
        sub     ax, ax                          ; 2B C0
L_030E:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0275                          ; E8 61 FF
L_0314:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 0x14]            ; F7 6E EC
        mov     si, ax                          ; 8B F0
        add     si, word ptr [0x123e]           ; 03 36 3E 12
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
L_0328:
        mov     di, word ptr [0x1bd2]           ; 8B 3E D2 1B
        sub     di, word ptr [bp - 0x14]        ; 2B 7E EC
        cmp     di, 4                           ; 83 FF 04
        jle     L_0339                          ; 7E 05
        mov     ax, 4                           ; B8 04 00
        jmp     L_033B                          ; EB 02
L_0339:
        mov     ax, di                          ; 8B C7
L_033B:
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        jle     L_0359                          ; 7E 19
        test    byte ptr [si + 6], 1            ; F6 44 06 01
        je      L_0376                          ; 74 30
        cmp     word ptr [si + 2], 0x7fff       ; 81 7C 02 FF 7F
        je      L_0376                          ; 74 29
        push    word ptr [si + 2]               ; FF 74 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A66                          ; E8 11 07
        or      ax, ax                          ; 0B C0
        jne     L_0376                          ; 75 1D
L_0359:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jne     L_037E                          ; 75 1F
        cmp     word ptr [si + 2], 0            ; 83 7C 02 00
        jne     L_0370                          ; 75 0B
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_269                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
L_0370:
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        jmp     L_03FB                          ; E9 85 00
L_0376:
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        add     si, 9                           ; 83 C6 09
        jmp     L_0328                          ; EB AA
L_037E:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 4], 1            ; F6 47 04 01
        je      L_03AA                          ; 74 15
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_03AA                          ; 74 0F
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        ja      L_03AA                          ; 77 07
        mov     word ptr [bp - 0x12], 1         ; C7 46 EE 01 00
        jmp     L_03FB                          ; EB 51
L_03AA:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     dx, dx                          ; 2B D2
        mov     cl, 7                           ; B1 07
        call    far _entry_268                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        sub     ax, word ptr [bp - 0x20]        ; 2B 46 E0
        sbb     dx, word ptr [bp - 0x1e]        ; 1B 56 E2
        mov     cl, 7                           ; B1 07
        call    far _entry_267                  ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        mov     word ptr [bp - 0x1c], di        ; 89 7E E4
        cmp     di, 1                           ; 83 FF 01
        jae     L_03E0                          ; 73 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_03E2                          ; EB 02
L_03E0:
        mov     ax, di                          ; 8B C7
L_03E2:
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        jbe     L_03EC                          ; 76 05
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        jmp     L_03F8                          ; EB 0C
L_03EC:
        cmp     di, 1                           ; 83 FF 01
        jae     L_03F6                          ; 73 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_03F8                          ; EB 02
L_03F6:
        mov     ax, di                          ; 8B C7
L_03F8:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
L_03FB:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     dx, dx                          ; 2B D2
        mov     cx, 4                           ; B9 04 00
        div     cx                              ; F7 F1
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, dx                          ; 8B C2
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jle     L_0414                          ; 7E 05
        sub     word ptr [bp + 6], ax           ; 29 46 06
        jmp     L_0419                          ; EB 05
L_0414:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_0419:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        dec     ax                              ; 48
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     cx, 9                           ; B9 09 00
        imul    cx                              ; F7 E9
        mov     si, ax                          ; 8B F0
        add     si, word ptr [0x123e]           ; 03 36 3E 12
        jmp     L_0447                          ; EB 17
L_0430:
        cmp     word ptr [si + 2], 0x7fff       ; 81 7C 02 FF 7F
        je      L_0441                          ; 74 0A
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [si]                   ; FF 34
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_058E                          ; E8 4D 01
L_0441:
        dec     word ptr [bp - 8]               ; FF 4E F8
        sub     si, 9                           ; 83 EE 09
L_0447:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_0430                          ; 7D E1
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, word ptr [bp + 6]           ; 03 46 06
        dec     ax                              ; 48
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        jmp     L_0469                          ; EB 0E
L_045B:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x18]            ; FF 76 E8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_058E                          ; E8 28 01
        dec     word ptr [bp - 0x18]            ; FF 4E E8
L_0469:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jge     L_045B                          ; 7D EA
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xa58]            ; 03 06 58 0A
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0688                          ; E8 FF 01
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     cx, 9                           ; B9 09 00
        imul    cx                              ; F7 E9
        mov     si, ax                          ; 8B F0
        add     si, word ptr [0x123e]           ; 03 36 3E 12
L_049D:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [si + 2], ax           ; 89 44 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [si], ax               ; 89 04
        inc     word ptr [0x1bf4]               ; FF 06 F4 1B
        mov     ax, word ptr [0x1bf4]           ; A1 F4 1B
        mov     word ptr [si + 4], ax           ; 89 44 04
        and     byte ptr [si + 6], 0xfe         ; 80 64 06 FE
        cmp     word ptr [bp - 0xc], 0x80       ; 81 7E F4 80 00
        jge     L_04C2                          ; 7D 05
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        jmp     L_04C5                          ; EB 03
L_04C2:
        mov     ax, 0x80                        ; B8 80 00
L_04C5:
        and     ah, 0x7f                        ; 80 E4 7F
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     cx, 1                           ; 81 E1 01 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     byte ptr [si + 8], 0xff         ; C6 44 08 FF
        mov     di, word ptr [bp - 0xc]         ; 8B 7E F4
        sub     di, 0x80                        ; 81 EF 80 00
        or      di, di                          ; 0B FF
        jle     L_04E9                          ; 7E 04
        mov     ax, di                          ; 8B C7
        jmp     L_04EB                          ; EB 02
L_04E9:
        sub     ax, ax                          ; 2B C0
L_04EB:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        inc     cx                              ; 41
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        inc     ax                              ; 40
        mul     cx                              ; F7 E1
        and     ah, 0x7f                        ; 80 E4 7F
        sub     dx, dx                          ; 2B D2
        div     word ptr [0x1070]               ; F7 36 70 10
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     bx, dx                          ; 8B DA
        add     bx, word ptr [0x1bfe]           ; 03 1E FE 1B
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 6], 0xff         ; C7 46 FA FF 00
        jmp     L_0532                          ; EB 1A
L_0518:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 0x10]            ; F7 6E F0
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [0x123e]           ; 8B 1E 3E 12
        mov     al, byte ptr [bx + di + 8]      ; 8A 41 08
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
L_0532:
        cmp     word ptr [bp - 0x10], 0xff      ; 81 7E F0 FF 00
        jne     L_0518                          ; 75 DF
        cmp     word ptr [bp - 6], 0xff         ; 81 7E FA FF 00
        jne     L_054E                          ; 75 0E
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     di, word ptr [0x1bfe]           ; 8B 3E FE 1B
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        mov     byte ptr [bx + di], al          ; 88 01
        jmp     L_0560                          ; EB 12
L_054E:
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [0x123e]           ; 8B 1E 3E 12
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        mov     byte ptr [bx + di + 8], al      ; 88 41 08
L_0560:
        inc     word ptr [bp + 6]               ; FF 46 06
        inc     word ptr [bp - 8]               ; FF 46 F8
        add     si, 9                           ; 83 C6 09
        dec     word ptr [bp - 0x12]            ; FF 4E EE
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jle     L_057B                          ; 7E 09
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jle     L_057B                          ; 7E 03
        jmp     L_049D                          ; E9 22 FF
L_057B:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_058E -- offset 0x058E -- 97 instr
; Dispatcher: tabla de decisiones cmp+jcc (97 instr).
; tags: dispatcher, far
; callers: sub_0275
; calls (intra): sub_0A66
;----------------------------------------------------------------------
L_058E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        inc     cx                              ; 41
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        inc     ax                              ; 40
        imul    cx                              ; F7 E9
        and     ah, 0x7f                        ; 80 E4 7F
        sub     dx, dx                          ; 2B D2
        div     word ptr [0x1070]               ; F7 36 70 10
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     bx, dx                          ; 8B DA
        mov     si, word ptr [0x1bfe]           ; 8B 36 FE 1B
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 4], 0xff         ; C7 46 FC FF 00
        jmp     L_0672                          ; E9 AB 00
L_05C7:
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 8]               ; F7 6E F8
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        je      L_05E1                          ; 74 03
        jmp     L_0661                          ; E9 80 00
L_05E1:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx], ax               ; 39 07
        jne     L_0661                          ; 75 79
        test    byte ptr [bx + 6], 1            ; F6 47 06 01
        je      L_05F6                          ; 74 08
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A66                          ; E8 70 04
L_05F6:
        cmp     word ptr [bp - 4], 0xff         ; 81 7E FC FF 00
        jne     L_060E                          ; 75 11
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     al, byte ptr [bx + 8]           ; 8A 47 08
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     si, word ptr [0x1bfe]           ; 8B 36 FE 1B
        mov     byte ptr [bx + si], al          ; 88 00
        jmp     L_0625                          ; EB 17
L_060E:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     al, byte ptr [bx + 8]           ; 8A 47 08
        mov     cx, ax                          ; 8B C8
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x123e]           ; 8B 1E 3E 12
        mov     byte ptr [bx + si + 8], cl      ; 88 48 08
L_0625:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     word ptr [bx + 2], 0x7fff       ; C7 47 02 FF 7F
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        and     byte ptr [bx + 6], 0xfe         ; 80 67 06 FE
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [0x1bf4]           ; A1 F4 1B
        mov     cx, word ptr [0x1bd2]           ; 8B 0E D2 1B
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        mov     cx, 4                           ; B9 04 00
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        jne     L_065A                          ; 75 06
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        dec     word ptr [bx + 4]               ; FF 4F 04
L_065A:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     byte ptr [bx + 8], 0xff         ; C6 47 08 FF
L_0661:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     al, byte ptr [bx + 8]           ; 8A 47 08
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_0672:
        cmp     word ptr [bp - 8], 0xff         ; 81 7E F8 FF 00
        je      L_067C                          ; 74 03
        jmp     L_05C7                          ; E9 4B FF
L_067C:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0688 -- offset 0x0688 -- 94 instr
; Dispatcher: tabla de decisiones cmp+jcc (94 instr).
; tags: dispatcher, far
; callers: sub_0275
; calls (intra): sub_0771
;----------------------------------------------------------------------
L_0688:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        push    si                              ; 56
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xc]             ; F7 6E 0C
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     dx, dx                          ; 2B D2
        mov     cl, 7                           ; B1 07
        call    far _entry_268                  ; 9A A1 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     si, word ptr [bx + 0x18]        ; 8B 77 18
        sub     si, word ptr [bp + 0xa]         ; 2B 76 0A
        cmp     word ptr [bp + 6], si           ; 39 76 06
        jbe     L_06D5                          ; 76 03
        mov     word ptr [bp + 6], si           ; 89 76 06
L_06D5:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bx + 0x18], ax        ; 39 47 18
        ja      L_06EE                          ; 77 04
L_06EA:
        sub     ax, ax                          ; 2B C0
        jmp     L_0765                          ; EB 77
L_06EE:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        test    byte ptr [bx + 4], 1            ; F6 47 04 01
        je      L_0714                          ; 74 1D
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_0714                          ; 74 17
        mov     ax, word ptr [0x48]             ; A1 48 00
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        je      L_0714                          ; 74 0F
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        ja      L_0714                          ; 77 07
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_0751                          ; EB 3D
L_0714:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        sbb     dx, word ptr [bp - 0xe]         ; 1B 56 F2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        cmp     dx, word ptr [bp - 0x12]        ; 3B 56 EE
        jl      L_0743                          ; 7C 0F
        jg      L_073B                          ; 7F 05
        cmp     ax, word ptr [bp - 0x14]        ; 3B 46 EC
        jbe     L_0743                          ; 76 08
L_073B:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_0751                          ; EB 0E
L_0743:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        or      dx, dx                          ; 0B D2
        jg      L_0751                          ; 7F 06
        jl      L_06EA                          ; 7C 9D
        or      ax, ax                          ; 0B C0
        jbe     L_06EA                          ; 76 99
L_0751:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0771                          ; E8 0C 00
L_0765:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0771 -- offset 0x0771 -- 94 instr
; Dispatcher: tabla de decisiones cmp+jcc (94 instr).
; tags: dispatcher, far
; callers: sub_0688
; calls (intra): sub_015B, sub_0983, sub_09E4
;----------------------------------------------------------------------
L_0771:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_09E4                          ; E8 5D 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jl      L_07CC                          ; 7C 3E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0983                          ; E8 EF 01
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_015B                          ; E8 B6 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jne     L_07B3                          ; 75 06
L_07AD:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_0853                          ; E9 A0 00
L_07B3:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        cmp     ax, 0x13                        ; 3D 13 00
        jl      L_07E0                          ; 7C 23
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        cmp     ax, 0x1b                        ; 3D 1B 00
        jg      L_07E0                          ; 7F 19
L_07C7:
        mov     ax, 1                           ; B8 01 00
        jmp     L_07E2                          ; EB 16
L_07CC:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        neg     ax                              ; F7 D8
        cmp     ax, 0x13                        ; 3D 13 00
        jl      L_07E0                          ; 7C 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        neg     ax                              ; F7 D8
        cmp     ax, 0x1b                        ; 3D 1B 00
        jle     L_07C7                          ; 7E E7
L_07E0:
        sub     ax, ax                          ; 2B C0
L_07E2:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 0xe], 0          ; 83 7E 0E 00
        je      L_07F1                          ; 74 06
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_07F8                          ; 74 07
L_07F1:
        mov     word ptr [bp + 8], 0            ; C7 46 08 00 00
        jmp     L_0832                          ; EB 3A
L_07F8:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jl      L_0804                          ; 7C 06
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jge     L_0808                          ; 7D 04
L_0804:
        sub     ax, ax                          ; 2B C0
        jmp     L_080B                          ; EB 03
L_0808:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_080B:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_0828                          ; EB 09
L_081F:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     byte ptr [bx], 0x58             ; C6 07 58
L_0828:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        or      ax, ax                          ; 0B C0
        jg      L_081F                          ; 7F ED
L_0832:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_083E                          ; 74 06
        mov     word ptr [0xbda], 1             ; C7 06 DA 0B 01 00
L_083E:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_0847                          ; 75 03
        jmp     L_07AD                          ; E9 66 FF
L_0847:
        mov     ax, 0x4000                      ; B8 00 40
        push    ax                              ; 50
        call    far _entry_271                  ; 9A 63 02 00 00 [FIXUP]
        jmp     L_07AD                          ; E9 5A FF
L_0853:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_085E -- offset 0x085E -- 111 instr
; Dispatcher: tabla de decisiones cmp+jcc (111 instr).
; tags: dispatcher, far
; callers: sub_0DF5
;----------------------------------------------------------------------
L_085E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        push    si                              ; 56
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, 0x80                        ; B8 80 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_157                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        sub     dx, dx                          ; 2B D2
        mov     cl, 7                           ; B1 07
        call    far _entry_268                  ; 9A B2 03 00 00 [FIXUP]
        add     ax, 0x80                        ; 05 80 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_08C0                          ; 74 09
        test    byte ptr [bp - 6], 1            ; F6 46 FA 01
        je      L_08C0                          ; 74 03
        inc     word ptr [bp + 8]               ; FF 46 08
L_08C0:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        sub     cx, word ptr [bp - 6]           ; 2B 4E FA
        sbb     bx, word ptr [bp - 4]           ; 1B 5E FC
        cmp     bx, dx                          ; 3B DA
        jg      L_091F                          ; 7F 4B
        jl      L_08DA                          ; 7C 04
        cmp     cx, ax                          ; 3B C8
        jae     L_091F                          ; 73 45
L_08DA:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0xc]             ; FF 76 F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        call    far _entry_208                  ; 9A 32 09 00 00 [FIXUP]
        mov     cx, 9                           ; B9 09 00
        imul    cx                              ; F7 E9
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, ax                          ; 8B D8
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        and     ax, 1                           ; 25 01 00
        or      ah, 1                           ; 80 CC 01
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        or      byte ptr [bx + 6], 1            ; 80 4F 06 01
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
L_091F:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0977                          ; 74 52
        test    byte ptr [bp - 6], 1            ; F6 46 FA 01
        je      L_0977                          ; 74 4C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_208                  ; 9A FF FF 00 00 [FIXUP]
        mov     cx, 9                           ; B9 09 00
        imul    cx                              ; F7 E9
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     bx, ax                          ; 8B D8
        add     bx, 6                           ; 83 C3 06
        mov     word ptr [bp - 0x14], bx        ; 89 5E EC
        mov     ax, word ptr [bx]               ; 8B 07
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        inc     ax                              ; 40
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        and     word ptr [bx], 1                ; 81 27 01 00
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        shl     ax, 1                           ; D1 E0
        or      word ptr [bx], ax               ; 09 07
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        or      byte ptr [bx + 6], 1            ; 80 4F 06 01
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        add     word ptr [bx], 1                ; 83 07 01
        adc     word ptr [bx + 2], 0            ; 83 57 02 00
L_0977:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0983 -- offset 0x0983 -- 38 instr
; Funcion mediana (38 instr, 1 calls).
; tags: medium
; callers: sub_01A7, sub_0771, sub_09E4, sub_0A66
; calls (intra): sub_0DF5
;----------------------------------------------------------------------
L_0983:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        sub     ah, ah                          ; 2A E4
        and     ax, 0x7f                        ; 25 7F 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xa                         ; 3D 0A 00
        jne     L_09D2                          ; 75 28
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0DF5                          ; E8 43 04
        or      ax, ax                          ; 0B C0
        jne     L_09C4                          ; 75 0E
        mov     ax, 0x4000                      ; B8 00 40
        push    ax                              ; 50
        call    far _entry_271                  ; 9A 6C 0B 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_09DE                          ; EB 1A
L_09C4:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        sub     ah, ah                          ; 2A E4
        and     ax, 0x7f                        ; 25 7F 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_09D2:
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0xeec]       ; 8B 87 EC 0E
L_09DE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_09E4 -- offset 0x09E4 -- 54 instr
; Dispatcher: tabla de decisiones cmp+jcc (54 instr).
; tags: dispatcher
; callers: sub_0771, sub_0A66
; calls (intra): sub_01A7, sub_0983, sub_0D83
;----------------------------------------------------------------------
L_09E4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0983                          ; E8 93 FF
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0983                          ; E8 8A FF
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0A06                          ; 75 05
L_0A01:
        mov     ax, 0xfffb                      ; B8 FB FF
        jmp     L_0A60                          ; EB 5A
L_0A06:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     dx, dx                          ; 2B D2
        mov     cl, 7                           ; B1 07
        call    far _entry_268                  ; 9A BA 06 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01A7                          ; E8 82 F7
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        cmp     ax, 0xfffa                      ; 3D FA FF
        jne     L_0A53                          ; 75 23
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0D83                          ; E8 4D 03
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0A01                          ; 74 C3
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01A7                          ; E8 5A F7
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
L_0A53:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jl      L_0A5D                          ; 7C 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0A60                          ; EB 03
L_0A5D:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0A60:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A66 -- offset 0x0A66 -- 198 instr
; Dispatcher: tabla de decisiones cmp+jcc (198 instr).
; tags: dispatcher, far
; callers: sub_0275, sub_058E
; calls (intra): sub_0181, sub_0983, sub_09E4, sub_0C6B
;----------------------------------------------------------------------
L_0A66:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        cmp     word ptr [0x3c], 0              ; 83 3E 3C 00 00
        je      L_0A85                          ; 74 0B
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0A85                          ; 75 05
L_0A80:
        sub     ax, ax                          ; 2B C0
        jmp     L_0BAF                          ; E9 2A 01
L_0A85:
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        je      L_0A94                          ; 74 08
        mov     ax, word ptr [0x48]             ; A1 48 00
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_0A80                          ; 74 EC
L_0A94:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     ax, word ptr [0x123e]           ; A1 3E 12
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_0BA1                          ; E9 FF 00
L_0AA2:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        je      L_0AB0                          ; 74 03
        jmp     L_0B9A                          ; E9 EA 00
L_0AB0:
        test    byte ptr [bx + 6], 1            ; F6 47 06 01
        jne     L_0AB9                          ; 75 03
        jmp     L_0B9A                          ; E9 E1 00
L_0AB9:
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xa58]            ; 03 06 58 0A
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
L_0ADE:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        add     word ptr [bp - 0xc], 9          ; 83 46 F4 09
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_0B05                          ; 7D 15
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jne     L_0B05                          ; 75 0A
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        cmp     ax, word ptr [bx]               ; 3B 07
        je      L_0ADE                          ; 74 D9
L_0B05:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     ax, word ptr [bx - 3]           ; 8B 47 FD
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        mov     cl, 7                           ; B1 07
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        sub     ax, 0x80                        ; 2D 80 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], 0xffff       ; C7 46 FA FF FF
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    L_09E4                          ; E8 B7 FE
        or      ax, ax                          ; 0B C0
        jl      L_0B55                          ; 7C 24
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0983                          ; E8 4C FE
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0B55                          ; 74 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0181                          ; E8 34 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        je      L_0B83                          ; 74 2E
L_0B55:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_0B7E                          ; 7C 23
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0B73                          ; 75 12
        mov     word ptr [0x3c], 1              ; C7 06 3C 00 01 00
        mov     ax, 0x4003                      ; B8 03 40
L_0B6A:
        push    ax                              ; 50
        call    far _entry_271                  ; 9A 4C 08 00 00 [FIXUP]
        jmp     L_0A80                          ; E9 0D FF
L_0B73:
        mov     word ptr [0x3a], 1              ; C7 06 3A 00 01 00
        mov     ax, 0x2012                      ; B8 12 20
        jmp     L_0B6A                          ; EB EC
L_0B7E:
        mov     ax, 0x4000                      ; B8 00 40
        jmp     L_0B6A                          ; EB E7
L_0B83:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        or      ax, ax                          ; 0B C0
        jle     L_0BA1                          ; 7E 14
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        add     word ptr [bp - 0x14], 9         ; 83 46 EC 09
        and     byte ptr [bx + 6], 0xfe         ; 80 67 06 FE
        jmp     L_0B83                          ; EB E9
L_0B9A:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        add     word ptr [bp - 0xc], 9          ; 83 46 F4 09
L_0BA1:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_0BAC                          ; 7D 03
        jmp     L_0AA2                          ; E9 F6 FE
L_0BAC:
        mov     ax, 1                           ; B8 01 00
L_0BAF:
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
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0x128a]           ; A1 8A 12
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jg      L_0BD4                          ; 7F 03
        jmp     L_0C56                          ; E9 82 00
L_0BD4:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0BEA                          ; EB 11
L_0BD9:
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx + 0xeee], 0x7fff   ; C7 87 EE 0E FF 7F
        inc     word ptr [bp - 4]               ; FF 46 FC
L_0BEA:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0BD9                          ; 7C E7
        mov     word ptr [0x128a], ax           ; A3 8A 12
        jmp     L_0C5E                          ; EB 67
L_0BF7:
        call    L_0C6B                          ; E8 71 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        dec     word ptr [0x128a]               ; FF 0E 8A 12
        mov     ax, word ptr [0x128a]           ; A1 8A 12
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        je      L_0C56                          ; 74 4D
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [0x128a]               ; F7 2E 8A 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si + 0xeee]       ; 8B 84 EE 0E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0x7fff                      ; 3D FF 7F
        je      L_0C56                          ; 74 38
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     di, word ptr [bx]               ; 03 3F
        add     di, 5                           ; 83 C7 05
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        and     al, 0x7f                        ; 24 7F
        mov     cl, byte ptr [di]               ; 8A 0D
        and     cl, 0x80                        ; 80 E1 80
        or      al, cl                          ; 0A C1
        mov     byte ptr [di], al               ; 88 05
        mov     ax, si                          ; 8B C6
        add     ax, 0xeec                       ; 05 EC 0E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 8]               ; F7 6E F8
        add     ax, 0xeec                       ; 05 EC 0E
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
L_0C56:
        mov     ax, word ptr [0x128a]           ; A1 8A 12
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jl      L_0BF7                          ; 7C 99
L_0C5E:
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
; sub_0C6B -- offset 0x0C6B -- 111 instr
; Dispatcher: tabla de decisiones cmp+jcc (111 instr).
; tags: dispatcher, far
; callers: sub_0A66, sub_0DF5
; calls (intra): sub_053B
;----------------------------------------------------------------------
L_0C6B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 2], 0xeec        ; C7 46 FE EC 0E
        mov     word ptr [bp - 0xa], 0xffff     ; C7 46 F6 FF FF
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_0CC2                          ; EB 36
L_0C8C:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, word ptr [0x1bcc]           ; 2B 06 CC 1B
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bx + 2], 0x7fff       ; 81 7F 02 FF 7F
        jne     L_0CA7                          ; 75 06
        mov     ax, word ptr [0x128a]           ; A1 8A 12
        sub     word ptr [bp - 4], ax           ; 29 46 FC
L_0CA7:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        ja      L_0CBB                          ; 77 0C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0CBB:
        inc     word ptr [bp - 8]               ; FF 46 F8
        add     word ptr [bp - 2], 6            ; 83 46 FE 06
L_0CC2:
        mov     ax, word ptr [0x128a]           ; A1 8A 12
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_0C8C                          ; 7C C2
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx + 0xeee], 0x7fff   ; 81 BF EE 0E FF 7F
        je      L_0CE2                          ; 74 08
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_272                  ; 9A 23 0D 00 00 [FIXUP]
L_0CE2:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
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
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        cmp     word ptr [bp + 6], 0x7fff       ; 81 7E 06 FF 7F
        je      L_0D27                          ; 74 29
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [bx + si + 5]      ; 8A 40 05
        sub     ah, ah                          ; 2A E4
        and     ax, 0x7f                        ; 25 7F 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xa                         ; 3D 0A 00
        je      L_0D27                          ; 74 0B
        cmp     ax, 0xb                         ; 3D 0B 00
        je      L_0D27                          ; 74 06
        push    ax                              ; 50
        call    far _entry_272                  ; 9A FF FF 00 00 [FIXUP]
L_0D27:
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
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_0D72                          ; EB 22
L_0D50:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        and     al, 0x7f                        ; 24 7F
        cmp     al, 0xb                         ; 3C 0B
        je      L_0D6A                          ; 74 0E
        cmp     byte ptr [bx + 0x23], 0         ; 80 7F 23 00
        je      L_0D6A                          ; 74 08
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0DF5                          ; E8 8B 00
L_0D6A:
        inc     word ptr [bp - 4]               ; FF 46 FC
        add     word ptr [bp - 6], 0xa2         ; 81 46 FA A2 00
L_0D72:
        mov     ax, word ptr [0xc18]            ; A1 18 0C
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0D50                          ; 7C D6
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D83 -- offset 0x0D83 -- 44 instr
; Funcion mediana (44 instr, 2 calls).
; tags: calls_kernel, medium
; callers: sub_01A7, sub_09E4
; calls (intra): sub_1192
; calls (inter): KERNEL.OPENFILE
;----------------------------------------------------------------------
L_0D83:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        sub     ah, ah                          ; 2A E4
        and     ax, 0x7f                        ; 25 7F 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bx + 8], 2            ; 83 7F 08 02
        jne     L_0DB0                          ; 75 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_0DB2                          ; EB 02
L_0DB0:
        sub     ax, ax                          ; 2B C0
L_0DB2:
        or      ah, 0xa8                        ; 80 CC A8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1192                          ; E8 D4 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, 0x22                        ; 05 22 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.OPENFILE             ; 9A A5 0E 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0DDD                          ; 75 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0DEF                          ; EB 12
L_0DDD:
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bx + 0xeec], ax       ; 89 87 EC 0E
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_0DEF:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0DF5 -- offset 0x0DF5 -- 375 instr
; Dispatcher: tabla de decisiones cmp+jcc (375 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_0983, sub_0C6B
; calls (intra): sub_0065, sub_0093, sub_085E, sub_0C6B, sub_1192
; calls (inter): KERNEL.GETTEMPFILENAME, KERNEL.LOCALFREE, KERNEL.OPENFILE
;----------------------------------------------------------------------
L_0DF5:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x54                        ; 83 EC 54
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        mov     bx, word ptr [si + 0x1e]        ; 8B 5C 1E
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0E21                          ; 75 05
L_0E1C:
        sub     ax, ax                          ; 2B C0
        jmp     L_1003                          ; E9 E2 01
L_0E21:
        cmp     word ptr [si + 8], 2            ; 83 7C 08 02
        jne     L_0E2C                          ; 75 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_0E2E                          ; EB 02
L_0E2C:
        sub     ax, ax                          ; 2B C0
L_0E2E:
        add     ah, 0x28                        ; 80 C4 28
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        test    byte ptr [si + 4], 0x80         ; F6 44 04 80
        je      L_0E40                          ; 74 06
        add     byte ptr [bp - 3], 0x80         ; 80 46 FD 80
        jmp     L_0E4A                          ; EB 0A
L_0E40:
        test    byte ptr [si + 5], 0x80         ; F6 44 05 80
        je      L_0E4A                          ; 74 04
        add     byte ptr [bp - 3], 4            ; 80 46 FD 04
L_0E4A:
        mov     al, byte ptr [0xc3e]            ; A0 3E 0C
        and     al, 0x7f                        ; 24 7F
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        cmp     al, 2                           ; 3C 02
        jb      L_0E85                          ; 72 2F
        cmp     al, 3                           ; 3C 03
        jb      L_0E5E                          ; 72 04
        add     word ptr [bp - 4], 0x10         ; 83 46 FC 10
L_0E5E:
        cmp     word ptr [si + 8], 2            ; 83 7C 08 02
        jne     L_0E85                          ; 75 21
        test    byte ptr [si + 4], 0x80         ; F6 44 04 80
        jne     L_0E85                          ; 75 1B
        mov     bx, word ptr [si + 0x1e]        ; 8B 5C 1E
        push    word ptr [bx]                   ; FF 37
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0093                          ; E8 1F F2
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0E85                          ; 74 09
        test    byte ptr [bp - 0xc], 1          ; F6 46 F4 01
        je      L_0E85                          ; 74 03
        jmp     L_0FC2                          ; E9 3D 01
L_0E85:
        test    byte ptr [si + 4], 0x80         ; F6 44 04 80
        je      L_0E93                          ; 74 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1192                          ; E8 01 03
        jmp     L_0E98                          ; EB 05
L_0E93:
        mov     bx, word ptr [si + 0x1e]        ; 8B 5C 1E
        mov     ax, word ptr [bx]               ; 8B 07
L_0E98:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [si + 0x22]                 ; 8D 44 22
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0EB4                          ; 75 03
        jmp     L_0F7F                          ; E9 CB 00
L_0EB4:
        test    byte ptr [si + 4], 0x80         ; F6 44 04 80
        jne     L_0F27                          ; 75 6D
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ax                              ; 50
        lea     ax, [si + 0x2a]                 ; 8D 44 2A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_196                  ; 9A 60 10 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0F27                          ; 74 59
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ax                              ; 50
        mov     bx, word ptr [si + 0x1e]        ; 8B 5C 1E
        push    word ptr [bx]                   ; FF 37
        call    far _entry_71                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0F27                          ; 74 47
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ax                              ; 50
        call    far _entry_199                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jne     L_0F27                          ; 75 39
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ax                              ; 50
        call    far _entry_167                  ; 9A 68 10 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        inc     ax                              ; 40
        je      L_0F27                          ; 74 2A
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     di, ax                          ; 8B F8
        push    word ptr [bx + di + 0x1e]       ; FF 71 1E
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bx + di + 0x1e], ax   ; 89 41 1E
L_0F27:
        or      byte ptr [si + 4], 0x80         ; 80 4C 04 80
        call    L_0C6B                          ; E8 3D FD
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 8]               ; F7 6E F8
        add     ax, 0xeec                       ; 05 EC 0E
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x54]        ; 8B 5E AC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp - 0x54]        ; 8B 5E AC
        inc     word ptr [0x1bcc]               ; FF 06 CC 1B
        mov     ax, word ptr [0x1bcc]           ; A1 CC 1B
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     di, word ptr [bx]               ; 03 3F
        add     di, 5                           ; 83 C7 05
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        and     al, 0x7f                        ; 24 7F
        mov     cl, byte ptr [di]               ; 8A 0D
        and     cl, 0x80                        ; 80 E1 80
        or      al, cl                          ; 0A C1
        mov     byte ptr [di], al               ; 88 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1003                          ; E9 84 00
L_0F7F:
        cmp     word ptr [si + 8], 2            ; 83 7C 08 02
        jne     L_0FDC                          ; 75 57
        test    byte ptr [si + 4], 0x80         ; F6 44 04 80
        jne     L_0FDC                          ; 75 51
        mov     al, byte ptr [0xc3e]            ; A0 3E 0C
        and     al, 0x7f                        ; 24 7F
        cmp     al, 3                           ; 3C 03
        jb      L_0FC2                          ; 72 2E
        cmp     word ptr [si + 0x24], 5         ; 83 7C 24 05
        jne     L_0FC2                          ; 75 28
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0065                          ; E8 C6 F0
        cmp     ax, 0x20                        ; 3D 20 00
        jne     L_0FC2                          ; 75 1E
        mov     ax, word ptr [0x38]             ; A1 38 00
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        mov     word ptr [0x38], 0              ; C7 06 38 00 00 00
        mov     ax, 0x201f                      ; B8 1F 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A F3 0F 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        mov     word ptr [0x38], ax             ; A3 38 00
        jmp     L_0E1C                          ; E9 5A FE
L_0FC2:
        mov     word ptr [si + 8], 0            ; C7 44 08 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        test    byte ptr [si + 4], 0x80         ; F6 44 04 80
        jne     L_0FD5                          ; 75 03
        jmp     L_0E85                          ; E9 B0 FE
L_0FD5:
        add     byte ptr [bp - 3], 0x80         ; 80 46 FD 80
        jmp     L_0E85                          ; E9 A9 FE
L_0FDC:
        test    byte ptr [si + 5], 0x80         ; F6 44 05 80
        jne     L_0FFA                          ; 75 18
        test    byte ptr [si + 4], 0x80         ; F6 44 04 80
        jne     L_0FFA                          ; 75 12
        cmp     word ptr [si + 0x24], 2         ; 83 7C 24 02
        jne     L_0FFA                          ; 75 0C
        mov     ax, 0x2019                      ; B8 19 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0E1C                          ; E9 22 FE
L_0FFA:
        mov     word ptr [0xbda], 1             ; C7 06 DA 0B 01 00
        jmp     L_0E1C                          ; E9 19 FE
L_1003:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0x46                        ; 83 EC 46
        push    si                              ; 56
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx + 1], 0x3a         ; 80 7F 01 3A
        jne     L_102F                          ; 75 08
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        or      al, 0x80                        ; 0C 80
        jmp     L_1031                          ; EB 02
L_102F:
        sub     ax, ax                          ; 2B C0
L_1031:
        push    ax                              ; 50
        mov     ax, 0xa1                        ; B8 A1 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.GETTEMPFILENAME      ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1055                          ; 75 0D
        mov     ax, 0x4000                      ; B8 00 40
        push    ax                              ; 50
        call    far _entry_271                  ; 9A BB 09 00 00 [FIXUP]
L_1051:
        sub     ax, ax                          ; 2B C0
        jmp     L_1095                          ; EB 40
L_1055:
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_196                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_167                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        je      L_1051                          ; 74 DF
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + si + 0x1e], ax   ; 89 40 1E
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0DF5                          ; E8 67 FD
        or      ax, ax                          ; 0B C0
        je      L_1051                          ; 74 BF
        mov     ax, 1                           ; B8 01 00
L_1095:
        pop     si                              ; 5E
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
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        cmp     byte ptr [bx + si + 0x23], 0    ; 80 78 23 00
        je      L_10C8                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_10F4                          ; EB 2C
L_10C8:
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [bx + si + 5]      ; 8A 40 05
        sub     ah, ah                          ; 2A E4
        and     ax, 0x7f                        ; 25 7F 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xa                         ; 3D 0A 00
        je      L_10EC                          ; 74 06
        push    ax                              ; 50
        call    far _entry_272                  ; 9A DE 0C 00 00 [FIXUP]
L_10EC:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0DF5                          ; E8 01 FD
L_10F4:
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
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_085E                          ; E8 32 F7
        mov     ax, 0x80                        ; B8 80 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx]                   ; FF 37
        call    far _entry_157                  ; 9A 95 08 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        call    far _entry_208                  ; 9A E4 08 00 00 [FIXUP]
        mov     cx, 9                           ; B9 09 00
        imul    cx                              ; F7 E9
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        and     ax, 1                           ; 25 01 00
        or      ah, 1                           ; 80 CC 01
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        or      byte ptr [bx + 6], 1            ; 80 4F 06 01
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        add     word ptr [bx], 0x80             ; 81 07 80 00
        adc     word ptr [bx + 2], 0            ; 83 57 02 00
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        mov     word ptr [bx + 0x18], ax        ; 89 47 18
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1192 -- offset 0x1192 -- 18 instr
; Funcion hoja (no llama a otras, 18 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0D83, sub_0DF5
;----------------------------------------------------------------------
L_1192:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [0x4a]             ; A1 4A 00
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_11A7                          ; 75 07
        mov     word ptr [bp - 2], 0xfe         ; C7 46 FE FE 00
        jmp     L_11B9                          ; EB 12
L_11A7:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_11B4                          ; 75 07
        mov     word ptr [bp - 2], 0xf0         ; C7 46 FE F0 00
        jmp     L_11B9                          ; EB 05
L_11B4:
        mov     word ptr [bp - 2], 0xe0         ; C7 46 FE E0 00
L_11B9:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
