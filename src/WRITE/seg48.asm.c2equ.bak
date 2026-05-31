; ======================================================================
; WRITE / seg48.asm   (segment 48 of WRITE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        14
; Total instructions:                 1585
; 
; Classification (pass8):
;   C-origin (high+medium):             14
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     15 (11 unique)
;   Top:
;        2  CHANGEMENU
;        2  CHECKMENUITEM
;        2  GETACTIVEWINDOW
;        2  ENABLEMENUITEM
;        1  CLOSECLIPBOARD
;        1  ENUMCLIPBOARDFORMATS
;        1  OPENCLIPBOARD
;        1  LOADSTRING
; ======================================================================
; AUTO-GENERATED from original WRITE segment 48
; segment_size=4196 bytes, flags=0xf130
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
;   Mixed routine using: CHANGEMENU, CHECKMENUITEM, CLOSECLIPBOARD (+3 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=404 instr  segment=seg48.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   CHANGEMENU
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   CLOSECLIPBOARD
;   ENUMCLIPBOARDFORMATS
;   GETACTIVEWINDOW
;   OPENCLIPBOARD
;
; Near calls (internal): L_05DE, L_066B, L_0B6E
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
        sub     sp, 0x64                        ; 83 EC 64
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        mov     word ptr [bp - 0x26], 0         ; C7 46 DA 00 00
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        jne     L_002E                          ; 75 0E
        cmp     word ptr [0x3c], 0              ; 83 3E 3C 00 00
        jne     L_002E                          ; 75 07
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        je      L_0045                          ; 74 17
;   [conditional branch target (if/else)] L_002E
L_002E:
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far _entry_81                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], 4         ; C7 46 DC 04 00
        jmp     L_0069                          ; EB 24
;   [conditional branch target (if/else)] L_0045
L_0045:
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        jne     L_0053                          ; 75 07
        test    byte ptr [0x107f], 2            ; F6 06 7F 10 02
        je      L_0058                          ; 74 05
;   [conditional branch target (if/else)] L_0053
L_0053:
        mov     ax, 0x772                       ; B8 72 07
        jmp     L_005B                          ; EB 03
;   [conditional branch target (if/else)] L_0058
L_0058:
        mov     ax, 0x766                       ; B8 66 07
;   [unconditional branch target] L_005B
L_005B:
        push    ax                              ; 50
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0069
L_0069:
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        shl     si, 1                           ; D1 E6
        lea     ax, [bp + si - 0x24]            ; 8D 42 DC
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        je      L_00A2                          ; 74 27
        cmp     ax, 1                           ; 3D 01 00
        je      L_00FC                          ; 74 7C
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0088                          ; 75 03
        jmp     L_019A                          ; E9 12 01
;   [conditional branch target (if/else)] L_0088
L_0088:
        cmp     ax, 3                           ; 3D 03 00
        jne     L_0090                          ; 75 03
        jmp     L_0210                          ; E9 80 01
;   [conditional branch target (if/else)] L_0090
L_0090:
        cmp     ax, 4                           ; 3D 04 00
        jne     L_0098                          ; 75 03
        jmp     L_04B2                          ; E9 1A 04
;   [conditional branch target (if/else)] L_0098
L_0098:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_00A0                          ; 75 03
        jmp     L_05B3                          ; E9 13 05
;   [conditional branch target (if/else)] L_00A0
L_00A0:
        jmp     L_00D3                          ; EB 31
;   [conditional branch target (if/else)] L_00A2
L_00A2:
        mov     word ptr [bp - 0x18], 0x1000    ; C7 46 E8 00 10
        mov     word ptr [bp - 0x26], 0x1006    ; C7 46 DA 06 10
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        je      L_00CD                          ; 74 1A
        cmp     word ptr [0xf94], 0             ; 83 3E 94 0F 00
        je      L_00CD                          ; 74 13
        mov     bx, word ptr [0xf94]            ; 8B 1E 94 0F
        push    word ptr [bx]                   ; FF 37
        mov     ax, 0x1114                      ; B8 14 11
        push    ax                              ; 50
        call    far _entry_71                   ; 9A 9E 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00D3                          ; 75 06
;   [conditional branch target (if/else)] L_00CD
L_00CD:
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        and     byte ptr [bx], 0xf7             ; 80 27 F7
;   [loop start (also forward branch)] L_00D3
L_00D3:
        ; constant WM_CREATE
        mov     si, 1                           ; BE 01 00
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [loop start] L_00DC
L_00DC:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_00E7                          ; 7C 03
        jmp     L_05D1                          ; E9 EA 04
;   [conditional branch target (if/else)] L_00E7
L_00E7:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        test    word ptr [bx], si               ; 85 37
        jne     L_00F7                          ; 75 03
        jmp     L_05C0                          ; E9 C9 04
;   [conditional branch target (if/else)] L_00F7
L_00F7:
        sub     ax, ax                          ; 2B C0
        jmp     L_05C3                          ; E9 C7 04
;   [conditional branch target (if/else)] L_00FC
L_00FC:
        mov     word ptr [bp - 0x18], 0x1010    ; C7 46 E8 10 10
        mov     word ptr [bp - 0x26], 0x1016    ; C7 46 DA 16 10
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_011F                          ; 75 0C
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jne     L_011F                          ; 75 06
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        and     byte ptr [bx], 0xf9             ; 80 27 F9
;   [conditional branch target (if/else)] L_011F
L_011F:
        cmp     word ptr [0x13de], 0            ; 83 3E DE 13 00
        jne     L_012C                          ; 75 06
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        and     byte ptr [bx], 0xcf             ; 80 27 CF
;   [conditional branch target (if/else)] L_012C
L_012C:
        cmp     word ptr [0x7b0], 0             ; 83 3E B0 07 00
        je      L_0148                          ; 74 15
        push    word ptr [0xc20]                ; FF 36 20 0C
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        jne     L_0180                          ; 75 40
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        and     byte ptr [bx], 0xf7             ; 80 27 F7
        jmp     L_0180                          ; EB 38
;   [conditional branch target (if/else)] L_0148
L_0148:
        push    word ptr [0x10f4]               ; FF 36 F4 10
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0180                          ; 74 2B
        mov     word ptr [bp - 0x2a], 0         ; C7 46 D6 00 00
        jmp     L_0166                          ; EB 0A
;   [loop start] L_015C
L_015C:
        cmp     ax, 1                           ; 3D 01 00
        jl      L_0166                          ; 7C 05
        cmp     ax, 3                           ; 3D 03 00
        jle     L_017B                          ; 7E 15
;   [branch target] L_0166
L_0166:
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far USER.ENUMCLIPBOARDFORMATS   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        or      ax, ax                          ; 0B C0
        jne     L_015C                          ; 75 E7
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        and     byte ptr [bx], 0xf7             ; 80 27 F7
;   [conditional branch target (if/else)] L_017B
L_017B:
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_0180
L_0180:
        cmp     word ptr [0xcac], 0             ; 83 3E AC 0C 00
        je      L_018E                          ; 74 07
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_0194                          ; 74 06
;   [conditional branch target (if/else)] L_018E
L_018E:
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        and     byte ptr [bx], 0xfe             ; 80 27 FE
;   [conditional branch target (if/else)] L_0194
L_0194:
        call    L_05DE                          ; E8 47 04
        jmp     L_00D3                          ; E9 39 FF
;   [unconditional branch target] L_019A
L_019A:
        mov     word ptr [bp - 0x18], 0x1020    ; C7 46 E8 20 10
        mov     word ptr [bp - 0x26], 0x1024    ; C7 46 DA 24 10
        call    far USER.GETACTIVEWINDOW        ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [0x780]            ; 3B 06 80 07
        jne     L_01BF                          ; 75 10
        mov     bx, word ptr [0x1bee]           ; 8B 1E EE 1B
        push    word ptr [bx]                   ; FF 37
        call    far _entry_61                   ; 9A D4 01 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        je      L_0207                          ; 74 48
;   [conditional branch target (if/else)] L_01BF
L_01BF:
        cmp     word ptr [0x7a2], 0             ; 83 3E A2 07 00
        jne     L_01DD                          ; 75 17
        cmp     word ptr [0x7a4], 0             ; 83 3E A4 07 00
        jne     L_01DD                          ; 75 10
        mov     bx, word ptr [0x1bee]           ; 8B 1E EE 1B
        push    word ptr [bx]                   ; FF 37
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        je      L_0207                          ; 74 2A
;   [conditional branch target (if/else)] L_01DD
L_01DD:
        cmp     word ptr [0x7a2], 0             ; 83 3E A2 07 00
        je      L_01EF                          ; 74 0B
        push    word ptr [0x7a2]                ; FF 36 A2 07
        call    L_0B6E                          ; E8 83 09
        or      ax, ax                          ; 0B C0
        jne     L_0207                          ; 75 18
;   [conditional branch target (if/else)] L_01EF
L_01EF:
        cmp     word ptr [0x7a4], 0             ; 83 3E A4 07 00
        jne     L_01F9                          ; 75 03
        jmp     L_00D3                          ; E9 DA FE
;   [conditional branch target (if/else)] L_01F9
L_01F9:
        push    word ptr [0x7a4]                ; FF 36 A4 07
        call    L_0B6E                          ; E8 6E 09
        or      ax, ax                          ; 0B C0
        jne     L_0207                          ; 75 03
        jmp     L_00D3                          ; E9 CC FE
;   [conditional branch target (if/else)] L_0207
L_0207:
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        and     byte ptr [bx], 0xfd             ; 80 27 FD
        jmp     L_00D3                          ; E9 C3 FE
;   [unconditional branch target] L_0210
L_0210:
        mov     word ptr [bp - 0x18], 0x1040    ; C7 46 E8 40 10
        mov     word ptr [bp - 0x26], 0x104c    ; C7 46 DA 4C 10
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_066B                          ; E8 48 04
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1041                      ; B8 41 10
        push    ax                              ; 50
        cmp     byte ptr [bp - 0x14], 0         ; 80 7E EC 00
        jne     L_023B                          ; 75 0B
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        je      L_023B                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_023D                          ; EB 02
;   [conditional branch target (if/else)] L_023B
L_023B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_023D
L_023D:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 5F 02 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1042                      ; B8 42 10
        push    ax                              ; 50
        cmp     byte ptr [bp - 0x11], 0         ; 80 7E EF 00
        jne     L_025B                          ; 75 0B
        cmp     word ptr [bp - 0x13], 0         ; 83 7E ED 00
        je      L_025B                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_025D                          ; EB 02
;   [conditional branch target (if/else)] L_025B
L_025B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_025D
L_025D:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 7F 02 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1043                      ; B8 43 10
        push    ax                              ; 50
        cmp     byte ptr [bp - 0xe], 0          ; 80 7E F2 00
        jne     L_027B                          ; 75 0B
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_027B                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_027D                          ; EB 02
;   [conditional branch target (if/else)] L_027B
L_027B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_027D
L_027D:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 9F 02 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1044                      ; B8 44 10
        push    ax                              ; 50
        cmp     byte ptr [bp - 0xb], 0          ; 80 7E F5 00
        jne     L_029B                          ; 75 0B
        cmp     word ptr [bp - 0xd], 0          ; 83 7E F3 00
        jle     L_029B                          ; 7E 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_029D                          ; EB 02
;   [conditional branch target (if/else)] L_029B
L_029B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_029D
L_029D:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A BF 02 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1045                      ; B8 45 10
        push    ax                              ; 50
        cmp     byte ptr [bp - 0xb], 0          ; 80 7E F5 00
        jne     L_02BB                          ; 75 0B
        cmp     word ptr [bp - 0xd], 0          ; 83 7E F3 00
        jge     L_02BB                          ; 7D 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_02BD                          ; EB 02
;   [conditional branch target (if/else)] L_02BB
L_02BB:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_02BD
L_02BD:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bx + si + 0x12]   ; 8B 58 12
        mov     bx, word ptr [bx]               ; 8B 1F
        test    word ptr [bx], 0x8000           ; F7 07 00 80
        jne     L_02E5                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_02E7                          ; EB 02
;   [conditional branch target (if/else)] L_02E5
L_02E5:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_02E7
L_02E7:
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        or      ax, ax                          ; 0B C0
        je      L_033E                          ; 74 50
        mov     word ptr [0xfa2], 0             ; C7 06 A2 0F 00 00
        push    word ptr [0x12b4]               ; FF 36 B4 12
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_113                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_033E                          ; 74 35
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
;   [loop start] L_030E
L_030E:
        cmp     word ptr [bp - 0x30], 3         ; 83 7E D0 03
        jge     L_0327                          ; 7D 13
        mov     ax, 0x22                        ; B8 22 00
        imul    word ptr [bp - 0x30]            ; F7 6E D0
        add     ax, 0x11aa                      ; 05 AA 11
        push    ax                              ; 50
        call    far _entry_112                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0370                          ; 75 49
;   [conditional branch target (if/else)] L_0327
L_0327:
        call    far _entry_106                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, word ptr [bp - 0x3a]        ; 8B 76 C6
        mov     bx, word ptr [bx + si + 0x12]   ; 8B 58 12
        mov     bx, word ptr [bx]               ; 8B 1F
        or      byte ptr [bx + 1], 0x80         ; 80 4F 01 80
;   [conditional branch target (if/else)] L_033E
L_033E:
        mov     word ptr [0xf96], 0xffff        ; C7 06 96 0F FF FF
        mov     word ptr [bp - 0x32], 0xffff    ; C7 46 CE FF FF
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
;   [loop start] L_0354
L_0354:
        cmp     word ptr [bp - 0x30], 3         ; 83 7E D0 03
        jge     L_03B1                          ; 7D 57
        mov     ax, word ptr [0xfa2]            ; A1 A2 0F
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jl      L_0379                          ; 7C 17
        mov     ax, 0x40                        ; B8 40 00
        mov     cl, byte ptr [bp - 0x30]        ; 8A 4E D0
        shl     ax, cl                          ; D3 E0
        xor     word ptr [0xf96], ax            ; 31 06 96 0F
        jmp     L_03AC                          ; EB 3C
;   [conditional branch target (if/else)] L_0370
L_0370:
        inc     word ptr [0xfa2]                ; FF 06 A2 0F
        inc     word ptr [bp - 0x30]            ; FF 46 D0
        jmp     L_030E                          ; EB 95
;   [conditional branch target (if/else)] L_0379
L_0379:
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        jge     L_03AC                          ; 7D 2D
        cmp     byte ptr [bp - 8], 0            ; 80 7E F8 00
        jne     L_03AC                          ; 75 27
        mov     ax, 0x22                        ; B8 22 00
        imul    word ptr [bp - 0x30]            ; F7 6E D0
        add     ax, 0x11aa                      ; 05 AA 11
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        mov     ax, word ptr [bx]               ; 8B 07
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_71                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03AC                          ; 75 06
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
;   [branch target] L_03AC
L_03AC:
        inc     word ptr [bp - 0x30]            ; FF 46 D0
        jmp     L_0354                          ; EB A3
;   [conditional branch target (if/else)] L_03B1
L_03B1:
        cmp     byte ptr [bp - 8], 0            ; 80 7E F8 00
        jne     L_0412                          ; 75 5B
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        jge     L_0412                          ; 7D 55
        cmp     word ptr [0xfa2], 3             ; 83 3E A2 0F 03
        jge     L_03C8                          ; 7D 04
        inc     word ptr [0xfa2]                ; FF 06 A2 0F
;   [conditional branch target (if/else)] L_03C8
L_03C8:
        mov     ax, word ptr [0xfa2]            ; A1 A2 0F
        dec     ax                              ; 48
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        mov     si, word ptr [bx]               ; 8B 37
        push    si                              ; 56
        mov     ax, 0x22                        ; B8 22 00
        imul    word ptr [bp - 0x32]            ; F7 6E CE
        add     ax, 0x11aa                      ; 05 AA 11
        push    ax                              ; 50
        lea     ax, [si + 1]                    ; 8D 44 01
        push    ax                              ; 50
        call    far _entry_61                   ; 9A B6 01 00 00 [FIXUP]
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x40                        ; B8 40 00
        mov     cl, byte ptr [bp - 0x32]        ; 8A 4E CE
        shl     ax, cl                          ; D3 E0
        or      word ptr [0xf96], ax            ; 09 06 96 0F
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     di, word ptr [bp - 0x3a]        ; 8B 7E C6
        mov     bx, word ptr [bx + di + 0x12]   ; 8B 59 12
        mov     bx, word ptr [bx]               ; 8B 1F
        and     byte ptr [bx + 1], 0x7f         ; 80 67 01 7F
        mov     word ptr [bp - 0x2e], 1         ; C7 46 D2 01 00
;   [conditional branch target (if/else)] L_0412
L_0412:
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        je      L_0478                          ; 74 60
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
;   [loop start] L_041D
L_041D:
        cmp     word ptr [bp - 0x30], 3         ; 83 7E D0 03
        jge     L_0478                          ; 7D 55
        mov     ax, word ptr [0xfa2]            ; A1 A2 0F
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jge     L_0450                          ; 7D 25
        mov     al, byte ptr [bp - 0x30]        ; 8A 46 D0
        add     al, 0x31                        ; 04 31
        mov     byte ptr [bp - 0x60], al        ; 88 46 A0
        mov     byte ptr [bp - 0x5f], 0x2e      ; C6 46 A1 2E
        mov     byte ptr [bp - 0x5e], 0x20      ; C6 46 A2 20
        mov     ax, 0x22                        ; B8 22 00
        imul    word ptr [bp - 0x30]            ; F7 6E D0
        add     ax, 0x11ab                      ; 05 AB 11
        push    ax                              ; 50
        lea     ax, [bp - 0x5d]                 ; 8D 46 A3
        push    ax                              ; 50
        call    far _entry_180                  ; 9A 43 06 00 00 [FIXUP]
        jmp     L_0454                          ; EB 04
;   [conditional branch target (if/else)] L_0450
L_0450:
        mov     byte ptr [bp - 0x60], 0         ; C6 46 A0 00
;   [unconditional branch target] L_0454
L_0454:
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        add     ax, 0x1046                      ; 05 46 10
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        push    word ptr [0x794]                ; FF 36 94 07
        push    ax                              ; 50
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A 5D 06 00 00 [FIXUP]
        inc     word ptr [bp - 0x30]            ; FF 46 D0
        jmp     L_041D                          ; EB A5
;   [conditional branch target (if/else)] L_0478
L_0478:
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        mov     ax, word ptr [0xf96]            ; A1 96 0F
        and     word ptr [bx], ax               ; 21 07
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
;   [loop start] L_0485
L_0485:
        cmp     word ptr [bp - 0x30], 3         ; 83 7E D0 03
        jl      L_048E                          ; 7C 03
        jmp     L_00D3                          ; E9 45 FC
; Description (heuristic):
;   Menu manipulation routine (2 menu APIs).

;-------------------------------------------------------------------------
; sub_048E   offset=0x048E  size=127 instr  segment=seg48.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;
; Near calls (internal): L_07CD
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_048E
L_048E:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        add     ax, 0x1046                      ; 05 46 10
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jne     L_04A5                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_04A7                          ; EB 02
;   [conditional branch target (if/else)] L_04A5
L_04A5:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_04A7
L_04A7:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A E1 04 00 00 [FIXUP]
        inc     word ptr [bp - 0x30]            ; FF 46 D0
        jmp     L_0485                          ; EB D3
;   [unconditional branch target] L_04B2
L_04B2:
        mov     word ptr [bp - 0x18], 0x1080    ; C7 46 E8 80 10
        mov     word ptr [bp - 0x26], 0x1089    ; C7 46 DA 89 10
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_07CD                          ; E8 08 03
        cmp     byte ptr [bp - 0x14], 0         ; 80 7E EC 00
        jne     L_04D0                          ; 75 05
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        jmp     L_04D3                          ; EB 03
;   [conditional branch target (if/else)] L_04D0
L_04D0:
        mov     ax, 0xffff                      ; B8 FF FF
;   [unconditional branch target] L_04D3
L_04D3:
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hMenu
        mov     ax, 0x1080                      ; B8 80 10
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A FB 04 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1081                      ; B8 81 10
        push    ax                              ; 50
        cmp     word ptr [bp - 0x62], 0         ; 83 7E 9E 00
        jne     L_04F7                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_04F9                          ; EB 02
;   [conditional branch target (if/else)] L_04F7
L_04F7:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_04F9
L_04F9:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 15 05 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1082                      ; B8 82 10
        push    ax                              ; 50
        cmp     word ptr [bp - 0x62], 1         ; 83 7E 9E 01
        jne     L_0511                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_0513                          ; EB 02
;   [conditional branch target (if/else)] L_0511
L_0511:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0513
L_0513:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 2F 05 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1083                      ; B8 83 10
        push    ax                              ; 50
        cmp     word ptr [bp - 0x62], 2         ; 83 7E 9E 02
        jne     L_052B                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_052D                          ; EB 02
;   [conditional branch target (if/else)] L_052B
L_052B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_052D
L_052D:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 49 05 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1084                      ; B8 84 10
        push    ax                              ; 50
        cmp     word ptr [bp - 0x62], 3         ; 83 7E 9E 03
        jne     L_0545                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_0547                          ; EB 02
;   [conditional branch target (if/else)] L_0545
L_0545:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0547
L_0547:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 6A 05 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1085                      ; B8 85 10
        push    ax                              ; 50
        cmp     byte ptr [bp - 0x11], 0         ; 80 7E EF 00
        jne     L_0566                          ; 75 0C
        cmp     word ptr [bp - 0x13], 0xf0      ; 81 7E ED F0 00
        jne     L_0566                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_0568                          ; EB 02
;   [conditional branch target (if/else)] L_0566
L_0566:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0568
L_0568:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 8B 05 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1086                      ; B8 86 10
        push    ax                              ; 50
        cmp     byte ptr [bp - 0x11], 0         ; 80 7E EF 00
        jne     L_0587                          ; 75 0C
        cmp     word ptr [bp - 0x13], 0x168     ; 81 7E ED 68 01
        jne     L_0587                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_0589                          ; EB 02
;   [conditional branch target (if/else)] L_0587
L_0587:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0589
L_0589:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A AC 05 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1087                      ; B8 87 10
        push    ax                              ; 50
        cmp     byte ptr [bp - 0x11], 0         ; 80 7E EF 00
        jne     L_05A8                          ; 75 0C
        cmp     word ptr [bp - 0x13], 0x1e0     ; 81 7E ED E0 01
        jne     L_05A8                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_05AA                          ; EB 02
;   [conditional branch target (if/else)] L_05A8
L_05A8:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_05AA
L_05AA:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 3F 02 00 00 [FIXUP]
        jmp     L_00D3                          ; E9 20 FB
;   [unconditional branch target] L_05B3
L_05B3:
        mov     word ptr [bp - 0x18], 0x1100    ; C7 46 E8 00 11
        mov     word ptr [bp - 0x26], 0x1105    ; C7 46 DA 05 11
        jmp     L_00D3                          ; E9 13 FB
;   [unconditional branch target] L_05C0
L_05C0:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_05C3
L_05C3:
        push    ax                              ; 50
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        shl     si, 1                           ; D1 E6
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_00DC                          ; E9 0B FB
;   [unconditional branch target] L_05D1
L_05D1:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Mixed routine using: CHANGEMENU, LOADSTRING.

;-------------------------------------------------------------------------
; sub_05DE   offset=0x05DE  size=50 instr  segment=seg48.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   CHANGEMENU
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_05DE
L_05DE:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        cmp     word ptr [0xcac], 0             ; 83 3E AC 0C 00
        jne     L_05F1                          ; 75 06
        mov     word ptr [0x65a], 1             ; C7 06 5A 06 01 00
;   [conditional branch target (if/else)] L_05F1
L_05F1:
        cmp     word ptr [0x65a], 0             ; 83 3E 5A 06 00
        jge     L_05FE                          ; 7D 06
        mov     ax, word ptr [0x77e]            ; A1 7E 07
        mov     word ptr [0x65a], ax            ; A3 5A 06
;   [conditional branch target (if/else)] L_05FE
L_05FE:
        mov     ax, word ptr [0x77e]            ; A1 7E 07
        cmp     word ptr [0x65a], ax            ; 39 06 5A 06
        je      L_0667                          ; 74 60
        mov     word ptr [bp - 2], 0x96c        ; C7 46 FE 6C 09
        push    word ptr [0x782]                ; FF 36 82 07
        ;   ^ arg hInstance
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x96c                       ; B8 6C 09
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        add     word ptr [bp - 2], ax           ; 01 46 FE
        cmp     word ptr [0x65a], 1             ; 83 3E 5A 06 01
        je      L_063B                          ; 74 0F
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [0x65a]                ; FF 36 5A 06
        call    far _entry_52                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [conditional branch target (if/else)] L_063B
L_063B:
        mov     ax, 0x1fe                       ; B8 FE 01
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far _entry_180                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x794]                ; FF 36 94 07
        mov     ax, 0x1010                      ; B8 10 10
        push    ax                              ; 50
        mov     ax, 0x96c                       ; B8 6C 09
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1010                      ; B8 10 10
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x65a]            ; A1 5A 06
        mov     word ptr [0x77e], ax            ; A3 7E 07
;   [error/early exit] L_0667
L_0667:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (136 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_066B   offset=0x066B  size=136 instr  segment=seg48.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0898, L_0924, L_0979, L_0AD3
;-------------------------------------------------------------------------
;   [sub-routine] L_066B
L_066B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x18                        ; 83 EC 18
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [0x1be8], dx           ; 39 16 E8 1B
        jl      L_06AA                          ; 7C 1B
        jg      L_0697                          ; 7F 06
        cmp     word ptr [0x1be6], ax           ; 39 06 E6 1B
        jbe     L_06AA                          ; 76 13
;   [loop start (also forward branch)] L_0697
L_0697:
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A B5 06 00 00 [FIXUP]
        jmp     L_07C2                          ; E9 18 01
;   [conditional branch target (if/else)] L_06AA
L_06AA:
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_06ED                          ; 75 16
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jne     L_06ED                          ; 75 10
        mov     ax, 0xa5e                       ; B8 5E 0A
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0898                          ; E8 B1 01
        mov     ax, 0xa5e                       ; B8 5E 0A
        jmp     L_07BB                          ; E9 CE 00
;   [conditional branch target (if/else)] L_06ED
L_06ED:
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0AD3                          ; E8 D1 03
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A 6B 07 00 00 [FIXUP]
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 65 00 00 00 [FIXUP]
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0898                          ; E8 5D 01
;   [loop start] L_073B
L_073B:
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        cmp     dx, word ptr [bp - 0xa]         ; 3B 56 F6
        jg      L_07AF                          ; 7F 63
        jl      L_0753                          ; 7C 05
        cmp     ax, word ptr [bp - 0xc]         ; 3B 46 F4
        jae     L_07AF                          ; 73 5C
;   [conditional branch target (if/else)] L_0753
L_0753:
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        cmp     word ptr [bp - 0x18], 0x32      ; 83 7E E8 32
        jg      L_07AF                          ; 7F 53
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x1016]           ; A1 16 10
        ; constant WM_GETTEXTLENGTH
        mov     cl, 0xe                         ; B1 0E
        shr     ax, cl                          ; D3 E8
        and     ax, 1                           ; 25 01 00
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        and     ch, 0xbf                        ; 80 E5 BF
        or      ax, cx                          ; 0B C1
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ax                              ; 50
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_46                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_073B                          ; 74 A0
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1014                      ; B8 14 10
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        call    L_0979                          ; E8 D0 01
        cmp     word ptr [bp - 4], 6            ; 83 7E FC 06
        jne     L_073B                          ; 75 8C
;   [conditional branch target (if/else)] L_07AF
L_07AF:
        cmp     word ptr [bp - 0x18], 0x32      ; 83 7E E8 32
        jle     L_07B8                          ; 7E 03
        jmp     L_0697                          ; E9 DF FE
;   [conditional branch target (if/else)] L_07B8
L_07B8:
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
;   [unconditional branch target] L_07BB
L_07BB:
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0924                          ; E8 62 01
;   [unconditional branch target] L_07C2
L_07C2:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (77 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_07CD   offset=0x07CD  size=77 instr  segment=seg48.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_08EE, L_0A45
;-------------------------------------------------------------------------
;   [sub-routine] L_07CD
L_07CD:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x6c                        ; 83 EC 6C
        mov     word ptr [bp - 0x6c], 0         ; C7 46 94 00 00
        mov     word ptr [bp - 0x6a], 0         ; C7 46 96 00 00
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_32                   ; 9A 4A 08 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A 89 08 00 00 [FIXUP]
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        lea     ax, [bp - 0x68]                 ; 8D 46 98
        push    ax                              ; 50
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 2D 07 00 00 [FIXUP]
        lea     ax, [bp - 0x68]                 ; 8D 46 98
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_08EE                          ; E8 CF 00
;   [loop start] L_081F
L_081F:
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [0x1be8], dx           ; 39 16 E8 1B
        jl      L_0877                          ; 7C 4B
        jg      L_0834                          ; 7F 06
        cmp     word ptr [0x1be6], ax           ; 39 06 E6 1B
        jbe     L_0877                          ; 76 43
;   [conditional branch target (if/else)] L_0834
L_0834:
        inc     word ptr [bp - 0x6a]            ; FF 46 96
        cmp     word ptr [bp - 0x6a], 0x32      ; 83 7E 96 32
        jg      L_0877                          ; 7F 3A
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0xed4]                ; FF 36 D4 0E
        push    word ptr [0xed2]                ; FF 36 D2 0E
        call    far _entry_32                   ; 9A C6 06 00 00 [FIXUP]
        lea     ax, [bp - 0x68]                 ; 8D 46 98
        push    ax                              ; 50
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        mov     ax, 0x16                        ; B8 16 00
        push    ax                              ; 50
        call    far _entry_46                   ; 9A 93 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_081F                          ; 74 BC
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        lea     ax, [bp - 0x6c]                 ; 8D 46 94
        push    ax                              ; 50
        call    L_0A45                          ; E8 D4 01
        cmp     word ptr [bp - 0x6c], 5         ; 83 7E 94 05
        jne     L_081F                          ; 75 A8
;   [conditional branch target (if/else)] L_0877
L_0877:
        cmp     word ptr [bp - 0x6a], 0x32      ; 83 7E 96 32
        jle     L_088D                          ; 7E 10
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A A3 06 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_088D
L_088D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (39 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0898   offset=0x0898  size=39 instr  segment=seg48.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0898
L_0898:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     ax, word ptr [si]               ; 8B 04
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        and     ax, 1                           ; 25 01 00
        mov     word ptr [di], ax               ; 89 05
        mov     ax, word ptr [si]               ; 8B 04
        mov     cl, 9                           ; B1 09
        shr     ax, cl                          ; D3 E8
        and     ax, 1                           ; 25 01 00
        mov     word ptr [di + 3], ax           ; 89 45 03
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        and     ax, 1                           ; 25 01 00
        mov     word ptr [di + 6], ax           ; 89 45 06
        mov     ax, word ptr [si]               ; 8B 04
        mov     cl, 0xa                         ; B1 0A
        shr     ax, cl                          ; D3 E8
        and     ax, 0x3f                        ; 25 3F 00
        mov     word ptr [di + 0xc], ax         ; 89 45 0C
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        sub     ah, ah                          ; 2A E4
        mov     word ptr [di + 0xf], ax         ; 89 45 0F
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        cwde                                    ; 98
        mov     word ptr [di + 9], ax           ; 89 45 09
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (24 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_08EE   offset=0x08EE  size=24 instr  segment=seg48.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_08EE
L_08EE:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     ax, word ptr [si]               ; 8B 04
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        and     ax, 3                           ; 25 03 00
        mov     word ptr [di], ax               ; 89 05
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr [di + 3], ax           ; 89 45 03
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     word ptr [di + 6], ax           ; 89 45 06
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr [di + 9], ax           ; 89 45 09
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [di + 0xc], ax         ; 89 45 0C
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0924   offset=0x0924  size=36 instr  segment=seg48.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0924
L_0924:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        and     al, 0xf0                        ; 24 F0
        mov     cx, word ptr [0x12b4]           ; 8B 0E B4 12
        and     cx, 0xf                         ; 81 E1 0F 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     al, byte ptr [si + 4]           ; 8A 44 04
        and     al, 7                           ; 24 07
        mov     cl, 6                           ; B1 06
        shl     al, cl                          ; D2 E0
        mov     dx, word ptr [si]               ; 8B 14
        mov     cl, 0xa                         ; B1 0A
        shr     dx, cl                          ; D3 EA
        and     dl, 0x3f                        ; 80 E2 3F
        add     al, dl                          ; 02 C2
        sub     ah, ah                          ; 2A E4
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        and     cl, 0                           ; 80 E1 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        call    far _entry_302                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [di + 0xc], ax         ; 89 45 0C
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (80 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0979   offset=0x0979  size=80 instr  segment=seg48.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0979
L_0979:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        cmp     byte ptr [si + 2], 0            ; 80 7C 02 00
        jne     L_09A3                          ; 75 19
        mov     ax, word ptr [si]               ; 8B 04
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [di]               ; 8B 0D
        and     cx, 0x100                       ; 81 E1 00 01
        cmp     ax, cx                          ; 3B C1
        je      L_09A3                          ; 74 09
        mov     byte ptr [si + 2], 1            ; C6 44 02 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [conditional branch target (if/else)] L_09A3
L_09A3:
        cmp     byte ptr [si + 5], 0            ; 80 7C 05 00
        jne     L_09C3                          ; 75 1A
        mov     ax, word ptr [si + 3]           ; 8B 44 03
        mov     cl, 9                           ; B1 09
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [di]               ; 8B 0D
        and     cx, 0x200                       ; 81 E1 00 02
        cmp     ax, cx                          ; 3B C1
        je      L_09C3                          ; 74 09
        mov     byte ptr [si + 5], 1            ; C6 44 05 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [conditional branch target (if/else)] L_09C3
L_09C3:
        cmp     byte ptr [si + 8], 0            ; 80 7C 08 00
        jne     L_09E4                          ; 75 1B
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [di + 2]           ; 8B 4D 02
        and     cx, 0x100                       ; 81 E1 00 01
        cmp     ax, cx                          ; 3B C1
        je      L_09E4                          ; 74 09
        mov     byte ptr [si + 8], 1            ; C6 44 08 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [conditional branch target (if/else)] L_09E4
L_09E4:
        cmp     byte ptr [si + 0xb], 0          ; 80 7C 0B 00
        jne     L_0A04                          ; 75 1A
        mov     ax, word ptr [si + 9]           ; 8B 44 09
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [di + 4]           ; 8B 4D 04
        and     cl, 0                           ; 80 E1 00
        cmp     ax, cx                          ; 3B C1
        je      L_0A04                          ; 74 09
        mov     byte ptr [si + 0xb], 1          ; C6 44 0B 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [conditional branch target (if/else)] L_0A04
L_0A04:
        cmp     byte ptr [si + 0xe], 0          ; 80 7C 0E 00
        jne     L_0A24                          ; 75 1A
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        mov     cl, 0xa                         ; B1 0A
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [di]               ; 8B 0D
        and     cx, 0xfc00                      ; 81 E1 00 FC
        cmp     ax, cx                          ; 3B C1
        je      L_0A24                          ; 74 09
        mov     byte ptr [si + 0xe], 1          ; C6 44 0E 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [conditional branch target (if/else)] L_0A24
L_0A24:
        cmp     byte ptr [si + 0x11], 0         ; 80 7C 11 00
        jne     L_0A3D                          ; 75 13
        mov     al, byte ptr [di + 2]           ; 8A 45 02
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [si + 0xf]         ; 3B 44 0F
        je      L_0A3D                          ; 74 09
        mov     byte ptr [si + 0x11], 1         ; C6 44 11 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [error/early exit] L_0A3D
L_0A3D:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (55 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0A45   offset=0x0A45  size=55 instr  segment=seg48.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0A45
L_0A45:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        cmp     byte ptr [si + 2], 0            ; 80 7C 02 00
        jne     L_0A6F                          ; 75 19
        mov     ax, word ptr [si]               ; 8B 04
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [di]               ; 8B 0D
        and     cx, 0x300                       ; 81 E1 00 03
        cmp     ax, cx                          ; 3B C1
        je      L_0A6F                          ; 74 09
        mov     byte ptr [si + 2], 1            ; C6 44 02 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [conditional branch target (if/else)] L_0A6F
L_0A6F:
        cmp     byte ptr [si + 5], 0            ; 80 7C 05 00
        jne     L_0A86                          ; 75 11
        mov     ax, word ptr [di + 0xa]         ; 8B 45 0A
        cmp     word ptr [si + 3], ax           ; 39 44 03
        je      L_0A86                          ; 74 09
        mov     byte ptr [si + 5], 1            ; C6 44 05 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [conditional branch target (if/else)] L_0A86
L_0A86:
        cmp     byte ptr [si + 8], 0            ; 80 7C 08 00
        jne     L_0A9D                          ; 75 11
        mov     ax, word ptr [di + 6]           ; 8B 45 06
        cmp     word ptr [si + 6], ax           ; 39 44 06
        je      L_0A9D                          ; 74 09
        mov     byte ptr [si + 8], 1            ; C6 44 08 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [conditional branch target (if/else)] L_0A9D
L_0A9D:
        cmp     byte ptr [si + 0xb], 0          ; 80 7C 0B 00
        jne     L_0AB4                          ; 75 11
        mov     ax, word ptr [di + 8]           ; 8B 45 08
        cmp     word ptr [si + 9], ax           ; 39 44 09
        je      L_0AB4                          ; 74 09
        mov     byte ptr [si + 0xb], 1          ; C6 44 0B 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [conditional branch target (if/else)] L_0AB4
L_0AB4:
        cmp     byte ptr [si + 0xe], 0          ; 80 7C 0E 00
        jne     L_0ACB                          ; 75 11
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        cmp     word ptr [si + 0xc], ax         ; 39 44 0C
        je      L_0ACB                          ; 74 09
        mov     byte ptr [si + 0xe], 1          ; C6 44 0E 01
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
;   [error/early exit] L_0ACB
L_0ACB:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (61 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0AD3   offset=0x0AD3  size=61 instr  segment=seg48.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0AD3
L_0AD3:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x108                       ; 81 EC 08 01
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        lea     ax, [bp - 0x108]                ; 8D 86 F8 FE
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0x100                       ; 05 00 01
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, 0x100                       ; 2D 00 01
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far _entry_301                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0B41                          ; EB 13
;   [loop start] L_0B2E
L_0B2E:
        mov     si, word ptr [bp - 0x108]       ; 8B B6 F8 FE
        cmp     byte ptr [bp + si - 0x106], 0x20 ; 80 BA FA FE 20
        jne     L_0B4D                          ; 75 14
        sub     word ptr [bp + 6], 1            ; 83 6E 06 01
        sbb     word ptr [bp + 8], 0            ; 83 5E 08 00
;   [unconditional branch target] L_0B41
L_0B41:
        mov     ax, word ptr [bp - 0x108]       ; 8B 86 F8 FE
        dec     word ptr [bp - 0x108]           ; FF 8E F8 FE
        or      ax, ax                          ; 0B C0
        jg      L_0B2E                          ; 7F E1
;   [conditional branch target (if/else)] L_0B4D
L_0B4D:
        cmp     word ptr [bp - 0x108], 0        ; 83 BE F8 FE 00
        jge     L_0B5C                          ; 7D 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        jmp     L_0B62                          ; EB 06
;   [conditional branch target (if/else)] L_0B5C
L_0B5C:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
;   [unconditional branch target] L_0B62
L_0B62:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Mixed routine using: GETACTIVEWINDOW, GETDLGITEMTEXT, GETWINDOWWORD (+1 more).

;-------------------------------------------------------------------------
; sub_0B6E   offset=0x0B6E  size=68 instr  segment=seg48.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETACTIVEWINDOW
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   GETWINDOWWORD
;   HILITEMENUITEM
;
; Near calls (internal): L_0C10
;-------------------------------------------------------------------------
;   [sub-routine] L_0B6E
L_0B6E:
        ;   = cProc <258> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x102                       ; 81 EC 02 01
        call    far USER.GETACTIVEWINDOW        ; 9A A5 01 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        je      L_0B91                          ; 74 0F
        push    ax                              ; 50
        mov     ax, 0xfff8                      ; B8 F8 FF
        push    ax                              ; 50
        call    far USER.GETWINDOWWORD          ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jne     L_0BB0                          ; 75 1F
;   [conditional branch target (if/else)] L_0B91
L_0B91:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0BB0                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0BB2                          ; EB 02
;   [error/early exit] L_0BB0
L_0BB0:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_0BB2
L_0BB2:
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
        push    word ptr [0x794]                ; FF 36 94 07
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 32 F4
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C10                          ; E8 3A 00
        or      ax, ax                          ; 0B C0
        je      L_0C05                          ; 74 2B
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x794]                ; FF 36 94 07
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x480                       ; B8 80 04
        push    ax                              ; 50
        call    far USER.HILITEMENUITEM         ; 9A 01 0C 00 00 [FIXUP]
        lcall   [bp + 6]                        ; FF 5E 06
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x794]                ; FF 36 94 07
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        call    far USER.HILITEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0C05
L_0C05:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  WORD      (2 uses)
;   Locals:
;     [bp-0x4]   BOOL      (1 use)

; Description (heuristic):
;   Mixed routine using: ENABLEMENUITEM.

;-------------------------------------------------------------------------
; sub_0C10   offset=0x0C10  size=406 instr  segment=seg48.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;
; Near calls (internal): L_066B, L_102B
;-------------------------------------------------------------------------
;   [sub-routine] L_0C10
L_0C10:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [0x794]                ; FF 36 94 07
        ;   ^ arg hMenu
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 3C 0C 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0C44                          ; 74 11
        push    word ptr [0x794]                ; FF 36 94 07
        ;   ^ arg hMenu
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg wIDItem
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A C5 05 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        jmp     L_0C47                          ; EB 03
;   [conditional branch target (if/else)] L_0C44
L_0C44:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0C47
L_0C47:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x20                        ; 83 EC 20
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        test    word ptr [bp + 0xa], 0x1000     ; F7 46 0A 00 10
        jne     L_0C6E                          ; 75 03
        jmp     L_101B                          ; E9 AD 03
;   [conditional branch target (if/else)] L_0C6E
L_0C6E:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        and     ax, 0xff0                       ; 25 F0 0F
        or      ax, ax                          ; 0B C0
        je      L_0CA3                          ; 74 2B
        cmp     ax, 0x10                        ; 3D 10 00
        jne     L_0C80                          ; 75 03
        jmp     L_0D0E                          ; E9 8E 00
;   [conditional branch target (if/else)] L_0C80
L_0C80:
        cmp     ax, 0x20                        ; 3D 20 00
        jne     L_0C88                          ; 75 03
        jmp     L_0D62                          ; E9 DA 00
;   [conditional branch target (if/else)] L_0C88
L_0C88:
        cmp     ax, 0x40                        ; 3D 40 00
        jne     L_0C90                          ; 75 03
        jmp     L_0DC0                          ; E9 30 01
;   [conditional branch target (if/else)] L_0C90
L_0C90:
        cmp     ax, 0x80                        ; 3D 80 00
        jne     L_0C98                          ; 75 03
        jmp     L_0EDF                          ; E9 47 02
;   [conditional branch target (if/else)] L_0C98
L_0C98:
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_0CA0                          ; 75 03
        jmp     L_0FA3                          ; E9 03 03
;   [conditional branch target (if/else)] L_0CA0
L_0CA0:
        jmp     L_100C                          ; E9 69 03
;   [conditional branch target (if/else)] L_0CA3
L_0CA3:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x1000                      ; 3D 00 10
        je      L_0CC7                          ; 74 1C
        cmp     ax, 0x1001                      ; 3D 01 10
        je      L_0CCF                          ; 74 1F
        cmp     ax, 0x1002                      ; 3D 02 10
        je      L_0CD7                          ; 74 22
        cmp     ax, 0x1003                      ; 3D 03 10
        je      L_0CDF                          ; 74 25
        cmp     ax, 0x1004                      ; 3D 04 10
        je      L_0CE7                          ; 74 28
        cmp     ax, 0x1005                      ; 3D 05 10
        je      L_0D06                          ; 74 42
        jmp     L_100C                          ; E9 45 03
;   [conditional branch target (if/else)] L_0CC7
L_0CC7:
        call    far _entry_319                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 3D 03
;   [conditional branch target (if/else)] L_0CCF
L_0CCF:
        call    far _entry_318                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 35 03
;   [conditional branch target (if/else)] L_0CD7
L_0CD7:
        call    far _entry_317                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 2D 03
;   [conditional branch target (if/else)] L_0CDF
L_0CDF:
        call    far _entry_316                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 25 03
;   [conditional branch target (if/else)] L_0CE7
L_0CE7:
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        mov     word ptr [0x1234], ax           ; A3 34 12
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0xb                         ; B8 0B 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0xc12]                ; FF 36 12 0C
        push    word ptr [0xc10]                ; FF 36 10 0C
        jmp     L_1004                          ; E9 FE 02
;   [conditional branch target (if/else)] L_0D06
L_0D06:
        call    far _entry_315                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 FE 02
;   [unconditional branch target] L_0D0E
L_0D0E:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x1010                      ; 3D 10 10
        je      L_0D32                          ; 74 1C
        cmp     ax, 0x1011                      ; 3D 11 10
        je      L_0D3A                          ; 74 1F
        cmp     ax, 0x1012                      ; 3D 12 10
        je      L_0D42                          ; 74 22
        cmp     ax, 0x1013                      ; 3D 13 10
        je      L_0D4A                          ; 74 25
        cmp     ax, 0x1014                      ; 3D 14 10
        je      L_0D52                          ; 74 28
        cmp     ax, 0x1015                      ; 3D 15 10
        je      L_0D5A                          ; 74 2B
        jmp     L_100C                          ; E9 DA 02
;   [conditional branch target (if/else)] L_0D32
L_0D32:
        call    far _entry_103                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 D2 02
;   [conditional branch target (if/else)] L_0D3A
L_0D3A:
        call    far _entry_314                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 CA 02
;   [conditional branch target (if/else)] L_0D42
L_0D42:
        call    far _entry_313                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 C2 02
;   [conditional branch target (if/else)] L_0D4A
L_0D4A:
        call    far _entry_312                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 BA 02
;   [conditional branch target (if/else)] L_0D52
L_0D52:
        call    far _entry_311                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 B2 02
;   [conditional branch target (if/else)] L_0D5A
L_0D5A:
        call    far _entry_310                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 AA 02
;   [unconditional branch target] L_0D62
L_0D62:
        cmp     word ptr [bp + 0xa], 0x1023     ; 81 7E 0A 23 10
        je      L_0D75                          ; 74 0C
        cmp     word ptr [bp + 0xa], 0x1021     ; 81 7E 0A 21 10
        je      L_0D75                          ; 74 05
        call    far _entry_69                   ; 9A C8 0D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0D75
L_0D75:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x1020                      ; 3D 20 10
        je      L_0D8F                          ; 74 12
        cmp     ax, 0x1021                      ; 3D 21 10
        je      L_0D97                          ; 74 15
        cmp     ax, 0x1022                      ; 3D 22 10
        je      L_0D9F                          ; 74 18
        cmp     ax, 0x1023                      ; 3D 23 10
        je      L_0DA7                          ; 74 1B
        jmp     L_100C                          ; E9 7D 02
;   [conditional branch target (if/else)] L_0D8F
L_0D8F:
        call    far _entry_309                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 75 02
;   [conditional branch target (if/else)] L_0D97
L_0D97:
        call    far _entry_308                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 6D 02
;   [conditional branch target (if/else)] L_0D9F
L_0D9F:
        call    far _entry_307                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 65 02
;   [conditional branch target (if/else)] L_0DA7
L_0DA7:
        push    word ptr [0x782]                ; FF 36 82 07
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0xc16]                ; FF 36 16 0C
        push    word ptr [0xc14]                ; FF 36 14 0C
        jmp     L_1004                          ; E9 44 02
;   [unconditional branch target] L_0DC0
L_0DC0:
        cmp     word ptr [bp + 0xa], 0x104b     ; 81 7E 0A 4B 10
        je      L_0DCC                          ; 74 05
        call    far _entry_69                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0DCC
L_0DCC:
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_066B                          ; E8 96 F8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 0x1040                      ; 2D 40 10
        cmp     ax, 0xb                         ; 3D 0B 00
        jbe     L_0DE3                          ; 76 03
        jmp     L_100C                          ; E9 29 02
;   [conditional branch target (if/else)] L_0DE3
L_0DE3:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xec4]        ; 2E FF A7 C4 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1d                        ; B8 1D 00
        push    ax                              ; 50
;   [loop start] L_0DF2
L_0DF2:
        sub     ax, ax                          ; 2B C0
;   [loop start] L_0DF4
L_0DF4:
        push    ax                              ; 50
        call    far _entry_306                  ; 9A 98 0E 00 00 [FIXUP]
        jmp     L_100C                          ; E9 0F 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        cmp     byte ptr [bp - 0x1c], 0         ; 80 7E E4 00
        jne     L_0E36                          ; 75 2C
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        jmp     L_0E34                          ; EB 24
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        cmp     byte ptr [bp - 0x19], 0         ; 80 7E E7 00
        jne     L_0E36                          ; 75 19
        cmp     word ptr [bp - 0x1b], 0         ; 83 7E E5 00
        jmp     L_0E34                          ; EB 11
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x16                        ; B8 16 00
        push    ax                              ; 50
        cmp     byte ptr [bp - 0x16], 0         ; 80 7E EA 00
        jne     L_0E36                          ; 75 06
        cmp     word ptr [bp - 0x18], 0         ; 83 7E E8 00
;   [unconditional branch target] L_0E34
L_0E34:
        jne     L_0DF2                          ; 75 BC
;   [conditional branch target (if/else)] L_0E36
L_0E36:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0DF4                          ; EB B9
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        cmp     byte ptr [bp - 0x13], 0         ; 80 7E ED 00
        jne     L_0E4E                          ; 75 06
        cmp     word ptr [bp - 0x15], 0         ; 83 7E EB 00
        jg      L_0DF2                          ; 7F A4
;   [conditional branch target (if/else)] L_0E4E
L_0E4E:
        mov     ax, word ptr [0xa56]            ; A1 56 0A
        jmp     L_0DF4                          ; EB A1
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        cmp     byte ptr [bp - 0x13], 0         ; 80 7E ED 00
        jne     L_0E66                          ; 75 06
        cmp     word ptr [bp - 0x15], 0         ; 83 7E EB 00
        jl      L_0DF2                          ; 7C 8C
;   [conditional branch target (if/else)] L_0E66
L_0E66:
        mov     ax, word ptr [0xa56]            ; A1 56 0A
        neg     ax                              ; F7 D8
        jmp     L_0DF4                          ; EB 87
        sub     ax, ax                          ; 2B C0
        jmp     L_0E79                          ; EB 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0E79                          ; EB 03
        mov     ax, 2                           ; B8 02 00
;   [unconditional branch target] L_0E79
L_0E79:
        push    ax                              ; 50
        call    L_102B                          ; E8 AE 01
        jmp     L_100C                          ; E9 8C 01
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1c                        ; B8 1C 00
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0E96                          ; EB 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1c                        ; B8 1C 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0E96
L_0E96:
        push    ax                              ; 50
        call    far _entry_306                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7a], 1              ; C7 06 7A 00 01 00
        jmp     L_100C                          ; E9 67 01
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        mov     word ptr [0x1234], ax           ; A3 34 12
        push    word ptr [0x782]                ; FF 36 82 07
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0xc0e]                ; FF 36 0E 0C
        push    word ptr [0xc0c]                ; FF 36 0C 0C
        jmp     L_1004                          ; E9 40 01
        jmp     L_0ED3                          ; EB 0D
        std                                     ; FD
        or      ax, 0xe10                       ; 0D 10 0E
        and     cx, word ptr [0xe3b]            ; 23 0E 3B 0E
        push    bx                              ; 53
        push    cs                              ; 0E
        insw    word ptr es:[di], dx            ; 6D
        push    cs                              ; 0E
        jno     L_0EE2                          ; 71 0E
        jbe     L_0EE4                          ; 76 0E
        or      byte ptr [0xe8c], 0xa5          ; 80 0E 8C 0E A5
        push    cs                              ; 0E
        jmp     L_100C                          ; E9 2D 01
;   [unconditional branch target] L_0EDF
L_0EDF:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
;   [conditional branch target (if/else)] L_0EE2
L_0EE2:
        sub     ax, 0x1080                      ; 2D 80 10
        cmp     ax, 8                           ; 3D 08 00
        jbe     L_0EED                          ; 76 03
        jmp     L_100C                          ; E9 1F 01
;   [conditional branch target (if/else)] L_0EED
L_0EED:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xf8f]        ; 2E FF A7 8F 0F
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_304                  ; 9A 45 0F 00 00 [FIXUP]
        cmp     word ptr [0x13de], 0            ; 83 3E DE 13 00
        jne     L_0F0E                          ; 75 03
        jmp     L_100C                          ; E9 FE 00
;   [conditional branch target (if/else)] L_0F0E
L_0F0E:
        call    far _entry_305                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 F6 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        jmp     L_0F43                          ; EB 22
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0F43                          ; EB 16
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        jmp     L_0F43                          ; EB 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
;   [unconditional branch target] L_0F43
L_0F43:
        push    ax                              ; 50
        call    far _entry_304                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 C0 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 0xf0                        ; B8 F0 00
        jmp     L_0F6E                          ; EB 16
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 0x168                       ; B8 68 01
        jmp     L_0F6E                          ; EB 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 0x1e0                       ; B8 E0 01
;   [unconditional branch target] L_0F6E
L_0F6E:
        push    ax                              ; 50
        call    far _entry_303                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; E9 95 00
        push    word ptr [0x782]                ; FF 36 82 07
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x1108]               ; FF 36 08 11
        push    word ptr [0x1106]               ; FF 36 06 11
        jmp     L_1004                          ; EB 75
        cmc                                     ; F5
        push    cs                              ; 0E
        push    ss                              ; 16
        mov     edi, dr1                        ; 0F 21 0F
        sub     ax, 0x390f                      ; 2D 0F 39
        cmovl   cx, word ptr [bx]               ; 0F 4C 0F
        pop     ax                              ; 58
        pcmpgtb mm1, qword ptr [bx]             ; 0F 64 0F
        ja      L_0FB0                          ; 77 0F
        jmp     L_100C                          ; EB 69
;   [unconditional branch target] L_0FA3
L_0FA3:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x1100                      ; 3D 00 11
        je      L_0FC1                          ; 74 16
        cmp     ax, 0x1101                      ; 3D 01 11
        je      L_0FC8                          ; 74 18
;   [conditional branch target (if/else)] L_0FB0
L_0FB0:
        cmp     ax, 0x1102                      ; 3D 02 11
        je      L_0FCF                          ; 74 1A
        cmp     ax, 0x1103                      ; 3D 03 11
        je      L_0FD6                          ; 74 1C
        cmp     ax, 0x1104                      ; 3D 04 11
        je      L_0FEE                          ; 74 2F
        jmp     L_100C                          ; EB 4B
;   [conditional branch target (if/else)] L_0FC1
L_0FC1:
        call    far _entry_322                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; EB 44
;   [conditional branch target (if/else)] L_0FC8
L_0FC8:
        call    far _entry_321                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; EB 3D
;   [conditional branch target (if/else)] L_0FCF
L_0FCF:
        call    far _entry_320                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_100C                          ; EB 36
;   [conditional branch target (if/else)] L_0FD6
L_0FD6:
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0x13                        ; B8 13 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x102a]               ; FF 36 2A 10
        push    word ptr [0x1028]               ; FF 36 28 10
        jmp     L_1004                          ; EB 16
;   [conditional branch target (if/else)] L_0FEE
L_0FEE:
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0x14                        ; B8 14 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x1076]               ; FF 36 76 10
        push    word ptr [0x1074]               ; FF 36 74 10
;   [unconditional branch target] L_1004
L_1004:
        call    far _entry_93                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [unconditional branch target] L_100C
L_100C:
        cmp     word ptr [bp - 4], -1           ; 83 7E FC FF
        jne     L_101B                          ; 75 09
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_101B
L_101B:
        call    far _entry_133                  ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_102B   offset=0x102B  size=22 instr  segment=seg48.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_102B
L_102B:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 0x22                        ; B8 22 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        add     ax, 0x11aa                      ; 05 AA 11
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    ax                              ; 50
        call    far _entry_108                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_306                  ; 9A F6 0D 00 00 [FIXUP]
        mov     word ptr [0x7a], 1              ; C7 06 7A 00 01 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
