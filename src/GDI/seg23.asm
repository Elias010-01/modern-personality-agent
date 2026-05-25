; AUTO-GENERATED from original GDI segment 23
; segment_size=1044 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

GDI_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CREATEPQ -- 45 instr
; Constructor: crea pq.
; tags: calls_kernel, far, medium
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CREATEPQ  (offset 0x0000, size 114 bytes)
;-----------------------------------------------------------------------
CREATEPQ PROC FAR
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
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        add     si, 0xa                         ; 83 C6 0A
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_162D                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_002E                          ; 75 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0066                          ; EB 38
L_002E:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALLOCK           ; 9A BA 00 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], si        ; 26 89 77 04
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     word ptr es:[bx], 1             ; 26 C7 07 01 00
        mov     word ptr es:[bx + 8], 0         ; 26 C7 47 08 00 00
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 73 01 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0066:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
CREATEPQ ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; MINPQ -- 18 instr
; Funcion sin clasificar definitiva (18 instr).
; tags: far, small
; calls (intra): sub_00AF
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; MINPQ  (offset 0x0072, size 31 bytes)
;-----------------------------------------------------------------------
MINPQ PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_00AF                          ; E8 29 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
MINPQ ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; EXTRACTPQ -- 18 instr
; Funcion sin clasificar definitiva (18 instr).
; tags: far, small
; calls (intra): sub_00AF
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; EXTRACTPQ  (offset 0x0091, size 30 bytes)
;-----------------------------------------------------------------------
EXTRACTPQ PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_00AF                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
EXTRACTPQ ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00AF -- offset 0x00AF -- 116 instr
; Dispatcher: tabla de decisiones cmp+jcc (116 instr).
; tags: calls_kernel, dispatcher
; callers: EXTRACTPQ, MINPQ
; calls (intra): sub_03D5
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------

L_00AF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALLOCK           ; 9A 03 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        or      ax, dx                          ; 0B C2
        jne     L_00CE                          ; 75 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_01EA                          ; E9 1C 01
L_00CE:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        dec     ax                              ; 48
        cmp     ax, 1                           ; 3D 01 00
        jge     L_00E2                          ; 7D 08
        mov     word ptr [bp - 0xa], 0xffff     ; C7 46 F6 FF FF
        jmp     L_016F                          ; E9 8D 00
L_00E2:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 6                           ; 05 06 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_016F                          ; 75 65
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        dec     word ptr es:[bx]                ; 26 FF 0F
        cmp     word ptr es:[bx], 1             ; 26 83 3F 01
        jne     L_0124                          ; 75 0E
        mov     word ptr es:[bx + 8], 0         ; 26 C7 47 08 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        jmp     L_016F                          ; EB 4B
L_0124:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        cmp     word ptr es:[bx + 6], 0x4000    ; 26 81 7F 06 00 40
        je      L_0135                          ; 74 06
        inc     word ptr es:[bx + 8]            ; 26 FF 47 08
        jmp     L_016F                          ; EB 3A
L_0135:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 6]                ; C4 76 FA
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        mov     dx, word ptr es:[bx + si + 2]   ; 26 8B 50 02
        mov     bx, 1                           ; BB 01 00
        mov     word ptr [bp - 8], bx           ; 89 5E F8
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     word ptr es:[bx + si], ax       ; 26 89 00
        mov     word ptr es:[bx + si + 2], dx   ; 26 89 50 02
L_015F:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_017C                          ; 7C 0D
L_016F:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A 20 02 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_01EA                          ; EB 6E
L_017C:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        inc     ax                              ; 40
        cmp     ax, word ptr [bp - 0x10]        ; 3B 46 F0
        jge     L_01A7                          ; 7D 22
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        les     bx, ptr [bp - 0x14]             ; C4 5E EC
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        jge     L_01A7                          ; 7D 03
        inc     word ptr [bp - 2]               ; FF 46 FE
L_01A7:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        les     bx, ptr [bp - 0x14]             ; C4 5E EC
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp - 0x18]             ; C4 5E E8
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jge     L_01E1                          ; 7D 09
        push    dx                              ; 52
        push    bx                              ; 53
        push    dx                              ; 52
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    L_03D5                          ; E8 F4 01
L_01E1:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_015F                          ; E9 75 FF
L_01EA:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SIZEPQ -- 57 instr
; Funcion mediana (57 instr, 3 calls).
; tags: calls_kernel, far, medium
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALREALLOC, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; SIZEPQ  (offset 0x01F1, size 140 bytes)
;-----------------------------------------------------------------------
SIZEPQ PROC FAR
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
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALLOCK           ; 9A AC 02 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        or      ax, dx                          ; 0B C2
        jne     L_0216                          ; 75 05
L_0211:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0271                          ; EB 5B
L_0216:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_022D                          ; 75 11
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALUNLOCK         ; 9A 51 02 00 00 [FIXUP]
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        jmp     L_0271                          ; EB 44
L_022D:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     si, word ptr es:[bx + 2]        ; 26 8B 77 02
        add     si, word ptr [bp + 6]           ; 03 76 06
        cmp     word ptr es:[bx], si            ; 26 39 37
        jg      L_0211                          ; 7F D5
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0xa                         ; 05 0A 00
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     word ptr es:[bx + 2], si        ; 26 89 77 02
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALUNLOCK         ; 9A D0 02 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0211                          ; 74 A2
        mov     ax, si                          ; 8B C6
L_0271:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SIZEPQ ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DELETEPQ -- 16 instr
; Destructor: libera q.
; tags: calls_kernel, far, small
; calls (inter): KERNEL.GLOBALFREE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DELETEPQ  (offset 0x027D, size 29 bytes)
;-----------------------------------------------------------------------
DELETEPQ PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
DELETEPQ ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; INSERTPQ -- 123 instr
; Dispatcher: tabla de decisiones cmp+jcc (123 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_03D5
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; INSERTPQ  (offset 0x029A, size 315 bytes)
;-----------------------------------------------------------------------
INSERTPQ PROC FAR
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
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        or      ax, dx                          ; 0B C2
        jne     L_02C0                          ; 75 06
L_02BA:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_03C9                          ; E9 09 01
L_02C0:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        jge     L_02D6                          ; 7D 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALUNLOCK         ; 9A 7C 03 00 00 [FIXUP]
        jmp     L_02BA                          ; EB E4
L_02D6:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        inc     word ptr es:[bx]                ; 26 FF 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        add     ax, word ptr es:[bx]            ; 26 03 07
        cmp     ax, word ptr es:[bx + 2]        ; 26 3B 47 02
        jle     L_031E                          ; 7E 2F
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 6                           ; 05 06 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, bx                          ; 03 C3
        add     ax, 6                           ; 05 06 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_250                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     word ptr es:[bx + 8], 0         ; 26 C7 47 08 00 00
L_031E:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 6                           ; 05 06 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 8]                ; C4 76 F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx + si], ax       ; 26 89 00
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr es:[bx + si + 2], ax   ; 26 89 40 02
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jg      L_0369                          ; 7F 06
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        jmp     L_0378                          ; EB 0F
L_0369:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     word ptr es:[bx + 6], 0x4000    ; 26 C7 47 06 00 40
L_0372:
        cmp     word ptr [bp - 4], 1            ; 83 7E FC 01
        jne     L_0385                          ; 75 0D
L_0378:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        jmp     L_03C9                          ; EB 44
L_0385:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 8]                ; C4 76 F8
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        cmp     word ptr es:[bx + si], ax       ; 26 39 00
        jle     L_0378                          ; 7E D2
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        mov     dx, es                          ; 8C C2
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_03D5                          ; E8 14 00
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0372                          ; EB A9
L_03C9:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
INSERTPQ ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03D5 -- offset 0x03D5 -- 23 instr
; Funcion sin clasificar definitiva (23 instr).
; tags: small
; callers: INSERTPQ, sub_00AF
;----------------------------------------------------------------------

L_03D5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      008h                            ; 08

GDI_TEXT ENDS

        END
