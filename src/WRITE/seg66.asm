; AUTO-GENERATED from original WRITE segment 66
; segment_size=205 bytes, flags=0xf130
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
        sub     sp, 0xe                         ; 83 EC 0E
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        call    far _entry_299                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     cx, 6                           ; B9 06 00
        imul    cx                              ; F7 E9
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        cmp     word ptr [bx + 4], dx           ; 39 57 04
        jl      L_00C3                          ; 7C 68
        jg      L_0062                          ; 7F 05
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jbe     L_00C3                          ; 76 61
L_0062:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_008B                          ; EB 1C
L_006F:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bx + 4], dx           ; 39 57 04
        jg      L_0096                          ; 7F 19
        jl      L_0084                          ; 7C 05
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        ja      L_0096                          ; 77 12
L_0084:
        add     word ptr [bp - 8], 6            ; 83 46 F8 06
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_008B:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        cmp     ax, word ptr [bp - 0xa]         ; 3B 46 F6
        jl      L_006F                          ; 7C D9
L_0096:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_00C3                          ; 74 27
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     word ptr [bp - 0xa], ax         ; 29 46 F6
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     cx, 3                           ; B9 03 00
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bx], ax               ; 89 07
L_00C3:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ch                            ; 0C

WRITE_TEXT ENDS

        END
