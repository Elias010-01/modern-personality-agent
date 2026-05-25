; AUTO-GENERATED from original PAINT segment 28
; segment_size=271 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

PAINT_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0034                          ; 74 15
        push    ax                              ; 50
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far GDI.GETPIXEL                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xdac], ax            ; A3 AC 0D
        mov     word ptr [0xdae], dx            ; 89 16 AE 0D
L_0034:
        mov     ax, word ptr [0xdac]            ; A1 AC 0D
        or      ax, word ptr [0xdae]            ; 0B 06 AE 0D
        je      L_0051                          ; 74 14
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A 59 00 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        jmp     L_0063                          ; EB 12
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0051 -- offset 0x0051 -- 64 instr
; Funcion mediana (64 instr, 5 calls).
; tags: calls_gdi, medium
; calls (inter): GDI.DELETEDC, GDI.LINETO, GDI.MOVETO, GDI.SETPIXEL, GDI.SETROP2
;----------------------------------------------------------------------
L_0051:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A 65 00 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x10                        ; B8 10 00
L_0063:
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_00BD                          ; 74 4E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        mov     ax, word ptr [0xdac]            ; A1 AC 0D
        or      ax, word ptr [0xdae]            ; 0B 06 AE 0D
        je      L_0088                          ; 74 05
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_008E                          ; EB 06
L_0088:
        mov     ax, 0xffff                      ; B8 FF FF
        mov     dx, 0xff                        ; BA FF 00
L_008E:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.SETPIXEL                ; 9A B7 00 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        mov     ax, word ptr [0xdac]            ; A1 AC 0D
        or      ax, word ptr [0xdae]            ; 0B 06 AE 0D
        je      L_00AE                          ; 74 05
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_00B4                          ; EB 06
L_00AE:
        mov     ax, 0xffff                      ; B8 FF FF
        mov     dx, 0xff                        ; BA FF 00
L_00B4:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.SETPIXEL                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00FD                          ; EB 40
L_00BD:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x1172]               ; FF 36 72 11
        push    word ptr [0x1174]               ; FF 36 74 11
        call    far GDI.MOVETO                  ; 9A E9 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far GDI.LINETO                  ; 9A F9 00 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x1172]               ; FF 36 72 11
        push    word ptr [0x1174]               ; FF 36 74 11
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
L_00FD:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

PAINT_TEXT ENDS

        END
