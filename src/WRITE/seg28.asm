; AUTO-GENERATED from original WRITE segment 28
; segment_size=133 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        jne     L_001E                          ; 75 0D
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
L_0019:
        mov     ax, 1                           ; B8 01 00
        jmp     L_007B                          ; EB 5D
L_001E:
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_003F                          ; 75 1A
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        je      L_0031                          ; 74 06
        cmp     word ptr [bp + 0xa], 2          ; 83 7E 0A 02
        jne     L_0060                          ; 75 2F
L_0031:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_59                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0019                          ; EB DA
L_003F:
        cmp     word ptr [bp + 0xc], 6          ; 83 7E 0C 06
        jne     L_0064                          ; 75 1F
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0051                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_0051:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_0060                          ; 74 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
L_0060:
        sub     ax, ax                          ; 2B C0
        jmp     L_007B                          ; EB 17
L_0064:
        cmp     word ptr [bp + 0xc], 9          ; 83 7E 0C 09
        jne     L_0060                          ; 75 F6
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0060                          ; 74 F0
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0060                          ; EB E5
L_007B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A

WRITE_TEXT ENDS

        END
