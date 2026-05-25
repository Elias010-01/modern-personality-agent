; AUTO-GENERATED from original USER segment 6
; segment_size=307 bytes, flags=0xf170
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
; CREATECONVERTWINDOW -- 41 instr
; Constructor: crea convertwindow.
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CREATECONVERTWINDOW  (offset 0x0000, size 87 bytes)
;-----------------------------------------------------------------------
CREATECONVERTWINDOW PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     dx, 0x8088                      ; BA 88 80
        push    dx                              ; 52
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0x50e]            ; A1 0E 05
        sub     ax, word ptr [0x47a]            ; 2B 06 7A 04
        push    ax                              ; 50
        push    word ptr [0x510]                ; FF 36 10 05
        push    word ptr [0x47a]                ; FF 36 7A 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_0232                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x62a], ax            ; A3 2A 06
        or      ax, ax                          ; 0B C0
        je      L_0049                          ; 74 06
        mov     ax, word ptr [0x54]             ; A1 54 00
        mov     word ptr [0x74c], ax            ; A3 4C 07
L_0049:
        mov     ax, word ptr [0x62a]            ; A1 2A 06
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
CREATECONVERTWINDOW ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SHOWCONVERTWINDOW -- 24 instr
; Funcion sin clasificar definitiva (24 instr).
; tags: far, small
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SHOWCONVERTWINDOW  (offset 0x0057, size 50 bytes)
;-----------------------------------------------------------------------
SHOWCONVERTWINDOW PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _SEG1_6092                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_007E                          ; 74 11
        mov     ax, word ptr [0x62a]            ; A1 2A 06
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_007E                          ; 75 09
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_0E43                  ; 9A FF FF 00 00 [FIXUP]
L_007E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SHOWCONVERTWINDOW ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETCONVERTWINDOWHEIGHT -- 30 instr
; Setter: cambia convertwindowheight.
; tags: far, small
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETCONVERTWINDOWHEIGHT  (offset 0x0089, size 68 bytes)
;-----------------------------------------------------------------------
SETCONVERTWINDOWHEIGHT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x47a], ax            ; A3 7A 04
        cmp     word ptr [0x62a], 0             ; 83 3E 2A 06 00
        je      L_00C2                          ; 74 1F
        push    word ptr [0x62a]                ; FF 36 2A 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0x50e]            ; A1 0E 05
        sub     ax, word ptr [0x47a]            ; 2B 06 7A 04
        push    ax                              ; 50
        push    word ptr [0x510]                ; FF 36 10 05
        push    word ptr [0x47a]                ; FF 36 7A 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_204A                  ; 9A FF FF 00 00 [FIXUP]
L_00C2:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
SETCONVERTWINDOWHEIGHT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ISTWOBYTECHARPREFIX -- 29 instr
; Predicado: verifica si twobytecharprefix.
; tags: dispatcher, far
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; ISTWOBYTECHARPREFIX  (offset 0x00CD, size 60 bytes)
;-----------------------------------------------------------------------
ISTWOBYTECHARPREFIX PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     al, byte ptr [0x5f2]            ; A0 F2 05
        cmp     byte ptr [bp + 6], al           ; 38 46 06
        jl      L_00E7                          ; 7C 08
        mov     al, byte ptr [0x5f3]            ; A0 F3 05
        cmp     byte ptr [bp + 6], al           ; 38 46 06
        jle     L_00F7                          ; 7E 10
L_00E7:
        mov     al, byte ptr [0x5f4]            ; A0 F4 05
        cmp     byte ptr [bp + 6], al           ; 38 46 06
        jl      L_00FC                          ; 7C 0D
        mov     al, byte ptr [0x5f3]            ; A0 F3 05
        cmp     byte ptr [bp + 6], al           ; 38 46 06
        jg      L_00FC                          ; 7F 05
L_00F7:
        mov     ax, 1                           ; B8 01 00
        jmp     L_00FE                          ; EB 02
L_00FC:
        sub     ax, ax                          ; 2B C0
L_00FE:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
ISTWOBYTECHARPREFIX ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SYSHASKANJI -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: far, small
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SYSHASKANJI  (offset 0x0109, size 42 bytes)
;-----------------------------------------------------------------------
SYSHASKANJI PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x5f2], 0xfeff        ; 81 3E F2 05 FF FE
        jne     L_0123                          ; 75 08
        cmp     word ptr [0x5f4], 0xfeff        ; 81 3E F4 05 FF FE
        je      L_0128                          ; 74 05
L_0123:
        mov     ax, 1                           ; B8 01 00
        jmp     L_012A                          ; EB 02
L_0128:
        sub     ax, ax                          ; 2B C0
L_012A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
SYSHASKANJI ENDP


USER_TEXT ENDS

        END
