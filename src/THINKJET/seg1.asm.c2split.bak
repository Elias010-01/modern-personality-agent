; ======================================================================
; THINKJET / seg1.asm   (segment 1 of THINKJET)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         1
; Total instructions:                  256
; 
; Classification (pass8):
;   C-origin (high+medium):              1
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     3 (3 unique)
;   Top:
;        1  STARTSPOOLPAGE
;        1  SETRECT
;        1  SETRECTEMPTY
; ======================================================================
; AUTO-GENERATED from original THINKJET segment 1
; segment_size=4474 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

THINKJET_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Description (heuristic):
;   Mixed routine using: STARTSPOOLPAGE, SETRECT, SETRECTEMPTY.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=256 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   STARTSPOOLPAGE
;   SETRECT
;   SETRECTEMPTY
;
; Near calls (internal): L_0443, L_07B2, L_0900, L_0A48
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        lds     bx, ptr [bp + 8]                ; C5 5E 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        xor     ax, ax                          ; 33 C0
        sub     word ptr [bx], cx               ; 29 0F
        jns     L_0015                          ; 79 02
        mov     word ptr [bx], ax               ; 89 07
;   [conditional branch target (if/else)] L_0015
L_0015:
        sub     word ptr [bx + 2], dx           ; 29 57 02
        jns     L_001D                          ; 79 03
        mov     word ptr [bx + 2], ax           ; 89 47 02
;   [conditional branch target (if/else)] L_001D
L_001D:
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bx + 4], ax           ; 89 47 04
        sub     ax, word ptr [bx]               ; 2B 07
        jle     L_0032                          ; 7E 09
        sub     word ptr [bx + 6], dx           ; 29 57 06
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        sub     ax, word ptr [bx + 2]           ; 2B 47 02
;   [error/early exit] L_0032
L_0032:
        pop     ds                              ; 1F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_0039
L_0039:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        les     di, ptr [bp + 0xc]              ; C4 7E 0C
        lds     si, ptr [bp + 8]                ; C5 76 08
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        pop     ds                              ; 1F
        pop     di                              ; 5F
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
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xc                         ; 3D 0C 00
        jbe     L_007C                          ; 76 03
        jmp     L_02F9                          ; E9 7D 02
;   [conditional branch target (if/else)] L_007C
L_007C:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x41a]        ; 2E FF A7 1A 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_0091                          ; 74 03
        jmp     L_0289                          ; E9 F8 01
;   [conditional branch target (if/else)] L_0091
L_0091:
        mov     ax, word ptr es:[bx + 0x28]     ; 26 8B 47 28
        inc     word ptr es:[bx + 0x28]         ; 26 FF 47 28
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_010D                          ; 75 6E
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.STARTSPOOLPAGE          ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
        cmp     ax, 1                           ; 3D 01 00
        je      L_00B7                          ; 74 03
        jmp     L_0289                          ; E9 D2 01
;   [conditional branch target (if/else)] L_00B7
L_00B7:
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xe0                        ; B8 E0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 39 08
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x3e], 0      ; 26 C7 47 3E 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        push    word ptr [bx + 0xc]             ; FF 77 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A48                          ; E8 6A 09
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        mov     word ptr es:[bx + 0x3c], ax     ; 26 89 47 3C
        mov     word ptr es:[bx + 0x3a], ax     ; 26 89 47 3A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xe4                        ; B8 E4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 01 08
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x38], 0x10   ; 26 C7 47 38 10 00
        push    es                              ; 06
        push    bx                              ; 53
        call    L_0443                          ; E8 36 03
;   [conditional branch target (if/else)] L_010D
L_010D:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_015D                          ; 74 46
        or      si, si                          ; 0B F6
        jne     L_0135                          ; 75 1A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x500                       ; B8 00 05
        push    ax                              ; 50
        mov     ax, 0x3c0                       ; B8 C0 03
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A B9 01 00 00 [FIXUP]
        jmp     L_03B4                          ; E9 7F 02
;   [conditional branch target (if/else)] L_0135
L_0135:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x38], 0x10   ; 26 83 7F 38 10
        je      L_0158                          ; 74 19
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xe6                        ; B8 E6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 B1 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x38], 0x10   ; 26 C7 47 38 10 00
;   [conditional branch target (if/else)] L_0158
L_0158:
        mov     si, 0xa                         ; BE 0A 00
        jmp     L_0166                          ; EB 09
;   [conditional branch target (if/else)] L_015D
L_015D:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
;   [unconditional branch target] L_0166
L_0166:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_0192                          ; 75 22
        mov     ax, 0x60                        ; B8 60 00
        imul    si                              ; F7 EE
        mov     word ptr es:[bx + 0x2a], ax     ; 26 89 47 2A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, 0x60                        ; 05 60 00
        push    ax                              ; 50
        mov     ax, 0x500                       ; B8 00 05
        jmp     L_01B7                          ; EB 25
;   [conditional branch target (if/else)] L_0192
L_0192:
        mov     ax, 0x60                        ; B8 60 00
        imul    si                              ; F7 EE
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2c], ax     ; 26 89 47 2C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x500                       ; B8 00 05
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, 0x60                        ; 05 60 00
;   [unconditional branch target] L_01B7
L_01B7:
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        mov     ax, si                          ; 8B C6
        or      ax, ax                          ; 0B C0
        je      L_01E2                          ; 74 1F
        cmp     ax, 0xa                         ; 3D 0A 00
        je      L_020F                          ; 74 47
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 4      ; 26 F6 47 26 04
        jne     L_01D5                          ; 75 03
        jmp     L_02BD                          ; E9 E8 00
;   [conditional branch target (if/else)] L_01D5
L_01D5:
        push    es                              ; 06
        push    bx                              ; 53
        call    L_07B2                          ; E8 D8 05
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        and     byte ptr es:[bx + 0x26], 0xfb   ; 26 80 67 26 FB
;   [conditional branch target (if/else)] L_01E2
L_01E2:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x1e68                      ; 05 68 1E
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
;   [loop start] L_01F6
L_01F6:
        cmp     word ptr [bp - 0xc], 0x3c00     ; 81 7E F4 00 3C
        jb      L_0200                          ; 72 03
        jmp     L_02D4                          ; E9 D4 00
;   [conditional branch target (if/else)] L_0200
L_0200:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     byte ptr es:[bx], 0xff          ; 26 C6 07 FF
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_01F6                          ; EB E7
;   [conditional branch target (if/else)] L_020F
L_020F:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A 90 02 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        jne     L_0229                          ; 75 05
        push    es                              ; 06
        push    bx                              ; 53
        call    L_07B2                          ; E8 89 05
;   [conditional branch target (if/else)] L_0229
L_0229:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x28], 0      ; 26 C7 47 28 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xe8                        ; B8 E8 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 BE 06
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xea                        ; B8 EA 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 AA 06
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_0443                          ; E8 E4 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_0279                          ; 75 10
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.ENDSPOOLPAGE            ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
;   [loop start (also forward branch)] L_0279
L_0279:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x44], 0      ; 26 C7 47 44 00 00
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_02B3                          ; 74 2A
;   [unconditional branch target] L_0289
L_0289:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x2e], 0      ; 26 83 7F 2E 00
        je      L_02B3                          ; 74 15
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A 2A 03 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], 0      ; 26 C7 47 2E 00 00
;   [conditional branch target (if/else)] L_02B3
L_02B3:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x32]     ; 26 8B 47 32
        jmp     L_0437                          ; E9 7A 01
;   [unconditional branch target] L_02BD
L_02BD:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 0x10   ; 26 F6 47 26 10
        je      L_0279                          ; 74 B2
        and     byte ptr es:[bx + 0x26], 0xef   ; 26 80 67 26 EF
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_097D                          ; E8 A9 06
;   [unconditional branch target] L_02D4
L_02D4:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_0443                          ; E8 66 01
        jmp     L_0279                          ; EB 9A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x24], ax     ; 26 89 47 24
        jmp     L_03B4                          ; E9 C5 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_02FE                          ; 75 05
;   [loop start (also forward branch)] L_02F9
L_02F9:
        sub     ax, ax                          ; 2B C0
        jmp     L_0437                          ; E9 39 01
;   [conditional branch target (if/else)] L_02FE
L_02FE:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_030C                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_030E                          ; EB 02
;   [conditional branch target (if/else)] L_030C
L_030C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_030E
L_030E:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        or      word ptr es:[bx + 0x26], ax     ; 26 09 47 26
        jmp     L_03B4                          ; E9 9C 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_0380                          ; 75 5E
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0380                          ; EB 50
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_0363                          ; 74 29
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x48                        ; 05 48 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 0x24]         ; 26 FF 77 24
        call    far GDI.OPENJOB                 ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], ax     ; 26 89 47 2E
        or      ax, ax                          ; 0B C0
        jle     L_0363                          ; 7E 06
        mov     word ptr es:[bx + 0x32], 1      ; 26 C7 47 32 01 00
;   [conditional branch target (if/else)] L_0363
L_0363:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x2e]     ; 26 8B 47 2E
        jmp     L_0437                          ; E9 CA 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_0380                          ; 75 09
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.CLOSEJOB                ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_0380
L_0380:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x32], 0      ; 26 C7 47 32 00 00
        jmp     L_03B4                          ; EB 29
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xc                         ; 3D 0C 00
        jbe     L_039F                          ; 76 03
        jmp     L_02F9                          ; E9 5A FF
;   [conditional branch target (if/else)] L_039F
L_039F:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x3b9]        ; 2E FF A7 B9 03
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        je      L_03B4                          ; 74 03
        jmp     L_02F9                          ; E9 45 FF
;   [loop start (also forward branch)] L_03B4
L_03B4:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0437                          ; EB 7E
        ; constant WM_MOVE
        mov     ah, 3                           ; B4 03
        ; constant WM_MOVE
        mov     ah, 3                           ; B4 03
        ; constant WM_MOVE
        mov     ah, 3                           ; B4 03
        stc                                     ; F9
        add     bh, cl                          ; 02 F9
        add     bh, cl                          ; 02 F9
        add     ah, byte ptr [bx - 0x4bfd]      ; 02 A7 03 B4
        add     di, cx                          ; 03 F9
        add     dh, byte ptr [si - 0x4bfd]      ; 02 B4 03 B4
        add     si, word ptr [si - 0x4bfd]      ; 03 B4 03 B4
        add     ax, sp                          ; 03 C4
        pop     si                              ; 5E
        adc     byte ptr [0x5f8b], ah           ; 10 26 8B 5F
        and     cl, byte ptr [bp + di + 0x247]  ; 22 8B 47 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_03B4                          ; EB BE
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_02F9                          ; E9 DF FE
        mov     bl, 2                           ; B3 02
        sbb     byte ptr [bp + di], al          ; 18 03
        test    byte ptr [bx + si], al          ; 84 00
        stc                                     ; F9
        add     bh, cl                          ; 02 F9
        add     bh, cl                          ; 02 F9
        add     ch, bh                          ; 02 EF
        add     cl, byte ptr [bp + di - 0x20fd] ; 02 8B 03 DF
        add     dh, byte ptr [bx + si]          ; 02 30
        add     bp, word ptr [di + 3]           ; 03 6D 03
        rol     word ptr [bp + di], cl          ; D3 03
        test    byte ptr [bp + di], 0xe9        ; F6 03 E9
        jge     L_0436                          ; 7D FF
;   [unconditional branch target] L_0437
L_0437:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [sub-routine] L_0443
L_0443:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x30], 0      ; 26 83 7F 30 00
        je      L_045A                          ; 74 07
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_045E                          ; 74 04
;   [conditional branch target (if/else)] L_045A
L_045A:
        sub     ax, ax                          ; 2B C0
        jmp     L_0493                          ; EB 35
;   [conditional branch target (if/else)] L_045E
L_045E:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x68                        ; 05 68 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 0x30]         ; 26 FF 77 30
        call    far GDI.WRITESPOOL              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     ax, word ptr es:[bx + 0x30]     ; 26 3B 47 30
        je      L_0487                          ; 74 04
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
;   [conditional branch target (if/else)] L_0487
L_0487:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
;   [fall-through exit] L_0493
L_0493:
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
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 6], 0xa          ; C7 46 FA 0A 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_04DC                          ; 74 29
        push    word ptr [bp + 0x10]            ; FF 76 10
        ;   ^ arg lpsz1 (high/segment)
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg lpsz1 (low/offset)
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpsz2 (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_04D2                          ; 74 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_04DC                          ; EB 0A
;   [conditional branch target (if/else)] L_04D2
L_04D2:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x20]     ; 26 8B 47 20
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [branch target] L_04DC
L_04DC:
        test    byte ptr [bp + 0x12], 1         ; F6 46 12 01
        je      L_051F                          ; 74 3D
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        cmp     word ptr [bp - 6], 0xb          ; 83 7E FA 0B
        jne     L_04F3                          ; 75 05
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_04F6                          ; EB 03
;   [conditional branch target (if/else)] L_04F3
L_04F3:
        mov     ax, 0x78                        ; B8 78 00
;   [unconditional branch target] L_04F6
L_04F6:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x68                        ; B8 68 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 36 FB
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        je      L_050F                          ; 74 05
        mov     ax, 0x48                        ; B8 48 00
        jmp     L_0512                          ; EB 03
;   [conditional branch target (if/else)] L_050F
L_050F:
        mov     ax, 0x5f68                      ; B8 68 5F
;   [unconditional branch target] L_0512
L_0512:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        mov     ax, 0x68                        ; B8 68 00
        jmp     L_05C1                          ; E9 A2 00
;   [conditional branch target (if/else)] L_051F
L_051F:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        cmp     word ptr [bp - 6], 0xb          ; 83 7E FA 0B
        jne     L_0530                          ; 75 05
        mov     ax, 0x136                       ; B8 36 01
        jmp     L_0533                          ; EB 03
;   [conditional branch target (if/else)] L_0530
L_0530:
        mov     ax, 0xee                        ; B8 EE 00
;   [unconditional branch target] L_0533
L_0533:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x48                        ; B8 48 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 F9 FA
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0603                          ; E8 B4 00
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x2e], 0xffff ; 26 C7 47 2E FF FF
        mov     word ptr es:[bx + 0x38], 0x10   ; 26 C7 47 38 10 00
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        jne     L_05B7                          ; 75 52
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x48                        ; 05 48 00
        push    dx                              ; 52
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        jne     L_05A2                          ; 75 1F
        push    es                              ; 06
        push    bx                              ; 53
        call    far _entry_101                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_05B3                          ; 74 25
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.CREATEPQ                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x34], ax     ; 26 89 47 34
        or      ax, ax                          ; 0B C0
        je      L_05A7                          ; 74 05
;   [loop start (also forward branch)] L_05A2
L_05A2:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_05C1                          ; EB 1A
;   [conditional branch target (if/else)] L_05A7
L_05A7:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A F1 05 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_05B3
L_05B3:
        sub     ax, ax                          ; 2B C0
        jmp     L_05C1                          ; EB 0A
;   [conditional branch target (if/else)] L_05B7
L_05B7:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        or      byte ptr es:[bx + 0x26], 0x20   ; 26 80 4F 26 20
        jmp     L_05A2                          ; EB E1
;   [unconditional branch target] L_05C1
L_05C1:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        jne     L_05F5                          ; 75 15
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        call    far GDI.DELETEPQ                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_05F5
L_05F5:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [sub-routine] L_0603
L_0603:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_0620                          ; 74 12
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x26], 0x11   ; 26 83 7F 26 11
        jne     L_0620                          ; 75 08
        les     bx, ptr [bp + 8]                ; C4 5E 08
        or      byte ptr es:[bx + 0x26], 8      ; 26 80 4F 26 08
;   [conditional branch target (if/else)] L_0620
L_0620:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_0651                          ; 74 29
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x20], 0xb    ; 26 83 7F 20 0B
        jne     L_0637                          ; 75 05
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_0639                          ; EB 02
;   [conditional branch target (if/else)] L_0637
L_0637:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0639
L_0639:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        add     ax, word ptr es:[bx + 0x24]     ; 26 03 47 24
        ; constant WM_GETTEXTLENGTH
        mov     cx, 0xe                         ; B9 0E 00
        imul    cx                              ; F7 E9
        add     ax, 0x24e                       ; 05 4E 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
        jmp     L_067E                          ; EB 2D
;   [conditional branch target (if/else)] L_0651
L_0651:
        mov     word ptr [0x368], 0x660         ; C7 06 68 03 60 06
        mov     word ptr [0x36a], 0x420         ; C7 06 6A 03 20 04
        mov     word ptr [0x370], 0x420         ; C7 06 70 03 20 04
        mov     word ptr [0x36c], 0xb0          ; C7 06 6C 03 B0 00
        mov     word ptr [0x36e], 0x30          ; C7 06 6E 03 30 00
        mov     word ptr [0x372], 2             ; C7 06 72 03 02 00
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x22], 0x366  ; 26 C7 47 22 66 03
;   [fall-through exit] L_067E
L_067E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_0684
L_0684:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
;   [loop start] L_069A
L_069A:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_06AF                          ; 74 0F
        dec     word ptr [bp - 0xa]             ; FF 4E F6
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        not     al                              ; F6 D0
        or      al, al                          ; 0A C0
        je      L_06BD                          ; 74 0E
;   [conditional branch target (if/else)] L_06AF
L_06AF:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        test    byte ptr es:[bx + 0x26], 8      ; 26 F6 47 26 08
        je      L_06C2                          ; 74 09
        mov     al, 0x4b                        ; B0 4B
        jmp     L_06C4                          ; EB 07
;   [conditional branch target (if/else)] L_06BD
L_06BD:
        dec     word ptr [bp + 6]               ; FF 4E 06
        jmp     L_069A                          ; EB D8
;   [conditional branch target (if/else)] L_06C2
L_06C2:
        mov     al, 0x4c                        ; B0 4C
;   [unconditional branch target] L_06C4
L_06C4:
        mov     byte ptr [0x17f], al            ; A2 7F 01
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        test    byte ptr es:[bx + 0x26], 8      ; 26 F6 47 26 08
        je      L_06D6                          ; 74 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_06D9                          ; EB 03
;   [conditional branch target (if/else)] L_06D6
L_06D6:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_06D9
L_06D9:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_06E5                          ; 75 03
        jmp     L_0789                          ; E9 A4 00
;   [conditional branch target (if/else)] L_06E5
L_06E5:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_08D6                          ; E8 E5 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A48                          ; E8 49 03
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        jmp     L_0710                          ; EB 03
;   [loop start] L_070D
L_070D:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
;   [unconditional branch target] L_0710
L_0710:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_070D                          ; 74 F4
        mov     si, bx                          ; 8B F3
        sub     si, word ptr [bp + 8]           ; 2B 76 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0AEF                          ; E8 C2 03
        sub     si, ax                          ; 2B F0
        sub     word ptr [bp + 6], si           ; 29 76 06
        add     word ptr [bp + 8], si           ; 01 76 08
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr es:[bx + 0x3c], ax     ; 26 01 47 3C
        cdq                                     ; 99
        mov     cx, word ptr [bp - 2]           ; 8B 4E FE
        idiv    cx                              ; F7 F9
        mov     word ptr [0x180], ax            ; A3 80 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x17e                       ; B8 7E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 A5 01
        cmp     word ptr [bp - 2], 2            ; 83 7E FE 02
        jge     L_0777                          ; 7D 16
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 8B 01
        jmp     L_0789                          ; EB 12
;   [conditional branch target (if/else)] L_0777
L_0777:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_0BD3                          ; E8 4A 04
;   [unconditional branch target] L_0789
L_0789:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        test    byte ptr es:[bx + 0x26], 0x10   ; 26 F6 47 26 10
        je      L_07AB                          ; 74 18
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        call    L_097D                          ; E8 DE 01
        or      ax, ax                          ; 0B C0
        jne     L_07AB                          ; 75 08
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        and     byte ptr es:[bx + 0x26], 0xef   ; 26 80 67 26 EF
;   [error/early exit] L_07AB
L_07AB:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
;   [sub-routine] L_07B2
L_07B2:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x5a68                      ; 05 68 5A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_084E                          ; 75 7D
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        sub     ax, 0x60                        ; 2D 60 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
;   [loop start] L_07E0
L_07E0:
        cmp     word ptr [bp - 0x12], 0xc       ; 83 7E EE 0C
        jl      L_07E9                          ; 7C 03
        jmp     L_08AF                          ; E9 C6 00
;   [conditional branch target (if/else)] L_07E9
L_07E9:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        add     ah, 5                           ; 80 C4 05
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        add     ax, 0x1e68                      ; 05 68 1E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 2], 0x500        ; C7 46 FE 00 05
;   [loop start] L_080F
L_080F:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        mov     byte ptr es:[bx], al            ; 26 88 07
        dec     word ptr [bp - 2]               ; FF 4E FE
        add     word ptr [bp - 6], 0xc          ; 83 46 FA 0C
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_080F                          ; 75 E4
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x500                       ; B8 00 05
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        push    ax                              ; 50
        call    L_0684                          ; E8 3B FE
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        jmp     L_07E0                          ; EB 92
;   [conditional branch target (if/else)] L_084E
L_084E:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x1e68                      ; 05 68 1E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     ax, 0x60                        ; 2D 60 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
;   [loop start] L_086F
L_086F:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xa0                        ; B8 A0 00
        push    ax                              ; 50
        call    far GDI.DMTRANSPOSE             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x500                       ; B8 00 05
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        push    ax                              ; 50
        call    L_0684                          ; E8 E2 FD
        add     byte ptr [bp - 5], 5            ; 80 46 FB 05
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        cmp     word ptr [bp - 0x12], 0xc       ; 83 7E EE 0C
        jl      L_086F                          ; 7C C0
;   [unconditional branch target] L_08AF
L_08AF:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        call    far GDI.MINPQ                   ; 9A C6 08 00 00 [FIXUP]
        inc     ax                              ; 40
        je      L_08D0                          ; 74 12
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        call    far GDI.MINPQ                   ; 9A A0 09 00 00 [FIXUP]
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_08D0
L_08D0:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;   [sub-routine] L_08D6
L_08D6:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     byte ptr [bp - 2], 0x1a         ; C6 46 FE 1A
        jmp     L_08F0                          ; EB 0E
;   [loop start] L_08E2
L_08E2:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        not     al                              ; F6 D0
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp + 6]               ; FF 46 06
;   [unconditional branch target] L_08F0
L_08F0:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_08E2                          ; 75 E8
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;   [sub-routine] L_0900
L_0900:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_0971                          ; 75 59
        mov     si, word ptr es:[bx + 0x30]     ; 26 8B 77 30
        mov     ax, si                          ; 8B C6
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x68                        ; 05 68 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     si, ax                          ; 03 F0
        cmp     si, 0x1e00                      ; 81 FE 00 1E
        jl      L_0956                          ; 7C 20
        push    dx                              ; 52
        push    bx                              ; 53
        call    L_0443                          ; E8 08 FB
        or      ax, ax                          ; 0B C0
        jge     L_0944                          ; 7D 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0971                          ; EB 2D
;   [conditional branch target (if/else)] L_0944
L_0944:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        add     ax, 0x68                        ; 05 68 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     si, word ptr [bp + 6]           ; 8B 76 06
;   [conditional branch target (if/else)] L_0956
L_0956:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0x30], si     ; 26 89 77 30
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 C8 F6
;   [branch target] L_0971
L_0971:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_097D
L_097D:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x34]     ; 26 8B 47 34
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
;   [loop start] L_099C
L_099C:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.MINPQ                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        inc     ax                              ; 40
        jne     L_09C3                          ; 75 19
;   [loop start] L_09AA
L_09AA:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0xc], -1         ; 83 7E F4 FF
        je      L_09BF                          ; 74 03
        jmp     L_0A3F                          ; E9 80 00
;   [conditional branch target (if/else)] L_09BF
L_09BF:
        sub     ax, ax                          ; 2B C0
        jmp     L_0A42                          ; EB 7F
;   [conditional branch target (if/else)] L_09C3
L_09C3:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jge     L_09AA                          ; 7D CD
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.EXTRACTPQ               ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 0xc]         ; 3B 46 F4
        jne     L_09AA                          ; 75 C0
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx]                ; 26 FF 37
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A48                          ; E8 4D 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0AEF                          ; E8 DE 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 D2 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr es:[bx + 0x3c], ax     ; 26 01 47 3C
        jmp     L_099C                          ; E9 5D FF
;   [unconditional branch target] L_0A3F
L_0A3F:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_0A42
L_0A42:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;   [sub-routine] L_0A48
L_0A48:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        les     bx, ptr [bp + 8]                ; C4 5E 08
        sub     ax, word ptr es:[bx + 0x3e]     ; 26 2B 47 3E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0A6C                          ; 75 05
;   [loop start] L_0A67
L_0A67:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0AE3                          ; EB 77
;   [conditional branch target (if/else)] L_0A6C
L_0A6C:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0A7C                          ; 74 06
        cmp     word ptr [bp - 4], 0xc          ; 83 7E FC 0C
        jl      L_0A67                          ; 7C EB
;   [conditional branch target (if/else)] L_0A7C
L_0A7C:
        mov     byte ptr [0x186], 0             ; C6 06 86 01 00
        jmp     L_0AB8                          ; EB 35
;   [loop start] L_0A83
L_0A83:
        cmp     word ptr [bp - 4], 0x55         ; 83 7E FC 55
        jl      L_0A8E                          ; 7C 05
        mov     ax, 0x55                        ; B8 55 00
        jmp     L_0A91                          ; EB 03
;   [conditional branch target (if/else)] L_0A8E
L_0A8E:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
;   [unconditional branch target] L_0A91
L_0A91:
        mov     si, ax                          ; 8B F0
        mov     byte ptr [0x185], 0x41          ; C6 06 85 01 41
        mov     byte ptr [0x186], al            ; A2 86 01
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x184                       ; B8 84 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 51 FE
        mov     byte ptr [0x185], 0x41          ; C6 06 85 01 41
        sub     word ptr [bp - 4], 0x55         ; 83 6E FC 55
;   [unconditional branch target] L_0AB8
L_0AB8:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jg      L_0A83                          ; 7F C5
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x189                       ; B8 89 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 28 FE
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x3c], 0      ; 26 C7 47 3C 00 00
        jmp     L_0A67                          ; EB 84
;   [unconditional branch target] L_0AE3
L_0AE3:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
;   [sub-routine] L_0AEF
L_0AEF:
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
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_0B0B                          ; 7C 07
        cmp     word ptr [bp + 8], 0x500        ; 81 7E 08 00 05
        jle     L_0B10                          ; 7E 05
;   [loop start (also forward branch)] L_0B0B
L_0B0B:
        sub     ax, ax                          ; 2B C0
        jmp     L_0BC6                          ; E9 B6 00
;   [conditional branch target (if/else)] L_0B10
L_0B10:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr es:[bx + 0x3c], ax     ; 26 39 47 3C
        jle     L_0B41                          ; 7E 25
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        jne     L_0B0B                          ; 75 E8
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x18b                       ; B8 8B 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 CD FD
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x3c], 0      ; 26 C7 47 3C 00 00
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        jmp     L_0B4B                          ; EB 0A
;   [conditional branch target (if/else)] L_0B41
L_0B41:
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        sub     di, word ptr es:[bx + 0x3c]     ; 26 2B 7F 3C
;   [unconditional branch target] L_0B4B
L_0B4B:
        or      di, di                          ; 0B FF
        je      L_0B0B                          ; 74 BC
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx + 0x38]     ; 26 8B 77 38
        jmp     L_0B6E                          ; EB 16
;   [loop start] L_0B58
L_0B58:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x18d                       ; B8 8D 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 94 FD
        sub     di, si                          ; 2B FE
;   [unconditional branch target] L_0B6E
L_0B6E:
        cmp     di, si                          ; 3B FE
        jge     L_0B58                          ; 7D E6
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0BB8                          ; 74 40
        or      di, di                          ; 0B FF
        je      L_0BB8                          ; 74 3C
        or      di, di                          ; 0B FF
        je      L_0BB8                          ; 74 38
        mov     word ptr [0x180], di            ; 89 3E 80 01
        mov     byte ptr [0x17f], 0x4c          ; C6 06 7F 01 4C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x17e                       ; B8 7E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 63 FD
        jmp     L_0BB4                          ; EB 15
;   [loop start] L_0B9F
L_0B9F:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x18f                       ; B8 8F 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 4D FD
        dec     di                              ; 4F
;   [unconditional branch target] L_0BB4
L_0BB4:
        or      di, di                          ; 0B FF
        jne     L_0B9F                          ; 75 E7
;   [conditional branch target (if/else)] L_0BB8
L_0BB8:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, di                          ; 2B C7
        mov     word ptr es:[bx + 0x3c], ax     ; 26 89 47 3C
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_0BC6
L_0BC6:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_0BD3
L_0BD3:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0C20                          ; EB 3F
;   [loop start] L_0BE1
L_0BE1:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        les     si, ptr [bp + 6]                ; C4 76 06
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        or      byte ptr [bp - 8], al           ; 08 46 F8
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        mov     byte ptr [0x182], al            ; A2 82 01
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x182                       ; B8 82 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0900                          ; E8 E3 FC
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_0C20
L_0C20:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0BE1                          ; 7C B9
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
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
        lea     ax, [bp + 0x22]                 ; 8D 46 22
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x20]                 ; 8D 46 20
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x1e]                 ; 8D 46 1E
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_10C7                          ; E8 78 04
        or      ax, ax                          ; 0B C0
        jne     L_0C57                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0C8E                          ; EB 37
;   [conditional branch target (if/else)] L_0C57
L_0C57:
        push    word ptr [bp + 0x24]            ; FF 76 24
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMBITBLT                ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
;   [unconditional branch target] L_0C8E
L_0C8E:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x20                            ; CA 20 00
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
        lea     ax, [bp + 0x12]                 ; 8D 46 12
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x10]                 ; 8D 46 10
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0xe]                  ; 8D 46 0E
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_10C7                          ; E8 0D 04
        or      ax, ax                          ; 0B C0
        jne     L_0CC2                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0CE1                          ; EB 1F
;   [conditional branch target (if/else)] L_0CC2
L_0CC2:
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMPIXEL                 ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
;   [unconditional branch target] L_0CE1
L_0CE1:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
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
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_0D11                          ; 75 03
        jmp     L_0DC1                          ; E9 B0 00
;   [conditional branch target (if/else)] L_0D11
L_0D11:
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0D1D                          ; 74 05
;   [loop start] L_0D18
L_0D18:
        sub     ax, ax                          ; 2B C0
        jmp     L_0E0E                          ; E9 F1 00
;   [conditional branch target (if/else)] L_0D1D
L_0D1D:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0D18                          ; 74 E1
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 92 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 E1 F2
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     word ptr [bp + 0x16], ax        ; 89 46 16
        mov     word ptr [bp + 0x18], dx        ; 89 56 18
        cmp     word ptr [bp + 0x1c], 4         ; 83 7E 1C 04
        je      L_0D6D                          ; 74 03
        jmp     L_0DF5                          ; E9 88 00
;   [conditional branch target (if/else)] L_0D6D
L_0D6D:
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        sub     word ptr es:[bx], ax            ; 26 29 07
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        shl     si, 1                           ; D1 E6
        sub     si, 2                           ; 83 EE 02
        jmp     L_0D9E                          ; EB 12
;   [loop start] L_0D8C
L_0D8C:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        sub     word ptr es:[bx], ax            ; 26 29 07
        dec     si                              ; 4E
;   [unconditional branch target] L_0D9E
L_0D9E:
        or      si, si                          ; 0B F6
        jne     L_0D8C                          ; 75 EA
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x1e68                      ; 05 68 1E
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        mov     ax, bx                          ; 8B C3
        add     ax, 2                           ; 05 02 00
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
;   [unconditional branch target] L_0DC1
L_0DC1:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x19e]                ; FF 36 9E 01
        push    word ptr [0x19c]                ; FF 36 9C 01
        call    far GDI.DMOUTPUT                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [unconditional branch target] L_0DF5
L_0DF5:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0E0B                          ; 74 10
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A B2 09 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A AF 05 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0E0B
L_0E0B:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_0E0E
L_0E0E:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1c                            ; CA 1C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_0EA4                          ; 7E 77
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_0E6F                          ; 74 39
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0E6F                          ; 74 32
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        call    far _entry_103                  ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_0E6B
L_0E6B:
        cdq                                     ; 99
        jmp     L_0F6F                          ; E9 00 01
;   [conditional branch target (if/else)] L_0E6F
L_0E6F:
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 B6 F1
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp + 0x18], ax        ; 89 46 18
        mov     word ptr [bp + 0x1a], ss        ; 8C 56 1A
        push    ss                              ; 16
        push    ax                              ; 50
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        push    word ptr es:[bx + 0x2c]         ; 26 FF 77 2C
        call    0                               ; E8 64 F1
        or      ax, ax                          ; 0B C0
        jg      L_0EA4                          ; 7F 04
;   [loop start] L_0EA0
L_0EA0:
        sub     ax, ax                          ; 2B C0
        jmp     L_0E6B                          ; EB C7
;   [conditional branch target (if/else)] L_0EA4
L_0EA4:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        je      L_0F0A                          ; 74 59
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_0ED6                          ; 7E 1F
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr es:[bx + 0x2c], ax     ; 26 39 47 2C
        jg      L_0EA0                          ; 7F DD
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        add     ax, 0x60                        ; 05 60 00
        cmp     ax, word ptr [bp + 0x1c]        ; 3B 46 1C
        jle     L_0EA0                          ; 7E D1
        cmp     word ptr [bp + 0x1e], 0x500     ; 81 7E 1E 00 05
        jge     L_0EA0                          ; 7D CA
;   [conditional branch target (if/else)] L_0ED6
L_0ED6:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0F6F                          ; EB 65
;   [conditional branch target (if/else)] L_0F0A
L_0F0A:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_0F3D                          ; 74 2A
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x1e68                      ; 05 68 1E
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     word ptr [bp + 0x1c], ax        ; 29 46 1C
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        sub     word ptr [bp + 0x1e], ax        ; 29 46 1E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        mov     ax, bx                          ; 8B C3
        add     ax, 2                           ; 05 02 00
        mov     word ptr [bp + 0x20], ax        ; 89 46 20
;   [conditional branch target (if/else)] L_0F3D
L_0F3D:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMSTRBLT                ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0F6F
L_0F6F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        lea     ax, [bp + 0x10]                 ; 8D 46 10
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0xe]                  ; 8D 46 0E
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0xc]                  ; 8D 46 0C
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_10C7                          ; E8 2E 01
        or      ax, ax                          ; 0B C0
        jne     L_0FA1                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0FBB                          ; EB 1A
;   [conditional branch target (if/else)] L_0FA1
L_0FA1:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMSCANLR                ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0FBB
L_0FBB:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_0FE2                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_0FE8                          ; EB 06
;   [conditional branch target (if/else)] L_0FE2
L_0FE2:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
;   [unconditional branch target] L_0FE8
L_0FE8:
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMENUMOBJ               ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_1025                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_102B                          ; EB 06
;   [conditional branch target (if/else)] L_1025
L_1025:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
;   [unconditional branch target] L_102B
L_102B:
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMCOLORINFO             ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 0x12], -3        ; 83 7E 12 FD
        jne     L_105D                          ; 75 04
;   [loop start] L_1059
L_1059:
        sub     ax, ax                          ; 2B C0
        jmp     L_10BC                          ; EB 5F
;   [conditional branch target (if/else)] L_105D
L_105D:
        cmp     word ptr [bp + 0x12], 3         ; 83 7E 12 03
        jne     L_1088                          ; 75 25
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        jne     L_1059                          ; 75 EC
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_104                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_10BC                          ; EB 34
;   [conditional branch target (if/else)] L_1088
L_1088:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_109A                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_10A0                          ; EB 06
;   [conditional branch target (if/else)] L_109A
L_109A:
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
;   [unconditional branch target] L_10A0
L_10A0:
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMREALIZEOBJECT         ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_10BC
L_10BC:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_10C7
L_10C7:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_1142                          ; 74 5C
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_10F1                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1145                          ; EB 54
;   [conditional branch target (if/else)] L_10F1
L_10F1:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x1e68                      ; 05 68 1E
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_111A                          ; 74 0A
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        sub     word ptr es:[bx], ax            ; 26 29 07
;   [conditional branch target (if/else)] L_111A
L_111A:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_112F                          ; 74 0D
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        les     bx, ptr [bp + 8]                ; C4 5E 08
        sub     word ptr es:[bx], ax            ; 26 29 07
;   [conditional branch target (if/else)] L_112F
L_112F:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, 2                           ; 05 02 00
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
;   [conditional branch target (if/else)] L_1142
L_1142:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_1145
L_1145:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bp + di + 0x2b], bl   ; 00 5B 2B
        les     si, ptr [bp + di + 0x18]        ; C4 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_116D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_1169                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_1169
L_1169:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_116D
L_116D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        db      09ah                            ; 9A
        int3                                    ; CC
        db      008h                            ; 08

THINKJET_TEXT ENDS

        END
