; AUTO-GENERATED from original WRITE segment 63
; segment_size=2952 bytes, flags=0xf130
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
        sub     sp, 0x108                       ; 81 EC 08 01
        push    word ptr [0xc20]                ; FF 36 20 0C
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        je      L_0028                          ; 74 07
        cmp     word ptr [0x7b0], 0             ; 83 3E B0 07 00
        jne     L_002D                          ; 75 05
L_0028:
        mov     ax, 1                           ; B8 01 00
        jmp     L_007E                          ; EB 51
L_002D:
        push    word ptr [0x10aa]               ; FF 36 AA 10
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_007C                          ; 74 42
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0087                          ; E8 48 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_0028                          ; 75 DB
        lea     ax, [bp - 0x108]                ; 8D 86 F8 FE
        push    ax                              ; 50
        mov     ax, 0x2017                      ; B8 17 20
        push    ax                              ; 50
        call    far _entry_52                   ; 9A 61 00 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x201e                      ; B8 1E 20
        push    ax                              ; 50
        call    far _entry_52                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x780]                ; FF 36 80 07
        lea     ax, [bp - 0x108]                ; 8D 86 F8 FE
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        call    far _entry_109                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        je      L_0028                          ; 74 AC
L_007C:
        sub     ax, ax                          ; 2B C0
L_007E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0087 -- offset 0x0087 -- 212 instr
; Dispatcher: tabla de decisiones cmp+jcc (212 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_02BF
; calls (inter): GDI.CREATEBITMAPINDIRECT, GDI.SETBITMAPDIMENSION, KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALREALLOC (+2 mas)
;----------------------------------------------------------------------
L_0087:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x4c                        ; 83 EC 4C
        push    si                              ; 56
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xc20]                ; F7 2E 20 0C
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        cmp     word ptr [0x66], 0              ; 83 3E 66 00 00
        jne     L_00C2                          ; 75 06
        call    L_02BF                          ; E8 00 02
        jmp     L_02B5                          ; E9 F3 01
L_00C2:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xc20]                ; FF 36 20 0C
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ax                              ; 50
        call    far _entry_221                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xc20]                ; FF 36 20 0C
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     dx, dx                          ; 2B D2
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A F2 01 00 00 [FIXUP]
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     word ptr [bp - 0x3c], dx        ; 89 56 C4
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A 65 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jne     L_0133                          ; 75 21
L_0112:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0120                          ; 74 08
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.GLOBALFREE           ; 9A 2A 01 00 00 [FIXUP]
L_0120:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_012E                          ; 74 08
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALFREE           ; 9A 4F 02 00 00 [FIXUP]
L_012E:
        sub     ax, ax                          ; 2B C0
        jmp     L_02B5                          ; E9 82 01
L_0133:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp - 0xa], dx         ; 39 56 F6
        jg      L_0195                          ; 7F 57
        jl      L_0145                          ; 7C 05
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jae     L_0195                          ; 73 50
L_0145:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALLOCK           ; 9A A2 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     word ptr [bp - 0x42], dx        ; 89 56 BE
        or      ax, dx                          ; 0B C2
        je      L_0112                          ; 74 BB
        mov     ax, word ptr [0x1022]           ; A1 22 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        add     ax, word ptr [bp - 0x44]        ; 03 46 BC
        sub     ax, word ptr [0xe8e]            ; 2B 06 8E 0E
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0xe8e]                ; FF 36 8E 0E
        call    far _entry_56                   ; 9A 9A 02 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALUNLOCK         ; 9A D9 01 00 00 [FIXUP]
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        adc     word ptr [bp - 0xa], dx         ; 11 56 F6
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp - 0xa], dx         ; 39 56 F6
        jl      L_01E0                          ; 7C 52
        jg      L_0195                          ; 7F 05
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jb      L_01E0                          ; 72 4B
L_0195:
        cmp     word ptr [bp - 0x3a], 0x63      ; 83 7E C6 63
        je      L_019E                          ; 74 03
        jmp     L_025A                          ; E9 BC 00
L_019E:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALLOCK           ; 9A 75 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     word ptr [bp - 0x46], dx        ; 89 56 BA
        or      ax, dx                          ; 0B C2
        je      L_01CA                          ; 74 1A
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.CREATEBITMAPINDIRECT    ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_0229                          ; 75 5F
L_01CA:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        or      ax, word ptr [bp - 0x46]        ; 0B 46 BA
        jne     L_01D5                          ; 75 03
        jmp     L_0112                          ; E9 3D FF
L_01D5:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALUNLOCK         ; 9A 47 02 00 00 [FIXUP]
        jmp     L_0112                          ; E9 32 FF
L_01E0:
        push    word ptr [0xc20]                ; FF 36 20 0C
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        push    ax                              ; 50
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        add     word ptr [bp - 0x3e], ax        ; 01 46 C2
        adc     word ptr [bp - 0x3c], dx        ; 11 56 C4
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A 80 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        je      L_0220                          ; 74 03
        jmp     L_0133                          ; E9 13 FF
L_0220:
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_0112                          ; E9 E9 FE
L_0229:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp - 0x36]            ; FF 76 CA
        call    far GDI.SETBITMAPDIMENSION      ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far USER.SETCLIPBOARDDATA       ; 9A AE 02 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALUNLOCK         ; 9A A2 02 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALFREE           ; 9A 1B 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        jmp     L_02B2                          ; EB 58
L_025A:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A D9 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_0273                          ; 75 03
        jmp     L_0112                          ; E9 9F FE
L_0273:
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A 9D 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     word ptr [bp - 0x4a], dx        ; 89 56 B6
        or      ax, dx                          ; 0B C2
        jne     L_0286                          ; 75 03
        jmp     L_0112                          ; E9 8C FE
L_0286:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ss                              ; 16
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_56                   ; 9A D8 03 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far USER.SETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
L_02B2:
        mov     ax, 1                           ; B8 01 00
L_02B5:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02BF -- offset 0x02BF -- 246 instr
; Dispatcher: tabla de decisiones cmp+jcc (246 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_0087
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALREALLOC, KERNEL.GLOBALUNLOCK, USER.GETCLIPBOARDDATA (+2 mas)
;----------------------------------------------------------------------
L_02BF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xc20]                ; F7 2E 20 0C
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0311                          ; 74 03
        jmp     L_0422                          ; E9 11 01
L_0311:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_031F                          ; 74 08
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_031F:
        sub     ax, ax                          ; 2B C0
        jmp     L_04A0                          ; E9 7C 01
L_0324:
        push    word ptr [0xc20]                ; FF 36 20 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x33c]            ; A1 3C 03
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
L_034B:
        mov     ax, word ptr [0x33c]            ; A1 3C 03
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jge     L_0362                          ; 7D 0F
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        cmp     byte ptr [bx + 0x558], 0        ; 80 BF 58 05 00
        jne     L_0394                          ; 75 37
        mov     ax, bx                          ; 8B C3
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
L_0362:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cdq                                     ; 99
        add     ax, word ptr [bp - 0x14]        ; 03 46 EC
        adc     dx, word ptr [bp - 0x12]        ; 13 56 EE
        add     ax, 2                           ; 05 02 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_0399                          ; 75 0E
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_0311                          ; E9 7D FF
L_0394:
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        jmp     L_034B                          ; EB B2
L_0399:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        or      ax, dx                          ; 0B C2
        jne     L_03AE                          ; 75 03
        jmp     L_0311                          ; E9 63 FF
L_03AE:
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     dx, word ptr [0x332]            ; 8B 16 32 03
        cmp     word ptr [bp - 2], dx           ; 39 56 FE
        jg      L_03C4                          ; 7F 0A
        jl      L_03C1                          ; 7C 05
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jae     L_03C4                          ; 73 03
L_03C1:
        dec     word ptr [bp - 0x1a]            ; FF 4E E6
L_03C4:
        mov     ax, 0x558                       ; B8 58 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far _entry_56                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cdq                                     ; 99
        add     word ptr [bp - 0x14], ax        ; 01 46 EC
        adc     word ptr [bp - 0x12], dx        ; 11 56 EE
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        les     si, ptr [bp - 0xc]              ; C4 76 F4
        mov     byte ptr es:[bx + si], 0xd      ; 26 C6 00 0D
        add     word ptr [bp - 0x14], 1         ; 83 46 EC 01
        adc     word ptr [bp - 0x12], 0         ; 83 56 EE 00
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        les     si, ptr [bp - 0xc]              ; C4 76 F4
        mov     byte ptr es:[bx + si], 0xa      ; 26 C6 00 0A
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        add     word ptr [bp - 0x14], 1         ; 83 46 EC 01
        adc     word ptr [bp - 0x12], 0         ; 83 56 EE 00
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     dx, word ptr [0x332]            ; 8B 16 32 03
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.GLOBALUNLOCK         ; 9A 8D 04 00 00 [FIXUP]
L_0422:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        jg      L_045C                          ; 7F 2F
        jl      L_0434                          ; 7C 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jae     L_045C                          ; 73 28
L_0434:
        push    word ptr [0xc20]                ; FF 36 20 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        jne     L_044D                          ; 75 03
        jmp     L_0324                          ; E9 D7 FE
L_044D:
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        jmp     L_0422                          ; EB C6
L_045C:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.GLOBALLOCK           ; 9A 44 06 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        or      ax, dx                          ; 0B C2
        jne     L_0471                          ; 75 03
        jmp     L_0311                          ; E9 A0 FE
L_0471:
        cmp     word ptr [bp - 0x10], 1         ; 83 7E F0 01
        jne     L_047F                          ; 75 08
        sub     word ptr [bp - 0x14], 2         ; 83 6E EC 02
        sbb     word ptr [bp - 0x12], 0         ; 83 5E EE 00
L_047F:
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        les     si, ptr [bp - 0xc]              ; C4 76 F4
        mov     byte ptr es:[bx + si], 0        ; 26 C6 00 00
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.GLOBALUNLOCK         ; 9A A5 06 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far USER.SETCLIPBOARDDATA       ; 9A 3F 02 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_04A0:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1be                       ; 81 EC BE 01
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0x116], ax       ; 89 86 EA FE
        lea     ax, [bp - 0x1a8]                ; 8D 86 58 FE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x184], 0x3e8    ; C7 86 7C FE E8 03
        mov     word ptr [bp - 0x182], 0x3e8    ; C7 86 7E FE E8 03
        mov     word ptr [0x66], 0              ; C7 06 66 00 00 00
        push    word ptr [0xc20]                ; FF 36 20 0C
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_206                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x10f4]               ; FF 36 F4 10
        call    far USER.OPENCLIPBOARD          ; 9A 32 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_050A                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_08BC                          ; E9 B2 03
L_050A:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETCLIPBOARDDATA       ; 9A 26 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x114], ax       ; 89 86 EC FE
        or      ax, ax                          ; 0B C0
        jne     L_0557                          ; 75 3C
        mov     word ptr [bp - 0x1a8], 0xffff   ; C7 86 58 FE FF FF
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far USER.GETCLIPBOARDDATA       ; 9A 3D 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x114], ax       ; 89 86 EC FE
        or      ax, ax                          ; 0B C0
        jne     L_0551                          ; 75 1F
        mov     word ptr [bp - 0x1a8], 0x63     ; C7 86 58 FE 63 00
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x114], ax       ; 89 86 EC FE
        or      ax, ax                          ; 0B C0
        jne     L_0551                          ; 75 08
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        jmp     L_0885                          ; E9 34 03
L_0551:
        mov     word ptr [0x66], 1              ; C7 06 66 00 01 00
L_0557:
        cmp     word ptr [0x66], 0              ; 83 3E 66 00 00
        jne     L_0561                          ; 75 03
        jmp     L_074E                          ; E9 ED 01
L_0561:
        push    word ptr [0x13cc]               ; FF 36 CC 13
        lea     ax, [bp - 0x17c]                ; 8D 86 84 FE
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        or      byte ptr [bp - 0x16c], 0x10     ; 80 8E 94 FE 10
        mov     word ptr [bp - 0x1a0], 0        ; C7 86 60 FE 00 00
        cmp     word ptr [bp - 0x1a8], 0x63     ; 83 BE 58 FE 63
        je      L_0588                          ; 74 03
        jmp     L_0674                          ; E9 EC 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0588 -- offset 0x0588 -- 274 instr
; Dispatcher: tabla de decisiones cmp+jcc (274 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_08C5, sub_0930, sub_0A92
; calls (inter): GDI.DELETEOBJECT, GDI.GETBITMAPBITS, GDI.GETBITMAPDIMENSION, GDI.GETOBJECT, KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE (+4 mas)
;----------------------------------------------------------------------
L_0588:
        push    word ptr [bp - 0x114]           ; FF B6 EC FE
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x198]                ; 8D 86 68 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A D5 05 00 00 [FIXUP]
        cmp     ax, 0xe                         ; 3D 0E 00
        jge     L_05A3                          ; 7D 03
        jmp     L_0885                          ; E9 E2 02
L_05A3:
        cmp     byte ptr [bp - 0x190], 1        ; 80 BE 70 FE 01
        ja      L_05B1                          ; 77 07
        cmp     byte ptr [bp - 0x18f], 1        ; 80 BE 71 FE 01
        jbe     L_05D9                          ; 76 28
L_05B1:
        push    word ptr [bp - 0x114]           ; FF B6 EC FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A92                          ; E8 D8 04
        mov     word ptr [bp - 0x1b2], ax       ; 89 86 4E FE
        or      ax, ax                          ; 0B C0
        jne     L_05C5                          ; 75 03
        jmp     L_0885                          ; E9 C0 02
L_05C5:
        mov     word ptr [bp - 0x114], ax       ; 89 86 EC FE
        push    ax                              ; 50
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x198]                ; 8D 86 68 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A FF FF 00 00 [FIXUP]
L_05D9:
        push    word ptr [bp - 0x114]           ; FF B6 EC FE
        call    far GDI.GETBITMAPDIMENSION      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1b0], ax       ; 89 86 50 FE
        mov     word ptr [bp - 0x1ae], dx       ; 89 96 52 FE
        mov     word ptr [bp - 0x1a6], ax       ; 89 86 5A FE
        mov     ax, dx                          ; 8B C2
        mov     word ptr [bp - 0x1a4], ax       ; 89 86 5C FE
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x19c], ax       ; 89 86 64 FE
        mov     word ptr [bp - 0x19e], ax       ; 89 86 62 FE
        mov     al, byte ptr [bp - 0x190]       ; 8A 86 70 FE
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x194]       ; 8B 86 6C FE
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x192]       ; 8B 86 6E FE
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_368                  ; 9A 1E 06 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_368                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1ac], ax       ; 89 86 54 FE
        mov     word ptr [bp - 0x1aa], dx       ; 89 96 56 FE
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 0x1ac]           ; FF B6 54 FE
        call    far KERNEL.GLOBALALLOC          ; 9A 07 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0642                          ; 75 03
        jmp     L_07D7                          ; E9 95 01
L_0642:
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A 79 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x180], ax       ; 89 86 80 FE
        mov     word ptr [bp - 0x17e], dx       ; 89 96 82 FE
        or      ax, dx                          ; 0B C2
        jne     L_0657                          ; 75 03
        jmp     L_07D7                          ; E9 80 01
L_0657:
        push    word ptr [bp - 0x114]           ; FF B6 EC FE
        push    word ptr [bp - 0x1aa]           ; FF B6 56 FE
        push    word ptr [bp - 0x1ac]           ; FF B6 54 FE
        push    dx                              ; 52
        push    word ptr [bp - 0x180]           ; FF B6 80 FE
        call    far GDI.GETBITMAPBITS           ; 9A FF FF 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        jne     L_06ED                          ; 75 7C
        jmp     L_07D7                          ; E9 63 01
L_0674:
        push    word ptr [bp - 0x114]           ; FF B6 EC FE
        call    far KERNEL.GLOBALLOCK           ; 9A AE 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x1b6], ax       ; 89 86 4A FE
        mov     word ptr [bp - 0x1b4], dx       ; 89 96 4C FE
        or      ax, dx                          ; 0B C2
        jne     L_068C                          ; 75 03
        jmp     L_0885                          ; E9 F9 01
L_068C:
        push    dx                              ; 52
        push    word ptr [bp - 0x1b6]           ; FF B6 4A FE
        lea     ax, [bp - 0x1a8]                ; 8D 86 58 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_56                   ; 9A 6D 01 00 00 [FIXUP]
        push    word ptr [bp - 0x114]           ; FF B6 EC FE
        call    far KERNEL.GLOBALUNLOCK         ; 9A 75 01 00 00 [FIXUP]
        push    word ptr [bp - 0x1a2]           ; FF B6 5E FE
        call    far KERNEL.GLOBALLOCK           ; 9A 64 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x180], ax       ; 89 86 80 FE
        mov     word ptr [bp - 0x17e], dx       ; 89 96 82 FE
        or      ax, dx                          ; 0B C2
        jne     L_06C1                          ; 75 03
        jmp     L_0885                          ; E9 C4 01
L_06C1:
        push    word ptr [bp - 0x1a2]           ; FF B6 5E FE
        call    far KERNEL.GLOBALSIZE           ; 9A 53 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x1ac], ax       ; 89 86 54 FE
        mov     word ptr [bp - 0x1aa], dx       ; 89 96 56 FE
        lea     ax, [bp - 0x1a8]                ; 8D 86 58 FE
        push    ax                              ; 50
        lea     ax, [bp - 0x19e]                ; 8D 86 62 FE
        push    ax                              ; 50
        lea     ax, [bp - 0x19c]                ; 8D 86 64 FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0930                          ; E8 4A 02
        or      ax, ax                          ; 0B C0
        jne     L_06ED                          ; 75 03
        jmp     L_07D7                          ; E9 EA 00
L_06ED:
        mov     word ptr [bp - 0x18a], 0x28     ; C7 86 76 FE 28 00
        mov     ax, word ptr [bp - 0x1ac]       ; 8B 86 54 FE
        mov     dx, word ptr [bp - 0x1aa]       ; 8B 96 56 FE
        mov     word ptr [bp - 0x188], ax       ; 89 86 78 FE
        mov     word ptr [bp - 0x186], dx       ; 89 96 7A FE
        or      dx, dx                          ; 0B D2
        ja      L_0714                          ; 77 0D
        jb      L_070E                          ; 72 05
        cmp     ax, 0xffff                      ; 3D FF FF
        ja      L_0714                          ; 77 06
L_070E:
        mov     ax, word ptr [bp - 0x1ac]       ; 8B 86 54 FE
        jmp     L_0717                          ; EB 03
L_0714:
        mov     ax, 0xffff                      ; B8 FF FF
L_0717:
        mov     word ptr [bp - 0x19a], ax       ; 89 86 66 FE
        or      byte ptr [bp - 0x1a8], 0x80     ; 80 8E 58 FE 80
        push    word ptr [0xc20]                ; FF 36 20 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0x1a8]                ; 8D 86 58 FE
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_98                   ; 9A FF FF 00 00 [FIXUP]
        and     byte ptr [bp - 0x1a8], 0x7f     ; 80 A6 58 FE 7F
        mov     word ptr [bp - 0xa], 0x28       ; C7 46 F6 28 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_0777                          ; EB 29
L_074E:
        push    word ptr [bp - 0x114]           ; FF B6 EC FE
        call    far KERNEL.GLOBALSIZE           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1ac], ax       ; 89 86 54 FE
        mov     word ptr [bp - 0x1aa], dx       ; 89 96 56 FE
        push    word ptr [bp - 0x114]           ; FF B6 EC FE
        call    far KERNEL.GLOBALLOCK           ; 9A 49 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x180], ax       ; 89 86 80 FE
        mov     word ptr [bp - 0x17e], dx       ; 89 96 82 FE
        or      ax, dx                          ; 0B C2
        jne     L_0777                          ; 75 03
        jmp     L_0885                          ; E9 0E 01
L_0777:
        cmp     word ptr [bp - 0x1aa], 0        ; 83 BE 56 FE 00
        jb      L_07D2                          ; 72 54
        ja      L_0787                          ; 77 07
        cmp     word ptr [bp - 0x1ac], 0        ; 83 BE 54 FE 00
        jbe     L_07D2                          ; 76 4B
L_0787:
        cmp     word ptr [bp - 0x1aa], 0        ; 83 BE 56 FE 00
        ja      L_079E                          ; 77 10
        jb      L_0798                          ; 72 08
        cmp     word ptr [bp - 0x1ac], 0xff     ; 81 BE 54 FE FF 00
        jae     L_079E                          ; 73 06
L_0798:
        mov     ax, word ptr [bp - 0x1ac]       ; 8B 86 54 FE
        jmp     L_07A1                          ; EB 03
L_079E:
        mov     ax, 0xff                        ; B8 FF 00
L_07A1:
        mov     word ptr [bp - 0x1be], ax       ; 89 86 42 FE
        mov     word ptr [bp - 0x1ba], 0        ; C7 86 46 FE 00 00
        cmp     word ptr [0x66], 0              ; 83 3E 66 00 00
        jne     L_080A                          ; 75 58
        push    word ptr [bp - 0x17e]           ; FF B6 82 FE
        push    word ptr [bp - 0x180]           ; FF B6 80 FE
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ax                              ; 50
        lea     ax, [bp - 0x1bc]                ; 8D 86 44 FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_08C5                          ; E8 FB 00
        mov     word ptr [bp - 0x1be], ax       ; 89 86 42 FE
        or      ax, ax                          ; 0B C0
        jne     L_07FE                          ; 75 2C
L_07D2:
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
L_07D7:
        cmp     word ptr [0x66], 0              ; 83 3E 66 00 00
        jne     L_07E1                          ; 75 03
        jmp     L_087C                          ; E9 9B 00
L_07E1:
        cmp     word ptr [bp - 0x1a8], 0x63     ; 83 BE 58 FE 63
        je      L_07EB                          ; 74 03
        jmp     L_0876                          ; E9 8B 00
L_07EB:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 81 08 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALFREE           ; 9A 1C 01 00 00 [FIXUP]
        jmp     L_0885                          ; E9 87 00
L_07FE:
        cmp     word ptr [bp - 0x1bc], 0        ; 83 BE 44 FE 00
        je      L_083B                          ; 74 36
        mov     ax, word ptr [0x13cc]           ; A1 CC 13
        jmp     L_0837                          ; EB 2D
L_080A:
        push    word ptr [bp - 0x17e]           ; FF B6 82 FE
        push    word ptr [bp - 0x180]           ; FF B6 80 FE
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x1be]           ; FF B6 42 FE
        call    far _entry_56                   ; 9A E2 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1be]       ; 8B 86 42 FE
        sub     dx, dx                          ; 2B D2
        cmp     dx, word ptr [bp - 0x1aa]       ; 3B 96 56 FE
        jne     L_083B                          ; 75 0E
        cmp     ax, word ptr [bp - 0x1ac]       ; 3B 86 54 FE
        jne     L_083B                          ; 75 08
        lea     ax, [bp - 0x17c]                ; 8D 86 84 FE
L_0837:
        mov     word ptr [bp - 0x1ba], ax       ; 89 86 46 FE
L_083B:
        push    word ptr [0xc20]                ; FF 36 20 0C
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ax                              ; 50
        push    word ptr [bp - 0x1be]           ; FF B6 42 FE
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        push    word ptr [bp - 0x1ba]           ; FF B6 46 FE
        call    far _entry_98                   ; 9A 39 07 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1be]       ; 8B 86 42 FE
        sub     dx, dx                          ; 2B D2
        sub     word ptr [bp - 0x1ac], ax       ; 29 86 54 FE
        sbb     word ptr [bp - 0x1aa], dx       ; 19 96 56 FE
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        adc     word ptr [bp - 8], dx           ; 11 56 F8
        add     word ptr [bp - 0x180], ax       ; 01 86 80 FE
        jmp     L_0777                          ; E9 01 FF
L_0876:
        push    word ptr [bp - 0x1a2]           ; FF B6 5E FE
        jmp     L_0880                          ; EB 04
L_087C:
        push    word ptr [bp - 0x114]           ; FF B6 EC FE
L_0880:
        call    far KERNEL.GLOBALUNLOCK         ; 9A 1E 04 00 00 [FIXUP]
L_0885:
        cmp     word ptr [bp - 0x116], 0        ; 83 BE EA FE 00
        je      L_0895                          ; 74 09
        push    word ptr [bp - 0x116]           ; FF B6 EA FE
        call    far GDI.DELETEOBJECT            ; 9A E4 0A 00 00 [FIXUP]
L_0895:
        call    far USER.CLOSECLIPBOARD         ; 9A 43 00 00 00 [FIXUP]
        cmp     word ptr [0x3c], 0              ; 83 3E 3C 00 00
        je      L_08B9                          ; 74 18
        push    word ptr [0xc20]                ; FF 36 20 0C
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_206                  ; 9A F4 04 00 00 [FIXUP]
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_08B9:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_08BC:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08C5 -- offset 0x08C5 -- 48 instr
; Funcion mediana (48 instr, 0 calls).
; tags: far, medium
; callers: sub_0588
;----------------------------------------------------------------------
L_08C5:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_56                   ; 9A 9C 06 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     byte ptr [bx + si], 0           ; C6 00 00
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0907                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0909                          ; EB 02
L_0907:
        sub     ax, ax                          ; 2B C0
L_0909:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], ax               ; 89 07
        or      ax, ax                          ; 0B C0
        je      L_091B                          ; 74 09
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        inc     ax                              ; 40
        jmp     L_0924                          ; EB 09
L_091B:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        dec     ax                              ; 48
L_0924:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0930 -- offset 0x0930 -- 132 instr
; Dispatcher: tabla de decisiones cmp+jcc (132 instr).
; tags: calls_gdi, dispatcher, far
; callers: sub_0588
; calls (inter): GDI.GETDEVICECAPS
;----------------------------------------------------------------------
L_0930:
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
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 5F 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 6F 09 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 7F 09 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     ax, 7                           ; 3D 07 00
        jge     L_0991                          ; 7D 03
        jmp     L_0A2F                          ; E9 9E 00
L_0991:
        cmp     ax, 8                           ; 3D 08 00
        jle     L_0999                          ; 7E 03
        jmp     L_0A2F                          ; E9 96 00
L_0999:
        cmp     word ptr [si + 2], 0            ; 83 7C 02 00
        jle     L_09A8                          ; 7E 09
        cmp     word ptr [si + 4], 0            ; 83 7C 04 00
        jle     L_09A8                          ; 7E 03
        jmp     L_0A2A                          ; E9 82 00
L_09A8:
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x12c                       ; B8 2C 01
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_369                  ; 9A D9 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [si + 2], 0            ; 83 7C 02 00
        jne     L_09DF                          ; 75 1B
        cmp     word ptr [si + 4], 0            ; 83 7C 04 00
        jne     L_09DF                          ; 75 15
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x12c                       ; B8 2C 01
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_369                  ; 9A 3C 0A 00 00 [FIXUP]
        jmp     L_0A17                          ; EB 38
L_09DF:
        cmp     word ptr [si + 4], 0            ; 83 7C 04 00
        jge     L_09EC                          ; 7D 07
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        neg     ax                              ; F7 D8
        jmp     L_09EF                          ; EB 03
L_09EC:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
L_09EF:
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cmp     word ptr [si + 2], 0            ; 83 7C 02 00
        jge     L_0A05                          ; 7D 07
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        neg     ax                              ; F7 D8
        jmp     L_0A08                          ; EB 03
L_0A05:
        mov     ax, word ptr [si + 2]           ; 8B 44 02
L_0A08:
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_115                  ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_157                  ; 9A FF FF 00 00 [FIXUP]
L_0A17:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0A1A:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0A26                          ; 74 06
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_0A59                          ; 75 33
L_0A26:
        sub     ax, ax                          ; 2B C0
        jmp     L_0A86                          ; EB 5C
L_0A2A:
        mov     word ptr [bp - 0xe], 3          ; C7 46 F2 03 00
L_0A2F:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_369                  ; 9A 50 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [si + 4]               ; FF 74 04
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_369                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_0A1A                          ; EB C1
L_0A59:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        push    word ptr [0x10ee]               ; FF 36 EE 10
        call    far _entry_94                   ; 9A 7A 0A 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx], ax               ; 89 07
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        push    word ptr [0x10fe]               ; FF 36 FE 10
        call    far _entry_94                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, 1                           ; B8 01 00
L_0A86:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A92 -- offset 0x0A92 -- 94 instr
; Funcion compleja: 94 instrucciones, 7 llamadas, 9 branches.
; tags: calls_gdi, complex
; callers: sub_0588
; calls (inter): GDI.BITBLT, GDI.CREATEBITMAP, GDI.CREATECOMPATIBLEDC, GDI.DELETEDC, GDI.DELETEOBJECT, GDI.GETOBJECT (+1 mas)
;----------------------------------------------------------------------
L_0A92:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        push    word ptr [0x10b0]               ; FF 36 B0 10
        call    far GDI.CREATECOMPATIBLEDC      ; 9A 01 0B 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_0AED                          ; 75 2F
L_0ABE:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0ACC                          ; 74 08
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A D6 0A 00 00 [FIXUP]
L_0ACC:
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        je      L_0ADA                          ; 74 08
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far GDI.DELETEDC                ; 9A 6F 0B 00 00 [FIXUP]
L_0ADA:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0AE8                          ; 74 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
L_0AE8:
        sub     ax, ax                          ; 2B C0
        jmp     L_0B7E                          ; E9 91 00
L_0AED:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.SELECTOBJECT            ; 9A 41 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0ABE                          ; 74 C2
        push    word ptr [0x10b0]               ; FF 36 B0 10
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        or      ax, ax                          ; 0B C0
        je      L_0ABE                          ; 74 B2
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A 97 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0ABE                          ; 74 9D
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0ABE                          ; 74 82
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0B4C                          ; 75 03
        jmp     L_0ABE                          ; E9 72 FF
L_0B4C:
        push    word ptr [bp - 0x16]            ; FF 76 EA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 6]               ; FF 76 FA
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A 77 0B 00 00 [FIXUP]
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0B7E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
