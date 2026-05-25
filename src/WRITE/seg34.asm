; AUTO-GENERATED from original WRITE segment 34
; segment_size=8542 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 165 instr
; Dispatcher: tabla de decisiones cmp+jcc (165 instr).
; tags: dispatcher
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x16                        ; 83 EC 16
        cmp     word ptr [0x12b4], -1           ; 83 3E B4 12 FF
        jne     L_0010                          ; 75 03
        jmp     L_01EB                          ; E9 DB 01
L_0010:
        mov     bx, word ptr [0x1bee]           ; 8B 1E EE 1B
        push    word ptr [bx]                   ; FF 37
        call    far _entry_61                   ; 9A 21 02 00 00 [FIXUP]
        dec     ax                              ; 48
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_002F                          ; 75 0C
        mov     ax, 0x1001                      ; B8 01 10
        push    ax                              ; 50
        call    far _entry_47                   ; 9A DA 00 00 00 [FIXUP]
        jmp     L_01EB                          ; E9 BC 01
L_002F:
        call    L_0E12                          ; E8 E0 0D
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    L_0D90                          ; E8 58 0D
        or      ax, ax                          ; 0B C0
        jne     L_003F                          ; 75 03
        jmp     L_01EB                          ; E9 AC 01
L_003F:
        mov     ax, word ptr [0x31a]            ; A1 1A 03
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        je      L_0060                          ; 74 17
        push    word ptr [0x2c8]                ; FF 36 C8 02
        push    word ptr [0x2c6]                ; FF 36 C6 02
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        call    far _entry_175                  ; 9A E7 02 00 00 [FIXUP]
        jmp     L_0067                          ; EB 07
L_0060:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
L_0067:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jg      L_0094                          ; 7F 0F
        jl      L_008C                          ; 7C 05
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        ja      L_0094                          ; 77 08
L_008C:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        jmp     L_009B                          ; EB 07
L_0094:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
L_009B:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
L_00A1:
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        mov     bx, word ptr [0xfa0]            ; 8B 1E A0 0F
        push    word ptr [bx]                   ; FF 37
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B8C                          ; E8 D4 0A
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        cmp     dx, -1                          ; 83 FA FF
        je      L_00C6                          ; 74 03
        jmp     L_015C                          ; E9 96 00
L_00C6:
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_00CE                          ; 74 03
        jmp     L_015C                          ; E9 8E 00
L_00CE:
        cmp     word ptr [0x724], 0             ; 83 3E 24 07 00
        je      L_00ED                          ; 74 18
        mov     ax, 0x1003                      ; B8 03 10
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 15 01 00 00 [FIXUP]
        mov     word ptr [0x724], 0             ; C7 06 24 07 00 00
        mov     word ptr [0x31a], 0             ; C7 06 1A 03 00 00
        jmp     L_01E2                          ; E9 F5 00
L_00ED:
        mov     ax, word ptr [0x2c6]            ; A1 C6 02
        mov     dx, word ptr [0x2c8]            ; 8B 16 C8 02
        cmp     word ptr [bp - 0x14], dx        ; 39 56 EC
        jne     L_013A                          ; 75 41
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jne     L_013A                          ; 75 3C
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_013A                          ; 74 36
        cmp     word ptr [0x31a], 0             ; 83 3E 1A 03 00
        je      L_0110                          ; 74 05
        mov     ax, 0x1000                      ; B8 00 10
        jmp     L_0113                          ; EB 03
L_0110:
        mov     ax, 0x1001                      ; B8 01 10
L_0113:
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x31a], 0             ; 83 3E 1A 03 00
        jne     L_0123                          ; 75 03
        jmp     L_01E2                          ; E9 BF 00
L_0123:
        mov     word ptr [0x31a], 0             ; C7 06 1A 03 00 00
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [0x2c6], ax            ; A3 C6 02
        mov     word ptr [0x2c8], dx            ; 89 16 C8 02
        jmp     L_01D9                          ; E9 9F 00
L_013A:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [0x2c6]            ; A1 C6 02
        mov     dx, word ptr [0x2c8]            ; 8B 16 C8 02
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        jmp     L_00A1                          ; E9 45 FF
L_015C:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_176                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, word ptr [0x1c08]           ; A1 08 1C
        mov     dx, word ptr [0x1c0a]           ; 8B 16 0A 1C
        sub     ax, word ptr [bp - 0x12]        ; 2B 46 EE
        sbb     dx, word ptr [bp - 0x10]        ; 1B 56 F0
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_108A                          ; E8 FB 0E
        or      ax, ax                          ; 0B C0
        jne     L_0196                          ; 75 03
        jmp     L_00A1                          ; E9 0B FF
L_0196:
        cmp     word ptr [0x31a], 0             ; 83 3E 1A 03 00
        jne     L_01B0                          ; 75 13
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        mov     word ptr [0x2c6], ax            ; A3 C6 02
        mov     word ptr [0x2c8], dx            ; 89 16 C8 02
        mov     word ptr [0x31a], 1             ; C7 06 1A 03 01 00
L_01B0:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x1c0a]               ; FF 36 0A 1C
        push    word ptr [0x1c08]               ; FF 36 08 1C
        call    far _entry_97                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    L_199F                          ; E8 C6 17
L_01D9:
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0x744], ax            ; A3 44 07
        mov     word ptr [0x7a], ax             ; A3 7A 00
L_01E2:
        push    word ptr [0xfa0]                ; FF 36 A0 0F
        call    far KERNEL.LOCALFREE            ; 9A 6B 02 00 00 [FIXUP]
L_01EB:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01EF -- offset 0x01EF -- 864 instr
; Dispatcher: tabla de decisiones cmp+jcc (864 instr).
; tags: calls_kernel, dispatcher
; callers: sub_1617
; calls (intra): sub_0B8C, sub_0D90, sub_0E12, sub_0E5D, sub_0FE7, sub_108A (+2 mas)
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_01EF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x48                        ; 83 EC 48
        push    si                              ; 56
        mov     ax, word ptr [0x31a]            ; A1 1A 03
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x3a], 0xffff    ; C7 46 C6 FF FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0210                          ; 75 03
        jmp     L_0B85                          ; E9 75 09
L_0210:
        cmp     word ptr [0x12b4], -1           ; 83 3E B4 12 FF
        jne     L_021A                          ; 75 03
        jmp     L_0B85                          ; E9 6B 09
L_021A:
        mov     bx, word ptr [0x1bee]           ; 8B 1E EE 1B
        push    word ptr [bx]                   ; FF 37
        call    far _entry_61                   ; 9A 4A 02 00 00 [FIXUP]
        dec     ax                              ; 48
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        or      ax, ax                          ; 0B C0
        jne     L_0233                          ; 75 06
L_022D:
        mov     ax, 0x1001                      ; B8 01 10
        jmp     L_0595                          ; E9 62 03
L_0233:
        call    L_0E12                          ; E8 DC 0B
        push    word ptr [bp - 0x26]            ; FF 76 DA
        call    L_0D90                          ; E8 54 0B
        or      ax, ax                          ; 0B C0
        jne     L_0243                          ; 75 03
        jmp     L_0B85                          ; E9 42 09
L_0243:
        mov     bx, word ptr [0x1110]           ; 8B 1E 10 11
        push    word ptr [bx]                   ; FF 37
        call    far _entry_61                   ; 9A C3 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 8A 02 00 00 [FIXUP]
        mov     word ptr [0x1298], ax           ; A3 98 12
        inc     ax                              ; 40
        jne     L_0272                          ; 75 0C
        push    word ptr [0xfa0]                ; FF 36 A0 0F
L_026A:
        call    far KERNEL.LOCALFREE            ; 9A 99 02 00 00 [FIXUP]
        jmp     L_0B85                          ; E9 13 09
L_0272:
        mov     bx, word ptr [0x1110]           ; 8B 1E 10 11
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [0x1298]           ; 8B 1E 98 12
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1242], ax           ; A3 42 12
        inc     ax                              ; 40
        jne     L_02A3                          ; 75 0F
        push    word ptr [0xfa0]                ; FF 36 A0 0F
L_0298:
        call    far KERNEL.LOCALFREE            ; 9A B2 02 00 00 [FIXUP]
        push    word ptr [0x1298]               ; FF 36 98 12
        jmp     L_026A                          ; EB C7
L_02A3:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_0E5D                          ; E8 B4 0B
        or      ax, ax                          ; 0B C0
        jne     L_02BC                          ; 75 0F
        push    word ptr [0xfa0]                ; FF 36 A0 0F
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1242]               ; FF 36 42 12
        jmp     L_0298                          ; EB DC
L_02BC:
        mov     bx, word ptr [0x1298]           ; 8B 1E 98 12
        push    word ptr [bx]                   ; FF 37
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        dec     ax                              ; 48
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     word ptr [bp - 0x3c], 1         ; C7 46 C4 01 00
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        je      L_02ED                          ; 74 17
        push    word ptr [0x2c8]                ; FF 36 C8 02
        push    word ptr [0x2c6]                ; FF 36 C6 02
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        call    far _entry_175                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02F4                          ; EB 07
L_02ED:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
L_02F4:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     word ptr [bp - 0x28], dx        ; 89 56 D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0319                          ; 75 06
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_0322                          ; 75 09
L_0319:
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        jmp     L_0343                          ; EB 21
L_0322:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        cmp     word ptr [bp - 0x1a], dx        ; 39 56 E6
        jg      L_033C                          ; 7F 0F
        jl      L_0334                          ; 7C 05
        cmp     word ptr [bp - 0x1c], ax        ; 39 46 E4
        jae     L_033C                          ; 73 08
L_0334:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        jmp     L_0343                          ; EB 07
L_033C:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
L_0343:
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     word ptr [bp - 0x46], dx        ; 89 56 BA
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     word ptr [bp - 0x42], dx        ; 89 56 BE
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_036D                          ; 74 11
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        mov     dx, word ptr [bp - 0x46]        ; 8B 56 BA
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     word ptr [bp - 0x1e], 1         ; C7 46 E2 01 00
L_036D:
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_89                   ; 9A 51 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x3e], dx        ; 89 56 C2
        cmp     word ptr [bp - 0x42], dx        ; 39 56 BE
        jl      L_03A1                          ; 7C 1B
        jg      L_038D                          ; 7F 05
        cmp     word ptr [bp - 0x44], ax        ; 39 46 BC
        jbe     L_03A1                          ; 76 14
L_038D:
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x40]            ; FF 76 C0
        jmp     L_03BD                          ; EB 1C
L_03A1:
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        mov     dx, word ptr [bp - 0x42]        ; 8B 56 BE
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        sbb     dx, word ptr [bp - 0x1a]        ; 1B 56 E6
        push    dx                              ; 52
        push    ax                              ; 50
L_03BD:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_37                   ; 9A B9 04 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_03D8                          ; 74 03
        jmp     L_0B3C                          ; E9 64 07
L_03D8:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     dx, word ptr [bp - 0x1a]        ; 8B 56 E6
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
L_03E4:
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    word ptr [bp - 0x48]            ; FF 76 B8
        mov     bx, word ptr [0xfa0]            ; 8B 1E A0 0F
        push    word ptr [bx]                   ; FF 37
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B8C                          ; E8 91 07
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     word ptr [bp - 0x2c], dx        ; 89 56 D4
        cmp     dx, -1                          ; 83 FA FF
        je      L_0409                          ; 74 03
        jmp     L_05E2                          ; E9 D9 01
L_0409:
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0411                          ; 74 03
        jmp     L_05E2                          ; E9 D1 01
L_0411:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        cmp     word ptr [bp - 0x46], dx        ; 39 56 BA
        jne     L_0427                          ; 75 0B
        cmp     word ptr [bp - 0x48], ax        ; 39 46 B8
        jne     L_0427                          ; 75 06
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        jne     L_0431                          ; 75 0A
L_0427:
        cmp     word ptr [0x724], 0             ; 83 3E 24 07 00
        jne     L_0431                          ; 75 03
        jmp     L_05C1                          ; E9 90 01
L_0431:
        push    word ptr [0xfa0]                ; FF 36 A0 0F
        call    far KERNEL.LOCALFREE            ; 9A 3F 04 00 00 [FIXUP]
        push    word ptr [0x1242]               ; FF 36 42 12
        call    far KERNEL.LOCALFREE            ; 9A 48 04 00 00 [FIXUP]
        push    word ptr [0x1298]               ; FF 36 98 12
        call    far KERNEL.LOCALFREE            ; 9A 11 07 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_89                   ; 9A 2C 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x3e], dx        ; 89 56 C2
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_046A                          ; 75 09
        cmp     word ptr [bp - 0x3c], 0         ; 83 7E C4 00
        jne     L_046A                          ; 75 03
        jmp     L_0522                          ; E9 B8 00
L_046A:
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        mov     dx, word ptr [bp - 0x3e]        ; 8B 56 C2
        cmp     word ptr [bp - 0x42], dx        ; 39 56 BE
        jl      L_0490                          ; 7C 1B
        jg      L_047C                          ; 7F 05
        cmp     word ptr [bp - 0x44], ax        ; 39 46 BC
        jbe     L_0490                          ; 76 14
L_047C:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x40]            ; FF 76 C0
        jmp     L_04AC                          ; EB 1C
L_0490:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        mov     dx, word ptr [bp - 0x42]        ; 8B 56 BE
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        sbb     dx, word ptr [bp - 0x1a]        ; 1B 56 E6
        push    dx                              ; 52
        push    ax                              ; 50
L_04AC:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_37                   ; 9A 9F 06 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_04C7                          ; 74 03
        jmp     L_0B3C                          ; E9 75 06
L_04C7:
        mov     word ptr [0xcac], 0x12          ; C7 06 AC 0C 12 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_35                   ; 9A 3F 05 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_04F5                          ; 74 08
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     dx, word ptr [bp - 0x1a]        ; 8B 56 E6
        jmp     L_04FB                          ; EB 06
L_04F5:
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        mov     dx, word ptr [bp - 0x42]        ; 8B 56 BE
L_04FB:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_97                   ; 9A 6D 05 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x7a], ax             ; A3 7A 00
        or      ax, ax                          ; 0B C0
        je      L_0585                          ; 74 79
        mov     word ptr [0x31a], 0             ; C7 06 1A 03 00 00
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [0x2c6], ax            ; A3 C6 02
        mov     word ptr [0x2c8], dx            ; 89 16 C8 02
        jmp     L_0585                          ; EB 63
L_0522:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0585                          ; 75 5D
        cmp     word ptr [bp - 0x2c], -1        ; 83 7E D4 FF
        jne     L_054D                          ; 75 1F
        cmp     word ptr [bp - 0x2e], -1        ; 83 7E D2 FF
        jne     L_054D                          ; 75 19
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_35                   ; 9A 5E 05 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x42]            ; FF 76 BE
        push    word ptr [bp - 0x44]            ; FF 76 BC
        jmp     L_056C                          ; EB 1F
L_054D:
        cmp     word ptr [bp - 0x3c], 0         ; 83 7E C4 00
        jne     L_0571                          ; 75 1E
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_35                   ; 9A BB 01 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x1c0a]               ; FF 36 0A 1C
        push    word ptr [0x1c08]               ; FF 36 08 1C
L_056C:
        call    far _entry_97                   ; 9A CA 01 00 00 [FIXUP]
L_0571:
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    L_199F                          ; E8 23 14
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0x744], ax            ; A3 44 07
        mov     word ptr [0x7a], ax             ; A3 7A 00
L_0585:
        cmp     word ptr [0x724], 0             ; 83 3E 24 07 00
        je      L_059E                          ; 74 12
        mov     word ptr [0x724], 0             ; C7 06 24 07 00 00
        mov     ax, 0x1003                      ; B8 03 10
L_0595:
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 08 07 00 00 [FIXUP]
        jmp     L_0B85                          ; E9 E7 05
L_059E:
        cmp     word ptr [bp - 0x3c], 0         ; 83 7E C4 00
        jne     L_05A7                          ; 75 03
        jmp     L_0B85                          ; E9 DE 05
L_05A7:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_05B2                          ; 74 05
        mov     ax, 0x1002                      ; B8 02 10
        jmp     L_0595                          ; EB E3
L_05B2:
        cmp     word ptr [0x31a], 0             ; 83 3E 1A 03 00
        jne     L_05BC                          ; 75 03
        jmp     L_022D                          ; E9 71 FC
L_05BC:
        mov     ax, 0x1000                      ; B8 00 10
        jmp     L_0595                          ; EB D4
L_05C1:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     word ptr [bp - 0x46], dx        ; 89 56 BA
        mov     word ptr [bp - 0x1e], 1         ; C7 46 E2 01 00
        jmp     L_03E4                          ; E9 02 FE
L_05E2:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        mov     dx, word ptr [bp - 0x2c]        ; 8B 56 D4
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_176                  ; 9A 6B 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        mov     ax, word ptr [0x1c08]           ; A1 08 1C
        mov     dx, word ptr [0x1c0a]           ; 8B 16 0A 1C
        sub     ax, word ptr [bp - 0x2e]        ; 2B 46 D2
        sbb     dx, word ptr [bp - 0x2c]        ; 1B 56 D4
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_108A                          ; E8 75 0A
        or      ax, ax                          ; 0B C0
        jne     L_061C                          ; 75 03
        jmp     L_03E4                          ; E9 C8 FD
L_061C:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0625                          ; 74 03
        jmp     L_06ED                          ; E9 C8 00
L_0625:
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        mov     dx, word ptr [bp - 0x28]        ; 8B 56 D8
        cmp     word ptr [bp - 0x2c], dx        ; 39 56 D4
        jne     L_0649                          ; 75 19
        cmp     word ptr [bp - 0x2e], ax        ; 39 46 D2
        jne     L_0649                          ; 75 14
        mov     ax, word ptr [0x1c08]           ; A1 08 1C
        mov     dx, word ptr [0x1c0a]           ; 8B 16 0A 1C
        cmp     word ptr [bp - 0x42], dx        ; 39 56 BE
        jne     L_0649                          ; 75 08
        cmp     word ptr [bp - 0x44], ax        ; 39 46 BC
        jne     L_0649                          ; 75 03
        jmp     L_06ED                          ; E9 A4 00
L_0649:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_06CD                          ; 74 7E
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        mov     dx, word ptr [bp - 0x2c]        ; 8B 56 D4
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     word ptr [bp - 0x28], dx        ; 89 56 D8
        mov     ax, word ptr [0x1c08]           ; A1 08 1C
        mov     dx, word ptr [0x1c0a]           ; 8B 16 0A 1C
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     word ptr [bp - 0x42], dx        ; 89 56 BE
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        sbb     dx, word ptr [bp - 0x1a]        ; 1B 56 E6
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_06AD                          ; 74 03
        jmp     L_0B3C                          ; E9 8F 04
L_06AD:
        cmp     word ptr [0x31a], 0             ; 83 3E 1A 03 00
        je      L_06B7                          ; 74 03
        jmp     L_0431                          ; E9 7A FD
L_06B7:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        mov     dx, word ptr [bp - 0x2c]        ; 8B 56 D4
        mov     word ptr [0x2c6], ax            ; A3 C6 02
        mov     word ptr [0x2c8], dx            ; 89 16 C8 02
        mov     word ptr [0x31a], 1             ; C7 06 1A 03 01 00
        jmp     L_0431                          ; E9 64 FD
L_06CD:
        mov     word ptr [bp - 0x3c], 1         ; C7 46 C4 01 00
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        mov     dx, word ptr [bp - 0x28]        ; 8B 56 D8
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        mov     dx, word ptr [bp - 0x42]        ; 8B 56 BE
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     word ptr [bp - 0x46], dx        ; 89 56 BA
        jmp     L_0431                          ; E9 44 FD
L_06ED:
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        jne     L_0703                          ; 75 0A
        cmp     word ptr [0x3c], 0              ; 83 3E 3C 00 00
        jne     L_0703                          ; 75 03
        jmp     L_079B                          ; E9 98 00
L_0703:
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 28 00 00 00 [FIXUP]
        push    word ptr [0xfa0]                ; FF 36 A0 0F
        call    far KERNEL.LOCALFREE            ; 9A 1A 07 00 00 [FIXUP]
        push    word ptr [0x1298]               ; FF 36 98 12
        call    far KERNEL.LOCALFREE            ; 9A 23 07 00 00 [FIXUP]
        push    word ptr [0x1242]               ; FF 36 42 12
        call    far KERNEL.LOCALFREE            ; 9A E7 01 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x3e], dx        ; 89 56 C2
        cmp     word ptr [bp - 0x46], dx        ; 39 56 BA
        jl      L_0756                          ; 7C 1B
        jg      L_0742                          ; 7F 05
        cmp     word ptr [bp - 0x48], ax        ; 39 46 B8
        jbe     L_0756                          ; 76 14
L_0742:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x40]            ; FF 76 C0
        jmp     L_0772                          ; EB 1C
L_0756:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        mov     dx, word ptr [bp - 0x42]        ; 8B 56 BE
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        sbb     dx, word ptr [bp - 0x1a]        ; 1B 56 E6
        push    dx                              ; 52
        push    ax                              ; 50
L_0772:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_37                   ; 9A A7 09 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0792                          ; 74 08
        call    far _entry_39                   ; 9A 6E 03 00 00 [FIXUP]
        jmp     L_0B85                          ; E9 F3 03
L_0792:
        mov     word ptr [0xcac], 0x12          ; C7 06 AC 0C 12 00
        jmp     L_0B85                          ; E9 EA 03
L_079B:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        and     byte ptr [bp - 0x35], 0xbf      ; 80 66 CB BF
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        cmp     word ptr [0x312], 0             ; 83 3E 12 03 00
        jne     L_07ED                          ; 75 1B
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        mov     ax, word ptr [0x1c08]           ; A1 08 1C
        mov     dx, word ptr [0x1c0a]           ; 8B 16 0A 1C
        sub     ax, word ptr [bp - 0x2e]        ; 2B 46 D2
        sbb     dx, word ptr [bp - 0x2c]        ; 1B 56 D4
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0FE7                          ; E8 FD 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_07ED:
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        je      L_0822                          ; 74 2D
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        or      ax, ax                          ; 0B C0
        je      L_080C                          ; 74 10
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0804                          ; 75 03
        jmp     L_08BD                          ; E9 B9 00
L_0804:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_080C                          ; 75 03
        jmp     L_08EE                          ; E9 E2 00
L_080C:
        mov     bx, word ptr [0x1298]           ; 8B 1E 98 12
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [0x1242]           ; 8B 1E 42 12
        push    word ptr [bx]                   ; FF 37
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_45                   ; 9A CF 08 00 00 [FIXUP]
L_0822:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jne     L_086A                          ; 75 31
        mov     ax, 0x102c                      ; B8 2C 10
        push    ax                              ; 50
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_46                   ; 9A 62 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_086A                          ; 75 1C
        cmp     word ptr [0x318], 0             ; 83 3E 18 03 00
        je      L_0893                          ; 74 3E
        mov     ax, 0x1142                      ; B8 42 11
        push    ax                              ; 50
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        mov     ax, 0x66                        ; B8 66 00
        push    ax                              ; 50
        call    far _entry_46                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0893                          ; 74 29
L_086A:
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        call    far _entry_177                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x1242]           ; 8B 1E 42 12
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 0x26]            ; FF 76 DA
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        cmp     word ptr [0x318], 0             ; 83 3E 18 03 00
        je      L_0893                          ; 74 05
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1F98                          ; E8 05 17
L_0893:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_104                  ; 9A 5E 09 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0921                          ; 74 67
        jmp     L_0B3C                          ; E9 7F 02
L_08BD:
        mov     bx, word ptr [0x1298]           ; 8B 1E 98 12
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [0x1242]           ; 8B 1E 42 12
        push    word ptr [bx]                   ; FF 37
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 82 02 00 00 [FIXUP]
        mov     bx, word ptr [0x1298]           ; 8B 1E 98 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_70                   ; 9A 0D 09 00 00 [FIXUP]
        mov     bx, word ptr [0x1242]           ; 8B 1E 42 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     byte ptr [bx], al               ; 88 07
        jmp     L_0822                          ; E9 34 FF
L_08EE:
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_08F3:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_08FE                          ; 7C 03
        jmp     L_0822                          ; E9 24 FF
L_08FE:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     si, word ptr [0x1298]           ; 8B 36 98 12
        mov     si, word ptr [si]               ; 8B 34
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_70                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     si, word ptr [0x1242]           ; 8B 36 42 12
        mov     si, word ptr [si]               ; 8B 34
        mov     byte ptr [bx + si], al          ; 88 00
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_08F3                          ; EB D2
L_0921:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        cdq                                     ; 99
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        adc     dx, word ptr [bp - 0x2c]        ; 13 56 D4
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0x1c08]           ; A1 08 1C
        mov     dx, word ptr [0x1c0a]           ; 8B 16 0A 1C
        sub     ax, word ptr [bp - 0x2e]        ; 2B 46 D2
        sbb     dx, word ptr [bp - 0x2c]        ; 1B 56 D4
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_104                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        sub     ax, word ptr [0x13a6]           ; 2B 06 A6 13
        sbb     dx, word ptr [0x13a8]           ; 1B 16 A8 13
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0980                          ; 74 03
        jmp     L_0B3C                          ; E9 BC 01
L_0980:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_09BE                          ; 75 38
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_37                   ; 9A CA 03 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_09B5                          ; 74 03
        jmp     L_0B3C                          ; E9 87 01
L_09B5:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A D2 04 00 00 [FIXUP]
L_09BE:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        cdq                                     ; 99
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        sbb     dx, word ptr [bp - 0x12]        ; 1B 56 EE
        add     word ptr [bp - 0x48], ax        ; 01 46 B8
        adc     word ptr [bp - 0x46], dx        ; 11 56 BA
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        cdq                                     ; 99
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        sbb     dx, word ptr [bp - 0x12]        ; 1B 56 EE
        add     word ptr [0x1c08], ax           ; 01 06 08 1C
        adc     word ptr [0x1c0a], dx           ; 11 16 0A 1C
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        cdq                                     ; 99
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        sbb     dx, word ptr [bp - 0x12]        ; 1B 56 EE
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        adc     word ptr [bp - 0xe], dx         ; 11 56 F2
        push    word ptr [0x1c0a]               ; FF 36 0A 1C
        push    word ptr [0x1c08]               ; FF 36 08 1C
        call    far _entry_176                  ; 9A 0E 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0A15                          ; 74 0C
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        mov     dx, word ptr [bp - 0x46]        ; 8B 56 BA
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     word ptr [bp - 0x42], dx        ; 89 56 BE
L_0A15:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0A1E                          ; 74 03
        jmp     L_03E4                          ; E9 C6 F9
L_0A1E:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_0A27                          ; 75 03
        jmp     L_0431                          ; E9 0A FA
L_0A27:
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    word ptr [bp - 0x48]            ; FF 76 B8
        mov     bx, word ptr [0xfa0]            ; 8B 1E A0 0F
        push    word ptr [bx]                   ; FF 37
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B8C                          ; E8 4E 01
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     word ptr [bp - 0x2c], dx        ; 89 56 D4
        cmp     dx, -1                          ; 83 FA FF
        je      L_0A4C                          ; 74 03
        jmp     L_0AFF                          ; E9 B3 00
L_0A4C:
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0A54                          ; 74 03
        jmp     L_0AFF                          ; E9 AB 00
L_0A54:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        cmp     word ptr [bp - 0x46], dx        ; 39 56 BA
        jne     L_0A6A                          ; 75 0B
        cmp     word ptr [bp - 0x48], ax        ; 39 46 B8
        jne     L_0A6A                          ; 75 06
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        jne     L_0A71                          ; 75 07
L_0A6A:
        cmp     word ptr [0x724], 0             ; 83 3E 24 07 00
        je      L_0ADE                          ; 74 6D
L_0A71:
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_35                   ; 9A E1 04 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x1c0a]               ; FF 36 0A 1C
        push    word ptr [0x1c08]               ; FF 36 08 1C
        call    far _entry_97                   ; 9A FE 04 00 00 [FIXUP]
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    L_199F                          ; E8 00 0F
        mov     ax, word ptr [0x1c08]           ; A1 08 1C
        mov     dx, word ptr [0x1c0a]           ; 8B 16 0A 1C
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     word ptr [bp - 0x42], dx        ; 89 56 BE
        cmp     word ptr [0x724], 0             ; 83 3E 24 07 00
        je      L_0AB8                          ; 74 05
        mov     ax, 0x1003                      ; B8 03 10
        jmp     L_0ABB                          ; EB 03
L_0AB8:
        mov     ax, 0x1000                      ; B8 00 10
L_0ABB:
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 97 05 00 00 [FIXUP]
        mov     word ptr [0x724], 0             ; C7 06 24 07 00 00
        mov     word ptr [0x31a], 0             ; C7 06 1A 03 00 00
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [0x2c6], ax            ; A3 C6 02
        mov     word ptr [0x2c8], dx            ; 89 16 C8 02
        jmp     L_0431                          ; E9 53 F9
L_0ADE:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     word ptr [bp - 0x46], dx        ; 89 56 BA
        mov     word ptr [bp - 0x1e], 1         ; C7 46 E2 01 00
        jmp     L_0A27                          ; E9 28 FF
L_0AFF:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        mov     dx, word ptr [bp - 0x2c]        ; 8B 56 D4
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_176                  ; 9A F1 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        mov     ax, word ptr [0x1c08]           ; A1 08 1C
        mov     dx, word ptr [0x1c0a]           ; 8B 16 0A 1C
        sub     ax, word ptr [bp - 0x2e]        ; 2B 46 D2
        sbb     dx, word ptr [bp - 0x2c]        ; 1B 56 D4
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_108A                          ; E8 58 05
        or      ax, ax                          ; 0B C0
        jne     L_0B39                          ; 75 03
        jmp     L_0A27                          ; E9 EE FE
L_0B39:
        jmp     L_06AD                          ; E9 71 FB
L_0B3C:
        push    word ptr [0xfa0]                ; FF 36 A0 0F
        call    far KERNEL.LOCALFREE            ; 9A 4A 0B 00 00 [FIXUP]
        push    word ptr [0x1242]               ; FF 36 42 12
        call    far KERNEL.LOCALFREE            ; 9A 53 0B 00 00 [FIXUP]
        push    word ptr [0x1298]               ; FF 36 98 12
        call    far KERNEL.LOCALFREE            ; 9A 36 04 00 00 [FIXUP]
        call    far _entry_39                   ; 9A 8B 07 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0B85                          ; 74 23
        cmp     word ptr [0x726], 0             ; 83 3E 26 07 00
        je      L_0B85                          ; 74 1C
        mov     ax, word ptr [0x8a8]            ; A1 A8 08
        mov     dx, word ptr [0x8aa]            ; 8B 16 AA 08
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        mov     ax, word ptr [0x8ac]            ; A1 AC 08
        mov     dx, word ptr [0x8ae]            ; 8B 16 AE 08
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
L_0B85:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B8C -- offset 0x0B8C -- 185 instr
; Dispatcher: tabla de decisiones cmp+jcc (185 instr).
; tags: dispatcher, far
; callers: sub_0000, sub_01EF
; calls (intra): sub_1B1F, sub_1D95
;----------------------------------------------------------------------
L_0B8C:
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
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x13da], ax           ; A3 DA 13
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A 86 0C 00 00 [FIXUP]
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     word ptr [0x316], 0             ; C7 06 16 03 00 00
L_0BDD:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     si, word ptr [0x13da]           ; 8B 36 DA 13
        cmp     byte ptr [bx + si], 0           ; 80 38 00
        jne     L_0C26                          ; 75 3D
        cmp     word ptr [0x316], 0             ; 83 3E 16 03 00
        je      L_0BF5                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0BF7                          ; EB 02
L_0BF5:
        sub     ax, ax                          ; 2B C0
L_0BF7:
        sub     dx, dx                          ; 2B D2
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        sub     ax, cx                          ; 2B C1
        sbb     dx, bx                          ; 1B D3
L_0C05:
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        mov     word ptr [0x1c08], ax           ; A3 08 1C
        mov     word ptr [0x1c0a], dx           ; 89 16 0A 1C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        jmp     L_0D84                          ; E9 5E 01
L_0C26:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        cmp     dx, word ptr [bp + 0xa]         ; 3B 56 0A
        jl      L_0C58                          ; 7C 21
        jg      L_0C3E                          ; 7F 05
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jb      L_0C58                          ; 72 1A
L_0C3E:
        cmp     word ptr [0x316], 0             ; 83 3E 16 03 00
        je      L_0C6D                          ; 74 28
        mov     si, word ptr [bp - 0x10]        ; 8B 76 F0
        mov     bx, word ptr [0x13da]           ; 8B 1E DA 13
        cmp     byte ptr [bx + si + 2], 0       ; 80 78 02 00
        jne     L_0C6D                          ; 75 1B
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        jmp     L_0C05                          ; EB AD
L_0C58:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0CA4                          ; 7C 44
        call    L_1B1F                          ; E8 BC 0E
        or      ax, ax                          ; 0B C0
        je      L_0C74                          ; 74 0D
        mov     word ptr [0x724], 1             ; C7 06 24 07 01 00
L_0C6D:
        mov     ax, 0xffff                      ; B8 FF FF
        cdq                                     ; 99
        jmp     L_0D84                          ; E9 10 01
L_0C74:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A 5C 0D 00 00 [FIXUP]
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0BDD                          ; E9 39 FF
L_0CA4:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     si, word ptr [0x1022]           ; 8B 36 22 10
        mov     al, byte ptr [bx + si]          ; 8A 00
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        cmp     word ptr [0x1210], 0            ; 83 3E 10 12 00
        jne     L_0D16                          ; 75 5C
        cmp     word ptr [0x312], 0             ; 83 3E 12 03 00
        jne     L_0CE9                          ; 75 28
        cmp     al, 0x41                        ; 3C 41
        jb      L_0CCF                          ; 72 0A
        cmp     al, 0x5a                        ; 3C 5A
        ja      L_0CCF                          ; 77 06
        add     byte ptr [bp - 0xc], 0x20       ; 80 46 F4 20
        jmp     L_0CE9                          ; EB 1A
L_0CCF:
        cmp     byte ptr [bp - 0xc], 0x61       ; 80 7E F4 61
        jb      L_0CDB                          ; 72 06
        cmp     byte ptr [bp - 0xc], 0x7a       ; 80 7E F4 7A
        jbe     L_0CE9                          ; 76 0E
L_0CDB:
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_178                  ; 9A D4 0D 00 00 [FIXUP]
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
L_0CE9:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     si, word ptr [0x13da]           ; 8B 36 DA 13
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        cmp     byte ptr [bx + si], al          ; 38 00
        jne     L_0CFC                          ; 75 05
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        jmp     L_0D08                          ; EB 0C
L_0CFC:
        cmp     byte ptr [bp - 0xc], 0xd        ; 80 7E F4 0D
        je      L_0D08                          ; 74 06
        cmp     byte ptr [bp - 0xc], 0x1f       ; 80 7E F4 1F
        jne     L_0D0F                          ; 75 07
L_0D08:
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        jmp     L_0D2A                          ; EB 1B
L_0D0F:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_0D2A                          ; EB 14
L_0D16:
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1D95                          ; E8 6E 10
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0D2A:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0D36                          ; 74 06
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        jmp     L_0BDD                          ; E9 A7 FE
L_0D36:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     word ptr [bp - 4], ax           ; 29 46 FC
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jge     L_0D77                          ; 7D 35
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A AD 07 00 00 [FIXUP]
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0D77:
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_0BDD                          ; E9 59 FE
L_0D84:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D90 -- offset 0x0D90 -- 52 instr
; Funcion mediana (52 instr, 0 calls).
; tags: medium
; callers: sub_0000, sub_01EF
;----------------------------------------------------------------------
L_0D90:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        inc     ax                              ; 40
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 5C 02 00 00 [FIXUP]
        mov     word ptr [0xfa0], ax            ; A3 A0 0F
        inc     ax                              ; 40
        jne     L_0DB0                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0E0C                          ; EB 5C
L_0DB0:
        cmp     word ptr [0x312], 0             ; 83 3E 12 03 00
        jne     L_0DF3                          ; 75 3C
        mov     bx, word ptr [0x1bee]           ; 8B 1E EE 1B
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [0xfa0]            ; 8B 1E A0 0F
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0DE3                          ; EB 18
L_0DCB:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_178                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     byte ptr [bx], al               ; 88 07
        inc     word ptr [bp - 2]               ; FF 46 FE
        inc     word ptr [bp - 4]               ; FF 46 FC
L_0DE3:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0DCB                          ; 75 E0
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_0E09                          ; EB 16
L_0DF3:
        mov     bx, word ptr [0x1bee]           ; 8B 1E EE 1B
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [0xfa0]            ; 8B 1E A0 0F
        push    word ptr [bx]                   ; FF 37
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 1E 08 00 00 [FIXUP]
L_0E09:
        mov     ax, 1                           ; B8 01 00
L_0E0C:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E12 -- offset 0x0E12 -- 29 instr
; Dispatcher: tabla de decisiones cmp+jcc (29 instr).
; tags: dispatcher
; callers: sub_0000, sub_01EF
;----------------------------------------------------------------------
L_0E12:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     bx, word ptr [0x1bee]           ; 8B 1E EE 1B
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0E44                          ; EB 21
L_0E23:
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        sub     ah, ah                          ; 2A E4
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_0E3C                          ; 74 0F
        cmp     ax, 0x2d                        ; 3D 2D 00
        je      L_0E3C                          ; 74 0A
        cmp     ax, 0x3f                        ; 3D 3F 00
        je      L_0E3C                          ; 74 05
        cmp     ax, 0x5e                        ; 3D 5E 00
        jne     L_0E44                          ; 75 08
L_0E3C:
        mov     word ptr [0x1210], 1            ; C7 06 10 12 01 00
        jmp     L_0E59                          ; EB 15
L_0E44:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        or      al, al                          ; 0A C0
        jne     L_0E23                          ; 75 D0
        mov     word ptr [0x1210], 0            ; C7 06 10 12 00 00
L_0E59:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E5D -- offset 0x0E5D -- 145 instr
; Dispatcher: tabla de decisiones cmp+jcc (145 instr).
; tags: calls_kernel, dispatcher
; callers: sub_01EF
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0E5D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     bx, word ptr [0x1298]           ; 8B 1E 98 12
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     word ptr [0x318], 0             ; C7 06 18 03 00 00
L_0E78:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     al, byte ptr [bx + si]          ; 8A 00
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        or      al, al                          ; 0A C0
        jne     L_0E8A                          ; 75 03
        jmp     L_0FDD                          ; E9 53 01
L_0E8A:
        sub     ah, ah                          ; 2A E4
        cmp     ax, 0xa                         ; 3D 0A 00
        jne     L_0E94                          ; 75 03
        jmp     L_0F4E                          ; E9 BA 00
L_0E94:
        cmp     ax, 0x5e                        ; 3D 5E 00
        je      L_0E9E                          ; 74 05
L_0E99:
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_0E78                          ; EB DA
L_0E9E:
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx + si + 1]      ; 8A 40 01
        sub     ah, ah                          ; 2A E4
        cmp     ax, 0x2d                        ; 3D 2D 00
        jne     L_0EB1                          ; 75 03
        jmp     L_0F3C                          ; E9 8B 00
L_0EB1:
        cmp     ax, 0x64                        ; 3D 64 00
        jne     L_0EB9                          ; 75 03
        jmp     L_0F42                          ; E9 89 00
L_0EB9:
        cmp     ax, 0x6e                        ; 3D 6E 00
        je      L_0F36                          ; 74 78
        cmp     ax, 0x70                        ; 3D 70 00
        jne     L_0EC6                          ; 75 03
        jmp     L_0F48                          ; E9 82 00
L_0EC6:
        cmp     ax, 0x73                        ; 3D 73 00
        je      L_0F2A                          ; 74 5F
        cmp     ax, 0x74                        ; 3D 74 00
        je      L_0F30                          ; 74 60
        cmp     al, ah                          ; 3A C4
        jne     L_0EDA                          ; 75 06
        mov     byte ptr [bp - 8], 0x5e         ; C6 46 F8 5E
        jmp     L_0EE6                          ; EB 0C
L_0EDA:
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx + si + 1]      ; 8A 40 01
        mov     byte ptr [bp - 8], al           ; 88 46 F8
L_0EE6:
        cmp     byte ptr [bp - 8], 0xa          ; 80 7E F8 0A
        je      L_0F04                          ; 74 18
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        add     si, word ptr [bp - 4]           ; 03 76 FC
        lea     ax, [si + 1]                    ; 8D 44 01
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 89 0F 00 00 [FIXUP]
L_0F04:
        cmp     byte ptr [bp - 8], 0xa          ; 80 7E F8 0A
        jne     L_0F1C                          ; 75 12
        mov     word ptr [0x318], 1             ; C7 06 18 03 01 00
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     byte ptr [bx + si], 0xd         ; C6 00 0D
L_0F1C:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        mov     byte ptr [bx + si], al          ; 88 00
        jmp     L_0E99                          ; E9 6F FF
L_0F2A:
        mov     byte ptr [bp - 8], 0xa0         ; C6 46 F8 A0
        jmp     L_0EE6                          ; EB B6
L_0F30:
        mov     byte ptr [bp - 8], 9            ; C6 46 F8 09
        jmp     L_0EE6                          ; EB B0
L_0F36:
        mov     byte ptr [bp - 8], 0xb          ; C6 46 F8 0B
        jmp     L_0EE6                          ; EB AA
L_0F3C:
        mov     byte ptr [bp - 8], 0x1f         ; C6 46 F8 1F
        jmp     L_0EE6                          ; EB A4
L_0F42:
        mov     byte ptr [bp - 8], 0xc          ; C6 46 F8 0C
        jmp     L_0EE6                          ; EB 9E
L_0F48:
        mov     byte ptr [bp - 8], 0xa          ; C6 46 F8 0A
        jmp     L_0EE6                          ; EB 98
L_0F4E:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0F60                          ; 74 0C
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx + si - 1], 0xd     ; 80 78 FF 0D
        je      L_0FD4                          ; 74 74
L_0F60:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        inc     ax                              ; 40
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        call    far _entry_64                   ; 9A A2 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        inc     ax                              ; 40
        jne     L_0F7A                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0FE0                          ; EB 66
L_0F7A:
        mov     bx, word ptr [0x1298]           ; 8B 1E 98 12
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far _entry_45                   ; 9A B4 0F 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        mov     byte ptr [bx + si], 0xd         ; C6 00 0D
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     bx, word ptr [0x1298]           ; 8B 1E 98 12
        add     ax, word ptr [bx]               ; 03 07
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 05 0E 00 00 [FIXUP]
        push    word ptr [0x1298]               ; FF 36 98 12
        call    far KERNEL.LOCALFREE            ; 9A AF 12 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [0x1298], ax           ; A3 98 12
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     word ptr [bp + 4]               ; FF 46 04
        inc     word ptr [bp - 2]               ; FF 46 FE
L_0FD4:
        mov     word ptr [0x318], 1             ; C7 06 18 03 01 00
        jmp     L_0E99                          ; E9 BC FE
L_0FDD:
        mov     ax, 1                           ; B8 01 00
L_0FE0:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FE7 -- offset 0x0FE7 -- 66 instr
; Funcion mediana (66 instr, 0 calls).
; tags: medium
; callers: sub_01EF
;----------------------------------------------------------------------
L_0FE7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A 58 10 00 00 [FIXUP]
        mov     bx, word ptr [0x1022]           ; 8B 1E 22 10
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_182                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_101A                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1083                          ; EB 69
L_101A:
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
L_101F:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        add     cx, word ptr [bp + 4]           ; 03 4E 04
        adc     bx, word ptr [bp + 6]           ; 13 5E 06
        cmp     bx, dx                          ; 3B DA
        jl      L_1080                          ; 7C 45
        jg      L_1041                          ; 7F 04
        cmp     cx, ax                          ; 3B C8
        jbe     L_1080                          ; 76 3F
L_1041:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_1063                          ; 7C 1A
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A C1 0B 00 00 [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_101F                          ; EB BC
L_1063:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     si, word ptr [0x1022]           ; 8B 36 22 10
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_181                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_101F                          ; 74 A4
        mov     ax, 1                           ; B8 01 00
        jmp     L_1083                          ; EB 03
L_1080:
        mov     ax, 2                           ; B8 02 00
L_1083:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_108A -- offset 0x108A -- 31 instr
; Funcion mediana (31 instr, 1 calls).
; tags: far, medium
; callers: sub_0000, sub_01EF
; calls (intra): sub_1BD7
;----------------------------------------------------------------------
L_108A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_32                   ; 9A 2D 08 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_10AE                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_10C9                          ; EB 1B
L_10AE:
        cmp     word ptr [0x314], 0             ; 83 3E 14 03 00
        je      L_10C6                          ; 74 11
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1BD7                          ; E8 13 0B
        jmp     L_10C9                          ; EB 03
L_10C6:
        mov     ax, 1                           ; B8 01 00
L_10C9:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_10D4 -- offset 0x10D4 -- 41 instr
; Dispatcher: tabla de decisiones cmp+jcc (41 instr).
; tags: calls_user, dispatcher
; callers: sub_127B, sub_1617
; calls (inter): USER.DESTROYWINDOW, USER.GETDLGITEM
;----------------------------------------------------------------------
L_10D4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bx], 0                ; C7 07 00 00
        mov     word ptr [0x7aa], 0             ; C7 06 AA 07 00 00
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
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
        sub     sp, 0x10a                       ; 81 EC 0A 01
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x108], ax       ; 89 86 F8 FE
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        jne     L_1128                          ; 75 03
        jmp     L_11BD                          ; E9 95 00
L_1128:
        cmp     ax, 0x10                        ; 3D 10 00
        jne     L_1130                          ; 75 03
        jmp     L_12FF                          ; E9 CF 01
L_1130:
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_1140                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_113D                          ; 75 03
        jmp     L_11DD                          ; E9 A0 00
L_113D:
        jmp     L_11D8                          ; E9 98 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1140 -- offset 0x1140 -- 23 instr
; Funcion sin clasificar definitiva (23 instr).
; tags: calls_user, small
; calls (inter): USER.CHECKDLGBUTTON, USER.ENABLEWINDOW
;----------------------------------------------------------------------
L_1140:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [0x314]                ; FF 36 14 03
        call    far USER.CHECKDLGBUTTON         ; 9A 5C 11 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        push    word ptr [0x312]                ; FF 36 12 03
        call    far USER.CHECKDLGBUTTON         ; 9A 37 12 00 00 [FIXUP]
        mov     bx, word ptr [0x1bee]           ; 8B 1E EE 1B
        push    word ptr [bx]                   ; FF 37
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ax                              ; 50
        call    far _entry_180                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_1185                          ; 75 0E
        push    word ptr [bp - 0x108]           ; FF B6 F8 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_11A3                          ; EB 1E
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1185 -- offset 0x1185 -- 64 instr
; Dispatcher: tabla de decisiones cmp+jcc (64 instr).
; tags: calls_user, dispatcher
; calls (inter): USER.CHECKDLGBUTTON, USER.ISDLGBUTTONCHECKED, USER.ISWINDOWENABLED, USER.SETDLGITEMTEXT, USER.SHOWCURSOR
;----------------------------------------------------------------------
L_1185:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 89 12 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far _entry_73                   ; 9A FF FF 00 00 [FIXUP]
L_11A3:
        mov     word ptr [0x31a], 0             ; C7 06 1A 03 00 00
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [0x2c6], ax            ; A3 C6 02
        mov     word ptr [0x2c8], dx            ; 89 16 C8 02
L_11B7:
        mov     ax, 1                           ; B8 01 00
        jmp     L_131A                          ; E9 5D 01
L_11BD:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_11C9                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_11C9:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_11D8                          ; 74 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
L_11D8:
        sub     ax, ax                          ; 2B C0
        jmp     L_131A                          ; E9 3D 01
L_11DD:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 6                           ; 3D 06 00
        ja      L_11D8                          ; 77 F0
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x1309]       ; 2E FF A7 09 13
        cmp     word ptr [bp + 8], 0x300        ; 81 7E 08 00 03
        jne     L_11B7                          ; 75 C0
        mov     word ptr [0x31a], 0             ; C7 06 1A 03 00 00
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [0x2c6], ax            ; A3 C6 02
        mov     word ptr [0x2c8], dx            ; 89 16 C8 02
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x108]           ; FF B6 F8 FE
        call    far _entry_179                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_11B7                          ; EB 9E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.ISDLGBUTTONCHECKED     ; 9A C2 12 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1233                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1235                          ; EB 02
L_1233:
        sub     ax, ax                          ; 2B C0
L_1235:
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_11B7                          ; E9 79 FF
        push    word ptr [bp - 0x108]           ; FF B6 F8 FE
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_124E                          ; 75 03
        jmp     L_11B7                          ; E9 69 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_124E -- offset 0x124E -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: small
; calls (intra): sub_2028, sub_2067
;----------------------------------------------------------------------
L_124E:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ax                              ; 50
        mov     ax, 0x101                       ; B8 01 01
        push    ax                              ; 50
        call    L_2028                          ; E8 C7 0D
        or      ax, ax                          ; 0B C0
        je      L_128D                          ; 74 28
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        mov     ax, 0x3001                      ; B8 01 30
        push    ax                              ; 50
        call    L_2067                          ; E8 F4 0D
        cmp     ax, 1                           ; 3D 01 00
        je      L_127B                          ; 74 03
        jmp     L_11B7                          ; E9 3C FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_127B -- offset 0x127B -- 254 instr
; Dispatcher: tabla de decisiones cmp+jcc (254 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_10D4, sub_17AF, sub_20BD
; calls (inter): KERNEL.LOCALFREE, USER.CHECKDLGBUTTON, USER.ENABLEWINDOW, USER.GETDLGITEM, USER.ISDLGBUTTONCHECKED, USER.SETDLGITEMTEXT (+1 mas)
;----------------------------------------------------------------------
L_127B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
L_128D:
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ax                              ; 50
        call    far _entry_167                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10a], ax       ; 89 86 F6 FE
        inc     ax                              ; 40
        jne     L_12A1                          ; 75 03
        jmp     L_11B7                          ; E9 16 FF
L_12A1:
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_20BD                          ; E8 13 0E
        push    word ptr [0x1bee]               ; FF 36 EE 1B
        call    far KERNEL.LOCALFREE            ; 9A 41 0B 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x10a]       ; 8B 86 F6 FE
        mov     word ptr [0x1bee], ax           ; A3 EE 1B
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x312], ax            ; A3 12 03
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 6B 16 00 00 [FIXUP]
        mov     word ptr [0x314], ax            ; A3 14 03
        push    word ptr [0x7a2]                ; FF 36 A2 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_171                  ; 9A F0 12 00 00 [FIXUP]
        call    0                               ; E8 19 ED
        push    word ptr [0x7a2]                ; FF 36 A2 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_171                  ; 9A 89 16 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_20BD                          ; E8 C1 0D
        jmp     L_11B7                          ; E9 B8 FE
L_12FF:
        mov     ax, 0x7a2                       ; B8 A2 07
        push    ax                              ; 50
        call    L_10D4                          ; E8 CE FD
        jmp     L_11B7                          ; E9 AE FE
        adc     bh, bh                          ; 3E 12 FF
        adc     bl, al                          ; 12 D8
        adc     ax, bx                          ; 11 D8
        adc     word ptr [bx + di], bx          ; 11 19
        adc     bl, byte ptr [bx + di]          ; 12 19
        adc     dh, al                          ; 12 F0
        adc     cx, bp                          ; 11 E9
        popf                                    ; 9D
        inc     byte ptr [bp + di + 0x2ed]      ; FE 83 ED 02
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
        sub     sp, 0x10c                       ; 81 EC 0C 01
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A DD 13 00 00 [FIXUP]
        mov     word ptr [bp - 0x10c], ax       ; 89 86 F4 FE
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        jne     L_1353                          ; 75 03
        jmp     L_147A                          ; E9 27 01
L_1353:
        cmp     ax, 0x10                        ; 3D 10 00
        jne     L_135B                          ; 75 03
        jmp     L_1785                          ; E9 2A 04
L_135B:
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_136B                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_1368                          ; 75 03
        jmp     L_14C0                          ; E9 58 01
L_1368:
        jmp     L_14BB                          ; E9 50 01
L_136B:
        mov     byte ptr [bp - 0x10a], 0        ; C6 86 F6 FE 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [0x314]                ; FF 36 14 03
        call    far USER.CHECKDLGBUTTON         ; 9A 8C 13 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        push    word ptr [0x312]                ; FF 36 12 03
        call    far USER.CHECKDLGBUTTON         ; 9A 4C 11 00 00 [FIXUP]
        mov     bx, word ptr [0x1bee]           ; 8B 1E EE 1B
        push    word ptr [bx]                   ; FF 37
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ax                              ; 50
        call    far _entry_180                  ; 9A 20 14 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 35 14 00 00 [FIXUP]
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jle     L_13C9                          ; 7E 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far _entry_73                   ; 9A 9F 11 00 00 [FIXUP]
        jmp     L_1414                          ; EB 4B
L_13C9:
        push    word ptr [bp - 0x10c]           ; FF B6 F4 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A E6 13 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A F2 13 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FB 13 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 07 14 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 10 14 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 06 15 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 0F 15 00 00 [FIXUP]
L_1414:
        mov     bx, word ptr [0x1110]           ; 8B 1E 10 11
        push    word ptr [bx]                   ; FF 37
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ax                              ; 50
        call    far _entry_180                  ; 9A 6C 11 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A D3 15 00 00 [FIXUP]
        mov     word ptr [0x8b2], 0             ; C7 06 B2 08 00 00
        mov     word ptr [0x31a], 0             ; C7 06 1A 03 00 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_1460                          ; 75 0B
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jne     L_1460                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1462                          ; EB 02
L_1460:
        sub     ax, ax                          ; 2B C0
L_1462:
        push    ax                              ; 50
        call    L_17AF                          ; E8 49 03
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [0x2c6], ax            ; A3 C6 02
        mov     word ptr [0x2c8], dx            ; 89 16 C8 02
L_1474:
        mov     ax, 1                           ; B8 01 00
        jmp     L_17A4                          ; E9 2A 03
L_147A:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_14AC                          ; 74 2C
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
        push    ax                              ; 50
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_149A                          ; 75 06
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        je      L_14A1                          ; 74 07
L_149A:
        cmp     word ptr [0x31a], 0             ; 83 3E 1A 03 00
        je      L_14A6                          ; 74 05
L_14A1:
        mov     ax, 1                           ; B8 01 00
        jmp     L_14A8                          ; EB 02
L_14A6:
        sub     ax, ax                          ; 2B C0
L_14A8:
        push    ax                              ; 50
        call    L_17AF                          ; E8 03 03
L_14AC:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_14BB                          ; 74 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A D4 11 00 00 [FIXUP]
L_14BB:
        sub     ax, ax                          ; 2B C0
        jmp     L_17A4                          ; E9 E4 02
L_14C0:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 8                           ; 3D 08 00
        ja      L_14BB                          ; 77 F0
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x178f]       ; 2E FF A7 8F 17
        cmp     word ptr [bp + 8], 0x300        ; 81 7E 08 00 03
        jne     L_14BB                          ; 75 E1
        mov     word ptr [0x31a], 0             ; C7 06 1A 03 00 00
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [0x2c6], ax            ; A3 C6 02
        mov     word ptr [0x2c8], dx            ; 89 16 C8 02
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x10c]           ; FF B6 F4 FE
        call    far _entry_179                  ; 9A 13 12 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1540                          ; 75 42
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 1B 15 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 24 15 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 30 15 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 39 15 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 48 15 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
L_1537:
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 52 15 00 00 [FIXUP]
        jmp     L_1474                          ; E9 34 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1540 -- offset 0x1540 -- 31 instr
; Funcion mediana (31 instr, 3 calls).
; tags: calls_user, medium
; calls (inter): USER.ENABLEWINDOW, USER.GETDLGITEM, USER.ISWINDOWENABLED
;----------------------------------------------------------------------
L_1540:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 5E 15 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 68 15 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 74 15 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 7F 11 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 15 11 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        jmp     L_1537                          ; EB B9
        push    word ptr [bp - 0x10c]           ; FF B6 F4 FE
        call    far USER.ISWINDOWENABLED        ; 9A 43 12 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_158E                          ; 75 03
        jmp     L_1474                          ; E9 E6 FE
L_158E:
        cmp     word ptr [0x322], 0             ; 83 3E 22 03 00
        jge     L_1598                          ; 7D 03
        jmp     L_1474                          ; E9 DC FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1598 -- offset 0x1598 -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: small
; calls (intra): sub_2028, sub_2067
;----------------------------------------------------------------------
L_1598:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ax                              ; 50
        mov     ax, 0x101                       ; B8 01 01
        push    ax                              ; 50
        call    L_2028                          ; E8 7D 0A
        or      ax, ax                          ; 0B C0
        je      L_15D7                          ; 74 28
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        mov     ax, 0x3001                      ; B8 01 30
        push    ax                              ; 50
        call    L_2067                          ; E8 AA 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_15C5                          ; 74 03
        jmp     L_1474                          ; E9 AF FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_15C5 -- offset 0x15C5 -- 14 instr
; Funcion sin clasificar definitiva (14 instr).
; tags: calls_user, small
; calls (inter): USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_15C5:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 25 16 00 00 [FIXUP]
L_15D7:
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ax                              ; 50
        call    far _entry_167                  ; 9A 2F 16 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        jne     L_15EA                          ; 75 03
        jmp     L_1474                          ; E9 8A FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_15EA -- offset 0x15EA -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: small
; calls (intra): sub_2028, sub_2067
;----------------------------------------------------------------------
L_15EA:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ax                              ; 50
        mov     ax, 0x101                       ; B8 01 01
        push    ax                              ; 50
        call    L_2028                          ; E8 2B 0A
        or      ax, ax                          ; 0B C0
        je      L_1629                          ; 74 28
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 0x3001                      ; B8 01 30
        push    ax                              ; 50
        call    L_2067                          ; E8 58 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_1617                          ; 74 03
        jmp     L_1474                          ; E9 5D FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1617 -- offset 0x1617 -- 149 instr
; Dispatcher: tabla de decisiones cmp+jcc (149 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_01EF, sub_10D4, sub_17AF, sub_20BD
; calls (inter): KERNEL.LOCALFREE, USER.CHECKDLGBUTTON, USER.ISDLGBUTTONCHECKED, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_1617:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 93 11 00 00 [FIXUP]
L_1629:
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ax                              ; 50
        call    far _entry_167                  ; 9A 93 12 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     ax                              ; 40
        jne     L_163C                          ; 75 03
        jmp     L_1474                          ; E9 38 FE
L_163C:
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_20BD                          ; E8 78 0A
        push    word ptr [0x1bee]               ; FF 36 EE 1B
        call    far KERNEL.LOCALFREE            ; 9A 59 16 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x1bee], ax           ; A3 EE 1B
        push    word ptr [0x1110]               ; FF 36 10 11
        call    far KERNEL.LOCALFREE            ; 9A BD 0F 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x1110], ax           ; A3 10 11
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 7A 16 00 00 [FIXUP]
        mov     word ptr [0x312], ax            ; A3 12 03
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 26 12 00 00 [FIXUP]
        mov     word ptr [0x314], ax            ; A3 14 03
        push    word ptr [0x7a4]                ; FF 36 A4 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_171                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_16A6                          ; 74 11
        cmp     ax, 3                           ; 3D 03 00
        je      L_16C6                          ; 74 2C
        cmp     ax, 4                           ; 3D 04 00
        je      L_16DC                          ; 74 3D
        cmp     ax, 9                           ; 3D 09 00
        je      L_16C6                          ; 74 22
        jmp     L_16A9                          ; EB 03
L_16A6:
        call    0                               ; E8 57 E9
L_16A9:
        push    word ptr [0x7a4]                ; FF 36 A4 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_171                  ; 9A E0 12 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        cmp     word ptr [0x31a], 0             ; 83 3E 1A 03 00
        je      L_1739                          ; 74 79
L_16C0:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1751                          ; E9 8B 00
L_16C6:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        cmp     word ptr [bp + 0xa], 9          ; 83 7E 0A 09
        jne     L_16D4                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_16D6                          ; EB 02
L_16D4:
        sub     ax, ax                          ; 2B C0
L_16D6:
        push    ax                              ; 50
        call    L_01EF                          ; E8 15 EB
        jmp     L_16A9                          ; EB CD
L_16DC:
        call    far _entry_183                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x8b2], 0             ; 83 3E B2 08 00
        jne     L_1726                          ; 75 3E
        mov     word ptr [0x726], 1             ; C7 06 26 07 01 00
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [0x8a8], ax            ; A3 A8 08
        mov     word ptr [0x8aa], dx            ; 89 16 AA 08
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [0x8ac], ax            ; A3 AC 08
        mov     word ptr [0x8ae], dx            ; 89 16 AE 08
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
L_1726:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_01EF                          ; E8 BF EA
        mov     word ptr [0x726], 0             ; C7 06 26 07 00 00
        jmp     L_16A9                          ; E9 70 FF
L_1739:
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_174F                          ; 75 09
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jne     L_174F                          ; 75 03
        jmp     L_16C0                          ; E9 71 FF
L_174F:
        sub     ax, ax                          ; 2B C0
L_1751:
        push    ax                              ; 50
        call    L_17AF                          ; E8 5A 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_20BD                          ; E8 60 09
        jmp     L_1474                          ; E9 14 FD
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.ISDLGBUTTONCHECKED     ; 9A D1 12 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_177A                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_177C                          ; EB 02
L_177A:
        sub     ax, ax                          ; 2B C0
L_177C:
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 7C 13 00 00 [FIXUP]
        jmp     L_1474                          ; E9 EF FC
L_1785:
        mov     ax, 0x7a4                       ; B8 A4 07
        push    ax                              ; 50
        call    L_10D4                          ; E8 48 F9
        jmp     L_1474                          ; E9 E5 FC
        jle     L_17A6                          ; 7E 15
        test    word ptr [bx], dx               ; 85 17
        mov     ss, word ptr [di]               ; 8E 15
        mov     ss, word ptr [di]               ; 8E 15
        pushaw                                  ; 60
        pop     ss                              ; 17
        pushaw                                  ; 60
        pop     ss                              ; 17
        rcl     word ptr [si], cl               ; D3 14
        mov     bx, 0x8e14                      ; BB 14 8E
        adc     ax, 0xd0e9                      ; 15 E9 D0
        cld                                     ; FC
L_17A4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_17AF -- offset 0x17AF -- 211 instr
; Dispatcher: tabla de decisiones cmp+jcc (211 instr).
; tags: calls_user, dispatcher, far
; callers: sub_127B, sub_1617
; calls (intra): sub_20BD
; calls (inter): USER.CREATEDIALOG, USER.ENABLEWINDOW, USER.GETACTIVEWINDOW, USER.GETWINDOWWORD, USER.ISWINDOW, USER.ISWINDOWENABLED (+2 mas)
;----------------------------------------------------------------------
L_17AF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x100                       ; 81 EC 00 01
        mov     ax, word ptr [0x8b2]            ; A1 B2 08
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_17F9                          ; 75 3B
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ax                              ; 50
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_17CE                          ; 74 05
        mov     ax, 0xd                         ; B8 0D 00
        jmp     L_17D1                          ; EB 03
L_17CE:
        mov     ax, 0xc                         ; B8 0C 00
L_17D1:
        push    ax                              ; 50
        call    far _entry_52                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A B1 13 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_17F4                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_17F6                          ; EB 02
L_17F4:
        sub     ax, ax                          ; 2B C0
L_17F6:
        mov     word ptr [0x8b2], ax            ; A3 B2 08
L_17F9:
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
        push    word ptr [0x7a2]                ; FF 36 A2 07
        call    far USER.ISWINDOW               ; 9A 4C 19 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1843                          ; 75 2D
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0xc                         ; B8 0C 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x139a]               ; FF 36 9A 13
        push    word ptr [0x1398]               ; FF 36 98 13
        call    far USER.CREATEDIALOG           ; 9A 6B 19 00 00 [FIXUP]
        mov     word ptr [0x7a2], ax            ; A3 A2 07
        or      ax, ax                          ; 0B C0
        jne     L_1858                          ; 75 20
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 7B 19 00 00 [FIXUP]
        jmp     L_1858                          ; EB 15
L_1843:
        push    word ptr [0x7a2]                ; FF 36 A2 07
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A CF 18 00 00 [FIXUP]
L_1858:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [0x10aa]           ; 8B 36 AA 10
        call    far USER.GETACTIVEWINDOW        ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        cmp     word ptr [0x7a2], 0             ; 83 3E A2 07 00
        jne     L_1889                          ; 75 07
        cmp     word ptr [0x7a4], 0             ; 83 3E A4 07 00
        je      L_18D5                          ; 74 4C
L_1889:
        mov     si, word ptr [0x7a2]            ; 8B 36 A2 07
        or      si, si                          ; 0B F6
        je      L_18A5                          ; 74 14
        cmp     si, di                          ; 3B F7
        je      L_18C1                          ; 74 2C
        push    di                              ; 57
        mov     ax, 0xfff8                      ; B8 F8 FF
        push    ax                              ; 50
        call    far USER.GETWINDOWWORD          ; 9A B7 18 00 00 [FIXUP]
        cmp     ax, word ptr [0x7a2]            ; 3B 06 A2 07
        je      L_18C1                          ; 74 1C
L_18A5:
        mov     si, word ptr [0x7a4]            ; 8B 36 A4 07
        or      si, si                          ; 0B F6
        je      L_18D5                          ; 74 28
        cmp     si, di                          ; 3B F7
        je      L_18C1                          ; 74 10
        push    di                              ; 57
        mov     ax, 0xfff8                      ; B8 F8 FF
        push    ax                              ; 50
        call    far USER.GETWINDOWWORD          ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [0x7a4]            ; 3B 06 A4 07
        jne     L_18D5                          ; 75 14
L_18C1:
        push    si                              ; 56
        mov     ax, 0x111                       ; B8 11 01
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 2E 19 00 00 [FIXUP]
        jmp     L_18E9                          ; EB 14
L_18D5:
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_20BD                          ; E8 DF 07
        call    0                               ; E8 1F E7
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_20BD                          ; E8 D4 07
L_18E9:
        push    word ptr [0x10aa]               ; FF 36 AA 10
        call    far USER.ISWINDOWENABLED        ; 9A 08 19 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1903                          ; 75 0D
        push    word ptr [0x10aa]               ; FF 36 AA 10
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 19 19 00 00 [FIXUP]
L_1903:
        push    word ptr [0x780]                ; FF 36 80 07
        call    far USER.ISWINDOWENABLED        ; 9A 83 15 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_191D                          ; 75 0D
        push    word ptr [0x780]                ; FF 36 80 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A D1 13 00 00 [FIXUP]
L_191D:
        push    word ptr [0x780]                ; FF 36 80 07
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 92 19 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [0x7a4]                ; FF 36 A4 07
        call    far USER.ISWINDOW               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1981                          ; 75 2D
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0xd                         ; B8 0D 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x1394]               ; FF 36 94 13
        push    word ptr [0x1392]               ; FF 36 92 13
        call    far USER.CREATEDIALOG           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7a4], ax            ; A3 A4 07
        or      ax, ax                          ; 0B C0
        jne     L_1996                          ; 75 20
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A BD 0A 00 00 [FIXUP]
        jmp     L_1996                          ; EB 15
L_1981:
        push    word ptr [0x7a4]                ; FF 36 A4 07
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
L_1996:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_199F -- offset 0x199F -- 145 instr
; Dispatcher: tabla de decisiones cmp+jcc (145 instr).
; tags: dispatcher
; callers: sub_0000, sub_01EF
;----------------------------------------------------------------------
L_199F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x7b6], 0             ; 83 3E B6 07 00
        je      L_19BE                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_19C1                          ; EB 03
L_19BE:
        mov     ax, 1                           ; B8 01 00
L_19C1:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     cl, byte ptr [bx + 3]           ; 8A 4F 03
        sub     ch, ch                          ; 2A ED
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
        or      cx, cx                          ; 0B C9
        jg      L_19D6                          ; 7F 03
        jmp     L_1B17                          ; E9 41 01
L_19D6:
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, cx                          ; 8B D1
        mov     cl, 4                           ; B1 04
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        sub     ax, 0x10                        ; 2D 10 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        cmp     word ptr [bx + 0x16], dx        ; 39 57 16
        jg      L_1A37                          ; 7F 3F
        jl      L_19FF                          ; 7C 05
        cmp     word ptr [bx + 0x14], ax        ; 39 47 14
        ja      L_1A37                          ; 77 38
L_19FF:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        add     ax, word ptr [bx + 6]           ; 03 47 06
        adc     dx, word ptr [bx + 8]           ; 13 57 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        jl      L_1A37                          ; 7C 20
        jg      L_1A1E                          ; 7F 05
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jb      L_1A37                          ; 72 19
L_1A1E:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp + 6], dx           ; 39 56 06
        jne     L_1A79                          ; 75 50
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_1A79                          ; 75 4B
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        test    byte ptr [bx + 2], 8            ; F6 47 02 08
        je      L_1A79                          ; 74 42
L_1A37:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     word ptr [bx + 0x16], dx        ; 89 57 16
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_123                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     word ptr [bx + 8], 0            ; C7 47 08 00 00
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        sub     ax, word ptr [bx + 0xe]         ; 2B 47 0E
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_122                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x322]                ; FF 36 22 03
        call    far _entry_156                  ; 9A 07 1B 00 00 [FIXUP]
        jmp     L_1B17                          ; E9 9E 00
L_1A79:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        push    bx                              ; 53
        call    far _entry_185                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        add     ax, word ptr [bx + 6]           ; 03 47 06
        adc     dx, word ptr [bx + 8]           ; 13 57 08
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        jg      L_1AC5                          ; 7F 12
        jl      L_1ABA                          ; 7C 05
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        ja      L_1AC5                          ; 77 0B
L_1ABA:
        cmp     word ptr [bp - 0xc], 1          ; 83 7E F4 01
        jl      L_1AF9                          ; 7C 39
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        jmp     L_1AFC                          ; EB 37
L_1AC5:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bx + 0xe], ax         ; 39 47 0E
        jle     L_1AD5                          ; 7E 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1AD7                          ; EB 02
L_1AD5:
        sub     ax, ax                          ; 2B C0
L_1AD7:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, ax                          ; 8B F8
        cmp     word ptr [bx + 8], si           ; 39 77 08
        jg      L_1AF3                          ; 7F 0C
        jl      L_1AEE                          ; 7C 05
        cmp     word ptr [bx + 6], cx           ; 39 4F 06
        ja      L_1AF3                          ; 77 05
L_1AEE:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1AF5                          ; EB 02
L_1AF3:
        sub     ax, ax                          ; 2B C0
L_1AF5:
        test    di, ax                          ; 85 C7
        je      L_1B17                          ; 74 1E
L_1AF9:
        mov     ax, 1                           ; B8 01 00
L_1AFC:
        push    ax                              ; 50
        call    far _entry_154                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x322]                ; FF 36 22 03
        call    far _entry_156                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A AF 19 00 00 [FIXUP]
L_1B17:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1B1F -- offset 0x1B1F -- 79 instr
; Dispatcher: tabla de decisiones cmp+jcc (79 instr).
; tags: calls_user, dispatcher
; callers: sub_0B8C
; calls (inter): USER.DISPATCHMESSAGE, USER.GETMESSAGE, USER.GETWINDOWWORD, USER.PEEKMESSAGE
;----------------------------------------------------------------------
L_1B1F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [0x7aa], 0             ; 83 3E AA 07 00
        je      L_1B33                          ; 74 05
        mov     ax, word ptr [0x7aa]            ; A1 AA 07
        jmp     L_1B36                          ; EB 03
L_1B33:
        mov     ax, word ptr [0x780]            ; A1 80 07
L_1B36:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        mov     ax, 0x108                       ; B8 08 01
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1BCF                          ; 74 7A
        mov     di, word ptr [bp - 0x18]        ; 8B 7E E8
        push    di                              ; 57
        mov     ax, 0xfff8                      ; B8 F8 FF
        push    ax                              ; 50
        call    far USER.GETWINDOWWORD          ; 9A 9B 18 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        je      L_1B6C                          ; 74 05
        cmp     word ptr [bp - 6], di           ; 39 7E FA
        jne     L_1BCF                          ; 75 63
L_1B6C:
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        push    di                              ; 57
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        mov     ax, 0x108                       ; B8 08 01
        push    ax                              ; 50
        call    far USER.GETMESSAGE             ; 9A A2 1B 00 00 [FIXUP]
        cmp     word ptr [bp - 0x16], 0x100     ; 81 7E EA 00 01
        jne     L_1BB7                          ; 75 31
        mov     si, word ptr [bp - 0x14]        ; 8B 76 EC
        cmp     si, 0x1b                        ; 83 FE 1B
        je      L_1B93                          ; 74 05
        cmp     si, 3                           ; 83 FE 03
        jne     L_1BB7                          ; 75 24
L_1B93:
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        push    di                              ; 57
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        mov     ax, 0x108                       ; B8 08 01
        push    ax                              ; 50
        call    far USER.GETMESSAGE             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x16], 0x101     ; 81 7E EA 01 01
        jne     L_1B93                          ; 75 E6
        cmp     word ptr [bp - 0x14], si        ; 39 76 EC
        jne     L_1B93                          ; 75 E1
        mov     ax, 1                           ; B8 01 00
        jmp     L_1BD1                          ; EB 1A
L_1BB7:
        cmp     word ptr [bp - 0x16], 0x104     ; 81 7E EA 04 01
        jb      L_1BCF                          ; 72 11
        cmp     word ptr [bp - 0x16], 0x107     ; 81 7E EA 07 01
        ja      L_1BCF                          ; 77 0A
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
L_1BCF:
        sub     ax, ax                          ; 2B C0
L_1BD1:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1BD7 -- offset 0x1BD7 -- 166 instr
; Dispatcher: tabla de decisiones cmp+jcc (166 instr).
; tags: dispatcher
; callers: sub_108A
;----------------------------------------------------------------------
L_1BD7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        jne     L_1BE9                          ; 75 03
        jmp     L_1C7D                          ; E9 94 00
L_1BE9:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A 47 1C 00 00 [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     bx, word ptr [0x1022]           ; 8B 1E 22 10
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_184                  ; 9A 62 1C 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        cmp     dx, word ptr [bp + 0xa]         ; 3B 56 0A
        jg      L_1C52                          ; 7F 24
        jl      L_1C35                          ; 7C 05
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        ja      L_1C52                          ; 77 1D
L_1C35:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A E7 1C 00 00 [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_1C55                          ; EB 03
L_1C52:
        inc     word ptr [bp - 2]               ; FF 46 FE
L_1C55:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     si, word ptr [0x1022]           ; 8B 36 22 10
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_184                  ; 9A 0D 1D 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jne     L_1C7D                          ; 75 0F
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1C7D                          ; 74 09
        or      ax, ax                          ; 0B C0
        je      L_1C7D                          ; 74 05
L_1C78:
        sub     ax, ax                          ; 2B C0
        jmp     L_1D8E                          ; E9 11 01
L_1C7D:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, word ptr [bp + 4]           ; 03 46 04
        adc     dx, word ptr [bp + 6]           ; 13 56 06
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        or      ax, dx                          ; 0B C2
        jne     L_1C9C                          ; 75 03
        jmp     L_1D8B                          ; E9 EF 00
L_1C9C:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        cmp     dx, word ptr [bp - 0xc]         ; 3B 56 F4
        jl      L_1CC7                          ; 7C 1A
        jg      L_1CB4                          ; 7F 05
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        jbe     L_1CC7                          ; 76 13
L_1CB4:
        mov     ax, word ptr [0x10fa]           ; A1 FA 10
        mov     dx, word ptr [0x10fc]           ; 8B 16 FC 10
        cmp     word ptr [bp - 0xc], dx         ; 39 56 F4
        jg      L_1CF2                          ; 7F 32
        jl      L_1CC7                          ; 7C 05
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jae     L_1CF2                          ; 73 2B
L_1CC7:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, word ptr [bp + 4]           ; 03 46 04
        adc     dx, word ptr [bp + 6]           ; 13 56 06
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A 50 1D 00 00 [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_1D00                          ; EB 0E
L_1CF2:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, word ptr [bp + 8]           ; 03 46 08
        sub     ax, word ptr [0x10fa]           ; 2B 06 FA 10
        dec     ax                              ; 48
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_1D00:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     si, word ptr [0x1022]           ; 8B 36 22 10
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_184                  ; 9A 72 1D 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        add     cx, word ptr [bp + 4]           ; 03 4E 04
        adc     bx, word ptr [bp + 6]           ; 13 5E 06
        cmp     bx, dx                          ; 3B DA
        jl      L_1D5B                          ; 7C 2B
        jg      L_1D36                          ; 7F 04
        cmp     cx, ax                          ; 3B C8
        jb      L_1D5B                          ; 72 25
L_1D36:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, word ptr [bp + 4]           ; 03 46 04
        adc     dx, word ptr [bp + 6]           ; 13 56 06
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A 00 10 00 00 [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_1D5E                          ; EB 03
L_1D5B:
        inc     word ptr [bp - 2]               ; FF 46 FE
L_1D5E:
        cmp     word ptr [0xe8e], 0             ; 83 3E 8E 0E 00
        je      L_1D8B                          ; 74 26
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     si, word ptr [0x1022]           ; 8B 36 22 10
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_184                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, word ptr [bp - 0xa]         ; 3B 46 F6
        jne     L_1D8B                          ; 75 0D
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_1D8B                          ; 74 07
        or      ax, ax                          ; 0B C0
        je      L_1D8B                          ; 74 03
        jmp     L_1C78                          ; E9 ED FE
L_1D8B:
        mov     ax, 1                           ; B8 01 00
L_1D8E:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1D95 -- offset 0x1D95 -- 172 instr
; Dispatcher: tabla de decisiones cmp+jcc (172 instr).
; tags: dispatcher
; callers: sub_0B8C
;----------------------------------------------------------------------
L_1D95:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0x13da]           ; 8B 36 DA 13
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     word ptr [0x312], 0             ; 83 3E 12 03 00
        jne     L_1DD2                          ; 75 10
        cmp     word ptr [bp + 8], 0x41         ; 83 7E 08 41
        jl      L_1DD2                          ; 7C 0A
        cmp     word ptr [bp + 8], 0x5a         ; 83 7E 08 5A
        jg      L_1DD2                          ; 7F 04
        add     word ptr [bp + 8], 0x20         ; 83 46 08 20
L_1DD2:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_1DF3                          ; 75 1B
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jle     L_1DF3                          ; 7E 15
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        mov     bx, word ptr [0x13da]           ; 8B 1E DA 13
        cmp     byte ptr [bx + si - 1], 0x5e    ; 80 78 FF 5E
        jne     L_1DF3                          ; 75 08
        mov     word ptr [bp - 8], 0x5e         ; C7 46 F8 5E 00
        dec     word ptr [bp - 2]               ; FF 4E FE
L_1DF3:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_1E2C                          ; 74 31
        cmp     ax, 0x2d                        ; 3D 2D 00
        je      L_1E48                          ; 74 48
        cmp     ax, 0x3f                        ; 3D 3F 00
        je      L_1E5B                          ; 74 56
        cmp     ax, 0x5e                        ; 3D 5E 00
        je      L_1E79                          ; 74 6F
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_1E39                          ; 74 2A
        cmp     word ptr [bp + 8], 0xd          ; 83 7E 08 0D
        jne     L_1E18                          ; 75 03
        jmp     L_1F8E                          ; E9 76 01
L_1E18:
        cmp     word ptr [bp + 8], 0x1f         ; 83 7E 08 1F
        jne     L_1E21                          ; 75 03
        jmp     L_1F8E                          ; E9 6D 01
L_1E21:
        mov     word ptr [0x316], 0             ; C7 06 16 03 00 00
        sub     ax, ax                          ; 2B C0
        jmp     L_1F91                          ; E9 65 01
L_1E2C:
        cmp     word ptr [bp + 8], 0x20         ; 83 7E 08 20
        je      L_1E39                          ; 74 07
        cmp     word ptr [bp + 8], 0xa0         ; 81 7E 08 A0 00
L_1E37:
        jne     L_1E21                          ; 75 E8
L_1E39:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_1E42                          ; 75 03
        jmp     L_1F83                          ; E9 41 01
L_1E42:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1F86                          ; E9 3E 01
L_1E48:
        cmp     word ptr [bp + 8], 0x2d         ; 83 7E 08 2D
        je      L_1E39                          ; 74 EB
        cmp     word ptr [bp + 8], 0x1f         ; 83 7E 08 1F
        je      L_1E39                          ; 74 E5
        cmp     word ptr [bp + 8], 0xad         ; 81 7E 08 AD 00
        jmp     L_1E37                          ; EB DC
L_1E5B:
        cmp     word ptr [bp + 8], 0xd          ; 83 7E 08 0D
        jne     L_1E64                          ; 75 03
        jmp     L_1F8E                          ; E9 2A 01
L_1E64:
        cmp     word ptr [bp + 8], 0x1f         ; 83 7E 08 1F
        jne     L_1E6D                          ; 75 03
        jmp     L_1F8E                          ; E9 21 01
L_1E6D:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1E39                          ; 74 C6
        cmp     word ptr [bp + 8], 0x3f         ; 83 7E 08 3F
        jmp     L_1E37                          ; EB BE
L_1E79:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1E85                          ; 74 06
        cmp     word ptr [bp + 8], 0x5e         ; 83 7E 08 5E
        jmp     L_1E37                          ; EB B2
L_1E85:
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        mov     bx, word ptr [0x13da]           ; 8B 1E DA 13
        mov     al, byte ptr [bx + si + 1]      ; 8A 40 01
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1E9D                          ; 74 03
        inc     word ptr [bp - 2]               ; FF 46 FE
L_1E9D:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     ax, 0x6e                        ; 3D 6E 00
        jne     L_1EAD                          ; 75 03
        jmp     L_1F4B                          ; E9 9E 00
L_1EAD:
        jle     L_1EB2                          ; 7E 03
        jmp     L_1F63                          ; E9 B1 00
L_1EB2:
        cmp     ax, 0x2d                        ; 3D 2D 00
        jne     L_1EBA                          ; 75 03
        jmp     L_1F53                          ; E9 99 00
L_1EBA:
        cmp     ax, 0x64                        ; 3D 64 00
        jne     L_1EC2                          ; 75 03
        jmp     L_1F5B                          ; E9 99 00
L_1EC2:
        jmp     L_1DF3                          ; E9 2E FF
L_1EC5:
        mov     word ptr [bp - 8], 0xa          ; C7 46 F8 0A 00
        jmp     L_1DF3                          ; E9 26 FF
L_1ECD:
        mov     word ptr [bp - 8], 9            ; C7 46 F8 09 00
        jmp     L_1DF3                          ; E9 1E FF
L_1ED5:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 9                           ; 3D 09 00
        jl      L_1EEC                          ; 7C 0F
        cmp     ax, 0xd                         ; 3D 0D 00
        jle     L_1F3B                          ; 7E 59
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_1F3B                          ; 74 54
        cmp     ax, 0xa0                        ; 3D A0 00
        je      L_1F3B                          ; 74 4F
L_1EEC:
        cmp     word ptr [0x316], 0             ; 83 3E 16 03 00
        jne     L_1EF6                          ; 75 03
        jmp     L_1E21                          ; E9 2B FF
L_1EF6:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1F13                          ; 74 17
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     si, word ptr [0x13da]           ; 8B 36 DA 13
        cmp     byte ptr [bx + si], 0           ; 80 38 00
        jne     L_1F1C                          ; 75 11
L_1F0B:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_1F8C                          ; EB 79
L_1F13:
        dec     word ptr [bp - 2]               ; FF 4E FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jl      L_1F0B                          ; 7C EF
L_1F1C:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [0x316], 0             ; C7 06 16 03 00 00
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     si, word ptr [0x13da]           ; 8B 36 DA 13
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_1DF3                          ; E9 B8 FE
L_1F3B:
        mov     word ptr [0x316], 1             ; C7 06 16 03 01 00
        jmp     L_1F8E                          ; EB 4B
L_1F43:
        mov     word ptr [bp - 8], 0xa0         ; C7 46 F8 A0 00
        jmp     L_1DF3                          ; E9 A8 FE
L_1F4B:
        mov     word ptr [bp - 8], 0xb          ; C7 46 F8 0B 00
        jmp     L_1DF3                          ; E9 A0 FE
L_1F53:
        mov     word ptr [bp - 8], 0x1f         ; C7 46 F8 1F 00
        jmp     L_1DF3                          ; E9 98 FE
L_1F5B:
        mov     word ptr [bp - 8], 0xc          ; C7 46 F8 0C 00
        jmp     L_1DF3                          ; E9 90 FE
L_1F63:
        cmp     ax, 0x70                        ; 3D 70 00
        jne     L_1F6B                          ; 75 03
        jmp     L_1EC5                          ; E9 5A FF
L_1F6B:
        cmp     ax, 0x73                        ; 3D 73 00
        je      L_1F43                          ; 74 D3
        cmp     ax, 0x74                        ; 3D 74 00
        jne     L_1F78                          ; 75 03
        jmp     L_1ECD                          ; E9 55 FF
L_1F78:
        cmp     ax, 0x77                        ; 3D 77 00
        jne     L_1F80                          ; 75 03
        jmp     L_1ED5                          ; E9 55 FF
L_1F80:
        jmp     L_1DF3                          ; E9 70 FE
L_1F83:
        mov     ax, 0xffff                      ; B8 FF FF
L_1F86:
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
L_1F8C:
        mov     word ptr [bx], ax               ; 89 07
L_1F8E:
        mov     ax, 1                           ; B8 01 00
L_1F91:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1F98 -- offset 0x1F98 -- 57 instr
; Funcion mediana (57 instr, 0 calls).
; tags: medium
; callers: sub_01EF
;----------------------------------------------------------------------
L_1F98:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_2005                          ; EB 60
L_1FA5:
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        inc     ax                              ; 40
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cdq                                     ; 99
        add     word ptr [bp + 4], ax           ; 01 46 04
        adc     word ptr [bp + 6], dx           ; 11 56 06
        add     word ptr [bp - 6], ax           ; 01 46 FA
        mov     ax, 0x121c                      ; B8 1C 12
        push    ax                              ; 50
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        push    word ptr [0x13cc]               ; FF 36 CC 13
        push    ax                              ; 50
        mov     ax, 0x1142                      ; B8 42 11
        push    ax                              ; 50
        call    far _entry_187                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1FDC                          ; 74 0C
        cmp     word ptr [0x121c], 0            ; 83 3E 1C 12 00
        je      L_1FDC                          ; 74 05
        mov     ax, 0xff9a                      ; B8 9A FF
        jmp     L_1FDF                          ; EB 03
L_1FDC:
        mov     ax, 0x66                        ; B8 66 00
L_1FDF:
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [0x2ba], ax            ; A3 BA 02
        mov     word ptr [0x2bc], dx            ; 89 16 BC 02
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_186                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        mov     ax, 0x1142                      ; B8 42 11
        push    ax                              ; 50
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A BE 07 00 00 [FIXUP]
L_2005:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     bx, word ptr [0x1242]           ; 8B 1E 42 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_1FA5                          ; 75 83
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2028 -- offset 0x2028 -- 27 instr
; Funcion sin clasificar definitiva (27 instr).
; tags: calls_user, small
; callers: sub_124E, sub_1598, sub_15EA
; calls (inter): USER.GETDLGITEMTEXT
;----------------------------------------------------------------------
L_2028:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx + si - 2], 0       ; C6 40 FE 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     ax                              ; 48
        dec     ax                              ; 48
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        jge     L_205E                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_2060                          ; EB 02
L_205E:
        sub     ax, ax                          ; 2B C0
L_2060:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2067 -- offset 0x2067 -- 32 instr
; Funcion mediana (32 instr, 3 calls).
; tags: calls_user, medium
; callers: sub_124E, sub_1598, sub_15EA
; calls (inter): USER.GETDLGITEM, USER.SENDDLGITEMMESSAGE, USER.SETFOCUS
;----------------------------------------------------------------------
L_2067:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x100                       ; 81 EC 00 01
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_52                   ; 9A 41 21 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETDLGITEM             ; 9A 40 13 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        mov     dx, 0x7fff                      ; BA FF 7F
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ax                              ; 50
        mov     ax, 0x41                        ; B8 41 00
        push    ax                              ; 50
        call    far _entry_109                  ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_20BD -- offset 0x20BD -- 61 instr
; Funcion mediana (61 instr, 2 calls).
; tags: calls_user, medium
; callers: sub_127B, sub_1617, sub_17AF
; calls (inter): USER.GETWINDOWTEXT, USER.SETWINDOWTEXT
;----------------------------------------------------------------------
L_20BD:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x108                       ; 81 EC 08 01
        mov     word ptr [bp - 0x108], 0x1244   ; C7 86 F8 FE 44 12
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_20E1                          ; 75 0A
        push    word ptr [0x780]                ; FF 36 80 07
        mov     ax, 0x1244                      ; B8 44 12
        push    ds                              ; 1E
        jmp     L_214E                          ; EB 6D
L_20E1:
        push    word ptr [0x780]                ; FF 36 80 07
        mov     ax, word ptr [bp - 0x108]       ; 8B 86 F8 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x108]           ; FF B6 F8 FE
        call    far _entry_61                   ; 9A 17 00 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x108]       ; 03 86 F8 FE
        dec     ax                              ; 48
        mov     word ptr [bp - 0x104], ax       ; 89 86 FC FE
        jmp     L_2111                          ; EB 09
L_2108:
        mov     bx, word ptr [bp - 0x104]       ; 8B 9E FC FE
        cmp     byte ptr [bx], 0x20             ; 80 3F 20
        je      L_211F                          ; 74 0E
L_2111:
        mov     ax, word ptr [bp - 0x104]       ; 8B 86 FC FE
        dec     word ptr [bp - 0x104]           ; FF 8E FC FE
        cmp     ax, word ptr [bp - 0x108]       ; 3B 86 F8 FE
        ja      L_2108                          ; 77 E9
L_211F:
        push    word ptr [bp - 0x108]           ; FF B6 F8 FE
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x104]       ; 8B 86 FC FE
        sub     ax, word ptr [bp - 0x108]       ; 2B 86 F8 FE
        inc     ax                              ; 40
        mov     word ptr [bp - 0x106], ax       ; 89 86 FA FE
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 00 0F 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        call    far _entry_52                   ; 9A D3 17 00 00 [FIXUP]
        push    word ptr [0x780]                ; FF 36 80 07
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
L_214E:
        push    ax                              ; 50
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
