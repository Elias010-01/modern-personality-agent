; AUTO-GENERATED from original USER segment 24
; segment_size=2331 bytes, flags=0xf130
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
; MYOPENCOMM -- 110 instr
; Funcion compleja: 110 instrucciones, 2 llamadas, 9 branches.
; tags: calls_comm, complex, far
; calls (inter): COMM.INICOM, COMM.SETQUE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; MYOPENCOMM  (offset 0x0000, size 248 bytes)
;-----------------------------------------------------------------------
MYOPENCOMM PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x24                        ; 83 EC 24
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_06DB                          ; E8 C3 06
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        inc     ax                              ; 40
        jne     L_0024                          ; 75 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_00EB                          ; E9 C7 00
L_0024:
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    L_07A2                          ; E8 78 07
        mov     si, ax                          ; 8B F0
        test    byte ptr [si], 1                ; F6 04 01
        je      L_0037                          ; 74 06
        mov     ax, 0xfffe                      ; B8 FE FF
        jmp     L_00EB                          ; E9 B4 00
L_0037:
        test    byte ptr [bp - 0x24], 0x80      ; F6 46 DC 80
        je      L_0055                          ; 74 18
        mov     ax, 0x2e2                       ; B8 E2 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0406                          ; E8 BA 03
        inc     ax                              ; 40
        jne     L_00B2                          ; 75 63
L_004F:
        mov     ax, 0xfffb                      ; B8 FB FF
        jmp     L_00EB                          ; E9 96 00
L_0055:
        mov     ax, 0x2d2                       ; B8 D2 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0406                          ; E8 A2 03
        inc     ax                              ; 40
        je      L_004F                          ; 74 E8
        mov     di, si                          ; 8B FE
        add     di, 3                           ; 83 C7 03
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_07CE                          ; E8 5C 07
        mov     word ptr [di], ax               ; 89 05
        mov     word ptr [di + 2], dx           ; 89 55 02
        or      ax, dx                          ; 0B C2
        jne     L_0080                          ; 75 05
L_007B:
        mov     ax, 0xfffc                      ; B8 FC FF
        jmp     L_00EB                          ; EB 6B
L_0080:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_07CE                          ; E8 48 07
        mov     word ptr [di + 6], ax           ; 89 45 06
        mov     word ptr [di + 8], dx           ; 89 55 08
        or      ax, dx                          ; 0B C2
        jne     L_009A                          ; 75 0A
        push    word ptr [di + 2]               ; FF 75 02
        push    word ptr [di]                   ; FF 35
        call    L_07EC                          ; E8 54 07
        jmp     L_007B                          ; EB E1
L_009A:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [di + 4], ax           ; 89 45 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [di + 0xa], ax         ; 89 45 0A
        push    word ptr [bp - 0x24]            ; FF 76 DC
        mov     ax, di                          ; 8B C7
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far COMM.SETQUE                 ; 9A FF FF 00 00 [FIXUP]
L_00B2:
        mov     al, byte ptr [bp - 0x24]        ; 8A 46 DC
        mov     byte ptr [bp - 0x1e], al        ; 88 46 E2
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far COMM.INICOM                 ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        or      ax, ax                          ; 0B C0
        je      L_00E5                          ; 74 1C
        test    byte ptr [bp - 0x24], 0x80      ; F6 46 DC 80
        jne     L_00E0                          ; 75 11
        push    word ptr [di + 2]               ; FF 75 02
        push    word ptr [di]                   ; FF 35
        call    L_07EC                          ; E8 15 07
        push    word ptr [di + 8]               ; FF 75 08
        push    word ptr [di + 6]               ; FF 75 06
        call    L_07EC                          ; E8 0C 07
L_00E0:
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        jmp     L_00EB                          ; EB 06
L_00E5:
        or      byte ptr [si], 1                ; 80 0C 01
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
L_00EB:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
MYOPENCOMM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETCOMMSTATE -- 27 instr
; Setter: cambia commstate.
; tags: calls_comm, far, small
; calls (inter): COMM.SETCOM
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETCOMMSTATE  (offset 0x00F8, size 55 bytes)
;-----------------------------------------------------------------------
SETCOMMSTATE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_07A2                          ; E8 95 06
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx], 1                ; F6 07 01
        jne     L_0119                          ; 75 05
        mov     ax, 0xfffd                      ; B8 FD FF
        jmp     L_0124                          ; EB 0B
L_0119:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far COMM.SETCOM                 ; 9A FF FF 00 00 [FIXUP]
L_0124:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SETCOMMSTATE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETCOMMSTATE -- 43 instr
; Getter: devuelve commstate.
; tags: calls_comm, far, medium
; calls (inter): COMM.GETDCB
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETCOMMSTATE  (offset 0x012F, size 102 bytes)
;-----------------------------------------------------------------------
GETCOMMSTATE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_07A2                          ; E8 60 06
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx], 1                ; F6 07 01
        jne     L_014E                          ; 75 05
        mov     ax, 0xfffd                      ; B8 FD FF
        jmp     L_018A                          ; EB 3C
L_014E:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far COMM.GETDCB                 ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        je      L_0187                          ; 74 27
        mov     word ptr [bp - 8], 0x19         ; C7 46 F8 19 00
        jmp     L_0179                          ; EB 12
L_0167:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     byte ptr es:[bx], al            ; 26 88 07
L_0179:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        dec     word ptr [bp - 8]               ; FF 4E F8
        or      ax, ax                          ; 0B C0
        jne     L_0167                          ; 75 E4
        sub     ax, ax                          ; 2B C0
        jmp     L_018A                          ; EB 03
L_0187:
        mov     ax, 0xffff                      ; B8 FF FF
L_018A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
GETCOMMSTATE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; READCOMM -- 62 instr
; Dispatcher: tabla de decisiones cmp+jcc (62 instr).
; tags: calls_comm, dispatcher, far
; calls (inter): COMM.RECCOM
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; READCOMM  (offset 0x0195, size 163 bytes)
;-----------------------------------------------------------------------
READCOMM PROC FAR
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
        and     byte ptr [bp + 0xd], 0          ; 80 66 0D 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_01B3                          ; 74 06
        cmp     word ptr [bp + 0xc], 9          ; 83 7E 0C 09
        jbe     L_01B7                          ; 76 04
L_01B3:
        sub     ax, ax                          ; 2B C0
        jmp     L_022C                          ; EB 75
L_01B7:
        mov     ax, 0xf                         ; B8 0F 00
        mul     word ptr [bp + 0xc]             ; F7 66 0C
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 0x20e], 1        ; F6 87 0E 02 01
        je      L_01B3                          ; 74 ED
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     ax, 0xf                         ; B8 0F 00
        mul     word ptr [bp + 0xc]             ; F7 66 0C
        mov     si, ax                          ; 8B F0
        test    byte ptr [si + 0x20e], 2        ; F6 84 0E 02 02
        je      L_01EF                          ; 74 15
        and     byte ptr [si + 0x20e], 0xfd     ; 80 A4 0E 02 FD
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [si + 0x210]       ; 8A 84 10 02
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 6]               ; FF 46 FA
L_01EF:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_01F4:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_020B                          ; 7D 0F
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far COMM.RECCOM                 ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_0218                          ; 7D 0D
L_020B:
        cmp     word ptr [bp - 4], -1           ; 83 7E FC FF
        jne     L_0229                          ; 75 18
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        jmp     L_022C                          ; EB 14
L_0218:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_01F4                          ; EB CB
L_0229:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_022C:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
READCOMM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; UNGETCOMMCHAR -- 38 instr
; Funcion mediana (38 instr, 0 calls).
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; UNGETCOMMCHAR  (offset 0x0238, size 90 bytes)
;-----------------------------------------------------------------------
UNGETCOMMCHAR PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        and     byte ptr [bp + 9], 0            ; 80 66 09 00
        cmp     word ptr [bp + 8], 9            ; 83 7E 08 09
        ja      L_025C                          ; 77 0F
        mov     ax, 0xf                         ; B8 0F 00
        mul     word ptr [bp + 8]               ; F7 66 08
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 0x20e], 2        ; F6 87 0E 02 02
        je      L_0261                          ; 74 05
L_025C:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0286                          ; EB 25
L_0261:
        mov     ax, 0xf                         ; B8 0F 00
        mul     word ptr [bp + 8]               ; F7 66 08
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 0x20e], 1        ; F6 87 0E 02 01
        je      L_025C                          ; 74 EC
        mov     ax, 0xf                         ; B8 0F 00
        mul     word ptr [bp + 8]               ; F7 66 08
        mov     si, ax                          ; 8B F0
        or      byte ptr [si + 0x20e], 2        ; 80 8C 0E 02 02
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     byte ptr [si + 0x210], al       ; 88 84 10 02
        sub     ax, ax                          ; 2B C0
L_0286:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
UNGETCOMMCHAR ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; WRITECOMM -- 54 instr
; Funcion mediana (54 instr, 1 calls).
; tags: calls_comm, far, medium
; calls (inter): COMM.SNDCOM
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; WRITECOMM  (offset 0x0292, size 128 bytes)
;-----------------------------------------------------------------------
WRITECOMM PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        and     byte ptr [bp + 0xd], 0          ; 80 66 0D 00
        test    byte ptr [bp + 0xc], 0x80       ; F6 46 0C 80
        je      L_02AE                          ; 74 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_02B1                          ; EB 03
L_02AE:
        mov     ax, 9                           ; B8 09 00
L_02B1:
        mov     cx, word ptr [bp + 0xc]         ; 8B 4E 0C
        and     cx, 0x7f                        ; 81 E1 7F 00
        cmp     ax, cx                          ; 3B C1
        jae     L_02C0                          ; 73 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0307                          ; EB 47
L_02C0:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_07A2                          ; E8 DC 04
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx], 1                ; F6 07 01
        jne     L_02D2                          ; 75 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0307                          ; EB 35
L_02D2:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_02FA                          ; EB 21
L_02D9:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        push    ax                              ; 50
        call    far COMM.SNDCOM                 ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_02F7                          ; 74 07
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        neg     ax                              ; F7 D8
        jmp     L_0307                          ; EB 10
L_02F7:
        inc     word ptr [bp - 4]               ; FF 46 FC
L_02FA:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     word ptr [bp + 6]               ; FF 4E 06
        or      ax, ax                          ; 0B C0
        jne     L_02D9                          ; 75 D5
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0307:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
WRITECOMM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CLOSECOMM -- 49 instr
; Funcion mediana (49 instr, 1 calls).
; tags: calls_comm, far, medium
; calls (inter): COMM.TRMCOM
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CLOSECOMM  (offset 0x0312, size 119 bytes)
;-----------------------------------------------------------------------
CLOSECOMM PROC FAR
L_0312:
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
        and     byte ptr [bp + 7], 0            ; 80 66 07 00
        test    byte ptr [bp + 6], 0x80         ; F6 46 06 80
        je      L_032F                          ; 74 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_0332                          ; EB 03
L_032F:
        mov     ax, 9                           ; B8 09 00
L_0332:
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        and     cx, 0x7f                        ; 81 E1 7F 00
        cmp     ax, cx                          ; 3B C1
        jae     L_0342                          ; 73 05
L_033D:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_037D                          ; EB 3B
L_0342:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_07A2                          ; E8 5A 04
        mov     si, ax                          ; 8B F0
        test    byte ptr [si], 1                ; F6 04 01
        je      L_033D                          ; 74 EE
        push    word ptr [bp + 6]               ; FF 76 06
        call    far COMM.TRMCOM                 ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0x8000                      ; 3D 00 80
        je      L_033D                          ; 74 DE
        and     byte ptr [si], 0xfe             ; 80 24 FE
        test    byte ptr [bp + 6], 0x80         ; F6 46 06 80
        jne     L_037A                          ; 75 12
        push    word ptr [si + 5]               ; FF 74 05
        push    word ptr [si + 3]               ; FF 74 03
        call    L_07EC                          ; E8 7B 04
        push    word ptr [si + 0xb]             ; FF 74 0B
        push    word ptr [si + 9]               ; FF 74 09
        call    L_07EC                          ; E8 72 04
L_037A:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_037D:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
CLOSECOMM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETCOMMERROR -- 61 instr
; Getter: devuelve commerror.
; tags: calls_comm, far, medium
; calls (inter): COMM.STACOM
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETCOMMERROR  (offset 0x0389, size 125 bytes)
;-----------------------------------------------------------------------
GETCOMMERROR PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        and     byte ptr [bp + 0xb], 0          ; 80 66 0B 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far COMM.STACOM                 ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0x8000                      ; 3D 00 80
        je      L_03C4                          ; 74 14
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_07A2                          ; E8 EC 03
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx], 2                ; F6 07 02
        je      L_03C4                          ; 74 07
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr es:[bx + 1]            ; 26 FF 47 01
L_03C4:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
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
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        sub     si, si                          ; 2B F6
L_03E2:
        mov     ax, 0xf                         ; B8 0F 00
        imul    si                              ; F7 EE
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 0x20e], 1        ; F6 87 0E 02 01
        je      L_03F6                          ; 74 06
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0312                          ; E8 1C FF
L_03F6:
        inc     si                              ; 46
        cmp     si, 0xd                         ; 83 FE 0D
        jl      L_03E2                          ; 7C E6
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
GETCOMMERROR ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; BUILDCOMMDCB -- 385 instr
; Dispatcher: tabla de decisiones cmp+jcc (385 instr).
; tags: calls_kernel, dispatcher, far
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.LSTRLEN
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; BUILDCOMMDCB  (offset 0x0406, size 1015 bytes)
;-----------------------------------------------------------------------
BUILDCOMMDCB PROC FAR
L_0406:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x5a                        ; 83 EC 5A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0x5a], ax        ; 89 46 A6
        mov     word ptr [bp - 0x58], dx        ; 89 56 A8
        mov     word ptr [bp - 4], 0x19         ; C7 46 FC 19 00
        jmp     L_0430                          ; EB 0A
L_0426:
        les     bx, ptr [bp - 0x5a]             ; C4 5E A6
        inc     word ptr [bp - 0x5a]            ; FF 46 A6
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
L_0430:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        dec     word ptr [bp - 4]               ; FF 4E FC
        or      ax, ax                          ; 0B C0
        jne     L_0426                          ; 75 EC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_065E                          ; E8 16 02
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 0xc], dx         ; 89 56 0C
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_06DB                          ; E8 85 02
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        inc     ax                              ; 40
        jne     L_0462                          ; 75 06
L_045C:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0653                          ; E9 F1 01
L_0462:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr [bp - 0x56]        ; 8A 46 AA
        mov     byte ptr es:[bx], al            ; 26 88 07
        test    byte ptr [bp - 0x56], 0x80      ; F6 46 AA 80
        je      L_047A                          ; 74 09
        mov     ax, 0x2e7                       ; B8 E7 02
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 0xc], ds         ; 8C 5E 0C
L_047A:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_065E                          ; E8 D6 01
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 0xc], dx         ; 89 56 0C
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jl      L_045C                          ; 7C BF
        mov     al, byte ptr [bp - 0x54]        ; 8A 46 AC
        cwde                                    ; 98
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x53]        ; 8A 46 AD
        cwde                                    ; 98
        or      cx, ax                          ; 0B C8
        mov     word ptr [bp - 4], cx           ; 89 4E FC
        mov     ax, cx                          ; 8B C1
        cmp     ax, 0x3234                      ; 3D 34 32
        je      L_0521                          ; 74 6A
        jg      L_0536                          ; 7F 7D
        cmp     ax, 0x3131                      ; 3D 31 31
        je      L_04CA                          ; 74 0C
        cmp     ax, 0x3132                      ; 3D 32 31
        je      L_051A                          ; 74 57
        cmp     ax, 0x3135                      ; 3D 35 31
        je      L_0505                          ; 74 3D
        jmp     L_045C                          ; EB 92
L_04CA:
        mov     word ptr [bp - 4], 0x6e         ; C7 46 FC 6E 00
L_04CF:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 1], ax        ; 26 89 47 01
        mov     word ptr es:[bx + 0x10], 0xa    ; 26 C7 47 10 0A 00
        mov     word ptr es:[bx + 0x12], 0xa    ; 26 C7 47 12 0A 00
        or      byte ptr es:[bx + 0xc], 1       ; 26 80 4F 0C 01
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_065E                          ; E8 66 01
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 0xc], dx         ; 89 56 0C
        or      ax, dx                          ; 0B C2
        jne     L_054D                          ; 75 4B
        jmp     L_0651                          ; E9 4C 01
L_0505:
        mov     word ptr [bp - 4], 0x96         ; C7 46 FC 96 00
        jmp     L_04CF                          ; EB C3
L_050C:
        mov     word ptr [bp - 4], 0x12c        ; C7 46 FC 2C 01
        jmp     L_04CF                          ; EB BC
L_0513:
        mov     word ptr [bp - 4], 0x258        ; C7 46 FC 58 02
        jmp     L_04CF                          ; EB B5
L_051A:
        mov     word ptr [bp - 4], 0x4b0        ; C7 46 FC B0 04
        jmp     L_04CF                          ; EB AE
L_0521:
        mov     word ptr [bp - 4], 0x960        ; C7 46 FC 60 09
        jmp     L_04CF                          ; EB A7
L_0528:
        mov     word ptr [bp - 4], 0x12c0       ; C7 46 FC C0 12
        jmp     L_04CF                          ; EB A0
L_052F:
        mov     word ptr [bp - 4], 0x2580       ; C7 46 FC 80 25
        jmp     L_04CF                          ; EB 99
L_0536:
        cmp     ax, 0x3330                      ; 3D 30 33
        je      L_050C                          ; 74 D1
        cmp     ax, 0x3438                      ; 3D 38 34
        je      L_0528                          ; 74 E8
        cmp     ax, 0x3530                      ; 3D 30 35
        je      L_0513                          ; 74 CE
        cmp     ax, 0x3936                      ; 3D 36 39
        je      L_052F                          ; 74 E5
        jmp     L_045C                          ; E9 0F FF
L_054D:
        mov     al, byte ptr [bp - 0x54]        ; 8A 46 AC
        cwde                                    ; 98
        or      ax, ax                          ; 0B C0
        je      L_0567                          ; 74 12
        cmp     ax, 0x45                        ; 3D 45 00
        je      L_0567                          ; 74 0D
        cmp     ax, 0x4e                        ; 3D 4E 00
        je      L_0598                          ; 74 39
        cmp     ax, 0x4f                        ; 3D 4F 00
        je      L_0591                          ; 74 2D
        jmp     L_045C                          ; E9 F5 FE
L_0567:
        mov     word ptr [bp - 4], 2            ; C7 46 FC 02 00
L_056C:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr es:[bx + 4], al        ; 26 88 47 04
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_065E                          ; E8 DA 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 0xc], dx         ; 89 56 0C
        or      ax, dx                          ; 0B C2
        jne     L_059F                          ; 75 11
        jmp     L_0651                          ; E9 C0 00
L_0591:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_056C                          ; EB D4
L_0598:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_056C                          ; EB CD
L_059F:
        mov     al, byte ptr [bp - 0x54]        ; 8A 46 AC
        cwde                                    ; 98
        or      ax, ax                          ; 0B C0
        je      L_05B4                          ; 74 0D
        cmp     ax, 0x37                        ; 3D 37 00
        je      L_05B4                          ; 74 08
        cmp     ax, 0x38                        ; 3D 38 00
        je      L_05DD                          ; 74 2C
        jmp     L_045C                          ; E9 A8 FE
L_05B4:
        mov     word ptr [bp - 4], 7            ; C7 46 FC 07 00
L_05B9:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr es:[bx + 3], al        ; 26 88 47 03
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_065E                          ; E8 8D 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 0xc], dx         ; 89 56 0C
        or      ax, dx                          ; 0B C2
        jne     L_05E4                          ; 75 09
        jmp     L_0651                          ; EB 74
L_05DD:
        mov     word ptr [bp - 4], 8            ; C7 46 FC 08 00
        jmp     L_05B9                          ; EB D5
L_05E4:
        mov     al, byte ptr [bp - 0x54]        ; 8A 46 AC
        cwde                                    ; 98
        or      ax, ax                          ; 0B C0
        je      L_05F9                          ; 74 0D
        cmp     ax, 0x31                        ; 3D 31 00
        je      L_062C                          ; 74 3B
        cmp     ax, 0x32                        ; 3D 32 00
        je      L_0603                          ; 74 0D
        jmp     L_045C                          ; E9 63 FE
L_05F9:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 1], 0x6e      ; 26 83 7F 01 6E
        jne     L_062C                          ; 75 29
L_0603:
        mov     word ptr [bp - 4], 2            ; C7 46 FC 02 00
L_0608:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr es:[bx + 5], al        ; 26 88 47 05
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_065E                          ; E8 3E 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 0xc], dx         ; 89 56 0C
        or      ax, dx                          ; 0B C2
        jne     L_0633                          ; 75 09
        jmp     L_0651                          ; EB 25
L_062C:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0608                          ; EB D5
L_0633:
        cmp     byte ptr [bp - 0x54], 0x50      ; 80 7E AC 50
        je      L_063C                          ; 74 03
        jmp     L_045C                          ; E9 20 FE
L_063C:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 6], 0xffff    ; 26 C7 47 06 FF FF
        mov     word ptr es:[bx + 8], 0xffff    ; 26 C7 47 08 FF FF
        mov     word ptr es:[bx + 0xa], 0xffff  ; 26 C7 47 0A FF FF
L_0651:
        sub     ax, ax                          ; 2B C0
L_0653:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
L_065E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        jne     L_0671                          ; 75 05
L_066C:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_06D5                          ; EB 64
L_0671:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_066C                          ; 74 F2
L_067A:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        or      al, al                          ; 0A C0
        je      L_06CC                          ; 74 45
        inc     word ptr [bp + 8]               ; FF 46 08
        cmp     al, 0x20                        ; 3C 20
        je      L_0696                          ; 74 08
        cmp     al, 0x3a                        ; 3C 3A
        je      L_0696                          ; 74 04
        cmp     al, 0x2c                        ; 3C 2C
        jne     L_06B9                          ; 75 23
L_0696:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_06A2                          ; EB 03
L_069F:
        inc     word ptr [bp + 8]               ; FF 46 08
L_06A2:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_069F                          ; 74 F4
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_066C                          ; 74 BB
L_06B1:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        jmp     L_06D5                          ; EB 1C
L_06B9:
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_08F5                          ; E8 34 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        jmp     L_067A                          ; EB AE
L_06CC:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_06B1                          ; EB DC
L_06D5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
L_06DB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_08F5                          ; E8 FE 01
        cwde                                    ; 98
        cmp     ax, 0x41                        ; 3D 41 00
        je      L_0712                          ; 74 15
        cmp     ax, 0x43                        ; 3D 43 00
        je      L_0735                          ; 74 33
        cmp     ax, 0x4c                        ; 3D 4C 00
        je      L_073A                          ; 74 33
        cmp     ax, 0x50                        ; 3D 50 00
        je      L_0744                          ; 74 38
L_070C:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_079B                          ; E9 89 00
L_0712:
        mov     si, 0x2f2                       ; BE F2 02
L_0715:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_071A:
        cmp     byte ptr [si], 0x31             ; 80 3C 31
        je      L_074E                          ; 74 2F
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_08F5                          ; E8 C8 01
        inc     si                              ; 46
        cmp     al, byte ptr [si - 1]           ; 3A 44 FF
        je      L_071A                          ; 74 E7
        jmp     L_070C                          ; EB D7
L_0735:
        mov     si, 0x2d2                       ; BE D2 02
        jmp     L_071A                          ; EB E0
L_073A:
        mov     si, 0x2e2                       ; BE E2 02
        mov     word ptr [bp - 2], 0x80         ; C7 46 FE 80 00
        jmp     L_071A                          ; EB D6
L_0744:
        mov     si, 0x2f8                       ; BE F8 02
        mov     word ptr [bp - 2], 0x80         ; C7 46 FE 80 00
        jmp     L_0715                          ; EB C7
L_074E:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0764                          ; 74 10
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        sub     ax, 0x31                        ; 2D 31 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0764:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx], 0x3a          ; 26 80 3F 3A
        jne     L_0770                          ; 75 03
        inc     word ptr [bp + 4]               ; FF 46 04
L_0770:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_070C                          ; 7C 96
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_070C                          ; 75 8D
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_078A                          ; 74 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_078D                          ; EB 03
L_078A:
        mov     ax, 9                           ; B8 09 00
L_078D:
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jge     L_0795                          ; 7D 03
        jmp     L_070C                          ; E9 77 FF
L_0795:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [bp - 6]           ; 03 46 FA
L_079B:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_07A2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        test    byte ptr [bp + 4], 0x80         ; F6 46 04 80
        je      L_07BB                          ; 74 10
        mov     cx, 0xf                         ; B9 0F 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        and     ax, 0x7f                        ; 25 7F 00
        mul     cx                              ; F7 E1
        add     ax, 0x2a4                       ; 05 A4 02
        jmp     L_07C8                          ; EB 0D
L_07BB:
        mov     cx, 0xf                         ; B9 0F 00
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        sub     ah, ah                          ; 2A E4
        mul     cx                              ; F7 E1
        add     ax, 0x20e                       ; 05 0E 02
L_07C8:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
L_07CE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        sub     dx, dx                          ; 2B D2
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
L_07EC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
BUILDCOMMDCB ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; TRANSMITCOMMCHAR -- 20 instr
; Funcion sin clasificar definitiva (20 instr).
; tags: calls_comm, far, small
; calls (inter): COMM.CTX
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; TRANSMITCOMMCHAR  (offset 0x07FD, size 38 bytes)
;-----------------------------------------------------------------------
TRANSMITCOMMCHAR PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        and     byte ptr [bp + 9], 0            ; 80 66 09 00
        push    word ptr [bp + 8]               ; FF 76 08
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        cwde                                    ; 98
        push    ax                              ; 50
        call    far COMM.CTX                    ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
TRANSMITCOMMCHAR ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETCOMMEVENTMASK -- 18 instr
; Setter: cambia commeventmask.
; tags: calls_comm, far, small
; calls (inter): COMM.CEVT
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETCOMMEVENTMASK  (offset 0x0823, size 36 bytes)
;-----------------------------------------------------------------------
SETCOMMEVENTMASK PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        and     byte ptr [bp + 9], 0            ; 80 66 09 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far COMM.CEVT                   ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SETCOMMEVENTMASK ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETCOMMEVENTMASK -- 18 instr
; Getter: devuelve commeventmask.
; tags: calls_comm, far, small
; calls (inter): COMM.CEVTGET
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETCOMMEVENTMASK  (offset 0x0847, size 36 bytes)
;-----------------------------------------------------------------------
GETCOMMEVENTMASK PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        and     byte ptr [bp + 9], 0            ; 80 66 09 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far COMM.CEVTGET                ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
GETCOMMEVENTMASK ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETCOMMBREAK -- 17 instr
; Setter: cambia commbreak.
; tags: calls_comm, far, small
; calls (inter): COMM.CSETBRK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETCOMMBREAK  (offset 0x086B, size 33 bytes)
;-----------------------------------------------------------------------
SETCOMMBREAK PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        and     byte ptr [bp + 7], 0            ; 80 66 07 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far COMM.CSETBRK                ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
SETCOMMBREAK ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CLEARCOMMBREAK -- 17 instr
; Funcion sin clasificar definitiva (17 instr).
; tags: calls_comm, far, small
; calls (inter): COMM.CCLRBRK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CLEARCOMMBREAK  (offset 0x088C, size 33 bytes)
;-----------------------------------------------------------------------
CLEARCOMMBREAK PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        and     byte ptr [bp + 7], 0            ; 80 66 07 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far COMM.CCLRBRK                ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
CLEARCOMMBREAK ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; FLUSHCOMM -- 18 instr
; Funcion sin clasificar definitiva (18 instr).
; tags: calls_comm, far, small
; calls (inter): COMM.CFLUSH
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; FLUSHCOMM  (offset 0x08AD, size 36 bytes)
;-----------------------------------------------------------------------
FLUSHCOMM PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        and     byte ptr [bp + 9], 0            ; 80 66 09 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far COMM.CFLUSH                 ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
FLUSHCOMM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ESCAPECOMMFUNCTION -- 39 instr
; Funcion mediana (39 instr, 1 calls).
; tags: calls_comm, far, medium
; calls (inter): COMM.CEXTFCN
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; ESCAPECOMMFUNCTION  (offset 0x08D1, size 74 bytes)
;-----------------------------------------------------------------------
ESCAPECOMMFUNCTION PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        and     byte ptr [bp + 9], 0            ; 80 66 09 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far COMM.CEXTFCN                ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
L_08F5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        cmp     al, 0x61                        ; 3C 61
        jge     L_0908                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_090A                          ; EB 02
L_0908:
        sub     ax, ax                          ; 2B C0
L_090A:
        or      ax, ax                          ; 0B C0
        je      L_0912                          ; 74 04
        mov     ax, si                          ; 8B C6
        jmp     L_0915                          ; EB 03
L_0912:
        lea     ax, [si - 0x20]                 ; 8D 44 E0
L_0915:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02
ESCAPECOMMFUNCTION ENDP


USER_TEXT ENDS

        END
