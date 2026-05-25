; AUTO-GENERATED from original GDI segment 7
; segment_size=1840 bytes, flags=0xf170
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
; sub_0000 -- offset 0x0000 -- 17 instr
; Funcion hoja (no llama a otras, 17 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------

L_0000:
        push    bx                              ; 53
L_0001:
        or      bx, bx                          ; 0B DB
        je      L_001F                          ; 74 1A
        mov     bx, word ptr [bx]               ; 8B 1F
        add     bl, cl                          ; 02 D9
        adc     bh, 0                           ; 80 D7 00
        or      ch, ch                          ; 0A ED
        je      L_0014                          ; 74 04
        mov     byte ptr [bx], al               ; 88 07
        jmp     L_0016                          ; EB 02
L_0014:
        mov     word ptr [bx], ax               ; 89 07
L_0016:
        sub     bl, cl                          ; 2A D9
        sbb     bh, 0                           ; 80 DF 00
        mov     bx, word ptr [bx]               ; 8B 1F
        jmp     1                               ; EB E2
L_001F:
        pop     bx                              ; 5B
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ESCAPE -- 24 instr
; Funcion sin clasificar definitiva (24 instr).
; tags: far, small
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; ESCAPE  (offset 0x0021, size 54 bytes)
;-----------------------------------------------------------------------
ESCAPE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa4                        ; 81 EC A4 00
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 9            ; 80 7F 02 09
        jne     L_0043                          ; 75 07
        call    far _SEG1_3794                  ; 9A FF FF 00 00 [FIXUP]
        push    es                              ; 26 06
L_0043:
        mov     di, word ptr [bp + 0x12]        ; 8B 7E 12
        or      di, di                          ; 0B FF
        je      L_0052                          ; 74 08
        mov     si, word ptr [di]               ; 8B 35
        test    byte ptr [si + 8], 1            ; F6 44 08 01
        je      L_0055                          ; 74 03
L_0052:
        jmp     L_0407                          ; E9 B2 03
L_0055:
        mov     di, word ptr [si + 0x2a]        ; 8B 7C 2A
ESCAPE ENDP

        cmp     word ptr [bp + 0x10], 7         ; 83 7E 10 07
        jne     L_007B                          ; 75 1D
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     cx, 9                           ; B9 09 00
        inc     ch                              ; FE C5
        mov     al, byte ptr [si + 9]           ; 8A 44 09
        or      al, 1                           ; 0C 01
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_0073                          ; 75 02
        and     al, 0xfe                        ; 24 FE
L_0073:
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        call    0                               ; E8 87 FF
        jmp     L_00A6                          ; EB 2B
L_007B:
        cmp     word ptr [bp + 0x10], 9         ; 83 7E 10 09
        jne     L_00A0                          ; 75 1F
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     cx, 0x92                        ; B9 92 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        call    0                               ; E8 73 FF
        inc     cx                              ; 41
        inc     cx                              ; 41
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        call    0                               ; E8 6B FF
        lea     bx, [bp + 0x12]                 ; 8D 5E 12
        mov     word ptr [bp + 0xa], bx         ; 89 5E 0A
        mov     word ptr [bp + 0xc], ss         ; 8C 56 0C
        jmp     L_00A6                          ; EB 06
L_00A0:
        cmp     word ptr [si + 2], 6            ; 83 7C 02 06
        jne     L_00A9                          ; 75 03
L_00A6:
        jmp     L_0366                          ; E9 BD 02
L_00A9:
        cmp     word ptr [bp + 0x10], 1         ; 83 7E 10 01
        je      L_00E3                          ; 74 34
        cmp     word ptr [bp + 0x10], 3         ; 83 7E 10 03
        jne     L_00B8                          ; 75 03
        jmp     L_021C                          ; E9 64 01
L_00B8:
        cmp     word ptr [bp + 0x10], 2         ; 83 7E 10 02
        je      L_00C0                          ; 74 02
        jmp     L_00A6                          ; EB E6
L_00C0:
        xor     ax, ax                          ; 33 C0
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    ax                              ; 50
        call    far _SEG1_05C5                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        or      ax, ax                          ; 0B C0
        je      L_00E0                          ; 74 0E
        push    word ptr [si + 0xa]             ; FF 74 0A
        call    far _entry_126                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_01CF                          ; E9 EF 00
L_00E0:
        jmp     L_02BE                          ; E9 DB 01
L_00E3:
        cmp     word ptr [si + 2], 7            ; 83 7C 02 07
        jne     L_00EB                          ; 75 02
        jmp     L_00A6                          ; EB BB
L_00EB:
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     cx, 2                           ; B9 02 00
        mov     ax, 7                           ; B8 07 00
        call    0                               ; E8 09 FF
        xor     dx, dx                          ; 33 D2
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    dx                              ; 52
        call    far _SEG1_05C5                  ; 9A C7 00 00 00 [FIXUP]
        push    word ptr [si + 0xa]             ; FF 74 0A
        call    far _entry_126                  ; 9A D6 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_010D:
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    far _SEG1_051E                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    far _SEG1_065C                  ; 9A FF FF 00 00 [FIXUP]
        lea     cx, [bp - 0x12]                 ; 8D 4E EE
        lea     bx, [bp - 0xe]                  ; 8D 5E F2
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [0x120]                ; FF 36 20 01
        push    ss                              ; 16
        push    cx                              ; 51
        push    ss                              ; 16
        push    bx                              ; 53
        lcall   [di + 8]                        ; FF 5D 08
        or      ax, ax                          ; 0B C0
        je      L_01AF                          ; 74 77
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        test    word ptr [bx + 0x26], 4         ; F7 47 26 04 00
        je      L_0152                          ; 74 0E
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [si + 0x9c], ax        ; 89 84 9C 00
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [si + 0x9e], ax        ; 89 84 9E 00
L_0152:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        or      ax, word ptr [bp - 0xc]         ; 0B 46 F4
        or      ax, word ptr [bp - 0xa]         ; 0B 46 F6
        or      ax, word ptr [bp - 8]           ; 0B 46 F8
        je      L_01B4                          ; 74 54
        mov     cx, word ptr [si + 0x9c]        ; 8B 8C 9C 00
        shr     word ptr [bp - 0xe], cl         ; D3 6E F2
        shr     word ptr [bp - 0xa], cl         ; D3 6E F6
        mov     cx, word ptr [si + 0x9e]        ; 8B 8C 9E 00
        shr     word ptr [bp - 0xc], cl         ; D3 6E F4
        shr     word ptr [bp - 8], cl           ; D3 6E F8
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _SEG1_103D                  ; 9A FF FF 00 00 [FIXUP]
        xor     ax, ax                          ; 33 C0
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_123                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01AF                          ; 74 16
        xor     dx, dx                          ; 33 D2
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    dx                              ; 52
        call    far _SEG1_05C5                  ; 9A FE 00 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    far _SEG1_0695                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_010D                          ; E9 5E FF
L_01AF:
        mov     word ptr [bp + 0x10], 2         ; C7 46 10 02 00
L_01B4:
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    far _SEG1_0695                  ; 9A A8 01 00 00 [FIXUP]
        xor     ax, ax                          ; 33 C0
        mov     word ptr [si + 0x9c], ax        ; 89 84 9C 00
        mov     word ptr [si + 0x9e], ax        ; 89 84 9E 00
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    ax                              ; 50
        call    far _SEG1_05C5                  ; 9A A0 01 00 00 [FIXUP]
L_01CF:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_353                  ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far _entry_352                  ; 9A FF FF 00 00 [FIXUP]
        xor     cx, cx                          ; 33 C9
        lea     si, [0x111]                     ; 8D 36 11 01
        lea     di, [bp - 0x94]                 ; 8D BE 6C FF
        push    ax                              ; 50
        push    ds                              ; 1E
        push    si                              ; 56
        push    cx                              ; 51
        push    ss                              ; 16
        push    di                              ; 57
        call    far KERNEL.GETTEMPFILENAME      ; 9A FF FF 00 00 [FIXUP]
        push    ss                              ; 16
        push    di                              ; 57
        call    far _entry_125                  ; 9A FF FF 00 00 [FIXUP]
        pop     di                              ; 5F
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     si, word ptr [bx]               ; 8B 37
        mov     cx, 0xa                         ; B9 0A 00
        call    0                               ; E8 FB FD
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    far _SEG1_051E                  ; 9A 11 01 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     cx, 2                           ; B9 02 00
        mov     ax, 8                           ; B8 08 00
        call    0                               ; E8 E7 FD
        jmp     L_0366                          ; E9 4A 01
L_021C:
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        or      ax, ax                          ; 0B C0
        je      L_0254                          ; 74 31
        push    ax                              ; 50
        call    far _entry_126                  ; 9A 06 01 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_353                  ; 9A D3 01 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     cx, 0xa                         ; B9 0A 00
        xor     ax, ax                          ; 33 C0
        call    0                               ; E8 C6 FD
        mov     cx, 2                           ; B9 02 00
        mov     ax, 7                           ; B8 07 00
        call    0                               ; E8 BD FD
        xor     ax, ax                          ; 33 C0
        push    bx                              ; 53
        push    ax                              ; 50
        call    far _SEG1_05C5                  ; 9A CB 01 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    far _SEG1_051E                  ; 9A 09 02 00 00 [FIXUP]
L_0254:
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    far _SEG1_0695                  ; 9A B8 01 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    far _SEG1_065C                  ; 9A 19 01 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALHANDLE         ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        lea     cx, [bp - 0x12]                 ; 8D 4E EE
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [0x120]                ; FF 36 20 01
        push    ss                              ; 16
        push    cx                              ; 51
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [di + 8]                        ; FF 5D 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        call    far KERNEL.GLOBALHANDLE         ; 9A 68 02 00 00 [FIXUP]
        mov     word ptr [bp + 8], dx           ; 89 56 08
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        test    word ptr [bx + 0x26], 4         ; F7 47 26 04 00
        je      L_02AA                          ; 74 0E
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [si + 0x9c], ax        ; 89 84 9C 00
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [si + 0x9e], ax        ; 89 84 9E 00
L_02AA:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        or      ax, word ptr es:[bx + 2]        ; 26 0B 47 02
        or      ax, word ptr es:[bx + 4]        ; 26 0B 47 04
        or      ax, word ptr es:[bx + 6]        ; 26 0B 47 06
        jne     L_031D                          ; 75 5F
L_02BE:
        mov     word ptr [si + 0x9c], ax        ; 89 84 9C 00
        mov     word ptr [si + 0x9e], ax        ; 89 84 9E 00
        call    far _entry_352                  ; 9A D9 01 00 00 [FIXUP]
        xor     cx, cx                          ; 33 C9
        lea     si, [0x111]                     ; 8D 36 11 01
        lea     di, [bp - 0x94]                 ; 8D BE 6C FF
        push    ax                              ; 50
        push    ds                              ; 1E
        push    si                              ; 56
        push    cx                              ; 51
        push    ss                              ; 16
        push    di                              ; 57
        call    far KERNEL.GETTEMPFILENAME      ; 9A EE 01 00 00 [FIXUP]
        push    ss                              ; 16
        push    di                              ; 57
        call    far _entry_125                  ; 9A F5 01 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     cx, 0xa                         ; B9 0A 00
        call    0                               ; E8 10 FD
        xor     ax, ax                          ; 33 C0
        push    bx                              ; 53
        push    ax                              ; 50
        call    far _SEG1_05C5                  ; 9A 48 02 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    far _SEG1_051E                  ; 9A 50 02 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     cx, 2                           ; B9 02 00
        mov     ax, 8                           ; B8 08 00
        call    0                               ; E8 F3 FC
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp + 0x10], 2         ; 83 7E 10 02
        jne     L_0363                          ; 75 4B
        mov     di, word ptr [si + 0x2a]        ; 8B 7C 2A
        jmp     L_0366                          ; EB 49
L_031D:
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     cx, word ptr [si + 0x9c]        ; 8B 8C 9C 00
        shr     word ptr [bp - 0xe], cl         ; D3 6E F2
        shr     word ptr [bp - 0xa], cl         ; D3 6E F6
        mov     cx, word ptr [si + 0x9e]        ; 8B 8C 9E 00
        shr     word ptr [bp - 0xc], cl         ; D3 6E F4
        shr     word ptr [bp - 8], cl           ; D3 6E F8
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _SEG1_103D                  ; 9A 84 01 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0363:
        jmp     L_03FA                          ; E9 94 00
L_0366:
        cmp     word ptr [bp + 0x10], 0x100     ; 81 7E 10 00 01
        jl      L_03D4                          ; 7C 67
        cmp     word ptr [bp + 0x10], 0xbff     ; 81 7E 10 FF 0B
        jg      L_03D4                          ; 7F 60
        cmp     word ptr [bp + 0x10], 0x1ff     ; 81 7E 10 FF 01
        jle     L_039F                          ; 7E 24
        cmp     word ptr [si + 2], 8            ; 83 7C 02 08
        jne     L_039F                          ; 75 1E
        mov     ax, 0x626                       ; B8 26 06
        push    ax                              ; 50
        call    far _SEG1_36B8                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 0x10], 0x2ff     ; 81 7E 10 FF 02
        jle     L_03FA                          ; 7E 69
        cmp     word ptr [bp + 0x10], 0x800     ; 81 7E 10 00 08
        jge     L_03FA                          ; 7D 62
        cmp     word ptr [bp + 0x10], 0x400     ; 81 7E 10 00 04
        jge     L_03D4                          ; 7D 35
L_039F:
        push    di                              ; 57
        cld                                     ; FC
        lea     di, [bp - 0xa6]                 ; 8D BE 5A FF
        push    ss                              ; 16
        pop     es                              ; 07
        mov     ax, 0x12                        ; B8 12 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [si + 0x34]        ; 8B 44 34
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [si + 0x36]        ; 8B 44 36
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [si + 0x32]        ; 8B 44 32
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, ds                          ; 8C D8
        stosw   word ptr es:[di], ax            ; AB
        lea     ax, [si + 0x3c]                 ; 8D 44 3C
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, ds                          ; 8C D8
        stosw   word ptr es:[di], ax            ; AB
        sub     di, 0x12                        ; 83 EF 12
        mov     word ptr [bp + 0xa], di         ; 89 7E 0A
        push    ss                              ; 16
        pop     word ptr [bp + 0xc]             ; 8F 46 0C
        pop     di                              ; 5F
L_03D4:
        push    ax                              ; 50
        call    far _SEG1_1662                  ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [di + 8]                        ; FF 5D 08
        push    ax                              ; 50
        call    far _SEG1_1694                  ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
L_03FA:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
L_0407:
        xor     ax, ax                          ; 33 C0
        jmp     L_03FA                          ; EB EF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; QUERYABORT -- 25 instr
; Funcion sin clasificar definitiva (25 instr).
; tags: far, small
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; QUERYABORT  (offset 0x040B, size 53 bytes)
;-----------------------------------------------------------------------
QUERYABORT PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        xor     ax, ax                          ; 33 C0
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        or      bx, bx                          ; 0B DB
        je      L_0435                          ; 74 17
        mov     bx, word ptr [bx]               ; 8B 1F
        inc     ax                              ; 40
        mov     cx, word ptr [bx + 0x92]        ; 8B 8F 92 00
        or      cx, word ptr [bx + 0x94]        ; 0B 8F 94 00
        je      L_0435                          ; 74 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bx + 0x92]                     ; FF 9F 92 00
L_0435:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
QUERYABORT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETENVIRONMENT -- 48 instr
; Getter: devuelve environment.
; tags: calls_kernel, far, medium
; calls (inter): KERNEL.FINDATOM, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETENVIRONMENT  (offset 0x0440, size 109 bytes)
;-----------------------------------------------------------------------
GETENVIRONMENT PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        call    far _SEG1_2ED5                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_04A0                          ; 74 42
        cmp     ax, word ptr [0x12]             ; 3B 06 12 00
        jne     L_0473                          ; 75 0F
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.FINDATOM             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_04A0                          ; 74 2D
L_0473:
        call    far _SEG1_2EC4                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0                           ; B8 00 00
        jne     L_04A0                          ; 75 23
        mov     di, word ptr [bx + 2]           ; 8B 7F 02
        push    di                              ; 57
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        jcxz    L_04A0                          ; E3 18
        mov     ds, dx                          ; 8E DA
        mov     si, ax                          ; 8B F0
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     bx, di                          ; 8B DF
        les     di, ptr [bp + 8]                ; C4 7E 08
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        push    bx                              ; 53
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
L_04A0:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
GETENVIRONMENT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETENVIRONMENT -- 81 instr
; Setter: cambia environment.
; tags: calls_kernel, complex, far
; calls (inter): KERNEL.DELETEATOM, KERNEL.FINDATOM, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETENVIRONMENT  (offset 0x04AD, size 194 bytes)
;-----------------------------------------------------------------------
SETENVIRONMENT PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        mov     byte ptr [bp - 5], al           ; 88 46 FB
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        call    far _SEG1_2ED5                  ; 9A 56 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0505                          ; 74 34
        cmp     ax, word ptr [0x12]             ; 3B 06 12 00
        jne     L_04EA                          ; 75 13
        mov     byte ptr [bp - 5], 1            ; C6 46 FB 01
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.FINDATOM             ; 9A 6B 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0505                          ; 74 1B
L_04EA:
        mov     di, ax                          ; 8B F8
        call    far _SEG1_2EC4                  ; 9A 74 04 00 00 [FIXUP]
        jne     L_0505                          ; 75 12
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bx], ax               ; 89 07
        push    word ptr [bx + 2]               ; FF 77 02
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far KERNEL.DELETEATOM           ; 9A FF FF 00 00 [FIXUP]
L_0505:
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        or      si, si                          ; 0B F6
        je      L_0565                          ; 74 59
        mov     ax, 1                           ; B8 01 00
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     byte ptr [bp - 5], al           ; 38 46 FB
        jne     L_051A                          ; 75 03
        les     bx, ptr [bp + 8]                ; C4 5E 08
L_051A:
        push    es                              ; 06
        push    bx                              ; 53
        push    ax                              ; 50
        call    far _SEG1_2ED5                  ; 9A C9 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0581                          ; 74 5B
        mov     di, ax                          ; 8B F8
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    si                              ; 56
        call    far _SEG1_162D                  ; 9A FF FF 00 00 [FIXUP]
        jcxz    L_057B                          ; E3 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A 82 04 00 00 [FIXUP]
        jcxz    L_0573                          ; E3 35
        mov     es, dx                          ; 8E C2
        mov     dx, di                          ; 8B D7
        mov     di, ax                          ; 8B F8
        xor     ax, ax                          ; 33 C0
        call    far _SEG1_2EC4                  ; 9A ED 04 00 00 [FIXUP]
        jne     L_0569                          ; 75 1C
        mov     word ptr [bx], dx               ; 89 17
        mov     cx, si                          ; 8B CE
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        push    ds                              ; 1E
        lds     si, ptr [bp + 8]                ; C5 76 08
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        pop     ds                              ; 1F
        push    ax                              ; 50
        call    far KERNEL.GLOBALUNLOCK         ; 9A 99 04 00 00 [FIXUP]
L_0565:
        mov     al, 1                           ; B0 01
        jmp     L_0583                          ; EB 1A
L_0569:
        mov     di, dx                          ; 8B FA
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 61 05 00 00 [FIXUP]
SETENVIRONMENT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0573 -- offset 0x0573 -- 102 instr
; Iterador con instrucciones de string (movsb/scasb/...) (102 instr).
; tags: calls_kernel, complex_iterator, far, string_op
; calls (inter): KERNEL.DELETEATOM, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------

L_0573:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALFREE           ; 9A FB 04 00 00 [FIXUP]
L_057B:
        push    di                              ; 57
        call    far KERNEL.DELETEATOM           ; 9A 01 05 00 00 [FIXUP]
L_0581:
        xor     ax, ax                          ; 33 C0
L_0583:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00

;-----------------------------------------------------------------------
; GETOBJECT  (offset 0x0590, size 298 bytes)
;-----------------------------------------------------------------------
GETOBJECT PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        cld                                     ; FC
        xor     ax, ax                          ; 33 C0
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        or      si, si                          ; 0B F6
        je      L_05FB                          ; 74 55
        mov     si, word ptr [si]               ; 8B 34
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        and     bx, 0xf                         ; 81 E3 0F 00
        je      L_060E                          ; 74 5D
        add     bx, bx                          ; 03 DB
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     bl, 8                           ; 80 FB 08
        je      L_061B                          ; 74 60
        cmp     bl, 6                           ; 80 FB 06
        jg      L_060E                          ; 7F 4E
        jl      L_05D5                          ; 7C 13
        mov     di, si                          ; 8B FE
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        add     di, 0x1a                        ; 83 C7 1A
        call    far _SEG1_15D9                  ; 9A FF FF 00 00 [FIXUP]
        add     cx, 0x12                        ; 83 C1 12
        jmp     L_05FE                          ; EB 29
L_05D5:
        mov     cx, 0xa                         ; B9 0A 00
        cmp     bl, 2                           ; 80 FB 02
        je      L_05FE                          ; 74 21
        mov     cx, 8                           ; B9 08 00
        cmp     word ptr [si + 8], 3            ; 83 7C 08 03
        jne     L_05FE                          ; 75 18
        cmp     dx, cx                          ; 3B D1
        jl      L_05FE                          ; 7C 14
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     ax, 3                           ; B8 03 00
        stosw   word ptr es:[di], ax            ; AB
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [si + 0x14]        ; 8B 44 14
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, cx                          ; 8B C1
L_05FB:
        jmp     L_060E                          ; EB 11
        nop                                     ; 90
L_05FE:
        les     di, ptr [bp + 6]                ; C4 7E 06
        cmp     dx, cx                          ; 3B D1
        jge     L_0607                          ; 7D 02
        xchg    cx, dx                          ; 87 D1
L_0607:
        add     si, 8                           ; 83 C6 08
        mov     ax, cx                          ; 8B C1
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
L_060E:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
L_061B:
        mov     si, word ptr [si + 8]           ; 8B 74 08
        push    si                              ; 56
        call    far KERNEL.GLOBALLOCK           ; 9A 38 05 00 00 [FIXUP]
        jcxz    L_060E                          ; E3 E8
        mov     bx, si                          ; 8B DE
        mov     ds, dx                          ; 8E DA
        mov     si, ax                          ; 8B F0
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     cx, 0xa                         ; B9 0A 00
        cmp     dx, cx                          ; 3B D1
        jge     L_063B                          ; 7D 02
        mov     cx, dx                          ; 8B CA
L_063B:
        sub     dx, cx                          ; 2B D1
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     cx, dx                          ; 8B CA
        xor     ax, ax                          ; 33 C0
        rep stosb byte ptr es:[di], al          ; F3 AA
        push    bx                              ; 53
        call    far KERNEL.GLOBALUNLOCK         ; 9A 6F 05 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        jmp     L_060E                          ; EB BD
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ENUMOBJECTS -- 51 instr
; Enumerador: itera sobre objects.
; tags: far, medium
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; ENUMOBJECTS  (offset 0x0651, size 124 bytes)
;-----------------------------------------------------------------------
ENUMOBJECTS PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jne     L_0668                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_06C2                          ; EB 5A
L_0668:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        call    far _SEG1_1662                  ; 9A D6 03 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        push    word ptr [bx + 0x28]            ; FF 77 28
        push    word ptr [bx + 0x26]            ; FF 77 26
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, OFFSET _entry_423           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_423           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     bx, word ptr [bx + 0x2a]        ; 8B 5F 2A
        lcall   [bx + 0x18]                     ; FF 5F 18
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        call    far _SEG1_1694                  ; 9A F5 03 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
L_06C2:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
ENUMOBJECTS ENDP

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 8], 1         ; 26 83 7F 08 01
        jne     L_0712                          ; 75 31
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        call    far _entry_376                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        call    far _entry_377                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
L_0712:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        lcall   es:[bx + 4]                     ; 26 FF 5F 04
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

GDI_TEXT ENDS

        END
