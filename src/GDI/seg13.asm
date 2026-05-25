; AUTO-GENERATED from original GDI segment 13
; segment_size=6668 bytes, flags=0xf130
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
; GETMETAFILE -- 14 instr
; Getter: devuelve metafile.
; tags: far, leaf
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETMETAFILE  (offset 0x0000, size 24 bytes)
;-----------------------------------------------------------------------
GETMETAFILE PROC FAR
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
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     si, 0xffff                      ; BE FF FF
        sub     di, di                          ; 2B FF
GETMETAFILE ENDP

        mov     ax, 0xa0                        ; B8 A0 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_162D                  ; 9A 6A 03 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_002D                          ; 75 03
        jmp     L_00B2                          ; E9 85 00
L_002D:
        push    di                              ; 57
        call    far KERNEL.GLOBALLOCK           ; 9A E7 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        add     ax, 0x16                        ; 05 16 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x6000                      ; B8 00 60
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 68 00 00 00 [FIXUP]
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_008D                          ; 74 3B
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        add     ax, 0x16                        ; 05 16 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xa002                      ; B8 02 A0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 0A 01 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        cmp     si, -1                          ; 83 FE FF
        je      L_008D                          ; 74 1A
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far KERNEL._LREAD               ; 9A 98 03 00 00 [FIXUP]
        cmp     ax, 0x12                        ; 3D 12 00
        jne     L_008D                          ; 75 05
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_008D:
        cmp     si, -1                          ; 83 FE FF
        je      L_0098                          ; 74 06
        push    si                              ; 56
        call    far KERNEL._LCLOSE              ; 9A B3 03 00 00 [FIXUP]
L_0098:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     word ptr es:[bx], 2             ; 26 C7 07 02 00
        push    di                              ; 57
        call    far KERNEL.GLOBALUNLOCK         ; 9A 12 01 00 00 [FIXUP]
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_00B2                          ; 75 06
        push    di                              ; 57
        call    far KERNEL.GLOBALFREE           ; 9A 1A 01 00 00 [FIXUP]
L_00B2:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_00BC                          ; 74 04
        mov     ax, di                          ; 8B C7
        jmp     L_00BE                          ; EB 02
L_00BC:
        sub     ax, ax                          ; 2B C0
L_00BE:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0123                          ; 74 40
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALLOCK           ; 9A 8E 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        je      L_0123                          ; 74 2E
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, 0x1e                        ; 05 1E 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, 0x16                        ; 05 16 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x2200                      ; B8 00 22
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 4C 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A BF 02 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALFREE           ; 9A 4D 01 00 00 [FIXUP]
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_0123:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DELETEMETAFILE -- 22 instr
; Destructor: libera etafile.
; tags: calls_kernel, far, small
; calls (inter): KERNEL.GLOBALFREE
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; DELETEMETAFILE  (offset 0x0131, size 51 bytes)
;-----------------------------------------------------------------------
DELETEMETAFILE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0156                          ; 74 0D
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_0156:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
DELETEMETAFILE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; PLAYMETAFILE -- 134 instr
; Dispatcher: tabla de decisiones cmp+jcc (134 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_02D2, sub_04A4
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LOCALFREE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; PLAYMETAFILE  (offset 0x0164, size 366 bytes)
;-----------------------------------------------------------------------
PLAYMETAFILE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1e                        ; 83 EC 1E
        push    si                              ; 56
        mov     word ptr [bp - 0x1a], 1         ; C7 46 E6 01 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_018A                          ; 75 03
        jmp     L_02C3                          ; E9 39 01
L_018A:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALLOCK           ; 9A 7C 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        or      ax, dx                          ; 0B C2
        jne     L_019F                          ; 75 03
        jmp     L_02C3                          ; E9 24 01
L_019F:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jbe     L_01C1                          ; 76 14
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _SEG1_15EF                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_01C1                          ; 75 03
        jmp     L_02BB                          ; E9 FA 00
L_01C1:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, word ptr [bx]               ; 8B 37
        mov     word ptr [bp - 0x16], si        ; 89 76 EA
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [si + 0x14]        ; 8B 44 14
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [si + 0x16]        ; 8B 44 16
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_01E1:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_02D2                          ; E8 DF 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        or      ax, dx                          ; 0B C2
        je      L_0239                          ; 74 3C
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     ax, word ptr [bx + 0x92]        ; 8B 87 92 00
        or      ax, word ptr [bx + 0x94]        ; 0B 87 94 00
        je      L_0272                          ; 74 68
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lcall   [bx + 0x92]                     ; FF 9F 92 00
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        or      ax, ax                          ; 0B C0
        jne     L_0272                          ; 75 57
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_02D2                          ; E8 A4 00
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_05C5                  ; 9A FF FF 00 00 [FIXUP]
L_0239:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far _SEG1_12B6                  ; 9A 4B 02 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _SEG1_12B6                  ; 9A 56 02 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far _SEG1_12B6                  ; 9A 67 02 00 00 [FIXUP]
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_026B                          ; 74 0B
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_12B6                  ; 9A FF FF 00 00 [FIXUP]
L_026B:
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        jmp     L_02A1                          ; EB 2F
L_0272:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_04A4                          ; E8 20 02
        jmp     L_01E1                          ; E9 5A FF
L_0287:
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        je      L_029E                          ; 74 06
        push    ax                              ; 50
        call    far _SEG1_1212                  ; 9A FF FF 00 00 [FIXUP]
L_029E:
        inc     word ptr [bp - 0x18]            ; FF 46 E8
L_02A1:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cmp     word ptr es:[bx + 0xa], ax      ; 26 39 47 0A
        ja      L_0287                          ; 77 DA
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_02BB                          ; 74 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_02BB:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
L_02C3:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
PLAYMETAFILE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02D2 -- offset 0x02D2 -- 164 instr
; Dispatcher: tabla de decisiones cmp+jcc (164 instr).
; tags: calls_kernel, dispatcher
; callers: COPYMETAFILE, PLAYMETAFILE
; calls (inter): KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.OPENFILE
;----------------------------------------------------------------------

L_02D2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx], 1             ; 26 83 3F 01
        jne     L_031A                          ; 75 39
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_02FF                          ; 75 16
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x12                        ; 05 12 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 8], dx           ; 89 56 08
L_02F6:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        jmp     L_049E                          ; E9 9F 01
L_02FF:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp + 6], ax           ; 01 46 06
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     word ptr es:[bx + 4], 0         ; 26 83 7F 04 00
        jne     L_02F6                          ; 75 E2
L_0314:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_049E                          ; E9 84 01
L_031A:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx], 2             ; 26 83 3F 02
        jne     L_0314                          ; 75 F1
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_032C                          ; 74 03
        jmp     L_0465                          ; E9 39 01
L_032C:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0337                          ; 74 03
        jmp     L_03B7                          ; E9 80 00
L_0337:
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x1e                        ; 05 1E 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        add     ax, 0x16                        ; 05 16 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xa002                      ; B8 02 A0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0314                          ; 74 BC
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     dx, word ptr es:[bx + 0xe]      ; 26 8B 57 0E
        shl     ax, 1                           ; D1 E0
        rcl     dx, 1                           ; D1 D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_162D                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x9e], ax     ; 26 89 87 9E 00
        or      ax, ax                          ; 0B C0
        je      L_03B7                          ; 74 3D
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 8], dx           ; 89 56 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x12], ax     ; 26 89 47 12
        push    ax                              ; 50
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far KERNEL._LREAD               ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x14], ax     ; 26 89 47 14
        mov     word ptr es:[bx], 2             ; 26 C7 07 02 00
        cmp     byte ptr es:[bx + 0x17], 0      ; 26 80 7F 17 00
        jne     L_03B7                          ; 75 08
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
L_03B7:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_03C2                          ; 75 03
        jmp     L_02F6                          ; E9 34 FF
L_03C2:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     byte ptr es:[bx + 0x17], 0      ; 26 80 7F 17 00
        jne     L_0400                          ; 75 34
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x1e                        ; 05 1E 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        add     ax, 0x16                        ; 05 16 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xa002                      ; B8 02 A0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 49 00 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0465                          ; 74 78
        push    ax                              ; 50
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr es:[bx + 0x14]         ; 26 FF 77 14
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_040A                          ; EB 0A
L_0400:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_040A:
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far KERNEL._LREAD               ; 9A 3E 04 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        add     word ptr es:[bx + 0x14], ax     ; 26 01 47 14
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 4                           ; 05 04 00
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        shl     ax, 1                           ; D1 E0
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        call    far KERNEL._LREAD               ; 9A 7F 00 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        add     word ptr es:[bx + 0x14], ax     ; 26 01 47 14
        cmp     byte ptr es:[bx + 0x17], 0      ; 26 80 7F 17 00
        jne     L_0458                          ; 75 08
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL._LCLOSE              ; 9A 74 04 00 00 [FIXUP]
L_0458:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 4], 0         ; 26 83 7F 04 00
        je      L_0465                          ; 74 03
        jmp     L_02F6                          ; E9 91 FE
L_0465:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     byte ptr es:[bx + 0x17], 0      ; 26 80 7F 17 00
        je      L_0478                          ; 74 09
        push    word ptr es:[bx + 0x12]         ; 26 FF 77 12
        call    far KERNEL._LCLOSE              ; 9A 94 00 00 00 [FIXUP]
L_0478:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x9e]         ; 26 FF B7 9E 00
        call    far KERNEL.GLOBALUNLOCK         ; 9A A2 00 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x9e]         ; 26 FF B7 9E 00
        call    far KERNEL.GLOBALFREE           ; 9A AE 00 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x12], 0      ; 26 C7 47 12 00 00
        jmp     L_0314                          ; E9 76 FE
L_049E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04A4 -- offset 0x04A4 -- 228 instr
; Dispatcher: tabla de decisiones cmp+jcc (228 instr).
; tags: dispatcher
; callers: PLAYMETAFILE
; calls (intra): sub_09DB
;----------------------------------------------------------------------
L_04A4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x44                        ; 83 EC 44
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, 0x2fc                       ; 3D FC 02
        jne     L_04BE                          ; 75 03
        jmp     L_071D                          ; E9 5F 02
L_04BE:
        jbe     L_04C3                          ; 76 03
        jmp     L_098B                          ; E9 C8 04
L_04C3:
        cmp     ax, 0x12d                       ; 3D 2D 01
        jne     L_04CB                          ; 75 03
        jmp     L_0625                          ; E9 5A 01
L_04CB:
        jbe     L_04D0                          ; 76 03
        jmp     L_08F0                          ; E9 20 04
L_04D0:
        cmp     ax, 0x12a                       ; 3D 2A 01
        jne     L_04D8                          ; 75 03
        jmp     L_0849                          ; E9 71 03
L_04D8:
        cmp     ax, 0x12b                       ; 3D 2B 01
        jne     L_04E0                          ; 75 03
        jmp     L_0825                          ; E9 45 03
L_04E0:
        jmp     L_0910                          ; E9 2D 04
L_04E3:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     cl, 8                           ; B1 08
        shr     bx, cl                          ; D3 EB
        sub     cx, cx                          ; 2B C9
        cmp     dx, cx                          ; 3B D1
        jne     L_0552                          ; 75 52
        cmp     ax, bx                          ; 3B C3
        jne     L_0552                          ; 75 4E
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
L_050A:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jne     L_0513                          ; 75 03
        jmp     L_05F8                          ; E9 E5 00
L_0513:
        cmp     word ptr [bp - 0xa], 0x922      ; 81 7E F6 22 09
        je      L_051D                          ; 74 03
        jmp     L_05BE                          ; E9 A1 00
L_051D:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x14]         ; 26 FF 77 14
        push    word ptr es:[bx + 0x12]         ; 26 FF 77 12
        push    word ptr es:[bx + 0x10]         ; 26 FF 77 10
        push    word ptr es:[bx + 0xe]          ; 26 FF 77 0E
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        mov     dx, word ptr es:[bx + 8]        ; 26 8B 57 08
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_2308                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_05F8                          ; E9 A6 00
L_0552:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _SEG1_0000                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        jne     L_0564                          ; 75 03
        jmp     L_09D3                          ; E9 6F 04
L_0564:
        cmp     word ptr [bp - 0xa], 0x922      ; 81 7E F6 22 09
        jne     L_0576                          ; 75 0B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 0x16                        ; 05 16 00
        jmp     L_057F                          ; EB 09
L_0576:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 0x1a                        ; 05 1A 00
L_057F:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        mov     al, byte ptr es:[bx + 8]        ; 26 8A 47 08
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     al, byte ptr es:[bx + 9]        ; 26 8A 47 09
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_0B79                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        or      ax, ax                          ; 0B C0
        je      L_061A                          ; 74 6B
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    ax                              ; 50
        call    far _SEG1_12B6                  ; 9A 0A 06 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_050A                          ; E9 4C FF
L_05BE:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x18]         ; 26 FF 77 18
        push    word ptr es:[bx + 0x16]         ; 26 FF 77 16
        push    word ptr es:[bx + 0x14]         ; 26 FF 77 14
        push    word ptr es:[bx + 0x12]         ; 26 FF 77 12
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr es:[bx + 0x10]         ; 26 FF 77 10
        push    word ptr es:[bx + 0xe]          ; 26 FF 77 0E
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        mov     dx, word ptr es:[bx + 8]        ; 26 8B 57 08
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_2342                  ; 9A FF FF 00 00 [FIXUP]
L_05F8:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jne     L_0603                          ; 75 03
        jmp     L_09D3                          ; E9 D0 03
L_0603:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far _SEG1_12B6                  ; 9A 42 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_061A                          ; 74 08
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _SEG1_1212                  ; 9A 16 07 00 00 [FIXUP]
L_061A:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _SEG1_06E8                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09D3                          ; E9 AE 03
L_0625:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     bx, word ptr es:[bx + 6]        ; 26 8B 5F 06
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        jne     L_063D                          ; 75 03
        jmp     L_09D3                          ; E9 96 03
L_063D:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        call    far _SEG1_12B6                  ; 9A 40 02 00 00 [FIXUP]
        jmp     L_09D3                          ; E9 8A 03
L_0649:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 6                           ; 05 06 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_0872                  ; 9A FF FF 00 00 [FIXUP]
L_0659:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0663                          ; 75 03
        jmp     L_09D3                          ; E9 70 03
L_0663:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
L_0667:
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_09DB                          ; E8 6E 03
        jmp     L_09D3                          ; E9 63 03
L_0670:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 6                           ; 05 06 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_09E7                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0659                          ; EB D7
L_0682:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     di, word ptr es:[bx + 0xe]      ; 26 8B 7F 0E
        push    di                              ; 57
        call    far _SEG1_15F6                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        jne     L_0699                          ; 75 03
        jmp     L_09D3                          ; E9 3A 03
L_0699:
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bx]               ; 8B 37
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_06BB                          ; EB 17
L_06A4:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp + 6]           ; 03 5E 06
        mov     es, word ptr [bp + 8]           ; 8E 46 08
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [si], ax               ; 89 04
        add     si, 2                           ; 83 C6 02
        inc     word ptr [bp - 8]               ; FF 46 F8
L_06BB:
        lea     ax, [di + 1]                    ; 8D 45 01
        shr     ax, 1                           ; D1 E8
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jb      L_06A4                          ; 72 DF
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        jmp     L_0667                          ; EB 9A
L_06CD:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 6                           ; 05 06 00
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        add     ax, 0x20                        ; 05 20 00
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     word ptr es:[bx + 0xc], dx      ; 26 89 57 0C
        push    dx                              ; 52
        push    bx                              ; 53
        call    far _SEG1_0A7D                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        or      ax, ax                          ; 0B C0
        jne     L_06FB                          ; 75 03
        jmp     L_09D3                          ; E9 D8 02
L_06FB:
        push    ax                              ; 50
        call    far _SEG1_09B4                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        je      L_0712                          ; 74 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_09DB                          ; E8 C9 02
L_0712:
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    far _SEG1_1212                  ; 9A 9A 02 00 00 [FIXUP]
        jmp     L_09D3                          ; E9 B6 02
L_071D:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 6                           ; 05 06 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_08C1                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0659                          ; E9 29 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0730 -- offset 0x0730 -- 10 instr
; Funcion sin clasificar definitiva (10 instr).
; tags: wrapper
;----------------------------------------------------------------------
L_0730:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 8                           ; 05 08 00
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09D3                          ; E9 86 02
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_074D -- offset 0x074D -- 244 instr
; Iterador con instrucciones de string (movsb/scasb/...) (244 instr).
; tags: calls_kernel, complex_iterator, string_op
; calls (intra): sub_19C2
; calls (inter): KERNEL.GETPROCADDRESS
;----------------------------------------------------------------------
L_074D:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 8                           ; 05 08 00
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        call    far _entry_36                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09D3                          ; E9 69 02
L_076A:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        shl     ax, 1                           ; D1 E0
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp - 0x28]             ; C4 5E D8
        push    word ptr es:[bx - 2]            ; 26 FF 77 FE
        push    word ptr es:[bx - 4]            ; 26 FF 77 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 8                           ; 05 08 00
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        call    far _SEG1_2496                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09D3                          ; E9 32 02
L_07A1:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 0xa                         ; 05 0A 00
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     word ptr [bp - 0x3c], dx        ; 89 56 C4
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 6], 0x200     ; 26 81 7F 06 00 02
        jne     L_0805                          ; 75 4A
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        lea     di, [bp - 0x34]                 ; 8D 7E CC
        lea     si, [bx + 0x10]                 ; 8D 77 10
        push    ds                              ; 1E
        push    es                              ; 06
        pop     ds                              ; 1F
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        mov     ax, bx                          ; 8B C3
        add     ax, 0x18                        ; 05 18 00
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        inc     ax                              ; 40
        and     al, 0xfe                        ; 24 FE
        add     ax, bx                          ; 03 C3
        add     ax, 0x18                        ; 05 18 00
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     word ptr [bp - 0x3c], ss        ; 8C 56 C4
L_0805:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_38                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09D3                          ; E9 AE 01
L_0825:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     bx, word ptr es:[bx + 6]        ; 26 8B 5F 06
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_083D                          ; 75 03
        jmp     L_09D3                          ; E9 96 01
L_083D:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09D3                          ; E9 8A 01
L_0849:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     bx, word ptr es:[bx + 6]        ; 26 8B 5F 06
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0861                          ; 75 03
        jmp     L_09D3                          ; E9 72 01
L_0861:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        call    far _entry_42                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09D3                          ; E9 66 01
L_086D:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     bx, word ptr es:[bx + 6]        ; 26 8B 5F 06
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0885                          ; 75 03
        jmp     L_09D3                          ; E9 4E 01
L_0885:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bx, word ptr es:[bx + 8]        ; 26 8B 5F 08
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_089A                          ; 75 03
        jmp     L_09D3                          ; E9 39 01
L_089A:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 4]               ; FF 76 FC
        push    ax                              ; 50
        call    far _entry_40                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09D3                          ; E9 2A 01
L_08A9:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     bx, word ptr es:[bx + 6]        ; 26 8B 5F 06
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_08C1                          ; 75 03
        jmp     L_09D3                          ; E9 12 01
L_08C1:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bx, word ptr es:[bx + 8]        ; 26 8B 5F 08
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_08D6                          ; 75 03
        jmp     L_09D3                          ; E9 FD 00
L_08D6:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 4]               ; FF 76 FC
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09D3                          ; E9 E3 00
L_08F0:
        cmp     ax, 0x1f9                       ; 3D F9 01
        jne     L_08F8                          ; 75 03
        jmp     L_06CD                          ; E9 D5 FD
L_08F8:
        cmp     ax, 0x228                       ; 3D 28 02
        jne     L_0900                          ; 75 03
        jmp     L_086D                          ; E9 6D FF
L_0900:
        cmp     ax, 0x2fa                       ; 3D FA 02
        jne     L_0908                          ; 75 03
        jmp     L_0649                          ; E9 41 FD
L_0908:
        cmp     ax, 0x2fb                       ; 3D FB 02
        jne     L_0910                          ; 75 03
        jmp     L_0670                          ; E9 60 FD
L_0910:
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x3c]        ; 8B 87 3C 00
        mov     dx, word ptr [bx + 0x3e]        ; 8B 97 3E 00
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     word ptr [bp - 0x42], dx        ; 89 56 BE
        or      ax, dx                          ; 0B C2
        jne     L_0962                          ; 75 33
        mov     word ptr [bp - 0x40], si        ; 89 76 C0
        cmp     si, 0x2e                        ; 83 FE 2E
        jl      L_093C                          ; 7C 05
        add     word ptr [bp - 0x40], 0x12c     ; 81 46 C0 2C 01
L_093C:
        push    word ptr [0x104]                ; FF 36 04 01
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A FF FF 00 00 [FIXUP]
        mov     bl, byte ptr [bp - 0xa]         ; 8A 5E F6
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x3c], ax        ; 89 87 3C 00
        mov     word ptr [bx + 0x3e], dx        ; 89 97 3E 00
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     word ptr [bp - 0x42], dx        ; 89 56 BE
L_0962:
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        or      ax, word ptr [bp - 0x42]        ; 0B 46 BE
        je      L_09D3                          ; 74 69
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0x42]            ; FF 76 BE
        push    word ptr [bp - 0x44]            ; FF 76 BC
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 6                           ; 05 06 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_19C2                          ; E8 39 10
        jmp     L_09D3                          ; EB 48
L_098B:
        cmp     ax, 0x521                       ; 3D 21 05
        jne     L_0993                          ; 75 03
        jmp     L_076A                          ; E9 D7 FD
L_0993:
        ja      L_09B0                          ; 77 1B
        cmp     ax, 0x324                       ; 3D 24 03
        jne     L_099D                          ; 75 03
        jmp     L_074D                          ; E9 B0 FD
L_099D:
        cmp     ax, 0x325                       ; 3D 25 03
        jne     L_09A5                          ; 75 03
        jmp     L_0730                          ; E9 8B FD
L_09A5:
        cmp     ax, 0x429                       ; 3D 29 04
        jne     L_09AD                          ; 75 03
        jmp     L_08A9                          ; E9 FC FE
L_09AD:
        jmp     L_0910                          ; E9 60 FF
L_09B0:
        cmp     ax, 0x626                       ; 3D 26 06
        jne     L_09B8                          ; 75 03
        jmp     L_07A1                          ; E9 E9 FD
L_09B8:
        cmp     ax, 0x6ff                       ; 3D FF 06
        jne     L_09C0                          ; 75 03
        jmp     L_0682                          ; E9 C2 FC
L_09C0:
        cmp     ax, 0x922                       ; 3D 22 09
        jne     L_09C8                          ; 75 03
        jmp     L_04E3                          ; E9 1B FB
L_09C8:
        cmp     ax, 0xb23                       ; 3D 23 0B
        jne     L_09D0                          ; 75 03
        jmp     L_04E3                          ; E9 13 FB
L_09D0:
        jmp     L_0910                          ; E9 3D FF
L_09D3:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_09DB -- offset 0x09DB -- 27 instr
; Funcion sin clasificar definitiva (27 instr).
; tags: small
; callers: sub_04A4
;----------------------------------------------------------------------
L_09DB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        sub     di, di                          ; 2B FF
        jmp     L_09EB                          ; EB 01
L_09EA:
        inc     di                              ; 47
L_09EB:
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + si], 0           ; 83 38 00
        jne     L_09EA                          ; 75 F6
        cmp     word ptr [bp + 4], di           ; 39 7E 04
        jbe     L_0A04                          ; 76 0B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + si], ax          ; 89 00
        jmp     L_0A06                          ; EB 02
L_0A04:
        sub     di, di                          ; 2B FF
L_0A06:
        mov     ax, di                          ; 8B C7
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A10 -- offset 0x0A10 -- 160 instr
; Dispatcher: tabla de decisiones cmp+jcc (160 instr).
; tags: calls_kernel, dispatcher, far
; callers: CLOSEMETAFILE, COPYMETAFILE, sub_0C69, sub_12EA, sub_1328
; calls (intra): sub_0BB5, sub_0C69, sub_139A, sub_19F0
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.OPENFILE
;----------------------------------------------------------------------
L_0A10:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1c                        ; 83 EC 1C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_19F0                          ; E8 C8 0F
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        or      ax, ax                          ; 0B C0
        jne     L_0A32                          ; 75 03
        jmp     L_0BA5                          ; E9 73 01
L_0A32:
        mov     bx, ax                          ; 8B D8
        mov     di, word ptr [bx]               ; 8B 3F
        test    byte ptr [di + 0xa8], 1         ; F6 85 A8 00 01
        je      L_0A40                          ; 74 03
        jmp     L_0B79                          ; E9 39 01
L_0A40:
        cmp     word ptr [di + 8], 1            ; 83 7D 08 01
        je      L_0A49                          ; 74 03
        jmp     L_0AD7                          ; E9 8E 00
L_0A49:
        push    di                              ; 57
        lea     ax, [si + 3]                    ; 8D 44 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    L_139A                          ; E8 46 09
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0AC9                          ; 74 6E
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A 2F 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     ax, word ptr [di + 0x1a]        ; 8B 45 1A
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x18]        ; 03 46 E8
        add     ax, 0x12                        ; 05 12 00
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        les     bx, ptr [bp - 0x18]             ; C4 5E E8
        add     word ptr [bp - 0x18], 4         ; 83 46 E8 04
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        add     word ptr [bp - 0x18], 2         ; 83 46 E8 02
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        jmp     L_0AB3                          ; EB 17
L_0A9C:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp - 0x18]             ; C4 5E E8
        add     word ptr [bp - 0x18], 2         ; 83 46 E8 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        inc     word ptr [bp - 0x14]            ; FF 46 EC
L_0AB3:
        cmp     word ptr [bp - 0x14], si        ; 39 76 EC
        jb      L_0A9C                          ; 72 E4
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     word ptr [di + 0x1a], ax        ; 01 45 1A
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 81 04 00 00 [FIXUP]
        jmp     L_0B79                          ; E9 B0 00
L_0AC9:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_0ACE:
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_0C69                          ; E8 95 01
        jmp     L_0BA5                          ; E9 CE 00
L_0AD7:
        cmp     word ptr [di + 8], 2            ; 83 7D 08 02
        je      L_0AE0                          ; 74 03
        jmp     L_0B79                          ; E9 99 00
L_0AE0:
        lea     ax, [si + 3]                    ; 8D 44 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     byte ptr [di + 0x1d], 0         ; 80 7D 1D 00
        je      L_0AF5                          ; 74 09
        mov     ax, word ptr [di + 0xa6]        ; 8B 85 A6 00
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        jmp     L_0B1E                          ; EB 29
L_0AF5:
        lea     ax, [di + 0x24]                 ; 8D 45 24
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [di + 0x1c]                 ; 8D 45 1C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa002                      ; B8 02 A0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A C6 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0ACE                          ; 74 BE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A FA 03 00 00 [FIXUP]
L_0B1E:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0BB5                          ; E8 74 00
        or      ax, ax                          ; 0B C0
        jne     L_0B4F                          ; 75 0A
L_0B45:
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_0C69                          ; E8 1E 01
        sub     ax, ax                          ; 2B C0
        jmp     L_0BA8                          ; EB 59
L_0B4F:
        or      si, si                          ; 0B F6
        je      L_0B6B                          ; 74 18
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0BB5                          ; E8 4E 00
        or      ax, ax                          ; 0B C0
        je      L_0B45                          ; 74 DA
L_0B6B:
        cmp     byte ptr [di + 0x1d], 0         ; 80 7D 1D 00
        jne     L_0B79                          ; 75 08
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL._LCLOSE              ; 9A B3 0C 00 00 [FIXUP]
L_0B79:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     dx, dx                          ; 2B D2
        cmp     dx, word ptr [di + 0x16]        ; 3B 55 16
        jb      L_0B95                          ; 72 12
        ja      L_0B8A                          ; 77 05
        cmp     ax, word ptr [di + 0x14]        ; 3B 45 14
        jbe     L_0B95                          ; 76 0B
L_0B8A:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [di + 0x14], ax        ; 89 45 14
        mov     word ptr [di + 0x16], 0         ; C7 45 16 00 00
L_0B95:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     dx, dx                          ; 2B D2
        add     word ptr [di + 0xe], ax         ; 01 45 0E
        adc     word ptr [di + 0x10], dx        ; 11 55 10
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_0BA5:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_0BA8:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BB5 -- offset 0x0BB5 -- 67 instr
; Dispatcher: tabla de decisiones cmp+jcc (67 instr).
; tags: dispatcher
; callers: sub_0A10
;----------------------------------------------------------------------
L_0BB5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    si                              ; 56
        call    far KERNEL._LWRITE              ; 9A 52 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, si                          ; 3B C6
        jne     L_0BDD                          ; 75 03
        jmp     L_0C5F                          ; E9 82 00
L_0BDD:
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     word ptr [bp + 4], ax           ; 01 46 04
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx + 2], 9            ; 83 7F 02 09
        jge     L_0C00                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0C02                          ; EB 02
L_0C00:
        sub     ax, ax                          ; 2B C0
L_0C02:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0C5B                          ; 74 52
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bx + 0x92]        ; 8B 87 92 00
        or      ax, word ptr [bx + 0x94]        ; 0B 87 94 00
        je      L_0C5B                          ; 74 45
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     dx, dx                          ; 2B D2
        cmp     dx, word ptr [0x30c]            ; 3B 16 0C 03
        ja      L_0C5B                          ; 77 3A
        jb      L_0C29                          ; 72 06
        cmp     ax, word ptr [0x30a]            ; 3B 06 0A 03
        ja      L_0C5B                          ; 77 32
L_0C29:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0xfffc                      ; B8 FC FF
        push    ax                              ; 50
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        lcall   [bx + 0x92]                     ; FF 9F 92 00
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0C5F                          ; 75 23
        mov     ax, word ptr [0x30a]            ; A1 0A 03
        or      ax, word ptr [0x30c]            ; 0B 06 0C 03
        jne     L_0C29                          ; 75 E4
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL._LWRITE              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        je      L_0C5F                          ; 74 04
L_0C5B:
        sub     ax, ax                          ; 2B C0
        jmp     L_0C62                          ; EB 03
L_0C5F:
        mov     ax, 1                           ; B8 01 00
L_0C62:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C69 -- offset 0x0C69 -- 547 instr
; Iterador con instrucciones de string (movsb/scasb/...) (547 instr).
; tags: calls_kernel, complex_iterator, string_op
; callers: COPYMETAFILE, sub_0A10
; calls (intra): sub_0A10, sub_1290
; calls (inter): KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LOCALFREE, KERNEL.OPENFILE
;----------------------------------------------------------------------
L_0C69:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     si, word ptr [bx]               ; 8B 37
        or      byte ptr [si + 0xa8], 1         ; 80 8C A8 00 01
        cmp     word ptr [si + 0xac], 0         ; 83 BC AC 00 00
        je      L_0C8A                          ; 74 09
        push    word ptr [si + 0xac]            ; FF B4 AC 00
        call    far KERNEL.LOCALFREE            ; 9A B7 02 00 00 [FIXUP]
L_0C8A:
        cmp     word ptr [si + 8], 1            ; 83 7C 08 01
        jne     L_0CA2                          ; 75 12
        cmp     word ptr [si + 0xaa], 0         ; 83 BC AA 00 00
        je      L_0CCA                          ; 74 33
        push    word ptr [si + 0xaa]            ; FF B4 AA 00
        call    far KERNEL.GLOBALFREE           ; 9A 8E 04 00 00 [FIXUP]
        jmp     L_0CCA                          ; EB 28
L_0CA2:
        cmp     word ptr [si + 8], 2            ; 83 7C 08 02
        jne     L_0CCA                          ; 75 22
        cmp     byte ptr [si + 0x1d], 0         ; 80 7C 1D 00
        je      L_0CB7                          ; 74 09
        push    word ptr [si + 0xa6]            ; FF B4 A6 00
        call    far KERNEL._LCLOSE              ; 9A 54 04 00 00 [FIXUP]
L_0CB7:
        lea     ax, [si + 0x24]                 ; 8D 44 24
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [si + 0x1c]                 ; 8D 44 1C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2200                      ; B8 00 22
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A E1 03 00 00 [FIXUP]
L_0CCA:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x7e                        ; 83 EC 7E
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x325                       ; 3D 25 03
        jbe     L_0CF0                          ; 76 03
        jmp     L_1258                          ; E9 68 05
L_0CF0:
        cmp     ax, 0x324                       ; 3D 24 03
        jb      L_0CF8                          ; 72 03
        jmp     L_0F09                          ; E9 11 02
L_0CF8:
        cmp     ax, 0x12d                       ; 3D 2D 01
        jne     L_0D00                          ; 75 03
        jmp     L_120F                          ; E9 0F 05
L_0D00:
        jbe     L_0D05                          ; 76 03
        jmp     L_1245                          ; E9 40 05
L_0D05:
        cmp     ax, 0x12a                       ; 3D 2A 01
        jb      L_0D7F                          ; 72 75
        cmp     ax, 0x12b                       ; 3D 2B 01
        ja      L_0D7F                          ; 77 70
L_0D0F:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        sub     ax, 2                           ; 2D 02 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1290                          ; E8 65 05
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jbe     L_0D53                          ; 76 1F
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        sub     ax, 4                           ; 2D 04 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1290                          ; E8 40 05
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
L_0D53:
        cmp     word ptr [bp + 0xa], 2          ; 83 7E 0A 02
        jbe     L_0D69                          ; 76 10
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
L_0D69:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
L_0D75:
        push    ss                              ; 16
        push    ax                              ; 50
L_0D77:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A10                          ; E8 94 FC
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_0D7F:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        jmp     L_1283                          ; E9 FE 04
L_0D85:
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jne     L_0DA2                          ; 75 12
        push    word ptr [bp + 0xe]             ; FF 76 0E
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        call    far _SEG1_30B0                  ; 9A FF FF 00 00 [FIXUP]
L_0DA2:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        jmp     L_0D77                          ; EB C4
L_0DB3:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     word ptr [bp + 6], 4            ; 83 46 06 04
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 4            ; 83 46 06 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        cmp     ax, 0x200                       ; 3D 00 02
        jne     L_0E09                          ; 75 10
        mov     ax, 3                           ; B8 03 00
        les     bx, ptr [bp - 0x2c]             ; C4 5E D4
        mul     word ptr es:[bx + 4]            ; 26 F7 67 04
        add     ax, 0x17                        ; 05 17 00
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
L_0E09:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        call    far _SEG1_15EF                  ; 9A 26 0F 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     di, si                          ; 8B FE
        or      di, di                          ; 0B FF
        jne     L_0E22                          ; 75 05
L_0E1D:
        sub     ax, ax                          ; 2B C0
        jmp     L_1283                          ; E9 61 04
L_0E22:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        cmp     word ptr [bp - 0x24], 0x200     ; 81 7E DC 00 02
        je      L_0E5A                          ; 74 21
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
L_0E3E:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jb      L_0E49                          ; 72 03
        jmp     L_0EE4                          ; E9 9B 00
L_0E49:
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        inc     word ptr [bp - 0x22]            ; FF 46 DE
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        jmp     L_0E3E                          ; EB E4
L_0E5A:
        les     bx, ptr [bp - 0x2c]             ; C4 5E D4
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        mov     ax, di                          ; 8B C7
        add     di, 8                           ; 83 C7 08
        push    si                              ; 56
        push    di                              ; 57
        mov     di, ax                          ; 8B F8
        lea     si, [bx + 6]                    ; 8D 77 06
        push    ds                              ; 1E
        push    ds                              ; 1E
        push    es                              ; 06
        pop     ds                              ; 1F
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_0EA9                          ; EB 13
L_0E96:
        les     bx, ptr [bp - 0x2c]             ; C4 5E D4
        les     bx, ptr es:[bx + 0xe]           ; 26 C4 5F 0E
        add     bx, word ptr [bp - 0xe]         ; 03 5E F2
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        inc     word ptr [bp - 0xe]             ; FF 46 F2
L_0EA9:
        les     bx, ptr [bp - 0x2c]             ; C4 5E D4
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        inc     ax                              ; 40
        and     al, 0xfe                        ; 24 FE
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        ja      L_0E96                          ; 77 DE
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_0ED8                          ; EB 19
L_0EBF:
        les     bx, ptr [bp - 0x2c]             ; C4 5E D4
        les     bx, ptr es:[bx + 0x12]          ; 26 C4 5F 12
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        inc     word ptr [bp - 0xe]             ; FF 46 F2
L_0ED8:
        les     bx, ptr [bp - 0x2c]             ; C4 5E D4
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        ja      L_0EBF                          ; 77 DB
L_0EE4:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        inc     ax                              ; 40
        shr     ax, 1                           ; D1 E8
        add     ax, 4                           ; 05 04 00
L_0EF3:
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A10                          ; E8 13 FB
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_0F00:
        push    si                              ; 56
        call    far KERNEL.LOCALFREE            ; 9A 86 0C 00 00 [FIXUP]
        jmp     L_0D7F                          ; E9 76 FE
L_0F09:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _SEG1_15EF                  ; 9A 8E 0F 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     di, si                          ; 8B FE
        or      di, di                          ; 0B FF
        jne     L_0F35                          ; 75 03
        jmp     L_0E1D                          ; E9 E8 FE
L_0F35:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 4            ; 83 46 06 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [bp - 0x36], dx        ; 89 56 CA
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_0F6A                          ; EB 12
L_0F58:
        les     bx, ptr [bp - 0x38]             ; C4 5E C8
        add     word ptr [bp - 0x38], 2         ; 83 46 C8 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        inc     word ptr [bp - 0xe]             ; FF 46 F2
L_0F6A:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jb      L_0F58                          ; 72 E6
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        inc     ax                              ; 40
        jmp     L_0EF3                          ; E9 77 FF
L_0F7C:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        call    far _SEG1_15EF                  ; 9A B3 01 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     di, si                          ; 8B FE
        or      di, di                          ; 0B FF
        jne     L_0F9D                          ; 75 03
        jmp     L_0E1D                          ; E9 80 FE
L_0F9D:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 4            ; 83 46 06 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x3e], dx        ; 89 56 C2
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_0FD2                          ; EB 12
L_0FC0:
        les     bx, ptr [bp - 0x40]             ; C4 5E C0
        add     word ptr [bp - 0x40], 2         ; 83 46 C0 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        inc     word ptr [bp - 0xe]             ; FF 46 F2
L_0FD2:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        shr     ax, 1                           ; D1 E8
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        ja      L_0FC0                          ; 77 E3
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        shr     ax, 1                           ; D1 E8
        add     ax, 3                           ; 05 03 00
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A10                          ; E8 F6 F9
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     word ptr [bp - 0x42], bx        ; 89 5E BE
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        je      L_102E                          ; 74 03
        jmp     L_0F00                          ; E9 D2 FE
L_102E:
        cmp     word ptr [bx + 0x48], 0         ; 83 7F 48 00
        jne     L_1037                          ; 75 03
        jmp     L_0F00                          ; E9 C9 FE
L_1037:
        call    far _SEG1_1662                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_3308                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x42]        ; 8B 5E BE
        push    word ptr [bx + 0x28]            ; FF 77 28
        push    word ptr [bx + 0x26]            ; FF 77 26
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    word ptr [bp - 0x44]            ; FF 76 BC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x40]            ; FF 76 C0
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        push    word ptr [bx + 0x36]            ; FF 77 36
        push    word ptr [bx + 0x34]            ; FF 77 34
        mov     ax, bx                          ; 8B C3
        add     ax, 0x3c                        ; 05 3C 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bx + 0x32]        ; 8B 47 32
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [bx + 0x2a]        ; 8B 5F 2A
        lcall   [bx + 0x28]                     ; FF 5F 28
        call    far _SEG1_1694                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0F00                          ; E9 74 FE
L_108C:
        mov     word ptr [bp - 0x54], 0         ; C7 46 AC 00 00
        mov     word ptr [bp - 0x50], 0         ; C7 46 B0 00 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0x5a], ax        ; 89 46 A6
        mov     si, ax                          ; 8B F0
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + si - 0xa] ; 26 8B 40 F6
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jne     L_10B7                          ; 75 08
        mov     word ptr [bp - 0x54], 1         ; C7 46 AC 01 00
        jmp     L_11A7                          ; E9 F0 00
L_10B7:
        mov     bx, word ptr [bp - 0x52]        ; 8B 5E AE
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 8], 1            ; F6 47 08 01
        jne     L_10CA                          ; 75 03
        jmp     L_0E1D                          ; E9 53 FD
L_10CA:
        mov     ax, word ptr [bx + 0x18]        ; 8B 47 18
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        mov     ax, word ptr [bx + 0x26]        ; 8B 47 26
        mov     dx, word ptr [bx + 0x28]        ; 8B 57 28
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     word ptr [bp - 0x4a], dx        ; 89 56 B6
        les     bx, ptr [bp - 0x4c]             ; C4 5E B4
        mov     al, byte ptr es:[bx + 8]        ; 26 8A 47 08
        sub     ah, ah                          ; 2A E4
        mul     word ptr es:[bx + 0xe]          ; 26 F7 67 0E
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        add     word ptr [bp - 0x4e], 0x21      ; 83 46 B2 21
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x4e]            ; FF 76 B2
        call    far _SEG1_162D                  ; 9A 20 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
        or      ax, ax                          ; 0B C0
        jne     L_1105                          ; 75 03
        jmp     L_0E1D                          ; E9 18 FD
L_1105:
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A 5D 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        cmp     word ptr [bp + 0xc], 0x922      ; 81 7E 0C 22 09
        jne     L_1123                          ; 75 05
        mov     ax, 4                           ; B8 04 00
        jmp     L_1126                          ; EB 03
L_1123:
        mov     ax, 6                           ; B8 06 00
L_1126:
        mov     word ptr [bp - 0x7e], ax        ; 89 46 82
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_1147                          ; EB 17
L_1130:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp - 0x1a]             ; C4 5E E6
        add     word ptr [bp - 0x1a], 2         ; 83 46 E6 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        inc     word ptr [bp - 0xe]             ; FF 46 F2
L_1147:
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jb      L_1130                          ; 72 E1
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        dec     word ptr [bp - 0x5a]            ; FF 4E A6
        jmp     L_1175                          ; EB 17
L_115E:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp - 0x1a]             ; C4 5E E6
        add     word ptr [bp - 0x1a], 2         ; 83 46 E6 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        inc     word ptr [bp - 0xe]             ; FF 46 F2
L_1175:
        mov     ax, word ptr [bp - 0x5a]        ; 8B 46 A6
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jb      L_115E                          ; 72 E1
        les     ax, ptr [bp - 0x1a]             ; C4 46 E6
        add     word ptr [bp - 0x1a], 0xe       ; 83 46 E6 0E
        mov     dx, word ptr [bp - 0x4c]        ; 8B 56 B4
        mov     bx, word ptr [bp - 0x4a]        ; 8B 5E B6
        mov     di, ax                          ; 8B F8
        mov     si, dx                          ; 8B F2
        push    ds                              ; 1E
        mov     ds, bx                          ; 8E DB
        mov     cx, 7                           ; B9 07 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     ds                              ; 1F
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     dx, es                          ; 8C C2
        sub     word ptr [bp - 0x1a], 2         ; 83 6E E6 02
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        sub     word ptr [bp - 0x1a], 2         ; 83 6E E6 02
L_11A7:
        cmp     word ptr [bp - 0x54], 0         ; 83 7E AC 00
        je      L_11BF                          ; 74 12
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0x5a]            ; FF 76 A6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        jmp     L_0D77                          ; E9 B8 FB
L_11BF:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x4e]            ; FF 76 B2
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far _SEG1_2F97                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, word ptr [bp - 0x5a]        ; 8B 46 A6
        add     ax, word ptr [bp - 0x4e]        ; 03 46 B2
        add     ax, 0x22                        ; 05 22 00
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A10                          ; E8 20 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp - 0x50], 0         ; 83 7E B0 00
        jne     L_11FC                          ; 75 03
        jmp     L_0D7F                          ; E9 83 FB
L_11FC:
        push    word ptr [bp - 0x50]            ; FF 76 B0
        call    far KERNEL.GLOBALUNLOCK         ; 9A 88 13 00 00 [FIXUP]
        push    word ptr [bp - 0x50]            ; FF 76 B0
        call    far KERNEL.GLOBALFREE           ; 9A 9C 0C 00 00 [FIXUP]
        jmp     L_0D7F                          ; E9 70 FB
L_120F:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_121B                          ; 75 03
        jmp     L_0D7F                          ; E9 64 FB
L_121B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    es                              ; 06
        push    bx                              ; 53
        call    L_1290                          ; E8 67 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_1234                          ; 75 03
        jmp     L_0E1D                          ; E9 E9 FB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1234 -- offset 0x1234 -- 38 instr
; Dispatcher: tabla de decisiones cmp+jcc (38 instr).
; tags: dispatcher, far
;----------------------------------------------------------------------
L_1234:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x12d                       ; B8 2D 01
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        jmp     L_0D75                          ; E9 30 FB
L_1245:
        cmp     ax, 0x213                       ; 3D 13 02
        jne     L_124D                          ; 75 03
        jmp     L_0D85                          ; E9 38 FB
L_124D:
        cmp     ax, 0x228                       ; 3D 28 02
        jne     L_1255                          ; 75 03
        jmp     L_0D0F                          ; E9 BA FA
L_1255:
        jmp     L_0D7F                          ; E9 27 FB
L_1258:
        cmp     ax, 0x429                       ; 3D 29 04
        jne     L_1260                          ; 75 03
        jmp     L_0D0F                          ; E9 AF FA
L_1260:
        cmp     ax, 0x521                       ; 3D 21 05
        jne     L_1268                          ; 75 03
        jmp     L_0F7C                          ; E9 14 FD
L_1268:
        cmp     ax, 0x626                       ; 3D 26 06
        jne     L_1270                          ; 75 03
        jmp     L_0DB3                          ; E9 43 FB
L_1270:
        cmp     ax, 0x922                       ; 3D 22 09
        jne     L_1278                          ; 75 03
        jmp     L_108C                          ; E9 14 FE
L_1278:
        cmp     ax, 0xb23                       ; 3D 23 0B
        jne     L_1280                          ; 75 03
        jmp     L_108C                          ; E9 0C FE
L_1280:
        jmp     L_0D7F                          ; E9 FC FA
L_1283:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1290 -- offset 0x1290 -- 37 instr
; Dispatcher: tabla de decisiones cmp+jcc (37 instr).
; tags: dispatcher
; callers: sub_0C69
; calls (intra): sub_1475
;----------------------------------------------------------------------
L_1290:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_1475                          ; E8 C8 01
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_12B8                          ; 75 03
        jmp     L_1392                          ; E9 DA 00
L_12B8:
        or      ax, ax                          ; 0B C0
        jne     L_130D                          ; 75 51
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        inc     byte ptr [bx + 3]               ; FE 47 03
        call    far _SEG1_1662                  ; 9A 8D 15 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     si, word ptr [bx]               ; 8B 37
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        sub     ah, ah                          ; 2A E4
        cmp     ax, 1                           ; 3D 01 00
        je      L_12EA                          ; 74 11
        cmp     ax, 2                           ; 3D 02 00
        je      L_133A                          ; 74 5C
        cmp     ax, 3                           ; 3D 03 00
        je      L_131C                          ; 74 39
        cmp     ax, 5                           ; 3D 05 00
        je      L_1328                          ; 74 40
        jmp     L_1302                          ; EB 18
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_12EA -- offset 0x12EA -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: small
; calls (intra): sub_0A10
;----------------------------------------------------------------------
L_12EA:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x2fa                       ; B8 FA 02
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
L_12F4:
        push    ax                              ; 50
        lea     ax, [si + 8]                    ; 8D 44 08
L_12F8:
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A10                          ; E8 11 F7
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_1302:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        dec     byte ptr [bx + 3]               ; FE 4F 03
        call    far _SEG1_1694                  ; 9A 85 10 00 00 [FIXUP]
L_130D:
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_138F                          ; 74 78
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_1392                          ; EB 76
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_131C -- offset 0x131C -- 5 instr
; Funcion hoja (no llama a otras, 5 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------
L_131C:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x2fb                       ; B8 FB 02
        push    ax                              ; 50
        mov     ax, 0x19                        ; B8 19 00
        jmp     L_12F4                          ; EB CC
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1328 -- offset 0x1328 -- 48 instr
; Funcion mediana (48 instr, 3 calls).
; tags: calls_kernel, medium
; calls (intra): sub_0A10
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_1328:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x6ff                       ; B8 FF 06
        push    ax                              ; 50
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        inc     ax                              ; 40
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        jmp     L_12F8                          ; EB BE
L_133A:
        cmp     word ptr [si + 8], 3            ; 83 7C 08 03
        je      L_134C                          ; 74 0C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x2fc                       ; B8 FC 02
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        jmp     L_12F4                          ; EB A8
L_134C:
        push    word ptr [si + 0xe]             ; FF 74 0E
        call    far KERNEL.GLOBALLOCK           ; 9A 07 11 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        or      ax, dx                          ; 0B C2
        je      L_1302                          ; 74 A4
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx + 8]        ; 26 8A 47 08
        sub     ah, ah                          ; 2A E4
        mul     word ptr es:[bx + 0xe]          ; 26 F7 67 0E
        mov     di, ax                          ; 8B F8
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x1f9                       ; B8 F9 01
        push    ax                              ; 50
        lea     ax, [di + 0x21]                 ; 8D 45 21
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        push    es                              ; 06
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A10                          ; E8 8F F6
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [si + 0xe]             ; FF 74 0E
        call    far KERNEL.GLOBALUNLOCK         ; 9A C2 0A 00 00 [FIXUP]
        jmp     L_1302                          ; E9 73 FF
L_138F:
        mov     ax, 0xffff                      ; B8 FF FF
L_1392:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_139A -- offset 0x139A -- 80 instr
; Dispatcher: tabla de decisiones cmp+jcc (80 instr).
; tags: calls_kernel, dispatcher
; callers: sub_0A10
; calls (inter): KERNEL.GLOBALREALLOC
;----------------------------------------------------------------------
L_139A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        cmp     word ptr [si + 0xaa], 0         ; 83 BC AA 00 00
        jne     L_140B                          ; 75 57
        cmp     di, 0x64                        ; 83 FF 64
        jae     L_13BE                          ; 73 05
        mov     ax, 0x64                        ; B8 64 00
        jmp     L_13C0                          ; EB 02
L_13BE:
        mov     ax, di                          ; 8B C7
L_13C0:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        shl     ax, 1                           ; D1 E0
        add     ax, 0x12                        ; 05 12 00
        sub     dx, dx                          ; 2B D2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      dx, dx                          ; 0B D2
        ja      L_13FF                          ; 77 2B
        jb      L_13DB                          ; 72 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jae     L_13FF                          ; 73 24
L_13DB:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_162D                  ; 9A F7 10 00 00 [FIXUP]
        mov     word ptr [si + 0xaa], ax        ; 89 84 AA 00
        or      ax, ax                          ; 0B C0
        je      L_13FF                          ; 74 11
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [si + 0xa4], ax        ; 89 84 A4 00
        mov     word ptr [si + 0x1a], 0         ; C7 44 1A 00 00
L_13FA:
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
L_13FF:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_146B                          ; 74 66
        mov     ax, word ptr [si + 0xaa]        ; 8B 84 AA 00
        jmp     L_146D                          ; EB 62
L_140B:
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
        add     ax, di                          ; 03 C7
        cmp     ax, word ptr [si + 0xa4]        ; 3B 84 A4 00
        jbe     L_13FA                          ; 76 E4
        cmp     di, 0x64                        ; 83 FF 64
        jae     L_1420                          ; 73 05
        mov     ax, 0x64                        ; B8 64 00
        jmp     L_1422                          ; EB 02
L_1420:
        mov     ax, di                          ; 8B C7
L_1422:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [si + 0xa4]        ; 8B 84 A4 00
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        shl     ax, 1                           ; D1 E0
        add     ax, 0x12                        ; 05 12 00
        sub     dx, dx                          ; 2B D2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      dx, dx                          ; 0B D2
        ja      L_13FF                          ; 77 BF
        jb      L_1447                          ; 72 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jae     L_13FF                          ; 73 B8
L_1447:
        push    word ptr [si + 0xaa]            ; FF B4 AA 00
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0x21e]                ; FF 36 1E 02
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0xaa], ax        ; 89 84 AA 00
        or      ax, ax                          ; 0B C0
        je      L_13FF                          ; 74 9D
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [si + 0xa4], ax        ; 89 84 A4 00
        jmp     L_13FA                          ; EB 8F
L_146B:
        sub     ax, ax                          ; 2B C0
L_146D:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1475 -- offset 0x1475 -- 53 instr
; Dispatcher: tabla de decisiones cmp+jcc (53 instr).
; tags: dispatcher
; callers: sub_1290
; calls (intra): sub_19F0
;----------------------------------------------------------------------
L_1475:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 4], 0xffff       ; C7 46 FC FF FF
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_19F0                          ; E8 68 05
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        or      ax, ax                          ; 0B C0
        jne     L_1492                          ; 75 03
        jmp     L_1557                          ; E9 C5 00
L_1492:
        mov     bx, ax                          ; 8B D8
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [si + 0xac]        ; 8B 84 AC 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        je      L_14EB                          ; 74 3F
        mov     bx, ax                          ; 8B D8
        mov     di, word ptr [bx]               ; 8B 3F
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_14B5:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [si + 0x12], ax        ; 39 44 12
        jbe     L_14EB                          ; 76 2E
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     dx, word ptr [bx + 6]           ; 8B 57 06
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + di + 2], dx      ; 39 51 02
        jne     L_14E6                          ; 75 14
        cmp     word ptr [bx + di], ax          ; 39 01
        jne     L_14E6                          ; 75 10
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_1551                          ; EB 6B
L_14E6:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        jmp     L_14B5                          ; EB CA
L_14EB:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_1503                          ; 75 12
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A 8B 06 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [si + 0xac], ax        ; 89 84 AC 00
        jmp     L_151D                          ; EB 1A
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1503 -- offset 0x1503 -- 35 instr
; Funcion mediana (35 instr, 1 calls).
; tags: calls_kernel, medium
; calls (inter): KERNEL.LOCALREALLOC
;----------------------------------------------------------------------
L_1503:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        push    word ptr [0x224]                ; FF 36 24 02
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_151D:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_1551                          ; 74 2E
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     di, word ptr [bx]               ; 8B 3F
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        inc     word ptr [si + 0x12]            ; FF 44 12
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     dx, word ptr [bx + 6]           ; 8B 57 06
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     bx, word ptr es:[bx]            ; 26 8B 1F
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + di], ax          ; 89 01
        mov     word ptr [bx + di + 2], dx      ; 89 51 02
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_1551:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        dec     byte ptr [bx + 3]               ; FE 4F 03
L_1557:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CREATEMETAFILE -- 74 instr
; Constructor: crea metafile.
; tags: calls_kernel, dispatcher, far
; calls (inter): KERNEL.LOCALALLOC, KERNEL.OPENFILE
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; CREATEMETAFILE  (offset 0x1562, size 207 bytes)
;-----------------------------------------------------------------------
CREATEMETAFILE PROC FAR
L_1562:
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
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        push    word ptr [0x228]                ; FF 36 28 02
        mov     ax, 0xae                        ; B8 AE 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jne     L_158C                          ; 75 03
        jmp     L_1618                          ; E9 8C 00
L_158C:
        call    far _SEG1_1662                  ; 9A 38 10 00 00 [FIXUP]
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     si, word ptr [bx]               ; 8B 37
        mov     word ptr [si + 2], 9            ; C7 44 02 09 00
        mov     word ptr [si + 0xa], 9          ; C7 44 0A 09 00
        mov     word ptr [si + 0xc], 0x100      ; C7 44 0C 00 01
        mov     word ptr [si + 0xe], 9          ; C7 44 0E 09 00
        mov     word ptr [si + 0x10], 0         ; C7 44 10 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_1609                          ; 74 52
        mov     word ptr [si + 8], 2            ; C7 44 08 02 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [si + 0x1c]                 ; 8D 44 1C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1002                      ; B8 02 10
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 9D 17 00 00 [FIXUP]
        mov     word ptr [si + 0xa6], ax        ; 89 84 A6 00
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_15F1                          ; 74 18
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far KERNEL._LWRITE              ; 9A 38 17 00 00 [FIXUP]
        cmp     ax, 0x12                        ; 3D 12 00
        jne     L_15F1                          ; 75 05
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
L_15F1:
        cmp     word ptr [si + 0xa6], -1        ; 83 BC A6 00 FF
        je      L_1613                          ; 74 1B
        cmp     byte ptr [si + 0x1d], 0         ; 80 7C 1D 00
        jne     L_1613                          ; 75 15
        push    word ptr [si + 0xa6]            ; FF B4 A6 00
        call    far KERNEL._LCLOSE              ; 9A 5C 17 00 00 [FIXUP]
        jmp     L_1613                          ; EB 0A
L_1609:
        mov     word ptr [si + 8], 1            ; C7 44 08 01 00
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
L_1613:
        call    far _SEG1_1694                  ; 9A 09 13 00 00 [FIXUP]
L_1618:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1623                          ; 74 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_1625                          ; EB 02
L_1623:
        sub     ax, ax                          ; 2B C0
L_1625:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CREATEMETAFILE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CLOSEMETAFILE -- 168 instr
; Dispatcher: tabla de decisiones cmp+jcc (168 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_0A10
; calls (inter): KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALREALLOC, KERNEL.GLOBALUNLOCK, KERNEL.LOCALFREE, KERNEL.OPENFILE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CLOSEMETAFILE  (offset 0x1631, size 417 bytes)
;-----------------------------------------------------------------------
CLOSEMETAFILE PROC FAR
L_1631:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        or      si, si                          ; 0B F6
        jne     L_1654                          ; 75 03
        jmp     L_1783                          ; E9 2F 01
L_1654:
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A10                          ; E8 B0 F3
        or      ax, ax                          ; 0B C0
        jne     L_1667                          ; 75 03
        jmp     L_1783                          ; E9 1C 01
L_1667:
        mov     bx, si                          ; 8B DE
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     di, word ptr [bx]               ; 8B 3F
        test    byte ptr [di + 0xa8], 1         ; F6 85 A8 00 01
        je      L_1678                          ; 74 03
        jmp     L_1778                          ; E9 00 01
L_1678:
        cmp     word ptr [di + 8], 1            ; 83 7D 08 01
        jne     L_16DD                          ; 75 5F
        push    word ptr [di + 0xaa]            ; FF B5 AA 00
        call    far KERNEL.GLOBALLOCK           ; 9A F1 16 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        push    si                              ; 56
        push    di                              ; 57
        lea     si, [di + 8]                    ; 8D 75 08
        mov     di, bx                          ; 8B FB
        mov     cx, 9                           ; B9 09 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     ax, word ptr [di + 0xe]         ; 8B 45 0E
        shl     ax, 1                           ; D1 E0
        add     ax, 0x12                        ; 05 12 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [di + 0xaa]        ; 8B 85 AA 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    ax                              ; 50
        call    far KERNEL.GLOBALUNLOCK         ; 9A 64 17 00 00 [FIXUP]
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x21e]                ; FF 36 1E 02
        call    far KERNEL.GLOBALREALLOC        ; 9A 68 19 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_16D2                          ; 74 03
        jmp     L_1768                          ; E9 96 00
L_16D2:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.GLOBALFREE           ; 9A B8 17 00 00 [FIXUP]
        jmp     L_1768                          ; E9 8B 00
L_16DD:
        mov     ax, 0xa0                        ; B8 A0 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_162D                  ; 9A 27 18 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        je      L_1768                          ; 74 79
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A F5 17 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        push    si                              ; 56
        push    di                              ; 57
        lea     si, [di + 8]                    ; 8D 75 08
        mov     di, bx                          ; 8B FB
        mov     cx, 9                           ; B9 09 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     word ptr [di + 8], 1            ; C7 45 08 01 00
        cmp     byte ptr [di + 0x1d], 0         ; 80 7D 1D 00
        je      L_178E                          ; 74 77
        mov     ax, word ptr [di + 0xa6]        ; 8B 85 A6 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
L_171E:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 1A 0B 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        lea     ax, [di + 8]                    ; 8D 45 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far KERNEL._LWRITE              ; 9A CF 0B 00 00 [FIXUP]
        cmp     ax, 0x12                        ; 3D 12 00
        jne     L_1746                          ; 75 05
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_1746:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        push    si                              ; 56
        push    di                              ; 57
        lea     si, [di + 0x1c]                 ; 8D 75 1C
        lea     di, [bx + 0x16]                 ; 8D 7F 16
        mov     cx, 0x44                        ; B9 44 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     di                              ; 5F
        pop     si                              ; 5E
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL._LCLOSE              ; 9A 75 0B 00 00 [FIXUP]
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.GLOBALUNLOCK         ; 9A B0 17 00 00 [FIXUP]
L_1768:
        cmp     word ptr [di + 0xac], 0         ; 83 BD AC 00 00
        je      L_1778                          ; 74 09
        push    word ptr [di + 0xac]            ; FF B5 AC 00
        call    far KERNEL.LOCALFREE            ; 9A 7F 17 00 00 [FIXUP]
L_1778:
        mov     bx, si                          ; 8B DE
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    si                              ; 56
        call    far KERNEL.LOCALFREE            ; 9A C2 18 00 00 [FIXUP]
L_1783:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_17C3                          ; 74 3A
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        jmp     L_17C5                          ; EB 37
L_178E:
        lea     ax, [di + 0x24]                 ; 8D 45 24
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [di + 0x1c]                 ; 8D 45 1C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa002                      ; B8 02 A0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 04 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_17AC                          ; 74 03
        jmp     L_171E                          ; E9 72 FF
L_17AC:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 66 18 00 00 [FIXUP]
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.GLOBALFREE           ; 9A 08 12 00 00 [FIXUP]
        mov     bx, si                          ; 8B DE
        dec     byte ptr [bx + 3]               ; FE 4F 03
        jmp     L_1783                          ; EB C0
L_17C3:
        sub     ax, ax                          ; 2B C0
L_17C5:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
CLOSEMETAFILE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; COPYMETAFILE -- 148 instr
; Funcion compleja: 148 instrucciones, 7 llamadas, 11 branches.
; tags: calls_kernel, complex, far
; calls (intra): sub_02D2, sub_0A10, sub_0C69
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALSIZE, KERNEL.GLOBALUNLOCK, KERNEL.LOCALFREE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; COPYMETAFILE  (offset 0x17D2, size 341 bytes)
;-----------------------------------------------------------------------
COPYMETAFILE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x18                        ; 83 EC 18
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      si, si                          ; 0B F6
        jne     L_17F3                          ; 75 03
        jmp     L_1918                          ; E9 25 01
L_17F3:
        push    si                              ; 56
        call    far KERNEL.GLOBALLOCK           ; 9A 36 18 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        or      ax, dx                          ; 0B C2
        jne     L_1806                          ; 75 03
        jmp     L_1918                          ; E9 12 01
L_1806:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        cmp     word ptr es:[bx], 1             ; 26 83 3F 01
        jne     L_186D                          ; 75 5E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_186D                          ; 75 56
        push    si                              ; 56
        call    far KERNEL.GLOBALSIZE           ; 9A 5D 19 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far _SEG1_162D                  ; 9A E2 13 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_1834                          ; 75 03
        jmp     L_1912                          ; E9 DE 00
L_1834:
        push    di                              ; 57
        call    far KERNEL.GLOBALLOCK           ; 9A 43 19 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        jmp     L_185C                          ; EB 15
L_1847:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0x12]            ; FF 46 EE
L_185C:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jb      L_1847                          ; 72 E3
        push    di                              ; 57
        call    far KERNEL.GLOBALUNLOCK         ; 9A 14 19 00 00 [FIXUP]
        jmp     L_1912                          ; E9 A5 00
L_186D:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1562                          ; E8 EA FC
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_1881                          ; 75 03
        jmp     L_1912                          ; E9 91 00
L_1881:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_02D2                          ; E8 3F EA
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        or      ax, dx                          ; 0B C2
        je      L_18C8                          ; 74 2B
        push    di                              ; 57
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        sub     ax, 3                           ; 2D 03 00
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        add     ax, 6                           ; 05 06 00
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A10                          ; E8 58 F1
        or      ax, ax                          ; 0B C0
        jne     L_1881                          ; 75 C5
        push    di                              ; 57
        call    L_0C69                          ; E8 A9 F3
        push    di                              ; 57
        call    far KERNEL.LOCALFREE            ; 9A 02 0F 00 00 [FIXUP]
        jmp     L_1912                          ; EB 4A
L_18C8:
        mov     bx, di                          ; 8B DF
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        push    si                              ; 56
        push    di                              ; 57
        lea     di, [bx + 8]                    ; 8D 7F 08
        mov     si, ax                          ; 8B F0
        push    ds                              ; 1E
        pop     es                              ; 07
        push    ds                              ; 1E
        mov     ds, dx                          ; 8E DA
        mov     cx, 9                           ; B9 09 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_18F8                          ; 74 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_18FB                          ; EB 03
L_18F8:
        mov     ax, 1                           ; B8 01 00
L_18FB:
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     word ptr [bx + 8], ax           ; 89 47 08
        push    di                              ; 57
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1631                          ; E8 2A FD
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        or      ax, ax                          ; 0B C0
        jne     L_1910                          ; 75 02
        sub     ax, ax                          ; 2B C0
L_1910:
        mov     di, ax                          ; 8B F8
L_1912:
        push    si                              ; 56
        call    far KERNEL.GLOBALUNLOCK         ; 9A 79 19 00 00 [FIXUP]
L_1918:
        mov     ax, di                          ; 8B C7
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
COPYMETAFILE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETMETAFILEBITS -- 48 instr
; Getter: devuelve metafilebits.
; tags: calls_kernel, far, medium
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALREALLOC, KERNEL.GLOBALSIZE, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETMETAFILEBITS  (offset 0x1927, size 111 bytes)
;-----------------------------------------------------------------------
GETMETAFILEBITS PROC FAR
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
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        or      si, si                          ; 0B F6
        je      L_197D                          ; 74 3C
        push    si                              ; 56
        call    far KERNEL.GLOBALLOCK           ; 9A 50 13 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        je      L_197D                          ; 74 2C
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     word ptr es:[bx], 1             ; 26 83 3F 01
        jne     L_1977                          ; 75 1D
        push    si                              ; 56
        push    si                              ; 56
        call    far KERNEL.GLOBALSIZE           ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x220]                ; FF 36 20 02
        call    far KERNEL.GLOBALREALLOC        ; 9A 56 14 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_1977                          ; 74 05
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_1977:
        push    si                              ; 56
        call    far KERNEL.GLOBALUNLOCK         ; 9A 00 12 00 00 [FIXUP]
L_197D:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_1987                          ; 74 04
        mov     ax, si                          ; 8B C6
        jmp     L_198A                          ; EB 03
L_1987:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_198A:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
GETMETAFILEBITS ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETMETAFILEBITS -- 24 instr
; Setter: cambia metafilebits.
; tags: calls_kernel, far, small
; calls (inter): KERNEL.GLOBALREALLOC, KERNEL.GLOBALSIZE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETMETAFILEBITS  (offset 0x1996, size 44 bytes)
;-----------------------------------------------------------------------
SETMETAFILEBITS PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    si                              ; 56
        push    si                              ; 56
        call    far KERNEL.GLOBALSIZE           ; 9A 19 18 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x21e]                ; FF 36 1E 02
        call    far KERNEL.GLOBALREALLOC        ; 9A C4 16 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
SETMETAFILEBITS ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_19C2 -- offset 0x19C2 -- 24 instr
; Funcion sin clasificar definitiva (24 instr).
; tags: small
; callers: sub_074D
;----------------------------------------------------------------------

L_19C2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        or      cx, cx                          ; 0B C9
        je      L_19E5                          ; 74 14
        mov     bx, ds                          ; 8C DB
        lds     si, ptr [bp + 4]                ; C5 76 04
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        sub     sp, cx                          ; 2B E1
        sub     sp, cx                          ; 2B E1
        mov     di, sp                          ; 8B FC
        cld                                     ; FC
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     ds, bx                          ; 8E DB
L_19E5:
        lcall   [bp + 0xa]                      ; FF 5E 0A
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_19F0 -- offset 0x19F0 -- 14 instr
; Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0A10, sub_1475
;----------------------------------------------------------------------
L_19F0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, bx                          ; 8B C3
        or      bx, bx                          ; 0B DB
        je      L_1A07                          ; 74 0B
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 9            ; 80 7F 02 09
        je      L_1A07                          ; 74 03
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
L_1A07:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

GDI_TEXT ENDS

        END
