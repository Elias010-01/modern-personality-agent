; AUTO-GENERATED from original GDI segment 25
; segment_size=3318 bytes, flags=0xf130
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
; COPY -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: far, small
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; COPY  (offset 0x0000, size 36 bytes)
;-----------------------------------------------------------------------
COPY PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        les     di, ptr [bp + 0xc]              ; C4 7E 0C
        lds     si, ptr [bp + 8]                ; C5 76 08
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
COPY ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; OPENJOB -- 148 instr
; Dispatcher: tabla de decisiones cmp+jcc (148 instr).
; tags: calls_kernel, dispatcher, far
; calls (inter): KERNEL.FINDATOM, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; OPENJOB  (offset 0x0024, size 409 bytes)
;-----------------------------------------------------------------------
OPENJOB PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2a                        ; 83 EC 2A
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        or      ax, word ptr [bp + 0xe]         ; 0B 46 0E
        je      L_0042                          ; 74 09
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0048                          ; 75 06
L_0042:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_01B2                          ; E9 6A 01
L_0048:
        cmp     word ptr [0x302], 0             ; 83 3E 02 03 00
        je      L_0056                          ; 74 07
        cmp     word ptr [0x304], 0             ; 83 3E 04 03 00
        jne     L_0066                          ; 75 10
L_0056:
        inc     word ptr [0x302]                ; FF 06 02 03
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_426                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x3ca], ax            ; A3 CA 03
L_0066:
        cmp     word ptr [0x3ca], -1            ; 83 3E CA 03 FF
        je      L_0042                          ; 74 D5
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_425                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.FINDATOM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0ABA                          ; E8 2D 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        inc     ax                              ; 40
        je      L_00A1                          ; 74 0E
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x3a4], 0        ; 83 BF A4 03 00
        je      L_0042                          ; 74 A1
L_00A1:
        mov     ax, 0x3c                        ; B8 3C 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_162D                  ; 9A A1 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_00B9                          ; 75 06
        mov     ax, 0xfffb                      ; B8 FB FF
        jmp     L_01B2                          ; E9 F9 00
L_00B9:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALLOCK           ; 9A 63 02 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        add     ax, 0xe                         ; 05 0E 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_0C14                          ; E8 33 0B
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        inc     ax                              ; 40
        jne     L_00F6                          ; 75 08
        or      byte ptr es:[bx + 1], 0x40      ; 26 80 4F 01 40
        jmp     L_0183                          ; E9 8D 00
L_00F6:
        call    L_0C6C                          ; E8 73 0B
        cmp     word ptr [0x306], 0             ; 83 3E 06 03 00
        je      L_014B                          ; 74 4B
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_424                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     word ptr es:[bx + 0x30], ax     ; 26 89 47 30
        or      ax, ax                          ; 0B C0
        jge     L_012F                          ; 7D 1A
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A AB 01 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALFREE           ; 9A 30 03 00 00 [FIXUP]
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx + 0x30]     ; 26 8B 47 30
        jmp     L_01B2                          ; E9 83 00
L_012F:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        cmp     word ptr es:[bx + 0x30], 0x4000 ; 26 81 7F 30 00 40
        jne     L_0141                          ; 75 07
        or      byte ptr es:[bx + 1], 0x40      ; 26 80 4F 01 40
        jmp     L_0183                          ; EB 42
L_0141:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        or      byte ptr es:[bx + 1], 0x80      ; 26 80 4F 01 80
        jmp     L_0183                          ; EB 38
L_014B:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        add     ax, 0xe                         ; 05 0E 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_016D                          ; 74 0F
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_016D                          ; 74 06
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        jmp     L_0172                          ; EB 05
L_016D:
        mov     ax, 0x2f8                       ; B8 F8 02
        mov     dx, ds                          ; 8C DA
L_0172:
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_0C14                          ; E8 99 0A
        les     bx, ptr [bp - 8]                ; C4 5E F8
        or      byte ptr es:[bx + 1], 0x20      ; 26 80 4F 01 20
L_0183:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     word ptr es:[bx + 0x2e], ax     ; 26 89 47 2E
        mov     word ptr es:[bx + 4], 7         ; 26 C7 47 04 07 00
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 35 02 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_01B2:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
OPENJOB ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; STARTSPOOLPAGE -- 181 instr
; Dispatcher: tabla de decisiones cmp+jcc (181 instr).
; tags: calls_kernel, dispatcher, far
; calls (inter): KERNEL.GETTEMPFILENAME, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALREALLOC, KERNEL.GLOBALSIZE, KERNEL.GLOBALUNLOCK (+2 mas)
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; STARTSPOOLPAGE  (offset 0x01BD, size 501 bytes)
;-----------------------------------------------------------------------
STARTSPOOLPAGE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x64                        ; 83 EC 64
        push    si                              ; 56
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALSIZE           ; 9A 40 02 00 00 [FIXUP]
        or      dx, dx                          ; 0B D2
        jg      L_01E9                          ; 7F 0D
        jl      L_01E3                          ; 7C 05
        cmp     ax, 0x3c                        ; 3D 3C 00
        jae     L_01E9                          ; 73 06
L_01E3:
        mov     ax, 0xfffd                      ; B8 FD FF
        jmp     L_03A6                          ; E9 BD 01
L_01E9:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0C4D                          ; E8 5E 0A
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        or      ax, dx                          ; 0B C2
        jne     L_01FF                          ; 75 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_03A6                          ; E9 A7 01
L_01FF:
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        test    word ptr es:[bx], 0x4000        ; 26 F7 07 00 40
        je      L_0219                          ; 74 10
        cmp     word ptr es:[bx + 2], 0         ; 26 83 7F 02 00
        je      L_0213                          ; 74 03
        jmp     L_039B                          ; E9 88 01
L_0213:
        inc     word ptr es:[bx + 2]            ; 26 FF 47 02
        jmp     L_0223                          ; EB 0A
L_0219:
        cmp     word ptr [0x306], 0             ; 83 3E 06 03 00
        je      L_0223                          ; 74 03
        jmp     L_039B                          ; E9 78 01
L_0223:
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        inc     ax                              ; 40
        cmp     ax, word ptr es:[bx + 4]        ; 26 3B 47 04
        jne     L_0275                          ; 75 44
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A 2A 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALSIZE           ; 9A C5 03 00 00 [FIXUP]
        add     ax, 0x10                        ; 05 10 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_025F                          ; 75 06
        mov     ax, 0xfffb                      ; B8 FB FF
        jmp     L_03A6                          ; E9 47 01
L_025F:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALLOCK           ; 9A BE 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        add     word ptr es:[bx + 4], 8         ; 26 83 47 04 08
L_0275:
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        shl     ax, 1                           ; D1 E0
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        mov     word ptr [bp - 0x62], dx        ; 89 56 9E
        les     bx, ptr [bp - 0x64]             ; C4 5E 9C
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
        add     ax, 0x2e                        ; 05 2E 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, 0x92                        ; B8 92 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_162D                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     word ptr es:[bx], ax            ; 26 89 07
        or      ax, ax                          ; 0B C0
        jne     L_02B7                          ; 75 08
        mov     word ptr [bp - 4], 0xfffb       ; C7 46 FC FB FF
        jmp     L_039B                          ; E9 E4 00
L_02B7:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        push    word ptr es:[bx]                ; 26 FF 37
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        test    word ptr es:[bx], 0x4000        ; 26 F7 07 00 40
        je      L_02E7                          ; 74 15
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0xe                         ; 05 0E 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0300                          ; EB 19
L_02E7:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A53                          ; E8 67 07
        cwde                                    ; 98
        push    ax                              ; 50
        mov     ax, 0x310                       ; B8 10 03
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.GETTEMPFILENAME      ; 9A FF FF 00 00 [FIXUP]
L_0300:
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x1001                      ; B8 01 10
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     word ptr es:[bx], ax            ; 26 89 07
        inc     ax                              ; 40
        jne     L_034B                          ; 75 29
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     si, word ptr es:[bx]            ; 26 8B 37
        push    si                              ; 56
        call    far KERNEL.GLOBALUNLOCK         ; 9A 97 03 00 00 [FIXUP]
        push    si                              ; 56
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        and     byte ptr es:[bx + 1], 0xdf      ; 26 80 67 01 DF
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        mov     word ptr [bp - 4], 0xffff       ; C7 46 FC FF FF
        jmp     L_039B                          ; EB 50
L_034B:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        push    word ptr es:[bx]                ; 26 FF 37
        mov     ax, 0x314                       ; B8 14 03
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LWRITE              ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        jne     L_0370                          ; 75 08
        push    word ptr es:[bx]                ; 26 FF 37
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
L_0370:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     word ptr es:[bx + 4], 1         ; 26 C7 47 04 01 00
        mov     word ptr es:[bx + 2], 2         ; 26 C7 47 02 02 00
        mov     word ptr es:[bx + 0x8a], 0      ; 26 C7 87 8A 00 00 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp - 8]                ; C4 5E F8
        push    word ptr es:[bx]                ; 26 FF 37
        call    far KERNEL.GLOBALUNLOCK         ; 9A 9F 03 00 00 [FIXUP]
L_039B:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_03A6:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
STARTSPOOLPAGE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; WRITESPOOL -- 117 instr
; Funcion compleja: 117 instrucciones, 4 llamadas, 15 branches.
; tags: calls_kernel, complex, far
; calls (intra): sub_04E9
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALSIZE, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; WRITESPOOL  (offset 0x03B2, size 311 bytes)
;-----------------------------------------------------------------------
WRITESPOOL PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.GLOBALSIZE           ; 9A FF FF 00 00 [FIXUP]
        or      dx, dx                          ; 0B D2
        jg      L_03DA                          ; 7F 0D
        jl      L_03D4                          ; 7C 05
        cmp     ax, 0x3c                        ; 3D 3C 00
        jae     L_03DA                          ; 73 06
L_03D4:
        mov     ax, 0xfffd                      ; B8 FD FF
        jmp     L_04DC                          ; E9 02 01
L_03DA:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_0C4D                          ; E8 6D 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        or      ax, dx                          ; 0B C2
        jne     L_03F0                          ; 75 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_04DC                          ; E9 EC 00
L_03F0:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     si, word ptr es:[bx]            ; 26 8B 37
        test    si, 0x2000                      ; F7 C6 00 20
        jne     L_0402                          ; 75 06
        test    si, 0x4000                      ; F7 C6 00 40
        je      L_0475                          ; 74 73
L_0402:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     di, word ptr es:[bx + 2]        ; 26 8B 7F 02
        shl     di, 1                           ; D1 E7
        mov     ax, word ptr es:[bx + di + 0x2e] ; 26 8B 41 2E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A EA 05 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_04E9                          ; E8 BD 00
        mov     si, ax                          ; 8B F0
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 4D 04 00 00 [FIXUP]
        cmp     word ptr [bp + 6], si           ; 39 76 06
        je      L_0469                          ; 74 2E
        or      si, si                          ; 0B F6
        jl      L_0469                          ; 7C 2A
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        test    word ptr es:[bx], 0x2000        ; 26 F7 07 00 20
        je      L_0469                          ; 74 20
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.GLOBALUNLOCK         ; 9A 6D 04 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_427                  ; 9A BC 06 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        jmp     L_0471                          ; EB 08
L_0469:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.GLOBALUNLOCK         ; 9A D5 04 00 00 [FIXUP]
L_0471:
        mov     ax, si                          ; 8B C6
        jmp     L_04DC                          ; EB 67
L_0475:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        test    word ptr es:[bx], 0x8000        ; 26 F7 07 00 80
        je      L_04CC                          ; 74 4D
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        cmp     word ptr es:[bx + 8], 0         ; 26 83 7F 08 00
        je      L_04C1                          ; 74 38
        jmp     L_04AE                          ; EB 23
L_048B:
        or      di, di                          ; 0B FF
        je      L_04C1                          ; 74 32
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        push    word ptr es:[bx + 0x30]         ; 26 FF 77 30
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    di                              ; 57
        call    far _entry_428                  ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        test    ax, 0x8000                      ; A9 00 80
        jne     L_04CC                          ; 75 23
        sub     di, si                          ; 2B FE
        add     word ptr [bp + 8], si           ; 01 76 08
L_04AE:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_155                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_048B                          ; 75 CA
L_04C1:
        or      di, di                          ; 0B FF
        je      L_04D1                          ; 74 0C
        mov     word ptr [bp + 6], 0xfffe       ; C7 46 06 FE FF
        jmp     L_04D1                          ; EB 05
L_04CC:
        mov     word ptr [bp + 6], 0xffff       ; C7 46 06 FF FF
L_04D1:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.GLOBALUNLOCK         ; 9A 0A 06 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
L_04DC:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
WRITESPOOL ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04E9 -- offset 0x04E9 -- 60 instr
; Funcion mediana (60 instr, 1 calls).
; tags: calls_kernel, medium
; callers: WRITEDIALOG, WRITESPOOL
; calls (inter): KERNEL.OPENFILE
;----------------------------------------------------------------------

L_04E9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_0502                          ; 74 07
        mov     si, word ptr es:[bx]            ; 26 8B 37
        or      si, si                          ; 0B F6
        jne     L_053F                          ; 75 3D
L_0502:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xa802                      ; B8 02 A8
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 15 03 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        inc     ax                              ; 40
        jne     L_0528                          ; 75 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0576                          ; EB 4E
L_0528:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], si            ; 26 89 37
        push    si                              ; 56
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A FF FF 00 00 [FIXUP]
L_053F:
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL._LWRITE              ; 9A 5A 03 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        cmp     di, word ptr [bp + 4]           ; 3B 7E 04
        jne     L_0564                          ; 75 0F
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        add     word ptr es:[bx + 6], ax        ; 26 01 47 06
        adc     word ptr es:[bx + 8], dx        ; 26 11 57 08
L_0564:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        jne     L_0574                          ; 75 06
        push    si                              ; 56
        call    far KERNEL._LCLOSE              ; 9A 77 07 00 00 [FIXUP]
L_0574:
        mov     ax, di                          ; 8B C7
L_0576:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; WRITEDIALOG -- 140 instr
; Dispatcher: tabla de decisiones cmp+jcc (140 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_04E9
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALREALLOC, KERNEL.GLOBALSIZE, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; WRITEDIALOG  (offset 0x057E, size 387 bytes)
;-----------------------------------------------------------------------
WRITEDIALOG PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.GLOBALSIZE           ; 9A 18 07 00 00 [FIXUP]
        or      dx, dx                          ; 0B D2
        jg      L_05A6                          ; 7F 0D
        jl      L_05A0                          ; 7C 05
        cmp     ax, 0x3c                        ; 3D 3C 00
        jae     L_05A6                          ; 73 06
L_05A0:
        mov     ax, 0xfffd                      ; B8 FD FF
        jmp     L_06F4                          ; E9 4E 01
L_05A6:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_0C4D                          ; E8 A1 06
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        or      ax, dx                          ; 0B C2
        jne     L_05BC                          ; 75 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_06F4                          ; E9 38 01
L_05BC:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        test    word ptr es:[bx], 0x4000        ; 26 F7 07 00 40
        je      L_05CE                          ; 74 08
        mov     word ptr [bp + 6], 0            ; C7 46 06 00 00
        jmp     L_06E9                          ; E9 1B 01
L_05CE:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        test    word ptr es:[bx], 0x2000        ; 26 F7 07 00 20
        jne     L_05DB                          ; 75 03
        jmp     L_06C6                          ; E9 EB 00
L_05DB:
        mov     di, word ptr es:[bx + 2]        ; 26 8B 7F 02
        shl     di, 1                           ; D1 E7
        mov     ax, word ptr es:[bx + di + 0x2e] ; 26 8B 41 2E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A 44 06 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        jne     L_064E                          ; 75 4D
        add     word ptr es:[bx + 2], 8         ; 26 83 47 02 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 96 06 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x92                        ; 05 92 00
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A 51 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0640                          ; 75 10
        mov     word ptr [bp + 6], 0xfffb       ; C7 46 06 FB FF
        les     bx, ptr [bp - 8]                ; C4 5E F8
        sub     word ptr es:[bx + 2], 8         ; 26 83 6F 02 08
        jmp     L_06E9                          ; E9 A9 00
L_0640:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALLOCK           ; 9A 5F 07 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
L_064E:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_04E9                          ; E8 89 FE
        mov     si, ax                          ; 8B F0
        cmp     si, word ptr [bp + 6]           ; 3B 76 06
        jne     L_0692                          ; 75 2B
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        mov     di, word ptr es:[bx + 4]        ; 26 8B 7F 04
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        mov     word ptr es:[bx + di + 0x8a], ax ; 26 89 81 8A 00
        mov     di, word ptr es:[bx + 4]        ; 26 8B 7F 04
        inc     word ptr es:[bx + 4]            ; 26 FF 47 04
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx + di + 0x8c], ax ; 26 89 81 8C 00
L_0692:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 9E 06 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.GLOBALUNLOCK         ; 9A ED 06 00 00 [FIXUP]
        or      si, si                          ; 0B F6
        jl      L_06C2                          ; 7C 1C
        cmp     word ptr [bp + 6], si           ; 39 76 06
        je      L_06C2                          ; 74 17
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_427                  ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
L_06C2:
        mov     ax, si                          ; 8B C6
        jmp     L_06F4                          ; EB 2E
L_06C6:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        test    word ptr es:[bx], 0x8000        ; 26 F7 07 00 80
        je      L_06E9                          ; 74 19
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0xe                         ; 05 0E 00
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lcall   [0x396]                         ; FF 1E 96 03
L_06E9:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.GLOBALUNLOCK         ; 9A 9D 07 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
L_06F4:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
WRITEDIALOG ENDP


;-----------------------------------------------------------------------
; ENDSPOOLPAGE  (offset 0x0701, size 147 bytes)
;-----------------------------------------------------------------------
ENDSPOOLPAGE PROC FAR
L_0701:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALSIZE           ; 9A D4 01 00 00 [FIXUP]
        or      dx, dx                          ; 0B D2
        jg      L_072D                          ; 7F 0D
        jl      L_0727                          ; 7C 05
        cmp     ax, 0x3c                        ; 3D 3C 00
        jae     L_072D                          ; 73 06
L_0727:
        mov     ax, 0xfffd                      ; B8 FD FF
        jmp     L_0846                          ; E9 19 01
L_072D:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0C4D                          ; E8 1A 05
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        or      ax, dx                          ; 0B C2
        jne     L_0743                          ; 75 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0846                          ; E9 03 01
L_0743:
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        test    word ptr es:[bx], 0x8000        ; 26 F7 07 00 80
        je      L_0750                          ; 74 03
        jmp     L_083B                          ; E9 EB 00
L_0750:
        mov     si, word ptr es:[bx + 2]        ; 26 8B 77 02
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr es:[bx + si + 0x2e] ; 26 8B 40 2E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A BD 00 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_0783                          ; 74 10
        push    word ptr es:[bx]                ; 26 FF 37
        call    far KERNEL._LCLOSE              ; 9A 6C 03 00 00 [FIXUP]
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
L_0783:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     dx, word ptr es:[bx + 8]        ; 26 8B 57 08
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        add     word ptr es:[bx + 0xa], ax      ; 26 01 47 0A
ENDSPOOLPAGE ENDP

        adc     word ptr es:[bx + 0xc], dx      ; 26 11 57 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALUNLOCK         ; 9A 19 01 00 00 [FIXUP]
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        test    word ptr es:[bx], 0x2000        ; 26 F7 07 00 20
        jne     L_07AE                          ; 75 03
        jmp     L_083B                          ; E9 8D 00
L_07AE:
        cmp     word ptr [0x304], 0             ; 83 3E 04 03 00
        jne     L_07C3                          ; 75 0E
        call    L_0C6C                          ; E8 B4 04
        or      ax, ax                          ; 0B C0
        jne     L_07C3                          ; 75 07
L_07BC:
        mov     word ptr [bp - 4], 0xffff       ; C7 46 FC FF FF
        jmp     L_083B                          ; EB 78
L_07C3:
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        inc     word ptr es:[bx + 2]            ; 26 FF 47 02
        test    word ptr es:[bx], 0x1000        ; 26 F7 07 00 10
        jne     L_07F9                          ; 75 28
        push    word ptr [0x304]                ; FF 36 04 03
        mov     ax, 0x1001                      ; B8 01 10
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lcall   [0x39c]                         ; FF 1E 9C 03
        cmp     dx, -1                          ; 83 FA FF
        jne     L_07F1                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_07BC                          ; 74 CB
L_07F1:
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        or      byte ptr es:[bx + 1], 0x10      ; 26 80 4F 01 10
L_07F9:
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        mov     si, word ptr es:[bx + 2]        ; 26 8B 77 02
        shl     si, 1                           ; D1 E6
        mov     word ptr es:[bx + si + 0x2e], 0 ; 26 C7 40 2E 00 00
        cmp     word ptr [0x304], 0             ; 83 3E 04 03 00
        je      L_083B                          ; 74 2C
        push    word ptr [0x304]                ; FF 36 04 03
        mov     ax, 0x1004                      ; B8 04 10
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        lcall   [0x39c]                         ; FF 1E 9C 03
        mov     word ptr [0x30a], ax            ; A3 0A 03
        mov     word ptr [0x30c], dx            ; 89 16 0C 03
        push    word ptr [0x304]                ; FF 36 04 03
        mov     ax, 0x1004                      ; B8 04 10
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lcall   [0x3d4]                         ; FF 1E D4 03
L_083B:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A D0 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0846:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00

;-----------------------------------------------------------------------
; CLOSEJOB  (offset 0x0852, size 201 bytes)
;-----------------------------------------------------------------------
CLOSEJOB PROC FAR
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
        call    far KERNEL.GLOBALSIZE           ; 9A 2D 09 00 00 [FIXUP]
        or      dx, dx                          ; 0B D2
        jg      L_0881                          ; 7F 15
        jl      L_0873                          ; 7C 05
        cmp     ax, 0x3c                        ; 3D 3C 00
        jae     L_0881                          ; 73 0E
L_0873:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALFREE           ; 9A C8 08 00 00 [FIXUP]
        mov     ax, 0xfffd                      ; B8 FD FF
        jmp     L_090F                          ; E9 8E 00
L_0881:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_0899                          ; 7E 12
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALLOCK           ; 9A 54 09 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        or      ax, dx                          ; 0B C2
        jne     L_089E                          ; 75 05
L_0899:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_090F                          ; EB 71
L_089E:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        test    word ptr es:[bx], 0x8000        ; 26 F7 07 00 80
        je      L_08B3                          ; 74 0B
        push    word ptr es:[bx + 0x30]         ; 26 FF 77 30
        call    far _entry_431                  ; 9A 82 09 00 00 [FIXUP]
        jmp     L_08CC                          ; EB 19
L_08B3:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        test    word ptr es:[bx], 0x4000        ; 26 F7 07 00 40
        je      L_08DE                          ; 74 21
        mov     si, word ptr es:[bx + 2]        ; 26 8B 77 02
        shl     si, 1                           ; D1 E6
        push    word ptr es:[bx + si + 0x2e]    ; 26 FF 70 2E
        call    far KERNEL.GLOBALFREE           ; 9A D8 08 00 00 [FIXUP]
L_08CC:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A F0 08 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALFREE           ; 9A 40 09 00 00 [FIXUP]
        jmp     L_090C                          ; EB 2E
L_08DE:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        or      byte ptr es:[bx], 1             ; 26 80 0F 01
        cmp     word ptr [0x304], 0             ; 83 3E 04 03 00
        je      L_090C                          ; 74 20
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A CB 09 00 00 [FIXUP]
        push    word ptr [0x304]                ; FF 36 04 03
        mov     ax, 0x1004                      ; B8 04 10
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        lcall   [0x39c]                         ; FF 1E 9C 03
        mov     word ptr [0x30a], ax            ; A3 0A 03
        mov     word ptr [0x30c], dx            ; 89 16 0C 03
L_090C:
        mov     ax, 1                           ; B8 01 00
L_090F:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
CLOSEJOB ENDP


;-----------------------------------------------------------------------
; DELETEJOB  (offset 0x091B, size 210 bytes)
;-----------------------------------------------------------------------
DELETEJOB PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALSIZE           ; 9A 91 05 00 00 [FIXUP]
        or      dx, dx                          ; 0B D2
        jg      L_094A                          ; 7F 15
        jl      L_093C                          ; 7C 05
        cmp     ax, 0x3c                        ; 3D 3C 00
        jae     L_094A                          ; 73 0E
L_093C:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALFREE           ; 9A 2D 0A 00 00 [FIXUP]
L_0944:
        mov     ax, 1                           ; B8 01 00
        jmp     L_09E1                          ; E9 97 00
L_094A:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_0962                          ; 7E 12
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALLOCK           ; 9A 0D 0A 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        jne     L_0967                          ; 75 05
L_0962:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_09E1                          ; EB 7A
L_0967:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        test    word ptr es:[bx], 0x8000        ; 26 F7 07 00 80
        je      L_0986                          ; 74 15
        push    word ptr es:[bx + 0x30]         ; 26 FF 77 30
        call    far _entry_432                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp - 6]                ; C4 5E FA
        push    word ptr es:[bx + 0x30]         ; 26 FF 77 30
        call    far _entry_431                  ; 9A FF FF 00 00 [FIXUP]
L_0986:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        and     byte ptr es:[bx + 1], 0xdf      ; 26 80 67 01 DF
        mov     si, word ptr es:[bx + 2]        ; 26 8B 77 02
        shl     si, 1                           ; D1 E6
        cmp     word ptr es:[bx + si + 0x2e], 0 ; 26 83 78 2E 00
        je      L_09A3                          ; 74 08
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0701                          ; E8 5E FD
L_09A3:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        test    word ptr es:[bx], 0x1000        ; 26 F7 07 00 10
        je      L_09D2                          ; 74 25
        or      byte ptr es:[bx], 1             ; 26 80 0F 01
        push    word ptr [0x304]                ; FF 36 04 03
        mov     ax, 0x1002                      ; B8 02 10
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lcall   [0x3d4]                         ; FF 1E D4 03
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALUNLOCK         ; 9A 25 0A 00 00 [FIXUP]
        jmp     L_0944                          ; E9 72 FF
L_09D2:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_09ED                          ; E8 0F 00
        jmp     L_0944                          ; E9 63 FF
L_09E1:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
DELETEJOB ENDP

L_09ED:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        jmp     L_0A32                          ; EB 39
L_09F9:
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr es:[bx + di + 0x2e] ; 26 8B 41 2E
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0A31                          ; 74 26
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A 14 04 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.DELETEPATHNAME       ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.GLOBALUNLOCK         ; 9A 3F 0A 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.GLOBALFREE           ; 9A 47 0A 00 00 [FIXUP]
L_0A31:
        inc     si                              ; 46
L_0A32:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 2], si        ; 26 39 77 02
        jge     L_09F9                          ; 7D BE
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALUNLOCK         ; 9A 32 04 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALFREE           ; 9A 21 01 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0A53:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x54                        ; 83 EC 54
        push    si                              ; 56
        cmp     byte ptr [0x106], 0             ; 80 3E 06 01 00
        jne     L_0AAC                          ; 75 44
        mov     ax, 0x31b                       ; B8 1B 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x316                       ; B8 16 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x315                       ; B8 15 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0AA1                          ; 74 18
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0A93                          ; EB 03
L_0A90:
        inc     word ptr [bp - 4]               ; FF 46 FC
L_0A93:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        cmp     byte ptr [bp + si - 0x54], 0x20 ; 80 7A AC 20
        je      L_0A90                          ; 74 F4
        mov     al, byte ptr [bp + si - 0x54]   ; 8A 42 AC
        jmp     L_0AA9                          ; EB 08
L_0AA1:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETTEMPDRIVE         ; 9A FF FF 00 00 [FIXUP]
L_0AA9:
        mov     byte ptr [0x106], al            ; A2 06 01
L_0AAC:
        mov     al, byte ptr [0x106]            ; A0 06 01
        cwde                                    ; 98
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
L_0ABA:
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
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0AD4                          ; 75 05
L_0ACF:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0AF6                          ; EB 22
L_0AD4:
        sub     si, si                          ; 2B F6
        mov     di, 0x3a2                       ; BF A2 03
L_0AD9:
        cmp     si, 0xa                         ; 83 FE 0A
        jge     L_0ACF                          ; 7D F1
        mov     ax, word ptr [di]               ; 8B 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0AF0                          ; 75 0B
        mov     ax, di                          ; 8B C7
        sub     ax, 0x3a2                       ; 2D A2 03
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        jmp     L_0AF6                          ; EB 06
L_0AF0:
        inc     si                              ; 46
        add     di, 4                           ; 83 C7 04
        jmp     L_0AD9                          ; EB E3
L_0AF6:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00

;-----------------------------------------------------------------------
; GETSPOOLJOB  (offset 0x0B03, size 191 bytes)
;-----------------------------------------------------------------------
GETSPOOLJOB PROC FAR
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
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_0B75                          ; 74 58
        cmp     ax, 0x15                        ; 3D 15 00
        je      L_0B82                          ; 74 60
        cmp     ax, 0x19                        ; 3D 19 00
        je      L_0B41                          ; 74 1A
        cmp     ax, 0x1b                        ; 3D 1B 00
        je      L_0B9B                          ; 74 6F
        cmp     ax, 0x1c                        ; 3D 1C 00
        je      L_0BAA                          ; 74 79
        cmp     ax, 0x1d                        ; 3D 1D 00
        jne     L_0B70                          ; 75 3A
        call    far _entry_430                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x308], ax            ; A3 08 03
L_0B3E:
        cdq                                     ; 99
        jmp     L_0BB7                          ; EB 76
L_0B41:
        cmp     word ptr [0x302], 0             ; 83 3E 02 03 00
        je      L_0B4F                          ; 74 07
        cmp     word ptr [0x304], 0             ; 83 3E 04 03 00
        jne     L_0B6A                          ; 75 1B
L_0B4F:
        mov     ax, word ptr [0x302]            ; A1 02 03
        inc     word ptr [0x302]                ; FF 06 02 03
        or      ax, ax                          ; 0B C0
        jne     L_0B5F                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B61                          ; EB 02
L_0B5F:
        sub     ax, ax                          ; 2B C0
L_0B61:
        push    ax                              ; 50
        call    far _entry_426                  ; 9A AE 0B 00 00 [FIXUP]
        mov     word ptr [0x3ca], ax            ; A3 CA 03
L_0B6A:
        mov     ax, word ptr [0x3ca]            ; A1 CA 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0B70:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0B3E                          ; EB C9
L_0B75:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_429                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0B70                          ; EB EE
L_0B82:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x304], ax            ; A3 04 03
        or      ax, ax                          ; 0B C0
        jne     L_0B94                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x30c], ax            ; A3 0C 03
        mov     word ptr [0x30a], ax            ; A3 0A 03
L_0B94:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_0B70                          ; EB D5
L_0B9B:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [0x30a], ax            ; A3 0A 03
        mov     word ptr [0x30c], dx            ; 89 16 0C 03
        jmp     L_0B70                          ; EB C6
L_0BAA:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_426                  ; 9A 5F 00 00 00 [FIXUP]
        mov     word ptr [0x3ca], ax            ; A3 CA 03
        jmp     L_0B70                          ; EB B9
L_0BB7:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
GETSPOOLJOB ENDP


;-----------------------------------------------------------------------
; QUERYJOB  (offset 0x0BC2, size 42 bytes)
;-----------------------------------------------------------------------
QUERYJOB PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x1e                        ; 3D 1E 00
        je      L_0BDD                          ; 74 09
        cmp     ax, 0x1004                      ; 3D 04 10
        je      L_0C02                          ; 74 29
        sub     ax, ax                          ; 2B C0
        jmp     L_0BF9                          ; EB 1C
L_0BDD:
        cmp     word ptr [bp + 8], -1           ; 83 7E 08 FF
        je      L_0BFD                          ; 74 1A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALSIZE           ; 9A 64 08 00 00 [FIXUP]
        or      dx, dx                          ; 0B D2
QUERYJOB ENDP

        jl      L_0BFD                          ; 7C 0E
        jg      L_0BF6                          ; 7F 05
        cmp     ax, 0x3c                        ; 3D 3C 00
        jb      L_0BFD                          ; 72 07
L_0BF6:
        mov     ax, 1                           ; B8 01 00
L_0BF9:
        sub     dx, dx                          ; 2B D2
        jmp     L_0C09                          ; EB 0C
L_0BFD:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_0C09                          ; EB 07
L_0C02:
        mov     ax, word ptr [0x30a]            ; A1 0A 03
        mov     dx, word ptr [0x30c]            ; 8B 16 0C 03
L_0C09:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
L_0C14:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
L_0C17:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        je      L_0C37                          ; 74 0A
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_0C17                          ; 75 E0
L_0C37:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_0C47                          ; 75 0A
        dec     word ptr [bp + 0xa]             ; FF 4E 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
L_0C47:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
L_0C4D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jge     L_0C5E                          ; 7D 05
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_0C66                          ; EB 08
L_0C5E:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.GLOBALLOCK           ; 9A 8B 08 00 00 [FIXUP]
L_0C66:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
L_0C6C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        cmp     word ptr [0x30e], 0             ; 83 3E 0E 03 00
        je      L_0C7D                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0CF2                          ; EB 75
L_0C7D:
        mov     ax, 0x323                       ; B8 23 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0CD7                          ; 75 4C
        mov     word ptr [bp - 2], 0xd00        ; C7 46 FE 00 0D
        mov     word ptr [bp - 0x14], 2         ; C7 46 EC 02 00
        mov     word ptr [bp - 0x12], 2         ; C7 46 EE 02 00
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        lea     ax, [bp - 2]                    ; 8D 46 FE
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], ss         ; 8C 56 F4
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], ss           ; 8C 56 F8
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0x32b                       ; B8 2B 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LOADMODULE           ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x20                        ; 3D 20 00
        jae     L_0CD2                          ; 73 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0CD4                          ; EB 02
L_0CD2:
        sub     ax, ax                          ; 2B C0
L_0CD4:
        mov     word ptr [0x306], ax            ; A3 06 03
L_0CD7:
        cmp     word ptr [0x306], 0             ; 83 3E 06 03 00
        jne     L_0CEF                          ; 75 11
        cmp     word ptr [0x304], 0             ; 83 3E 04 03 00
        jne     L_0CEA                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0CEC                          ; EB 02
L_0CEA:
        sub     ax, ax                          ; 2B C0
L_0CEC:
        mov     word ptr [0x306], ax            ; A3 06 03
L_0CEF:
        mov     ax, word ptr [0x304]            ; A1 04 03
L_0CF2:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3

GDI_TEXT ENDS

        END
