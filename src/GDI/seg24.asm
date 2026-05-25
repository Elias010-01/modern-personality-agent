; AUTO-GENERATED from original GDI segment 24
; segment_size=400 bytes, flags=0xf030
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
; DMTRANSPOSE -- 80 instr
; Iterador con instrucciones de string (movsb/scasb/...) (80 instr).
; tags: complex_iterator, far, string_op
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DMTRANSPOSE  (offset 0x0000, size 162 bytes)
;-----------------------------------------------------------------------
DMTRANSPOSE PROC FAR
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
        cld                                     ; FC
        lds     si, ptr [bp + 0xc]              ; C5 76 0C
        les     di, ptr [bp + 8]                ; C4 7E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 8], si           ; 89 76 F8
        or      dx, dx                          ; 0B D2
        je      L_0043                          ; 74 1B
        sub     si, ax                          ; 2B F0
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     si, ax                          ; 03 F0
        mov     word ptr [bp - 8], si           ; 89 76 F8
        jmp     L_0043                          ; EB 0C
L_0037:
        dec     word ptr [bp - 4]               ; FF 4E FC
        jle     L_0095                          ; 7E 59
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        inc     si                              ; 46
        mov     word ptr [bp - 8], si           ; 89 76 F8
L_0043:
        mov     ax, 8                           ; B8 08 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     al, byte ptr [si]               ; 8A 04
        add     si, dx                          ; 03 F2
        mov     ah, byte ptr [si]               ; 8A 24
        add     si, dx                          ; 03 F2
        mov     bh, byte ptr [si]               ; 8A 3C
        add     si, dx                          ; 03 F2
        mov     bl, byte ptr [si]               ; 8A 1C
        add     si, dx                          ; 03 F2
        mov     ch, byte ptr [si]               ; 8A 2C
        add     si, dx                          ; 03 F2
        mov     cl, byte ptr [si]               ; 8A 0C
        add     si, dx                          ; 03 F2
        mov     dh, byte ptr [si]               ; 8A 34
        add     si, word ptr [bp + 6]           ; 03 76 06
        mov     dl, byte ptr [si]               ; 8A 14
        mov     si, ax                          ; 8B F0
        mov     ah, al                          ; 8A E0
L_006F:
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_0037                          ; 7C C3
        rol     ax, 1                           ; D1 C0
        shl     si, 1                           ; D1 E6
        rcl     al, 1                           ; D0 D0
        shl     bh, 1                           ; D0 E7
        rcl     al, 1                           ; D0 D0
        shl     bl, 1                           ; D0 E3
        rcl     al, 1                           ; D0 D0
        shl     ch, 1                           ; D0 E5
        rcl     al, 1                           ; D0 D0
        shl     cl, 1                           ; D0 E1
        rcl     al, 1                           ; D0 D0
        shl     dh, 1                           ; D0 E6
        rcl     al, 1                           ; D0 D0
        shl     dl, 1                           ; D0 E2
        rcl     al, 1                           ; D0 D0
        stosb   byte ptr es:[di], al            ; AA
        jmp     L_006F                          ; EB DA
L_0095:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
DMTRANSPOSE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DMBITBLT -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: far, trivial_stub
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DMBITBLT  (offset 0x00A2, size 5 bytes)
;-----------------------------------------------------------------------
DMBITBLT PROC FAR
        mov     cx, 0x14                        ; B9 14 00
        jmp     L_00CE                          ; EB 27
DMBITBLT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DMSTRBLT -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: far, trivial_stub
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DMSTRBLT  (offset 0x00A7, size 5 bytes)
;-----------------------------------------------------------------------
DMSTRBLT PROC FAR
        mov     cx, 0x2813                      ; B9 13 28
        jmp     L_00CE                          ; EB 22
DMSTRBLT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DMCOLORINFO -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: far, trivial_stub
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DMCOLORINFO  (offset 0x00AC, size 5 bytes)
;-----------------------------------------------------------------------
DMCOLORINFO PROC FAR
        mov     cx, 0x40a                       ; B9 0A 04
        jmp     L_00CE                          ; EB 1D
DMCOLORINFO ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DMPIXEL -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: far, trivial_stub
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DMPIXEL  (offset 0x00B1, size 5 bytes)
;-----------------------------------------------------------------------
DMPIXEL PROC FAR
        mov     cx, 0x200c                      ; B9 0C 20
        jmp     L_00CE                          ; EB 18
DMPIXEL ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DMOUTPUT -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: far, trivial_stub
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DMOUTPUT  (offset 0x00B6, size 5 bytes)
;-----------------------------------------------------------------------
DMOUTPUT PROC FAR
        mov     cx, 0x1c12                      ; B9 12 1C
        jmp     L_00CE                          ; EB 13
DMOUTPUT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DMREALIZEOBJECT -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: far, trivial_stub
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DMREALIZEOBJECT  (offset 0x00BB, size 5 bytes)
;-----------------------------------------------------------------------
DMREALIZEOBJECT PROC FAR
        mov     cx, 0x240d                      ; B9 0D 24
        jmp     L_00CE                          ; EB 0E
DMREALIZEOBJECT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DMENUMDFONTS -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: far, trivial_stub
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DMENUMDFONTS  (offset 0x00C0, size 6 bytes)
;-----------------------------------------------------------------------
DMENUMDFONTS PROC FAR
        mov     ax, 1                           ; B8 01 00
        retf    0x10                            ; CA 10 00
DMENUMDFONTS ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DMENUMOBJ -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: far, trivial_stub
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DMENUMOBJ  (offset 0x00C6, size 5 bytes)
;-----------------------------------------------------------------------
DMENUMOBJ PROC FAR
        mov     cx, 0x180b                      ; B9 0B 18
        jmp     L_00CE                          ; EB 03
DMENUMOBJ ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DMSCANLR -- 1 instr
; Stub trivial (1 instrucciones, sin logica significativa).
; tags: far, trivial_stub
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DMSCANLR  (offset 0x00CB, size 3 bytes)
;-----------------------------------------------------------------------
DMSCANLR PROC FAR
        mov     cx, 0x2c0b                      ; B9 0B 2C
DMSCANLR ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; BRUTE -- 80 instr
; Iterador con instrucciones de string (movsb/scasb/...) (80 instr).
; tags: complex_iterator, far, loop, string_op
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; BRUTE  (offset 0x00CE, size 194 bytes)
;-----------------------------------------------------------------------
BRUTE PROC FAR
L_00CE:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        push    si                              ; 56
        push    di                              ; 57
        mov     si, sp                          ; 8B F4
        mov     di, ss                          ; 8C D7
        mov     es, di                          ; 8E C7
        sub     sp, 0x20                        ; 83 EC 20
        mov     di, sp                          ; 8B FC
        xor     dx, dx                          ; 33 D2
        xchg    dl, ch                          ; 86 EA
L_00E2:
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        loop    L_00E2                          ; E2 FC
        inc     bp                              ; 45
        mov     word ptr ss:[di + 0x1a], bp     ; 36 89 6D 1A
        lea     bp, [di + 0x1a]                 ; 8D 6D 1A
        mov     word ptr [bp - 2], ds           ; 8C 5E FE
        mov     ds, ax                          ; 8E D8
        pop     word ptr [bp - 0x1a]            ; 8F 46 E6
        pop     word ptr [bp - 0x18]            ; 8F 46 E8
        pop     word ptr [bp + 2]               ; 8F 46 02
        pop     word ptr [bp + 4]               ; 8F 46 04
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        les     si, ptr [bp - 0x1e]             ; C4 76 E2
        mov     di, 0xffee                      ; BF EE FF
        call    L_0168                          ; E8 5D 00
        or      dx, dx                          ; 0B D2
        jne     L_0120                          ; 75 11
        les     si, ptr [bp - 0x26]             ; C4 76 DA
        mov     word ptr [bp + di], si          ; 89 33
        mov     word ptr [bp + di + 2], es      ; 8C 43 02
        mov     ax, es                          ; 8C C0
        or      ax, si                          ; 0B C6
        je      L_0120                          ; 74 03
        call    L_016E                          ; E8 4E 00
L_0120:
        mov     bx, word ptr [bx + 0x1a]        ; 8B 5F 1A
        mov     bx, word ptr [bx]               ; 8B 1F
        add     bx, dx                          ; 03 DA
        lcall   [bx]                            ; FF 1F
        mov     bx, ax                          ; 8B D8
        dec     word ptr [bp - 0x16]            ; FF 4E EA
        jns     L_0147                          ; 79 17
        les     di, ptr [bp - 0xa]              ; C4 7E F6
        mov     ax, es                          ; 8C C0
        or      ax, di                          ; 0B C7
        je      L_0147                          ; 74 0E
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[di + 0x12], ax     ; 26 89 45 12
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[di + 0x14], ax     ; 26 89 45 14
L_0147:
        les     di, ptr [bp - 0x12]             ; C4 7E EE
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr es:[di + 0x12], ax     ; 26 89 45 12
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[di + 0x14], ax     ; 26 89 45 14
        mov     ax, bx                          ; 8B C3
L_015A:
        lea     sp, [bp - 0x1a]                 ; 8D 66 E6
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
L_0168:
        cld                                     ; FC
        mov     word ptr [bp + di], si          ; 89 33
        mov     word ptr [bp + di + 2], es      ; 8C 43 02
L_016E:
        xor     ax, ax                          ; 33 C0
        cmp     word ptr es:[si], ax            ; 26 39 04
        jne     L_015A                          ; 75 E5
        mov     bx, word ptr [0x108]            ; 8B 1E 08 01
        mov     bx, word ptr [bx]               ; 8B 1F
        xchg    word ptr es:[si + 0x12], ax     ; 26 87 44 12
        mov     word ptr [bp + di + 4], ax      ; 89 43 04
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        xchg    word ptr es:[si + 0x14], ax     ; 26 87 44 14
        mov     word ptr [bp + di + 6], ax      ; 89 43 06
        add     di, 8                           ; 83 C7 08
        ret                                     ; C3
BRUTE ENDP


GDI_TEXT ENDS

        END
