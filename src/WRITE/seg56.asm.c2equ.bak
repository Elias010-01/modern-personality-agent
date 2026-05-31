; ======================================================================
; WRITE / seg56.asm   (segment 56 of WRITE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         6
; Total instructions:                 1272
; 
; Classification (pass8):
;   C-origin (high+medium):              6
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original WRITE segment 56
; segment_size=3491 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Description (heuristic):
;   Pure computation / dispatcher (110 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=110 instr  segment=seg56.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0127
;-------------------------------------------------------------------------
L_0000:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jl      L_002A                          ; 7C 11
        jg      L_0020                          ; 7F 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jb      L_002A                          ; 72 0A
;   [loop start (also forward branch)] L_0020
L_0020:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        jmp     L_011C                          ; E9 F2 00
;   [conditional branch target (if/else)] L_002A
L_002A:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jg      L_004A                          ; 7F 14
        jl      L_003D                          ; 7C 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jae     L_004A                          ; 73 0D
;   [conditional branch target (if/else)] L_003D
L_003D:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 0xa], dx         ; 89 56 0A
;   [conditional branch target (if/else)] L_004A
L_004A:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 6                           ; 3D 06 00
        ja      L_00BA                          ; 77 68
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x10e]        ; 2E FF A7 0E 01
        jmp     L_00BA                          ; EB 5E
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_32                   ; 9A 78 01 00 00 [FIXUP]
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [0xed4], dx            ; 39 16 D4 0E
        jl      L_0080                          ; 7C 08
        jg      L_0020                          ; 7F A6
        cmp     word ptr [0xed2], ax            ; 39 06 D2 0E
        ja      L_0020                          ; 77 A0
;   [conditional branch target (if/else)] L_0080
L_0080:
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        jmp     L_011C                          ; E9 92 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0127                          ; E8 92 00
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 0xa], dx         ; 89 56 0A
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jle     L_00B0                          ; 7E 03
        jmp     L_0020                          ; E9 70 FF
;   [conditional branch target (if/else)] L_00B0
L_00B0:
        jl      L_00BA                          ; 7C 08
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jbe     L_00BA                          ; 76 03
        jmp     L_0020                          ; E9 66 FF
;   [branch target] L_00BA
L_00BA:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        jmp     L_011C                          ; EB 5A
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_173                  ; 9A A6 02 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        add     ax, word ptr [bx + 6]           ; 03 47 06
        adc     dx, word ptr [bx + 8]           ; 13 57 08
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        call    far _entry_175                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_011C                          ; EB 1E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_344                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_011C                          ; EB 0E
        mov     dx, 0x8a00                      ; BA 00 8A
        add     dh, bh                          ; 00 FE
        add     dh, bh                          ; 00 FE
        add     byte ptr [si], bl               ; 00 5C 00
        ret     0x2000                          ; C2 00 20
        add     byte ptr [bp + di + 0x2ed], al  ; 00 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (64 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0127   offset=0x0127  size=64 instr  segment=seg56.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0127
L_0127:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jl      L_014D                          ; 7C 10
        jg      L_0144                          ; 7F 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jb      L_014D                          ; 72 09
;   [conditional branch target (if/else)] L_0144
L_0144:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        jmp     L_01C5                          ; EB 78
;   [conditional branch target (if/else)] L_014D
L_014D:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jg      L_016D                          ; 7F 14
        jl      L_0160                          ; 7C 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jae     L_016D                          ; 73 0D
;   [conditional branch target (if/else)] L_0160
L_0160:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_016D
L_016D:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_32                   ; 9A 25 02 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_0192                          ; 74 0F
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        jmp     L_01C5                          ; EB 33
;   [conditional branch target (if/else)] L_0192
L_0192:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A 86 02 00 00 [FIXUP]
        mov     bx, word ptr [0x1022]           ; 8B 1E 22 10
        cmp     byte ptr [bx], 0xd              ; 80 3F 0D
        jne     L_01BF                          ; 75 0E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        jmp     L_01C5                          ; EB 06
;   [conditional branch target (if/else)] L_01BF
L_01BF:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
;   [unconditional branch target] L_01C5
L_01C5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (99 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_01D0   offset=0x01D0  size=99 instr  segment=seg56.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_01D0
L_01D0:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x80                        ; 81 EC 80 00
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jg      L_01FB                          ; 7F 11
        jl      L_01F1                          ; 7C 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        ja      L_01FB                          ; 77 0A
;   [conditional branch target (if/else)] L_01F1
L_01F1:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        jmp     L_02CA                          ; E9 CF 00
;   [conditional branch target (if/else)] L_01FB
L_01FB:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jl      L_021A                          ; 7C 13
        jg      L_020E                          ; 7F 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jb      L_021A                          ; 72 0C
;   [conditional branch target (if/else)] L_020E
L_020E:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jl      L_021A                          ; 7C 05
        cmp     ax, 1                           ; 3D 01 00
        jle     L_0239                          ; 7E 1F
;   [conditional branch target (if/else)] L_021A
L_021A:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 6                           ; 3D 06 00
        ja      L_0243                          ; 77 12
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x2bc]        ; 2E FF A7 BC 02
;   [conditional branch target (if/else)] L_0239
L_0239:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        jmp     L_02CA                          ; E9 87 00
;   [loop start (also forward branch)] L_0243
L_0243:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        jmp     L_02CA                          ; EB 7F
;   [loop start] L_024B
L_024B:
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        jmp     L_02CA                          ; EB 76
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        jne     L_024B                          ; 75 F0
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        mov     word ptr [bp - 0x7e], ax        ; 89 46 82
        mov     word ptr [bp - 0x7c], dx        ; 89 56 84
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x1022]           ; 8B 1E 22 10
        cmp     byte ptr [bx], 0xd              ; 80 3F 0D
        jne     L_0243                          ; 75 B0
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        mov     dx, word ptr [bp - 0x7c]        ; 8B 56 84
        jmp     L_02CA                          ; EB 2F
        lea     ax, [bp - 0x80]                 ; 8D 46 80
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_173                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02CA                          ; EB 1E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_343                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02CA                          ; EB 0E
        inc     bx                              ; 43
        add     dl, byte ptr [si + 2]           ; 02 54 02
        lodsb   al, byte ptr [si]               ; AC
        add     ch, byte ptr [si + 0x4b02]      ; 02 AC 02 4B
        add     bl, byte ptr [bp + di - 0xefe]  ; 02 9B 02 F1
        add     word ptr [bp + di + 0x2ed], ax  ; 01 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (261 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_02D5   offset=0x02D5  size=261 instr  segment=seg56.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_05AF
;-------------------------------------------------------------------------
;   [sub-routine] L_02D5
L_02D5:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jl      L_031A                          ; 7C 13
        jg      L_030E                          ; 7F 05
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jbe     L_031A                          ; 76 0C
;   [conditional branch target (if/else)] L_030E
L_030E:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 0xc], dx         ; 89 56 0C
;   [conditional branch target (if/else)] L_031A
L_031A:
        mov     word ptr [0x78], 0              ; C7 06 78 00 00 00
        cmp     word ptr [0x31e], 0             ; 83 3E 1E 03 00
        je      L_032A                          ; 74 03
        jmp     L_04F6                          ; E9 CC 01
;   [conditional branch target (if/else)] L_032A
L_032A:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jle     L_0338                          ; 7E 03
        jmp     L_03D9                          ; E9 A1 00
;   [conditional branch target (if/else)] L_0338
L_0338:
        jl      L_0342                          ; 7C 08
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jb      L_0342                          ; 72 03
        jmp     L_03D9                          ; E9 97 00
;   [conditional branch target (if/else)] L_0342
L_0342:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jg      L_035A                          ; 7F 0D
        jge     L_0352                          ; 7D 03
        jmp     L_03F1                          ; E9 9F 00
;   [conditional branch target (if/else)] L_0352
L_0352:
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        ja      L_035A                          ; 77 03
        jmp     L_03F1                          ; E9 97 00
;   [conditional branch target (if/else)] L_035A
L_035A:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_125                  ; 9A B4 03 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jg      L_0391                          ; 7F 17
        jl      L_0381                          ; 7C 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jae     L_0391                          ; 73 10
;   [conditional branch target (if/else)] L_0381
L_0381:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        jmp     L_03B2                          ; EB 21
;   [conditional branch target (if/else)] L_0391
L_0391:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jl      L_03B8                          ; 7C 1C
        jg      L_03A3                          ; 7F 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jbe     L_03B8                          ; 76 15
;   [conditional branch target (if/else)] L_03A3
L_03A3:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_03B2
L_03B2:
        push    ax                              ; 50
        call    far _entry_125                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_03B8
L_03B8:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        je      L_03C6                          ; 74 03
        jmp     L_04F6                          ; E9 30 01
;   [conditional branch target (if/else)] L_03C6
L_03C6:
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        je      L_03CE                          ; 74 03
        jmp     L_04F6                          ; E9 28 01
;   [conditional branch target (if/else)] L_03CE
L_03CE:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    dx                              ; 52
        push    ax                              ; 50
        jmp     L_04EE                          ; E9 15 01
;   [unconditional branch target] L_03D9
L_03D9:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        cmp     word ptr [bp - 0xa], dx         ; 39 56 F6
        jle     L_03E7                          ; 7E 03
        jmp     L_0499                          ; E9 B2 00
;   [conditional branch target (if/else)] L_03E7
L_03E7:
        jl      L_03F1                          ; 7C 08
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jbe     L_03F1                          ; 76 03
        jmp     L_0499                          ; E9 A8 00
;   [branch target] L_03F1
L_03F1:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        jne     L_0406                          ; 75 0A
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jne     L_0406                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0408                          ; EB 02
;   [conditional branch target (if/else)] L_0406
L_0406:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0408
L_0408:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x13b4]           ; A1 B4 13
        mov     word ptr [0x78], ax             ; A3 78 00
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jne     L_0451                          ; 75 35
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_0451                          ; 75 30
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jne     L_0451                          ; 75 25
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0451                          ; 75 20
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0451                          ; 74 1A
        cmp     word ptr [0xf28], 0             ; 83 3E 28 0F 00
        je      L_0451                          ; 74 13
        mov     ax, word ptr [0x1bea]           ; A1 EA 1B
        and     ax, 2                           ; 25 02 00
        mov     cx, word ptr [0x13b4]           ; 8B 0E B4 13
        shl     cx, 1                           ; D1 E1
        cmp     ax, cx                          ; 3B C1
        jne     L_0451                          ; 75 03
        jmp     L_04F6                          ; E9 A5 00
;   [conditional branch target (if/else)] L_0451
L_0451:
        mov     ax, word ptr [0x13b4]           ; A1 B4 13
        and     ax, 1                           ; 25 01 00
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [0x1bea]           ; 8B 0E EA 1B
        and     cl, 0xfd                        ; 80 E1 FD
        or      ax, cx                          ; 0B C1
        mov     word ptr [0x1bea], ax           ; A3 EA 1B
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0470                          ; 74 05
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0470
L_0470:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_125                  ; 9A DE 04 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_04F6                          ; 75 6B
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        jmp     L_04EE                          ; EB 55
;   [unconditional branch target] L_0499
L_0499:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp - 0xa], dx         ; 39 56 F6
        jg      L_04BC                          ; 7F 18
        jl      L_04AB                          ; 7C 05
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jae     L_04BC                          ; 73 11
;   [conditional branch target (if/else)] L_04AB
L_04AB:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_04DC                          ; EB 20
;   [conditional branch target (if/else)] L_04BC
L_04BC:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp - 0xa], dx         ; 39 56 F6
        jl      L_04E2                          ; 7C 1B
        jg      L_04CE                          ; 7F 05
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jbe     L_04E2                          ; 76 14
;   [conditional branch target (if/else)] L_04CE
L_04CE:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_04DC
L_04DC:
        push    ax                              ; 50
        call    far _entry_125                  ; 9A F2 04 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_04E2
L_04E2:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
;   [unconditional branch target] L_04EE
L_04EE:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_125                  ; 9A 6B 03 00 00 [FIXUP]
;   [branch target] L_04F6
L_04F6:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jne     L_0521                          ; 75 05
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_0526                          ; 74 05
;   [conditional branch target (if/else)] L_0521
L_0521:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0528                          ; EB 02
;   [conditional branch target (if/else)] L_0526
L_0526:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0528
L_0528:
        and     ax, 1                           ; 25 01 00
        mov     cx, word ptr [0x1bea]           ; 8B 0E EA 1B
        and     cl, 0xfe                        ; 80 E1 FE
        or      ax, cx                          ; 0B C1
        mov     word ptr [0x1bea], ax           ; A3 EA 1B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jne     L_0565                          ; 75 23
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_0565                          ; 75 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05AF                          ; E8 5D 00
        mov     word ptr [0x31a], 0             ; C7 06 1A 03 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [0x2c6], ax            ; A3 C6 02
        mov     word ptr [0x2c8], dx            ; 89 16 C8 02
;   [conditional branch target (if/else)] L_0565
L_0565:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x13b4], ax           ; A3 B4 13
        mov     word ptr [0x13de], ax           ; A3 DE 13
        mov     word ptr [0xed6], ax            ; A3 D6 0E
        mov     word ptr [0xcc4], ax            ; A3 C4 0C
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_32                   ; 9A DA 05 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_05A4                          ; 74 19
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [0x1be8], dx           ; 39 16 E8 1B
        jne     L_05A4                          ; 75 0C
        cmp     word ptr [0x1be6], ax           ; 39 06 E6 1B
        jne     L_05A4                          ; 75 06
        mov     word ptr [0x13de], 1            ; C7 06 DE 13 01 00
;   [conditional branch target (if/else)] L_05A4
L_05A4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Pure computation / dispatcher (96 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_05AF   offset=0x05AF  size=96 instr  segment=seg56.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_05AF
L_05AF:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [0x13a8], dx           ; 39 16 A8 13
        jne     L_05CF                          ; 75 09
        cmp     word ptr [0x13a6], ax           ; 39 06 A6 13
        jne     L_05CF                          ; 75 03
        jmp     L_068E                          ; E9 BF 00
;   [conditional branch target (if/else)] L_05CF
L_05CF:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_32                   ; 9A 05 06 00 00 [FIXUP]
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [0x1c02], dx           ; 39 16 02 1C
        jne     L_0610                          ; 75 25
        cmp     word ptr [0x1c00], ax           ; 39 06 00 1C
        jne     L_0610                          ; 75 1F
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A 67 00 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        jne     L_068E                          ; 75 7E
;   [conditional branch target (if/else)] L_0610
L_0610:
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        jne     L_068E                          ; 75 77
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1c02]               ; FF 36 02 1C
        push    word ptr [0x1c00]               ; FF 36 00 1C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_34                   ; 9A 68 02 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A A4 01 00 00 [FIXUP]
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        mov     ax, 0xa5e                       ; B8 5E 0A
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 9B 06 00 00 [FIXUP]
        test    word ptr [0x1016], 0x4000       ; F7 06 16 10 00 40
        je      L_0687                          ; 74 2A
        test    word ptr [0x1018], 0xff00       ; F7 06 18 10 00 FF
        je      L_0687                          ; 74 22
        and     byte ptr [0xa63], 0             ; 80 26 63 0A 00
        mov     al, byte ptr [0xa60]            ; A0 60 0A
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_345                  ; 9A FF FF 00 00 [FIXUP]
        sub     ah, ah                          ; 2A E4
        mov     cx, word ptr [0xa60]            ; 8B 0E 60 0A
        and     cl, 0                           ; 80 E1 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [0xa60], ax            ; A3 60 0A
;   [conditional branch target (if/else)] L_0687
L_0687:
        and     byte ptr [0xa61], 0xbf          ; 80 26 61 0A BF
        jmp     L_06A9                          ; EB 1B
;   [branch target] L_068E
L_068E:
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        mov     ax, 0xa5e                       ; B8 5E 0A
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xa60]            ; A1 60 0A
        and     al, 0                           ; 24 00
        or      al, 0x14                        ; 0C 14
        mov     word ptr [0xa60], ax            ; A3 60 0A
;   [unconditional branch target] L_06A9
L_06A9:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (642 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_06B4   offset=0x06B4  size=642 instr  segment=seg56.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Near calls (internal): L_01D0, L_02D5, L_06B4
;-------------------------------------------------------------------------
;   [sub-routine] L_06B4
L_06B4:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1e                        ; 83 EC 1E
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_06D9                          ; 75 0B
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jne     L_06D9                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_06DB                          ; EB 02
;   [conditional branch target (if/else)] L_06D9
L_06D9:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_06DB
L_06DB:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     ax, word ptr [0x1bea]           ; A1 EA 1B
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp + 6], 1            ; 83 7E 06 01
        jne     L_070C                          ; 75 05
        mov     word ptr [bp + 6], 0            ; C7 46 06 00 00
;   [conditional branch target (if/else)] L_070C
L_070C:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jne     L_0723                          ; 75 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_0736                          ; 74 13
;   [conditional branch target (if/else)] L_0723
L_0723:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jl      L_073E                          ; 7C 0F
        jg      L_0736                          ; 7F 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jbe     L_073E                          ; 76 08
;   [conditional branch target (if/else)] L_0736
L_0736:
        call    far _entry_174                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0A3D                          ; E9 FF 02
;   [conditional branch target (if/else)] L_073E
L_073E:
        mov     ax, 0xffff                      ; B8 FF FF
        cdq                                     ; 99
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jle     L_0768                          ; 7E 03
        jmp     L_0837                          ; E9 CF 00
;   [conditional branch target (if/else)] L_0768
L_0768:
        jl      L_0772                          ; 7C 08
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jbe     L_0772                          ; 76 03
        jmp     L_0837                          ; E9 C5 00
;   [conditional branch target (if/else)] L_0772
L_0772:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jne     L_0785                          ; 75 08
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_0785                          ; 75 03
        jmp     L_0A3D                          ; E9 B8 02
;   [conditional branch target (if/else)] L_0785
L_0785:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_07DB                          ; 74 50
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        jne     L_07DB                          ; 75 4A
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 5B F8
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_175                  ; 9A F8 00 00 00 [FIXUP]
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01D0                          ; E8 09 FA
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        jmp     L_0816                          ; EB 3B
;   [conditional branch target (if/else)] L_07DB
L_07DB:
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        je      L_07F4                          ; 74 13
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
;   [conditional branch target (if/else)] L_07F4
L_07F4:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01D0                          ; E8 CD F9
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jne     L_0816                          ; 75 08
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jne     L_0816                          ; 75 03
        jmp     L_0A3D                          ; E9 27 02
;   [branch target] L_0816
L_0816:
        and     byte ptr [0x1bea], 0xfe         ; 80 26 EA 1B FE
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        jmp     L_09C7                          ; E9 90 01
;   [unconditional branch target] L_0837
L_0837:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jge     L_0845                          ; 7D 03
        jmp     L_094D                          ; E9 08 01
;   [conditional branch target (if/else)] L_0845
L_0845:
        jg      L_084F                          ; 7F 08
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jae     L_084F                          ; 73 03
        jmp     L_094D                          ; E9 FE 00
;   [conditional branch target (if/else)] L_084F
L_084F:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jne     L_0862                          ; 75 08
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_0862                          ; 75 03
        jmp     L_0A3D                          ; E9 DB 01
;   [conditional branch target (if/else)] L_0862
L_0862:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_08CE                          ; 75 66
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        jne     L_08CE                          ; 75 60
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0882                          ; 75 08
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        jmp     L_088E                          ; EB 0C
;   [conditional branch target (if/else)] L_0882
L_0882:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
;   [unconditional branch target] L_088E
L_088E:
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01D0                          ; E8 38 F9
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_34                   ; 9A 32 06 00 00 [FIXUP]
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 46 F7
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_0900                          ; EB 32
;   [conditional branch target (if/else)] L_08CE
L_08CE:
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        je      L_08E7                          ; 74 13
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
;   [conditional branch target (if/else)] L_08E7
L_08E7:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        cmp     word ptr [bp - 0x12], dx        ; 39 56 EE
        jne     L_0900                          ; 75 08
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jne     L_0900                          ; 75 03
        jmp     L_0A3D                          ; E9 3D 01
;   [branch target] L_0900
L_0900:
        or      byte ptr [0x1bea], 1            ; 80 0E EA 1B 01
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     dx, word ptr [bp - 0x1c]        ; 8B 56 E4
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        cmp     word ptr [bp - 0x1c], dx        ; 39 56 E4
        je      L_092C                          ; 74 03
        jmp     L_09C7                          ; E9 9B 00
;   [conditional branch target (if/else)] L_092C
L_092C:
        cmp     word ptr [bp - 0x1e], ax        ; 39 46 E2
        je      L_0934                          ; 74 03
        jmp     L_09C7                          ; E9 93 00
;   [conditional branch target (if/else)] L_0934
L_0934:
        cmp     word ptr [bp - 0xa], dx         ; 39 56 F6
        jne     L_0941                          ; 75 08
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jne     L_0941                          ; 75 03
        jmp     L_09C7                          ; E9 86 00
;   [conditional branch target (if/else)] L_0941
L_0941:
        mov     word ptr [bp - 0x1e], 0xffff    ; C7 46 E2 FF FF
        mov     word ptr [bp - 0x1c], 0xffff    ; C7 46 E4 FF FF
        jmp     L_09C7                          ; EB 7A
;   [unconditional branch target] L_094D
L_094D:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_098E                          ; 74 3B
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [bp - 4], dx           ; 39 56 FC
        jne     L_0973                          ; 75 08
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_0973                          ; 75 03
        jmp     L_0A3D                          ; E9 CA 00
;   [conditional branch target (if/else)] L_0973
L_0973:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        jmp     L_09C7                          ; EB 39
;   [conditional branch target (if/else)] L_098E
L_098E:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [bp - 0xa], dx         ; 39 56 F6
        jne     L_09AE                          ; 75 08
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jne     L_09AE                          ; 75 03
        jmp     L_0A3D                          ; E9 8F 00
;   [conditional branch target (if/else)] L_09AE
L_09AE:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
;   [unconditional branch target] L_09C7
L_09C7:
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_125                  ; 9A EC 09 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_125                  ; 9A 81 04 00 00 [FIXUP]
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_0A03                          ; 75 06
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        je      L_0A08                          ; 74 05
;   [conditional branch target (if/else)] L_0A03
L_0A03:
        call    far _entry_102                  ; 9A 6C 04 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0A08
L_0A08:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_32                   ; 9A 3B 0B 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_0A38                          ; 74 18
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [0x1be8], dx           ; 39 16 E8 1B
        jne     L_0A38                          ; 75 0B
        cmp     word ptr [0x1be6], ax           ; 39 06 E6 1B
        jne     L_0A38                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A3A                          ; EB 02
;   [conditional branch target (if/else)] L_0A38
L_0A38:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0A3A
L_0A3A:
        mov     word ptr [0x13de], ax           ; A3 DE 13
;   [unconditional branch target] L_0A3D
L_0A3D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1c                        ; 83 EC 1C
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0x1112]           ; A1 12 11
        sub     ax, word ptr [0x1088]           ; 2B 06 88 10
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        sub     di, word ptr [bp - 0x1c]        ; 2B 7E E4
        or      di, di                          ; 0B FF
        jge     L_0A80                          ; 7D 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0A82                          ; EB 02
;   [conditional branch target (if/else)] L_0A80
L_0A80:
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_0A82
L_0A82:
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     al, byte ptr [0x1082]           ; A0 82 10
        sub     ah, ah                          ; 2A E4
        mov     di, ax                          ; 8B F8
        dec     di                              ; 4F
        cmp     word ptr [bp + 0xc], di         ; 39 7E 0C
        jbe     L_0A96                          ; 76 04
        mov     ax, di                          ; 8B C7
        jmp     L_0A99                          ; EB 03
;   [conditional branch target (if/else)] L_0A96
L_0A96:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
;   [unconditional branch target] L_0A99
L_0A99:
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     si, word ptr [bx]               ; 8B 37
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     dx, word ptr [si + 8]           ; 8B 54 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        jl      L_0AD7                          ; 7C 17
        jg      L_0AC7                          ; 7F 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jb      L_0AD7                          ; 72 10
;   [conditional branch target (if/else)] L_0AC7
L_0AC7:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
;   [loop start] L_0ACE
L_0ACE:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        jmp     L_0C76                          ; E9 9F 01
;   [conditional branch target (if/else)] L_0AD7
L_0AD7:
        test    byte ptr [si + 2], 4            ; F6 44 02 04
        je      L_0B06                          ; 74 29
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        and     ah, 0xf                         ; 80 E4 0F
        cmp     ax, word ptr [bp + 0xa]         ; 3B 46 0A
        ja      L_0AFE                          ; 77 12
        cmp     word ptr [bp + 8], 5            ; 83 7E 08 05
        je      L_0AF5                          ; 74 03
        jmp     L_0C76                          ; E9 81 01
;   [conditional branch target (if/else)] L_0AF5
L_0AF5:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0AFE                          ; 74 03
        jmp     L_0C76                          ; E9 78 01
;   [conditional branch target (if/else)] L_0AFE
L_0AFE:
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        jmp     L_0C76                          ; E9 70 01
;   [conditional branch target (if/else)] L_0B06
L_0B06:
        cmp     word ptr [bp + 8], 4            ; 83 7E 08 04
        jl      L_0B0F                          ; 7C 03
        jmp     L_0C76                          ; E9 67 01
;   [conditional branch target (if/else)] L_0B0F
L_0B0F:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     al, byte ptr [si + 1]           ; 8A 44 01
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_32                   ; 9A 80 05 00 00 [FIXUP]
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        cmp     byte ptr [0x33a], 0             ; 80 3E 3A 03 00
        je      L_0B5F                          ; 74 0A
        mov     ax, word ptr [0x32a]            ; A1 2A 03
        mov     dx, word ptr [0x32c]            ; 8B 16 2C 03
        jmp     L_0ACE                          ; E9 6F FF
;   [conditional branch target (if/else)] L_0B5F
L_0B5F:
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        and     ah, 0xf                         ; 80 E4 0F
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x340]            ; A1 40 03
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_0B77                          ; 74 03
        jmp     L_0D4C                          ; E9 D5 01
;   [conditional branch target (if/else)] L_0B77
L_0B77:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jg      L_0B87                          ; 7F 08
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        jmp     L_0C76                          ; E9 EF 00
;   [conditional branch target (if/else)] L_0B87
L_0B87:
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jl      L_0BAE                          ; 7C 1F
        mov     ax, word ptr [0x330]            ; A1 30 03
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        dec     ax                              ; 48
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     dx, word ptr [0x332]            ; 8B 16 32 03
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        jmp     L_0C21                          ; EB 73
;   [conditional branch target (if/else)] L_0BAE
L_0BAE:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        mov     ax, word ptr [0x330]            ; A1 30 03
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_0BDB                          ; EB 17
;   [loop start] L_0BC4
L_0BC4:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        jge     L_0BE3                          ; 7D 17
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x35a]       ; 8B 87 5A 03
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
;   [unconditional branch target] L_0BDB
L_0BDB:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jl      L_0BC4                          ; 7C E1
;   [conditional branch target (if/else)] L_0BE3
L_0BE3:
        cmp     word ptr [bp - 0x18], 1         ; 83 7E E8 01
        jl      L_0BEC                          ; 7C 03
        dec     word ptr [bp - 0x18]            ; FF 4E E8
;   [conditional branch target (if/else)] L_0BEC
L_0BEC:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cdq                                     ; 99
        add     word ptr [bp - 8], ax           ; 01 46 F8
        adc     word ptr [bp - 6], dx           ; 11 56 FA
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_32                   ; 9A 15 0A 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x35a]       ; 8B 87 5A 03
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        cmp     ax, word ptr [bp - 0x1a]        ; 3B 46 E6
        jle     L_0C76                          ; 7E 5B
        cmp     word ptr [bp + 8], 1            ; 83 7E 08 01
        jne     L_0C76                          ; 75 55
;   [unconditional branch target] L_0C21
L_0C21:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        cmp     dx, word ptr [0xed4]            ; 3B 16 D4 0E
        jne     L_0C6B                          ; 75 38
        cmp     ax, word ptr [0xed2]            ; 3B 06 D2 0E
        jne     L_0C6B                          ; 75 32
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        jne     L_0C6B                          ; 75 2B
        cmp     word ptr [0x110a], 0            ; 83 3E 0A 11 00
        jne     L_0C55                          ; 75 0E
        cmp     word ptr [0x100c], -1           ; 83 3E 0C 10 FF
        jne     L_0C6B                          ; 75 1D
        cmp     word ptr [0x100a], -1           ; 83 3E 0A 10 FF
        jne     L_0C6B                          ; 75 16
;   [conditional branch target (if/else)] L_0C55
L_0C55:
        cmp     word ptr [0x100c], -1           ; 83 3E 0C 10 FF
        jne     L_0C76                          ; 75 1A
        cmp     word ptr [0x100a], -1           ; 83 3E 0A 10 FF
        jne     L_0C76                          ; 75 13
        mov     word ptr [0x110a], 1            ; C7 06 0A 11 01 00
        jmp     L_0C76                          ; EB 0B
;   [conditional branch target (if/else)] L_0C6B
L_0C6B:
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        add     word ptr [bp - 8], 1            ; 83 46 F8 01
        adc     word ptr [bp - 6], 0            ; 83 56 FA 00
;   [branch target] L_0C76
L_0C76:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01D0                          ; E8 4C F5
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 68 F3
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        cmp     word ptr [bp + 8], 1            ; 83 7E 08 01
        jne     L_0D14                          ; 75 70
        test    byte ptr [si + 2], 4            ; F6 44 02 04
        je      L_0CB0                          ; 74 06
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0CBC                          ; 74 0C
;   [conditional branch target (if/else)] L_0CB0
L_0CB0:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
;   [conditional branch target (if/else)] L_0CBC
L_0CBC:
        cmp     word ptr [0x100c], -1           ; 83 3E 0C 10 FF
        jne     L_0D14                          ; 75 51
        cmp     word ptr [0x100a], -1           ; 83 3E 0A 10 FF
        jne     L_0D14                          ; 75 4A
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        cdq                                     ; 99
        add     ax, word ptr [si + 6]           ; 03 44 06
        adc     dx, word ptr [si + 8]           ; 13 54 08
        cmp     dx, word ptr [bp - 6]           ; 3B 56 FA
        jne     L_0D02                          ; 75 29
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jne     L_0D02                          ; 75 24
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        jg      L_0D02                          ; 7F 18
        jl      L_0CF1                          ; 7C 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        ja      L_0D02                          ; 77 11
;   [conditional branch target (if/else)] L_0CF1
L_0CF1:
        test    byte ptr [si + 2], 4            ; F6 44 02 04
        jne     L_0D02                          ; 75 0B
        test    byte ptr [si + 2], 2            ; F6 44 02 02
        jne     L_0D02                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D04                          ; EB 02
;   [conditional branch target (if/else)] L_0D02
L_0D02:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0D04
L_0D04:
        mov     word ptr [0x13b4], ax           ; A3 B4 13
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        mov     word ptr [0x100a], ax           ; A3 0A 10
        mov     word ptr [0x100c], dx           ; 89 16 0C 10
;   [conditional branch target (if/else)] L_0D14
L_0D14:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0D3B                          ; 74 21
        test    byte ptr [0x1bea], 1            ; F6 06 EA 1B 01
        je      L_0D29                          ; 74 08
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        jmp     L_0D2F                          ; EB 06
;   [conditional branch target (if/else)] L_0D29
L_0D29:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
;   [unconditional branch target] L_0D2F
L_0D2F:
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06B4                          ; E8 7B F9
        jmp     L_0D4C                          ; EB 11
;   [conditional branch target (if/else)] L_0D3B
L_0D3B:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D5                          ; E8 89 F5
;   [unconditional branch target] L_0D4C
L_0D4C:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        test    byte ptr [0x1bea], 1            ; F6 06 EA 1B 01
        je      L_0D93                          ; 74 29
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01D0                          ; E8 4E F4
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_34                   ; 9A 9B 08 00 00 [FIXUP]
        jmp     L_0D9A                          ; EB 07
;   [conditional branch target (if/else)] L_0D93
L_0D93:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
;   [unconditional branch target] L_0D9A
L_0D9A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

WRITE_TEXT ENDS

        END
