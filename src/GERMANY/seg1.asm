; AUTO-GENERATED from original GERMANY segment 1
; segment_size=216 bytes, flags=0xf070
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

GERMANY_TEXT SEGMENT BYTE PUBLIC 'CODE'

        fisub   word ptr [bp + di]              ; DE 23
        pop     si                              ; 5E
        sahf                                    ; 9E
        and     byte ptr [bx + si + 0x27], ah   ; 20 60 27
        pop     si                              ; 5E
        test    al, 0x32                        ; A8 32
        mov     dl, 0xb2                        ; B2 B2
        xor     bp, word ptr [bp + 0x6e]        ; 33 6E 6E
        aaa                                     ; 37
        jnp     L_008D                          ; 7B 7B
        cmp     byte ptr [bp + di + 0x5b], bl   ; 38 5B 5B
        cmp     word ptr [di + 0x5d], bx        ; 39 5D 5D
        xor     byte ptr [di + 0x7d], bh        ; 30 7D 7D
        dec     bp                              ; 4D
        mov     ch, 0xb5                        ; B5 B5
        push    cx                              ; 51
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     dx, 0x7c7c                      ; BA 7C 7C
        mov     di, 0x5c5c                      ; BF 5C 5C
        mov     bx, 0x7e7e                      ; BB 7E 7E
        xor     al, byte ptr [bx + si + 0x40]   ; 32 40 40
        fstp    qword ptr [bp + di + 0x7b]      ; DD 5B 7B
        mov     bx, 0x7d5d                      ; BB 5D 7D
        mov     dx, 0x7c5c                      ; BA 5C 7C
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     ax, 0xff                        ; B8 FF 00
        cld                                     ; FC
        mov     di, 0x3b2                       ; BF B2 03
        mov     cx, 0x21                        ; B9 21 00
        rep stosb byte ptr es:[di], al          ; F3 AA
        push    ds                              ; 1E
        mov     ax, 0x40                        ; B8 40 00
        mov     ds, ax                          ; 8E D8
        test    byte ptr [0x96], 0x10           ; F6 06 96 00 10
        pop     ds                              ; 1F
        je      L_0082                          ; 74 24
        mov     ah, 0x91                        ; B4 91
        int     0x16                            ; CD 16
        test    ah, 0x80                        ; F6 C4 80
        jne     L_0082                          ; 75 1B
        mov     byte ptr [0x20], 1              ; C6 06 20 00 01
        nop                                     ; 90
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        mov     cx, 0x21                        ; B9 21 00
        mov     si, 9                           ; BE 09 00
        mov     di, 0x3b2                       ; BF B2 03
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ax, es                          ; 8C C0
        mov     ds, ax                          ; 8E D8
        jmp     L_00CB                          ; EB 49
L_0082:
        mov     byte ptr [0x3ff], 0xba          ; C6 06 FF 03 BA
        nop                                     ; 90
        mov     byte ptr [0x431], 0xff          ; C6 06 31 04 FF
L_008D:
        nop                                     ; 90
        push    ds                              ; 1E
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        mov     cx, 4                           ; B9 04 00
        mov     si, 0                           ; BE 00 00
        mov     di, 0x3aa                       ; BF AA 03
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     cx, 5                           ; B9 05 00
        mov     si, 4                           ; BE 04 00
        mov     di, 0x470                       ; BF 70 04
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     cx, 0x21                        ; B9 21 00
        mov     si, 0x2a                        ; BE 2A 00
        mov     di, 0x3b2                       ; BF B2 03
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ax, 0xf000                      ; B8 00 F0
        mov     ds, ax                          ; 8E D8
        cmp     byte ptr [0xfffe], 0xfc         ; 80 3E FE FF FC
        pop     ds                              ; 1F
        je      L_00CB                          ; 74 0A
        mov     al, byte ptr [0x3ff]            ; A0 FF 03
        xchg    byte ptr [0x401], al            ; 86 06 01 04
        mov     byte ptr [0x3ff], al            ; A2 FF 03
L_00CB:
        xor     ax, ax                          ; 33 C0
        not     ax                              ; F7 D0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

GERMANY_TEXT ENDS

        END
