; AUTO-GENERATED from original TERMINAL segment 1
; segment_size=1312 bytes, flags=0x0150
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
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0431                          ; E8 18 04
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
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0390                          ; E8 53 03
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0048 -- offset 0x0048 -- 69 instr
; Dispatcher: tabla de decisiones cmp+jcc (69 instr).
; tags: calls_user, dispatcher
; callers: sub_0100
; calls (intra): sub_0100
; calls (inter): USER.DISPATCHMESSAGE, USER.PEEKMESSAGE, USER.TRANSLATEACCELERATOR, USER.TRANSLATEMESSAGE
;----------------------------------------------------------------------
L_0048:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_51                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00BF                          ; 75 59
L_0066:
        sub     ax, ax                          ; 2B C0
        jmp     L_00FA                          ; E9 8F 00
L_006B:
        cmp     word ptr [bp - 0x10], 0x12      ; 83 7E F0 12
        je      L_0066                          ; 74 F5
        cmp     word ptr [0x2070], 0            ; 83 3E 70 20 00
        je      L_00BF                          ; 74 47
        push    word ptr [0x2070]               ; FF 36 70 20
        push    word ptr [0x205a]               ; FF 36 5A 20
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEACCELERATOR   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00BF                          ; 75 31
        cmp     word ptr [bp - 0x10], 0x100     ; 81 7E F0 00 01
        jne     L_00AB                          ; 75 16
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [0x2070]               ; FF 36 70 20
        call    far _entry_50                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 6                           ; 83 C4 06
        or      ax, ax                          ; 0B C0
        jne     L_00BF                          ; 75 14
L_00AB:
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
L_00BF:
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_006B                          ; 75 95
        cmp     word ptr [0x2070], 0            ; 83 3E 70 20 00
        je      L_00BF                          ; 74 E2
        cmp     word ptr [0x18a], 0             ; 83 3E 8A 01 00
        jne     L_00BF                          ; 75 DB
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        je      L_00BF                          ; 74 D4
        push    word ptr [0x2070]               ; FF 36 70 20
        push    word ptr [0x1c14]               ; FF 36 14 1C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0100                          ; E8 08 00
        jmp     L_00BF                          ; EB C5
L_00FA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0100 -- offset 0x0100 -- 91 instr
; Llama a servicios DOS via INT 21h (91 instr).
; tags: calls_kernel, calls_user, dos_caller, far, int_21
; callers: sub_0048
; calls (intra): sub_0048, sub_02EE, sub_0380
; calls (inter): KERNEL.FATALEXIT, KERNEL.INITTASK, KERNEL.WAITEVENT, USER.GETCOMMERROR, USER.INITAPP, USER.READCOMM
;----------------------------------------------------------------------
L_0100:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        cmp     word ptr [0x196], 0             ; 83 3E 96 01 00
        jg      L_014A                          ; 7F 36
        mov     word ptr [0x198], 0             ; C7 06 98 01 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1cce                      ; B8 CE 1C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        call    far USER.READCOMM               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x196], ax            ; A3 96 01
        or      ax, ax                          ; 0B C0
        jg      L_014A                          ; 7F 18
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.GETCOMMERROR           ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_014A                          ; 74 08
        mov     ax, word ptr [0x196]            ; A1 96 01
        neg     ax                              ; F7 D8
        mov     word ptr [0x196], ax            ; A3 96 01
L_014A:
        cmp     word ptr [0x196], 0             ; 83 3E 96 01 00
        jle     L_0174                          ; 7E 23
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x198]            ; A1 98 01
        mov     cx, 0x1cce                      ; B9 CE 1C
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x196]                ; FF 36 96 01
        call    far _entry_49                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        add     word ptr [0x198], ax            ; 01 06 98 01
        sub     word ptr [0x196], ax            ; 29 06 96 01
L_0174:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        add     byte ptr [bp + di + 0x2b], bl   ; 00 5B 2B
        les     si, ptr [bp + di + 0x18]        ; C4 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_019D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_0199                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
L_0199:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
L_019D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.INITTASK             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01E0                          ; 74 2B
        mov     word ptr [0x57e], 0             ; C7 06 7E 05 00 00
        mov     word ptr [0x570], cx            ; 89 0E 70 05
        push    di                              ; 57
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    dx                              ; 52
        call    L_02EE                          ; E8 27 01
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far KERNEL.WAITEVENT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far USER.INITAPP                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01E0                          ; 74 07
        call    L_0048                          ; E8 6C FE
        push    ax                              ; 50
        call    L_0380                          ; E8 A0 01
L_01E0:
        mov     ax, 0x4cff                      ; B8 FF 4C
        int     0x21                            ; CD 21
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01E5 -- offset 0x01E5 -- 130 instr
; Funcion compleja: 130 instrucciones, 9 llamadas, 1 branches.
; tags: calls_kernel, complex
; callers: sub_04A0
; calls (intra): sub_0495
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALCOMPACT, KERNEL.GLOBALFREE, KERNEL.GLOBALSIZE, KERNEL.LOCALALLOC, KERNEL.LOCALFREE (+2 mas)
;----------------------------------------------------------------------
L_01E5:
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
        call    far KERNEL.LOCALALLOC           ; 9A 17 02 00 00 [FIXUP]
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
        call    far KERNEL.LOCALALLOC           ; 9A 4E 02 00 00 [FIXUP]
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
        call    far KERNEL.LOCALFREE            ; 9A 5D 02 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALSIZE            ; 9A C6 02 00 00 [FIXUP]
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
        je      L_02D3                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_02D5                          ; EB 02
L_02D3:
        sub     ax, ax                          ; 2B C0
L_02D5:
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
        call    L_0495                          ; E8 AB 01
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02EE -- offset 0x02EE -- 59 instr
; Llama a servicios DOS via INT 21h (59 instr).
; tags: complex_iterator, int_21, loop
; callers: sub_0100
;----------------------------------------------------------------------
L_02EE:
        mov     bx, 0x5ce                       ; BB CE 05
L_02F1:
        cmp     bx, 0x5d4                       ; 81 FB D4 05
        jae     L_02FF                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_02F1                          ; EB F2
L_02FF:
        ret                                     ; C3
        mov     bx, 4                           ; BB 04 00
L_0303:
        mov     ax, 0x4400                      ; B8 00 44
        int     0x21                            ; CD 21
        jb      L_0314                          ; 72 0A
        test    dl, 0x80                        ; F6 C2 80
        je      L_0314                          ; 74 05
        or      byte ptr [bx + 0x5a2], 0x40     ; 80 8F A2 05 40
L_0314:
        dec     bx                              ; 4B
        jns     L_0303                          ; 79 EC
        ret                                     ; C3
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     word ptr [0x584], ax            ; A3 84 05
        ret                                     ; C3
        mov     es, word ptr [0x57e]            ; 8E 06 7E 05
        mov     si, word ptr es:[0x2c]          ; 26 8B 36 2C 00
        mov     ax, 0x3500                      ; B8 00 35
        int     0x21                            ; CD 21
        mov     word ptr [0x572], bx            ; 89 1E 72 05
        mov     word ptr [0x574], es            ; 8C 06 74 05
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ax, 0x2500                      ; B8 00 25
        mov     dx, 0x1a0                       ; BA A0 01
        int     0x21                            ; CD 21
        mov     cx, word ptr ss:[0x5c4]         ; 36 8B 0E C4 05
        jcxz    L_0369                          ; E3 22
        lds     ax, ptr ss:[0x5c6]              ; 36 C5 06 C6 05
        mov     dx, ds                          ; 8C DA
        xor     bx, bx                          ; 33 DB
        lcall   ss:[0x5c2]                      ; 36 FF 1E C2 05
        jae     L_035A                          ; 73 03
        jmp     L_01A3                          ; E9 49 FE
L_035A:
        lds     ax, ptr ss:[0x5ca]              ; 36 C5 06 CA 05
        mov     dx, ds                          ; 8C DA
        mov     bx, 3                           ; BB 03 00
        lcall   ss:[0x5c2]                      ; 36 FF 1E C2 05
L_0369:
        push    ss                              ; 16
        pop     ds                              ; 1F
        ret                                     ; C3
        mov     cx, 0x14                        ; B9 14 00
        xor     bx, bx                          ; 33 DB
L_0371:
        test    byte ptr [bx + 0x5a2], 1        ; F6 87 A2 05 01
        je      L_037C                          ; 74 04
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
L_037C:
        inc     bx                              ; 43
        loop    L_0371                          ; E2 F2
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0380 -- offset 0x0380 -- 8 instr
; Funcion sin clasificar definitiva (8 instr).
; tags: small
; callers: sub_0100
; calls (intra): sub_04A0, sub_04D6
;----------------------------------------------------------------------
L_0380:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_04D6                          ; E8 50 01
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_04A0                          ; E8 14 01
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0390 -- offset 0x0390 -- 74 instr
; Funcion mediana (74 instr, 1 calls).
; tags: medium
; calls (intra): sub_04E8
;----------------------------------------------------------------------
L_0390:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    bx                              ; 53
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_03B1                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
L_03B1:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_03CA                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
L_03CA:
        or      ax, ax                          ; 0B C0
        jne     L_03E4                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_041F                          ; EB 3C
        nop                                     ; 90
L_03E4:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
L_03EF:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_03EF                          ; 75 F4
        div     cx                              ; F7 F1
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_04E8                          ; E8 DC 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_0418                          ; 77 07
        jb      L_041B                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_041B                          ; 76 03
L_0418:
        sub     si, 1                           ; 83 EE 01
L_041B:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
L_041F:
        or      di, di                          ; 0B FF
        je      L_042A                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
L_042A:
        pop     bx                              ; 5B
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0431 -- offset 0x0431 -- 46 instr
; Funcion mediana (46 instr, 0 calls).
; tags: medium
;----------------------------------------------------------------------
L_0431:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_0451                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
L_0451:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_046A                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
L_046A:
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
        je      L_048F                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
L_048F:
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0495 -- offset 0x0495 -- 6 instr
; Iterador con bucle (6 instr).
; tags: iterator, loop
; callers: sub_01E5
;----------------------------------------------------------------------
L_0495:
        xor     ch, ch                          ; 32 ED
        jcxz    L_049F                          ; E3 06
L_0499:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_0499                          ; E2 FA
L_049F:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04A0 -- offset 0x04A0 -- 21 instr
; Llama a servicios DOS via INT 21h (21 instr).
; tags: dos_caller, int_21
; callers: sub_0380
; calls (intra): sub_01E5, sub_050E
;----------------------------------------------------------------------
L_04A0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_050E                          ; E8 68 00
        call    L_01E5                          ; E8 3C FD
        or      ah, ah                          ; 0A E4
        je      L_04B7                          ; 74 0A
        cmp     byte ptr [bp + 4], 0            ; 80 7E 04 00
        jne     L_04B7                          ; 75 04
        mov     byte ptr [bp + 4], 0xfe         ; C6 46 04 FE
L_04B7:
        push    ds                              ; 1E
        lds     dx, ptr [0x572]                 ; C5 16 72 05
        mov     ax, 0x2500                      ; B8 00 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     cx, word ptr [0x5c4]            ; 8B 0E C4 05
        jcxz    L_04CF                          ; E3 07
        mov     bx, 2                           ; BB 02 00
        lcall   [0x5c2]                         ; FF 1E C2 05
L_04CF:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     ah, 0x4c                        ; B4 4C
        int     0x21                            ; CD 21
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04D6 -- offset 0x04D6 -- 10 instr
; Funcion sin clasificar definitiva (10 instr).
; tags: wrapper
; callers: sub_0380
;----------------------------------------------------------------------
L_04D6:
        mov     bx, 0x5d4                       ; BB D4 05
L_04D9:
        cmp     bx, 0x5d4                       ; 81 FB D4 05
        jae     L_04E7                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_04D9                          ; EB F2
L_04E7:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04E8 -- offset 0x04E8 -- 19 instr
; Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0390
;----------------------------------------------------------------------
L_04E8:
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
; sub_050E -- offset 0x050E -- 10 instr
; Funcion sin clasificar definitiva (10 instr).
; tags: wrapper
; callers: sub_04A0
;----------------------------------------------------------------------
L_050E:
        mov     bx, 0x5d4                       ; BB D4 05
L_0511:
        cmp     bx, 0x5d6                       ; 81 FB D6 05
        jae     L_051F                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_0511                          ; EB F2
L_051F:
        ret                                     ; C3

TERMINAL_TEXT ENDS

        END
