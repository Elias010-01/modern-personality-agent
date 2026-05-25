; AUTO-GENERATED from original USER segment 5
; segment_size=1933 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; LOADMENU -- 268 instr
; Carga MENU desde recurso.
; tags: calls_kernel, complex_iterator, far, loop, string_op
; calls (inter): KERNEL.FINDRESOURCE, KERNEL.FREERESOURCE, KERNEL.GLOBALUNLOCK, KERNEL.LOADRESOURCE, KERNEL.LOCKRESOURCE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; LOADMENU  (offset 0x0000, size 579 bytes)
;-----------------------------------------------------------------------
LOADMENU PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 4                           ; B8 04 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0067                          ; 74 34
        mov     si, ax                          ; 8B F0
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        or      cx, dx                          ; 0B CA
        je      L_0067                          ; 74 26
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    L_0074                          ; E8 2A 00
        or      ax, ax                          ; 0B C0
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jne     L_0059                          ; 75 08
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
        xor     ax, ax                          ; 33 C0
L_0059:
        push    ax                              ; 50
        push    si                              ; 56
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
L_0067:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
L_0074:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        push    di                              ; 57
        call    far _entry_151                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00D3                          ; 74 4E
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
L_008B:
        mov     es, word ptr [bp + 8]           ; 8E 46 08
        xor     ax, ax                          ; 33 C0
        mov     al, byte ptr es:[di]            ; 26 8A 05
        mov     si, ax                          ; 8B F0
        inc     di                              ; 47
        test    al, 0x10                        ; A8 10
        jne     L_00A2                          ; 75 08
        mov     ax, word ptr es:[di]            ; 26 8B 05
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     di                              ; 47
        inc     di                              ; 47
L_00A2:
        mov     cx, di                          ; 8B CF
        mov     dx, es                          ; 8C C2
        cmp     byte ptr es:[di], 0             ; 26 80 3D 00
        jne     L_00B0                          ; 75 04
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
L_00B0:
        mov     word ptr [bp - 4], cx           ; 89 4E FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
L_00B6:
        mov     al, byte ptr es:[di]            ; 26 8A 05
        inc     di                              ; 47
        or      al, al                          ; 0A C0
        jne     L_00B6                          ; 75 F8
        test    si, 0x10                        ; F7 C6 10 00
        je      L_00D6                          ; 74 12
        push    es                              ; 06
        push    di                              ; 57
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_0074                          ; E8 A7 FF
        mov     di, ax                          ; 8B F8
        or      ax, dx                          ; 0B C2
        jne     L_00D6                          ; 75 03
L_00D3:
        cdq                                     ; 99
        jmp     L_010B                          ; EB 35
L_00D6:
        push    word ptr [bp - 8]               ; FF 76 F8
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x7b                        ; B8 7B 00
        and     ax, si                          ; 23 C6
        or      ax, 0x100                       ; 0D 00 01
        push    ax                              ; 50
        call    far _entry_153                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00D3                          ; 74 DC
        test    si, 0x80                        ; F7 C6 80 00
        je      L_008B                          ; 74 8E
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr ss:[bx], ax            ; 36 89 07
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     ax, di                          ; 8B C7
L_010B:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0113:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        cld                                     ; FC
        lds     si, ptr [bp + 0xc]              ; C5 76 0C
        les     di, ptr [bp + 8]                ; C4 7E 08
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shr     ax, 1                           ; D1 E8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sub     di, ax                          ; 2B F8
L_0136:
        dec     bx                              ; 4B
        jl      L_016D                          ; 7C 34
        mov     cx, word ptr [bp - 2]           ; 8B 4E FE
        add     di, word ptr [bp - 4]           ; 03 7E FC
L_013F:
        lodsw   ax, word ptr [si]               ; AD
        mov     dx, ax                          ; 8B D0
        rol     ax, 1                           ; D1 C0
        and     dx, ax                          ; 23 D0
        mov     al, dl                          ; 8A C2
        shl     ax, 1                           ; D1 E0
        shl     al, 1                           ; D0 E0
        shl     ax, 1                           ; D1 E0
        shl     al, 1                           ; D0 E0
        shl     ax, 1                           ; D1 E0
        shl     al, 1                           ; D0 E0
        shl     ax, 1                           ; D1 E0
        mov     al, dh                          ; 8A C6
        shl     ax, 1                           ; D1 E0
        shl     al, 1                           ; D0 E0
        shl     ax, 1                           ; D1 E0
        shl     al, 1                           ; D0 E0
        shl     ax, 1                           ; D1 E0
        shl     al, 1                           ; D0 E0
        shl     ax, 1                           ; D1 E0
        mov     al, ah                          ; 8A C4
        stosb   byte ptr es:[di], al            ; AA
        loop    L_013F                          ; E2 D4
        jmp     L_0136                          ; EB C9
L_016D:
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
L_0176:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        cld                                     ; FC
        lds     si, ptr [bp + 0xe]              ; C5 76 0E
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     bx, 1                           ; 83 FB 01
        jle     L_01D5                          ; 7E 47
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     bx                              ; F7 F3
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        dec     bx                              ; 4B
        mov     word ptr [bp - 8], bx           ; 89 5E F8
        mov     ax, bx                          ; 8B C3
        mul     cx                              ; F7 E1
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     dx, cx                          ; 8B D1
        mov     bx, si                          ; 8B DE
        sub     bx, word ptr [bp - 4]           ; 2B 5E FC
        dec     bx                              ; 4B
        dec     bx                              ; 4B
L_01AF:
        dec     word ptr [bp - 2]               ; FF 4E FE
        jl      L_01E1                          ; 7C 2D
        add     bx, word ptr [bp - 4]           ; 03 5E FC
        mov     ax, dx                          ; 8B C2
        shr     ax, 1                           ; D1 E8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_01BE:
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_01AF                          ; 7C EC
        inc     bx                              ; 43
        inc     bx                              ; 43
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si]               ; 8B 04
        mov     cx, word ptr [bp - 8]           ; 8B 4E F8
L_01CC:
        add     si, dx                          ; 03 F2
        and     ax, word ptr [si]               ; 23 04
        loop    L_01CC                          ; E2 FA
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_01BE                          ; EB E9
L_01D5:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mul     word ptr [bp + 8]               ; F7 66 08
        shr     ax, 1                           ; D1 E8
        mov     cx, ax                          ; 8B C8
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
L_01E1:
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
L_01EA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0211                          ; 74 1A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.FINDRESOURCE         ; 9A 25 02 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_022B                          ; 75 1A
L_0211:
        mov     ax, word ptr [0x614]            ; A1 14 06
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.FINDRESOURCE         ; 9A C3 02 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
L_022B:
        or      si, si                          ; 0B F6
        je      L_023A                          ; 74 0B
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    si                              ; 56
        call    far KERNEL.LOADRESOURCE         ; 9A D3 02 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
L_023A:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
LOADMENU ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; LOADCURSOR -- 20 instr
; Carga CURSOR desde recurso.
; tags: far, small
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; LOADCURSOR  (offset 0x0243, size 37 bytes)
;-----------------------------------------------------------------------
LOADCURSOR PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_01EA                          ; E8 8D FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
LOADCURSOR ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; LOADICON -- 20 instr
; Carga ICON desde recurso.
; tags: far, small
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; LOADICON  (offset 0x0268, size 37 bytes)
;-----------------------------------------------------------------------
LOADICON PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_01EA                          ; E8 68 FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
LOADICON ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; LOADSTRING -- 80 instr
; Carga STRING desde recurso.
; tags: calls_kernel, far, medium
; calls (inter): KERNEL.FINDRESOURCE, KERNEL.GLOBALUNLOCK, KERNEL.LOADRESOURCE, KERNEL.LOCKRESOURCE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; LOADSTRING  (offset 0x028D, size 182 bytes)
;-----------------------------------------------------------------------
LOADSTRING PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, si                          ; 8B C6
        dec     si                              ; 4E
        or      ax, ax                          ; 0B C0
        jne     L_02AB                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0336                          ; E9 8B 00
L_02AB:
        sub     di, di                          ; 2B FF
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        inc     ax                              ; 40
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A 1F 00 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        je      L_0326                          ; 74 58
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A 2B 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A AE 05 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        or      ax, dx                          ; 0B C2
        je      L_0326                          ; 74 3C
        and     word ptr [bp + 0xc], 0xf        ; 81 66 0C 0F 00
L_02EF:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        dec     word ptr [bp + 0xc]             ; FF 4E 0C
        or      ax, ax                          ; 0B C0
        jne     L_0331                          ; 75 2B
        cmp     di, si                          ; 3B FE
        jle     L_030C                          ; 7E 02
        mov     di, si                          ; 8B FE
L_030C:
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    di                              ; 57
        call    far _SEG1_5284                  ; 9A 3A 04 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALUNLOCK         ; 9A 03 04 00 00 [FIXUP]
L_0326:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     byte ptr es:[bx + di], 0        ; 26 C6 01 00
        mov     ax, di                          ; 8B C7
        jmp     L_0336                          ; EB 05
L_0331:
        add     word ptr [bp - 0xa], di         ; 01 7E F6
        jmp     L_02EF                          ; EB B9
L_0336:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
LOADSTRING ENDP

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1c                        ; 83 EC 1C
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.SIZEOFRESOURCE       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0389                          ; 75 20
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL.ALLOCRESOURCE        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        or      ax, ax                          ; 0B C0
        jne     L_0384                          ; 75 05
L_037F:
        sub     ax, ax                          ; 2B C0
        jmp     L_0577                          ; E9 F3 01
L_0384:
        mov     word ptr [bp - 0x1a], 0xffff    ; C7 46 E6 FF FF
L_0389:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        or      ax, dx                          ; 0B C2
        jne     L_03B0                          ; 75 15
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A 70 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_037F                          ; 74 D1
        jmp     L_0384                          ; EB D4
L_03B0:
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        je      L_03E3                          ; 74 2D
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.ACCESSRESOURCE       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        inc     ax                              ; 40
        je      L_03F1                          ; 74 2A
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL._LREAD               ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        je      L_03F1                          ; 74 16
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far KERNEL._LCLOSE              ; 9A FB 03 00 00 [FIXUP]
L_03E3:
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        cmp     byte ptr es:[bx], 1             ; 26 80 3F 01
        jne     L_040A                          ; 75 1E
        mov     ax, 1                           ; B8 01 00
        jmp     L_040C                          ; EB 1B
L_03F1:
        cmp     word ptr [bp - 0x1a], -1        ; 83 7E E6 FF
        je      L_03FF                          ; 74 08
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
L_03FF:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALUNLOCK         ; 9A 61 05 00 00 [FIXUP]
        jmp     L_037F                          ; E9 75 FF
L_040A:
        sub     ax, ax                          ; 2B C0
L_040C:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        cmp     byte ptr es:[bx + 1], 0         ; 26 80 7F 01 00
        je      L_041E                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0420                          ; EB 02
L_041E:
        sub     ax, ax                          ; 2B C0
L_0420:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        sub     word ptr [bp - 4], 2            ; 83 6E FC 02
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        add     ax, 2                           ; 05 02 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _SEG1_5284                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_0472                          ; 74 2E
        mov     ax, word ptr [0x46e]            ; A1 6E 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x470]            ; A1 70 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0x46a]            ; A1 6A 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x46c]            ; A1 6C 04
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sar     ax, 1                           ; D1 F8
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sar     ax, 1                           ; D1 F8
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_048A                          ; EB 18
L_0472:
        mov     ax, word ptr [0x476]            ; A1 76 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x478]            ; A1 78 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0x472]            ; A1 72 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x474]            ; A1 74 04
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
L_048A:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, 0xf                         ; 05 0F 00
        and     al, 0xf0                        ; 24 F0
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        mov     cx, word ptr [bp - 0xe]         ; 8B 4E F2
        shl     cx, 1                           ; D1 E1
        imul    cx                              ; F7 E9
        add     ax, 0xc                         ; 05 0C 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_04AC                          ; 75 03
        jmp     L_055D                          ; E9 B1 00
L_04AC:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        cmp     ax, 2                           ; 3D 02 00
        jg      L_04BA                          ; 7F 03
        jmp     L_055D                          ; E9 A3 00
L_04BA:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jne     L_04DD                          ; 75 1D
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        mov     cx, word ptr [bp - 6]           ; 8B 4E FA
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
L_04DD:
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, 0xf                         ; 05 0F 00
        and     al, 0xf0                        ; 24 F0
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        cmp     word ptr [bp - 6], 2            ; 83 7E FA 02
        jl      L_0534                          ; 7C 19
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0xc                         ; 05 0C 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        add     ax, 0xc                         ; 05 0C 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    L_0113                          ; E8 DF FB
L_0534:
        cmp     word ptr [bp - 0xa], 2          ; 83 7E F6 02
        jl      L_055D                          ; 7C 23
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        add     ax, 0xc                         ; 05 0C 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     ax, 0xc                         ; 05 0C 00
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_0176                          ; E8 19 FC
L_055D:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALUNLOCK         ; 9A 5C 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
L_0577:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; LOADBITMAP -- 189 instr
; Carga BITMAP desde recurso.
; tags: calls_gdi, calls_kernel, dispatcher, far
; calls (inter): GDI.CREATEBITMAP, GDI.CREATECOMPATIBLEDC, GDI.CREATEDISCARDABLEBITMAP, GDI.DELETEDC, GDI.DELETEOBJECT, GDI.SELECTOBJECT (+6 mas)
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; LOADBITMAP  (offset 0x0582, size 523 bytes)
;-----------------------------------------------------------------------
LOADBITMAP PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x22                        ; 83 EC 22
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_01EA                          ; E8 4B FC
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_05AC                          ; 75 03
        jmp     L_0780                          ; E9 D4 01
L_05AC:
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A 37 00 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp - 8]                ; C4 5E F8
        test    byte ptr es:[bx + 1], 0xf       ; 26 F6 47 01 0F
        je      L_05C7                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_05C9                          ; EB 02
L_05C7:
        sub     ax, ax                          ; 2B C0
L_05C9:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        add     ax, 2                           ; 05 02 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     al, byte ptr es:[bx + 8]        ; 26 8A 47 08
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     al, byte ptr es:[bx + 9]        ; 26 8A 47 09
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        test    byte ptr es:[bx + 1], 0x80      ; 26 F6 47 01 80
        jne     L_061B                          ; 75 1B
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        add     ax, 0xe                         ; 05 0E 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A C5 06 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0656                          ; EB 3B
L_061B:
        push    word ptr [0x3b2]                ; FF 36 B2 03
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    far GDI.CREATEDISCARDABLEBITMAP ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        imul    word ptr [bp - 0xc]             ; F7 6E F4
        add     ax, 0xf                         ; 05 0F 00
        and     al, 0xf0                        ; 24 F0
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        imul    word ptr [bp - 0x14]            ; F7 6E EC
        imul    word ptr [bp - 0x20]            ; F7 6E E0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        add     ax, 0xe                         ; 05 0E 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.SETBITMAPBITS           ; 9A FF FF 00 00 [FIXUP]
L_0656:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALUNLOCK         ; 9A 22 03 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.FREERESOURCE         ; 9A 62 00 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_066F                          ; 75 03
        jmp     L_0780                          ; E9 11 01
L_066F:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jne     L_0678                          ; 75 03
        jmp     L_0780                          ; E9 08 01
L_0678:
        mov     ax, word ptr [0x46e]            ; A1 6E 04
        add     ax, word ptr [0x470]            ; 03 06 70 04
        cmp     ax, 2                           ; 3D 02 00
        jg      L_0687                          ; 7F 03
        jmp     L_0780                          ; E9 F9 00
L_0687:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        cdq                                     ; 99
        mov     cx, word ptr [0x46e]            ; 8B 0E 6E 04
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cdq                                     ; 99
        mov     cx, word ptr [0x470]            ; 8B 0E 70 04
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [0x3b2]                ; FF 36 B2 03
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        jne     L_06B4                          ; 75 03
        jmp     L_0774                          ; E9 C0 00
L_06B4:
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        or      ax, ax                          ; 0B C0
        jne     L_06D3                          ; 75 03
        jmp     L_075E                          ; E9 8B 00
L_06D3:
        push    word ptr [0x3b2]                ; FF 36 B2 03
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A EB 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        je      L_075E                          ; 74 7A
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.SELECTOBJECT            ; 9A 36 07 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_075E                          ; 74 68
        push    word ptr [0x3b2]                ; FF 36 B2 03
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far GDI.SETSTRETCHBLTMODE       ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x3b2]                ; FF 36 B2 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x20]            ; FF 76 E0
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.STRETCHBLT              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.SELECTOBJECT            ; 9A 42 07 00 00 [FIXUP]
        push    word ptr [0x3b2]                ; FF 36 B2 03
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far GDI.DELETEDC                ; 9A 70 07 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEOBJECT            ; 9A 68 07 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0780                          ; EB 22
L_075E:
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        je      L_076C                          ; 74 08
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far GDI.DELETEOBJECT            ; 9A 78 07 00 00 [FIXUP]
L_076C:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
L_0774:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        jmp     L_0783                          ; EB 03
L_0780:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0783:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06
LOADBITMAP ENDP


USER_TEXT ENDS

        END
