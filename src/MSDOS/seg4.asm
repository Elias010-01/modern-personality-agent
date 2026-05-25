; AUTO-GENERATED from original MSDOS segment 4
; segment_size=15241 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

MSDOS_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 10 instr
; Llama a servicios DOS via INT 21h (10 instr).
; tags: dos_caller, int_21
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x4400                      ; B8 00 44
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        int     0x21                            ; CD 21
        and     dx, 0x80                        ; 81 E2 80 00
        xchg    dx, ax                          ; 92
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0016 -- offset 0x0016 -- 28 instr
; Llama a servicios DOS via INT 21h (28 instr).
; tags: dos_caller, int_21
; callers: sub_10B0, sub_1A07, sub_1CAF, sub_2019, sub_3327, sub_33B6
;----------------------------------------------------------------------
L_0016:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KEYBOARD.5                  ; 9A FF FF 00 00 [FIXUP]
        push    ds                              ; 1E
        lds     dx, ptr [bp + 4]                ; C5 56 04
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        lds     dx, ptr [bp + 0xa]              ; C5 56 0A
        mov     ah, 0x4e                        ; B4 4E
        int     0x21                            ; CD 21
        jb      L_0040                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_0040:
        pop     ds                              ; 1F
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KEYBOARD.6                  ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_005A -- offset 0x005A -- 14 instr
; Llama a servicios DOS via INT 21h (14 instr).
; tags: dos_caller, int_21
; callers: sub_13AD, sub_1B72, sub_2204, sub_3659
;----------------------------------------------------------------------
L_005A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        lds     dx, ptr [bp + 4]                ; C5 56 04
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        mov     ah, 0x4f                        ; B4 4F
        int     0x21                            ; CD 21
        jb      L_006D                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_006D:
        pop     ds                              ; 1F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0074 -- offset 0x0074 -- 11 instr
; Llama a servicios DOS via INT 21h (11 instr).
; tags: dos_caller, int_21
; callers: sub_13AD
;----------------------------------------------------------------------
L_0074:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x5700                      ; B8 00 57
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        int     0x21                            ; CD 21
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, 0x5701                      ; B8 01 57
        int     0x21                            ; CD 21
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_008D -- offset 0x008D -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: calls_kernel, small
; callers: sub_0603
; calls (intra): sub_00D9
; calls (inter): KERNEL.GLOBALCOMPACT, KERNEL.LOCKSEGMENT, KERNEL.UNLOCKSEGMENT
;----------------------------------------------------------------------
L_008D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A FF FF 00 00 [FIXUP]
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL.GLOBALCOMPACT        ; 9A FF FF 00 00 [FIXUP]
        les     di, ptr [bp + 4]                ; C4 7E 04
        call    L_00D9                          ; E8 30 00
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A FF FF 00 00 [FIXUP]
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00B9 -- offset 0x00B9 -- 16 instr
; Llama a servicios DOS via INT 21h (16 instr).
; tags: dos_caller, int_21
; callers: sub_0603
; calls (intra): sub_00D9
;----------------------------------------------------------------------
L_00B9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        xor     dx, dx                          ; 33 D2
        mov     ah, 0x36                        ; B4 36
        int     0x21                            ; CD 21
        mul     cx                              ; F7 E1
        mul     bx                              ; F7 E3
        jo      L_00CC                          ; 70 03
        mov     dx, 0                           ; BA 00 00
L_00CC:
        les     di, ptr [bp + 4]                ; C4 7E 04
        call    L_00D9                          ; E8 07 00
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00D9 -- offset 0x00D9 -- 15 instr
; Iterador con instrucciones de string (movsb/scasb/...) (15 instr).
; tags: iterator, loop, string_op
; callers: sub_008D, sub_00B9
;----------------------------------------------------------------------
L_00D9:
        mov     cx, 0xa                         ; B9 0A 00
L_00DC:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_00DC                          ; E2 FA
        push    es                              ; 06
        push    dx                              ; 52
        push    ax                              ; 50
        push    es                              ; 06
        push    di                              ; 57
        call    far _entry_16                   ; 9A FF FF 00 00 [FIXUP]
        pop     es                              ; 07
        add     di, ax                          ; 03 F8
        mov     ax, 0x4b                        ; B8 4B 00
        stosw   word ptr es:[di], ax            ; AB
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00F4 -- offset 0x00F4 -- 11 instr
; Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_1841
;----------------------------------------------------------------------
L_00F4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        cmp     al, 0x7a                        ; 3C 7A
        ja      L_0104                          ; 77 06
        cmp     al, 0x61                        ; 3C 61
        jb      L_0104                          ; 72 02
        sub     al, 0x20                        ; 2C 20
L_0104:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_010A -- offset 0x010A -- 24 instr
; Llama a servicios DOS via INT 21h (24 instr).
; tags: dos_caller, int_21
; callers: sub_23F7
;----------------------------------------------------------------------
L_010A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KEYBOARD.5                  ; 9A 26 00 00 00 [FIXUP]
        push    ds                              ; 1E
        lds     dx, ptr [bp + 4]                ; C5 56 04
        mov     ah, 0x39                        ; B4 39
        int     0x21                            ; CD 21
        jb      L_012A                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_012A:
        pop     ds                              ; 1F
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KEYBOARD.6                  ; 9A 4F 00 00 00 [FIXUP]
        pop     ax                              ; 58
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0144 -- offset 0x0144 -- 16 instr
; Llama a servicios DOS via INT 21h (16 instr).
; tags: dos_caller, int_21
; callers: sub_2893
;----------------------------------------------------------------------
L_0144:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        lds     dx, ptr [bp + 4]                ; C5 56 04
        mov     ah, 0x16                        ; B4 16
        int     0x21                            ; CD 21
        sub     ah, ah                          ; 2A E4
        or      ax, ax                          ; 0B C0
        jne     L_015B                          ; 75 06
        mov     ah, 0x10                        ; B4 10
        int     0x21                            ; CD 21
        xor     ax, ax                          ; 33 C0
L_015B:
        pop     ds                              ; 1F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0162 -- offset 0x0162 -- 11 instr
; Llama a servicios DOS via INT 21h (11 instr).
; tags: dos_caller, int_21
; callers: sub_279F
;----------------------------------------------------------------------
L_0162:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        lds     dx, ptr [bp + 4]                ; C5 56 04
        mov     ah, 0x17                        ; B4 17
        int     0x21                            ; CD 21
        sub     ah, ah                          ; 2A E4
        pop     ds                              ; 1F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0176 -- offset 0x0176 -- 24 instr
; Llama a servicios DOS via INT 21h (24 instr).
; tags: dos_caller, int_21
; callers: sub_2927
;----------------------------------------------------------------------
L_0176:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KEYBOARD.5                  ; 9A 1A 01 00 00 [FIXUP]
        push    ds                              ; 1E
        lds     dx, ptr [bp + 4]                ; C5 56 04
        mov     ah, 0x3b                        ; B4 3B
        int     0x21                            ; CD 21
        jb      L_0196                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_0196:
        pop     ds                              ; 1F
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KEYBOARD.6                  ; 9A 39 01 00 00 [FIXUP]
        pop     ax                              ; 58
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01B0 -- offset 0x01B0 -- 39 instr
; Llama a servicios DOS via INT 21h (39 instr).
; tags: dos_caller, int_21
; callers: sub_1B72
;----------------------------------------------------------------------
L_01B0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KEYBOARD.5                  ; 9A 86 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KEYBOARD.5                  ; 9A C2 01 00 00 [FIXUP]
        push    ds                              ; 1E
        lds     dx, ptr [bp + 8]                ; C5 56 08
        les     di, ptr [bp + 4]                ; C4 7E 04
        mov     ah, 0x56                        ; B4 56
        int     0x21                            ; CD 21
        jb      L_01E6                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_01E6:
        pop     ds                              ; 1F
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KEYBOARD.6                  ; 9A A5 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KEYBOARD.6                  ; 9A F5 01 00 00 [FIXUP]
        pop     ax                              ; 58
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0213 -- offset 0x0213 -- 24 instr
; Llama a servicios DOS via INT 21h (24 instr).
; tags: dos_caller, int_21
; callers: sub_13AD, sub_2204
;----------------------------------------------------------------------
L_0213:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KEYBOARD.5                  ; 9A D3 01 00 00 [FIXUP]
        push    ds                              ; 1E
        lds     dx, ptr [bp + 4]                ; C5 56 04
        mov     ah, 0x41                        ; B4 41
        int     0x21                            ; CD 21
        jb      L_0233                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_0233:
        pop     ds                              ; 1F
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KEYBOARD.6                  ; 9A 06 02 00 00 [FIXUP]
        pop     ax                              ; 58
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_024D -- offset 0x024D -- 272 instr
; Llama a servicios DOS via INT 21h (272 instr).
; tags: calls_gdi, calls_kernel, dos_caller, far, int_21
; callers: sub_2019
; calls (intra): sub_0504, sub_0603
; calls (inter): GDI.TEXTOUT, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_024D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KEYBOARD.5                  ; 9A 23 02 00 00 [FIXUP]
        push    ds                              ; 1E
        lds     dx, ptr [bp + 4]                ; C5 56 04
        mov     ah, 0x3a                        ; B4 3A
        int     0x21                            ; CD 21
        jb      L_026D                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_026D:
        pop     ds                              ; 1F
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KEYBOARD.6                  ; 9A 42 02 00 00 [FIXUP]
        pop     ax                              ; 58
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x3a                        ; 83 EC 3A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        sub     ax, word ptr [0xc4]             ; 2B 06 C4 00
        imul    word ptr [0x382]                ; F7 2E 82 03
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        add     ax, word ptr [0x350]            ; 03 06 50 03
        add     ax, 8                           ; 05 08 00
        mov     word ptr [0x376], ax            ; A3 76 03
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        add     ax, word ptr [0x376]            ; 03 06 76 03
        add     ax, 8                           ; 05 08 00
        mov     word ptr [0x180], ax            ; A3 80 01
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
        add     ax, word ptr [0x180]            ; 03 06 80 01
        add     ax, 8                           ; 05 08 00
        mov     word ptr [0x1d2], ax            ; A3 D2 01
        mov     ax, word ptr [0xcc]             ; A1 CC 00
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0x32]        ; 03 46 CE
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        sub     di, di                          ; 2B FF
        jmp     L_04EF                          ; E9 02 02
L_02ED:
        mov     ax, 0x16                        ; B8 16 00
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        shl     bx, 1                           ; D1 E3
        mov     cx, di                          ; 8B CF
        shl     cx, 1                           ; D1 E1
        add     bx, cx                          ; 03 D9
        add     bx, word ptr [0x532]            ; 03 1E 32 05
        imul    word ptr [bx]                   ; F7 2F
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [bp - 0x36], dx        ; 89 56 CA
        add     ax, 9                           ; 05 09 00
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        jmp     L_0325                          ; EB 07
L_031E:
        cmp     al, 0x2e                        ; 3C 2E
        je      L_0332                          ; 74 10
        inc     word ptr [bp - 0x2c]            ; FF 46 D4
L_0325:
        les     bx, ptr [bp - 0x2c]             ; C4 5E D4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x3a], al        ; 88 46 C6
        or      al, al                          ; 0A C0
        jne     L_031E                          ; 75 EC
L_0332:
        push    si                              ; 56
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    word ptr [bp - 0x28]            ; FF 76 D8
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        sub     ax, word ptr [bp - 0x28]        ; 2B 46 D8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 68 03 00 00 [FIXUP]
        cmp     word ptr [0xc6], 0x44           ; 83 3E C6 00 44
        jne     L_036C                          ; 75 16
        push    si                              ; 56
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.TEXTOUT                 ; 9A 8D 03 00 00 [FIXUP]
L_036C:
        push    si                              ; 56
        mov     ax, word ptr [0x3d6]            ; A1 D6 03
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        call    far KERNEL.LSTRLEN              ; 9A EC 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A AD 03 00 00 [FIXUP]
        cmp     word ptr [0xc6], 0x47           ; 83 3E C6 00 47
        jne     L_03B1                          ; 75 19
        push    si                              ; 56
        mov     ax, word ptr [0x3d6]            ; A1 D6 03
        add     ax, 9                           ; 05 09 00
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.TEXTOUT                 ; 9A 0E 04 00 00 [FIXUP]
L_03B1:
        les     bx, ptr [bp - 0x38]             ; C4 5E C8
        test    byte ptr es:[bx], 0x10          ; 26 F6 07 10
        je      L_03D1                          ; 74 17
        push    si                              ; 56
        mov     ax, word ptr [0x350]            ; A1 50 03
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 0x34                        ; B8 34 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        jmp     L_04E3                          ; E9 12 01
L_03D1:
        les     bx, ptr [bp - 0x38]             ; C4 5E C8
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        push    word ptr es:[bx + 5]            ; 26 FF 77 05
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_16                   ; 9A 99 05 00 00 [FIXUP]
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 47 04 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        push    si                              ; 56
        mov     ax, word ptr [0x376]            ; A1 76 03
        sub     ax, word ptr [bp - 0x34]        ; 2B 46 CC
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.TEXTOUT                 ; 9A 2E 04 00 00 [FIXUP]
        cmp     word ptr [0xc6], 0x46           ; 83 3E C6 00 46
        jne     L_0432                          ; 75 19
        push    si                              ; 56
        mov     ax, word ptr [0x376]            ; A1 76 03
        sub     ax, word ptr [bp - 0x34]        ; 2B 46 CC
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.TEXTOUT                 ; 9A 69 04 00 00 [FIXUP]
L_0432:
        les     bx, ptr [bp - 0x38]             ; C4 5E C8
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0504                          ; E8 C3 00
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A A2 04 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        push    si                              ; 56
        mov     ax, word ptr [0x180]            ; A1 80 01
        sub     ax, word ptr [bp - 0x34]        ; 2B 46 CC
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.TEXTOUT                 ; 9A 89 04 00 00 [FIXUP]
        cmp     word ptr [0xc6], 0x45           ; 83 3E C6 00 45
        jne     L_048D                          ; 75 19
        push    si                              ; 56
        mov     ax, word ptr [0x180]            ; A1 80 01
        sub     ax, word ptr [bp - 0x34]        ; 2B 46 CC
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.TEXTOUT                 ; 9A C4 04 00 00 [FIXUP]
L_048D:
        les     bx, ptr [bp - 0x38]             ; C4 5E C8
        push    word ptr es:[bx + 1]            ; 26 FF 77 01
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0603                          ; E8 67 01
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        push    si                              ; 56
        mov     ax, word ptr [0x1d2]            ; A1 D2 01
        sub     ax, word ptr [bp - 0x34]        ; 2B 46 CC
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.TEXTOUT                 ; 9A E4 04 00 00 [FIXUP]
        cmp     word ptr [0xc6], 0x45           ; 83 3E C6 00 45
        jne     L_04E8                          ; 75 19
        push    si                              ; 56
        mov     ax, word ptr [0x1d2]            ; A1 D2 01
        sub     ax, word ptr [bp - 0x34]        ; 2B 46 CC
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
L_04E3:
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
L_04E8:
        mov     ax, word ptr [0x382]            ; A1 82 03
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        inc     di                              ; 47
L_04EF:
        cmp     word ptr [bp + 0xa], di         ; 39 7E 0A
        jle     L_04F7                          ; 7E 03
        jmp     L_02ED                          ; E9 F6 FD
L_04F7:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0504 -- offset 0x0504 -- 94 instr
; Dispatcher: tabla de decisiones cmp+jcc (94 instr).
; tags: dispatcher
; callers: sub_024D, sub_2B35, sub_3863
;----------------------------------------------------------------------
L_0504:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        and     ax, 0x1e0                       ; 25 E0 01
        mov     cl, 5                           ; B1 05
        shr     ax, cl                          ; D3 E8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        and     ax, 0x1f                        ; 25 1F 00
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     cl, 9                           ; B1 09
        shr     ax, cl                          ; D3 E8
        add     ax, 0x50                        ; 05 50 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0x542]            ; A1 42 05
        or      ax, ax                          ; 0B C0
        je      L_0540                          ; 74 0C
        cmp     ax, 1                           ; 3D 01 00
        je      L_0554                          ; 74 1B
        cmp     ax, 2                           ; 3D 02 00
        je      L_055F                          ; 74 21
        jmp     L_0570                          ; EB 30
L_0540:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
L_0549:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_054F:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_0570                          ; EB 1C
L_0554:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0549                          ; EB EA
L_055F:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        jmp     L_054F                          ; EB DF
L_0570:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        cmp     word ptr [bp - 6], 0xa          ; 83 7E FA 0A
        jge     L_058C                          ; 7D 0A
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     byte ptr es:[bx], 0x20          ; 26 C6 07 20
L_058C:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_16                   ; 9A C9 05 00 00 [FIXUP]
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     al, byte ptr [0x11b]            ; A0 1B 01
        mov     byte ptr es:[bx], al            ; 26 88 07
        cmp     word ptr [bp - 0xe], 0xa        ; 83 7E F2 0A
        jge     L_05BC                          ; 7D 0A
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
L_05BC:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_16                   ; 9A F9 05 00 00 [FIXUP]
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     al, byte ptr [0x11b]            ; A0 1B 01
        mov     byte ptr es:[bx], al            ; 26 88 07
        cmp     word ptr [bp - 2], 0xa          ; 83 7E FE 0A
        jge     L_05EC                          ; 7D 0A
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
L_05EC:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_16                   ; 9A E8 00 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0603 -- offset 0x0603 -- 194 instr
; Dispatcher: tabla de decisiones cmp+jcc (194 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_024D, sub_2B35, sub_3863
; calls (intra): sub_008D, sub_00B9
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE, KERNEL.LSTRCPY, USER.CHECKDLGBUTTON, USER.SETDLGITEMTEXT, USER.SETSYSMODALWINDOW
;----------------------------------------------------------------------
L_0603:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     cl, 0xb                         ; B1 0B
        shr     ax, cl                          ; D3 E8
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        and     ax, 0x7e0                       ; 25 E0 07
        mov     cl, 5                           ; B1 05
        shr     ax, cl                          ; D3 E8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 2], 0x3c         ; C7 46 FE 3C 00
        cmp     word ptr [0x352], 0             ; 83 3E 52 03 00
        jne     L_0659                          ; 75 21
        mov     word ptr [bp - 2], 0x114        ; C7 46 FE 14 01
        cmp     word ptr [bp - 8], 0xc          ; 83 7E F8 0C
        jl      L_064C                          ; 7C 09
        sub     word ptr [bp - 8], 0xc          ; 83 6E F8 0C
        mov     word ptr [bp - 2], 0x118        ; C7 46 FE 18 01
L_064C:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_066A                          ; 75 18
        mov     word ptr [bp - 8], 0xc          ; C7 46 F8 0C 00
        jmp     L_066A                          ; EB 11
L_0659:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_066A                          ; 75 0B
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_066A                          ; 75 05
        mov     word ptr [bp - 8], 0x18         ; C7 46 F8 18 00
L_066A:
        cmp     word ptr [bp - 8], 0xa          ; 83 7E F8 0A
        jge     L_067A                          ; 7D 0A
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x20          ; 26 C6 07 20
L_067A:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_16                   ; 9A B7 06 00 00 [FIXUP]
        add     word ptr [bp - 6], ax           ; 01 46 FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr [0x11c]            ; A0 1C 01
        mov     byte ptr es:[bx], al            ; 26 88 07
        cmp     word ptr [bp - 0xa], 0xa        ; 83 7E F6 0A
        jge     L_06AA                          ; 7D 0A
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
L_06AA:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_16                   ; 9A E2 03 00 00 [FIXUP]
        add     word ptr [bp - 6], ax           ; 01 46 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x32                        ; 83 EC 32
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_06F5                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_06F2                          ; 75 03
        jmp     L_0920                          ; E9 2E 02
L_06F2:
        jmp     L_07B4                          ; E9 BF 00
L_06F5:
        mov     word ptr [0x5b4], 0             ; C7 06 B4 05 00 00
        cmp     word ptr [0x4a4], 0x7d0         ; 81 3E A4 04 D0 07
        jne     L_073B                          ; 75 38
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_00B9                          ; E8 AE F9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 31 07 00 00 [FIXUP]
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_008D                          ; E8 69 F9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 7A 07 00 00 [FIXUP]
L_0735:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A9B                          ; E9 60 03
L_073B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETSYSMODALWINDOW      ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x4a4], 0x48          ; 83 3E A4 04 48
        je      L_0751                          ; 74 07
        cmp     word ptr [0x4a4], 0x49          ; 83 3E A4 04 49
        jne     L_079B                          ; 75 4A
L_0751:
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        jmp     L_0781                          ; EB 29
L_0758:
        mov     byte ptr [bp - 0x2f], 0         ; C6 46 D1 00
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        shl     bx, 1                           ; D1 E3
        mov     al, byte ptr [bx + 0x528]       ; 8A 87 28 05
        add     al, 0x41                        ; 04 41
        mov     byte ptr [bp - 0x30], al        ; 88 46 D0
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A F4 07 00 00 [FIXUP]
        inc     word ptr [bp - 0x18]            ; FF 46 E8
L_0781:
        mov     ax, word ptr [0x360]            ; A1 60 03
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jl      L_0758                          ; 7C CF
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 92 0A 00 00 [FIXUP]
        jmp     L_0735                          ; EB 9A
L_079B:
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        imul    word ptr [0x68]                 ; F7 2E 68 00
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A A0 09 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_07B9                          ; 75 05
L_07B4:
        sub     ax, ax                          ; 2B C0
        jmp     L_0A9B                          ; E9 E2 02
L_07B9:
        mov     ax, word ptr [0x4a4]            ; A1 A4 04
        cmp     ax, 0x37                        ; 3D 37 00
        je      L_0824                          ; 74 63
        cmp     ax, 0x39                        ; 3D 39 00
        je      L_082B                          ; 74 65
        cmp     ax, 0x3a                        ; 3D 3A 00
        je      L_0832                          ; 74 67
        cmp     ax, 0x42                        ; 3D 42 00
        je      L_07E2                          ; 74 12
        cmp     ax, 0x34                        ; 3D 34 00
        jne     L_0839                          ; 75 64
        cmp     word ptr [0x68], 0              ; 83 3E 68 00 00
        jne     L_0839                          ; 75 5D
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        jmp     L_08E9                          ; E9 07 01
L_07E2:
        mov     word ptr [bp - 0x10], 0x534     ; C7 46 F0 34 05
L_07E7:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x4a4], 0x32          ; 83 3E A4 04 32
        je      L_0811                          ; 74 0A
        cmp     word ptr [0x4a4], 0x35          ; 83 3E A4 04 35
        je      L_0811                          ; 74 03
        jmp     L_08EF                          ; E9 DE 00
L_0811:
        cmp     word ptr [0x68], 0              ; 83 3E 68 00 00
        jne     L_081B                          ; 75 03
        jmp     L_08EF                          ; E9 D4 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_081B -- offset 0x081B -- 73 instr
; Dispatcher: tabla de decisiones cmp+jcc (73 instr).
; tags: calls_kernel, dispatcher
; calls (inter): KERNEL.LSTRCAT, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_081B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        jmp     L_08F5                          ; E9 D1 00
L_0824:
        mov     word ptr [bp - 0x10], 0x2a4     ; C7 46 F0 A4 02
        jmp     L_07E7                          ; EB BC
L_082B:
        mov     word ptr [bp - 0x10], 0x3e      ; C7 46 F0 3E 00
        jmp     L_07E7                          ; EB B5
L_0832:
        mov     word ptr [bp - 0x10], 0x1e2     ; C7 46 F0 E2 01
        jmp     L_07E7                          ; EB AE
L_0839:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr [bx], 0                ; C6 07 00
        cmp     word ptr [0xc8], 0              ; 83 3E C8 00 00
        jne     L_0849                          ; 75 03
        jmp     L_08E6                          ; E9 9D 00
L_0849:
        mov     dx, word ptr [0xc8]             ; 8B 16 C8 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     ax, word ptr [0x66]             ; A1 66 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        jmp     L_08C4                          ; EB 62
L_0862:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        mov     bx, word ptr [bx]               ; 8B 1F
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [0x532]            ; 8B 36 32 05
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bx + si]              ; F7 28
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        add     ax, 9                           ; 05 09 00
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        cmp     word ptr [0x4a4], 0x4a          ; 83 3E A4 04 4A
        je      L_0893                          ; 74 07
        cmp     word ptr [0x4a4], 0x36          ; 83 3E A4 04 36
        jne     L_08A2                          ; 75 0F
L_0893:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _entry_18                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_08C1                          ; 74 1F
L_08A2:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far KERNEL.LSTRCAT              ; 9A BD 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3f                        ; B8 3F 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
L_08C1:
        inc     word ptr [bp - 0x18]            ; FF 46 E8
L_08C4:
        mov     ax, word ptr [0x68]             ; A1 68 00
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jl      L_0862                          ; 7C 96
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 84 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_08E6                          ; 74 09
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr [bx + si - 1], 0       ; C6 40 FF 00
L_08E6:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_08E9:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_07E7                          ; E9 F8 FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08EF -- offset 0x08EF -- 31 instr
; Dispatcher: tabla de decisiones cmp+jcc (31 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (inter): KERNEL.GETLASTDISKCHANGE, USER.GETDLGITEM, USER.SENDMESSAGE, USER.SETFOCUS
;----------------------------------------------------------------------
L_08EF:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
L_08F5:
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 4B 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x32]            ; FF 76 CE
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     dx, 0x3e8                       ; BA E8 03
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07B4                          ; E9 94 FE
L_0920:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0943                          ; 74 1B
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0930                          ; 75 03
        jmp     L_0A48                          ; E9 18 01
L_0930:
        cmp     ax, 8                           ; 3D 08 00
        jae     L_0938                          ; 73 03
        jmp     L_07B4                          ; E9 7C FE
L_0938:
        cmp     ax, 0xb                         ; 3D 0B 00
        ja      L_0940                          ; 77 03
        jmp     L_0A68                          ; E9 28 01
L_0940:
        jmp     L_07B4                          ; E9 71 FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0943 -- offset 0x0943 -- 238 instr
; Dispatcher: tabla de decisiones cmp+jcc (238 instr).
; tags: calls_kernel, calls_system, calls_user, dispatcher, far
; calls (intra): sub_0C67
; calls (inter): KERNEL.ANSIUPPER, KERNEL.FINDRESOURCE, KERNEL.GETCODEHANDLE, KERNEL.GLOBALUNLOCK, KERNEL.LOADRESOURCE, KERNEL.LOCALALLOC (+11 mas)
;----------------------------------------------------------------------
L_0943:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 88 09 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_095C                          ; 75 03
        jmp     L_0735                          ; E9 D9 FD
L_095C:
        mov     word ptr [0x5b4], 1             ; C7 06 B4 05 01 00
        mov     word ptr [0x344], 0             ; C7 06 44 03 00 00
        cmp     word ptr [0x4a4], 0x7d0         ; 81 3E A4 04 D0 07
        jne     L_0979                          ; 75 09
L_0970:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
L_0976:
        push    ax                              ; 50
        jmp     L_09CF                          ; EB 56
L_0979:
        cmp     word ptr [0x4a4], 0x34          ; 83 3E A4 04 34
        jne     L_09D7                          ; 75 57
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A F4 09 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXTLENGTH    ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_09C9                          ; 74 1E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
L_09C9:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 8]               ; FF 76 F8
L_09CF:
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0735                          ; E9 5E FD
L_09D7:
        cmp     word ptr [0x4a4], 0x32          ; 83 3E A4 04 32
        je      L_09EC                          ; 74 0E
        cmp     word ptr [0x4a4], 0x33          ; 83 3E A4 04 33
        je      L_09EC                          ; 74 07
        cmp     word ptr [0x4a4], 0x35          ; 83 3E A4 04 35
        jne     L_0A01                          ; 75 15
L_09EC:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
L_0A01:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0C67                          ; E8 60 02
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        cmp     word ptr [0x4a4], 0x36          ; 83 3E A4 04 36
        jne     L_0A14                          ; 75 03
        jmp     L_0735                          ; E9 21 FD
L_0A14:
        cmp     word ptr [0x4a4], 0x4a          ; 83 3E A4 04 4A
        jne     L_0A1E                          ; 75 03
        jmp     L_0735                          ; E9 17 FD
L_0A1E:
        or      ax, ax                          ; 0B C0
        jne     L_0A25                          ; 75 03
        jmp     L_0970                          ; E9 4B FF
L_0A25:
        mov     word ptr [bp - 0x1c], 0x400     ; C7 46 E4 00 04
        cmp     word ptr [0x4a4], 0x42          ; 83 3E A4 04 42
        jne     L_0A34                          ; 75 03
        inc     word ptr [bp - 0x1c]            ; FF 46 E4
L_0A34:
        push    word ptr [0x346]                ; FF 36 46 03
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.POSTMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0970                          ; E9 28 FF
L_0A48:
        cmp     word ptr [0x4a4], 0x7d0         ; 81 3E A4 04 D0 07
        je      L_0A9B                          ; 74 4B
        mov     word ptr [0x344], 1             ; C7 06 44 03 01 00
        cmp     word ptr [0x5b4], 0             ; 83 3E B4 05 00
        je      L_0A60                          ; 74 03
        jmp     L_0735                          ; E9 D5 FC
L_0A60:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        jmp     L_0976                          ; E9 0E FF
L_0A68:
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
L_0A6D:
        mov     ax, word ptr [0x360]            ; A1 60 03
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jl      L_0A78                          ; 7C 03
        jmp     L_0735                          ; E9 BD FC
L_0A78:
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        add     si, 8                           ; 83 C6 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    si                              ; 56
        mov     ax, si                          ; 8B C6
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_0A8E                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A90                          ; EB 02
L_0A8E:
        sub     ax, ax                          ; 2B C0
L_0A90:
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        jmp     L_0A6D                          ; EB D2
L_0A9B:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x4a4], ax            ; A3 A4 04
        cmp     ax, 0x48                        ; 3D 48 00
        je      L_0AD3                          ; 74 0E
        cmp     ax, 0x49                        ; 3D 49 00
        je      L_0AD3                          ; 74 09
        cdq                                     ; 99
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        jmp     L_0B50                          ; EB 7D
L_0AD3:
        mov     ax, OFFSET MSDOSD.FORMAT        ; B8 FF FF [FIXUP]
        mov     dx, OFFSET MSDOSD.FORMAT        ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETCODEHANDLE        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x340], ax            ; A3 40 03
        mov     word ptr [bp - 8], 0x50         ; C7 46 F8 50 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     word ptr [bp + 6], 0x49         ; 83 7E 06 49
        jne     L_0AFD                          ; 75 0A
        mov     word ptr [bp - 8], 0x56         ; C7 46 F8 56 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_0AFD:
        mov     word ptr [0x360], 0             ; C7 06 60 03 00 00
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_0B3D                          ; EB 33
L_0B0A:
        mov     si, word ptr [bp - 0xc]         ; 8B 76 F4
        shl     si, 1                           ; D1 E6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [si + 0x274]           ; FF B4 74 02
        call    far SYSTEM.INQUIRESYSTEM        ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0B3A                          ; 75 19
        mov     bx, word ptr [0x360]            ; 8B 1E 60 03
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [si + 0x274]       ; 8B 84 74 02
        mov     word ptr [bx + 0x528], ax       ; 89 87 28 05
        inc     word ptr [0x360]                ; FF 06 60 03
        cmp     word ptr [0x360], 3             ; 83 3E 60 03 03
        jg      L_0B45                          ; 7F 0B
L_0B3A:
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_0B3D:
        mov     ax, word ptr [0x560]            ; A1 60 05
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_0B0A                          ; 7C C5
L_0B45:
        mov     ax, word ptr [0x360]            ; A1 60 03
        dec     ax                              ; 48
        cdq                                     ; 99
        add     word ptr [bp - 8], ax           ; 01 46 F8
        adc     word ptr [bp - 6], dx           ; 11 56 FA
L_0B50:
        push    word ptr [0x1da]                ; FF 36 DA 01
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [0x1da]                ; FF 36 DA 01
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x3d0], ax            ; A3 D0 03
        mov     word ptr [0x3d2], dx            ; 89 16 D2 03
        mov     word ptr [0x42], 1              ; C7 06 42 00 01 00
        or      ax, dx                          ; 0B C2
        je      L_0BAD                          ; 74 21
        push    word ptr [0x1da]                ; FF 36 DA 01
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0x346]                ; FF 36 46 03
        push    word ptr [0x5a4]                ; FF 36 A4 05
        push    word ptr [0x5a2]                ; FF 36 A2 05
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        jne     L_0BC2                          ; 75 15
L_0BAD:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_20                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0BC2:
        mov     word ptr [0x42], 0              ; C7 06 42 00 00 00
        mov     ax, word ptr [0x3d0]            ; A1 D0 03
        or      ax, word ptr [0x3d2]            ; 0B 06 D2 03
        je      L_0BD9                          ; 74 08
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
L_0BD9:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BE8 -- offset 0x0BE8 -- 46 instr
; Funcion mediana (46 instr, 0 calls).
; tags: medium
; callers: sub_13AD, sub_1B72, sub_2019, sub_23F7
;----------------------------------------------------------------------
L_0BE8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        mov     ax, word ptr [0x3d0]            ; A1 D0 03
        mov     dx, word ptr [0x3d2]            ; 8B 16 D2 03
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0C15                          ; EB 13
L_0C02:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        add     word ptr [bp - 8], ax           ; 01 46 F8
        inc     word ptr [bp - 4]               ; FF 46 FC
L_0C15:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0C02                          ; 7C E5
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_0C36                          ; 7C 04
        dec     ax                              ; 48
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_0C36:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0C52                          ; EB 15
L_0C3D:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 4]               ; FF 46 FC
L_0C52:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0C3D                          ; 7C E3
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C67 -- offset 0x0C67 -- 13 instr
; Funcion hoja (no llama a otras, 13 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0943
;----------------------------------------------------------------------
L_0C67:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        push    si                              ; 56
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        cmp     word ptr [0x4a4], 0x49          ; 83 3E A4 04 49
        jne     L_0C87                          ; 75 03
        jmp     L_0D37                          ; E9 B0 00
L_0C87:
        cmp     word ptr [0x4a4], 0x48          ; 83 3E A4 04 48
        jne     L_0C91                          ; 75 03
        jmp     L_0D37                          ; E9 A6 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C91 -- offset 0x0C91 -- 73 instr
; Dispatcher: tabla de decisiones cmp+jcc (73 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (inter): KERNEL.ANSIUPPER, KERNEL.LOCALALLOC, USER.GETDLGITEM, USER.GETDLGITEMTEXT, USER.GETWINDOWTEXTLENGTH
;----------------------------------------------------------------------
L_0C91:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A F6 0C 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXTLENGTH    ; 9A FC 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.LOCALALLOC           ; 9A 0E 0D 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_0CE1                          ; 74 25
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far USER.GETDLGITEMTEXT         ; 9A 29 0D 00 00 [FIXUP]
        cmp     word ptr [0x4a4], 0x36          ; 83 3E A4 04 36
        je      L_0CE1                          ; 74 0A
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 33 0D 00 00 [FIXUP]
L_0CE1:
        mov     ax, word ptr [0x4a4]            ; A1 A4 04
        cmp     ax, 0x32                        ; 3D 32 00
        je      L_0CEE                          ; 74 05
        cmp     ax, 0x35                        ; 3D 35 00
        jne     L_0D37                          ; 75 49
L_0CEE:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A F7 08 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXTLENGTH    ; 9A 8E 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.LOCALALLOC           ; 9A A9 07 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_0D37                          ; 74 1E
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far USER.GETDLGITEMTEXT         ; 9A BB 09 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A C5 09 00 00 [FIXUP]
L_0D37:
        mov     ax, word ptr [0x4a4]            ; A1 A4 04
        sub     ax, 0x32                        ; 2D 32 00
        cmp     ax, 0x18                        ; 3D 18 00
        jbe     L_0D45                          ; 76 03
        jmp     L_1022                          ; E9 DD 02
L_0D45:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xff0]        ; 2E FF A7 F0 0F
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0D58                          ; 75 03
        jmp     L_1022                          ; E9 CA 02
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D58 -- offset 0x0D58 -- 225 instr
; Dispatcher: tabla de decisiones cmp+jcc (225 instr).
; tags: calls_kernel, calls_msdosd, calls_system, calls_user, dispatcher
; calls (intra): sub_1048, sub_10B0, sub_1A07, sub_2019, sub_228B, sub_23F7 (+2 mas)
; calls (inter): KERNEL.GETLASTDISKCHANGE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, MSDOSD.FORMAT, MSDOSD.SYS, SYSTEM.INQUIRESYSTEM (+2 mas)
;----------------------------------------------------------------------
L_0D58:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2927                          ; E8 BF 1B
        or      ax, ax                          ; 0B C0
        jne     L_0D6F                          ; 75 03
        jmp     L_1022                          ; E9 B3 02
L_0D6F:
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        jmp     L_1022                          ; E9 AB 02
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A D0 09 00 00 [FIXUP]
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0D8D                          ; 75 03
        jmp     L_1022                          ; E9 95 02
L_0D8D:
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        cmp     word ptr [0x4a4], 0x36          ; 83 3E A4 04 36
        jne     L_0D9D                          ; 75 05
        mov     ax, word ptr [0x346]            ; A1 46 03
        jmp     L_0DA0                          ; EB 03
L_0D9D:
        mov     ax, 2                           ; B8 02 00
L_0DA0:
        push    ax                              ; 50
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1022                          ; E9 79 02
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0DB2                          ; 75 03
        jmp     L_1022                          ; E9 70 02
L_0DB2:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0DBD                          ; 75 03
        jmp     L_1022                          ; E9 65 02
L_0DBD:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_0DC6                          ; 75 03
        jmp     L_1022                          ; E9 5C 02
L_0DC6:
        push    bx                              ; 53
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_10B0                          ; E8 E0 02
L_0DD0:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_1022                          ; E9 4C 02
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0DDF                          ; 75 03
        jmp     L_1022                          ; E9 43 02
L_0DDF:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0DEA                          ; 75 03
        jmp     L_1022                          ; E9 38 02
L_0DEA:
        push    bx                              ; 53
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_2019                          ; E8 28 12
        jmp     L_0DD0                          ; EB DD
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0DFC                          ; 75 03
        jmp     L_1022                          ; E9 26 02
L_0DFC:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0E07                          ; 75 03
        jmp     L_1022                          ; E9 1B 02
L_0E07:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_0E10                          ; 75 03
        jmp     L_1022                          ; E9 12 02
L_0E10:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0E1B                          ; 75 03
        jmp     L_1022                          ; E9 07 02
L_0E1B:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    bx                              ; 53
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1A07                          ; E8 E2 0B
        jmp     L_0DD0                          ; EB A9
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0E30                          ; 75 03
        jmp     L_1022                          ; E9 F2 01
L_0E30:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_228B                          ; E8 50 14
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [0x1dc], 0             ; C7 06 DC 01 00 00
        jmp     L_1022                          ; E9 DB 01
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0E50                          ; 75 03
        jmp     L_1022                          ; E9 D2 01
L_0E50:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0E5B                          ; 75 03
        jmp     L_1022                          ; E9 C7 01
L_0E5B:
        push    bx                              ; 53
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_23F7                          ; E8 95 15
        jmp     L_0DD0                          ; E9 6B FF
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 19 09 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0E74                          ; 74 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1048                          ; E8 D4 01
L_0E74:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0E7D                          ; 75 03
        jmp     L_1022                          ; E9 A5 01
L_0E7D:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_272A                          ; E8 A4 18
        jmp     L_0DD0                          ; E9 47 FF
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
L_0E8E:
        mov     ax, word ptr [0x360]            ; A1 60 03
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jge     L_0EBB                          ; 7D 25
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0EF9                          ; 74 50
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x528]       ; 8B 87 28 05
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_0EBB:
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
L_0EC3:
        mov     ax, word ptr [0x560]            ; A1 60 05
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jge     L_0EE2                          ; 7D 17
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x274]           ; FF B7 74 02
        call    far SYSTEM.INQUIRESYSTEM        ; 9A 18 0B 00 00 [FIXUP]
        cmp     ax, 3                           ; 3D 03 00
        jne     L_0EFE                          ; 75 1C
L_0EE2:
        mov     ax, word ptr [0x560]            ; A1 60 05
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jne     L_0F2D                          ; 75 43
        mov     si, word ptr [0x528]            ; 8B 36 28 05
        inc     si                              ; 46
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        je      L_0F03                          ; 74 0F
        mov     word ptr [bp - 0x14], si        ; 89 76 EC
        jmp     L_0F0A                          ; EB 11
L_0EF9:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        jmp     L_0E8E                          ; EB 90
L_0EFE:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        jmp     L_0EC3                          ; EB C0
L_0F03:
        mov     ax, word ptr [0x52a]            ; A1 2A 05
        inc     ax                              ; 40
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
L_0F0A:
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        add     al, 0x40                        ; 04 40
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        mov     byte ptr [bp - 0x11], 0x3a      ; C6 46 EF 3A
        mov     byte ptr [bp - 0x10], 0         ; C6 46 F0 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 67 0F 00 00 [FIXUP]
        jmp     L_0F3A                          ; EB 0D
L_0F2D:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x274]       ; 8B 87 74 02
        inc     ax                              ; 40
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
L_0F3A:
        call    far _entry_22                   ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 66 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0F4E                          ; 74 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1048                          ; E8 FA 00
L_0F4E:
        push    word ptr [0x340]                ; FF 36 40 03
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        jne     L_0F6E                          ; 75 13
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_20                   ; 9A CE 0F 00 00 [FIXUP]
        jmp     L_1022                          ; E9 B4 00
L_0F6E:
        push    word ptr [0x340]                ; FF 36 40 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A D5 0B 00 00 [FIXUP]
        cmp     word ptr [0x4a4], 0x49          ; 83 3E A4 04 49
        jne     L_0F8B                          ; 75 0D
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far MSDOSD.SYS                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0F9F                          ; EB 14
L_0F8B:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far MSDOSD.FORMAT               ; 9A FF FF 00 00 [FIXUP]
L_0F9F:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        call    far _entry_21                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0FD2                          ; 74 24
        cmp     ax, 1                           ; 3D 01 00
        je      L_0FC2                          ; 74 0F
        push    word ptr [bp + 4]               ; FF 76 04
        cmp     word ptr [0x4a4], 0x49          ; 83 3E A4 04 49
        jne     L_0FE4                          ; 75 27
        mov     ax, 0x22                        ; B8 22 00
        jmp     L_0FC8                          ; EB 06
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FC2 -- offset 0x0FC2 -- 56 instr
; Funcion mediana (56 instr, 1 calls).
; tags: calls_kernel, medium
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0FC2:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x18                        ; B8 18 00
L_0FC8:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_20                   ; 9A B9 0B 00 00 [FIXUP]
L_0FD2:
        mov     al, byte ptr [0x1e0]            ; A0 E0 01
        cwde                                    ; 98
        sub     ax, 0x41                        ; 2D 41 00
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        dec     cx                              ; 49
        cmp     cx, ax                          ; 3B C8
        jne     L_0FE9                          ; 75 08
        jmp     L_0D6F                          ; E9 8B FD
L_0FE4:
        mov     ax, 0x23                        ; B8 23 00
        jmp     L_0FC8                          ; EB DF
L_0FE9:
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_1022                          ; EB 32
        test    ax, 0xd60d                      ; A9 0D D6
        or      ax, 0x1022                      ; 0D 22 10
        or      ax, 0xd77                       ; F3 0D 77 0D
        dec     bp                              ; 4D
        or      ax, 0x1022                      ; 0D 22 10
        inc     di                              ; 47
        push    cs                              ; 0E
        push    cs                              ; 65 0E
        and     dl, byte ptr [bx + si]          ; 22 10
        and     dl, byte ptr [bx + si]          ; 22 10
        and     dl, byte ptr [bx + si]          ; 22 10
        and     dl, byte ptr [bx + si]          ; 22 10
        and     dl, byte ptr [bx + si]          ; 22 10
        and     dl, byte ptr [bx + si]          ; 22 10
        and     dl, byte ptr [bx + si]          ; 22 10
        daa                                     ; 27
        push    cs                              ; 0E
        and     dl, byte ptr [bx + si]          ; 22 10
        and     dl, byte ptr [bx + si]          ; 22 10
        and     dl, byte ptr [bx + si]          ; 22 10
        and     dl, byte ptr [bx + si]          ; 22 10
        and     dl, byte ptr [bx + si]          ; 22 10
        mov     word ptr [0xe89], cx            ; 89 0E 89 0E
        ja      L_102F                          ; 77 0D
L_1022:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_1030                          ; 74 08
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.LOCALFREE            ; 9A 3A 10 00 00 [FIXUP]
L_1030:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_103E                          ; 74 08
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far KERNEL.LOCALFREE            ; 9A FC 07 00 00 [FIXUP]
L_103E:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1048 -- offset 0x1048 -- 15 instr
; Wrapper que delega en USER.MESSAGEBOX.
; tags: calls_user, wrapper
; callers: sub_0D58, sub_10B0, sub_13AD, sub_1A07, sub_1B72, sub_2019 (+3 mas)
; calls (inter): USER.MESSAGEBOX
;----------------------------------------------------------------------
L_1048:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x190                       ; B8 90 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x548                       ; B8 48 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1010                      ; B8 10 10
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1067 -- offset 0x1067 -- 32 instr
; Dispatcher: tabla de decisiones cmp+jcc (32 instr).
; tags: dispatcher
; callers: sub_10B0, sub_1A07, sub_2019, sub_2204, sub_23F7, sub_2E8F
;----------------------------------------------------------------------
L_1067:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        jmp     L_107E                          ; EB 0B
L_1073:
        cmp     byte ptr [si], 0x20             ; 80 3C 20
        je      L_1083                          ; 74 0B
        cmp     byte ptr [si], 0x2c             ; 80 3C 2C
        je      L_1083                          ; 74 06
        inc     si                              ; 46
L_107E:
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_1073                          ; 75 F0
L_1083:
        mov     word ptr [bp - 2], si           ; 89 76 FE
        cmp     byte ptr [si], 0                ; 80 3C 00
        je      L_108E                          ; 74 03
        inc     word ptr [bp - 2]               ; FF 46 FE
L_108E:
        mov     byte ptr [si], 0                ; C6 04 00
L_1091:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        cmp     al, 0x20                        ; 3C 20
        je      L_10A1                          ; 74 04
        cmp     al, 0x2c                        ; 3C 2C
        jne     L_10A6                          ; 75 05
L_10A1:
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_1091                          ; EB EB
L_10A6:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_10B0 -- offset 0x10B0 -- 281 instr
; Dispatcher: tabla de decisiones cmp+jcc (281 instr).
; tags: calls_kernel, dispatcher
; callers: sub_0D58
; calls (intra): sub_0016, sub_1048, sub_1067, sub_16A7, sub_1841, sub_1CAF
; calls (inter): KERNEL.GETLASTDISKCHANGE, KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LOCALALLOC (+4 mas)
;----------------------------------------------------------------------
L_10B0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14a                       ; 81 EC 4A 01
        push    si                              ; 56
        mov     word ptr [bp - 0x52], 0         ; C7 46 AE 00 00
        mov     word ptr [bp - 0x13a], 0        ; C7 86 C6 FE 00 00
        mov     word ptr [bp - 0x30], 0x7d00    ; C7 46 D0 00 7D
        mov     word ptr [bp - 0x148], 0        ; C7 86 B8 FE 00 00
        mov     word ptr [bp - 0x42], 0         ; C7 46 BE 00 00
        mov     byte ptr [bp - 0x50], 0         ; C6 46 B0 00
        mov     word ptr [bp - 0x32], 1         ; C7 46 CE 01 00
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x51                        ; B8 51 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FA 10 00 00 [FIXUP]
        mov     word ptr [bp - 0x148], ax       ; 89 86 B8 FE
        or      ax, ax                          ; 0B C0
        je      L_1134                          ; 74 43
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x51                        ; B8 51 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A B1 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        or      ax, ax                          ; 0B C0
        je      L_1134                          ; 74 2F
L_1105:
        cmp     word ptr [bp - 0x13a], 0        ; 83 BE C6 FE 00
        jne     L_1147                          ; 75 3B
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x13a], ax       ; 89 86 C6 FE
        or      ax, ax                          ; 0B C0
        jne     L_1105                          ; 75 E2
        mov     cx, 2                           ; B9 02 00
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        cmp     ax, 0x64                        ; 3D 64 00
        jge     L_1105                          ; 7D D1
L_1134:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x18                        ; B8 18 00
L_113A:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
L_113E:
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 8E 12 00 00 [FIXUP]
        jmp     L_12AC                          ; E9 65 01
L_1147:
        push    word ptr [bp - 0x13a]           ; FF B6 C6 FE
        call    far KERNEL.GLOBALLOCK           ; 9A 53 0F 00 00 [FIXUP]
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        mov     word ptr [bp - 0x44], dx        ; 89 56 BC
L_1156:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x14a], al       ; 88 86 B6 FE
        cmp     al, 0x20                        ; 3C 20
        je      L_1167                          ; 74 04
        cmp     al, 0x2c                        ; 3C 2C
        jne     L_116C                          ; 75 05
L_1167:
        inc     word ptr [bp + 6]               ; FF 46 06
        jmp     L_1156                          ; EB EA
L_116C:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1067                          ; E8 F5 FE
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1184                          ; 74 08
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x19                        ; B8 19 00
        jmp     L_113A                          ; EB B6
L_1184:
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 89 13 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1198                          ; 74 0B
        mov     word ptr [bp - 0x32], 0         ; C7 46 CE 00 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1048                          ; E8 B0 FE
L_1198:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x14a], al       ; 88 86 B6 FE
        or      al, al                          ; 0A C0
        je      L_11D7                          ; 74 32
        cmp     byte ptr [bx + 1], 0x3a         ; 80 7F 01 3A
        jne     L_11D7                          ; 75 2C
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_16A7                          ; E8 F7 04
        or      ax, ax                          ; 0B C0
        jne     L_11D7                          ; 75 23
        mov     bx, word ptr [bp - 0x42]        ; 8B 5E BE
        mov     al, byte ptr [bp - 0x14a]       ; 8A 86 B6 FE
        mov     byte ptr [bx], al               ; 88 07
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     al, byte ptr [si + 1]           ; 8A 44 01
        mov     byte ptr [bx + 1], al           ; 88 47 01
        mov     byte ptr [bx + 2], 0            ; C6 47 02 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
L_11D3:
        push    ds                              ; 1E
        jmp     L_113E                          ; E9 67 FF
L_11D7:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x138]                ; 8D 86 C8 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_1CAF                          ; E8 C5 0A
        mov     word ptr [bp - 0x144], ax       ; 89 86 BC FE
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 17 13 00 00 [FIXUP]
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x40]            ; FF 76 C0
        call    L_1841                          ; E8 3B 06
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        jmp     L_1218                          ; EB 0D
L_120B:
        cmp     byte ptr [bp - 0x14a], 0x2c     ; 80 BE B6 FE 2C
        jne     L_1225                          ; 75 13
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        inc     word ptr [bp + 8]               ; FF 46 08
L_1218:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x14a], al       ; 88 86 B6 FE
        cmp     al, 0x20                        ; 3C 20
        je      L_120B                          ; 74 E6
L_1225:
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1067                          ; E8 3C FE
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_129F                          ; 74 6A
        cmp     word ptr [bp - 0x144], 0        ; 83 BE BC FE 00
        jne     L_129F                          ; 75 63
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x1a                        ; B8 1A 00
        jmp     L_113A                          ; E9 F5 FE
L_1245:
        cmp     byte ptr [bp - 0x14a], 0        ; 80 BE B6 FE 00
        jne     L_124F                          ; 75 03
        jmp     L_12FB                          ; E9 AC 00
L_124F:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx + 1], 0x3a         ; 80 7F 01 3A
        je      L_125B                          ; 74 03
        jmp     L_12FB                          ; E9 A0 00
L_125B:
        mov     al, byte ptr [bp - 0x14a]       ; 8A 86 B6 FE
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_16A7                          ; E8 43 04
        or      ax, ax                          ; 0B C0
        je      L_126B                          ; 74 03
        jmp     L_12FB                          ; E9 90 00
L_126B:
        mov     bx, word ptr [bp - 0x148]       ; 8B 9E B8 FE
        mov     al, byte ptr [bp - 0x14a]       ; 8A 86 B6 FE
        mov     byte ptr [bx], al               ; 88 07
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     al, byte ptr [si + 1]           ; 8A 44 01
        mov     byte ptr [bx + 1], al           ; 88 47 01
        mov     byte ptr [bx + 2], 0            ; C6 47 02 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_20                   ; 9A BB 13 00 00 [FIXUP]
L_1292:
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        mov     word ptr [bp + 8], ax           ; 89 46 08
        push    ax                              ; 50
        call    L_1067                          ; E8 CB FD
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
L_129F:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x14a], al       ; 88 86 B6 FE
        or      al, al                          ; 0A C0
        jne     L_1245                          ; 75 99
L_12AC:
        cmp     word ptr [bp - 0x148], 0        ; 83 BE B8 FE 00
        je      L_12BC                          ; 74 09
        push    word ptr [bp - 0x148]           ; FF B6 B8 FE
        call    far KERNEL.LOCALFREE            ; 9A C6 12 00 00 [FIXUP]
L_12BC:
        cmp     word ptr [bp - 0x42], 0         ; 83 7E BE 00
        je      L_12CA                          ; 74 08
        push    word ptr [bp - 0x42]            ; FF 76 BE
        call    far KERNEL.LOCALFREE            ; 9A 2C 10 00 00 [FIXUP]
L_12CA:
        cmp     word ptr [bp - 0x13a], 0        ; 83 BE C6 FE 00
        je      L_12E3                          ; 74 12
        push    word ptr [bp - 0x13a]           ; FF B6 C6 FE
        call    far KERNEL.GLOBALUNLOCK         ; 9A 73 0F 00 00 [FIXUP]
        push    word ptr [bp - 0x13a]           ; FF B6 C6 FE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_12E3:
        cmp     word ptr [bp - 0x52], 0         ; 83 7E AE 00
        jne     L_12EC                          ; 75 03
        jmp     L_169E                          ; E9 B2 03
L_12EC:
        cmp     word ptr [bp - 0x38], 0         ; 83 7E C8 00
        jne     L_12F5                          ; 75 03
        jmp     L_169E                          ; E9 A9 03
L_12F5:
        mov     ax, 1                           ; B8 01 00
        jmp     L_16A0                          ; E9 A5 03
L_12FB:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x148]       ; 8B 86 B8 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1CAF                          ; E8 A2 09
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        mov     ax, word ptr [bp - 0x148]       ; 8B 86 B8 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 25 13 00 00 [FIXUP]
        mov     word ptr [bp - 0x146], ax       ; 89 86 BA FE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 52 13 00 00 [FIXUP]
        cmp     ax, 0x50                        ; 3D 50 00
        jl      L_1335                          ; 7C 07
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     byte ptr [bx + 0x4f], 0         ; C6 47 4F 00
L_1335:
        lea     ax, [bp - 0xa2]                 ; 8D 86 5E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A CA 06 00 00 [FIXUP]
        cmp     word ptr [bp - 0x4a], 0         ; 83 7E B6 00
        je      L_136B                          ; 74 20
        lea     ax, [bp - 0xa2]                 ; 8D 86 5E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 9A 13 00 00 [FIXUP]
        cmp     ax, 0x4c                        ; 3D 4C 00
        jge     L_136B                          ; 7D 10
        lea     ax, [bp - 0xa2]                 ; 8D 86 5E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A AE 08 00 00 [FIXUP]
L_136B:
        lea     ax, [bp - 0xa2]                 ; 8D 86 5E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0016                          ; E8 99 EC
        mov     word ptr [bp - 0x13c], ax       ; 89 86 C4 FE
        or      ax, ax                          ; 0B C0
        jne     L_1388                          ; 75 03
        jmp     L_1600                          ; E9 78 02
L_1388:
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A C0 13 00 00 [FIXUP]
        cmp     word ptr [bp - 0x4a], 0         ; 83 7E B6 00
        je      L_13AD                          ; 74 1A
        lea     ax, [bp - 0xa2]                 ; 8D 86 5E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A D2 08 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     byte ptr [bp + si - 0xa6], 0    ; C6 82 5A FF 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x21                        ; B8 21 00
        jmp     L_13B3                          ; EB 06
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_13AD -- offset 0x13AD -- 300 instr
; Dispatcher: tabla de decisiones cmp+jcc (300 instr).
; tags: calls_kernel, calls_system, calls_user, dispatcher
; calls (intra): sub_005A, sub_0074, sub_0213, sub_0BE8, sub_1048, sub_16F6 (+3 mas)
; calls (inter): KERNEL.GETLASTDISKCHANGE, KERNEL.LSTRCMP, KERNEL.LSTRCPY, KERNEL.LSTRLEN, SYSTEM.INQUIRESYSTEM, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_13AD:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
L_13B3:
        push    ax                              ; 50
        lea     ax, [bp - 0xa2]                 ; 8D 86 5E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 27 0F 00 00 [FIXUP]
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 29 14 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_13CB                          ; 75 03
        jmp     L_1292                          ; E9 C7 FE
L_13CB:
        mov     word ptr [bp - 0x32], 0         ; C7 46 CE 00 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1048                          ; E8 72 FC
        jmp     L_1292                          ; E9 B9 FE
L_13D9:
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        add     ax, 0xd                         ; 05 0D 00
        cmp     ax, 0x50                        ; 3D 50 00
        jge     L_13FC                          ; 7D 18
        lea     ax, [bp - 0x138]                ; 8D 86 C8 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        mov     dx, ds                          ; 8C DA
        add     ax, word ptr [bp - 0x40]        ; 03 46 C0
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1909                          ; E8 0D 05
L_13FC:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0xf4]                 ; 8D 86 0C FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3c                        ; B8 3C 00
        push    ax                              ; 50
        call    L_0BE8                          ; E8 DC F7
        lea     ax, [bp - 0xf4]                 ; 8D 86 0C FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x126]                ; 8D 86 DA FE
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_16F6                          ; E8 D4 02
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        je      L_1453                          ; 74 2B
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 40 14 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0x126]                ; 8D 86 DA FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 18 07 00 00 [FIXUP]
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 40 0F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1453                          ; 74 0B
        mov     word ptr [bp - 0x32], 0         ; C7 46 CE 00 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1048                          ; E8 F5 FB
L_1453:
        mov     ax, word ptr [bp - 0x148]       ; 8B 86 B8 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xa2]                 ; 8D 86 5E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_17F4                          ; E8 92 03
        or      ax, ax                          ; 0B C0
        je      L_147C                          ; 74 16
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0xa2]        ; 8A 86 5E FF
        cwde                                    ; 98
        sub     ax, 0x41                        ; 2D 41 00
        push    ax                              ; 50
        call    far SYSTEM.INQUIRESYSTEM        ; 9A D9 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1489                          ; 75 0D
L_147C:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_11D3                          ; E9 4A FD
L_1489:
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xf4]                 ; 8D 86 0C FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_17F4                          ; E8 5D 03
        or      ax, ax                          ; 0B C0
        je      L_14B1                          ; 74 16
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0xf4]        ; 8A 86 0C FF
        cwde                                    ; 98
        sub     ax, 0x41                        ; 2D 41 00
        push    ax                              ; 50
        call    far SYSTEM.INQUIRESYSTEM        ; 9A 74 14 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_14BE                          ; 75 0D
L_14B1:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_11D3                          ; E9 15 FD
L_14BE:
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        je      L_14D1                          ; 74 0D
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1794                          ; E8 CA 02
        or      ax, ax                          ; 0B C0
        je      L_14D1                          ; 74 03
        jmp     L_12AC                          ; E9 DB FD
L_14D1:
        mov     ax, word ptr [bp - 0x148]       ; 8B 86 B8 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A E6 14 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A 5D 02 00 00 [FIXUP]
        lea     ax, [bp - 0xa2]                 ; 8D 86 5E FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xf4]                 ; 8D 86 0C FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1508                          ; 75 09
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xd                         ; B8 0D 00
        jmp     L_113A                          ; E9 32 FC
L_1508:
        mov     ax, word ptr [bp - 0x148]       ; 8B 86 B8 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LOPEN               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        or      ax, ax                          ; 0B C0
        jge     L_1532                          ; 7D 15
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x148]       ; 8B 86 B8 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 40 11 00 00 [FIXUP]
        jmp     L_15DB                          ; E9 A9 00
L_1532:
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LCREAT              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        or      ax, ax                          ; 0B C0
        jge     L_155B                          ; 7D 15
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        call    far KERNEL._LCLOSE              ; 9A CF 15 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        jmp     L_11D3                          ; E9 78 FC
L_155B:
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        push    word ptr [bp - 0x44]            ; FF 76 BC
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    word ptr [bp - 0x30]            ; FF 76 D0
        call    far KERNEL._LREAD               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa4], ax        ; 89 86 5C FF
        or      ax, ax                          ; 0B C0
        jbe     L_15B3                          ; 76 3F
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_15B3                          ; 74 3A
        push    word ptr [bp - 0x48]            ; FF 76 B8
        push    word ptr [bp - 0x44]            ; FF 76 BC
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    ax                              ; 50
        call    far KERNEL._LWRITE              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x128], ax       ; 89 86 D8 FE
        mov     ax, word ptr [bp - 0xa4]        ; 8B 86 5C FF
        cmp     word ptr [bp - 0x128], ax       ; 39 86 D8 FE
        je      L_155B                          ; 74 C5
        mov     bx, word ptr [bp - 0x128]       ; 8B 9E D8 FE
        les     si, ptr [bp - 0x46]             ; C4 76 BA
        cmp     byte ptr es:[bx + si], 0x1a     ; 26 80 38 1A
        je      L_15A6                          ; 74 03
        jmp     L_1678                          ; E9 D2 00
L_15A6:
        push    word ptr [bp - 0x48]            ; FF 76 B8
        call    0                               ; E8 54 EA
        or      ax, ax                          ; 0B C0
        jne     L_15B3                          ; 75 03
        jmp     L_1678                          ; E9 C5 00
L_15B3:
        push    word ptr [bp - 0x48]            ; FF 76 B8
        call    0                               ; E8 47 EA
        or      ax, ax                          ; 0B C0
        jne     L_15CB                          ; 75 0E
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        push    word ptr [bp - 0x48]            ; FF 76 B8
        call    L_0074                          ; E8 AE EA
        mov     word ptr [bp - 0x52], 1         ; C7 46 AE 01 00
L_15CB:
        push    word ptr [bp - 0x48]            ; FF 76 B8
        call    far KERNEL._LCLOSE              ; 9A D7 15 00 00 [FIXUP]
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        call    far KERNEL._LCLOSE              ; 9A 7C 16 00 00 [FIXUP]
L_15DB:
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A F0 15 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x148]       ; 8B 86 B8 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A 15 16 00 00 [FIXUP]
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_005A                          ; E8 5E EA
        mov     word ptr [bp - 0x13c], ax       ; 89 86 C4 FE
L_1600:
        cmp     word ptr [bp - 0x13c], 0        ; 83 BE C4 FE 00
        je      L_160A                          ; 74 03
        jmp     L_1292                          ; E9 88 FC
L_160A:
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A 30 18 00 00 [FIXUP]
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 52 16 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x146]       ; 03 86 BA FE
        cmp     ax, 0x50                        ; 3D 50 00
        jge     L_1642                          ; 7D 16
        mov     ax, word ptr [bp - 0x148]       ; 8B 86 B8 FE
        mov     dx, ds                          ; 8C DA
        add     ax, word ptr [bp - 0x146]       ; 03 86 BA FE
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 71 16 00 00 [FIXUP]
L_1642:
        cmp     word ptr [bp - 0x144], 0        ; 83 BE BC FE 00
        jne     L_164C                          ; 75 03
        jmp     L_13D9                          ; E9 8D FD
L_164C:
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A F4 11 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x40]        ; 03 46 C0
        cmp     ax, 0x50                        ; 3D 50 00
        jl      L_1661                          ; 7C 03
        jmp     L_13FC                          ; E9 9B FD
L_1661:
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        mov     dx, ds                          ; 8C DA
        add     ax, word ptr [bp - 0x40]        ; 03 46 C0
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 1F 18 00 00 [FIXUP]
        jmp     L_13FC                          ; E9 84 FD
L_1678:
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        call    far KERNEL._LCLOSE              ; 9A 84 16 00 00 [FIXUP]
        push    word ptr [bp - 0x48]            ; FF 76 B8
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_0213                          ; E8 83 EB
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x148]       ; 8B 86 B8 FE
        jmp     L_11D3                          ; E9 35 FB
L_169E:
        sub     ax, ax                          ; 2B C0
L_16A0:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_16A7 -- offset 0x16A7 -- 32 instr
; Funcion mediana (32 instr, 1 calls).
; tags: calls_kernel, medium
; callers: sub_10B0
; calls (inter): KERNEL.ANSIUPPER
;----------------------------------------------------------------------
L_16A7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A DD 0C 00 00 [FIXUP]
        sub     al, 0x41                        ; 2C 41
        mov     byte ptr [bp + 4], al           ; 88 46 04
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_16C5:
        mov     ax, word ptr [0x560]            ; A1 60 05
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_16DC                          ; 7D 0F
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        cwde                                    ; 98
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x274], ax       ; 39 87 74 02
        jne     L_16E9                          ; 75 0D
L_16DC:
        mov     ax, word ptr [0x560]            ; A1 60 05
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_16EE                          ; 7D 0A
        mov     ax, 1                           ; B8 01 00
        jmp     L_16F0                          ; EB 07
L_16E9:
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_16C5                          ; EB D7
L_16EE:
        sub     ax, ax                          ; 2B C0
L_16F0:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_16F6 -- offset 0x16F6 -- 62 instr
; Funcion mediana (62 instr, 0 calls).
; tags: far, medium
; callers: sub_13AD, sub_1B72, sub_2019, sub_23F7
;----------------------------------------------------------------------
L_16F6:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
L_171B:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr [0x526]            ; A1 26 05
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jne     L_1730                          ; 75 0A
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_176A                          ; 74 3C
        jmp     L_1761                          ; EB 31
L_1730:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     byte ptr es:[bx], al            ; 26 88 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_171B                          ; 75 D0
        sub     ax, ax                          ; 2B C0
        jmp     L_1789                          ; EB 3A
L_174F:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     byte ptr es:[bx], al            ; 26 88 07
L_1761:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_174F                          ; 75 E5
L_176A:
        inc     word ptr [bp - 6]               ; FF 46 FA
        inc     word ptr [bp - 6]               ; FF 46 FA
L_1770:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_1770                          ; 75 EA
        mov     ax, 1                           ; B8 01 00
L_1789:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1794 -- offset 0x1794 -- 41 instr
; Funcion mediana (41 instr, 5 calls).
; tags: calls_user, medium
; callers: sub_13AD, sub_1B72, sub_2019
; calls (inter): USER.DISPATCHMESSAGE, USER.GETPARENT, USER.ISDIALOGMESSAGE, USER.PEEKMESSAGE, USER.TRANSLATEMESSAGE
;----------------------------------------------------------------------
L_1794:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        jmp     L_17D4                          ; EB 38
L_179C:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        je      L_17B1                          ; 74 0D
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jne     L_17C0                          ; 75 0F
L_17B1:
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ISDIALOGMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_17D4                          ; EB 14
L_17C0:
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
L_17D4:
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_179C                          ; 75 B1
        mov     ax, word ptr [0x344]            ; A1 44 03
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_17F4 -- offset 0x17F4 -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: calls_kernel, small
; callers: sub_13AD, sub_23F7, sub_369E
; calls (inter): KERNEL.LSTRCPY, KERNEL.OPENFILE
;----------------------------------------------------------------------
L_17F4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x80                        ; 81 EC 80 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x80]                 ; 8D 46 80
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_1839                          ; 7C 26
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 41 13 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KEYBOARD.6                  ; 9A 7C 02 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        jmp     L_183B                          ; EB 02
L_1839:
        sub     ax, ax                          ; 2B C0
L_183B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1841 -- offset 0x1841 -- 78 instr
; Dispatcher: tabla de decisiones cmp+jcc (78 instr).
; tags: dispatcher
; callers: sub_10B0, sub_1A07, sub_2204, sub_23F7, sub_369E
; calls (intra): sub_00F4
;----------------------------------------------------------------------
L_1841:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_185D                          ; 74 0F
        cmp     word ptr [bp + 4], 1            ; 83 7E 04 01
        jne     L_1863                          ; 75 0F
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        jne     L_1863                          ; 75 06
L_185D:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1902                          ; E9 9F 00
L_1863:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        cmp     byte ptr es:[bx + 1], 0x3a      ; 26 80 7F 01 3A
        jne     L_189D                          ; 75 24
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_00F4                          ; E8 73 E8
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [0x1e0]            ; A0 E0 01
        cwde                                    ; 98
        cmp     cx, ax                          ; 3B C8
        je      L_188F                          ; 74 04
L_188B:
        sub     ax, ax                          ; 2B C0
        jmp     L_1902                          ; EB 73
L_188F:
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        sub     word ptr [bp + 4], 2            ; 83 6E 04 02
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_185D                          ; 74 C0
L_189D:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        cmp     byte ptr es:[bx], 0x5c          ; 26 80 3F 5C
        jne     L_188B                          ; 75 E5
        dec     word ptr [bp + 4]               ; FF 4E 04
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        inc     ax                              ; 40
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_18B8:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_18D0                          ; 7D 10
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        cmp     byte ptr es:[bx], 0x5c          ; 26 80 3F 5C
        jne     L_18DA                          ; 75 11
        cmp     byte ptr es:[bx + 1], 0         ; 26 80 7F 01 00
        jne     L_18DA                          ; 75 0A
L_18D0:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_188B                          ; 75 B3
        jmp     L_185D                          ; EB 83
L_18DA:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_00F4                          ; E8 0D E8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        push    ax                              ; 50
        mov     si, cx                          ; 8B F1
        call    L_00F4                          ; E8 FB E7
        cmp     ax, si                          ; 3B C6
        jne     L_188B                          ; 75 8E
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_18B8                          ; EB B6
L_1902:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1909 -- offset 0x1909 -- 94 instr
; Dispatcher: tabla de decisiones cmp+jcc (94 instr).
; tags: dispatcher
; callers: sub_13AD, sub_1B72
;----------------------------------------------------------------------
L_1909:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        jmp     L_19EA                          ; E9 CC 00
L_191E:
        cwde                                    ; 98
        cmp     ax, 0x2a                        ; 3D 2A 00
        je      L_198D                          ; 74 69
        cmp     ax, 0x2e                        ; 3D 2E 00
        jne     L_192C                          ; 75 03
        jmp     L_19B4                          ; E9 88 00
L_192C:
        cmp     ax, 0x3f                        ; 3D 3F 00
        je      L_1958                          ; 74 27
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        or      al, al                          ; 0A C0
        jne     L_1953                          ; 75 03
        jmp     L_19EA                          ; E9 97 00
L_1953:
        cmp     al, 0x2e                        ; 3C 2E
        jmp     L_19E5                          ; E9 8D 00
L_1958:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        je      L_1970                          ; 74 0F
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     byte ptr es:[bx], al            ; 26 88 07
L_1970:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_19EA                          ; EB 75
L_1975:
        cmp     byte ptr [bp - 6], 0x2e         ; 80 7E FA 2E
        je      L_199A                          ; 74 1F
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     byte ptr es:[bx], al            ; 26 88 07
L_198D:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        or      al, al                          ; 0A C0
        jne     L_1975                          ; 75 DB
L_199A:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        or      al, al                          ; 0A C0
        je      L_19EA                          ; 74 43
        cmp     al, 0x2e                        ; 3C 2E
        je      L_19EA                          ; 74 3F
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_199A                          ; EB E6
L_19B4:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        jmp     L_19D1                          ; EB 09
L_19C8:
        cmp     byte ptr [bp - 6], 0x2e         ; 80 7E FA 2E
        je      L_19DE                          ; 74 10
        inc     word ptr [bp + 8]               ; FF 46 08
L_19D1:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        or      al, al                          ; 0A C0
        jne     L_19C8                          ; 75 EA
L_19DE:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
L_19E5:
        je      L_19EA                          ; 74 03
        inc     word ptr [bp + 8]               ; FF 46 08
L_19EA:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        or      al, al                          ; 0A C0
        je      L_19FA                          ; 74 03
        jmp     L_191E                          ; E9 24 FF
L_19FA:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1A07 -- offset 0x1A07 -- 145 instr
; Dispatcher: tabla de decisiones cmp+jcc (145 instr).
; tags: calls_kernel, dispatcher
; callers: sub_0D58
; calls (intra): sub_0016, sub_1048, sub_1067, sub_1841, sub_1CAF
; calls (inter): KERNEL.GETLASTDISKCHANGE, KERNEL.LOCALALLOC, KERNEL.LOCALFREE, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_1A07:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x114                       ; 81 EC 14 01
        mov     word ptr [bp - 0x3e], 0         ; C7 46 C2 00 00
        mov     word ptr [bp - 0x32], 1         ; C7 46 CE 01 00
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 36 1A 00 00 [FIXUP]
        mov     word ptr [bp - 0xc2], ax        ; 89 86 3E FF
        or      ax, ax                          ; 0B C0
        je      L_1A41                          ; 74 14
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A E5 10 00 00 [FIXUP]
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        or      ax, ax                          ; 0B C0
        jne     L_1A87                          ; 75 46
L_1A41:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x18                        ; B8 18 00
L_1A47:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
L_1A4B:
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 8D 1B 00 00 [FIXUP]
L_1A51:
        cmp     word ptr [bp - 0xc2], 0         ; 83 BE 3E FF 00
        je      L_1A61                          ; 74 09
        push    word ptr [bp - 0xc2]            ; FF B6 3E FF
        call    far KERNEL.LOCALFREE            ; 9A 6B 1A 00 00 [FIXUP]
L_1A61:
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        je      L_1A6F                          ; 74 08
        push    word ptr [bp - 0x30]            ; FF 76 D0
        call    far KERNEL.LOCALFREE            ; 9A B8 12 00 00 [FIXUP]
L_1A6F:
        cmp     word ptr [bp - 0x3e], 0         ; 83 7E C2 00
        jne     L_1A78                          ; 75 03
        jmp     L_1CA7                          ; E9 2F 02
L_1A78:
        cmp     word ptr [bp - 0x34], 0         ; 83 7E CC 00
        jne     L_1A81                          ; 75 03
        jmp     L_1CA7                          ; E9 26 02
L_1A81:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1CA9                          ; E9 22 02
L_1A87:
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1067                          ; E8 DA F5
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1A9F                          ; 74 08
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_1A47                          ; EB A8
L_1A9F:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1067                          ; E8 C2 F5
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1AB7                          ; 74 08
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x19                        ; B8 19 00
        jmp     L_1A47                          ; EB 90
L_1AB7:
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 7B 1B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1ACB                          ; 74 0B
        mov     word ptr [bp - 0x32], 0         ; C7 46 CE 00 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1048                          ; E8 7D F5
L_1ACB:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc2]        ; 8B 86 3E FF
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1CAF                          ; E8 D2 01
        mov     ax, word ptr [bp - 0xc2]        ; 8B 86 3E FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 05 1B 00 00 [FIXUP]
        mov     word ptr [bp - 0xd8], ax        ; 89 86 28 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xd0]                 ; 8D 86 30 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_1CAF                          ; E8 B0 01
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A E3 1B 00 00 [FIXUP]
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     ax, word ptr [bp - 0xc2]        ; 8B 86 3E FF
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xd8]            ; FF B6 28 FF
        call    L_1841                          ; E8 28 FD
        or      ax, ax                          ; 0B C0
        jne     L_1B2C                          ; 75 0F
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        call    L_1841                          ; E8 19 FD
        or      ax, ax                          ; 0B C0
        je      L_1B31                          ; 74 05
L_1B2C:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1B33                          ; EB 02
L_1B31:
        sub     ax, ax                          ; 2B C0
L_1B33:
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0016                          ; E8 CF E4
        mov     word ptr [bp - 0xd2], ax        ; 89 86 2E FF
        or      ax, ax                          ; 0B C0
        je      L_1BB1                          ; 74 62
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0016                          ; E8 B6 E4
        or      ax, ax                          ; 0B C0
        jne     L_1B72                          ; 75 0E
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 8                           ; B8 08 00
L_1B6A:
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        jmp     L_1A4B                          ; E9 D9 FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1B72 -- offset 0x1B72 -- 126 instr
; Dispatcher: tabla de decisiones cmp+jcc (126 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (intra): sub_005A, sub_01B0, sub_0BE8, sub_1048, sub_16F6, sub_1794 (+1 mas)
; calls (inter): KERNEL.GETLASTDISKCHANGE, KERNEL.LSTRCPY, KERNEL.LSTRLEN, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_1B72:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        jmp     L_1B6A                          ; EB F0
L_1B7A:
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 92 1B 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc2]        ; 8B 86 3E FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 2B 15 00 00 [FIXUP]
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 85 11 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1BA5                          ; 74 0B
        mov     word ptr [bp - 0x32], 0         ; C7 46 CE 00 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1048                          ; E8 A3 F4
L_1BA5:
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_005A                          ; E8 AD E4
        mov     word ptr [bp - 0xd2], ax        ; 89 86 2E FF
L_1BB1:
        cmp     word ptr [bp - 0xd2], 0         ; 83 BE 2E FF 00
        je      L_1BBB                          ; 74 03
        jmp     L_1A51                          ; E9 96 FE
L_1BBB:
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        je      L_1BCE                          ; 74 0D
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1794                          ; E8 CD FB
        or      ax, ax                          ; 0B C0
        je      L_1BCE                          ; 74 03
        jmp     L_1A51                          ; E9 83 FE
L_1BCE:
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A E3 15 00 00 [FIXUP]
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 1F 16 00 00 [FIXUP]
        add     ax, word ptr [bp - 0xd8]        ; 03 86 28 FF
        cmp     ax, 0x50                        ; 3D 50 00
        jge     L_1C06                          ; 7D 16
        mov     ax, word ptr [bp - 0xc2]        ; 8B 86 3E FF
        mov     dx, ds                          ; 8C DA
        add     ax, word ptr [bp - 0xd8]        ; 03 86 28 FF
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 3E 16 00 00 [FIXUP]
L_1C06:
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
        add     ax, 0xd                         ; 05 0D 00
        cmp     ax, 0x50                        ; 3D 50 00
        jge     L_1C29                          ; 7D 18
        lea     ax, [bp - 0xd0]                 ; 8D 86 30 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        mov     dx, ds                          ; 8C DA
        add     ax, word ptr [bp - 0x3a]        ; 03 46 C6
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1909                          ; E8 E0 FC
L_1C29:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x114]                ; 8D 86 EC FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3c                        ; B8 3C 00
        push    ax                              ; 50
        call    L_0BE8                          ; E8 AE EF
        lea     ax, [bp - 0x114]                ; 8D 86 EC FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xbe]                 ; 8D 86 42 FF
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_16F6                          ; E8 A6 FA
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        je      L_1C81                          ; 74 2B
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 6E 1C 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0xbe]                 ; 8D 86 42 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 3B 14 00 00 [FIXUP]
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A B8 1A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1C81                          ; 74 0B
        mov     word ptr [bp - 0x32], 0         ; C7 46 CE 00 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1048                          ; E8 C7 F3
L_1C81:
        mov     ax, word ptr [bp - 0xc2]        ; 8B 86 3E FF
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_01B0                          ; E8 21 E5
        cmp     ax, 5                           ; 3D 05 00
        jne     L_1C97                          ; 75 03
        jmp     L_1B7A                          ; E9 E3 FE
L_1C97:
        cmp     ax, 0x11                        ; 3D 11 00
        jne     L_1C9F                          ; 75 03
        jmp     L_1B7A                          ; E9 DB FE
L_1C9F:
        mov     word ptr [bp - 0x3e], 1         ; C7 46 C2 01 00
        jmp     L_1BA5                          ; E9 FE FE
L_1CA7:
        sub     ax, ax                          ; 2B C0
L_1CA9:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1CAF -- offset 0x1CAF -- 271 instr
; Dispatcher: tabla de decisiones cmp+jcc (271 instr).
; tags: calls_kernel, dispatcher
; callers: sub_10B0, sub_1A07, sub_2019, sub_33B6
; calls (intra): sub_0016, sub_1F9F
; calls (inter): KERNEL.LSTRCAT, KERNEL.LSTRCMP, KERNEL.LSTRCPY, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_1CAF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x34                        ; 83 EC 34
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_1CD3                          ; 74 15
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x55                        ; B8 55 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 4D 1E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1CEA                          ; 75 17
L_1CD3:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.LSTRCPY              ; 9A 40 1D 00 00 [FIXUP]
L_1CE4:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1F99                          ; E9 AF 02
L_1CEA:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     byte ptr es:[bx + 1], 0x3a      ; 26 80 7F 01 3A
        jne     L_1D1A                          ; 75 1A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        inc     word ptr [bp - 0x32]            ; FF 46 CE
        mov     byte ptr es:[bx], al            ; 26 88 07
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        inc     word ptr [bp - 0x32]            ; FF 46 CE
        mov     byte ptr es:[bx], 0x3a          ; 26 C6 07 3A
        add     word ptr [bp + 0xc], 2          ; 83 46 0C 02
L_1D1A:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        je      L_1D26                          ; 74 03
        jmp     L_1E07                          ; E9 E1 00
L_1D26:
        cmp     byte ptr es:[bx + 1], 0x5c      ; 26 80 7F 01 5C
        je      L_1D34                          ; 74 07
        cmp     byte ptr es:[bx + 1], 0         ; 26 80 7F 01 00
        jne     L_1D58                          ; 75 24
L_1D34:
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x32]            ; FF 76 CE
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 82 1D 00 00 [FIXUP]
        inc     word ptr [bp + 0xc]             ; FF 46 0C
L_1D47:
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1D53                          ; 75 03
        jmp     L_1E07                          ; E9 B4 00
L_1D53:
        inc     word ptr [bp - 0x32]            ; FF 46 CE
        jmp     L_1D47                          ; EB EF
L_1D58:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     byte ptr es:[bx + 1], 0x2e      ; 26 80 7F 01 2E
        je      L_1D65                          ; 74 03
        jmp     L_1E07                          ; E9 A2 00
L_1D65:
        cmp     byte ptr es:[bx + 2], 0x5c      ; 26 80 7F 02 5C
        je      L_1D76                          ; 74 0A
        cmp     byte ptr es:[bx + 2], 0         ; 26 80 7F 02 00
        je      L_1D76                          ; 74 03
        jmp     L_1E07                          ; E9 91 00
L_1D76:
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x32]            ; FF 76 CE
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 02 1C 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.LSTRLEN              ; 9A 66 1F 00 00 [FIXUP]
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        add     word ptr [bp + 0xc], 2          ; 83 46 0C 02
        jmp     L_1DA6                          ; EB 03
L_1DA3:
        dec     word ptr [bp - 0x32]            ; FF 4E CE
L_1DA6:
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        cmp     byte ptr es:[bx], 0x5c          ; 26 80 3F 5C
        jne     L_1DA3                          ; 75 F4
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1DC8                          ; 75 10
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bp - 0x30], dx        ; 39 56 D0
        jne     L_1DC8                          ; 75 05
        cmp     word ptr [bp - 0x32], ax        ; 39 46 CE
        je      L_1DE5                          ; 74 1D
L_1DC8:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, 2                           ; 05 02 00
        cmp     dx, word ptr [bp - 0x30]        ; 3B 56 D0
        jne     L_1E07                          ; 75 31
        cmp     ax, word ptr [bp - 0x32]        ; 3B 46 CE
        jne     L_1E07                          ; 75 2C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx + 1], 0x3a      ; 26 80 7F 01 3A
        jne     L_1E07                          ; 75 22
L_1DE5:
        inc     word ptr [bp - 0x32]            ; FF 46 CE
        jmp     L_1E07                          ; EB 1D
L_1DEA:
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        cmp     ax, 0x4f                        ; 3D 4F 00
        jge     L_1E10                          ; 7D 1B
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        inc     word ptr [bp + 0xc]             ; FF 46 0C
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        inc     word ptr [bp - 0x32]            ; FF 46 CE
        mov     byte ptr es:[bx], al            ; 26 88 07
L_1E07:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1DEA                          ; 75 DA
L_1E10:
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        jmp     L_1E34                          ; EB 0F
L_1E25:
        cmp     byte ptr [bp - 0x34], 0x2a      ; 80 7E CC 2A
        je      L_1E41                          ; 74 16
        cmp     byte ptr [bp - 0x34], 0         ; 80 7E CC 00
        je      L_1E41                          ; 74 10
        inc     word ptr [bp - 0x32]            ; FF 46 CE
L_1E34:
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x34], al        ; 88 46 CC
        cmp     al, 0x3f                        ; 3C 3F
        jne     L_1E25                          ; 75 E4
L_1E41:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x57                        ; B8 57 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 67 1E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1E58                          ; 75 03
        jmp     L_1CE4                          ; E9 8C FE
L_1E58:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x59                        ; B8 59 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A F7 14 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1E72                          ; 75 03
        jmp     L_1CE4                          ; E9 72 FE
L_1E72:
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1EE4                          ; 75 69
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0016                          ; E8 89 E1
        or      ax, ax                          ; 0B C0
        jne     L_1EE4                          ; 75 53
        test    byte ptr [bp - 0x17], 0x10      ; F6 46 E9 10
        je      L_1EE4                          ; 74 4D
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        jmp     L_1EA8                          ; EB 03
L_1EA5:
        inc     word ptr [bp - 0x32]            ; FF 46 CE
L_1EA8:
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1EA5                          ; 75 F4
        dec     word ptr [bp - 0x32]            ; FF 4E CE
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        cmp     byte ptr es:[bx], 0x5c          ; 26 80 3F 5C
        jne     L_1EC0                          ; 75 03
        jmp     L_1CE4                          ; E9 24 FE
L_1EC0:
        mov     ax, bx                          ; 8B C3
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        cmp     ax, 0x4f                        ; 3D 4F 00
        jl      L_1ECD                          ; 7C 03
        jmp     L_1CE4                          ; E9 17 FE
L_1ECD:
        inc     word ptr [bp - 0x32]            ; FF 46 CE
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        mov     byte ptr es:[bx], 0x5c          ; 26 C6 07 5C
        inc     word ptr [bp - 0x32]            ; FF 46 CE
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_1CE4                          ; E9 00 FE
L_1EE4:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        jmp     L_1EF5                          ; EB 03
L_1EF2:
        inc     word ptr [bp - 0x32]            ; FF 46 CE
L_1EF5:
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1EF2                          ; 75 F4
L_1EFE:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bp - 0x32], ax        ; 39 46 CE
        jbe     L_1F1F                          ; 76 16
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x34], al        ; 88 46 CC
        cmp     al, 0x3a                        ; 3C 3A
        je      L_1F1F                          ; 74 09
        cmp     al, 0x5c                        ; 3C 5C
        je      L_1F1F                          ; 74 05
        dec     word ptr [bp - 0x32]            ; FF 4E CE
        jmp     L_1EFE                          ; EB DF
L_1F1F:
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x34], al        ; 88 46 CC
        cmp     al, 0x5c                        ; 3C 5C
        je      L_1F30                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_1F81                          ; 75 51
L_1F30:
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        mov     dx, word ptr [bp - 0x30]        ; 8B 56 D0
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1F9F                          ; E8 5D 00
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        cmp     byte ptr es:[bx], 0x3a          ; 26 80 3F 3A
        jne     L_1F4E                          ; 75 03
        inc     word ptr [bp - 0x32]            ; FF 46 CE
L_1F4E:
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x2e], al        ; 88 46 D2
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        cmp     al, 0x5c                        ; 3C 5C
        jne     L_1F97                          ; 75 38
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.LSTRLEN              ; 9A E4 1A 00 00 [FIXUP]
        cmp     ax, 0x4f                        ; 3D 4F 00
        jge     L_1F97                          ; 7D 28
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x5c                        ; B8 5C 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 67 13 00 00 [FIXUP]
        jmp     L_1F97                          ; EB 16
L_1F81:
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1F9F                          ; E8 0F 00
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
L_1F97:
        sub     ax, ax                          ; 2B C0
L_1F99:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1F9F -- offset 0x1F9F -- 49 instr
; Dispatcher: tabla de decisiones cmp+jcc (49 instr).
; tags: dispatcher
; callers: sub_1CAF
;----------------------------------------------------------------------
L_1F9F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_2012                          ; 74 64
        sub     si, si                          ; 2B F6
L_1FB0:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        or      al, al                          ; 0A C0
        je      L_1FDE                          ; 74 21
        cmp     al, 0x2e                        ; 3C 2E
        je      L_1FDE                          ; 74 1D
        inc     word ptr [bp + 8]               ; FF 46 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     si                              ; 46
        cmp     si, 8                           ; 83 FE 08
        jl      L_1FB0                          ; 7C DD
        jmp     L_1FDE                          ; EB 09
L_1FD5:
        cmp     byte ptr [bp - 4], 0x2e         ; 80 7E FC 2E
        je      L_1FEB                          ; 74 10
        inc     word ptr [bp + 8]               ; FF 46 08
L_1FDE:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        or      al, al                          ; 0A C0
        jne     L_1FD5                          ; 75 EA
L_1FEB:
        sub     si, si                          ; 2B F6
L_1FED:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_200B                          ; 74 15
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     si                              ; 46
        cmp     si, 4                           ; 83 FE 04
        jl      L_1FED                          ; 7C E2
L_200B:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
L_2012:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2019 -- offset 0x2019 -- 177 instr
; Dispatcher: tabla de decisiones cmp+jcc (177 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_0D58
; calls (intra): sub_0016, sub_024D, sub_0BE8, sub_1048, sub_1067, sub_16F6 (+2 mas)
; calls (inter): KERNEL.GETLASTDISKCHANGE, KERNEL.LOCALALLOC, KERNEL.LSTRCPY, KERNEL.LSTRLEN, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_2019:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xfe                        ; 81 EC FE 00
        mov     word ptr [bp - 0x36], 0         ; C7 46 CA 00 00
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 21 1A 00 00 [FIXUP]
        mov     word ptr [bp - 0xc0], ax        ; 89 86 40 FF
        or      ax, ax                          ; 0B C0
        jne     L_204D                          ; 75 13
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_20                   ; 9A FE 20 00 00 [FIXUP]
        jmp     L_2272                          ; E9 25 02
L_204D:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xfe], al        ; 88 86 02 FF
        cmp     al, 0x20                        ; 3C 20
        je      L_205E                          ; 74 04
        cmp     al, 0x2c                        ; 3C 2C
        jne     L_2063                          ; 75 05
L_205E:
        inc     word ptr [bp + 6]               ; FF 46 06
        jmp     L_204D                          ; EB EA
L_2063:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1067                          ; E8 FE EF
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A ED 20 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_2078                          ; 75 03
        jmp     L_2267                          ; E9 EF 01
L_2078:
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1048                          ; E8 C5 EF
        jmp     L_2267                          ; E9 E1 01
L_2086:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc0]        ; 8B 86 40 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1CAF                          ; E8 17 FC
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     ax, word ptr [bp - 0xc0]        ; 8B 86 40 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 45 21 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 0x34], 0xf7      ; C7 46 CC F7 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0xbc], ax        ; 89 86 44 FF
L_20B5:
        mov     bx, word ptr [bp - 0xbc]        ; 8B 9E 44 FF
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_20D1                          ; 74 13
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xfe], al        ; 88 86 02 FF
        cmp     al, 0x3f                        ; 3C 3F
        je      L_20CC                          ; 74 04
        cmp     al, 0x2a                        ; 3C 2A
        jne     L_2117                          ; 75 4B
L_20CC:
        mov     word ptr [bp - 0x34], 0x20      ; C7 46 CC 20 00
L_20D1:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x34]            ; FF 76 CC
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0016                          ; E8 35 DF
        mov     word ptr [bp - 0xbe], ax        ; 89 86 42 FF
        or      ax, ax                          ; 0B C0
        jne     L_20EC                          ; 75 03
        jmp     L_2250                          ; E9 64 01
L_20EC:
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 03 21 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_20                   ; 9A EF 21 00 00 [FIXUP]
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 94 21 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_210E                          ; 75 03
        jmp     L_225A                          ; E9 4C 01
L_210E:
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1048                          ; E8 34 EF
        jmp     L_225A                          ; E9 43 01
L_2117:
        inc     word ptr [bp - 0xbc]            ; FF 86 44 FF
        jmp     L_20B5                          ; EB 98
L_211D:
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        je      L_2130                          ; 74 0D
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1794                          ; E8 6B F6
        or      ax, ax                          ; 0B C0
        je      L_2130                          ; 74 03
        jmp     L_2272                          ; E9 42 01
L_2130:
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A D9 1B 00 00 [FIXUP]
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 8D 1D 00 00 [FIXUP]
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        cmp     ax, 0x50                        ; 3D 50 00
        jge     L_2166                          ; 7D 15
        mov     ax, word ptr [bp - 0xc0]        ; 8B 86 40 FF
        mov     dx, ds                          ; 8C DA
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A E0 1C 00 00 [FIXUP]
L_2166:
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0xfc]                 ; 8D 86 04 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3c                        ; B8 3C 00
        push    ax                              ; 50
        call    L_0BE8                          ; E8 71 EA
        lea     ax, [bp - 0xfc]                 ; 8D 86 04 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xba]                 ; 8D 86 46 FF
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_16F6                          ; E8 69 F5
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        je      L_21BE                          ; 74 2B
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A AB 21 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0xba]                 ; 8D 86 46 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 69 1C 00 00 [FIXUP]
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A C5 21 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_21BE                          ; 74 0B
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1048                          ; E8 8A EE
L_21BE:
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        je      L_2210                          ; 74 4C
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A F4 21 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_024D                          ; E8 7C E0
        cmp     ax, 5                           ; 3D 05 00
        je      L_21E2                          ; 74 0C
        cmp     ax, 0x10                        ; 3D 10 00
        je      L_2204                          ; 74 29
        mov     word ptr [bp - 0x36], 1         ; C7 46 CA 01 00
        jmp     L_21F3                          ; EB 11
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_21E2 -- offset 0x21E2 -- 13 instr
; Funcion sin clasificar definitiva (13 instr).
; tags: calls_kernel, small
; calls (intra): sub_1048
; calls (inter): KERNEL.GETLASTDISKCHANGE
;----------------------------------------------------------------------
L_21E2:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
L_21ED:
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 4D 1A 00 00 [FIXUP]
L_21F3:
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 1E 22 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2244                          ; 74 48
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1048                          ; E8 46 EE
        jmp     L_2244                          ; EB 40
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2204 -- offset 0x2204 -- 52 instr
; Funcion mediana (52 instr, 6 calls).
; tags: calls_kernel, medium
; calls (intra): sub_005A, sub_0213, sub_1067, sub_1841
; calls (inter): KERNEL.GETLASTDISKCHANGE, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_2204:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        jmp     L_21ED                          ; EB DD
L_2210:
        mov     ax, word ptr [bp - 0xc0]        ; 8B 86 40 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_0213                          ; E8 FA DF
        or      ax, ax                          ; 0B C0
        je      L_222F                          ; 74 12
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 57 1C 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        jmp     L_21ED                          ; EB BE
L_222F:
        mov     ax, word ptr [bp - 0xc0]        ; 8B 86 40 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_1841                          ; E8 06 F6
        or      ax, ax                          ; 0B C0
        je      L_2244                          ; 74 05
        mov     word ptr [bp - 0x36], 1         ; C7 46 CA 01 00
L_2244:
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_005A                          ; E8 0E DE
        mov     word ptr [bp - 0xbe], ax        ; 89 86 42 FF
L_2250:
        cmp     word ptr [bp - 0xbe], 0         ; 83 BE 42 FF 00
        jne     L_225A                          ; 75 03
        jmp     L_211D                          ; E9 C3 FE
L_225A:
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     word ptr [bp + 6], ax           ; 89 46 06
        push    ax                              ; 50
        call    L_1067                          ; E8 03 EE
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
L_2267:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_2272                          ; 74 03
        jmp     L_2086                          ; E9 14 FE
L_2272:
        cmp     word ptr [bp - 0xc0], 0         ; 83 BE 40 FF 00
        je      L_2282                          ; 74 09
        push    word ptr [bp - 0xc0]            ; FF B6 40 FF
        call    far KERNEL.LOCALFREE            ; 9A 5D 1A 00 00 [FIXUP]
L_2282:
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_228B -- offset 0x228B -- 149 instr
; Dispatcher: tabla de decisiones cmp+jcc (149 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; callers: sub_0D58
; calls (inter): KERNEL.ANSIUPPER, KERNEL.LSTRCMP, USER.CHECKMENUITEM, USER.GETMENU
;----------------------------------------------------------------------
L_228B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xc], 0x534      ; C7 46 F4 34 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_22AD                          ; EB 06
L_22A7:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     word ptr [bp - 6]               ; FF 46 FA
L_22AD:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0x20             ; 80 3F 20
        je      L_22A7                          ; 74 F2
        jmp     L_22BA                          ; EB 03
L_22B7:
        inc     word ptr [bp - 6]               ; FF 46 FA
L_22BA:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0x20             ; 80 3F 20
        jg      L_22B7                          ; 7F F5
        cmp     byte ptr [bx], 0x20             ; 80 3F 20
        jne     L_22EE                          ; 75 27
        jmp     L_22CC                          ; EB 03
L_22C9:
        inc     word ptr [bp - 6]               ; FF 46 FA
L_22CC:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0x20             ; 80 3F 20
        je      L_22C9                          ; 74 F5
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_22EE                          ; 74 15
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 1B 24 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        jmp     L_23EA                          ; E9 FC 00
L_22EE:
        push    word ptr [0x346]                ; FF 36 46 03
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x5e                        ; B8 5E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A CB 1C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2327                          ; 74 1B
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx], 0x2a             ; 80 3F 2A
        jne     L_231A                          ; 75 06
        cmp     byte ptr [bx + 1], 0            ; 80 7F 01 00
        je      L_2327                          ; 74 0D
L_231A:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_2327                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_2329                          ; EB 02
L_2327:
        sub     ax, ax                          ; 2B C0
L_2329:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_23A4                          ; 74 74
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_2335:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx], 0x2e             ; 80 3F 2E
        je      L_235E                          ; 74 21
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 8F 23 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     byte ptr [bx], al               ; 88 07
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        cmp     word ptr [bp - 0xa], 8          ; 83 7E F6 08
        jl      L_2335                          ; 7C D7
L_235E:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx], 0x2e             ; 80 3F 2E
        jne     L_2376                          ; 75 10
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [di]               ; 8A 05
        mov     byte ptr [bx], al               ; 88 07
L_2376:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_237B:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_23A4                          ; 74 21
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A B7 16 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     byte ptr [bx], al               ; 88 07
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        cmp     word ptr [bp - 0xa], 3          ; 83 7E F6 03
        jl      L_237B                          ; 7C D7
L_23A4:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     byte ptr [bx], 0                ; C6 07 00
        push    si                              ; 56
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_23BA                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_23BC                          ; EB 02
L_23BA:
        sub     ax, ax                          ; 2B C0
L_23BC:
        push    ax                              ; 50
        call    far USER.CHECKMENUITEM          ; 9A D6 23 00 00 [FIXUP]
        push    si                              ; 56
        mov     ax, 0x41                        ; B8 41 00
        push    ax                              ; 50
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_23D2                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_23D4                          ; EB 02
L_23D2:
        sub     ax, ax                          ; 2B C0
L_23D4:
        push    ax                              ; 50
        call    far USER.CHECKMENUITEM          ; 9A E3 23 00 00 [FIXUP]
        push    si                              ; 56
        mov     ax, 0x3d                        ; B8 3D 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.CHECKMENUITEM          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_23EA:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_23F7 -- offset 0x23F7 -- 318 instr
; Dispatcher: tabla de decisiones cmp+jcc (318 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; callers: sub_0D58
; calls (intra): sub_010A, sub_0BE8, sub_1048, sub_1067, sub_16F6, sub_17F4 (+1 mas)
; calls (inter): KERNEL.GETLASTDISKCHANGE, KERNEL.GLOBALALLOC, KERNEL.LSTRCPY, KERNEL.LSTRLEN, USER.CLIENTTOSCREEN, USER.CREATEWINDOW (+3 mas)
;----------------------------------------------------------------------
L_23F7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10e                       ; 81 EC 0E 01
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1067                          ; E8 63 EC
        mov     word ptr [bp - 0xd0], ax        ; 89 86 30 FF
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_2424                          ; 74 15
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
L_2419:
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 46 20 00 00 [FIXUP]
L_241F:
        sub     ax, ax                          ; 2B C0
        jmp     L_25C5                          ; E9 A1 01
L_2424:
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        lea     ax, [bp - 0x10c]                ; 8D 86 F4 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3c                        ; B8 3C 00
        push    ax                              ; 50
        call    L_0BE8                          ; E8 B3 E7
        lea     ax, [bp - 0x10c]                ; 8D 86 F4 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_16F6                          ; E8 AB F2
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A A6 21 00 00 [FIXUP]
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 6D 20 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_246C                          ; 74 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1048                          ; E8 DC EB
L_246C:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0xd0], ax        ; 89 86 30 FF
        jmp     L_2479                          ; EB 04
L_2475:
        inc     word ptr [bp - 0xd0]            ; FF 86 30 FF
L_2479:
        mov     bx, word ptr [bp - 0xd0]        ; 8B 9E 30 FF
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_2475                          ; 75 F3
        jmp     L_2498                          ; EB 14
L_2484:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0xd0], ax        ; 39 86 30 FF
        jb      L_24A6                          ; 72 19
        cmp     byte ptr [bp - 0x10e], 0x3a     ; 80 BE F2 FE 3A
        je      L_24A6                          ; 74 12
        dec     word ptr [bp - 0xd0]            ; FF 8E 30 FF
L_2498:
        mov     bx, word ptr [bp - 0xd0]        ; 8B 9E 30 FF
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x10e], al       ; 88 86 F2 FE
        cmp     al, 0x5c                        ; 3C 5C
        jne     L_2484                          ; 75 DE
L_24A6:
        inc     word ptr [bp - 0xd0]            ; FF 86 30 FF
        mov     ax, word ptr [bp - 0xd0]        ; 8B 86 30 FF
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_24C9                          ; EB 16
L_24B3:
        mov     bx, word ptr [bp - 0xd0]        ; 8B 9E 30 FF
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x10e], al       ; 88 86 F2 FE
        or      al, al                          ; 0A C0
        je      L_24D5                          ; 74 14
        cmp     al, 0x2e                        ; 3C 2E
        je      L_24D5                          ; 74 10
        inc     word ptr [bp - 0xd0]            ; FF 86 30 FF
L_24C9:
        mov     ax, word ptr [bp - 0xd0]        ; 8B 86 30 FF
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        cmp     ax, 8                           ; 3D 08 00
        jl      L_24B3                          ; 7C DE
L_24D5:
        mov     ax, word ptr [bp - 0xd0]        ; 8B 86 30 FF
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_24E8                          ; EB 0A
L_24DE:
        cmp     byte ptr [bp - 0x10e], 0x2e     ; 80 BE F2 FE 2E
        je      L_24F5                          ; 74 10
        inc     word ptr [bp - 2]               ; FF 46 FE
L_24E8:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x10e], al       ; 88 86 F2 FE
        or      al, al                          ; 0A C0
        jne     L_24DE                          ; 75 E9
L_24F5:
        mov     ax, word ptr [bp - 0xd0]        ; 8B 86 30 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 62 21 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xd0]        ; 8B 9E 30 FF
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_2512                          ; 74 04
        inc     word ptr [bp - 0xd0]            ; FF 86 30 FF
L_2512:
        mov     ax, word ptr [bp - 0xd0]        ; 8B 86 30 FF
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_2526                          ; EB 0B
L_251B:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_2532                          ; 74 0F
        inc     word ptr [bp - 2]               ; FF 46 FE
L_2526:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [bp - 0xd0]        ; 2B 86 30 FF
        cmp     ax, 3                           ; 3D 03 00
        jl      L_251B                          ; 7C E9
L_2532:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_010A                          ; E8 CA DB
        or      ax, ax                          ; 0B C0
        je      L_2552                          ; 74 0E
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        jmp     L_2419                          ; E9 C7 FE
L_2552:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_17F4                          ; E8 94 F2
        or      ax, ax                          ; 0B C0
        jne     L_2567                          ; 75 03
        jmp     L_241F                          ; E9 B8 FE
L_2567:
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        jmp     L_2576                          ; EB 03
L_2573:
        inc     word ptr [bp - 6]               ; FF 46 FA
L_2576:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_2573                          ; 75 F4
        jmp     L_2584                          ; EB 03
L_2581:
        dec     word ptr [bp - 6]               ; FF 4E FA
L_2584:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0x5c          ; 26 80 3F 5C
        jne     L_2581                          ; 75 F4
        lea     ax, [bp - 0xcc]                 ; 8D 86 34 FF
        mov     cx, ss                          ; 8C D1
        cmp     word ptr [bp - 4], cx           ; 39 4E FC
        jne     L_259F                          ; 75 07
        cmp     bx, ax                          ; 3B D8
        jne     L_259F                          ; 75 03
        inc     word ptr [bp - 6]               ; FF 46 FA
L_259F:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A A2 20 00 00 [FIXUP]
        push    ax                              ; 50
        call    L_1841                          ; E8 86 F2
        or      ax, ax                          ; 0B C0
        jne     L_25C2                          ; 75 03
        jmp     L_241F                          ; E9 5D FE
L_25C2:
        mov     ax, 1                           ; B8 01 00
L_25C5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x30                        ; 83 EC 30
        cmp     word ptr [0x68], 0xa            ; 83 3E 68 00 0A
        jge     L_25E4                          ; 7D 05
        mov     ax, word ptr [0x68]             ; A1 68 00
        jmp     L_25E7                          ; EB 03
L_25E4:
        mov     ax, 0xa                         ; B8 0A 00
L_25E7:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [0x68], 0              ; 83 3E 68 00 00
        jne     L_25F4                          ; 75 03
        jmp     L_2721                          ; E9 2D 01
L_25F4:
        mov     ax, 0x29                        ; B8 29 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        add     ax, 0x10                        ; 05 10 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        imul    word ptr [0x382]                ; F7 2E 82 03
        add     ax, cx                          ; 03 C1
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x382]            ; A1 82 03
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        add     cx, 3                           ; 83 C1 03
        mov     word ptr [bp - 0xc], cx         ; 89 4E F4
        mov     word ptr [bp - 0x12], 0x19      ; C7 46 EE 19 00
        mov     word ptr [bp - 0x10], 0x19      ; C7 46 F0 19 00
        push    word ptr [0x346]                ; FF 36 46 03
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x348]            ; A1 48 03
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        sub     ax, 0x19                        ; 2D 19 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jge     L_2655                          ; 7D 05
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        jmp     L_2658                          ; EB 03
L_2655:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
L_2658:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [0x34e]            ; A1 4E 03
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        sub     ax, 0xa                         ; 2D 0A 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_2671                          ; 7D 05
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        jmp     L_2674                          ; EB 03
L_2671:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
L_2674:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     ax, 0xa                         ; 3D 0A 00
        jge     L_2681                          ; 7D 05
        mov     ax, 0xa                         ; B8 0A 00
        jmp     L_2684                          ; EB 03
L_2681:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
L_2684:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [0x68]             ; A1 68 00
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        je      L_2694                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_2696                          ; EB 02
L_2694:
        sub     ax, ax                          ; 2B C0
L_2696:
        mov     word ptr [0x386], ax            ; A3 86 03
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 4], 0x90c8       ; C7 46 FC C8 90
        or      ax, ax                          ; 0B C0
        je      L_26AB                          ; 74 04
        or      byte ptr [bp - 4], 0x20         ; 80 4E FC 20
L_26AB:
        push    word ptr [0x1da]                ; FF 36 DA 01
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x68]             ; A1 68 00
        mov     word ptr [0x342], ax            ; A3 42 03
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x342]                ; F7 2E 42 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A 17 11 00 00 [FIXUP]
        mov     word ptr [0x34c], ax            ; A3 4C 03
        or      ax, ax                          ; 0B C0
        jne     L_26F3                          ; 75 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 67 27 00 00 [FIXUP]
        jmp     L_2721                          ; EB 2E
L_26F3:
        mov     ax, 0xfc                        ; B8 FC 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [0x346]                ; FF 36 46 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x1da]                ; FF 36 DA 01
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
L_2721:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_272A -- offset 0x272A -- 47 instr
; Dispatcher: tabla de decisiones cmp+jcc (47 instr).
; tags: calls_kernel, dispatcher
; callers: sub_0D58
; calls (intra): sub_279F, sub_2893
; calls (inter): KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_272A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A B3 25 00 00 [FIXUP]
        cmp     ax, 0xb                         ; 3D 0B 00
        jle     L_2746                          ; 7E 07
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx + 0xb], 0          ; C6 47 0B 00
L_2746:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_2772                          ; EB 24
L_274E:
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        cmp     al, 0x3f                        ; 3C 3F
        je      L_275B                          ; 74 04
        cmp     al, 0x2a                        ; 3C 2A
        jne     L_276F                          ; 75 14
L_275B:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 82 28 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        jmp     L_2799                          ; EB 2A
L_276F:
        inc     word ptr [bp - 4]               ; FF 46 FC
L_2772:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_274E                          ; 75 D4
        cmp     byte ptr [0x1e2], 0             ; 80 3E E2 01 00
        je      L_2790                          ; 74 0F
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x1e2                       ; B8 E2 01
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_279F                          ; E8 11 00
        jmp     L_2799                          ; EB 09
L_2790:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_2893                          ; E8 FA 00
L_2799:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_279F -- offset 0x279F -- 89 instr
; Dispatcher: tabla de decisiones cmp+jcc (89 instr).
; tags: dispatcher
; callers: sub_272A
; calls (intra): sub_0162
;----------------------------------------------------------------------
L_279F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x42                        ; 83 EC 42
        mov     byte ptr [bp - 0x36], 0xff      ; C6 46 CA FF
        mov     byte ptr [bp - 0x30], 8         ; C6 46 D0 08
        mov     byte ptr [bp - 0x2f], 0         ; C6 46 D1 00
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], ss        ; 8C 56 C8
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     word ptr [bp - 0x3c], ss        ; 8C 56 C4
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
        mov     dx, ss                          ; 8C D2
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        mov     word ptr [bp - 0x40], dx        ; 89 56 C0
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ds           ; 8C 5E FE
        jmp     L_27F6                          ; EB 1D
L_27D9:
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        sub     ax, word ptr [bp - 0x3a]        ; 2B 46 C6
        cmp     ax, 0xb                         ; 3D 0B 00
        jge     L_280B                          ; 7D 27
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x42]             ; C4 5E BE
        inc     word ptr [bp - 0x42]            ; FF 46 BE
        mov     byte ptr es:[bx], al            ; 26 88 07
L_27F6:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_27D9                          ; 75 DA
        jmp     L_280B                          ; EB 0A
L_2801:
        les     bx, ptr [bp - 0x42]             ; C4 5E BE
        inc     word ptr [bp - 0x42]            ; FF 46 BE
        mov     byte ptr es:[bx], 0x20          ; 26 C6 07 20
L_280B:
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        sub     ax, word ptr [bp - 0x3a]        ; 2B 46 C6
        cmp     ax, 0xb                         ; 3D 0B 00
        jl      L_2801                          ; 7C EB
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        mov     dx, word ptr [bp - 0x3c]        ; 8B 56 C4
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        mov     word ptr [bp - 0x40], dx        ; 89 56 C0
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ds           ; 8C 5E FE
        jmp     L_284A                          ; EB 1D
L_282D:
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        sub     ax, word ptr [bp - 0x3e]        ; 2B 46 C2
        cmp     ax, 0xb                         ; 3D 0B 00
        jge     L_285F                          ; 7D 27
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x42]             ; C4 5E BE
        inc     word ptr [bp - 0x42]            ; FF 46 BE
        mov     byte ptr es:[bx], al            ; 26 88 07
L_284A:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_282D                          ; 75 DA
        jmp     L_285F                          ; EB 0A
L_2855:
        les     bx, ptr [bp - 0x42]             ; C4 5E BE
        inc     word ptr [bp - 0x42]            ; FF 46 BE
        mov     byte ptr es:[bx], 0x20          ; 26 C6 07 20
L_285F:
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        sub     ax, word ptr [bp - 0x3e]        ; 2B 46 C2
        cmp     ax, 0xb                         ; 3D 0B 00
        jl      L_2855                          ; 7C EB
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0162                          ; E8 F0 D8
        or      ax, ax                          ; 0B C0
        je      L_288A                          ; 74 14
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 16 29 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        jmp     L_288D                          ; EB 03
L_288A:
        mov     ax, 1                           ; B8 01 00
L_288D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2893 -- offset 0x2893 -- 56 instr
; Funcion mediana (56 instr, 1 calls).
; tags: medium
; callers: sub_272A
; calls (intra): sub_0144
;----------------------------------------------------------------------
L_2893:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x3e                        ; 83 EC 3E
        mov     byte ptr [bp - 0x36], 0xff      ; C6 46 CA FF
        mov     byte ptr [bp - 0x30], 8         ; C6 46 D0 08
        mov     byte ptr [bp - 0x2f], 0         ; C6 46 D1 00
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], ss        ; 8C 56 C8
        mov     dx, ss                          ; 8C D2
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     word ptr [bp - 0x3c], dx        ; 89 56 C4
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ds           ; 8C 5E FE
        jmp     L_28DE                          ; EB 1D
L_28C1:
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        sub     ax, word ptr [bp - 0x3a]        ; 2B 46 C6
        cmp     ax, 0xb                         ; 3D 0B 00
        jge     L_28F3                          ; 7D 27
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x3e]             ; C4 5E C2
        inc     word ptr [bp - 0x3e]            ; FF 46 C2
        mov     byte ptr es:[bx], al            ; 26 88 07
L_28DE:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_28C1                          ; 75 DA
        jmp     L_28F3                          ; EB 0A
L_28E9:
        les     bx, ptr [bp - 0x3e]             ; C4 5E C2
        inc     word ptr [bp - 0x3e]            ; FF 46 C2
        mov     byte ptr es:[bx], 0x20          ; 26 C6 07 20
L_28F3:
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        sub     ax, word ptr [bp - 0x3a]        ; 2B 46 C6
        cmp     ax, 0xb                         ; 3D 0B 00
        jl      L_28E9                          ; 7C EB
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0144                          ; E8 3E D8
        or      ax, ax                          ; 0B C0
        je      L_291E                          ; 74 14
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_20                   ; 9A E5 22 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        jmp     L_2921                          ; EB 03
L_291E:
        mov     ax, 1                           ; B8 01 00
L_2921:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2927 -- offset 0x2927 -- 131 instr
; Dispatcher: tabla de decisiones cmp+jcc (131 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_0D58
; calls (intra): sub_0176
; calls (inter): KERNEL.ANSIUPPER, KERNEL.LSTRCMP
;----------------------------------------------------------------------
L_2927:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x5c                        ; 83 EC 5C
        mov     ax, word ptr [0x530]            ; A1 30 05
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        lea     ax, [bp - 0x5c]                 ; 8D 46 A4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        jmp     L_2964                          ; EB 1F
L_2945:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, bp                          ; 2B C5
        add     ax, 0x5c                        ; 05 5C 00
        cmp     ax, 0x4f                        ; 3D 4F 00
        jge     L_296D                          ; 7D 1B
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
L_2964:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_2945                          ; 75 D8
L_296D:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_29D7                          ; 74 5B
        lea     ax, [bp - 0x5c]                 ; 8D 46 A4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x62                        ; B8 62 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 04 23 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_29C7                          ; 74 38
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, bp                          ; 2B C5
        add     ax, 0x5c                        ; 05 5C 00
        cmp     ax, 0x4e                        ; 3D 4E 00
        jge     L_29C7                          ; 7D 2B
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x5c          ; 26 C6 07 5C
        jmp     L_29C7                          ; EB 1F
L_29A8:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, bp                          ; 2B C5
        add     ax, 0x5c                        ; 05 5C 00
        cmp     ax, 0x4f                        ; 3D 4F 00
        jge     L_29D0                          ; 7D 1B
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
L_29C7:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_29A8                          ; 75 D8
L_29D0:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
L_29D7:
        mov     word ptr [bp - 0xa], 0xffff     ; C7 46 F6 FF FF
        cmp     byte ptr [bp - 0x5b], 0x3a      ; 80 7E A5 3A
        jne     L_2A2F                          ; 75 4D
        mov     al, byte ptr [bp - 0x5c]        ; 8A 46 A4
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 49 23 00 00 [FIXUP]
        sub     ah, ah                          ; 2A E4
        sub     ax, 0x41                        ; 2D 41 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_29FD:
        mov     ax, word ptr [0x560]            ; A1 60 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_2A13                          ; 7D 0E
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bx + 0x274], ax       ; 39 87 74 02
        jne     L_2A4C                          ; 75 39
L_2A13:
        mov     ax, word ptr [0x560]            ; A1 60 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_2A5F                          ; 7D 44
        mov     ax, word ptr [0x530]            ; A1 30 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        je      L_2A2F                          ; 74 0C
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_23                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2A70                          ; 74 41
L_2A2F:
        cmp     word ptr [bp - 0xa], -1         ; 83 7E F6 FF
        jle     L_2A3B                          ; 7E 06
        cmp     byte ptr [bp - 0x5a], 0         ; 80 7E A6 00
        je      L_2A47                          ; 74 0C
L_2A3B:
        lea     ax, [bp - 0x5c]                 ; 8D 46 A4
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0176                          ; E8 33 D7
        or      ax, ax                          ; 0B C0
        jne     L_2A51                          ; 75 0A
L_2A47:
        mov     ax, 1                           ; B8 01 00
        jmp     L_2A72                          ; EB 26
L_2A4C:
        inc     word ptr [bp - 8]               ; FF 46 F8
        jmp     L_29FD                          ; EB AC
L_2A51:
        cmp     word ptr [bp - 0xa], -1         ; 83 7E F6 FF
        jle     L_2A5F                          ; 7E 08
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_23                   ; 9A 27 2A 00 00 [FIXUP]
L_2A5F:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5c]                 ; 8D 46 A4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_20                   ; 9A ED 26 00 00 [FIXUP]
L_2A70:
        sub     ax, ax                          ; 2B C0
L_2A72:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2A7D -- offset 0x2A7D -- 69 instr
; Funcion mediana (69 instr, 3 calls).
; tags: calls_kernel, calls_user, medium
; callers: sub_2E8F
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, USER.SETSCROLLRANGE
;----------------------------------------------------------------------
L_2A7D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x7c], ax             ; A3 7C 00
        cmp     word ptr [0xc8], 0              ; 83 3E C8 00 00
        jne     L_2A95                          ; 75 03
        jmp     L_2B2D                          ; E9 98 00
L_2A95:
        mov     word ptr [0x186], 0             ; C7 06 86 01 00 00
        cmp     word ptr [0x386], 0             ; 83 3E 86 03 00
        je      L_2AB9                          ; 74 17
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0x342]            ; A1 42 03
        sub     ax, 0xa                         ; 2D 0A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
L_2AB9:
        push    word ptr [0x34c]                ; FF 36 4C 03
        call    far KERNEL.GLOBALLOCK           ; 9A A1 2B 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     dx, word ptr [0xc8]             ; 8B 16 C8 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_2B1C                          ; EB 43
L_2AD9:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2B19                          ; 74 34
        mov     ax, 0x16                        ; B8 16 00
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [0x532]            ; 8B 36 32 05
        imul    word ptr [bx + si]              ; F7 28
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        les     ax, ptr [bp - 4]                ; C4 46 FC
        add     word ptr [bp - 4], 0x16         ; 83 46 FC 16
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     di, ax                          ; 8B F8
        mov     si, dx                          ; 8B F2
        push    ds                              ; 1E
        mov     ds, bx                          ; 8E DB
        mov     cx, 0xb                         ; B9 0B 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     ds                              ; 1F
L_2B19:
        inc     word ptr [bp - 6]               ; FF 46 FA
L_2B1C:
        mov     ax, word ptr [0x182]            ; A1 82 01
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_2AD9                          ; 7C B5
        push    word ptr [0x34c]                ; FF 36 4C 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A 4C 2D 00 00 [FIXUP]
L_2B2D:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2B35 -- offset 0x2B35 -- 202 instr
; Dispatcher: tabla de decisiones cmp+jcc (202 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; callers: sub_2E8F
; calls (intra): sub_0504, sub_0603
; calls (inter): GDI.SETBKMODE, GDI.SETTEXTCOLOR, GDI.TEXTOUT, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LSTRLEN (+1 mas)
;----------------------------------------------------------------------
L_2B35:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x2c                        ; 83 EC 2C
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x3d6]            ; A1 D6 03
        add     ax, 8                           ; 05 08 00
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [0x350]            ; A1 50 03
        add     ax, di                          ; 03 C7
        add     ax, 8                           ; 05 08 00
        mov     word ptr [0x376], ax            ; A3 76 03
        add     ax, di                          ; 03 C7
        mov     word ptr [0x180], ax            ; A3 80 01
        add     ax, di                          ; 03 C7
        mov     word ptr [0x1d2], ax            ; A3 D2 01
        mov     ax, word ptr [0x5b6]            ; A1 B6 05
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x350]            ; 03 06 50 03
        add     ax, 8                           ; 05 08 00
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        cmp     word ptr [0x34c], 0             ; 83 3E 4C 03 00
        jne     L_2B9C                          ; 75 03
        jmp     L_2D50                          ; E9 B4 01
L_2B9C:
        push    word ptr [0x34c]                ; FF 36 4C 03
        call    far KERNEL.GLOBALLOCK           ; 9A 4C 11 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        sub     si, si                          ; 2B F6
        mov     word ptr [bp - 0x26], si        ; 89 76 DA
        jmp     L_2D3E                          ; E9 8B 01
L_2BB3:
        cmp     word ptr [0x186], si            ; 39 36 86 01
        jle     L_2BBC                          ; 7E 03
        jmp     L_2D39                          ; E9 7D 01
L_2BBC:
        mov     ax, word ptr [0x186]            ; A1 86 01
        add     ax, 0xa                         ; 05 0A 00
        cmp     ax, si                          ; 3B C6
        jg      L_2BC9                          ; 7F 03
        jmp     L_2D39                          ; E9 70 01
L_2BC9:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        imul    word ptr [0x382]                ; F7 2E 82 03
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x382]            ; A1 82 03
        mov     bx, cx                          ; 8B D9
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     bx, ax                          ; 03 D8
        mov     word ptr [bp - 8], bx           ; 89 5E F8
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     ax, 9                           ; 05 09 00
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        jmp     L_2C08                          ; EB 07
L_2C01:
        cmp     al, 0x2e                        ; 3C 2E
        je      L_2C15                          ; 74 10
        inc     word ptr [bp - 0x10]            ; FF 46 F0
L_2C08:
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x2c], al        ; 88 46 D4
        or      al, al                          ; 0A C0
        jne     L_2C01                          ; 75 EC
L_2C15:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 0x20]            ; FF 76 E0
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [bp - 0x20]        ; 2B 46 E0
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 61 2C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        jmp     L_2C42                          ; EB 03
L_2C3F:
        inc     word ptr [bp - 4]               ; FF 46 FC
L_2C42:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_2C3F                          ; 75 F4
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, bx                          ; 8B C3
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A B8 2C 00 00 [FIXUP]
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        test    byte ptr es:[bx], 0x10          ; 26 F6 07 10
        je      L_2C83                          ; 74 15
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 0x7e                        ; B8 7E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        jmp     L_2D31                          ; E9 AE 00
L_2C83:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        push    word ptr es:[bx + 5]            ; 26 FF 77 05
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_16                   ; 9A 87 06 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0x376]            ; A1 76 03
        sub     ax, word ptr [bp - 0x2a]        ; 2B 46 D6
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.TEXTOUT                 ; 9A F5 2C 00 00 [FIXUP]
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0504                          ; E8 39 D8
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 0E 2D 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0x180]            ; A1 80 01
        sub     ax, word ptr [bp - 0x2a]        ; 2B 46 D6
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.TEXTOUT                 ; 9A 32 2D 00 00 [FIXUP]
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        push    word ptr es:[bx + 1]            ; 26 FF 77 01
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0603                          ; E8 FB D8
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 36 27 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0x1d2]            ; A1 D2 01
        sub     ax, word ptr [bp - 0x2a]        ; 2B 46 D6
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
L_2D31:
        call    far GDI.TEXTOUT                 ; 9A 4B 03 00 00 [FIXUP]
        inc     word ptr [bp - 0x26]            ; FF 46 DA
L_2D39:
        inc     si                              ; 46
        add     word ptr [bp - 0xc], 0x16       ; 83 46 F4 16
L_2D3E:
        cmp     word ptr [0x342], si            ; 39 36 42 03
        jle     L_2D47                          ; 7E 03
        jmp     L_2BB3                          ; E9 6C FE
L_2D47:
        push    word ptr [0x34c]                ; FF 36 4C 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A D6 12 00 00 [FIXUP]
L_2D50:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2D58 -- offset 0x2D58 -- 88 instr
; Dispatcher: tabla de decisiones cmp+jcc (88 instr).
; tags: calls_user, dispatcher
; callers: sub_2E70, sub_2E8F
; calls (inter): USER.GETCLIENTRECT, USER.SCROLLWINDOW, USER.SETSCROLLPOS, USER.UPDATEWINDOW
;----------------------------------------------------------------------
L_2D58:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     ax, word ptr [0x186]            ; A1 86 01
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        je      L_2D87                          ; 74 16
        cmp     ax, 1                           ; 3D 01 00
        je      L_2D8E                          ; 74 18
        cmp     ax, 2                           ; 3D 02 00
        je      L_2D95                          ; 74 1A
        cmp     ax, 3                           ; 3D 03 00
        je      L_2D9C                          ; 74 1C
        cmp     ax, 4                           ; 3D 04 00
        je      L_2DA3                          ; 74 1E
        jmp     L_2DAD                          ; EB 26
L_2D87:
        mov     word ptr [bp - 0xc], 0xffff     ; C7 46 F4 FF FF
        jmp     L_2DAD                          ; EB 1F
L_2D8E:
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        jmp     L_2DAD                          ; EB 18
L_2D95:
        mov     word ptr [bp - 0xc], 0xfff6     ; C7 46 F4 F6 FF
        jmp     L_2DAD                          ; EB 11
L_2D9C:
        mov     word ptr [bp - 0xc], 0xa        ; C7 46 F4 0A 00
        jmp     L_2DAD                          ; EB 0A
L_2DA3:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0x186]            ; 2B 06 86 01
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_2DAD:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [0x186], ax            ; 01 06 86 01
        mov     si, word ptr [0x342]            ; 8B 36 42 03
        sub     si, 0xa                         ; 83 EE 0A
        cmp     word ptr [0x186], si            ; 39 36 86 01
        jle     L_2DC5                          ; 7E 04
        mov     word ptr [0x186], si            ; 89 36 86 01
L_2DC5:
        cmp     word ptr [0x186], 0             ; 83 3E 86 01 00
        jge     L_2DD2                          ; 7D 06
        mov     word ptr [0x186], 0             ; C7 06 86 01 00 00
L_2DD2:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [0x186]            ; 2B 06 86 01
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        je      L_2E43                          ; 74 63
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x382]            ; A1 82 03
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x382]                ; F7 2E 82 03
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x186]                ; FF 36 86 01
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        imul    word ptr [0x382]                ; F7 2E 82 03
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCROLLWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
L_2E43:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2E4A -- offset 0x2E4A -- 16 instr
; Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_2E8F
;----------------------------------------------------------------------
L_2E4A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_2E97                          ; 74 42
        cmp     ax, 0x1b                        ; 3D 1B 00
        je      L_2E97                          ; 74 3D
        cmp     ax, 0x21                        ; 3D 21 00
        je      L_2E70                          ; 74 11
        cmp     ax, 0x22                        ; 3D 22 00
        je      L_2E80                          ; 74 1C
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_2E88                          ; 74 1F
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_2E8F                          ; 74 21
        jmp     L_2E9F                          ; EB 2F
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2E70 -- offset 0x2E70 -- 8 instr
; Wrapper que delega en sub_2D58.
; tags: wrapper
; calls (intra): sub_2D58
;----------------------------------------------------------------------
L_2E70:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 2                           ; B8 02 00
L_2E76:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_2D58                          ; E8 DA FE
        jmp     L_2E9F                          ; EB 1F
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2E80 -- offset 0x2E80 -- 6 instr
; Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------
L_2E80:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 3                           ; B8 03 00
        jmp     L_2E76                          ; EB EE
L_2E88:
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        jmp     L_2E76                          ; EB E7
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2E8F -- offset 0x2E8F -- 319 instr
; Dispatcher: tabla de decisiones cmp+jcc (319 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_1067, sub_2A7D, sub_2B35, sub_2D58, sub_2E4A, sub_3A4F
; calls (inter): GDI.CREATEDC, GDI.DELETEDC, GDI.GETDEVICECAPS, GDI.GETTEXTMETRICS, KERNEL.GETPROFILESTRING, KERNEL.GLOBALFREE (+9 mas)
;----------------------------------------------------------------------
L_2E8F:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        jmp     L_2E76                          ; EB DF
L_2E97:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
L_2E9F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x24                        ; 83 EC 24
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 1                           ; 3D 01 00
        je      L_2EDF                          ; 74 25
        cmp     ax, 2                           ; 3D 02 00
        je      L_2F0D                          ; 74 4E
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_2EC7                          ; 75 03
        jmp     L_2F4B                          ; E9 84 00
L_2EC7:
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_2F3E                          ; 74 72
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_2ED4                          ; 75 03
        jmp     L_2F81                          ; E9 AD 00
L_2ED4:
        cmp     ax, 0x115                       ; 3D 15 01
        jne     L_2EDC                          ; 75 03
        jmp     L_2F70                          ; E9 94 00
L_2EDC:
        jmp     L_2F8D                          ; E9 AE 00
L_2EDF:
        push    word ptr [0x346]                ; FF 36 46 03
        call    far USER.GETMENU                ; 9A 12 2F 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, 0x3b                        ; B8 3B 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 22 2F 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_2A7D                          ; E8 7E FB
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETFOCUS               ; 9A 00 09 00 00 [FIXUP]
L_2F07:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_2FA1                          ; E9 94 00
L_2F0D:
        push    word ptr [0x346]                ; FF 36 46 03
        call    far USER.GETMENU                ; 9A F3 22 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, 0x3b                        ; B8 3B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x34c], 0             ; 83 3E 4C 03 00
        je      L_2F36                          ; 74 09
        push    word ptr [0x34c]                ; FF 36 4C 03
        call    far KERNEL.GLOBALFREE           ; 9A DF 12 00 00 [FIXUP]
L_2F36:
        mov     word ptr [0x7c], 0              ; C7 06 7C 00 00 00
        jmp     L_2F07                          ; EB C9
L_2F3E:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_26                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_2F07                          ; EB BC
L_2F4B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    L_2B35                          ; E8 D4 FB
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_2F07                          ; EB 97
L_2F70:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_2D58                          ; E8 D9 FD
        jmp     L_2F07                          ; EB 86
L_2F81:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_2E4A                          ; E8 C0 FE
        jmp     L_2F07                          ; E9 7A FF
L_2F8D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
L_2FA1:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xf6                        ; 81 EC F6 00
        push    si                              ; 56
        mov     word ptr [bp - 0x60], 0         ; C7 46 A0 00 00
        mov     byte ptr [bp - 6], 0xc          ; C6 46 FA 0C
L_2FC4:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xf6], al        ; 88 86 0A FF
        cmp     al, 0x20                        ; 3C 20
        je      L_2FD5                          ; 74 04
        cmp     al, 0x2c                        ; 3C 2C
        jne     L_2FDA                          ; 75 05
L_2FD5:
        inc     word ptr [bp + 6]               ; FF 46 06
        jmp     L_2FC4                          ; EB EA
L_2FDA:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_2FE7                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_33AA                          ; E9 C3 03
L_2FE7:
        mov     ax, 0xd4                        ; B8 D4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xf4                        ; B8 F4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xab                        ; B8 AB 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xea]                 ; 8D 86 16 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xea]                 ; 8D 86 16 FF
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
        mov     word ptr [bp - 0x68], ss        ; 8C 56 98
        jmp     L_301B                          ; EB 0A
L_3011:
        cmp     byte ptr [bp - 0xf6], 0x2c      ; 80 BE 0A FF 2C
        je      L_3029                          ; 74 11
        inc     word ptr [bp - 0x6a]            ; FF 46 96
L_301B:
        les     bx, ptr [bp - 0x6a]             ; C4 5E 96
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xf6], al        ; 88 86 0A FF
        or      al, al                          ; 0A C0
        jne     L_3011                          ; 75 E8
L_3029:
        les     bx, ptr [bp - 0x6a]             ; C4 5E 96
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_3048                          ; 74 16
        inc     word ptr [bp - 0x6a]            ; FF 46 96
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_3048                          ; EB 0D
L_303B:
        mov     al, byte ptr [bp - 0xf6]        ; 8A 86 0A FF
        cwde                                    ; 98
        cmp     ax, 0x20                        ; 3D 20 00
        ja      L_3056                          ; 77 11
        inc     word ptr [bp - 0x6a]            ; FF 46 96
L_3048:
        les     bx, ptr [bp - 0x6a]             ; C4 5E 96
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xf6], al        ; 88 86 0A FF
        or      al, al                          ; 0A C0
        jne     L_303B                          ; 75 E5
L_3056:
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        mov     dx, word ptr [bp - 0x68]        ; 8B 56 98
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     word ptr [bp - 0x5a], dx        ; 89 56 A6
        jmp     L_3078                          ; EB 14
L_3064:
        cmp     byte ptr [bp - 0xf6], 0x2c      ; 80 BE 0A FF 2C
        je      L_3086                          ; 74 1B
        mov     al, byte ptr [bp - 0xf6]        ; 8A 86 0A FF
        cwde                                    ; 98
        cmp     ax, 0x20                        ; 3D 20 00
        jbe     L_3086                          ; 76 11
        inc     word ptr [bp - 0x6a]            ; FF 46 96
L_3078:
        les     bx, ptr [bp - 0x6a]             ; C4 5E 96
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xf6], al        ; 88 86 0A FF
        or      al, al                          ; 0A C0
        jne     L_3064                          ; 75 DE
L_3086:
        les     bx, ptr [bp - 0x6a]             ; C4 5E 96
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_30A9                          ; 74 1A
        inc     word ptr [bp - 0x6a]            ; FF 46 96
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_30A9                          ; EB 11
L_3098:
        mov     al, byte ptr [bp - 0xf6]        ; 8A 86 0A FF
        cwde                                    ; 98
        cmp     ax, 0x20                        ; 3D 20 00
        jbe     L_30A6                          ; 76 04
        cmp     al, 0x2c                        ; 3C 2C
        jne     L_30B7                          ; 75 11
L_30A6:
        inc     word ptr [bp - 0x6a]            ; FF 46 96
L_30A9:
        les     bx, ptr [bp - 0x6a]             ; C4 5E 96
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xf6], al        ; 88 86 0A FF
        or      al, al                          ; 0A C0
        jne     L_3098                          ; 75 E1
L_30B7:
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        mov     dx, word ptr [bp - 0x68]        ; 8B 56 98
        mov     word ptr [bp - 0xf0], ax        ; 89 86 10 FF
        mov     word ptr [bp - 0xee], dx        ; 89 96 12 FF
        jmp     L_30D4                          ; EB 0D
L_30C7:
        mov     al, byte ptr [bp - 0xf6]        ; 8A 86 0A FF
        cwde                                    ; 98
        cmp     ax, 0x20                        ; 3D 20 00
        jbe     L_30E2                          ; 76 11
        inc     word ptr [bp - 0x6a]            ; FF 46 96
L_30D4:
        les     bx, ptr [bp - 0x6a]             ; C4 5E 96
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xf6], al        ; 88 86 0A FF
        or      al, al                          ; 0A C0
        jne     L_30C7                          ; 75 E5
L_30E2:
        les     bx, ptr [bp - 0x6a]             ; C4 5E 96
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        les     bx, ptr [bp - 0x5c]             ; C4 5E A4
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_3121                          ; 74 2F
        cmp     byte ptr [bp - 0xea], 0         ; 80 BE 16 FF 00
        je      L_3121                          ; 74 28
        les     bx, ptr [bp - 0xf0]             ; C4 9E 10 FF
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_3121                          ; 74 1E
        push    word ptr [bp - 0x5a]            ; FF 76 A6
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        lea     ax, [bp - 0xea]                 ; 8D 86 16 FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    es                              ; 06
        push    bx                              ; 53
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        or      ax, ax                          ; 0B C0
        jne     L_3134                          ; 75 13
L_3121:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 82 33 00 00 [FIXUP]
        jmp     L_33AA                          ; E9 76 02
L_3134:
        push    word ptr [bp - 0x64]            ; FF 76 9C
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        add     ax, word ptr [bp - 0x22]        ; 03 46 DE
        mov     word ptr [0x378], ax            ; A3 78 03
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     word ptr [0x2f4], ax            ; A3 F4 02
        push    word ptr [bp - 0x64]            ; FF 76 9C
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xf4], ax        ; 89 86 0C FF
        cdq                                     ; 99
        mov     cx, word ptr [0x378]            ; 8B 0E 78 03
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0xec], ax        ; 89 86 14 FF
        mov     word ptr [0x4a2], 0             ; C7 06 A2 04 00 00
        mov     word ptr [0x388], 0             ; C7 06 88 03 00 00
        push    word ptr [0x346]                ; FF 36 46 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A D4 31 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
L_3186:
        call    L_1067                          ; E8 DE DE
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_31C4                          ; 74 30
        cmp     word ptr [0x4a2], 0             ; 83 3E A2 04 00
        jne     L_320F                          ; 75 74
        push    word ptr [0x1da]                ; FF 36 DA 01
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x346]                ; FF 36 46 03
        push    word ptr [0x2a2]                ; FF 36 A2 02
        push    word ptr [0x2a0]                ; FF 36 A0 02
        call    far USER.CREATEDIALOG           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x4a2], ax            ; A3 A2 04
        or      ax, ax                          ; 0B C0
        jne     L_31F6                          ; 75 39
        mov     ax, 0xfffb                      ; B8 FB FF
L_31C0:
        push    ax                              ; 50
        call    L_3A4F                          ; E8 8B 08
L_31C4:
        cmp     word ptr [0x388], 0             ; 83 3E 88 03 00
        jne     L_31E8                          ; 75 1D
        push    word ptr [0x346]                ; FF 36 46 03
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FD 09 00 00 [FIXUP]
        cmp     word ptr [0x4a2], 0             ; 83 3E A2 04 00
        je      L_31E8                          ; 74 09
        push    word ptr [0x4a2]                ; FF 36 A2 04
        call    far USER.DESTROYWINDOW          ; 9A 9B 2E 00 00 [FIXUP]
L_31E8:
        push    word ptr [bp - 0x64]            ; FF 76 9C
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x60]        ; 8B 46 A0
        jmp     L_33AA                          ; E9 B4 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_31F6 -- offset 0x31F6 -- 124 instr
; Dispatcher: tabla de decisiones cmp+jcc (124 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; calls (intra): sub_33B6
; calls (inter): GDI.ESCAPE, KERNEL.ANSIPREV, KERNEL.LSTRCAT, KERNEL.LSTRCPY, KERNEL.LSTRLEN, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_31F6:
        push    word ptr [bp - 0x64]            ; FF 76 9C
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x5b0]                ; FF 36 B0 05
        push    word ptr [0x5ae]                ; FF 36 AE 05
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A E6 32 00 00 [FIXUP]
L_320F:
        push    word ptr [0x4a2]                ; FF 36 A2 04
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 59 24 00 00 [FIXUP]
        lea     ax, [bp - 0xea]                 ; 8D 86 16 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1ee                       ; B8 EE 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 01 25 00 00 [FIXUP]
        lea     ax, [bp - 0xea]                 ; 8D 86 16 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xac                        ; B8 AC 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A C4 32 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 95 32 00 00 [FIXUP]
        add     ax, word ptr [bp + 6]           ; 03 46 06
        dec     ax                              ; 48
        jmp     L_326C                          ; EB 1B
L_3251:
        cmp     byte ptr [bp - 0xf6], 0x3a      ; 80 BE 0A FF 3A
        je      L_327B                          ; 74 23
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0x5e], ax        ; 39 46 A2
        jbe     L_327B                          ; 76 1B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x5e]        ; 8B 46 A2
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
L_326C:
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xf6], al        ; 88 86 0A FF
        cmp     al, 0x5c                        ; 3C 5C
        jne     L_3251                          ; 75 D6
L_327B:
        mov     bx, word ptr [bp - 0x5e]        ; 8B 5E A2
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xf6], al        ; 88 86 0A FF
        cmp     al, 0x3a                        ; 3C 3A
        je      L_328C                          ; 74 04
        cmp     al, 0x5c                        ; 3C 5C
        jne     L_328F                          ; 75 03
L_328C:
        inc     word ptr [bp - 0x5e]            ; FF 46 A2
L_328F:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A A2 32 00 00 [FIXUP]
        lea     cx, [bp - 0xea]                 ; 8D 8E 16 FF
        push    ss                              ; 16
        push    cx                              ; 51
        mov     si, ax                          ; 8B F0
        call    far KERNEL.LSTRLEN              ; 9A D6 32 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        cmp     ax, 0x80                        ; 3D 80 00
        jl      L_32B8                          ; 7C 0B
        lea     ax, [bp - 0xea]                 ; 8D 86 16 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x5e]        ; 8B 46 A2
        jmp     L_32C1                          ; EB 09
L_32B8:
        lea     ax, [bp - 0xea]                 ; 8D 86 16 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
L_32C1:
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 7B 1F 00 00 [FIXUP]
        push    word ptr [bp - 0x64]            ; FF 76 9C
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        lea     ax, [bp - 0xea]                 ; 8D 86 16 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A D1 2C 00 00 [FIXUP]
        push    ax                              ; 50
        lea     ax, [bp - 0xea]                 ; 8D 86 16 FF
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 36 33 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_32F4                          ; 7D 03
        jmp     L_31C0                          ; E9 CC FE
L_32F4:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
L_32FA:
        mov     bx, word ptr [bp - 0x5e]        ; 8B 5E A2
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_3349                          ; 74 47
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xf6], al        ; 88 86 0A FF
        cmp     al, 0x2a                        ; 3C 2A
        je      L_3310                          ; 74 04
        cmp     al, 0x3f                        ; 3C 3F
        jne     L_3344                          ; 75 34
L_3310:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x64]            ; FF 76 9C
        push    word ptr [bp - 0xec]            ; FF B6 14 FF
        call    L_33B6                          ; E8 99 00
L_331D:
        cmp     word ptr [0x388], 0             ; 83 3E 88 03 00
        je      L_3327                          ; 74 03
        jmp     L_31C4                          ; E9 9D FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3327 -- offset 0x3327 -- 63 instr
; Funcion mediana (63 instr, 3 calls).
; tags: calls_gdi, far, medium
; calls (intra): sub_0016, sub_369E
; calls (inter): GDI.ESCAPE
;----------------------------------------------------------------------
L_3327:
        push    word ptr [bp - 0x64]            ; FF 76 9C
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x62]        ; 8B 46 9E
        mov     word ptr [bp + 6], ax           ; 89 46 06
        push    ax                              ; 50
        jmp     L_3186                          ; E9 42 FE
L_3344:
        inc     word ptr [bp - 0x5e]            ; FF 46 A2
        jmp     L_32FA                          ; EB B1
L_3349:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     word ptr [bp - 0x5e]            ; FF 4E A2
        mov     bx, word ptr [bp - 0x5e]        ; 8B 5E A2
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xf6], al        ; 88 86 0A FF
        cmp     al, 0x5c                        ; 3C 5C
        je      L_338E                          ; 74 32
        cmp     al, 0x3a                        ; 3C 3A
        je      L_338E                          ; 74 2E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0016                          ; E8 A5 CC
        or      ax, ax                          ; 0B C0
        je      L_3388                          ; 74 13
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 6C 2A 00 00 [FIXUP]
        jmp     L_331D                          ; EB 95
L_3388:
        test    byte ptr [bp - 0x41], 0x10      ; F6 46 BF 10
        je      L_3310                          ; 74 82
L_338E:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x64]            ; FF 76 9C
        push    word ptr [bp - 0xec]            ; FF B6 14 FF
        call    L_369E                          ; E8 03 03
        or      ax, ax                          ; 0B C0
        jne     L_33A2                          ; 75 03
        jmp     L_331D                          ; E9 7B FF
L_33A2:
        mov     word ptr [bp - 0x60], 1         ; C7 46 A0 01 00
        jmp     L_331D                          ; E9 73 FF
L_33AA:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_33B6 -- offset 0x33B6 -- 234 instr
; Dispatcher: tabla de decisiones cmp+jcc (234 instr).
; tags: calls_gdi, calls_kernel, dispatcher
; callers: sub_31F6
; calls (intra): sub_0016, sub_1048, sub_1CAF
; calls (inter): GDI.ESCAPE, GDI.TEXTOUT, KERNEL.GETLASTDISKCHANGE, KERNEL.LSTRCPY, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_33B6:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1ca                       ; 81 EC CA 01
        push    si                              ; 56
        call    far KERNEL.GETLASTDISKCHANGE    ; 9A 5E 24 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_33CD                          ; 74 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1048                          ; E8 7B DC
L_33CD:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x1c2]                ; 8D 86 3E FE
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1CAF                          ; E8 D0 E8
        lea     ax, [bp - 0x1c2]                ; 8D 86 3E FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 4A 37 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0016                          ; E8 18 CC
        mov     word ptr [bp - 0x1c6], ax       ; 89 86 3A FE
        or      ax, ax                          ; 0B C0
        jne     L_3409                          ; 75 03
        jmp     L_368D                          ; E9 84 02
L_3409:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 2D 31 00 00 [FIXUP]
        jmp     L_368D                          ; E9 70 02
L_341D:
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A 73 34 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        lea     cx, [bp - 0x1c2]                ; 8D 8E 3E FE
        add     ax, cx                          ; 03 C1
        mov     dx, ss                          ; 8C D2
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 2D 32 00 00 [FIXUP]
        lea     ax, [bp - 0x1c2]                ; 8D 86 3E FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x1c2]                ; 8D 86 3E FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A DA 14 00 00 [FIXUP]
        lea     ax, [bp - 0x1c2]                ; 8D 86 3E FE
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LOPEN               ; 9A 12 15 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c4], ax       ; 89 86 3C FE
        lea     ax, [bp - 0x1c2]                ; 8D 86 3E FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x1c2]                ; 8D 86 3E FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A 3B 21 00 00 [FIXUP]
        mov     word ptr [bp - 0x1ca], 0        ; C7 86 36 FE 00 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_363C                          ; E9 B2 01
L_348A:
        cmp     word ptr [bp - 6], -1           ; 83 7E FA FF
        jne     L_3493                          ; 75 03
        jmp     L_3659                          ; E9 C6 01
L_3493:
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        mov     byte ptr [bp + si - 0x136], 0   ; C6 82 CA FE 00
        lea     ax, [bp - 0x136]                ; 8D 86 CA FE
        mov     word ptr [bp - 0x13c], ax       ; 89 86 C4 FE
        mov     word ptr [bp - 0x13a], ss       ; 8C 96 C6 FE
        mov     word ptr [bp - 0x1c8], 0        ; C7 86 38 FE 00 00
L_34AD:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_34B6                          ; 75 03
        jmp     L_363C                          ; E9 86 01
L_34B6:
        mov     ax, word ptr [bp - 0x13c]       ; 8B 86 C4 FE
        mov     dx, word ptr [bp - 0x13a]       ; 8B 96 C6 FE
        mov     word ptr [bp - 0x140], ax       ; 89 86 C0 FE
        mov     word ptr [bp - 0x13e], dx       ; 89 96 C2 FE
L_34C6:
        les     bx, ptr [bp - 0x140]            ; C4 9E C0 FE
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x138], al       ; 88 86 C8 FE
        or      al, al                          ; 0A C0
        je      L_351A                          ; 74 45
        cmp     al, 0xa                         ; 3C 0A
        je      L_351A                          ; 74 41
        cmp     al, 9                           ; 3C 09
        jne     L_3513                          ; 75 36
        mov     ax, word ptr [bp - 0x1ca]       ; 8B 86 36 FE
        cdq                                     ; 99
        mov     cx, word ptr [0x2f4]            ; 8B 0E F4 02
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp - 0x1c8]       ; 03 86 38 FE
        or      ax, 0xfff8                      ; 0D F8 FF
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0xb6], ax        ; 89 86 4A FF
L_34F5:
        mov     ax, word ptr [bp - 0xb6]        ; 8B 86 4A FF
        dec     word ptr [bp - 0xb6]            ; FF 8E 4A FF
        or      ax, ax                          ; 0B C0
        jne     L_3504                          ; 75 03
        jmp     L_35C1                          ; E9 BD 00
L_3504:
        mov     si, word ptr [bp - 0x1c8]       ; 8B B6 38 FE
        inc     word ptr [bp - 0x1c8]           ; FF 86 38 FE
        mov     byte ptr [bp + si - 0xb4], 0x20 ; C6 82 4C FF 20
        jmp     L_34F5                          ; EB E2
L_3513:
        cmp     byte ptr [bp - 0x138], 0x1a     ; 80 BE C8 FE 1A
        jne     L_3595                          ; 75 7B
L_351A:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x1ca]           ; FF B6 36 FE
        push    word ptr [bp - 2]               ; FF 76 FE
        lea     ax, [bp - 0xb4]                 ; 8D 86 4C FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x1c8]           ; FF B6 38 FE
        call    far GDI.TEXTOUT                 ; 9A DE 35 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1c8]       ; 8B 86 38 FE
        imul    word ptr [0x2f4]                ; F7 2E F4 02
        add     word ptr [bp - 0x1ca], ax       ; 01 86 36 FE
        mov     word ptr [bp - 0x1c8], 0        ; C7 86 38 FE 00 00
        cmp     byte ptr [bp - 0x138], 0xa      ; 80 BE C8 FE 0A
        je      L_354F                          ; 74 03
        jmp     L_3602                          ; E9 B3 00
L_354F:
        mov     ax, word ptr [0x378]            ; A1 78 03
        add     word ptr [bp - 2], ax           ; 01 46 FE
        mov     word ptr [bp - 0x1ca], 0        ; C7 86 36 FE 00 00
        inc     word ptr [bp - 0x140]           ; FF 86 C0 FE
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        je      L_356D                          ; 74 03
        jmp     L_3602                          ; E9 95 00
L_356D:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 68 36 00 00 [FIXUP]
        mov     word ptr [bp - 0x142], ax       ; 89 86 BE FE
        or      ax, ax                          ; 0B C0
        jge     L_35FB                          ; 7D 69
        jmp     L_3674                          ; E9 DF 00
L_3595:
        cmp     byte ptr [bp - 0x138], 0xc      ; 80 BE C8 FE 0C
        jne     L_35AB                          ; 75 0F
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     ax                              ; 48
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     byte ptr [bp - 0x138], 0xa      ; C6 86 C8 FE 0A
        jmp     L_351A                          ; E9 6F FF
L_35AB:
        mov     al, byte ptr [bp - 0x138]       ; 8A 86 C8 FE
        cwde                                    ; 98
        cmp     ax, 0x20                        ; 3D 20 00
        jb      L_35C1                          ; 72 0C
        mov     si, word ptr [bp - 0x1c8]       ; 8B B6 38 FE
        inc     word ptr [bp - 0x1c8]           ; FF 86 38 FE
        mov     byte ptr [bp + si - 0xb4], al   ; 88 82 4C FF
L_35C1:
        cmp     word ptr [bp - 0x1c8], 0x80     ; 81 BE 38 FE 80 00
        jne     L_35F4                          ; 75 2B
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x1ca]           ; FF B6 36 FE
        push    word ptr [bp - 2]               ; FF 76 FE
        lea     ax, [bp - 0xb4]                 ; 8D 86 4C FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 2D 2C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1c8]       ; 8B 86 38 FE
        imul    word ptr [0x2f4]                ; F7 2E F4 02
        add     word ptr [bp - 0x1ca], ax       ; 01 86 36 FE
        mov     word ptr [bp - 0x1c8], 0        ; C7 86 38 FE 00 00
L_35F4:
        inc     word ptr [bp - 0x140]           ; FF 86 C0 FE
        jmp     L_34C6                          ; E9 CB FE
L_35FB:
        cmp     word ptr [0x388], 0             ; 83 3E 88 03 00
        jne     L_3678                          ; 75 76
L_3602:
        mov     ax, word ptr [bp - 0x140]       ; 8B 86 C0 FE
        sub     ax, word ptr [bp - 0x13c]       ; 2B 86 C4 FE
        sub     word ptr [bp - 6], ax           ; 29 46 FA
        mov     ax, word ptr [bp - 0x140]       ; 8B 86 C0 FE
        mov     dx, word ptr [bp - 0x13e]       ; 8B 96 C2 FE
        mov     word ptr [bp - 0x13c], ax       ; 89 86 C4 FE
        mov     word ptr [bp - 0x13a], dx       ; 89 96 C6 FE
        les     bx, ptr [bp - 0x140]            ; C4 9E C0 FE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_362D                          ; 75 06
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_3659                          ; 75 2C
L_362D:
        les     bx, ptr [bp - 0x140]            ; C4 9E C0 FE
        cmp     byte ptr es:[bx], 0x1a          ; 26 80 3F 1A
        je      L_363A                          ; 74 03
        jmp     L_34AD                          ; E9 73 FE
L_363A:
        jmp     L_3659                          ; EB 1D
L_363C:
        push    word ptr [bp - 0x1c4]           ; FF B6 3C FE
        lea     ax, [bp - 0x136]                ; 8D 86 CA FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x7f                        ; B8 7F 00
        push    ax                              ; 50
        call    far KERNEL._LREAD               ; 9A 68 15 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jbe     L_3659                          ; 76 03
        jmp     L_348A                          ; E9 31 FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3659 -- offset 0x3659 -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: calls_gdi, small
; calls (intra): sub_005A, sub_3A4F
; calls (inter): GDI.ESCAPE
;----------------------------------------------------------------------
L_3659:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 0B 32 00 00 [FIXUP]
        mov     word ptr [bp - 0x142], ax       ; 89 86 BE FE
        or      ax, ax                          ; 0B C0
        jge     L_3678                          ; 7D 04
L_3674:
        push    ax                              ; 50
        call    L_3A4F                          ; E8 D7 03
L_3678:
        push    word ptr [bp - 0x1c4]           ; FF B6 3C FE
        call    far KERNEL._LCLOSE              ; 9A 4A 15 00 00 [FIXUP]
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_005A                          ; E8 D1 C9
        mov     word ptr [bp - 0x1c6], ax       ; 89 86 3A FE
L_368D:
        cmp     word ptr [bp - 0x1c6], 0        ; 83 BE 3A FE 00
        jne     L_3697                          ; 75 03
        jmp     L_341D                          ; E9 86 FD
L_3697:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_369E -- offset 0x369E -- 156 instr
; Dispatcher: tabla de decisiones cmp+jcc (156 instr).
; tags: calls_kernel, dispatcher
; callers: sub_3327
; calls (intra): sub_17F4, sub_1841, sub_3863
; calls (inter): KERNEL.GETPROFILESTRING, KERNEL.LOCALALLOC, KERNEL.LOCALFREE, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_369E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x110                       ; 81 EC 10 01
        push    si                              ; 56
        mov     word ptr [bp - 0x106], 0        ; C7 86 FA FE 00 00
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        mov     word ptr [bp - 0x10a], ax       ; 89 86 F6 FE
        mov     word ptr [bp - 0x108], ss       ; 8C 96 F8 FE
        jmp     L_36DB                          ; EB 21
L_36BA:
        mov     ax, word ptr [bp - 0x10a]       ; 8B 86 F6 FE
        sub     ax, bp                          ; 2B C5
        add     ax, 0x82                        ; 05 82 00
        cmp     ax, 0x7b                        ; 3D 7B 00
        jge     L_36E3                          ; 7D 1B
        les     bx, ptr [bp - 0x10a]            ; C4 9E F6 FE
        inc     word ptr [bp - 0x10a]           ; FF 86 F6 FE
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
L_36DB:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_36BA                          ; 75 D7
L_36E3:
        les     bx, ptr [bp - 0x10a]            ; C4 9E F6 FE
        cmp     byte ptr es:[bx - 1], 0x5c      ; 26 80 7F FF 5C
        je      L_36FD                          ; 74 0F
        cmp     byte ptr es:[bx - 1], 0x3a      ; 26 80 7F FF 3A
        je      L_36FD                          ; 74 08
        inc     word ptr [bp - 0x10a]           ; FF 86 F6 FE
        mov     byte ptr es:[bx], 0x5c          ; 26 C6 07 5C
L_36FD:
        les     bx, ptr [bp - 0x10a]            ; C4 9E F6 FE
        inc     word ptr [bp - 0x10a]           ; FF 86 F6 FE
        mov     byte ptr es:[bx], 0x2a          ; 26 C6 07 2A
        mov     bx, word ptr [bp - 0x10a]       ; 8B 9E F6 FE
        inc     word ptr [bp - 0x10a]           ; FF 86 F6 FE
        mov     byte ptr es:[bx], 0x2e          ; 26 C6 07 2E
        mov     bx, word ptr [bp - 0x10a]       ; 8B 9E F6 FE
        inc     word ptr [bp - 0x10a]           ; FF 86 F6 FE
        mov     byte ptr es:[bx], 0x2a          ; 26 C6 07 2A
        mov     bx, word ptr [bp - 0x10a]       ; 8B 9E F6 FE
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_17F4                          ; E8 BC E0
        or      ax, ax                          ; 0B C0
        jne     L_3743                          ; 75 07
L_373C:
        mov     ax, word ptr [bp - 0x106]       ; 8B 86 FA FE
        jmp     L_385C                          ; E9 19 01
L_3743:
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 47 32 00 00 [FIXUP]
        sub     ax, 3                           ; 2D 03 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 3                           ; 3D 03 00
        jle     L_375C                          ; 7E 03
        dec     word ptr [bp - 2]               ; FF 4E FE
L_375C:
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_1841                          ; E8 D9 E0
        or      ax, ax                          ; 0B C0
        jne     L_3771                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_3773                          ; EB 02
L_3771:
        sub     ax, ax                          ; 2B C0
L_3773:
        mov     word ptr [bp - 0x106], ax       ; 89 86 FA FE
        or      ax, ax                          ; 0B C0
        jne     L_377E                          ; 75 03
        jmp     L_3850                          ; E9 D2 00
L_377E:
        mov     word ptr [0xb2], 1              ; C7 06 B2 00 01 00
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_28                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x182], 0             ; C7 06 82 01 00 00
        cmp     word ptr [0x1dc], 0             ; 83 3E DC 01 00
        je      L_37D4                          ; 74 33
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 2E 20 00 00 [FIXUP]
        mov     word ptr [bp - 0x84], ax        ; 89 86 7C FF
        or      ax, ax                          ; 0B C0
        je      L_37D4                          ; 74 1E
        mov     ax, 0xd4                        ; B8 D4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x104                       ; B8 04 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x84]        ; 8B 86 7C FF
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 01 30 00 00 [FIXUP]
L_37D4:
        cmp     word ptr [0xc8], 0              ; 83 3E C8 00 00
        je      L_3839                          ; 74 5E
        mov     dx, word ptr [0xc8]             ; 8B 16 C8 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x110], ax       ; 89 86 F0 FE
        mov     word ptr [bp - 0x10e], dx       ; 89 96 F2 FE
        mov     word ptr [bp - 0x10c], ax       ; 89 86 F4 FE
        jmp     L_3830                          ; EB 41
L_37EF:
        les     bx, ptr [bp - 0x110]            ; C4 9E F0 FE
        test    byte ptr es:[bx], 0x10          ; 26 F6 07 10
        jne     L_3814                          ; 75 1B
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 9                           ; 05 09 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x534                       ; B8 34 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x84]            ; FF B6 7C FF
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_3827                          ; 74 13
L_3814:
        mov     si, 0x182                       ; BE 82 01
        mov     bx, word ptr [si]               ; 8B 1C
        inc     word ptr [si]                   ; FF 04
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [0x532]            ; 8B 36 32 05
        mov     ax, word ptr [bp - 0x10c]       ; 8B 86 F4 FE
        mov     word ptr [bx + si], ax          ; 89 00
L_3827:
        add     word ptr [bp - 0x110], 0x16     ; 83 86 F0 FE 16
        inc     word ptr [bp - 0x10c]           ; FF 86 F4 FE
L_3830:
        mov     ax, word ptr [0x1d6]            ; A1 D6 01
        cmp     word ptr [bp - 0x10c], ax       ; 39 86 F4 FE
        jl      L_37EF                          ; 7C B6
L_3839:
        cmp     word ptr [0x1dc], 0             ; 83 3E DC 01 00
        je      L_3850                          ; 74 10
        cmp     word ptr [bp - 0x84], 0         ; 83 BE 7C FF 00
        je      L_3850                          ; 74 09
        push    word ptr [bp - 0x84]            ; FF B6 7C FF
        call    far KERNEL.LOCALFREE            ; 9A 7E 22 00 00 [FIXUP]
L_3850:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_3863                          ; E8 0A 00
        jmp     L_373C                          ; E9 E0 FE
L_385C:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3863 -- offset 0x3863 -- 172 instr
; Dispatcher: tabla de decisiones cmp+jcc (172 instr).
; tags: calls_gdi, calls_kernel, dispatcher
; callers: sub_369E
; calls (intra): sub_0504, sub_0603
; calls (inter): GDI.ESCAPE, GDI.TEXTOUT, KERNEL.LSTRCAT, KERNEL.LSTRCPY, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_3863:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xb0                        ; 81 EC B0 00
        push    si                              ; 56
        cmp     word ptr [0xc8], 0              ; 83 3E C8 00 00
        jne     L_3875                          ; 75 03
        jmp     L_3A48                          ; E9 D3 01
L_3875:
        mov     dx, word ptr [0xc8]             ; 8B 16 C8 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x9c], ax        ; 89 86 64 FF
        mov     word ptr [bp - 0x9a], dx        ; 89 96 66 FF
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 0xac], ax        ; 89 86 54 FF
        jmp     L_3A1D                          ; E9 8D 01
L_3890:
        mov     ax, 0x16                        ; B8 16 00
        mov     bx, word ptr [bp - 0xac]        ; 8B 9E 54 FF
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [0x532]            ; 8B 36 32 05
        imul    word ptr [bx + si]              ; F7 28
        add     ax, word ptr [bp - 0x9c]        ; 03 86 64 FF
        mov     dx, word ptr [bp - 0x9a]        ; 8B 96 66 FF
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        mov     word ptr [bp - 0xae], dx        ; 89 96 52 FF
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xb0]        ; 8B 86 50 FF
        add     ax, 9                           ; 05 09 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A F4 38 00 00 [FIXUP]
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [0xb0]             ; A1 B0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 3D 32 00 00 [FIXUP]
        les     bx, ptr [bp - 0xb0]             ; C4 9E 50 FF
        test    byte ptr es:[bx], 0x10          ; 26 F6 07 10
        je      L_38E9                          ; 74 0C
        lea     ax, [bp - 0x7e]                 ; 8D 46 82
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xb4                        ; B8 B4 00
        push    ds                              ; 1E
        jmp     L_39AF                          ; E9 C6 00
L_38E9:
        lea     ax, [bp - 0x7e]                 ; 8D 46 82
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [0xb0]             ; A1 B0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 2E 39 00 00 [FIXUP]
        les     bx, ptr [bp - 0xb0]             ; C4 9E 50 FF
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        push    word ptr es:[bx + 5]            ; 26 FF 77 05
        lea     ax, [bp - 0x98]                 ; 8D 86 68 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_16                   ; 9A 94 2C 00 00 [FIXUP]
        lea     ax, [bp - 0x98]                 ; 8D 86 68 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 59 39 00 00 [FIXUP]
        lea     cx, [bp - 0x8c]                 ; 8D 8E 74 FF
        mov     bx, ss                          ; 8C D3
        sub     cx, ax                          ; 2B C8
        add     cx, 0x16                        ; 83 C1 16
        push    bx                              ; 53
        push    cx                              ; 51
        lea     ax, [bp - 0x98]                 ; 8D 86 68 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 3D 39 00 00 [FIXUP]
        lea     ax, [bp - 0x76]                 ; 8D 46 8A
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [0xb0]             ; A1 B0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 71 39 00 00 [FIXUP]
        les     bx, ptr [bp - 0xb0]             ; C4 9E 50 FF
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        lea     ax, [bp - 0xa8]                 ; 8D 86 58 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0504                          ; E8 B2 CB
        lea     ax, [bp - 0xa8]                 ; 8D 86 58 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 9A 39 00 00 [FIXUP]
        lea     cx, [bp - 0x8c]                 ; 8D 8E 74 FF
        mov     bx, ss                          ; 8C D3
        sub     cx, ax                          ; 2B C8
        add     cx, 0x20                        ; 83 C1 20
        push    bx                              ; 53
        push    cx                              ; 51
        lea     ax, [bp - 0xa8]                 ; 8D 86 58 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 80 39 00 00 [FIXUP]
        lea     ax, [bp - 0x6c]                 ; 8D 46 94
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [0xb0]             ; A1 B0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A B1 39 00 00 [FIXUP]
        les     bx, ptr [bp - 0xb0]             ; C4 9E 50 FF
        push    word ptr es:[bx + 1]            ; 26 FF 77 01
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0603                          ; E8 6F CC
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A BC 39 00 00 [FIXUP]
        lea     cx, [bp - 0x8c]                 ; 8D 8E 74 FF
        mov     bx, ss                          ; 8C D3
        sub     cx, ax                          ; 2B C8
        add     cx, 0x2a                        ; 83 C1 2A
        push    bx                              ; 53
        push    cx                              ; 51
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
L_39AF:
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 3F 34 00 00 [FIXUP]
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A E6 33 00 00 [FIXUP]
        mov     word ptr [bp - 0x9e], ax        ; 89 86 62 FF
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x9e]            ; FF B6 62 FF
        call    far GDI.TEXTOUT                 ; 9A 2F 35 00 00 [FIXUP]
        mov     ax, word ptr [0x378]            ; A1 78 03
        add     word ptr [bp - 2], ax           ; 01 46 FE
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jne     L_3A19                          ; 75 2C
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 38 3A 00 00 [FIXUP]
        mov     word ptr [bp - 0xaa], ax        ; 89 86 56 FF
        or      ax, ax                          ; 0B C0
        jl      L_3A44                          ; 7C 32
        cmp     word ptr [0x388], 0             ; 83 3E 88 03 00
        jne     L_3A48                          ; 75 2F
L_3A19:
        inc     word ptr [bp - 0xac]            ; FF 86 54 FF
L_3A1D:
        mov     ax, word ptr [0x182]            ; A1 82 01
        cmp     word ptr [bp - 0xac], ax        ; 39 86 54 FF
        jge     L_3A29                          ; 7D 03
        jmp     L_3890                          ; E9 67 FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3A29 -- offset 0x3A29 -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: calls_gdi, small
; calls (intra): sub_3A4F
; calls (inter): GDI.ESCAPE
;----------------------------------------------------------------------
L_3A29:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 86 35 00 00 [FIXUP]
        mov     word ptr [bp - 0xaa], ax        ; 89 86 56 FF
        or      ax, ax                          ; 0B C0
        jge     L_3A48                          ; 7D 04
L_3A44:
        push    ax                              ; 50
        call    L_3A4F                          ; E8 07 00
L_3A48:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3A4F -- offset 0x3A4F -- 131 instr
; Dispatcher: tabla de decisiones cmp+jcc (131 instr).
; tags: calls_user, dispatcher, far
; callers: sub_2E8F, sub_3659, sub_3A29
; calls (inter): USER.DESTROYWINDOW, USER.DISPATCHMESSAGE, USER.ENABLEMENUITEM, USER.ENABLEWINDOW, USER.GETSYSTEMMENU, USER.ISDIALOGMESSAGE (+3 mas)
;----------------------------------------------------------------------
L_3A4F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        test    word ptr [bp + 4], 0x4000       ; F7 46 04 00 40
        je      L_3A95                          ; 74 3C
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0xfffb                      ; 3D FB FF
        je      L_3A79                          ; 74 18
        cmp     ax, 0xfffc                      ; 3D FC FF
        je      L_3A8C                          ; 74 26
        cmp     ax, 0xfffd                      ; 3D FD FF
        jl      L_3A70                          ; 7C 05
        cmp     ax, 0xfffe                      ; 3D FE FF
        jle     L_3A95                          ; 7E 25
L_3A70:
        push    word ptr [0x4a2]                ; FF 36 A2 04
        mov     ax, 0xc                         ; B8 0C 00
        jmp     L_3A80                          ; EB 07
L_3A79:
        push    word ptr [0x4a2]                ; FF 36 A2 04
        mov     ax, 0x25                        ; B8 25 00
L_3A80:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_20                   ; 9A 16 34 00 00 [FIXUP]
        jmp     L_3A95                          ; EB 09
L_3A8C:
        push    word ptr [0x4a2]                ; FF 36 A2 04
        mov     ax, 0x26                        ; B8 26 00
        jmp     L_3A80                          ; EB EB
L_3A95:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        jmp     L_3AEE                          ; EB 44
L_3AAA:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A E3 17 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_3AF5                          ; 74 34
        cmp     word ptr [0x4a2], 0             ; 83 3E A2 04 00
        je      L_3ADA                          ; 74 12
        push    word ptr [0x4a2]                ; FF 36 A2 04
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ISDIALOGMESSAGE        ; 9A BA 17 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3AEE                          ; 75 14
L_3ADA:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A C6 17 00 00 [FIXUP]
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A D0 17 00 00 [FIXUP]
L_3AEE:
        cmp     word ptr [0x388], 0             ; 83 3E 88 03 00
        je      L_3AAA                          ; 74 B5
L_3AF5:
        cmp     word ptr [0x388], 0             ; 83 3E 88 03 00
        jne     L_3B01                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_3B03                          ; EB 02
L_3B01:
        sub     ax, ax                          ; 2B C0
L_3B03:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_3B52                          ; 74 32
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_3B2C                          ; 74 07
        cmp     ax, 0x116                       ; 3D 16 01
        je      L_3B6A                          ; 74 40
        jmp     L_3B7D                          ; EB 51
L_3B2C:
        mov     word ptr [0x388], 1             ; C7 06 88 03 01 00
        push    word ptr [0x346]                ; FF 36 46 03
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 7F 31 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.DESTROYWINDOW          ; 9A E4 31 00 00 [FIXUP]
        mov     word ptr [0x4a2], 0             ; C7 06 A2 04 00 00
L_3B4D:
        mov     ax, 1                           ; B8 01 00
        jmp     L_3B7F                          ; EB 2D
L_3B52:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x272], ax            ; A3 72 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETFOCUS               ; 9A 03 2F 00 00 [FIXUP]
        jmp     L_3B4D                          ; EB E3
L_3B6A:
        push    word ptr [0x272]                ; FF 36 72 02
        mov     ax, 0xf060                      ; B8 60 F0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A F5 2E 00 00 [FIXUP]
        jmp     L_3B4D                          ; EB D0
L_3B7D:
        sub     ax, ax                          ; 2B C0
L_3B7F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A

MSDOS_TEXT ENDS

        END
