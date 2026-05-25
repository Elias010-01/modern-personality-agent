; AUTO-GENERATED from original NOTEPAD segment 8
; segment_size=362 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

NOTEPAD_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa0                        ; 81 EC A0 00
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0029                          ; 75 03
        jmp     L_00E3                          ; E9 BA 00
L_0029:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x98]                 ; 8D 86 68 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x9e], ax        ; 89 86 62 FF
        mov     si, ax                          ; 8B F0
        cmp     byte ptr [bp + si - 0x99], 0x5c ; 80 BA 67 FF 5C
        je      L_0050                          ; 74 05
        mov     byte ptr [bp + si - 0x98], 0x5c ; C6 82 68 FF 5C
L_0050:
        inc     word ptr [bp - 0x9e]            ; FF 86 62 FF
        mov     si, word ptr [bp - 0x9e]        ; 8B B6 62 FF
        mov     byte ptr [bp + si - 0x98], 0    ; C6 82 68 FF 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 8                           ; 05 08 00
        mov     word ptr [bp - 0x9c], ax        ; 89 86 64 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0104                          ; E8 91 00
        mov     word ptr [bp - 0x9a], ax        ; 89 86 66 FF
        lea     ax, [bp - 0x98]                 ; 8D 86 68 FF
L_007B:
        mov     word ptr [bp - 0xa0], ax        ; 89 86 60 FF
        mov     ax, word ptr [bp - 0x9a]        ; 8B 86 66 FF
        cmp     word ptr [bp - 0x9c], ax        ; 39 86 64 FF
        jae     L_0097                          ; 73 0E
        mov     bx, word ptr [bp - 0x9c]        ; 8B 9E 64 FF
        mov     si, word ptr [bp - 0xa0]        ; 8B B6 60 FF
        mov     al, byte ptr [si]               ; 8A 04
        cmp     byte ptr [bx], al               ; 38 07
        je      L_00C7                          ; 74 30
L_0097:
        mov     ax, word ptr [bp - 0x9a]        ; 8B 86 66 FF
        cmp     word ptr [bp - 0x9c], ax        ; 39 86 64 FF
        jne     L_00AA                          ; 75 09
        mov     bx, word ptr [bp - 0xa0]        ; 8B 9E 60 FF
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_00B4                          ; 74 0A
L_00AA:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 8                           ; 05 08 00
        mov     word ptr [bp - 0x9c], ax        ; 89 86 64 FF
L_00B4:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp - 0x9c]        ; 8B 86 64 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00F8                          ; EB 31
L_00C7:
        mov     ax, word ptr [bp - 0x9c]        ; 8B 86 64 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A DD 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x9c], ax        ; 89 86 64 FF
        mov     ax, word ptr [bp - 0xa0]        ; 8B 86 60 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A 56 01 00 00 [FIXUP]
        jmp     L_007B                          ; EB 98
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00E3 -- offset 0x00E3 -- 15 instr
; Funcion sin clasificar definitiva (15 instr).
; tags: calls_user, far, small
; calls (inter): USER.ENABLEWINDOW, USER.GETDLGITEM
;----------------------------------------------------------------------
L_00E3:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
L_00F8:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0104 -- offset 0x0104 -- 50 instr
; Funcion mediana (50 instr, 3 calls).
; tags: calls_kernel, medium
; calls (inter): KERNEL.ANSINEXT, KERNEL.ANSIPREV, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_0104:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A 3A 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_012A:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jbe     L_015D                          ; 76 2B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     al, 0x5c                        ; 3C 5C
        je      L_0150                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_012A                          ; 75 DA
L_0150:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_015D:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

NOTEPAD_TEXT ENDS

        END
