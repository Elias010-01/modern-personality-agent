; ======================================================================
; ITALY / seg1.asm   (segment 1 of ITALY)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         0
; Total instructions:                    0
; 
; Classification (pass8):
;   C-origin (high+medium):              0
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original ITALY segment 1
; segment_size=116 bytes, flags=0xf070
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

ITALY_TEXT SEGMENT BYTE PUBLIC 'CODE'

        mov     dx, 0x3e3c                      ; BA 3C 3E
        sbb     al, 0xdb                        ; 1C DB
        loopne  L_002A                          ; E0 23
        db      0ffh                            ; FF
        fdivr   st(2), st(0)                    ; DC F2
        inc     ax                              ; 40
        or      byte ptr [si - 0x6f28], 0x45    ; 80 8C D8 90 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        mov     ax, 0x40                        ; B8 40 00
        mov     ds, ax                          ; 8E D8
        test    byte ptr [0x96], 0x10           ; F6 06 96 00 10
        pop     ds                              ; 1F
        je      L_0035                          ; 74 11
        mov     ah, 0x91                        ; B4 91
        int     0x16                            ; CD 16
        test    ah, 0x80                        ; F6 C4 80
        jne     L_0035                          ; 75 08
        mov     byte ptr [0x20], 1              ; C6 06 20 00 01
        nop                                     ; 90
        jmp     L_0067                          ; EB 32
;   [conditional branch target (if/else)] L_0035
L_0035:
        mov     byte ptr [0x361], 0xba          ; C6 06 61 03 BA
        nop                                     ; 90
        push    ds                              ; 1E
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        cld                                     ; FC
        ; constant WM_SETTEXT
        mov     cx, 0xc                         ; B9 0C 00
        mov     si, 0                           ; BE 00 00
        mov     di, 0x328                       ; BF 28 03
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ax, 0xf000                      ; B8 00 F0
        mov     ds, ax                          ; 8E D8
        cmp     byte ptr [0xfffe], 0xfc         ; 80 3E FE FF FC
        pop     ds                              ; 1F
        je      L_0067                          ; 74 0A
        mov     al, byte ptr [0x361]            ; A0 61 03
        xchg    byte ptr [0x363], al            ; 86 06 63 03
        mov     byte ptr [0x361], al            ; A2 61 03
;   [branch target] L_0067
L_0067:
        xor     ax, ax                          ; 33 C0
        not     ax                              ; F7 D0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

ITALY_TEXT ENDS

        END
