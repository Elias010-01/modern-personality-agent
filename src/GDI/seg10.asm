; AUTO-GENERATED from original GDI segment 10
; segment_size=187 bytes, flags=0xf130
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
; CREATEELLIPTICRGN -- 37 instr
; Constructor: crea ellipticrgn.
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CREATEELLIPTICRGN  (offset 0x0000, size 79 bytes)
;-----------------------------------------------------------------------
CREATEELLIPTICRGN PROC FAR
L_0000:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp + 0xc]         ; 2B 46 0C
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_406                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0042                          ; 74 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0044                          ; EB 02
L_0042:
        sub     ax, ax                          ; 2B C0
L_0044:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
CREATEELLIPTICRGN ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CREATEELLIPTICRGNINDIRECT -- 22 instr
; Constructor: crea ellipticrgnindirect.
; tags: far, small
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CREATEELLIPTICRGNINDIRECT  (offset 0x004F, size 44 bytes)
;-----------------------------------------------------------------------
CREATEELLIPTICRGNINDIRECT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 90 FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CREATEELLIPTICRGNINDIRECT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CREATEPOLYGONRGN -- 32 instr
; Constructor: crea polygonrgn.
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CREATEPOLYGONRGN  (offset 0x007B, size 64 bytes)
;-----------------------------------------------------------------------
CREATEPOLYGONRGN PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_422                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00AF                          ; 74 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_00B1                          ; EB 02
L_00AF:
        sub     ax, ax                          ; 2B C0
L_00B1:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08
CREATEPOLYGONRGN ENDP


GDI_TEXT ENDS

        END
