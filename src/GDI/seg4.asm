; AUTO-GENERATED from original GDI segment 4
; segment_size=749 bytes, flags=0xf170
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
; GETTEXTMETRICS -- 244 instr
; Getter: devuelve textmetrics.
; tags: dispatcher, far
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETTEXTMETRICS  (offset 0x0000, size 749 bytes)
;-----------------------------------------------------------------------
GETTEXTMETRICS PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_001A                          ; 75 05
L_0015:
        sub     ax, ax                          ; 2B C0
        jmp     L_02E1                          ; E9 C7 02
L_001A:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, word ptr [bx]               ; 8B 37
        test    byte ptr [si + 8], 0x40         ; F6 44 08 40
        je      L_002F                          ; 74 0A
        push    bx                              ; 53
        call    far _SEG1_2BC2                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0015                          ; 74 E6
L_002F:
        mov     ax, word ptr [si + 0x34]        ; 8B 44 34
        mov     dx, word ptr [si + 0x36]        ; 8B 54 36
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     di, word ptr [si + 0x32]        ; 8B 7C 32
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx + 0x22]        ; 8B 47 22
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        not     ax                              ; F7 D0
        and     ax, word ptr [di + 0xf]         ; 23 45 0F
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        test    word ptr [bp - 0x18], 0x200     ; F7 46 E8 00 02
        je      L_005D                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_005F                          ; EB 02
L_005D:
        sub     ax, ax                          ; 2B C0
L_005F:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_00A4                          ; 75 31
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_00A4                          ; 75 27
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, word ptr [si + 0x16]        ; 8B 5C 16
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     al, byte ptr [bx + 0x16]        ; 8A 47 16
        mov     byte ptr [bp - 0x16], al        ; 88 46 EA
        test    word ptr [bp - 0x1a], 0x4000    ; F7 46 E6 00 40
        je      L_009F                          ; 74 0A
        cmp     al, 3                           ; 3C 03
        jne     L_00A4                          ; 75 0B
        test    byte ptr [bp - 0x1a], 2         ; F6 46 E6 02
        jne     L_00A4                          ; 75 05
L_009F:
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
L_00A4:
        mov     ax, word ptr [di]               ; 8B 05
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    ax                              ; 50
        call    far _SEG1_2D82                  ; 9A D9 00 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        les     bx, ptr [bp - 8]                ; C4 5E F8
        sub     ax, word ptr es:[bx + 8]        ; 26 2B 47 08
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _SEG1_2D82                  ; 9A F2 00 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp - 8]                ; C4 5E F8
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _SEG1_2D82                  ; 9A 0B 01 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp - 8]                ; C4 5E F8
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _SEG1_2D82                  ; 9A 2A 01 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0179                          ; 74 5D
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [di + 2]               ; FF 75 02
        les     bx, ptr [bp - 8]                ; C4 5E F8
        push    word ptr es:[bx + 0x19]         ; 26 FF 77 19
        call    far _SEG1_2D82                  ; 9A 53 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        les     bx, ptr [bp - 8]                ; C4 5E F8
        push    word ptr es:[bx + 0x1b]         ; 26 FF 77 1B
        push    word ptr [di + 2]               ; FF 75 02
        push    word ptr es:[bx + 0x19]         ; 26 FF 77 19
        call    far _SEG1_2D82                  ; 9A FE 01 00 00 [FIXUP]
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        test    word ptr [di + 0xf], 0x400      ; F7 45 0F 00 04
        je      L_0171                          ; 74 09
        mov     ax, word ptr [di]               ; 8B 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        jmp     L_0173                          ; EB 02
L_0171:
        sub     ax, ax                          ; 2B C0
L_0173:
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        jmp     L_021D                          ; E9 A4 00
L_0179:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_377                  ; 9A 92 01 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        call    far _entry_377                  ; 9A A5 01 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        call    far _entry_377                  ; 9A B8 01 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        call    far _entry_377                  ; 9A CB 01 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        call    far _entry_377                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        push    ax                              ; 50
        call    far _entry_376                  ; 9A 07 02 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        les     bx, ptr [bp - 8]                ; C4 5E F8
        push    word ptr es:[bx + 0x1b]         ; 26 FF 77 1B
        push    word ptr [di + 2]               ; FF 75 02
        push    word ptr es:[bx + 0x19]         ; 26 FF 77 19
        call    far _SEG1_2D82                  ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        push    ax                              ; 50
        call    far _entry_376                  ; 9A 19 02 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [di + 0x11]            ; FF 75 11
        call    far _entry_376                  ; 9A FF FF 00 00 [FIXUP]
L_021D:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x19], ax     ; 26 89 47 19
        mov     ax, word ptr [di + 8]           ; 8B 45 08
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     al, byte ptr [di + 0xa]         ; 8A 45 0A
        mov     byte ptr es:[bx + 0x10], al     ; 26 88 47 10
        mov     al, byte ptr [di + 0xb]         ; 8A 45 0B
        mov     byte ptr es:[bx + 0x11], al     ; 26 88 47 11
        mov     al, byte ptr [di + 0xc]         ; 8A 45 0C
        mov     byte ptr es:[bx + 0x12], al     ; 26 88 47 12
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     al, byte ptr es:[bx + 0x1d]     ; 26 8A 47 1D
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0x13], al     ; 26 88 47 13
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0x14], al     ; 26 88 47 14
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0x15], al     ; 26 88 47 15
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0x16], al     ; 26 88 47 16
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        je      L_0291                          ; 74 04
        mov     al, 1                           ; B0 01
        jmp     L_0293                          ; EB 02
L_0291:
        sub     al, al                          ; 2A C0
L_0293:
        mov     cl, 3                           ; B1 03
        shl     al, cl                          ; D2 E0
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     cl, byte ptr es:[bx]            ; 26 8A 0F
        and     cl, 3                           ; 80 E1 03
        shl     cl, 1                           ; D0 E1
        or      al, cl                          ; 0A C1
        mov     cl, byte ptr es:[bx + 0x18]     ; 26 8A 4F 18
        and     cl, 0xf1                        ; 80 E1 F1
        or      al, cl                          ; 0A C1
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0x17], al     ; 26 88 47 17
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     al, byte ptr es:[bx + 0x13]     ; 26 8A 47 13
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0x18], al     ; 26 88 47 18
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x1b], ax     ; 26 89 47 1B
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x1d], ax     ; 26 89 47 1D
        mov     ax, 1                           ; B8 01 00
L_02E1:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06
GETTEXTMETRICS ENDP


GDI_TEXT ENDS

        END
