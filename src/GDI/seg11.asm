; AUTO-GENERATED from original GDI segment 11
; segment_size=2691 bytes, flags=0xf130
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
; FILLRGN -- 38 instr
; Dispatcher: tabla de decisiones cmp+jcc (38 instr).
; tags: dispatcher, far
; calls (intra): sub_0102
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; FILLRGN  (offset 0x0000, size 91 bytes)
;-----------------------------------------------------------------------
FILLRGN PROC FAR
L_0000:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_004D                          ; 74 35
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_004D                          ; 74 2F
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_004D                          ; 74 29
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_003A                          ; 7C 0B
        mov     ax, 0x228                       ; B8 28 02
        push    ax                              ; 50
        call    far _SEG1_36B8                  ; 9A 89 00 00 00 [FIXUP]
        jmp     L_0050                          ; EB 16
L_003A:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0102                          ; E8 B8 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_004D:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0050:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
FILLRGN ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; PAINTRGN -- 37 instr
; Funcion mediana (37 instr, 1 calls).
; tags: far, medium
; calls (intra): sub_0102
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; PAINTRGN  (offset 0x005B, size 85 bytes)
;-----------------------------------------------------------------------
PAINTRGN PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_00A2                          ; 74 2F
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_00A2                          ; 74 29
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_008F                          ; 7C 0B
        mov     ax, 0x12b                       ; B8 2B 01
        push    ax                              ; 50
        call    far _SEG1_36B8                  ; 9A DE 00 00 00 [FIXUP]
        jmp     L_00A5                          ; EB 16
L_008F:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0102                          ; E8 63 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_00A2:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_00A5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
PAINTRGN ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; INVERTRGN -- 36 instr
; Funcion mediana (36 instr, 1 calls).
; tags: far, medium
; calls (intra): sub_0102
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; INVERTRGN  (offset 0x00B0, size 82 bytes)
;-----------------------------------------------------------------------
INVERTRGN PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_00F4                          ; 74 2C
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_00F4                          ; 74 26
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_00E4                          ; 7C 0B
        mov     ax, 0x12a                       ; B8 2A 01
        push    ax                              ; 50
        call    far _SEG1_36B8                  ; 9A E8 02 00 00 [FIXUP]
        jmp     L_00F7                          ; EB 13
L_00E4:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_0102                          ; E8 11 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_00F4:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_00F7:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
INVERTRGN ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0102 -- offset 0x0102 -- 53 instr
; Dispatcher: tabla de decisiones cmp+jcc (53 instr).
; tags: dispatcher
; callers: FILLRGN, INVERTRGN, PAINTRGN
;----------------------------------------------------------------------

L_0102:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1c                        ; 83 EC 1C
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_0119                          ; 75 06
        mov     ax, 1                           ; B8 01 00
        jmp     L_029D                          ; E9 84 01
L_0119:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_013C                          ; 74 1D
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_013C                          ; 74 17
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_12B6                  ; 9A 96 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        jne     L_013C                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_029D                          ; E9 61 01
L_013C:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0x2c]        ; 8B 47 2C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0167                          ; 75 03
        jmp     L_027D                          ; E9 16 01
L_0167:
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jne     L_0177                          ; 75 03
        jmp     L_027D                          ; E9 06 01
L_0177:
        cmp     word ptr [bx + 8], 0x1e         ; 83 7F 08 1E
        jne     L_01C9                          ; 75 4C
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_019A                          ; 74 17
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bx + 0xc]             ; FF 77 0C
        push    word ptr [bx + 0xe]             ; FF 77 0E
        push    word ptr [bx + 0x10]            ; FF 77 10
        push    word ptr [bx + 0x12]            ; FF 77 12
        call    far _entry_421                  ; 9A 37 02 00 00 [FIXUP]
        jmp     L_0278                          ; E9 DE 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_019A -- offset 0x019A -- 99 instr
; Dispatcher: tabla de decisiones cmp+jcc (99 instr).
; tags: dispatcher
;----------------------------------------------------------------------
L_019A:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        push    word ptr [bx + 0xc]             ; FF 77 0C
        push    word ptr [bx + 0xe]             ; FF 77 0E
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        sub     ax, word ptr [bx + 0xc]         ; 2B 47 0C
        push    ax                              ; 50
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
        sub     ax, word ptr [bx + 0xe]         ; 2B 47 0E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_2308                  ; 9A 62 02 00 00 [FIXUP]
        jmp     L_0278                          ; E9 AF 00
L_01C9:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        add     ax, 0x14                        ; 05 14 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_026B                          ; E9 96 00
L_01D5:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
L_01FE:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        cmp     ax, word ptr [bp - 0x18]        ; 3B 46 E8
        jle     L_026B                          ; 7E 60
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_023D                          ; 74 14
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far _entry_421                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0266                          ; EB 29
L_023D:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x16]            ; FF 76 EA
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        sub     ax, word ptr [bp - 0x16]        ; 2B 46 EA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_2308                  ; 9A FF FF 00 00 [FIXUP]
L_0266:
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        jmp     L_01FE                          ; EB 93
L_026B:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        or      ax, ax                          ; 0B C0
        je      L_0278                          ; 74 03
        jmp     L_01D5                          ; E9 5D FF
L_0278:
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
L_027D:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        dec     byte ptr [bx + 3]               ; FE 4F 03
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_029A                          ; 74 11
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_029A                          ; 74 0B
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _SEG1_12B6                  ; 9A FF FF 00 00 [FIXUP]
L_029A:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
L_029D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; FRAMERGN -- 548 instr
; Dispatcher: tabla de decisiones cmp+jcc (548 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_0885
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; FRAMERGN  (offset 0x02A3, size 1506 bytes)
;-----------------------------------------------------------------------
FRAMERGN PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x42                        ; 83 EC 42
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x2c], 0         ; C7 46 D4 00 00
        mov     word ptr [bp - 0x1e], 0         ; C7 46 E2 00 00
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
        cmp     word ptr [bp + 0xe], 0          ; 83 7E 0E 00
        je      L_02D3                          ; 74 0C
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_02D3                          ; 74 06
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_02D8                          ; 75 05
L_02D3:
        sub     ax, ax                          ; 2B C0
        jmp     L_0878                          ; E9 A0 05
L_02D8:
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_02EF                          ; 7C 0C
        mov     ax, 0x429                       ; B8 29 04
        push    ax                              ; 50
        call    far _SEG1_36B8                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0878                          ; E9 89 05
L_02EF:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0x38], 0         ; C7 46 C8 00 00
        mov     word ptr [bp - 0x36], 0         ; C7 46 CA 00 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _SEG1_3308                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        sub     ax, word ptr [bp - 0x38]        ; 2B 46 C8
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        sub     ax, word ptr [bp - 0x36]        ; 2B 46 CA
        mov     word ptr [bp + 6], ax           ; 89 46 06
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_0341                          ; 7D 08
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 8], ax           ; 89 46 08
L_0341:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_034F                          ; 7D 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 6], ax           ; 89 46 06
L_034F:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        cmp     ax, 1                           ; 3D 01 00
        jge     L_0360                          ; 7D 03
        jmp     L_086F                          ; E9 0F 05
L_0360:
        call    far _SEG1_3C63                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        jne     L_036F                          ; 75 03
        jmp     L_086F                          ; E9 00 05
L_036F:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     word ptr [bx + 8], 0x1e         ; 83 7F 08 1E
        je      L_037B                          ; 74 03
        jmp     L_0422                          ; E9 A7 00
L_037B:
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     si, word ptr [bp - 0x22]        ; 8B 76 DE
        add     si, word ptr [bp + 8]           ; 03 76 08
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x28]            ; FF 76 D8
        cmp     word ptr [bp - 0x26], si        ; 39 76 DA
        jl      L_03AB                          ; 7C 04
        mov     ax, si                          ; 8B C6
        jmp     L_03AE                          ; EB 03
L_03AB:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
L_03AE:
        push    ax                              ; 50
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _entry_420                  ; 9A DE 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03BE                          ; 75 03
        jmp     L_0867                          ; E9 A9 04
L_03BE:
        mov     di, word ptr [bp - 0x26]        ; 8B 7E DA
        sub     di, word ptr [bp + 8]           ; 2B 7E 08
        push    word ptr [bp - 0x14]            ; FF 76 EC
        cmp     word ptr [bp - 0x22], di        ; 39 7E DE
        jge     L_03D0                          ; 7D 04
        mov     ax, di                          ; 8B C7
        jmp     L_03D3                          ; EB 03
L_03D0:
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
L_03D3:
        push    ax                              ; 50
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _entry_420                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03E9                          ; 75 03
        jmp     L_0867                          ; E9 7E 04
L_03E9:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    si                              ; 56
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    di                              ; 57
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ax                              ; 50
        call    far _entry_420                  ; 9A 14 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0404                          ; 75 03
        jmp     L_0867                          ; E9 63 04
L_0404:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    si                              ; 56
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _entry_420                  ; 9A 5F 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_041F                          ; 74 03
        jmp     L_080A                          ; E9 EB 03
L_041F:
        jmp     L_0867                          ; E9 45 04
L_0422:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, 0x14                        ; 05 14 00
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_0430:
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        dec     word ptr [bp - 0x30]            ; FF 4E D0
        or      ax, ax                          ; 0B C0
        je      L_043D                          ; 74 03
        jmp     L_04E6                          ; E9 A9 00
L_043D:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A FD 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        jne     L_0454                          ; 75 03
        jmp     L_0867                          ; E9 13 04
L_0454:
        mov     bx, ax                          ; 8B D8
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x3a], 1         ; C7 46 C6 01 00
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     ax, bx                          ; 8B C3
        add     ax, 0x14                        ; 05 14 00
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0x3e], 0         ; C7 46 C2 00 00
        mov     bx, ax                          ; 8B D8
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
L_04AC:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        cmp     ax, word ptr [bp - 0x24]        ; 3B 46 DC
        jg      L_04BC                          ; 7F 03
        jmp     L_07FD                          ; E9 41 03
L_04BC:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     si, word ptr [bx]               ; 8B 37
        mov     word ptr [bp - 0x22], si        ; 89 76 DE
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     di, word ptr [bx]               ; 8B 3F
        mov     word ptr [bp - 0x26], di        ; 89 7E DA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        cmp     ax, di                          ; 3B C7
        jle     L_04E3                          ; 7E 03
        jmp     L_0594                          ; E9 B1 00
L_04E3:
        jmp     L_0596                          ; E9 B0 00
L_04E6:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jle     L_0500                          ; 7E 06
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0500:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
L_051D:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        cmp     ax, word ptr [bp - 0x24]        ; 3B 46 DC
        jg      L_052D                          ; 7F 03
        jmp     L_0430                          ; E9 03 FF
L_052D:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     si, word ptr [bx]               ; 8B 37
        mov     word ptr [bp - 0x22], si        ; 89 76 DE
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     di, word ptr [bx]               ; 8B 3F
        mov     word ptr [bp - 0x26], di        ; 89 7E DA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    si                              ; 56
        push    word ptr [bp - 0x28]            ; FF 76 D8
        cmp     ax, di                          ; 3B C7
        jle     L_055A                          ; 7E 02
        mov     ax, di                          ; 8B C7
L_055A:
        push    ax                              ; 50
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _entry_420                  ; 9A 84 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_056A                          ; 75 03
        jmp     L_0867                          ; E9 FD 02
L_056A:
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        cmp     ax, si                          ; 3B C6
        jg      L_057B                          ; 7F 02
        mov     ax, si                          ; 8B C6
L_057B:
        push    ax                              ; 50
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    di                              ; 57
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _entry_420                  ; 9A F2 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_058F                          ; 75 03
        jmp     L_0867                          ; E9 D8 02
L_058F:
        inc     word ptr [bp - 0x24]            ; FF 46 DC
        jmp     L_051D                          ; EB 89
L_0594:
        mov     ax, di                          ; 8B C7
L_0596:
        mov     bx, word ptr [bp - 0x3e]        ; 8B 5E C2
        inc     word ptr [bp - 0x3e]            ; FF 46 C2
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 4]           ; 03 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        cmp     ax, si                          ; 3B C6
        jg      L_05B1                          ; 7F 02
        mov     ax, si                          ; 8B C6
L_05B1:
        mov     bx, word ptr [bp - 0x3e]        ; 8B 5E C2
        inc     word ptr [bp - 0x3e]            ; FF 46 C2
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 4]           ; 03 5E FC
        mov     word ptr [bx], ax               ; 89 07
        inc     word ptr [bp - 0x24]            ; FF 46 DC
        jmp     L_04AC                          ; E9 E8 FE
L_05C4:
        cmp     word ptr [bp - 0x3a], 0         ; 83 7E C6 00
        je      L_0603                          ; 74 39
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
L_05CF:
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jge     L_0603                          ; 7D 2C
        mov     si, word ptr [bp - 0x24]        ; 8B 76 DC
        shl     si, 1                           ; D1 E6
        add     si, word ptr [bp - 4]           ; 03 76 FC
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [si]                   ; FF 34
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [si + 2]               ; FF 74 02
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ax                              ; 50
        call    far _entry_420                  ; 9A CF 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_05FD                          ; 75 03
        jmp     L_0843                          ; E9 46 02
L_05FD:
        add     word ptr [bp - 0x24], 2         ; 83 46 DC 02
        jmp     L_05CF                          ; EB CC
L_0603:
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        jne     L_060C                          ; 75 03
        jmp     L_069F                          ; E9 93 00
L_060C:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
L_063A:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        cmp     ax, word ptr [bp - 0x24]        ; 3B 46 DC
        jle     L_069F                          ; 7E 58
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     si, word ptr [bx]               ; 8B 37
        mov     word ptr [bp - 0x22], si        ; 89 76 DE
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     di, word ptr [bx]               ; 8B 3F
        mov     word ptr [bp - 0x26], di        ; 89 7E DA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        cmp     ax, di                          ; 3B C7
        jle     L_066D                          ; 7E 02
        mov     ax, di                          ; 8B C7
L_066D:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x20]        ; 03 5E E0
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        cmp     ax, si                          ; 3B C6
        jge     L_068A                          ; 7D 04
        mov     ax, si                          ; 8B C6
        jmp     L_068D                          ; EB 03
L_068A:
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
L_068D:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x20]        ; 03 5E E0
        mov     word ptr [bx], ax               ; 89 07
        inc     word ptr [bp - 0x24]            ; FF 46 DC
        jmp     L_063A                          ; EB 9B
L_069F:
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        je      L_06AD                          ; 74 08
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 0x2a], ax        ; 39 46 D6
        je      L_06EE                          ; 74 41
L_06AD:
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
        jmp     L_06DE                          ; EB 2A
L_06B4:
        mov     si, word ptr [bp - 0x24]        ; 8B 76 DC
        shl     si, 1                           ; D1 E6
        add     si, word ptr [bp - 4]           ; 03 76 FC
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [si]                   ; FF 34
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        push    ax                              ; 50
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _entry_420                  ; 9A 72 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_06DA                          ; 75 03
        jmp     L_0843                          ; E9 69 01
L_06DA:
        add     word ptr [bp - 0x24], 2         ; 83 46 DC 02
L_06DE:
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jl      L_06B4                          ; 7C CE
        mov     word ptr [bp - 0x3a], 1         ; C7 46 C6 01 00
        jmp     L_07C7                          ; E9 D9 00
L_06EE:
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        or      ax, ax                          ; 0B C0
        jne     L_070B                          ; 75 03
        jmp     L_0843                          ; E9 38 01
L_070B:
        mov     bx, ax                          ; 8B D8
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    ax                              ; 50
        call    L_0885                          ; E8 4D 01
        mov     bx, word ptr [bp - 0x2e]        ; 8B 5E D2
        add     word ptr [bp - 0x2e], 2         ; 83 46 D2 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     bx, word ptr [bp - 0x3c]        ; 8B 5E C4
        add     word ptr [bp - 0x3c], 2         ; 83 46 C4 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
        jmp     L_0781                          ; EB 2A
L_0757:
        mov     si, word ptr [bp - 0x24]        ; 8B 76 DC
        shl     si, 1                           ; D1 E6
        add     si, word ptr [bp - 0x2e]        ; 03 76 D2
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [si]                   ; FF 34
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        push    ax                              ; 50
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _entry_420                  ; 9A AB 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_077D                          ; 75 03
        jmp     L_0843                          ; E9 C6 00
L_077D:
        add     word ptr [bp - 0x24], 2         ; 83 46 DC 02
L_0781:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jl      L_0757                          ; 7C CE
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
        jmp     L_07BA                          ; EB 2A
L_0790:
        mov     si, word ptr [bp - 0x24]        ; 8B 76 DC
        shl     si, 1                           ; D1 E6
        add     si, word ptr [bp - 0x3c]        ; 03 76 C4
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [si]                   ; FF 34
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [si + 2]               ; FF 74 02
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ax                              ; 50
        call    far _entry_420                  ; 9A B3 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_07B6                          ; 75 03
        jmp     L_0843                          ; E9 8D 00
L_07B6:
        add     word ptr [bp - 0x24], 2         ; 83 46 DC 02
L_07BA:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jl      L_0790                          ; 7C CE
        mov     word ptr [bp - 0x3a], 0         ; C7 46 C6 00 00
L_07C7:
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        je      L_07FD                          ; 74 30
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
        jmp     L_07F2                          ; EB 12
L_07E0:
        mov     si, word ptr [bp - 0x24]        ; 8B 76 DC
        shl     si, 1                           ; D1 E6
        mov     bx, word ptr [bp - 0x20]        ; 8B 5E E0
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + si], ax          ; 89 00
        inc     word ptr [bp - 0x24]            ; FF 46 DC
L_07F2:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jl      L_07E0                          ; 7C E6
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
L_07FD:
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        dec     word ptr [bp - 0x30]            ; FF 4E D0
        or      ax, ax                          ; 0B C0
        je      L_080A                          ; 74 03
        jmp     L_05C4                          ; E9 BA FD
L_080A:
        call    far _SEG1_3C63                  ; 9A 61 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        je      L_0843                          ; 74 2D
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_3A8C                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_083B                          ; 74 11
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 C8 F7
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
L_083B:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far KERNEL.LOCALFREE            ; 9A 51 08 00 00 [FIXUP]
L_0843:
        cmp     word ptr [bp - 0x2c], 0         ; 83 7E D4 00
        je      L_0855                          ; 74 0C
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        call    far KERNEL.LOCALFREE            ; 9A 63 08 00 00 [FIXUP]
L_0855:
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        je      L_0867                          ; 74 0C
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        call    far KERNEL.LOCALFREE            ; 9A 6B 08 00 00 [FIXUP]
L_0867:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_086F:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        dec     byte ptr [bx + 3]               ; FE 4F 03
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
L_0878:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
FRAMERGN ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0885 -- offset 0x0885 -- 171 instr
; Dispatcher: tabla de decisiones cmp+jcc (171 instr).
; tags: dispatcher
; callers: FRAMERGN
;----------------------------------------------------------------------

L_0885:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_09D1                          ; E9 2B 01
L_08A6:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_08B1                          ; 7C 03
        jmp     L_09F8                          ; E9 47 01
L_08B1:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        cmp     word ptr [bx + si], ax          ; 39 00
        jge     L_0917                          ; 7D 50
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_08EF                          ; 74 22
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     word ptr [bx + si], ax          ; 89 00
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_090F                          ; 75 25
L_08EA:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0911                          ; EB 22
L_08EF:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     word ptr [bx + si], ax          ; 89 00
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_08EA                          ; 74 DB
L_090F:
        sub     ax, ax                          ; 2B C0
L_0911:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_09D1                          ; E9 BA 00
L_0917:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        cmp     word ptr [bx + si], ax          ; 39 00
        jle     L_0972                          ; 7E 45
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_094D                          ; 75 1A
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        jmp     L_0965                          ; EB 18
L_094D:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 6]           ; 8B 76 06
L_0965:
        mov     word ptr [bx + si], ax          ; 89 00
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_09CC                          ; 75 5F
L_096D:
        mov     ax, 1                           ; B8 01 00
        jmp     L_09CE                          ; EB 5C
L_0972:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        xor     ax, word ptr [bp - 6]           ; 33 46 FA
        je      L_09B0                          ; 74 36
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     word ptr [bx + si], ax          ; 89 00
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     word ptr [bx + si], ax          ; 89 00
        jmp     L_09B6                          ; EB 06
L_09B0:
        inc     word ptr [bp - 4]               ; FF 46 FC
        inc     word ptr [bp - 8]               ; FF 46 F8
L_09B6:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_09C1                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_09C3                          ; EB 02
L_09C1:
        sub     ax, ax                          ; 2B C0
L_09C3:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_096D                          ; 74 A1
L_09CC:
        sub     ax, ax                          ; 2B C0
L_09CE:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_09D1:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_09DC                          ; 7D 03
        jmp     L_08A6                          ; E9 CA FE
L_09DC:
        jmp     L_09F8                          ; EB 1A
L_09DE:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     word ptr [bx + si], ax          ; 89 00
L_09F8:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_09DE                          ; 7C DE
        jmp     L_0A1C                          ; EB 1A
L_0A02:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     word ptr [bx + si], ax          ; 89 00
L_0A1C:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_0A02                          ; 7C DE
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        dec     ax                              ; 48
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        dec     ax                              ; 48
        mov     word ptr [bx], ax               ; 89 07
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; PTINREGION -- 34 instr
; Funcion mediana (34 instr, 0 calls).
; tags: far, medium
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; PTINREGION  (offset 0x0A3D, size 70 bytes)
;-----------------------------------------------------------------------
PTINREGION PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0A75                          ; 74 1F
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    si                              ; 56
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1D0A                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_0A75:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06
PTINREGION ENDP


GDI_TEXT ENDS

        END
