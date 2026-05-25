; AUTO-GENERATED from original PAINT segment 31
; segment_size=3720 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

PAINT_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0016                          ; 75 03
        jmp     L_0104                          ; E9 EE 00
L_0016:
        mov     word ptr [0x88e], 0             ; C7 06 8E 08 00 00
        mov     word ptr [0x892], 0             ; C7 06 92 08 00 00
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        mov     word ptr [0x890], ax            ; A3 90 08
        cdq                                     ; 99
        shl     ax, 1                           ; D1 E0
        rcl     dx, 1                           ; D1 D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A 49 00 00 00 [FIXUP]
        mov     word ptr [0xba8], ax            ; A3 A8 0B
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        mov     word ptr [0x88c], ax            ; A3 8C 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x10e6], ax           ; A3 E6 10
        cmp     word ptr [0xba8], 0             ; 83 3E A8 0B 00
        je      L_005B                          ; 74 04
        or      ax, ax                          ; 0B C0
        jne     L_008F                          ; 75 34
L_005B:
        cmp     word ptr [0xba8], 0             ; 83 3E A8 0B 00
        je      L_006B                          ; 74 09
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALFREE           ; 9A 77 00 00 00 [FIXUP]
L_006B:
        cmp     word ptr [0x10e6], 0            ; 83 3E E6 10 00
        je      L_007B                          ; 74 09
        push    word ptr [0x10e6]               ; FF 36 E6 10
        call    far KERNEL.GLOBALFREE           ; 9A 5A 01 00 00 [FIXUP]
L_007B:
        mov     word ptr [0x890], 0             ; C7 06 90 08 00 00
        mov     word ptr [0x88c], 0             ; C7 06 8C 08 00 00
        mov     word ptr [0x3c2], 0             ; C7 06 C2 03 00 00
        jmp     L_0104                          ; EB 75
L_008F:
        mov     word ptr [0x3c2], 1             ; C7 06 C2 03 01 00
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALLOCK           ; 9A B9 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALUNLOCK         ; 9A D8 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_142                  ; 9A AE 01 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0xe6e]                ; FF 36 6E 0E
        call    far USER.CREATECARET            ; 9A C1 01 00 00 [FIXUP]
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        mov     word ptr [0x111e], ax           ; A3 1E 11
        mov     word ptr [0xaec], ax            ; A3 EC 0A
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        mov     word ptr [0x1120], ax           ; A3 20 11
        mov     word ptr [0xaee], ax            ; A3 EE 0A
        push    word ptr [0x111e]               ; FF 36 1E 11
        sub     ax, word ptr [0xe70]            ; 2B 06 70 0E
        push    ax                              ; 50
        call    far USER.SETCARETPOS            ; 9A E5 01 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far USER.SHOWCARET              ; 9A ED 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_141                  ; 9A C9 01 00 00 [FIXUP]
L_0104:
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
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_0175                          ; 74 52
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01FC                          ; E8 C2 00
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x3c2], 0             ; C7 06 C2 03 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.HIDECARET              ; 9A 91 01 00 00 [FIXUP]
        call    far USER.DESTROYCARET           ; 9A 96 01 00 00 [FIXUP]
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALFREE           ; 9A 63 01 00 00 [FIXUP]
        push    word ptr [0x10e6]               ; FF 36 E6 10
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x88e], ax            ; A3 8E 08
        mov     word ptr [0x892], ax            ; A3 92 08
        mov     word ptr [0x88c], ax            ; A3 8C 08
        mov     word ptr [0x890], ax            ; A3 90 08
L_0175:
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
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.HIDECARET              ; 9A FF FF 00 00 [FIXUP]
        call    far USER.DESTROYCARET           ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_01F1                          ; 74 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far _entry_142                  ; 9A 14 02 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0xe6e]                ; FF 36 6E 0E
        call    far USER.CREATECARET            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_141                  ; 9A 53 02 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x111e]               ; FF 36 1E 11
        mov     ax, word ptr [0x1120]           ; A1 20 11
        sub     ax, word ptr [0xe70]            ; 2B 06 70 0E
        push    ax                              ; 50
        call    far USER.SETCARETPOS            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SHOWCARET              ; 9A FF FF 00 00 [FIXUP]
L_01F1:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01FC -- offset 0x01FC -- 40 instr
; Dispatcher: tabla de decisiones cmp+jcc (40 instr).
; tags: dispatcher, far
; calls (intra): sub_0493, sub_07A5
;----------------------------------------------------------------------
L_01FC:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_0257                          ; 74 47
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_142                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x892], 0             ; 83 3E 92 08 00
        jle     L_024F                          ; 7E 30
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_022E                          ; 74 09
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_07A5                          ; E8 77 05
L_022E:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0247                          ; EB 12
L_0235:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0493                          ; E8 4F 02
        inc     word ptr [bp - 4]               ; FF 46 FC
L_0247:
        mov     ax, word ptr [0x892]            ; A1 92 08
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0235                          ; 7C E6
L_024F:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_141                  ; 9A FF FF 00 00 [FIXUP]
L_0257:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0262 -- offset 0x0262 -- 46 instr
; Funcion mediana (46 instr, 3 calls).
; tags: calls_kernel, medium
; callers: sub_02E1, sub_07F3
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALREALLOC, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_0262:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        cmp     word ptr [0x892], 0             ; 83 3E 92 08 00
        jne     L_0276                          ; 75 06
        mov     word ptr [0x892], 1             ; C7 06 92 08 01 00
L_0276:
        mov     ax, word ptr [0x892]            ; A1 92 08
        inc     ax                              ; 40
        cmp     ax, word ptr [0x890]            ; 3B 06 90 08
        jl      L_02A5                          ; 7C 25
        push    word ptr [0xba8]                ; FF 36 A8 0B
        add     word ptr [0x890], 0x18          ; 83 06 90 08 18
        mov     ax, word ptr [0x890]            ; A1 90 08
        cdq                                     ; 99
        shl     ax, 1                           ; D1 E0
        rcl     dx, 1                           ; D1 D2
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A 12 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02A5                          ; 75 05
        sub     word ptr [0x890], 0x18          ; 83 2E 90 08 18
L_02A5:
        mov     ax, word ptr [0x892]            ; A1 92 08
        inc     ax                              ; 40
        inc     ax                              ; 40
        cmp     ax, word ptr [0x890]            ; 3B 06 90 08
        jg      L_02DC                          ; 7F 2C
        inc     word ptr [0x892]                ; FF 06 92 08
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     si, word ptr [0x892]            ; 8B 36 92 08
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx + si - 2]   ; 26 8B 40 FE
        mov     word ptr es:[bx + si], ax       ; 26 89 00
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
L_02DC:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02E1 -- offset 0x02E1 -- 154 instr
; Dispatcher: tabla de decisiones cmp+jcc (154 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; callers: sub_07F3
; calls (intra): sub_0262, sub_0493
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALREALLOC, KERNEL.GLOBALUNLOCK, USER.HIDECARET, USER.SETCARETPOS, USER.SHOWCARET
;----------------------------------------------------------------------
L_02E1:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        cmp     word ptr [0x892], 0             ; 83 3E 92 08 00
        jne     L_02F5                          ; 75 06
        mov     word ptr [0x892], 1             ; C7 06 92 08 01 00
L_02F5:
        mov     ax, word ptr [0x88c]            ; A1 8C 08
        cmp     word ptr [0x88e], ax            ; 39 06 8E 08
        jl      L_0320                          ; 7C 22
        push    word ptr [0x10e6]               ; FF 36 E6 10
        add     byte ptr [0x88d], 1             ; 80 06 8D 08 01
        mov     ax, word ptr [0x88c]            ; A1 8C 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0320                          ; 75 06
        sub     word ptr [0x88c], 0x100         ; 81 2E 8C 08 00 01
L_0320:
        mov     ax, word ptr [0x88e]            ; A1 8E 08
        inc     ax                              ; 40
        cmp     ax, word ptr [0x88c]            ; 3B 06 8C 08
        jg      L_0377                          ; 7F 4D
        inc     word ptr [0x88e]                ; FF 06 8E 08
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALLOCK           ; 9A 42 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    word ptr [0x10e6]               ; FF 36 E6 10
        call    far KERNEL.GLOBALLOCK           ; 9A BC 03 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     si, ptr [bp - 4]                ; C4 76 FC
        mov     ax, word ptr [0x892]            ; A1 92 08
        shl     ax, 1                           ; D1 E0
        add     si, ax                          ; 03 F0
        mov     bx, word ptr es:[si]            ; 26 8B 1C
        inc     word ptr es:[si]                ; 26 FF 04
        les     si, ptr [bp - 8]                ; C4 76 F8
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        mov     byte ptr es:[bx + si], al       ; 26 88 00
        push    word ptr [0x10e6]               ; FF 36 E6 10
        call    far KERNEL.GLOBALUNLOCK         ; 9A 73 03 00 00 [FIXUP]
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALUNLOCK         ; 9A F3 03 00 00 [FIXUP]
L_0377:
        pop     si                              ; 5E
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
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.HIDECARET              ; 9A 4C 01 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_142                  ; 9A BD 00 00 00 [FIXUP]
        jmp     L_046B                          ; E9 CE 00
L_039D:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        cmp     al, 8                           ; 3C 08
        jne     L_0412                          ; 75 65
        cmp     word ptr [0x892], 0             ; 83 3E 92 08 00
        jg      L_03B7                          ; 7F 03
        jmp     L_046B                          ; E9 B4 00
L_03B7:
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALLOCK           ; 9A 9F 04 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     si, word ptr [0x892]            ; 8B 36 92 08
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        cmp     word ptr es:[bx + si - 2], ax   ; 26 39 40 FE
        jne     L_03DE                          ; 75 06
        dec     word ptr [0x892]                ; FF 0E 92 08
        jmp     L_03EE                          ; EB 10
L_03DE:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     si, word ptr [0x892]            ; 8B 36 92 08
        shl     si, 1                           ; D1 E6
        dec     word ptr es:[bx + si]           ; 26 FF 08
        dec     word ptr [0x88e]                ; FF 0E 8E 08
L_03EE:
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALUNLOCK         ; 9A B5 00 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        cmp     word ptr [0x892], 0             ; 83 3E 92 08 00
        jle     L_040A                          ; 7E 06
        mov     ax, word ptr [0x892]            ; A1 92 08
        dec     ax                              ; 48
        jmp     L_040C                          ; EB 02
L_040A:
        sub     ax, ax                          ; 2B C0
L_040C:
        push    ax                              ; 50
L_040D:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0467                          ; EB 55
L_0412:
        cmp     byte ptr [bp - 8], 0xd          ; 80 7E F8 0D
        jne     L_0440                          ; 75 28
        call    L_0262                          ; E8 47 FE
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        mov     word ptr [0x111e], ax           ; A3 1E 11
        mov     ax, word ptr [0x892]            ; A1 92 08
        dec     ax                              ; 48
        imul    word ptr [0xc88]                ; F7 2E 88 0C
        add     ax, word ptr [0xbf2]            ; 03 06 F2 0B
        mov     word ptr [0x1120], ax           ; A3 20 11
        push    word ptr [0x111e]               ; FF 36 1E 11
        sub     ax, word ptr [0xe70]            ; 2B 06 70 0E
        push    ax                              ; 50
        call    far USER.SETCARETPOS            ; 9A F0 00 00 00 [FIXUP]
        jmp     L_046B                          ; EB 2B
L_0440:
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        test    si, 0xffe0                      ; F7 C6 E0 FF
        je      L_046B                          ; 74 1F
        push    si                              ; 56
        call    L_02E1                          ; E8 91 FE
        add     sp, 2                           ; 83 C4 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, word ptr [0x892]            ; A1 92 08
        dec     ax                              ; 48
        push    ax                              ; 50
        cmp     word ptr [0x88a], 0x57          ; 83 3E 8A 08 57
        jne     L_040D                          ; 75 A8
        sub     ax, ax                          ; 2B C0
L_0467:
        push    ax                              ; 50
        call    L_0493                          ; E8 28 00
L_046B:
        dec     word ptr [bp + 0xa]             ; FF 4E 0A
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jl      L_0477                          ; 7C 03
        jmp     L_039D                          ; E9 26 FF
L_0477:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_141                  ; 9A 00 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SHOWCARET              ; 9A F8 00 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0493 -- offset 0x0493 -- 95 instr
; Dispatcher: tabla de decisiones cmp+jcc (95 instr).
; tags: calls_gdi, calls_kernel, dispatcher
; callers: sub_01FC, sub_02E1
; calls (intra): sub_07F3
; calls (inter): GDI.GETTEXTEXTENT, KERNEL.GLOBALLOCK
;----------------------------------------------------------------------
L_0493:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x34                        ; 83 EC 34
        push    si                              ; 56
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALLOCK           ; 9A AE 04 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    word ptr [0x10e6]               ; FF 36 E6 10
        call    far KERNEL.GLOBALLOCK           ; 9A 9A 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        imul    word ptr [0xc88]                ; F7 2E 88 0C
        add     ax, word ptr [0xaee]            ; 03 06 EE 0A
        sub     ax, word ptr [0xe70]            ; 2B 06 70 0E
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        add     ax, word ptr [bp - 0x18]        ; 03 46 E8
        mov     dx, word ptr [bp - 0x16]        ; 8B 56 EA
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        cmp     word ptr es:[bx + si + 2], ax   ; 26 39 40 02
        je      L_0518                          ; 74 2E
        push    word ptr [bp + 8]               ; FF 76 08
        push    dx                              ; 52
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     cx, word ptr es:[bx + si + 2]   ; 26 8B 48 02
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        call    far GDI.GETTEXTEXTENT           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        mov     ax, word ptr [0xdb2]            ; A1 B2 0D
        shl     ax, 1                           ; D1 E0
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, dx                          ; 8B C2
        add     ax, si                          ; 03 C6
        jmp     L_0520                          ; EB 08
L_0518:
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     ax, word ptr [0xc88]            ; A1 88 0C
L_0520:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_0537                          ; 75 0E
        cmp     word ptr [0x88a], 0x58          ; 83 3E 8A 08 58
        je      L_0537                          ; 74 07
        cmp     word ptr [0xdb2], 0             ; 83 3E B2 0D 00
        je      L_054F                          ; 74 18
L_0537:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_054F                          ; 74 12
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [0xdb2]            ; 2B 06 B2 0D
        push    ax                              ; 50
        push    word ptr [0xc88]                ; FF 36 88 0C
        call    L_07F3                          ; E8 A4 02
L_054F:
        cmp     word ptr [0x3c4], 0x54          ; 83 3E C4 03 54
        jne     L_0565                          ; 75 0F
        mov     ax, word ptr [0xaec]            ; A1 EC 0A
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [0xaec]            ; 03 06 EC 0A
        jmp     L_0598                          ; EB 33
L_0565:
        cmp     word ptr [0x3c4], 0x55          ; 83 3E C4 03 55
        jne     L_0585                          ; 75 19
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [0xaec]            ; A1 EC 0A
        sub     ax, si                          ; 2B C6
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [0xaec]            ; A1 EC 0A
        add     ax, si                          ; 03 C6
        jmp     L_0598                          ; EB 13
L_0585:
        cmp     word ptr [0x3c4], 0x56          ; 83 3E C4 03 56
        jne     L_059B                          ; 75 0F
        mov     ax, word ptr [0xaec]            ; A1 EC 0A
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [0xaec]            ; A1 EC 0A
L_0598:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
L_059B:
        cmp     word ptr [0x88a], 0x57          ; 83 3E 8A 08 57
        jne     L_05AA                          ; 75 08
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 2                           ; B8 02 00
        jmp     L_05B0                          ; EB 06
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05AA -- offset 0x05AA -- 172 instr
; Funcion compleja: 172 instrucciones, 8 llamadas, 3 branches.
; tags: calls_gdi, calls_kernel, calls_user, complex
; calls (inter): GDI.GETBKMODE, GDI.GETTEXTCOLOR, GDI.PATBLT, GDI.SETBKMODE, GDI.SETTEXTCOLOR, GDI.TEXTOUT (+2 mas)
;----------------------------------------------------------------------
L_05AA:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 1                           ; B8 01 00
L_05B0:
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A 0F 06 00 00 [FIXUP]
        cmp     word ptr [0xdb2], 0             ; 83 3E B2 0D 00
        jne     L_05C0                          ; 75 03
        jmp     L_073A                          ; E9 7A 01
L_05C0:
        cmp     word ptr [0x88a], 0x57          ; 83 3E 8A 08 57
        jne     L_05EE                          ; 75 27
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_05EE                          ; 74 21
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x20]            ; FF 76 E0
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [0xdb2]            ; 2B 06 B2 0D
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, 0x62                        ; B8 62 00
        mov     dx, 0xff                        ; BA FF 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
L_05EE:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far GDI.GETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    word ptr [bp + 8]               ; FF 76 08
        call    far GDI.GETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        les     bx, ptr [bp - 0x24]             ; C4 5E DC
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 73 06 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        les     bx, ptr [bp - 0x28]             ; C4 5E D8
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A A5 06 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x20]            ; FF 76 E0
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        les     bx, ptr [bp - 0x2c]             ; C4 5E D4
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A D7 06 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     word ptr [bp - 0x2e], dx        ; 89 56 D2
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x20]            ; FF 76 E0
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        les     bx, ptr [bp - 0x30]             ; C4 5E D0
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        not     ax                              ; F7 D0
        not     dx                              ; F7 D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     word ptr [bp - 0x32], dx        ; 89 56 CE
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        les     bx, ptr [bp - 0x34]             ; C4 5E CC
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 66 07 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.SETTEXTCOLOR            ; 9A EB 06 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far GDI.SETBKMODE               ; 9A B2 05 00 00 [FIXUP]
        jmp     L_076A                          ; EB 30
L_073A:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        les     bx, ptr [bp - 0x24]             ; C4 5E DC
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 41 06 00 00 [FIXUP]
L_076A:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [0x111e], ax           ; A3 1E 11
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        imul    word ptr [0xc88]                ; F7 2E 88 0C
        add     ax, word ptr [0xbf2]            ; 03 06 F2 0B
        mov     word ptr [0x1120], ax           ; A3 20 11
        push    word ptr [0x111e]               ; FF 36 1E 11
        sub     ax, word ptr [0xe70]            ; 2B 06 70 0E
        push    ax                              ; 50
        call    far USER.SETCARETPOS            ; 9A 3A 04 00 00 [FIXUP]
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALUNLOCK         ; 9A 9A 07 00 00 [FIXUP]
        push    word ptr [0x10e6]               ; FF 36 E6 10
        call    far KERNEL.GLOBALUNLOCK         ; 9A DE 08 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07A5 -- offset 0x07A5 -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: calls_gdi, calls_user, small
; callers: sub_01FC
; calls (inter): GDI.BITBLT, GDI.DELETEDC, USER.GETCLIENTRECT
;----------------------------------------------------------------------
L_07A5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A FE 07 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xda8]                ; FF 36 A8 0D
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 25 08 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.DELETEDC                ; 9A 2D 08 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07F3 -- offset 0x07F3 -- 366 instr
; Dispatcher: tabla de decisiones cmp+jcc (366 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; callers: sub_0493
; calls (intra): sub_0262, sub_02E1
; calls (inter): GDI.BITBLT, GDI.CREATEBITMAP, GDI.DELETEDC, GDI.GETSTOCKOBJECT, GDI.GETTEXTCOLOR, GDI.GETTEXTEXTENT (+7 mas)
;----------------------------------------------------------------------
L_07F3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 9F 09 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xda8]                ; FF 36 A8 0D
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 2]               ; FF 76 FE
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.DELETEDC                ; 9A 47 0A 00 00 [FIXUP]
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
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     word ptr [0x88e], 0             ; C7 06 8E 08 00 00
        mov     word ptr [0x892], 0             ; C7 06 92 08 00 00
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        mov     word ptr [0x890], ax            ; A3 90 08
        cdq                                     ; 99
        shl     ax, 1                           ; D1 E0
        rcl     dx, 1                           ; D1 D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A 7D 08 00 00 [FIXUP]
        mov     word ptr [0xba8], ax            ; A3 A8 0B
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        mov     word ptr [0x88c], ax            ; A3 8C 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A 34 00 00 00 [FIXUP]
        mov     word ptr [0x10e6], ax           ; A3 E6 10
        cmp     word ptr [0xba8], 0             ; 83 3E A8 0B 00
        je      L_088F                          ; 74 04
        or      ax, ax                          ; 0B C0
        jne     L_08BE                          ; 75 2F
L_088F:
        cmp     word ptr [0xba8], 0             ; 83 3E A8 0B 00
        je      L_089F                          ; 74 09
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALFREE           ; 9A AB 08 00 00 [FIXUP]
L_089F:
        cmp     word ptr [0x10e6], 0            ; 83 3E E6 10 00
        je      L_08AF                          ; 74 09
        push    word ptr [0x10e6]               ; FF 36 E6 10
        call    far KERNEL.GLOBALFREE           ; 9A 67 00 00 00 [FIXUP]
L_08AF:
        mov     word ptr [0x890], 0             ; C7 06 90 08 00 00
        mov     word ptr [0x88c], 0             ; C7 06 8C 08 00 00
        jmp     L_094D                          ; E9 8F 00
L_08BE:
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALLOCK           ; 9A E6 08 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALUNLOCK         ; 9A 2C 09 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALLOCK           ; 9A 81 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        jmp     L_091E                          ; EB 2C
L_08F2:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        or      al, al                          ; 0A C0
        je      L_0928                          ; 74 26
        cmp     al, 0xa                         ; 3C 0A
        jne     L_090B                          ; 75 05
        call    L_0262                          ; E8 59 F9
        jmp     L_091E                          ; EB 13
L_090B:
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        test    si, 0xffe0                      ; F7 C6 E0 FF
        je      L_091E                          ; 74 07
        push    si                              ; 56
        call    L_02E1                          ; E8 C6 F9
        add     sp, 2                           ; 83 C4 02
L_091E:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        cmp     word ptr [bp - 0xe], 0x1f40     ; 81 7E F2 40 1F
        jl      L_08F2                          ; 7C CA
L_0928:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A 6A 03 00 00 [FIXUP]
        mov     ax, word ptr [0x88c]            ; A1 8C 08
        cmp     word ptr [0x88e], ax            ; 39 06 8E 08
        jle     L_093C                          ; 7E 03
        mov     word ptr [0x88e], ax            ; A3 8E 08
L_093C:
        mov     ax, word ptr [0x892]            ; A1 92 08
        inc     ax                              ; 40
        cmp     ax, word ptr [0x890]            ; 3B 06 90 08
        jle     L_094D                          ; 7E 07
        mov     ax, word ptr [0x890]            ; A1 90 08
        dec     ax                              ; 48
        mov     word ptr [0x892], ax            ; A3 92 08
L_094D:
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
        sub     sp, 0xc0                        ; 81 EC C0 00
        push    si                              ; 56
        cmp     word ptr [0xba8], 0             ; 83 3E A8 0B 00
        jne     L_0972                          ; 75 03
        jmp     L_0E7D                          ; E9 0B 05
L_0972:
        cmp     word ptr [0x10e6], 0            ; 83 3E E6 10 00
        jne     L_097C                          ; 75 03
        jmp     L_0E7D                          ; E9 01 05
L_097C:
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALLOCK           ; 9A 90 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        push    word ptr [0x10e6]               ; FF 36 E6 10
        call    far KERNEL.GLOBALLOCK           ; 9A 33 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 28 01 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        call    far _entry_142                  ; 9A 96 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
        jmp     L_0A33                          ; EB 76
L_09BD:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        mov     word ptr [bp - 0xae], dx        ; 89 96 52 FF
        les     bx, ptr [bp - 0xb0]             ; C4 9E 50 FF
        mov     si, word ptr es:[bx]            ; 26 8B 37
        cmp     word ptr es:[bx + 2], si        ; 26 39 77 02
        je      L_0A14                          ; 74 37
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        add     ax, si                          ; 03 C6
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, si                          ; 2B C6
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A F9 04 00 00 [FIXUP]
        mov     word ptr [bp - 0xa8], ax        ; 89 86 58 FF
        mov     word ptr [bp - 0xa6], dx        ; 89 96 5A FF
        mov     ax, word ptr [0xdb2]            ; A1 B2 0D
        shl     ax, 1                           ; D1 E0
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0xa8]        ; 8B 86 58 FF
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, dx                          ; 8B C2
        add     ax, si                          ; 03 C6
        jmp     L_0A1C                          ; EB 08
L_0A14:
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        mov     ax, word ptr [0xc88]            ; A1 88 0C
L_0A1C:
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jle     L_0A30                          ; 7E 06
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0A30:
        inc     word ptr [bp - 0x1a]            ; FF 46 E6
L_0A33:
        mov     ax, word ptr [0x892]            ; A1 92 08
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        jl      L_09BD                          ; 7C 82
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_141                  ; 9A 7B 04 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.DELETEDC                ; 9A 3E 01 00 00 [FIXUP]
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        add     word ptr [bp - 0xe], 2          ; 83 46 F2 02
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jg      L_0A63                          ; 7F 08
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jle     L_0A97                          ; 7E 34
L_0A63:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xa4]                 ; 8D 86 5C FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_60                   ; 9A FF FF 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x10c2                      ; B8 C2 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
L_0A97:
        mov     ax, word ptr [0xbc6]            ; A1 C6 0B
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_0AA7                          ; 75 08
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        je      L_0AE5                          ; 74 3E
L_0AA7:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        or      ax, ax                          ; 0B C0
        je      L_0AD9                          ; 74 11
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [0x1170], ax           ; A3 70 11
        jmp     L_0AE5                          ; EB 0C
L_0AD9:
        mov     ax, word ptr [0xbc6]            ; A1 C6 0B
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
L_0AE5:
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 93 0D 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        call    far _entry_142                  ; 9A A8 09 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A EA 05 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.GETTEXTCOLOR            ; 9A F2 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        mov     word ptr [bp - 4], 2            ; C7 46 FC 02 00
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
        jmp     L_0D57                          ; E9 14 02
L_0B43:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        mov     word ptr [bp - 0xae], dx        ; 89 96 52 FF
        les     bx, ptr [bp - 0xb0]             ; C4 9E 50 FF
        mov     si, word ptr es:[bx]            ; 26 8B 37
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        cmp     word ptr es:[bx + 2], si        ; 26 39 77 02
        je      L_0BA0                          ; 74 2F
        push    word ptr [bp - 8]               ; FF 76 F8
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, si                          ; 2B C6
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A F2 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xa8], ax        ; 89 86 58 FF
        mov     word ptr [bp - 0xa6], dx        ; 89 96 5A FF
        mov     ax, word ptr [0xdb2]            ; A1 B2 0D
        shl     ax, 1                           ; D1 E0
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0xa8]        ; 8B 86 58 FF
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, dx                          ; 8B C2
        add     ax, si                          ; 03 C6
        jmp     L_0BA8                          ; EB 08
L_0BA0:
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        mov     ax, word ptr [0xc88]            ; A1 88 0C
L_0BA8:
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        cmp     word ptr [0x3c4], 0x54          ; 83 3E C4 03 54
        jne     L_0BBA                          ; 75 08
        mov     word ptr [bp - 0xac], 2         ; C7 86 54 FF 02 00
        jmp     L_0BE1                          ; EB 27
L_0BBA:
        cmp     word ptr [0x3c4], 0x55          ; 83 3E C4 03 55
        jne     L_0BCE                          ; 75 0D
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        jmp     L_0BDB                          ; EB 0D
L_0BCE:
        cmp     word ptr [0x3c4], 0x56          ; 83 3E C4 03 56
        jne     L_0BE1                          ; 75 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
L_0BDB:
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0xac], ax        ; 89 86 54 FF
L_0BE1:
        cmp     word ptr [0xdb2], 0             ; 83 3E B2 0D 00
        jne     L_0BEB                          ; 75 03
        jmp     L_0D1A                          ; E9 2F 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BEB -- offset 0x0BEB -- 219 instr
; Funcion compleja: 219 instrucciones, 9 llamadas, 2 branches.
; tags: calls_gdi, calls_kernel, calls_user, complex
; calls (inter): GDI.BITBLT, GDI.DELETEDC, GDI.SETBKMODE, GDI.SETTEXTCOLOR, GDI.TEXTOUT, KERNEL.GLOBALUNLOCK (+3 mas)
;----------------------------------------------------------------------
L_0BEB:
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A 34 07 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far GDI.SETTEXTCOLOR            ; 9A ED 0C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        mov     word ptr [bp - 0xae], dx        ; 89 96 52 FF
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 0xac]        ; 8B 86 54 FF
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        les     bx, ptr [bp - 0xb0]             ; C4 9E 50 FF
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 6D 0C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [bp - 0xb4], ax        ; 89 86 4C FF
        mov     word ptr [bp - 0xb2], dx        ; 89 96 4E FF
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 0xac]        ; 8B 86 54 FF
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        les     bx, ptr [bp - 0xb4]             ; C4 9E 4C FF
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A A3 0C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [bp - 0xb8], ax        ; 89 86 48 FF
        mov     word ptr [bp - 0xb6], dx        ; 89 96 4A FF
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        les     bx, ptr [bp - 0xb8]             ; C4 9E 48 FF
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A D9 0C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [bp - 0xbc], ax        ; 89 86 44 FF
        mov     word ptr [bp - 0xba], dx        ; 89 96 46 FF
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        les     bx, ptr [bp - 0xbc]             ; C4 9E 44 FF
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 4A 0D 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        not     ax                              ; F7 D0
        not     dx                              ; F7 D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.SETTEXTCOLOR            ; 9A 29 07 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [bp - 0xc0], ax        ; 89 86 40 FF
        mov     word ptr [bp - 0xbe], dx        ; 89 96 42 FF
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        les     bx, ptr [bp - 0xc0]             ; C4 9E 40 FF
        jmp     L_0D41                          ; EB 27
L_0D1A:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        mov     word ptr [bp - 0xae], dx        ; 89 96 52 FF
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        les     bx, ptr [bp - 0xb0]             ; C4 9E 50 FF
L_0D41:
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 1B 07 00 00 [FIXUP]
        inc     word ptr [bp - 0x1a]            ; FF 46 E6
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        add     word ptr [bp - 4], ax           ; 01 46 FC
L_0D57:
        mov     ax, word ptr [0x892]            ; A1 92 08
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        jge     L_0D62                          ; 7D 03
        jmp     L_0B43                          ; E9 E1 FD
L_0D62:
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_141                  ; 9A 3F 0A 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.DELETEDC                ; 9A 70 0E 00 00 [FIXUP]
        push    word ptr [0x10e6]               ; FF 36 E6 10
        call    far KERNEL.GLOBALUNLOCK         ; 9A 80 0D 00 00 [FIXUP]
        push    word ptr [0xba8]                ; FF 36 A8 0B
        call    far KERNEL.GLOBALUNLOCK         ; 9A 91 07 00 00 [FIXUP]
        cmp     word ptr [0x56c], 0             ; 83 3E 6C 05 00
        jge     L_0D8E                          ; 7D 03
        jmp     L_0E7D                          ; E9 EF 00
L_0D8E:
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A A0 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0xaa], ax        ; 89 86 56 FF
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A BD 07 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETDC                  ; 9A A5 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        push    ax                              ; 50
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0xaa]            ; FF B6 56 FF
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 55 0E 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [0xbc8], ax            ; A3 C8 0B
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        add     ax, word ptr [0xdba]            ; 03 06 BA 0D
        sub     ax, word ptr [0xbc6]            ; 2B 06 C6 0B
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0xdb6], ax            ; A3 B6 0D
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        add     ax, word ptr [0xdbc]            ; 03 06 BC 0D
        sub     ax, word ptr [0xbc8]            ; 2B 06 C8 0B
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0xdb8], ax            ; A3 B8 0D
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        add     ax, word ptr [0xbc6]            ; 03 06 C6 0B
        mov     word ptr [0xdba], ax            ; A3 BA 0D
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        add     ax, word ptr [0xbc8]            ; 03 06 C8 0B
        mov     word ptr [0xdbc], ax            ; A3 BC 0D
        mov     ax, 0xc96                       ; B8 96 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x24]            ; FF 76 DC
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A E1 07 00 00 [FIXUP]
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    far _entry_72                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    far USER.RELEASEDC              ; 9A D4 01 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.DELETEDC                ; 9A 79 0E 00 00 [FIXUP]
        push    word ptr [bp - 0xaa]            ; FF B6 56 FF
        call    far GDI.DELETEDC                ; 9A E9 07 00 00 [FIXUP]
L_0E7D:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

PAINT_TEXT ENDS

        END
