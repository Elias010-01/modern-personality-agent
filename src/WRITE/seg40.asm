; AUTO-GENERATED from original WRITE segment 40
; segment_size=393 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 148 instr
; Dispatcher: tabla de decisiones cmp+jcc (148 instr).
; tags: dispatcher
;----------------------------------------------------------------------

L_0000:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     ax, word ptr [0xc20]            ; A1 20 0C
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0019                          ; 75 03
        jmp     L_017E                          ; E9 65 01
L_0019:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0xf92]            ; 8B 36 92 0F
        add     bx, word ptr [si]               ; 03 1C
        add     bx, 6                           ; 83 C3 06
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        mov     ax, word ptr [bx]               ; 8B 07
        mov     cl, 0xc                         ; B1 0C
        shr     ax, cl                          ; D3 E8
        and     ax, 0xf                         ; 25 0F 00
        dec     ax                              ; 48
        and     ax, 0xf                         ; 25 0F 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        and     byte ptr [bx + 1], 0xf          ; 80 67 01 0F
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        shl     ax, cl                          ; D3 E0
        or      word ptr [bx], ax               ; 09 07
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0054                          ; 74 03
        jmp     L_017E                          ; E9 2A 01
L_0054:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_263                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0xe]    ; 8B 40 0E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     ax                              ; 40
        je      L_007B                          ; 74 08
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 85 FF
L_007B:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0xf92]            ; 8B 36 92 0F
        mov     si, word ptr [si]               ; 8B 34
        push    word ptr [bx + si]              ; FF 30
        call    far KERNEL.LOCALFREE            ; 9A BC 00 00 00 [FIXUP]
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0xf92]            ; 8B 36 92 0F
        mov     si, word ptr [si]               ; 8B 34
        mov     word ptr [bx + si], 0           ; C7 00 00 00
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 8]      ; 8B 40 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_00C0                          ; 74 06
        push    ax                              ; 50
        call    far KERNEL.LOCALFREE            ; 9A DA 00 00 00 [FIXUP]
L_00C0:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0xa]    ; 8B 40 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_00DE                          ; 74 06
        push    ax                              ; 50
        call    far KERNEL.LOCALFREE            ; 9A F8 00 00 00 [FIXUP]
L_00DE:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0xc]    ; 8B 40 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_00FC                          ; 74 06
        push    ax                              ; 50
        call    far KERNEL.LOCALFREE            ; 9A 16 01 00 00 [FIXUP]
L_00FC:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x14]   ; 8B 40 14
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        je      L_011A                          ; 74 06
        push    ax                              ; 50
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_011A:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x12]   ; 8B 40 12
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        je      L_0138                          ; 74 06
        push    ax                              ; 50
        call    far _entry_119                  ; 9A FF FF 00 00 [FIXUP]
L_0138:
        mov     ax, word ptr [0x2de]            ; A1 DE 02
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0145                          ; 75 05
        call    far _entry_219                  ; 9A FF FF 00 00 [FIXUP]
L_0145:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_262                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x12b4]           ; A1 B4 12
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_015B                          ; 75 06
        mov     word ptr [0x12b4], 0xffff       ; C7 06 B4 12 FF FF
L_015B:
        mov     ax, word ptr [0x1bd4]           ; A1 D4 1B
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0169                          ; 75 06
        mov     word ptr [0x1bd4], 0xffff       ; C7 06 D4 1B FF FF
L_0169:
        mov     ax, word ptr [0xcae]            ; A1 AE 0C
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_0179                          ; 74 08
        mov     ax, word ptr [0xcb8]            ; A1 B8 0C
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_017E                          ; 75 05
L_0179:
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
L_017E:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
