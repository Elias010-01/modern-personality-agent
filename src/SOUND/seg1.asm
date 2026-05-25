; AUTO-GENERATED from original SOUND segment 1
; segment_size=3312 bytes, flags=0x0100
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

SOUND_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 3 instr
; Stub trivial (3 instrucciones, sin logica significativa).
; tags: calls_kernel, trivial_stub
; calls (inter): KERNEL.GETCURRENTTASK
;----------------------------------------------------------------------

L_0000:
        call    far KERNEL.GETCURRENTTASK       ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [7]                ; 3B 06 07 00
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CLOSESOUND -- 44 instr
; Iterador con bucle (44 instr).
; tags: calls_kernel, far, iterator, loop
; calls (intra): sub_0623
; calls (inter): KERNEL.GLOBALFREE
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; CLOSESOUND  (offset 0x000A, size 83 bytes)
;-----------------------------------------------------------------------
CLOSESOUND PROC FAR
L_000A:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 E7 FF
        jne     L_0052                          ; 75 37
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0458                          ; E8 38 04
        mov     al, 9                           ; B0 09
        call    L_0623                          ; E8 FE 05
        xor     ax, ax                          ; 33 C0
        mov     word ptr [7], ax                ; A3 07 00
        mov     bx, 9                           ; BB 09 00
        mov     cl, byte ptr [4]                ; 8A 0E 04 00
        xor     ch, ch                          ; 32 ED
L_0033:
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        or      ax, ax                          ; 0B C0
        je      L_004D                          ; 74 11
        mov     ax, word ptr [si]               ; 8B 04
        push    bx                              ; 53
        push    cx                              ; 51
        push    ax                              ; 50
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        pop     cx                              ; 59
        pop     bx                              ; 5B
        xor     ax, ax                          ; 33 C0
        mov     word ptr [si + 2], ax           ; 89 44 02
L_004D:
        add     bx, 7                           ; 83 C3 07
        loop    L_0033                          ; E2 E1
L_0052:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
CLOSESOUND ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; MYOPENSOUND -- 130 instr
; Iterador con bucle (130 instr).
; tags: calls_kernel, complex_iterator, far, loop
; calls (intra): sub_0623
; calls (inter): KERNEL.GETCURRENTTASK, KERNEL.GLOBALALLOC
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; MYOPENSOUND  (offset 0x005D, size 263 bytes)
;-----------------------------------------------------------------------
MYOPENSOUND PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [7]                ; A1 07 00
        or      ax, ax                          ; 0B C0
        je      L_0071                          ; 74 03
        jmp     L_015F                          ; E9 EE 00
L_0071:
        call    far KERNEL.GETCURRENTTASK       ; 9A 01 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_007D                          ; 75 03
        jmp     L_015F                          ; E9 E2 00
L_007D:
        mov     word ptr [7], ax                ; A3 07 00
        mov     al, 1                           ; B0 01
        call    L_0623                          ; E8 9E 05
        jae     L_008A                          ; 73 03
        jmp     L_015F                          ; E9 D5 00
L_008A:
        mov     byte ptr [2], al                ; A2 02 00
        mov     byte ptr [4], al                ; A2 04 00
        mov     byte ptr [3], ah                ; 88 26 03 00
        or      ah, ah                          ; 0A E4
        je      L_00A1                          ; 74 09
        xor     ah, ah                          ; 32 E4
        inc     al                              ; FE C0
        mov     byte ptr [4], al                ; A2 04 00
        dec     al                              ; FE C8
L_00A1:
        push    ax                              ; 50
        mov     bx, 9                           ; BB 09 00
        mov     cx, ax                          ; 8B C8
L_00A7:
        mov     si, bx                          ; 8B F3
        push    cx                              ; 51
        xor     dx, dx                          ; 33 D2
        mov     ax, 0xe0                        ; B8 E0 00
        push    dx                              ; 52
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        pop     cx                              ; 59
        or      ax, ax                          ; 0B C0
        jne     L_00BF                          ; 75 03
        jmp     L_0155                          ; E9 96 00
L_00BF:
        mov     word ptr [si], ax               ; 89 04
        mov     ax, 0xe0                        ; B8 E0 00
        mov     word ptr [si + 2], ax           ; 89 44 02
        mov     al, 0x78                        ; B0 78
        mov     byte ptr [si + 4], al           ; 88 44 04
        mov     al, 0                           ; B0 00
        mov     byte ptr [si + 5], al           ; 88 44 05
        mov     bx, si                          ; 8B DE
        add     bx, 7                           ; 83 C3 07
        loop    L_00A7                          ; E2 CF
        mov     si, bx                          ; 8B F3
        xor     dh, dh                          ; 32 F6
        mov     dl, byte ptr [4]                ; 8A 16 04 00
        pop     ax                              ; 58
        push    ax                              ; 50
        cmp     dx, ax                          ; 3B D0
        je      L_0105                          ; 74 1F
        push    bx                              ; 53
        push    dx                              ; 52
        xor     dx, dx                          ; 33 D2
        mov     ax, 0xa0                        ; B8 A0 00
        push    dx                              ; 52
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A B3 00 00 00 [FIXUP]
        pop     dx                              ; 5A
        pop     bx                              ; 5B
        or      ax, ax                          ; 0B C0
        je      L_0155                          ; 74 5A
        mov     word ptr [si], ax               ; 89 04
        mov     ax, 0xa0                        ; B8 A0 00
        mov     word ptr [si + 2], ax           ; 89 44 02
        jmp     L_0108                          ; EB 03
L_0105:
        sub     bx, 7                           ; 83 EB 07
L_0108:
        mov     si, bx                          ; 8B F3
        push    bx                              ; 53
        mov     ax, dx                          ; 8B C2
        push    ax                              ; 50
        mov     ah, al                          ; 8A E0
        dec     ah                              ; FE CC
        mov     al, 2                           ; B0 02
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        mov     cx, word ptr [si]               ; 8B 0C
        call    L_0623                          ; E8 07 05
        pop     ax                              ; 58
        push    dx                              ; 52
        push    ax                              ; 50
        xor     cx, cx                          ; 33 C9
        push    ax                              ; 50
        push    cx                              ; 51
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04C7                          ; E8 9F 03
        pop     ax                              ; 58
        pop     dx                              ; 5A
        push    ax                              ; 50
        dec     ax                              ; 48
        mov     ah, al                          ; 8A E0
        mov     bx, 0xffff                      ; BB FF FF
        mov     al, 4                           ; B0 04
        call    L_0623                          ; E8 ED 04
        pop     ax                              ; 58
        pop     bx                              ; 5B
        sub     bx, 7                           ; 83 EB 07
        dec     dx                              ; 4A
        jne     L_0108                          ; 75 CA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0532                          ; E8 EF 03
        mov     al, 0xa                         ; B0 0A
        call    L_0623                          ; E8 DB 04
        mov     word ptr [5], ax                ; A3 05 00
        pop     ax                              ; 58
L_014C:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
L_0155:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_000A                          ; E8 B0 FE
        mov     ax, 0xfffe                      ; B8 FE FF
        jmp     L_014C                          ; EB ED
L_015F:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_014C                          ; EB E8
MYOPENSOUND ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETVOICEQUEUESIZE -- 64 instr
; Setter: cambia voicequeuesize.
; tags: calls_kernel, far, medium
; calls (intra): sub_0623
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETVOICEQUEUESIZE  (offset 0x0164, size 136 bytes)
;-----------------------------------------------------------------------
SETVOICEQUEUESIZE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 8D FE
        jne     L_01CE                          ; 75 59
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     al, byte ptr [4]                ; 3A 06 04 00
        ja      L_01CE                          ; 77 50
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04FC                          ; E8 76 03
        or      ax, ax                          ; 0B C0
        jne     L_01E7                          ; 75 5D
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        dec     al                              ; FE C8
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     bx, 9                           ; BB 09 00
        mov     cl, 7                           ; B1 07
        mul     cl                              ; F6 E1
        add     ax, bx                          ; 03 C3
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si]               ; 8B 04
        push    ax                              ; 50
        call    far KERNEL.GLOBALFREE           ; 9A 42 00 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [si + 2], ax           ; 89 44 02
        or      ax, ax                          ; 0B C0
        je      L_01BF                          ; 74 10
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A F1 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01DD                          ; 74 20
        mov     word ptr [si], ax               ; 89 04
L_01BF:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     ah, al                          ; 8A E0
        mov     al, 2                           ; B0 02
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        mov     cx, word ptr [si]               ; 8B 0C
        call    L_0623                          ; E8 55 04
L_01CE:
        xor     ax, ax                          ; 33 C0
L_01D0:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
L_01DD:
        xor     ax, ax                          ; 33 C0
        mov     word ptr [si + 2], ax           ; 89 44 02
        mov     ax, 0xfffe                      ; B8 FE FF
        jmp     L_01D0                          ; EB E9
L_01E7:
        mov     ax, 0xfffd                      ; B8 FD FF
        jmp     L_01D0                          ; EB E4
SETVOICEQUEUESIZE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETVOICENOTE -- 122 instr
; Setter: cambia voicenote.
; tags: dispatcher, far
; calls (intra): sub_0383, sub_0623
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETVOICENOTE  (offset 0x01EC, size 254 bytes)
;-----------------------------------------------------------------------
SETVOICENOTE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 05 FE
        jne     L_0206                          ; 75 09
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     al, byte ptr [4]                ; 3A 06 04 00
        jbe     L_0209                          ; 76 03
L_0206:
        jmp     L_02C4                          ; E9 BB 00
L_0209:
        dec     al                              ; FE C8
        mov     bx, 9                           ; BB 09 00
        mov     cl, 7                           ; B1 07
        mul     cl                              ; F6 E1
        add     ax, bx                          ; 03 C3
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        push    ax                              ; 50
        mov     dl, bl                          ; 8A D3
        mov     al, byte ptr [si + 4]           ; 8A 44 04
        mul     dl                              ; F6 E2
        mov     cx, ax                          ; 8B C8
        mov     dx, 1                           ; BA 01 00
        mov     ax, 0x7700                      ; B8 00 77
        div     cx                              ; F7 F1
        or      ax, ax                          ; 0B C0
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        jne     L_0238                          ; 75 03
        jmp     L_02E9                          ; E9 B1 00
L_0238:
        or      bx, bx                          ; 0B DB
        je      L_024E                          ; 74 12
        mov     cx, ax                          ; 8B C8
L_023E:
        shr     cx, 1                           ; D1 E9
        dec     bx                              ; 4B
        jne     L_023E                          ; 75 FB
        mov     bx, ax                          ; 8B D8
        sub     bx, cx                          ; 2B D9
        add     ax, bx                          ; 03 C3
        jae     L_024E                          ; 73 03
        jmp     L_02DE                          ; E9 90 00
L_024E:
        pop     cx                              ; 59
        or      cx, cx                          ; 0B C9
        jne     L_0256                          ; 75 03
        jmp     L_02D3                          ; EB 7E
        nop                                     ; 90
L_0256:
        push    cx                              ; 51
        mov     word ptr [0], ax                ; A3 00 00
        mov     cl, byte ptr [si + 5]           ; 8A 4C 05
        cmp     cl, 1                           ; 80 F9 01
        je      L_0277                          ; 74 15
        mov     bx, 3                           ; BB 03 00
        cmp     cl, 2                           ; 80 F9 02
        je      L_026E                          ; 74 04
        mov     cl, bl                          ; 8A CB
        mov     bl, 7                           ; B3 07
L_026E:
        mul     bl                              ; F6 E3
        shr     ax, cl                          ; D3 E8
        or      ax, ax                          ; 0B C0
        jne     L_0277                          ; 75 01
        inc     ax                              ; 40
L_0277:
        mov     dx, ax                          ; 8B D0
        pop     ax                              ; 58
        cmp     ax, 0x54                        ; 3D 54 00
        jbe     L_0282                          ; 76 03
        jmp     L_02E4                          ; EB 63
        nop                                     ; 90
L_0282:
        add     al, byte ptr [si + 6]           ; 02 44 06
        cmp     al, 0x54                        ; 3C 54
        jbe     L_028B                          ; 76 02
        sub     al, 0x54                        ; 2C 54
L_028B:
        dec     ax                              ; 48
        mov     bl, 0xc                         ; B3 0C
        div     bl                              ; F6 F3
        mov     bx, ax                          ; 8B D8
        inc     bh                              ; FE C7
        push    bx                              ; 53
        mov     bl, bh                          ; 8A DF
        xor     bh, bh                          ; 32 FF
        shl     bl, 1                           ; D0 E3
        add     bx, 0x2ea                       ; 81 C3 EA 02
        mov     ax, word ptr cs:[bx]            ; 2E 8B 07
        pop     bx                              ; 5B
        mov     cl, 6                           ; B1 06
        sub     cl, bl                          ; 2A CB
        shr     ax, cl                          ; D3 E8
        adc     ax, 0                           ; 15 00 00
        mov     bx, ax                          ; 8B D8
        mov     cx, dx                          ; 8B CA
        mov     dx, word ptr [0]                ; 8B 16 00 00
        sub     dx, cx                          ; 2B D1
L_02B6:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     ah, al                          ; 8A E0
        dec     ah                              ; FE CC
        mov     al, 3                           ; B0 03
        call    L_0623                          ; E8 61 03
        jb      L_02D9                          ; 72 15
L_02C4:
        xor     ax, ax                          ; 33 C0
L_02C6:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
L_02D3:
        mov     dx, ax                          ; 8B D0
        xor     bx, bx                          ; 33 DB
        jmp     L_02B6                          ; EB DD
L_02D9:
        call    L_0383                          ; E8 A7 00
        jmp     L_02C6                          ; EB E8
L_02DE:
        pop     ax                              ; 58
        mov     ax, 0xfffa                      ; B8 FA FF
        jmp     L_02C6                          ; EB E2
L_02E4:
        mov     ax, 0xfffb                      ; B8 FB FF
        jmp     L_02C6                          ; EB DD
L_02E9:
        pop     ax                              ; 58
SETVOICENOTE ENDP

        jmp     L_02C6                          ; EB DA
        pop     dx                              ; 5A
        adc     byte ptr [bp + di + 0x11], dl   ; 10 53 11
        pop     bx                              ; 5B
        adc     dh, byte ptr [bp + si + 0x13]   ; 12 72 13
        lcall   0x2015, 0xd414                  ; 9A 14 D4 15 20
        pop     ss                              ; 17
        sbb     byte ptr [bx + si], 0xf5        ; 80 18 F5
        sbb     word ptr [bx + si + 0x231b], ax ; 19 80 1B 23
        sbb     ax, 0x1ede                      ; 1D DE 1E
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETVOICEACCENT -- 58 instr
; Setter: cambia voiceaccent.
; tags: dispatcher, far
; calls (intra): sub_0383, sub_0623
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; SETVOICEACCENT  (offset 0x0304, size 127 bytes)
;-----------------------------------------------------------------------
SETVOICEACCENT PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 ED FC
        jne     L_0360                          ; 75 4B
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     al, byte ptr [4]                ; 3A 06 04 00
        ja      L_0360                          ; 77 42
        dec     al                              ; FE C8
        mov     bx, 9                           ; BB 09 00
        mov     cl, 7                           ; B1 07
        mul     cl                              ; F6 E1
        add     ax, bx                          ; 03 C3
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     ah, al                          ; 8A E0
        dec     ah                              ; FE CC
        mov     al, 4                           ; B0 04
        call    L_0623                          ; E8 E9 02
        jb      L_037E                          ; 72 42
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        or      ah, ah                          ; 0A E4
        jne     L_0379                          ; 75 30
        cmp     al, 0x20                        ; 3C 20
        jb      L_0379                          ; 72 2C
        mov     byte ptr [si + 4], al           ; 88 44 04
        cmp     cx, 2                           ; 83 F9 02
        ja      L_0374                          ; 77 1F
        mov     byte ptr [si + 5], cl           ; 88 4C 05
        cmp     dx, 0x53                        ; 83 FA 53
        ja      L_036F                          ; 77 12
        mov     byte ptr [si + 6], dl           ; 88 54 06
L_0360:
        xor     ax, ax                          ; 33 C0
L_0362:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
L_036F:
        mov     ax, 0xfff4                      ; B8 F4 FF
        jmp     L_0362                          ; EB EE
L_0374:
        mov     ax, 0xfff6                      ; B8 F6 FF
        jmp     L_0362                          ; EB E9
L_0379:
        mov     ax, 0xfff8                      ; B8 F8 FF
        jmp     L_0362                          ; EB E4
L_037E:
        call    L_0383                          ; E8 02 00
        jmp     L_0362                          ; EB DF
SETVOICEACCENT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0383 -- offset 0x0383 -- 91 instr
; Dispatcher: tabla de decisiones cmp+jcc (91 instr).
; tags: calls_kernel, dispatcher, far
; callers: SETSOUNDNOISE, SETVOICEACCENT, SETVOICEENVELOPE, SETVOICENOTE, SETVOICESOUND, SYNCALLVOICES
; calls (intra): sub_0623
; calls (inter): KERNEL.YIELD
;----------------------------------------------------------------------

L_0383:
        xor     ah, ah                          ; 32 E4
        dec     ax                              ; 48
        shl     ax, 1                           ; D1 E0
        add     ax, 0x393                       ; 05 93 03
        push    si                              ; 56
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr cs:[si]            ; 2E 8B 04
        pop     si                              ; 5E
        ret                                     ; C3
        cld                                     ; FC
        push    bx                              ; FF F3
        push    di                              ; FF F7
        push    bp                              ; FF F5
        push    dx                              ; FF F2
        push    cx                              ; FF F1
        dec     word ptr [si - 0x6f28]          ; FF 8C D8 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 52 FC
        jne     L_03E1                          ; 75 31
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0                           ; 3D 00 00
        je      L_03C5                          ; 74 0D
        cmp     ax, 1                           ; 3D 01 00
        je      L_03E3                          ; 74 26
        cmp     ax, 2                           ; 3D 02 00
        je      L_03F3                          ; 74 31
        jmp     L_0430                          ; EB 6C
        nop                                     ; 90
L_03C5:
        mov     ah, byte ptr [4]                ; 8A 26 04 00
L_03C9:
        dec     ah                              ; FE CC
        mov     al, 0xe                         ; B0 0E
L_03CD:
        push    ax                              ; 50
        call    far KERNEL.YIELD                ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
        push    ax                              ; 50
        call    L_0623                          ; E8 4B 02
        pop     ax                              ; 58
        or      bx, bx                          ; 0B DB
        jne     L_03CD                          ; 75 F0
        or      ah, ah                          ; 0A E4
        jne     L_03C9                          ; 75 E8
L_03E1:
        jmp     L_0421                          ; EB 3E
L_03E3:
        call    far KERNEL.YIELD                ; 9A CF 03 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04A0                          ; E8 B3 00
        or      ax, ax                          ; 0B C0
        je      L_03E3                          ; 74 F2
        jmp     L_0421                          ; EB 2E
L_03F3:
        mov     cl, byte ptr [4]                ; 8A 0E 04 00
        xor     ax, ax                          ; 33 C0
L_03F9:
        inc     ax                              ; 40
        dec     cl                              ; FE C9
        je      L_0402                          ; 74 04
        shl     ax, 1                           ; D1 E0
        jmp     L_03F9                          ; EB F7
L_0402:
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_047B                          ; E8 72 00
        pop     cx                              ; 59
        push    bp                              ; 55
        mov     bp, ax                          ; 8B E8
L_040D:
        push    cx                              ; 51
        call    far KERNEL.YIELD                ; 9A E4 03 00 00 [FIXUP]
        pop     cx                              ; 59
        mov     bx, word ptr [bp]               ; 8B 5E 00
        cmp     bx, cx                          ; 3B D9
        jne     L_040D                          ; 75 F2
        pop     bp                              ; 5D
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04A0                          ; E8 7F 00
L_0421:
        xor     ax, ax                          ; 33 C0
L_0423:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
L_0430:
        mov     ax, 0xfff0                      ; B8 F0 FF
        jmp     L_0423                          ; EB EE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; STARTSOUND -- 22 instr
; Funcion sin clasificar definitiva (22 instr).
; tags: far, small
; calls (intra): sub_0623
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; STARTSOUND  (offset 0x0435, size 35 bytes)
;-----------------------------------------------------------------------
STARTSOUND PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 BC FB
        jne     L_044B                          ; 75 05
        mov     al, 6                           ; B0 06
        call    L_0623                          ; E8 D8 01
L_044B:
        xor     ax, ax                          ; 33 C0
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
STARTSOUND ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; STOPSOUND -- 22 instr
; Funcion sin clasificar definitiva (22 instr).
; tags: far, small
; calls (intra): sub_0623
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; STOPSOUND  (offset 0x0458, size 35 bytes)
;-----------------------------------------------------------------------
STOPSOUND PROC FAR
L_0458:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 99 FB
        jne     L_046E                          ; 75 05
        mov     al, 7                           ; B0 07
        call    L_0623                          ; E8 B5 01
L_046E:
        xor     ax, ax                          ; 33 C0
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
STOPSOUND ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETTHRESHOLDEVENT -- 23 instr
; Getter: devuelve thresholdevent.
; tags: far, small
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETTHRESHOLDEVENT  (offset 0x047B, size 37 bytes)
;-----------------------------------------------------------------------
GETTHRESHOLDEVENT PROC FAR
L_047B:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 76 FB
        je      L_0490                          ; 74 04
        xor     ax, ax                          ; 33 C0
        jmp     L_0495                          ; EB 05
L_0490:
        mov     ax, word ptr [5]                ; A1 05 00
        mov     dx, ds                          ; 8C DA
L_0495:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
GETTHRESHOLDEVENT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETTHRESHOLDSTATUS -- 24 instr
; Getter: devuelve thresholdstatus.
; tags: far, small
; calls (intra): sub_0623
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETTHRESHOLDSTATUS  (offset 0x04A0, size 39 bytes)
;-----------------------------------------------------------------------
GETTHRESHOLDSTATUS PROC FAR
L_04A0:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 51 FB
        je      L_04B5                          ; 74 04
        xor     ax, ax                          ; 33 C0
        jmp     L_04BC                          ; EB 07
L_04B5:
        mov     al, 0xb                         ; B0 0B
        call    L_0623                          ; E8 69 01
        mov     ax, bx                          ; 8B C3
L_04BC:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
GETTHRESHOLDSTATUS ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETVOICETHRESHOLD -- 28 instr
; Setter: cambia voicethreshold.
; tags: far, small
; calls (intra): sub_0623
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETVOICETHRESHOLD  (offset 0x04C7, size 53 bytes)
;-----------------------------------------------------------------------
SETVOICETHRESHOLD PROC FAR
L_04C7:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 2A FB
        jne     L_04ED                          ; 75 15
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     al, byte ptr [4]                ; 3A 06 04 00
        ja      L_04ED                          ; 77 0C
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        dec     al                              ; FE C8
        mov     ah, al                          ; 8A E0
        mov     al, 0xc                         ; B0 0C
        call    L_0623                          ; E8 36 01
L_04ED:
        xor     ax, ax                          ; 33 C0
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SETVOICETHRESHOLD ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; COUNTVOICENOTES -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: far, small
; calls (intra): sub_0623
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; COUNTVOICENOTES  (offset 0x04FC, size 54 bytes)
;-----------------------------------------------------------------------
COUNTVOICENOTES PROC FAR
L_04FC:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 F5 FA
        jne     L_0516                          ; 75 09
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     al, byte ptr [4]                ; 3A 06 04 00
        jbe     L_051A                          ; 76 04
L_0516:
        xor     ax, ax                          ; 33 C0
        jmp     L_0525                          ; EB 0B
L_051A:
        dec     al                              ; FE C8
        mov     ah, al                          ; 8A E0
        mov     al, 0xe                         ; B0 0E
        call    L_0623                          ; E8 00 01
        mov     ax, bx                          ; 8B C3
L_0525:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
COUNTVOICENOTES ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SYNCALLVOICES -- 32 instr
; Funcion mediana (32 instr, 2 calls).
; tags: far, medium
; calls (intra): sub_0383, sub_0623
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SYNCALLVOICES  (offset 0x0532, size 55 bytes)
;-----------------------------------------------------------------------
SYNCALLVOICES PROC FAR
L_0532:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 BF FA
        jne     L_0556                          ; 75 13
        mov     ah, byte ptr [4]                ; 8A 26 04 00
        mov     al, 8                           ; B0 08
L_0549:
        dec     ah                              ; FE CC
        push    ax                              ; 50
        call    L_0623                          ; E8 D4 00
        jb      L_0563                          ; 72 12
        pop     ax                              ; 58
        or      ah, ah                          ; 0A E4
        jne     L_0549                          ; 75 F3
L_0556:
        xor     ax, ax                          ; 33 C0
L_0558:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
L_0563:
        call    L_0383                          ; E8 1D FE
        pop     ax                              ; 58
        jmp     L_0558                          ; EB EF
SYNCALLVOICES ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETSOUNDNOISE -- 27 instr
; Setter: cambia soundnoise.
; tags: far, small
; calls (intra): sub_0383, sub_0623
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETSOUNDNOISE  (offset 0x0569, size 50 bytes)
;-----------------------------------------------------------------------
SETSOUNDNOISE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 88 FA
        jne     L_0587                          ; 75 0D
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     al, 0xd                         ; B0 0D
        call    L_0623                          ; E8 9E 00
        jb      L_0596                          ; 72 0F
L_0587:
        xor     ax, ax                          ; 33 C0
L_0589:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
L_0596:
        call    L_0383                          ; E8 EA FD
        jmp     L_0589                          ; EB EE
SETSOUNDNOISE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETVOICESOUND -- 37 instr
; Setter: cambia voicesound.
; tags: far, medium
; calls (intra): sub_0383, sub_0623
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETVOICESOUND  (offset 0x059B, size 73 bytes)
;-----------------------------------------------------------------------
SETVOICESOUND PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 56 FA
        jne     L_05CC                          ; 75 20
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     al, byte ptr [4]                ; 3A 06 04 00
        ja      L_05CC                          ; 77 17
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        dec     al                              ; FE C8
        mov     ah, al                          ; 8A E0
        mov     al, 3                           ; B0 03
        or      bx, bx                          ; 0B DB
        je      L_05DB                          ; 74 19
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        xor     dx, dx                          ; 33 D2
L_05C7:
        call    L_0623                          ; E8 59 00
        jb      L_05DF                          ; 72 13
L_05CC:
        xor     ax, ax                          ; 33 C0
L_05CE:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
L_05DB:
        xor     cx, cx                          ; 33 C9
        jmp     L_05C7                          ; EB E8
L_05DF:
        call    L_0383                          ; E8 A1 FD
        jmp     L_05CE                          ; EB EA
SETVOICESOUND ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETVOICEENVELOPE -- 32 instr
; Setter: cambia voiceenvelope.
; tags: far, medium
; calls (intra): sub_0383, sub_0623
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETVOICEENVELOPE  (offset 0x05E4, size 63 bytes)
;-----------------------------------------------------------------------
SETVOICEENVELOPE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        call    0                               ; E8 0D FA
        jne     L_060F                          ; 75 1A
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     al, byte ptr [4]                ; 3A 06 04 00
        ja      L_060F                          ; 77 11
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     ah, al                          ; 8A E0
        dec     ah                              ; FE CC
        mov     al, 5                           ; B0 05
        call    L_0623                          ; E8 16 00
        jb      L_061E                          ; 72 0F
L_060F:
        xor     ax, ax                          ; 33 C0
L_0611:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
L_061E:
        call    L_0383                          ; E8 62 FD
        jmp     L_0611                          ; EB EE
SETVOICEENVELOPE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0623 -- offset 0x0623 -- 60 instr
; Funcion mediana (60 instr, 1 calls).
; tags: medium
; callers: CLOSESOUND, COUNTVOICENOTES, GETTHRESHOLDSTATUS, MYOPENSOUND, SETSOUNDNOISE, SETVOICEACCENT (+9 mas)
; calls (intra): sub_0936
;----------------------------------------------------------------------

L_0623:
        push    si                              ; 56
        push    ax                              ; 50
        xor     ah, ah                          ; 32 E4
        dec     al                              ; FE C8
        shl     ax, 1                           ; D1 E0
        mov     si, ax                          ; 8B F0
        pop     ax                              ; 58
        call    word ptr cs:[si + 0x635]        ; 2E FF 94 35 06
        pop     si                              ; 5E
        ret                                     ; C3
        push    cx                              ; 51
        push    es                              ; 06
        imul    ax, word ptr [0x6bf], 0x3b      ; 6B 06 BF 06 3B
        pop     es                              ; 07
        lea     ax, [bx]                        ; 8D 07
        pushaw                                  ; 60
        or      dx, word ptr [0x130c]           ; 0B 16 0C 13
        pop     es                              ; 07
        jl      L_064F                          ; 7C 08
        cmp     byte ptr [bx + si], cl          ; 38 08
        cmp     al, 8                           ; 3C 08
        jae     L_0655                          ; 73 08
        pop     word ptr [bx]                   ; 8F 07
L_064F:
        push    cx                              ; 51
        or      dh, al                          ; 08 C6
        push    es                              ; 06
        mov     byte ptr [bx + si], al          ; 88 00
L_0655:
        add     ax, bp                          ; 01 E8
        mov     ah, 2                           ; B4 02
        xor     ah, ah                          ; 32 E4
        call    L_0936                          ; E8 D8 02
        je      L_0664                          ; 74 04
        mov     al, 0xff                        ; B0 FF
        dec     ah                              ; FE CC
L_0664:
        inc     ah                              ; FE C4
        neg     al                              ; F6 D8
        clc                                     ; F8
        sti                                     ; FB
        ret                                     ; C3
        push    ax                              ; 50
        push    dx                              ; 52
        push    si                              ; 56
        mov     al, ah                          ; 8A C4
        xor     ah, ah                          ; 32 E4
        mov     dl, 0xf                         ; B2 0F
        mul     dl                              ; F6 E2
        mov     dx, 0x89                        ; BA 89 00
        add     ax, dx                          ; 03 C2
        mov     si, ax                          ; 8B F0
        mov     word ptr [si + 0xa], cx         ; 89 4C 0A
        mov     word ptr [si + 2], bx           ; 89 5C 02
        xor     ax, ax                          ; 33 C0
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     word ptr [si + 8], ax           ; 89 44 08
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 4], ax           ; 89 44 04
        pop     si                              ; 5E
        pop     dx                              ; 5A
        pop     ax                              ; 58
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0694 -- offset 0x0694 -- 11 instr
; Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_06AC
;----------------------------------------------------------------------
L_0694:
        push    si                              ; 56
        mov     si, word ptr [bx + 8]           ; 8B 77 08
        mov     byte ptr es:[si], al            ; 26 88 04
        inc     si                              ; 46
        cmp     si, word ptr [bx + 2]           ; 3B 77 02
        jne     L_06A4                          ; 75 03
        mov     si, 0                           ; BE 00 00
L_06A4:
        mov     word ptr [bx + 8], si           ; 89 77 08
        inc     word ptr [bx + 4]               ; FF 47 04
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06AC -- offset 0x06AC -- 143 instr
; Dispatcher: tabla de decisiones cmp+jcc (143 instr).
; tags: dispatcher
; calls (intra): sub_0694, sub_07C6, sub_07D4, sub_07E4, sub_0936, sub_095B
;----------------------------------------------------------------------
L_06AC:
        push    ax                              ; 50
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        sub     ax, 8                           ; 2D 08 00
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        pop     ax                              ; 58
        ja      L_06BB                          ; 77 02
        clc                                     ; F8
        ret                                     ; C3
L_06BB:
        mov     al, 1                           ; B0 01
        stc                                     ; F9
        ret                                     ; C3
        cli                                     ; FA
        push    bx                              ; 53
        call    L_095B                          ; E8 97 02
        call    L_06AC                          ; E8 E5 FF
        jb      L_0710                          ; 72 47
        pop     ax                              ; 58
        or      ax, ax                          ; 0B C0
        je      L_0709                          ; 74 3B
        or      cx, cx                          ; 0B C9
        je      L_0709                          ; 74 37
        call    L_07D4                          ; E8 FF 00
        jb      L_070F                          ; 72 38
        call    L_07C6                          ; E8 EC 00
L_06DA:
        xchg    dx, cx                          ; 87 CA
        call    L_07C6                          ; E8 E7 00
        inc     word ptr [bx]                   ; FF 07
        push    ax                              ; 50
        mov     al, 1                           ; B0 01
        call    L_0694                          ; E8 AD FF
        pop     ax                              ; 58
        call    L_07E4                          ; E8 F9 00
        call    L_0694                          ; E8 A6 FF
        mov     al, ah                          ; 8A C4
        call    L_0694                          ; E8 A1 FF
        mov     ax, dx                          ; 8B C2
        call    L_0694                          ; E8 9C FF
        mov     al, ah                          ; 8A C4
        call    L_0694                          ; E8 97 FF
        mov     ax, cx                          ; 8B C1
        call    L_0694                          ; E8 92 FF
        mov     al, ah                          ; 8A C4
        call    L_0694                          ; E8 8D FF
        jmp     L_070E                          ; EB 05
L_0709:
        xor     ax, ax                          ; 33 C0
        dec     ax                              ; 48
        jmp     L_06DA                          ; EB CC
L_070E:
        clc                                     ; F8
L_070F:
        push    bx                              ; 53
L_0710:
        pop     bx                              ; 5B
        sti                                     ; FB
        ret                                     ; C3
        cmp     byte ptr [0xd3], 1              ; 80 3E D3 00 01
        je      L_071C                          ; 74 02
        clc                                     ; F8
        ret                                     ; C3
L_071C:
        push    bx                              ; 53
        call    L_095B                          ; E8 3B 02
        push    ax                              ; 50
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        pop     ax                              ; 58
        jb      L_072F                          ; 72 05
        mov     al, 1                           ; B0 01
        stc                                     ; F9
        jmp     L_0739                          ; EB 0A
L_072F:
        cli                                     ; FA
        push    ax                              ; 50
        mov     al, 0xff                        ; B0 FF
        call    L_0694                          ; E8 5E FF
        pop     ax                              ; 58
        sti                                     ; FB
        clc                                     ; F8
L_0739:
        pop     bx                              ; 5B
        ret                                     ; C3
        push    bx                              ; 53
        push    cx                              ; 51
        call    L_0936                          ; E8 F6 01
        jne     L_0784                          ; 75 42
        push    bx                              ; 53
        call    L_095B                          ; E8 15 02
        call    L_06AC                          ; E8 63 FF
        pop     cx                              ; 59
        jb      L_0785                          ; 72 39
        inc     cx                              ; 41
        je      L_0757                          ; 74 08
        dec     cx                              ; 49
        cmp     cx, 0xf                         ; 83 F9 0F
        ja      L_0788                          ; 77 33
        jmp     L_075A                          ; EB 03
L_0757:
        mov     cx, 8                           ; B9 08 00
L_075A:
        push    bx                              ; 53
        neg     cl                              ; F6 D9
        add     cl, 0xf                         ; 80 C1 0F
        mov     al, cl                          ; 8A C1
        cmp     ah, 3                           ; 80 FC 03
        je      L_0774                          ; 74 0D
        mov     bh, ah                          ; 8A FC
        mov     cl, 5                           ; B1 05
        shl     bh, cl                          ; D2 E7
        and     bh, 0x90                        ; 80 E7 90
        or      al, bh                          ; 0A C7
        jmp     L_0776                          ; EB 02
L_0774:
        or      al, 0xf0                        ; 0C F0
L_0776:
        pop     bx                              ; 5B
        push    ax                              ; 50
        mov     al, 2                           ; B0 02
        call    L_0694                          ; E8 17 FF
        pop     ax                              ; 58
        call    L_0694                          ; E8 13 FF
        mov     byte ptr [bx + 0xe], al         ; 88 47 0E
L_0784:
        clc                                     ; F8
L_0785:
        pop     cx                              ; 59
        pop     bx                              ; 5B
        ret                                     ; C3
L_0788:
        mov     al, 3                           ; B0 03
        stc                                     ; F9
        jmp     L_0785                          ; EB F8
        clc                                     ; F8
        ret                                     ; C3
        mov     ax, 3                           ; B8 03 00
        call    L_095B                          ; E8 C6 01
        cmp     cx, 7                           ; 83 F9 07
        ja      L_07C1                          ; 77 27
        call    L_06AC                          ; E8 0F FF
        jb      L_07C0                          ; 72 21
        xchg    dx, cx                          ; 87 CA
        call    L_07C6                          ; E8 22 00
        mov     al, 4                           ; B0 04
        call    L_0694                          ; E8 EB FE
        mov     al, dl                          ; 8A C2
        call    L_0694                          ; E8 E6 FE
        mov     ax, cx                          ; 8B C1
        call    L_0694                          ; E8 E1 FE
        mov     al, ah                          ; 8A C4
        call    L_0694                          ; E8 DC FE
        and     byte ptr [0xd5], 0xf7           ; 80 26 D5 00 F7
        inc     word ptr [bx]                   ; FF 07
        clc                                     ; F8
L_07C0:
        ret                                     ; C3
L_07C1:
        mov     al, 6                           ; B0 06
        stc                                     ; F9
        jmp     L_07C0                          ; EB FA
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07C6 -- offset 0x07C6 -- 8 instr
; Funcion hoja (no llama a otras, 8 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_06AC
;----------------------------------------------------------------------
L_07C6:
        push    ax                              ; 50
        mov     ax, cx                          ; 8B C1
        shr     ax, 1                           ; D1 E8
        add     cx, ax                          ; 03 C8
        jae     L_07D2                          ; 73 03
        mov     cx, 0xffff                      ; B9 FF FF
L_07D2:
        pop     ax                              ; 58
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07D4 -- offset 0x07D4 -- 9 instr
; Funcion hoja (no llama a otras, 9 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_06AC
;----------------------------------------------------------------------
L_07D4:
        cmp     ax, 0x25                        ; 3D 25 00
        jb      L_07DE                          ; 72 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jbe     L_07E2                          ; 76 04
L_07DE:
        mov     al, 2                           ; B0 02
        stc                                     ; F9
        ret                                     ; C3
L_07E2:
        clc                                     ; F8
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07E4 -- offset 0x07E4 -- 84 instr
; Dispatcher: tabla de decisiones cmp+jcc (84 instr).
; tags: dispatcher
; callers: sub_06AC
; calls (intra): sub_08A6, sub_08E4, sub_095B, sub_0C16, sub_0C3C
;----------------------------------------------------------------------
L_07E4:
        push    dx                              ; 52
        push    bx                              ; 53
        push    cx                              ; 51
        mov     cx, ax                          ; 8B C8
        mov     ah, byte ptr [0x7d]             ; 8A 26 7D 00
        mov     bh, ah                          ; 8A FC
        cmp     byte ptr [0xd3], 1              ; 80 3E D3 00 01
        je      L_0802                          ; 74 0C
        mov     dx, 0x12                        ; BA 12 00
        mov     ax, 0x34dc                      ; B8 DC 34
        div     cx                              ; F7 F1
        mov     cx, ax                          ; 8B C8
        jmp     L_0832                          ; EB 30
L_0802:
        mov     dx, 1                           ; BA 01 00
        mov     ax, 0xb4e3                      ; B8 E3 B4
        div     cx                              ; F7 F1
        cmp     ax, 0x3ff                       ; 3D FF 03
        jbe     L_0812                          ; 76 03
        mov     ax, 0x3ff                       ; B8 FF 03
L_0812:
        push    ax                              ; 50
        and     al, 0xf                         ; 24 0F
        shl     bh, 1                           ; D0 E7
        mov     cl, 4                           ; B1 04
        shl     bh, cl                          ; D2 E7
        and     bh, 0x70                        ; 80 E7 70
        or      bh, 0x80                        ; 80 CF 80
        or      al, bh                          ; 0A C7
        mov     bh, al                          ; 8A F8
        pop     ax                              ; 58
        and     ax, 0x3f0                       ; 25 F0 03
        shr     ax, cl                          ; D3 E8
        mov     ch, al                          ; 8A E8
        and     ch, 0x7f                        ; 80 E5 7F
        mov     cl, bh                          ; 8A CF
L_0832:
        mov     ax, cx                          ; 8B C1
        pop     cx                              ; 59
        pop     bx                              ; 5B
        pop     dx                              ; 5A
        ret                                     ; C3
        mov     ax, 0xd1                        ; B8 D1 00
        ret                                     ; C3
        cmp     byte ptr [0xd4], 2              ; 80 3E D4 00 02
        jne     L_0846                          ; 75 03
        call    L_0C16                          ; E8 D0 03
L_0846:
        mov     bx, word ptr [0xd1]             ; 8B 1E D1 00
        mov     word ptr [0xd1], 0              ; C7 06 D1 00 00 00
        ret                                     ; C3
        xor     bx, bx                          ; 33 DB
        cmp     byte ptr [0xd4], 0              ; 80 3E D4 00 00
        je      L_0872                          ; 74 18
        cmp     byte ptr [0xd4], 2              ; 80 3E D4 00 02
        jne     L_0866                          ; 75 05
        call    L_0C16                          ; E8 B2 03
        jmp     L_0872                          ; EB 0C
L_0866:
        call    L_095B                          ; E8 F2 00
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, si                          ; 8B DE
        or      bx, bx                          ; 0B DB
        jne     L_0872                          ; 75 01
        inc     bx                              ; 43
L_0872:
        ret                                     ; C3
        mov     cx, bx                          ; 8B CB
        call    L_095B                          ; E8 E3 00
        mov     word ptr [bx + 0xc], cx         ; 89 4F 0C
        ret                                     ; C3
        push    es                              ; 06
        mov     byte ptr [0x7e], 0              ; C6 06 7E 00 00
        cli                                     ; FA
        call    L_0C3C                          ; E8 B6 03
        mov     ax, 0xfc                        ; B8 FC 00
        call    L_08A6                          ; E8 1A 00
        dec     ah                              ; FE CC
        inc     al                              ; FE C0
        call    L_08E4                          ; E8 51 00
        cli                                     ; FA
        pop     es                              ; 07
        jmp     L_0897                          ; EB 00
L_0897:
        in      al, 0x21                        ; E4 21
        and     al, 0xfe                        ; 24 FE
        jmp     L_089D                          ; EB 00
L_089D:
        out     0x21, al                        ; E6 21
        sti                                     ; FB
        mov     byte ptr [0x88], 0              ; C6 06 88 00 00
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08A6 -- offset 0x08A6 -- 27 instr
; Funcion sin clasificar definitiva (27 instr).
; tags: bios_caller, int_1a
; callers: sub_07E4
; calls (intra): sub_0936
;----------------------------------------------------------------------
L_08A6:
        call    L_0936                          ; E8 8D 00
        jne     L_08B3                          ; 75 08
        or      ah, ah                          ; 0A E4
        je      L_08C8                          ; 74 19
        inc     ah                              ; FE C4
        je      L_08B5                          ; 74 02
L_08B3:
        stc                                     ; F9
        ret                                     ; C3
L_08B5:
        mov     byte ptr [0xd3], 1              ; C6 06 D3 00 01
        jmp     L_08BC                          ; EB 00
L_08BC:
        in      al, 0x61                        ; E4 61
        or      al, 0x10                        ; 0C 10
        jmp     L_08C2                          ; EB 00
L_08C2:
        out     0x61, al                        ; E6 61
        mov     al, 3                           ; B0 03
        jmp     L_08DF                          ; EB 17
L_08C8:
        mov     byte ptr [0xd3], 0              ; C6 06 D3 00 00
        mov     byte ptr [0x7e], 0              ; C6 06 7E 00 00
        jmp     L_08D4                          ; EB 00
L_08D4:
        in      al, 0x61                        ; E4 61
        and     al, 0xef                        ; 24 EF
        jmp     L_08DA                          ; EB 00
L_08DA:
        out     0x61, al                        ; E6 61
        mov     al, byte ptr [0x7a]             ; A0 7A 00
L_08DF:
        mov     ah, 0x80                        ; B4 80
        int     0x1a                            ; CD 1A
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08E4 -- offset 0x08E4 -- 35 instr
; Llama a servicios DOS via INT 21h (35 instr).
; tags: dos_caller, int_1a, int_21
; callers: sub_07E4
; calls (intra): sub_0936, sub_0C3C
;----------------------------------------------------------------------
L_08E4:
        call    L_0936                          ; E8 4F 00
        jne     L_08F1                          ; 75 08
        or      ah, ah                          ; 0A E4
        je      L_08F3                          ; 74 06
        inc     ah                              ; FE C4
        je      L_08F5                          ; 74 04
L_08F1:
        stc                                     ; F9
        ret                                     ; C3
L_08F3:
        mov     ah, 2                           ; B4 02
L_08F5:
        mov     byte ptr [0x7a], ah             ; 88 26 7A 00
        cmp     byte ptr [0xd3], 0              ; 80 3E D3 00 00
        jne     L_0906                          ; 75 06
        xchg    ah, al                          ; 86 C4
        mov     ah, 0x80                        ; B4 80
        int     0x1a                            ; CD 1A
L_0906:
        ret                                     ; C3
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        push    es                              ; 06
        mov     bx, 0xffff                      ; BB FF FF
        mov     es, bx                          ; 8E C3
        mov     al, byte ptr es:[0xe]           ; 26 A0 0E 00
        mov     byte ptr [0x86], al             ; A2 86 00
        pop     es                              ; 07
        mov     al, 8                           ; B0 08
        mov     ah, 0x35                        ; B4 35
        cld                                     ; FC
        int     0x21                            ; CD 21
        mov     word ptr cs:[0x909], bx         ; 2E 89 1E 09 09
        mov     word ptr cs:[0x90b], es         ; 2E 8C 06 0B 09
        mov     word ptr cs:[0x907], ds         ; 2E 8C 1E 07 09
        call    L_0C3C                          ; E8 08 03
        sti                                     ; FB
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0936 -- offset 0x0936 -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: trivial_stub
; callers: sub_0623, sub_06AC, sub_08A6, sub_08E4, sub_0C3C
;----------------------------------------------------------------------
L_0936:
        cmp     byte ptr [0x86], 0xfd           ; 80 3E 86 00 FD
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_093C -- offset 0x093C -- 17 instr
; Funcion hoja (no llama a otras, 17 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0C3C
;----------------------------------------------------------------------
L_093C:
        push    ax                              ; 50
        push    dx                              ; 52
        push    si                              ; 56
        mov     dl, 0xf                         ; B2 0F
        mul     dl                              ; F6 E2
        mov     dx, 0x89                        ; BA 89 00
        add     ax, dx                          ; 03 C2
        mov     si, ax                          ; 8B F0
        xor     ax, ax                          ; 33 C0
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     word ptr [si + 8], ax           ; 89 44 08
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 4], ax           ; 89 44 04
        pop     si                              ; 5E
        pop     dx                              ; 5A
        pop     ax                              ; 58
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_095B -- offset 0x095B -- 11 instr
; Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_06AC, sub_07E4, sub_0A04, sub_0C3C
;----------------------------------------------------------------------
L_095B:
        push    ax                              ; 50
        mov     byte ptr [0x7d], ah             ; 88 26 7D 00
        mov     al, ah                          ; 8A C4
        mov     bl, 0xf                         ; B3 0F
        mul     bl                              ; F6 E3
        mov     bx, 0x89                        ; BB 89 00
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     es, ax                          ; 8E C0
        pop     ax                              ; 58
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0972 -- offset 0x0972 -- 64 instr
; Interrupt Service Routine (64 instrucciones, posible manejador de INT).
; tags: isr, loop
; callers: sub_0A84
; calls (intra): sub_0A04
;----------------------------------------------------------------------
L_0972:
        push    si                              ; 56
        mov     si, word ptr [bx + 6]           ; 8B 77 06
        mov     al, byte ptr es:[si]            ; 26 8A 04
        inc     si                              ; 46
        cmp     si, word ptr [bx + 2]           ; 3B 77 02
        jne     L_0982                          ; 75 03
        mov     si, 0                           ; BE 00 00
L_0982:
        mov     word ptr [bx + 6], si           ; 89 77 06
        dec     word ptr [bx + 4]               ; FF 4F 04
        pop     si                              ; 5E
        ret                                     ; C3
        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        push    es                              ; 06
        mov     ds, word ptr cs:[0x907]         ; 2E 8E 1E 07 09
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     byte ptr [0x7f], 1              ; C6 06 7F 00 01
        cmp     byte ptr [0xd4], 2              ; 80 3E D4 00 02
        je      L_09DF                          ; 74 38
        xor     ax, ax                          ; 33 C0
        mov     si, ax                          ; 8B F0
        mov     cx, 4                           ; B9 04 00
        cmp     byte ptr [0xd3], 1              ; 80 3E D3 00 01
        je      L_09C6                          ; 74 11
        cmp     word ptr [si + 0xc5], ax        ; 39 84 C5 00
        je      L_09C1                          ; 74 06
        dec     word ptr [si + 0xc5]            ; FF 8C C5 00
        jne     L_09DF                          ; 75 1E
L_09C1:
        call    L_0A04                          ; E8 40 00
        jmp     L_09DF                          ; EB 19
L_09C6:
        cmp     word ptr [si + 0xd6], ax        ; 39 84 D6 00
        je      L_09DB                          ; 74 0F
        cmp     word ptr [si + 0xc5], ax        ; 39 84 C5 00
        je      L_09D8                          ; 74 06
        dec     word ptr [si + 0xc5]            ; FF 8C C5 00
        jne     L_09DB                          ; 75 03
L_09D8:
        call    L_0A04                          ; E8 29 00
L_09DB:
        inc     si                              ; 46
        inc     si                              ; 46
        loop    L_09C6                          ; E2 E7
L_09DF:
        mov     byte ptr [0x7f], 0              ; C6 06 7F 00 00
        dec     byte ptr [0x7c]                 ; FE 0E 7C 00
        and     byte ptr [0x7c], 0x1f           ; 80 26 7C 00 1F
        pop     es                              ; 07
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     bx                              ; 5B
        jne     L_09FC                          ; 75 06
        pop     ax                              ; 58
        ljmp    cs:[0x909]                      ; 2E FF 2E 09 09
L_09FC:
        mov     al, 0x20                        ; B0 20
        jmp     L_0A00                          ; EB 00
L_0A00:
        out     0x20, al                        ; E6 20
        pop     ax                              ; 58
        iret                                    ; CF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A04 -- offset 0x0A04 -- 52 instr
; Dispatcher: tabla de decisiones cmp+jcc (52 instr).
; tags: dispatcher
; callers: sub_0972
; calls (intra): sub_095B, sub_0A84, sub_0C16
;----------------------------------------------------------------------
L_0A04:
        push    cx                              ; 51
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        shr     ax, 1                           ; D1 E8
        mov     ah, al                          ; 8A E0
        call    L_095B                          ; E8 4C FF
        cmp     word ptr [bx + 4], 0            ; 83 7F 04 00
        je      L_0A3F                          ; 74 2A
        call    L_0A84                          ; E8 6C 00
        jb      L_0A81                          ; 72 67
        cmp     byte ptr [0xd3], 1              ; 80 3E D3 00 01
        je      L_0A2D                          ; 74 0C
        mov     al, cl                          ; 8A C1
        out     0x42, al                        ; E6 42
        mov     al, ch                          ; 8A C5
        jmp     L_0A29                          ; EB 00
L_0A29:
        out     0x42, al                        ; E6 42
        jmp     L_0A39                          ; EB 0C
L_0A2D:
        push    ax                              ; 50
        mov     al, cl                          ; 8A C1
        out     0xc0, al                        ; E6 C0
        mov     al, ch                          ; 8A C5
        out     0xc0, al                        ; E6 C0
        pop     ax                              ; 58
        out     0xc0, al                        ; E6 C0
L_0A39:
        mov     word ptr [si + 0xc5], dx        ; 89 94 C5 00
        jmp     L_0A81                          ; EB 42
L_0A3F:
        cmp     byte ptr [0xd3], 1              ; 80 3E D3 00 01
        jne     L_0A6F                          ; 75 29
        mov     word ptr [si + 0xd6], 0         ; C7 84 D6 00 00 00
        mov     ax, si                          ; 8B C6
        mov     ah, al                          ; 8A E0
        add     al, 1                           ; 04 01
        mov     cl, 4                           ; B1 04
        shl     al, cl                          ; D2 E0
        or      al, 0x8f                        ; 0C 8F
        out     0xc0, al                        ; E6 C0
        shr     ah, 1                           ; D0 EC
        mov     cl, ah                          ; 8A CC
        mov     ah, 1                           ; B4 01
        rol     ah, cl                          ; D2 C4
        or      byte ptr [0xd5], ah             ; 08 26 D5 00
        cmp     byte ptr [0xd5], 0xf            ; 80 3E D5 00 0F
        je      L_0A6F                          ; 74 02
        jmp     L_0A81                          ; EB 12
L_0A6F:
        mov     byte ptr [0xd5], 0              ; C6 06 D5 00 00
        mov     byte ptr [0xcd], 0              ; C6 06 CD 00 00
        call    L_0C16                          ; E8 9A 01
        mov     byte ptr [0xd4], 2              ; C6 06 D4 00 02
L_0A81:
        pop     ax                              ; 58
        pop     cx                              ; 59
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A84 -- offset 0x0A84 -- 69 instr
; Dispatcher: tabla de decisiones cmp+jcc (69 instr).
; tags: dispatcher
; callers: sub_0A04
; calls (intra): sub_0972, sub_0B45
;----------------------------------------------------------------------
L_0A84:
        mov     dx, word ptr [si + 0x80]        ; 8B 94 80 00
        or      dx, dx                          ; 0B D2
        jne     L_0AD4                          ; 75 48
        call    L_0972                          ; E8 E3 FE
        cmp     al, 1                           ; 3C 01
        je      L_0AA1                          ; 74 0E
        cmp     al, 0xff                        ; 3C FF
        je      L_0AE1                          ; 74 4A
        cmp     al, 4                           ; 3C 04
        jne     L_0A9E                          ; 75 03
        jmp     L_0B23                          ; E9 85 00
L_0A9E:
        jmp     L_0B36                          ; E9 95 00
L_0AA1:
        call    L_0972                          ; E8 CE FE
        mov     cl, al                          ; 8A C8
        call    L_0972                          ; E8 C9 FE
        mov     ch, al                          ; 8A E8
        call    L_0972                          ; E8 C4 FE
        mov     dl, al                          ; 8A D0
        call    L_0972                          ; E8 BF FE
        mov     dh, al                          ; 8A F0
        push    dx                              ; 52
        call    L_0972                          ; E8 B9 FE
        mov     dl, al                          ; 8A D0
        call    L_0972                          ; E8 B4 FE
        mov     dh, al                          ; 8A F0
        mov     word ptr [si + 0x80], dx        ; 89 94 80 00
        pop     dx                              ; 5A
        or      cx, cx                          ; 0B C9
        jne     L_0ACF                          ; 75 06
        mov     dx, word ptr [si + 0x80]        ; 8B 94 80 00
        jmp     L_0AD4                          ; EB 05
L_0ACF:
        mov     al, byte ptr [bx + 0xe]         ; 8A 47 0E
        jmp     L_0B3E                          ; EB 6A
L_0AD4:
        mov     word ptr [si + 0x80], 0         ; C7 84 80 00 00 00
        mov     cx, 0x12                        ; B9 12 00
        mov     al, 0                           ; B0 00
        jmp     L_0B43                          ; EB 62
L_0AE1:
        inc     byte ptr [0xcd]                 ; FE 06 CD 00
        cmp     byte ptr [0xcd], 3              ; 80 3E CD 00 03
        je      L_0AFE                          ; 74 12
        mov     word ptr [si + 0xd6], 0         ; C7 84 D6 00 00 00
        shr     si, 1                           ; D1 EE
        mov     byte ptr [si + 0xce], 1         ; C6 84 CE 00 01
        shl     si, 1                           ; D1 E6
        stc                                     ; F9
        jmp     L_0B44                          ; EB 46
L_0AFE:
        mov     byte ptr [0xcd], 0              ; C6 06 CD 00 00
        mov     word ptr [0xd6], 1              ; C7 06 D6 00 01 00
        mov     word ptr [0xd8], 1              ; C7 06 D8 00 01 00
        mov     word ptr [0xda], 1              ; C7 06 DA 00 01 00
        mov     word ptr [0xce], 0              ; C7 06 CE 00 00 00
        mov     byte ptr [0xd0], 0              ; C6 06 D0 00 00
        stc                                     ; F9
        jmp     L_0B44                          ; EB 21
L_0B23:
        call    L_0972                          ; E8 4C FE
        mov     cl, al                          ; 8A C8
        xor     ch, ch                          ; 32 ED
        call    L_0972                          ; E8 45 FE
        mov     dl, al                          ; 8A D0
        call    L_0972                          ; E8 40 FE
        mov     dh, al                          ; 8A F0
        jmp     L_0B3E                          ; EB 08
L_0B36:
        call    L_0972                          ; E8 39 FE
        mov     byte ptr [bx + 0xe], al         ; 88 47 0E
        jmp     L_0B43                          ; EB 05
L_0B3E:
        dec     word ptr [bx]                   ; FF 0F
        call    L_0B45                          ; E8 02 00
L_0B43:
        clc                                     ; F8
L_0B44:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B45 -- offset 0x0B45 -- 84 instr
; Llama a servicios DOS via INT 21h (84 instr).
; tags: dos_caller, int_21
; callers: sub_0A84
;----------------------------------------------------------------------
L_0B45:
        push    ax                              ; 50
        push    cx                              ; 51
        push    dx                              ; 52
        mov     cx, si                          ; 8B CE
        shr     cl, 1                           ; D0 E9
        mov     ax, 1                           ; B8 01 00
        shl     ax, cl                          ; D3 E0
        mov     dx, word ptr [bx + 0xc]         ; 8B 57 0C
        cmp     word ptr [bx], dx               ; 39 17
        jne     L_0B5C                          ; 75 04
        or      word ptr [0xd1], ax             ; 09 06 D1 00
L_0B5C:
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     ax                              ; 58
        ret                                     ; C3
        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        cli                                     ; FA
        jmp     L_0B67                          ; EB 00
L_0B67:
        in      al, 0x21                        ; E4 21
        or      al, 1                           ; 0C 01
        jmp     L_0B6D                          ; EB 00
L_0B6D:
        out     0x21, al                        ; E6 21
        cmp     byte ptr [0xd3], 1              ; 80 3E D3 00 01
        jne     L_0BB7                          ; 75 41
        cmp     byte ptr [0xce], 1              ; 80 3E CE 00 01
        je      L_0B88                          ; 74 0B
        mov     word ptr [0xd6], 1              ; C7 06 D6 00 01 00
        and     byte ptr [0xd5], 0xfe           ; 80 26 D5 00 FE
L_0B88:
        cmp     byte ptr [0xcf], 1              ; 80 3E CF 00 01
        je      L_0B9A                          ; 74 0B
        mov     word ptr [0xd8], 1              ; C7 06 D8 00 01 00
        and     byte ptr [0xd5], 0xfd           ; 80 26 D5 00 FD
L_0B9A:
        cmp     byte ptr [0xd0], 1              ; 80 3E D0 00 01
        je      L_0BAC                          ; 74 0B
        mov     word ptr [0xda], 1              ; C7 06 DA 00 01 00
        and     byte ptr [0xd5], 0xfb           ; 80 26 D5 00 FB
L_0BAC:
        mov     word ptr [0xdc], 1              ; C7 06 DC 00 01 00
        and     byte ptr [0xd5], 0xf7           ; 80 26 D5 00 F7
L_0BB7:
        cmp     byte ptr [0x87], 1              ; 80 3E 87 00 01
        je      L_0C06                          ; 74 48
        mov     byte ptr [0x87], 1              ; C6 06 87 00 01
        push    ds                              ; 1E
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     al, 8                           ; B0 08
        mov     dx, 0x98a                       ; BA 8A 09
        mov     ah, 0x25                        ; B4 25
        cld                                     ; FC
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     byte ptr [0xd4], 1              ; C6 06 D4 00 01
        mov     ax, 0x800                       ; B8 00 08
        jmp     L_0BDB                          ; EB 00
L_0BDB:
        out     0x40, al                        ; E6 40
        mov     al, ah                          ; 8A C4
        jmp     L_0BE1                          ; EB 00
L_0BE1:
        out     0x40, al                        ; E6 40
        cmp     byte ptr [0xd3], 1              ; 80 3E D3 00 01
        je      L_0C06                          ; 74 1C
        cmp     byte ptr [0x7e], 1              ; 80 3E 7E 00 01
        je      L_0C06                          ; 74 15
        mov     al, 0xb6                        ; B0 B6
        jmp     L_0BF5                          ; EB 00
L_0BF5:
        out     0x43, al                        ; E6 43
        jmp     L_0BF9                          ; EB 00
L_0BF9:
        in      al, 0x61                        ; E4 61
        or      al, 3                           ; 0C 03
        jmp     L_0BFF                          ; EB 00
L_0BFF:
        out     0x61, al                        ; E6 61
        mov     byte ptr [0x7e], 1              ; C6 06 7E 00 01
L_0C06:
        jmp     L_0C08                          ; EB 00
L_0C08:
        in      al, 0x21                        ; E4 21
        and     al, 0xfe                        ; 24 FE
        jmp     L_0C0E                          ; EB 00
L_0C0E:
        out     0x21, al                        ; E6 21
        sti                                     ; FB
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     bx                              ; 5B
        pop     ax                              ; 58
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C16 -- offset 0x0C16 -- 18 instr
; Funcion sin clasificar definitiva (18 instr).
; tags: small
; callers: sub_07E4, sub_0A04
; calls (intra): sub_0C3C
;----------------------------------------------------------------------
L_0C16:
        cli                                     ; FA
        mov     byte ptr [0xd5], 0              ; C6 06 D5 00 00
        mov     byte ptr [0xcd], 0              ; C6 06 CD 00 00
        push    ax                              ; 50
        jmp     L_0C24                          ; EB 00
L_0C24:
        in      al, 0x21                        ; E4 21
        or      al, 1                           ; 0C 01
        jmp     L_0C2A                          ; EB 00
L_0C2A:
        out     0x21, al                        ; E6 21
        call    L_0C3C                          ; E8 0D 00
        jmp     L_0C31                          ; EB 00
L_0C31:
        in      al, 0x21                        ; E4 21
        and     al, 0xfe                        ; 24 FE
        jmp     L_0C37                          ; EB 00
L_0C37:
        out     0x21, al                        ; E6 21
        sti                                     ; FB
        pop     ax                              ; 58
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C3C -- offset 0x0C3C -- 89 instr
; Llama a servicios DOS via INT 21h (89 instr).
; tags: dos_caller, int_21
; callers: sub_07E4, sub_08E4, sub_0C16
; calls (intra): sub_0936, sub_093C, sub_095B
;----------------------------------------------------------------------
L_0C3C:
        cli                                     ; FA
        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        call    L_095B                          ; E8 18 FD
        push    ds                              ; 1E
        pop     es                              ; 07
        xor     ax, ax                          ; 33 C0
        mov     word ptr [0xd6], ax             ; A3 D6 00
        mov     word ptr [0xc5], ax             ; A3 C5 00
        mov     byte ptr [0x87], al             ; A2 87 00
        call    L_093C                          ; E8 E9 FC
        call    L_0936                          ; E8 E0 FC
        jne     L_0C9D                          ; 75 45
        push    di                              ; 57
        push    si                              ; 56
        xor     ax, ax                          ; 33 C0
        mov     cx, 3                           ; B9 03 00
        mov     di, 0xd8                        ; BF D8 00
        cld                                     ; FC
        rep stosw word ptr es:[di], ax          ; F3 AB
        mov     cx, 4                           ; B9 04 00
        mov     di, 0xc5                        ; BF C5 00
        rep stosw word ptr es:[di], ax          ; F3 AB
        mov     cx, 3                           ; B9 03 00
        mov     di, 0xce                        ; BF CE 00
        rep stosb byte ptr es:[di], al          ; F3 AA
        mov     byte ptr [0xcd], al             ; A2 CD 00
        mov     al, 0x9f                        ; B0 9F
        out     0xc0, al                        ; E6 C0
        mov     al, 0xbf                        ; B0 BF
        out     0xc0, al                        ; E6 C0
        mov     al, 0xdf                        ; B0 DF
        out     0xc0, al                        ; E6 C0
        mov     al, 0xff                        ; B0 FF
        out     0xc0, al                        ; E6 C0
        mov     ax, 1                           ; B8 01 00
L_0C8B:
        xchg    al, ah                          ; 86 E0
        call    L_095B                          ; E8 CB FC
        xchg    ah, al                          ; 86 C4
        call    L_093C                          ; E8 A7 FC
        inc     al                              ; FE C0
        cmp     al, 3                           ; 3C 03
        jbe     L_0C8B                          ; 76 F0
        pop     si                              ; 5E
        pop     di                              ; 5F
L_0C9D:
        cmp     byte ptr [0x7e], 1              ; 80 3E 7E 00 01
        je      L_0CB0                          ; 74 0C
        jmp     L_0CA6                          ; EB 00
L_0CA6:
        in      al, 0x61                        ; E4 61
        and     al, 0xfc                        ; 24 FC
        jmp     L_0CAC                          ; EB 00
L_0CAC:
        out     0x61, al                        ; E6 61
        jmp     L_0CBC                          ; EB 0C
L_0CB0:
        jmp     L_0CB2                          ; EB 00
L_0CB2:
        mov     al, 0x1d                        ; B0 1D
        out     0x42, al                        ; E6 42
        mov     al, 0                           ; B0 00
        jmp     L_0CBA                          ; EB 00
L_0CBA:
        out     0x42, al                        ; E6 42
L_0CBC:
        cmp     byte ptr [0x7f], 1              ; 80 3E 7F 00 01
        je      L_0CE0                          ; 74 1D
        push    bx                              ; 53
        push    dx                              ; 52
        push    ds                              ; 1E
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        mov     ds, ax                          ; 8E D8
        mov     al, 8                           ; B0 08
        lds     dx, ptr cs:[0x909]              ; 2E C5 16 09 09
        mov     ah, 0x25                        ; B4 25
        cld                                     ; FC
        int     0x21                            ; CD 21
        pop     ax                              ; 58
        pop     ds                              ; 1F
        mov     byte ptr [0xd4], 0              ; C6 06 D4 00 00
        pop     dx                              ; 5A
        pop     bx                              ; 5B
L_0CE0:
        xor     ax, ax                          ; 33 C0
        jmp     L_0CE4                          ; EB 00
L_0CE4:
        out     0x40, al                        ; E6 40
        jmp     L_0CE8                          ; EB 00
L_0CE8:
        out     0x40, al                        ; E6 40
        pop     cx                              ; 59
        pop     bx                              ; 5B
        pop     ax                              ; 58
        clc                                     ; F8
        sti                                     ; FB
        ret                                     ; C3

SOUND_TEXT ENDS

        END
