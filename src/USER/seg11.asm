; AUTO-GENERATED from original USER segment 11
; segment_size=267 bytes, flags=0xf130
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
; SETSYSCOLORS -- 111 instr
; Setter: cambia syscolors.
; tags: calls_gdi, dispatcher, far
; calls (inter): GDI.CREATESOLIDBRUSH, GDI.DELETEOBJECT
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETSYSCOLORS  (offset 0x0000, size 267 bytes)
;-----------------------------------------------------------------------
SETSYSCOLORS PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0xa], 0x3bc      ; C7 46 F6 BC 03
        mov     word ptr [bp - 0x12], 0x3de     ; C7 46 EE DE 03
        sub     si, si                          ; 2B F6
        jmp     L_0094                          ; EB 72
L_0022:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 4            ; 83 46 06 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        add     word ptr [bp + 0xa], 2          ; 83 46 0A 02
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        mov     ax, 1                           ; B8 01 00
        mov     cx, di                          ; 8B CF
        shl     ax, cl                          ; D3 E0
        or      word ptr [bp - 6], ax           ; 09 46 FA
        cmp     di, 0xa                         ; 83 FF 0A
        jge     L_007D                          ; 7D 2E
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, di                          ; 8B C7
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        or      ax, ax                          ; 0B C0
        je      L_0067                          ; 74 06
        push    ax                              ; 50
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
L_0067:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     cx, di                          ; 8B CF
        shl     cx, 1                           ; D1 E1
        add     bx, cx                          ; 03 D9
        mov     word ptr [bx], ax               ; 89 07
L_007D:
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     ax, di                          ; 8B C7
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        inc     si                              ; 46
L_0094:
        cmp     word ptr [bp + 0xe], si         ; 39 76 0E
        jg      L_0022                          ; 7F 89
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
        test    word ptr [bp - 6], 0x120        ; F7 46 FA 20 01
        je      L_00BE                          ; 74 0C
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        jmp     L_00CC                          ; EB 0E
L_00BE:
        test    word ptr [bp - 6], 0x2dd        ; F7 46 FA DD 02
        je      L_00D2                          ; 74 0D
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
L_00CC:
        push    ax                              ; 50
        call    far _SEG1_18E3                  ; 9A EB 00 00 00 [FIXUP]
L_00D2:
        test    byte ptr [bp - 6], 2            ; F6 46 FA 02
        je      L_00FF                          ; 74 27
        cmp     word ptr [0x1be], 0             ; 83 3E BE 01 00
        jne     L_00FF                          ; 75 20
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_18E3                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x51c], 0             ; 83 3E 1C 05 00
        jne     L_00FF                          ; 75 09
        mov     ax, 0x512                       ; B8 12 05
        push    ax                              ; 50
        call    far _entry_330                  ; 9A FF FF 00 00 [FIXUP]
L_00FF:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A
SETSYSCOLORS ENDP


USER_TEXT ENDS

        END
